import katex from 'https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.mjs';
import { DOMParser } from "https://deno.land/x/deno_dom/deno-dom-wasm.ts";
import * as path from "https://deno.land/std@0.210.0/path/mod.ts";

function domToElm(node) {
    if (node.nodeType == 3) {
        // text node
        return `text "${node.textContent.replaceAll('\\', '\\\\').replaceAll("\n", "")}"`
    }

    if (node.nodeType == 1) {
        // normal node
        const children = [...node.childNodes].map(domToElm)

        const attribues = []

        for (let attr of node.getAttributeNames()) {
            attribues.push(`attribute "${attr}" "${node.getAttribute(attr)}"`)
        }

        return `node "${node.localName}" [ ${attribues.join(", ")} ] [ ${children.join(", ")} ]`
    }
}

function latex2elm(moduleName, latex) {
    let html;

    try {
        html = katex.renderToString(latex, { output: "html" })
    } catch (error) {
        console.error("[Error] " + error.rawMessage)
        return `text "error: ${error.rawMessage}"`
    }

    const parser = new DOMParser()

    const dom = parser.parseFromString(html, "text/html")

    const output = `
module MathML.${moduleName} exposing (view)

import Html.WithContext exposing (text, node)
import Html.WithContext.Attributes exposing (attribute)
import Context


-- this code was generated by latex2elm

view = ${domToElm(dom.body.children[0])}
`

    return output
}


Promise.all(Deno.args.map(async infile => {
    let moduleName = path.parse(infile).name[0].toUpperCase() + path.parse(infile).name.substring(1)

    const latex = await Deno.readTextFile(infile)

    const elm = latex2elm(moduleName, latex)

    await Deno.writeTextFile("gen/MathML/" + moduleName + ".elm", elm)

    console.log("generated", moduleName + ".elm")
}))

