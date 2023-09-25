set ORE=C:\dev\ORE\documentation
set doxybin="C:\Program Files\doxygen\bin\doxygen.exe"

copy oreaFull.doxy %ORE%\OREAnalytics\doc\
copy oreaheaderFull.html %ORE%\OREAnalytics\doc\
copy oredFull.doxy %ORE%\OREData\doc\
copy oredheaderFull.html %ORE%\OREData\doc\
copy quantextFull.doxy %ORE%\QuantExt\doc\
copy quantextheaderFull.html %ORE%\QuantExt\doc\
rmdir /S /Q %ORE%\OREAnalytics\doc\html 
rmdir /S /Q %ORE%\OREData\doc\html 
rmdir /S /Q %ORE%\QuantExt\doc\html 
mkdir %ORE%\OREAnalytics\doc\html 
mkdir %ORE%\OREData\doc\html 
mkdir %ORE%\QuantExt\doc\html 
cd %ORE%\OREAnalytics\doc
%doxybin% oreaFull.doxy
cd %ORE%\OREData\doc
%doxybin% oredFull.doxy
cd %ORE%\QuantExt\doc
%doxybin% quantextFull.doxy
pause