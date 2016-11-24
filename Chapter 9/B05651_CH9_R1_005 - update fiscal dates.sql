use [AdventureworksDW2016]
go

update [dbo].[DimDate]
set
      [FiscalQuarter] = case when [CalendarQuarter] < 3 then [CalendarQuarter] + 2 else [CalendarQuarter] - 2 end,
      [FiscalYear] = case when [CalendarSemester] = 2 then [CalendarYear] + 1 else [CalendarYear] end,
      [FiscalSemester] = case when [CalendarSemester] = 2 then 1 else 2 end
go


