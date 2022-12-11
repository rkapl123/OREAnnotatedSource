copy orea*.* C:\dev\ORE\documentation\OREAnalytics\doc\
copy ored*.* C:\dev\ORE\documentation\OREData\doc\
copy quantext*.* C:\dev\ORE\documentation\QuantExt\doc\
rmdir /S /Q C:\dev\ORE\documentation\OREAnalytics\doc\html 
rmdir /S /Q C:\dev\ORE\documentation\OREData\doc\html 
rmdir /S /Q C:\dev\ORE\documentation\QuantExt\doc\html 
mkdir C:\dev\ORE\documentation\OREAnalytics\doc\html 
mkdir C:\dev\ORE\documentation\OREData\doc\html 
mkdir C:\dev\ORE\documentation\QuantExt\doc\html 
cd C:\dev\ORE\documentation\OREAnalytics\doc
"C:\Program Files\doxygen\bin\doxygen.exe" oreaFull.doxy
cd C:\dev\ORE\documentation\OREData\doc
"C:\Program Files\doxygen\bin\doxygen.exe" oredFull.doxy
cd C:\dev\ORE\documentation\QuantExt\doc
"C:\Program Files\doxygen\bin\doxygen.exe" quantextFull.doxy
pause