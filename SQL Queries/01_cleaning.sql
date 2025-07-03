SELECT
    CAST(Date AS DATE) AS Date,
    Operating_Income,
    Expenses,
    Net_Income,
    Assets,
    Liabilities,
    Equity,
    Debt_to_Equity,
    ROA,
    Revenue,
    Cash_Flow,
    Profit_Margin,
    Interest_Expense,
    Tax_Expense,
    Dividend_Payout
INTO dbo.financials_cleaned
FROM dbo.financials_raw
WHERE Date >= '2015-01-01'
  AND Revenue IS NOT NULL
  AND Net_Income IS NOT NULL;
