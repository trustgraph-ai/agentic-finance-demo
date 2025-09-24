#!/bin/sh

echo "Running config scripts..."
sh scripts/balance-sheets-schema.sh

echo "Schemas loaded. ✅"

sh scripts/base-config.sh

echo "Flow configuration complete. ✅"

sh scripts/load-data.sh

echo "Datasets loaded. ✅"

sh scripts/add-mcp.sh

echo "MCP connections added. ✅"

sh scripts/agent-tools.sh

echo "Agent tools configured. ✅"
echo "Full Configuration complete. ✅"
