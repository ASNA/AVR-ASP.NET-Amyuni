## Using the ASNA.AmyuniPDF library from ASP.NET

This example shows the ASNA.AmyuniPDF library in action in an AVR for .NET ASP.NET app.

>Note: This example requires the [ASNA.AmyuniPDF class library](https://github.com/ASNA/ASNA.AmyuniPDF/tree/master).

This example includes two source members

*	[TestAmyuniPDF.aspx.vr](http://asna.github.io/AVR-ASP.NET-Amyuni-AnnotatedCode/code/TestAmyuniDriver/TestAmyuniPDF.aspx.html) - An AVR for .NET codebehind for ASPX page that initiates PDF printing.
*	[App_Code/PrintTest.vr](http://asna.github.io/AVR-ASP.NET-Amyuni-AnnotatedCode/code/TestAmyuniDriver/app_code/PrintTest.html) - An AVR for .NET class that prints a report. This class can print to either a real printer or the Amyuni PDF driver. 
	 
Use the file name links above to see annotated source listings for these source members.

###General notes

* The [PrintTest.vr](http://asna.github.io/AVR-ASP.NET-Amyuni-AnnotatedCode/code/TestAmyuniDriver/app_code/PrintTest.html) member is designed to print to either a regular printer or the Amyuni PDF printer driver. It is strongly recommended that before you attempt to print to PDF you ensure your code will print to PDF. This will help isolate problems when you redirect your report to PDF.
* The `PrintTest.vr` shown here is only an example--there are probably many other ways to print your report. However, the pattern shown here is a proven, simple pattern to use. 
* The DB object in `PrintTest.vr` is exclusive to the `PrintTest` class and will therefore create a dedicated IBM i job for the duration of the report. To avoid this, use the `SingletonDB` pattern to pass a previously-instanced DB object into the `PrintTest` class's constructor.
* This example performs the print task during the code-behind's postback--causing a delay for the user while the report is being printed. For larger reports is might be better to engineer a queue-like process that accepts a request for a report, queues it to the server, and then returns control immediately to the user. Once the PDF is created the app could send an email to the user with either a link to prepared PDF or the PDF itself (if the PDF isn't too large).
* The print file this example uses is in the CustList2-rrintfile folder in APD format. The data file it uses is Examples/CMastNewL2 and that file is in the ASNA Examples database.
    
### Referencing the Amyuni ActiveX COM object

Any ASP.NET or Windows project using the ASNA.AmyuniPDF class library needs a reference to the Amyuni Document Converter ActiveX COM object. To set this, right click on your solution and click "Add reference..." Then, click the COM tab and scroll down to the Amyuni ActiveX component and click "OK." 

![](https://asna.com/filebin/marketing//article-figures/SetAmyuniReference.png?x=1449611644571)

When you add a reference to this COM object in .NET, what you really need is the `Interop` version of the COM DLL (which is a .NET assembly that provides .NET with runtime type information about the COM component). This reference will shown in your project's Bin folder as the necessary `Interop` version of the DLL (as shown below with the red arrow).

![](https://asna.com/filebin/marketing//article-figures/interop.png?x=14496116456)
 