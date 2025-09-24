#!/bin/sh
tg-put-config-item --type schema --key balance_sheets --value '{
  "name": "balance_sheets",
  "description": "Annual balance sheet data  including assets, liabilities, and equity",
  "fields": [
    {
      "id": "0003a1b2-c3d4-5e6f-7890-abcdef123456",
      "name": "fiscal_year",
      "type": "integer",
      "primary_key": true,
      "required": true
    },
    {
      "name": "cash_and_equivalents",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003b2c3-d4e5-6f78-9012-bcdef1234567"
    },
    {
      "name": "accounts_receivable",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003c3d4-e5f6-7890-1234-cdef12345678"
    },
    {
      "name": "prepaid_expenses",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003d4e5-f678-9012-3456-def123456789"
    },
    {
      "name": "other_current_assets",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003e5f6-7890-1234-5678-ef12345678ab"
    },
    {
      "name": "total_current_assets",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003f6a7-8901-2345-6789-f123456789bc"
    },
    {
      "name": "property_equipment_net",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003a7b8-9012-3456-789a-123456789bcd"
    },
    {
      "name": "intangible_assets_net",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003b8c9-0123-4567-89ab-23456789bcde"
    },
    {
      "name": "goodwill",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003c9d0-1234-5678-9abc-3456789bcdef"
    },
    {
      "name": "other_assets",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003d0e1-2345-6789-abcd-456789bcdef0"
    },
    {
      "name": "total_non_current_assets",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003e1f2-3456-789a-bcde-56789bcdef01"
    },
    {
      "name": "total_assets",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003f2a3-4567-89ab-cdef-6789bcdef012"
    },
    {
      "name": "accounts_payable",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003a3b4-5678-9abc-def0-789bcdef0123"
    },
    {
      "name": "accrued_expenses",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003b4c5-6789-abcd-ef01-89bcdef01234"
    },
    {
      "name": "deferred_revenue",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003c5d6-789a-bcde-f012-9bcdef012345"
    },
    {
      "name": "current_debt",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003d6e7-89ab-cdef-0123-bcdef0123456"
    },
    {
      "name": "total_current_liabilities",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003e7f8-9abc-def0-1234-cdef01234567"
    },
    {
      "name": "long_term_debt",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003f8a9-abcd-ef01-2345-def012345678"
    },
    {
      "name": "deferred_tax_liabilities",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003a9ba-bcde-f012-3456-ef0123456789"
    },
    {
      "name": "other_liabilities",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003bacb-cdef-0123-4567-f012345678ab"
    },
    {
      "name": "total_non_current_liabilities",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003cbdc-def0-1234-5678-012345678abc"
    },
    {
      "name": "total_liabilities",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003dced-ef01-2345-6789-12345678abcd"
    },
    {
      "name": "common_stock",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003edfe-f012-3456-789a-2345678abcde"
    },
    {
      "name": "additional_paid_in_capital",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003fe0f-0123-4567-89ab-345678abcdef"
    },
    {
      "name": "retained_earnings",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003ef10-1234-5678-9abc-45678abcdef0"
    },
    {
      "name": "total_equity",
      "type": "integer",
      "primary_key": false,
      "required": true,
      "id": "0003f021-2345-6789-abcd-5678abcdef01"
    }
  ],
  "indexes": ["fiscal_year", "total_assets", "total_liabilities", "total_equity"]
}'
