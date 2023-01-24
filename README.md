


# MDX with Microsoft SQL Server 2016 Analysis Services Cookbook
This is the code repository for [MDX with Microsoft SQL Server 2016 Analysis Services Cookbook](https://www.packtpub.com/big-data-and-business-intelligence/mdx-microsoft-sql-server-2016-analysis-services-cookbook-third-ed?utm_source=github&utm_medium=repository&utm_content=9781786460998), published by Packt. It contains all the supporting project files necessary to work through the book from start to finish.
##Instructions and Navigations
All of the code is organized into folders. Each folder starts with a number followed by the application name. For example, Chapter 2.


The code will look like the following:

          SELECT
          {  [Measures].[Reseller Order Quantity],
                 [Measures].[Reseller Order Count] } ON 0,
             NON EMPTY
             { [Date].[Month of Year].MEMBERS } ON 1
          FROM
             [Adventure Works]
          WHERE
             ( [Promotion].[Promotion Type].&[New Product] )     
             
             
### Software requirements:

Database Installation:

A Microsoft SQL Server 2016 full installation or at least the following components are required:

SQL Server 2016 engine
Analysis Services 2016
Microsoft SQL Server management Studio
Microsoft SQL Server Data Tools


We recommend the Developer, Enterprise, or the Trial Edition of Microsoft SQL Server 2016. Standard Edition is not recommended because it does not support all the features and a few examples might not work using the Standard Edition.

The Developer Edition has the full capabilities of the Enterprise edition and is for development and testing only. The Developer Edition is free if you sign up for the free Visual Studio Dev Essentials program. To download the SQL Server 2016 Developer edition free, you can start from joining or accessing the Visual Studio Dev Essentials site:

https://www.visualstudio.com/dev-essentials/

Or from this tiny url:

http://tinyurl.com/zzpzdwv

Microsoft SQL Server 2016 Trial Edition is for evaluation only and is valid for 180 days. Use this link to go to Microsoft Evaluation Center:

http://tinyurl.com/joap9rh

Sample Adventure Works 2016 Database:

Both the relational database file and the multidimensional Adventure Works project files are required:

AdventureWorks Sample Databases and Scripts for SQL Server 2016: this is the relational database, using this link to download the AdventureWorks databases and scripts: http://tinyurl.com/z8k479p
AdventureWorks Multidimensional Model SQL Server 2012 or 2014 - Enterprise Edition: SSAS project files. The 2012 or 2014 tutorials are valid for SQL Server 2016 release.
We recommend the Enterprise Edition of the Multidimensional Model Adventure Works cube project. To download the installation files, use the following link to go to CodePlex:

http://tinyurl.com/AdventureWorks2012

For the 2014 Multidimensional Model Adventure Works cube project, go to Adventure Works 2014 Sample Databases on CodePlex:

http://tinyurl.com/otj8bxf



For instructions on how to install the sample Adventure Works, see Install Sample Data and Projects for the Analysis Services Multidimensional Modeling Tutorial at this link:

http://tinyurl.com/jx6ghbm

Wide World Importers: The new SQL Server sample database

For the magnitude of SQL Server 2016 Microsoft has released a new sample database, the Wide World Importers database.

Both the 2008 and 2012 edition of the MDX Cookbook has been based off Adventure Works, which has been around since the SQL Server 2005 days. For the purpose of demonstrating MDX techniques and Analysis Services features, the Adventure Works sample database has continued to be a good choice for this 2016 edition.

For Creating PivotTable:

Microsoft Excel 2007 (or newer) with PivotTable is required.

Most of the examples will work with older versions of Microsoft SQL Server (2005 or 2008 or 2008 R2 or 2012). However, some of them will need adjustments because the Date dimension in the older versions of the Adventure Works database has a different set of years. To solve that problem simply shift the date-specific parts of the queries few years back in time, for example, turn the year 2013 into the year 2002 and Q3 of the year 2013 to Q3 of 2003.

## Related Products:
* [SQL Server Analysis Services 2012 Cube Development Cookbook](https://www.packtpub.com/big-data-and-business-intelligence/sql-server-analysis-services-2012-cube-development-cookbook?utm_source=github&utm_medium=repository&utm_content=9781849689809)

* [Microsoft SQL Server 2008 R2 Administration Cookbook](https://www.packtpub.com/networking-and-servers/microsoft-sql-server-2008-r2-administration-cookbook?utm_source=github&utm_medium=repository&utm_content=9781849681445)

* [Microsoft SQL Server 2012 Integration Services: An Expert Cookbook](https://www.packtpub.com/networking-and-servers/microsoft-sql-server-2012-integration-services-expert-cookbook?utm_source=github&utm_medium=repository&utm_content=9781849685245)

###Suggestions and Feedback
[Click here](https://docs.google.com/forms/d/e/1FAIpQLSe5qwunkGf6PUvzPirPDtuy1Du5Rlzew23UBp2S-P3wB-GcwQ/viewform) if you have any feedback or suggestions.
### Download a free PDF

 <i>If you have already purchased a print or Kindle version of this book, you can get a DRM-free PDF version at no cost.<br>Simply click on the link to claim your free PDF.</i>
<p align="center"> <a href="https://packt.link/free-ebook/9781849681308">https://packt.link/free-ebook/9781849681308 </a> </p>