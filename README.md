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
