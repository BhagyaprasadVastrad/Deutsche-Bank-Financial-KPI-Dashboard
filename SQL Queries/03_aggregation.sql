SELECT
    CAST(YEAR(Date) AS VARCHAR(4)) + '-' + RIGHT('0' + CAST(MONTH(Date) AS VARCHAR(2)), 2) AS YearMonth,
    SUM(Revenue) AS Total_Revenue,
    SUM(Operating_Income) AS Total_Operating_Income,
    SUM(Expenses) AS Total_Expenses,
    SUM(Net_Income) AS Total_Net_Income,
    SUM(Gross_Profit) AS Total_Gross_Profit,
    AVG(Profit_Margin_Percent) AS Avg_Profit_Margin_Percent,
    AVG(ROA_Final) AS Avg_ROA,
    AVG(Debt_to_Equity_Final) AS Avg_Debt_to_Equity,
    SUM(Cash_Flow) AS Total_Cash_Flow,
    SUM(Interest_Expense) AS Total_Interest_Expense,
    SUM(Tax_Expense) AS Total_Tax_Expense,
    SUM(Dividend_Payout) AS Total_Dividend_Payout
FROM dbo.financials_cleaned
GROUP BY CAST(YEAR(Date) AS VARCHAR(4)) + '-' + RIGHT('0' + CAST(MONTH(Date) AS VARCHAR(2)), 2)
ORDER BY YearMonth;
