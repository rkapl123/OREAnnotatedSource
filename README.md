# Opensource Risk Engine (ORE) fully annotated documentation

An alternative (fully annotated, including source code !) Documentation for the Opensource Risk Engine.

Analytics: <https://rkapl123.github.io/OREAnnotatedSource/orea/index.html>.

Data: <https://rkapl123.github.io/OREAnnotatedSource/ored/index.html>.

Quantext (Quantlib Extensions): <https://rkapl123.github.io/OREAnnotatedSource/qle/index.html>.

To generate this for yourself (on windows only), you have to customize the scripts runGenerateDoc.cmd, setting the variables
```
set ORE=C:\dev\ORE\documentation
set doxybin="C:\Program Files\doxygen\bin\doxygen.exe"
```

and runCopyHtmlDoc.cmd, setting the variable
```
set ORE=C:\dev\ORE\documentation
```

Prerequisite: perl (to set the version in the HTML header files with UpdateVersion.pl), doxygen and dot.

To produce the annotated source, first run runGenerateDoc.cmd, setting the version first, then (after doxygen has finished creating the files) run runCopyHtmlDoc.
