#!/bin/sh

echo "Add connections for SEC EDGAR MCP server..."
tg-set-mcp-tool --id get_cik_by_ticker \
  --tool-url "http://host.docker.internal:9890/mcp"
tg-set-mcp-tool --id get_financials \
  --tool-url "http://host.docker.internal:9890/mcp"
tg-set-mcp-tool --id get_recent_filings \
  --tool-url "http://host.docker.internal:9890/mcp"
tg-set-mcp-tool --id get_filing_content \
  --tool-url "http://host.docker.internal:9890/mcp"

echo "Add connections for Yahoo Finance MCP server..."
tg-set-mcp-tool --id get_ticker_info \
  --tool-url "http://host.docker.internal:9999/mcp"
tg-set-mcp-tool --id get_ticker_news \
  --tool-url "http://host.docker.internal:9999/mcp"
tg-set-mcp-tool --id get_price_history \
  --tool-url "http://host.docker.internal:9999/mcp"
tg-set-mcp-tool --id get_top \
  --tool-url "http://host.docker.internal:9999/mcp"
