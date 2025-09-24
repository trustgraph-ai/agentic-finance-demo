#!/bin/sh

echo "Add Agent tools for EDGAR MCP server..."
tg-set-tool --id get_cik_by_ticker \
  --name "get_cik_by_ticker" \
  --type mcp-tool \
  --mcp-tool get_cik_by_ticker \
  --description "Get the SEC EDGAR CIK (Central Index Key) for a company based on its stock ticker symbol." \
  --argument symbol:string:"Company stock ticker symbol"
tg-set-tool --id get_financials \
  --name "get_financials" \
  --type mcp-tool \
  --mcp-tool get_financials \
  --description "Get financial statements for a company such as cash flow, cash flow statement, operating cash flow, investing cash flow, financing cash flow, income statement, revenue, net income, earnings, profit/loss, operating income, balance sheet, assets, liabilities, equity, cash and cash equivalents." \
  --argument identifier:string:"SEC EDGAR CIK (Central Index Key)"
tg-set-tool --id get_recent_filings \
  --name "get_recent_filings" \
  --type mcp-tool \
  --mcp-tool get_recent_filings \
  --description "Get a recent SEC company filing's accession_number for filings such as a 10-K, 10-Q, or 8-K." \
  --argument identifier:string:"SEC EDGAR CIK (Central Index Key)" \
    form_type:string:"SEC filing such as 10-K, 10-Q, or 8-K."
tg-set-tool --id get_filing_content \
  --name "get_filing_content" \
  --type mcp-tool \
  --mcp-tool get_filing_content \
  --description "Get the content of a recent company's SEC filing such as a 10-K, 10-Q, or 8-K using the filing's accession_number" \
  --argument identifier:string:"SEC EDGAR CIK (Central Index Key)" \
    accession_number:string:"accesion_number for a company's SEC filing"

echo "Add Agent tools for structured data retrieval..."
tg-set-tool --id setec_balance_sheets \
  --collection setec_balance_sheets \
  --name "setec_balance_sheets" \
  --type structured-query \
  --description "Get data from SETEC Astronomy's balance sheets. The table name for queries is balance_sheets. The available dataset keys are fiscal_year, cash_and_equivalents, accounts_receivable, prepaid_expenses, other_current_assets, total_current_assets, property_equipment_net, intangible_assets_net, goodwill, other_assets, total_non_current_assets, total_assets, accounts_payable, accrued_expenses, deferred_revenue, current_debt, total_current_liabilities, long_term_debt, deferred_tax_liabilities, other_liabilities, total_non_current_liabilities, total_liabilities, common_stock, additional_paid_in_capital, retained_earnings, and total_equity." \
  --argument query:string:"Balance sheets data query"

echo "Add Agent tools for Yahoo Finance MCP server..."
tg-set-tool --id get_ticker_info \
  --name "get_ticker_info" \
  --type mcp-tool \
  --mcp-tool get_ticker_info \
  --description "Get company info from stock ticker symbol" \
  --argument symbol:string:"Stock ticker symbol"
tg-set-tool --id get_ticker_news \
  --name "get_ticker_news" \
  --type mcp-tool \
  --mcp-tool get_ticker_news \
  --description "Get company news from stock ticker symbol" \
  --argument symbol:string:"Stock ticker symbol"
tg-set-tool --id get_price_history \
  --name "get_price_history" \
  --type mcp-tool \
  --mcp-tool get_price_history \
  --description "Get company stock price history from stock ticker symbol" \
  --argument symbol:string:"Stock ticker symbbl"
tg-set-tool --id get_top \
  --name "get_top" \
  --type mcp-tool \
  --mcp-tool get_top \
  --description "Get top financial entities in a sector based on the business sector and entity type" \
  --argument sector:string:"Input should be 'basic-materials', 'communication-services', 'consumer-cyclical', 'consumer-defensive', 'energy', 'financial-services', 'healthcare', 'industrials', 'real-estate', 'technology' or 'utilities'" \
    top_type:string:"Input should be 'top_etfs', 'top_mutual_funds', 'top_companies', 'top_growth_companies' or 'top_performing_companies'"]

echo "Add Agent tool for DuckDuckGo Search..."
tg-set-tool --id web_search \
  --name "web_search" \
  --type mcp-tool \
  --mcp-tool duckduckgo \
  --description "Search the internet using DuckDuckGo" \
  --argument query:string:"Search query for internet search"

echo "Add Agent tool for Knowledge Graph query..."
tg-set-tool --id setec_company_query \
  --name "setec_company_query" \
  --type knowledge-query \
  --collection setec_company \
  --description "Query for information about the company Setec Astronomy"
