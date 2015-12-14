## Using the ASNA.AmyuniPDF library from ASP.NET

This example shows the ASNA.AmyuniPDF library in action in an AVR for .NET ASP.NET app. 

This example includes two source members

*	[TestAmyuniPDF.aspx.vr](http://asna.github.io/AVR-ASP.NET-Amyuni-AnnotatedCode/code/TestAmyuniDriver/TestAmyuniPDF.aspx.html) - An AVR for .NET codebehind for ASPX page that initiates PDF printing.
*	[App_Code/PrintTest.vr](http://asna.github.io/AVR-ASP.NET-Amyuni-AnnotatedCode/code/TestAmyuniDriver/app_code/PrintTest.html) - An AVR for .NET class that prints a report. This class can print to either a real printer or the Amyuni PDF driver. 
	 
Use the links to see annotated source listings for these source members.

###General notes

* The [PrintTest.vr](http://asna.github.io/AVR-ASP.NET-Amyuni-AnnotatedCode/code/TestAmyuniDriver/app_code/PrintTest.html) member is designed to print to either a regular printer or the Amyuni PDF printer driver. It is strongly recommended that before you attempt to print to PDF you ensure your code will print to PDF. This will help isolate problems when you redirect your report to PDF.
* The `PrintTest.vr` shown here is only an example--there are probably many other ways to print your report. However, the pattern shown here is a proven, simple pattern to use. 
* The DB object in `PrintTest.vr` is exclusive to the `PrintTest` class and will therefore create a dedicated IBM i job for the duration of the report. To avoid this, use the `SingletonDB` pattern to pass a previously-instanced DB object into the `PrintTest` class's constructor.
* This example performs the print task during the code-behind's postback--causing a delay for the user while the report is being printed. For larger reports is might be better to engineer a queue-like process that accepts a request for a report, queues it to the server, and then returns control immediately to the user. Once the PDF is created the app could send an email to the user with either a link to prepared PDF or the PDF itself (if the PDF isn't too large).      