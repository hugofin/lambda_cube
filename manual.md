## Using the Translator

* The translator I made is stored at src/ , and is called latex2elm.js.
* It expects to work on .tex files in the src/latex directory, and will generate .elm files in the src/gen file
* To recompile all of the .tex files, use the command `deno run --allow-read --allow-write latex2elm.js latex/*.tex` in the /src directory, or to recompile just one replace the "*" with the file name

## Building the project

* in the src/ directory, run the command `elm-live src/Home.elm -- --output="js/Home.js"`, which will start the project on localhost:8000/