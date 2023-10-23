rmdir /S /Q orea\
rmdir /S /Q ored\
rmdir /S /Q qle\
xcopy /E ..\ORE\documentation\OREAnalytics\doc\html orea\
xcopy /E ..\ORE\documentation\OREData\doc\html ored\
xcopy /E ..\ORE\documentation\QuantExt\doc\html qle\
copy orea_license.html orea\license.html
copy ored_license.html ored\license.html
pause