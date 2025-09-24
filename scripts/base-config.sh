#!/bin/sh

echo "Deleting default agent tools..."
tg-delete-tool --id knowledge-extraction
tg-delete-tool --id knowledge-query
tg-delete-tool --id llm-completion

echo "Create flow for graph and structured data..."
tg-start-flow -i financial-analyst \
  -n graph-rag+object-extract \
  -d "Graph and Structured data flow"

echo "Remove default flow..."
tg-stop-flow -i default
