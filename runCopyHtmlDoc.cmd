set ORE=C:\dev\ORE\documentation
rmdir /S /Q orea\
rmdir /S /Q ored\
rmdir /S /Q qle\
xcopy /E %ORE%\OREAnalytics\doc\html orea\
xcopy /E %ORE%\OREData\doc\html ored\
xcopy /E %ORE%\QuantExt\doc\html qle\
copy orea_license.html orea\license.html
copy ored_license.html ored\license.html
pause