# Agentic Finance Demo

This demo simulates being a financial analyst at the hypothetical company, Setec Astronomy. This demo includes:

- Setec Astronomy company data as a [knowledge graph](https://github.com/trustgraph-ai/agentic-finance-demo/blob/main/datasets/setec.ttl)
- Setec Astronomy financial data as [structured data](https://github.com/trustgraph-ai/agentic-finance-demo/blob/main/datasets/setec-balance-sheets.xml)
- [Yahoo Finance MCP Server](https://github.com/trustgraph-ai/yfinance-mcp)
- [SEC EDGAR MCP Server](https://github.com/trustgraph-ai/sec-edgar-mcp)
- DuckDuckGo search

[![Agentic Finance Demo](https://img.youtube.com/vi/e_R5oK4V7ds/maxresdefault.jpg)](https://www.youtube.com/watch?v=e_R5oK4V7ds)

## Deploy TrustGraph

Begin with a [TrustGraph deployment](https://docs.trustgraph.ai/deployment/) of your choice.

## Clone the Repo

```
git clone https://github.com/trustgraph-ai/agentic-finance-demo.git
```

## Using the Included TrustGraph Config

A configuation of TrustGraph is included in the `trustgraph-config` folder. It uses `Mistral Medium 3.1` and `Docker`. If you would like to use this configuration begin by cloning the repo or downloading the files:

> [!NOTE]
> The Docker Engine must be running prior to launching TrustGraph. If it is your first time launching TrustGraph, the Docker Engine will need to pull all of the containers from the Docker Hub.

```
cd trustgraph_config
export MISTRAL_TOKEN=<your-mistral-token>
pip3 install trustgraph-cli==1.3.20
docker compose up -d
```

## Launch the MCP Server

Once TrustGraph is fully running, launch the Yahoo Finance and SEC EDGAR MCP servers. It first may be necessary to install the MCP python library.
```python
pip3 install mcp
```

To launch the Yahoo Finance MCP server:

```
uv run mcp dev src/yfmcp/server.py
```

In another terminal window, start the SEC EDGAR MCP server:

```
python3 sec_edgar_mcp/server.py --port 9890 --transport streamable-http

```

You will need to leave the MCP server terminal windows open while the MCP servers are running.

## Demo Configuration

The flow configuration, strucutred data schema loading, graph and structred data loading, MCP tool connections, and agent tool settings are included in a single script.

```
sh full-config.sh
```

## Sample Agent Queries

These queries test multiple aspects of the financial analyst:

```
What are the corporate addresses of Setec Astronomy, Amazon, and Alphabet?

Who are the CEOs of Setec Astronomy, Amazon, and Alphabet?

Calculate the debt-to-equity ratio (current and long term debt to total equity) using balance sheets data from 2020.

What percentage of assets are tangible vs. intangible using the balance sheets data for 2020?

Summarize the most recent balance sheet for Alphabet.
```

## Structured Data Queries

To further examine the structured data, below are some sample GraphQL queries that retrieve the same information as the above agent queries:

```
tg-invoke-objects-query -f financial-analyst \
--collection setec_balance_sheets \
-q '{ balance_sheets { fiscal_year current_debt long_term_debt total_equity } }' 

tg-invoke-objects-query -f financial-analyst \
--collection setec_balance_sheets \
-q '{ balance_sheets ( where: { fiscal_year: { eq : 2020 } } ) { fiscal_year current_debt long_term_debt total_equity } }' 

tg-invoke-objects-query -f financial-analyst \
--collection setec_balance_sheets \
-q '{balance_sheets ( where: {fiscal_year: { eq : 2020 } } ) { total_assets cash_and_equivalents accounts_receivable prepaid_expenses other_current_assets property_equipment_net intangible_assets_net goodwill } }'
```
