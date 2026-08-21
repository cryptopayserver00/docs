---
title: "Invoices"
description: "Better understand the store's invoices."
---

# What is an invoice in CryptoPay Server?

An invoice is a document issued by the seller to a buyer to collect payment.

&#x20;In CryptoPay Server, an invoice represents a document that must be paid within a **defined time interval** at a fixed exchange rate. Invoices have expiration because they lock the exchange rate within a specified time frame to protect the receiver from price fluctuations.

The core of CryptoPay Server is the ability to act as a crypto invoice management system. An invoice is an essential tool for keeping track and managing a received payment.

Unless you use a built in **Wallet** to receive payment manually, all payments within a store will be shown on the `Invoices` page. This page cumulatively sorts payments by date and is a central piece of invoice management and payment troubleshooting.

# Invoice statuses

Table below lists and describes common invoice statuses in CryptoPay and suggests common actions. Actions are just recommendations. It's up to users to define best course of action for their use-case and business.

| Invoice Status | Description                                                                                                | Action                                                                                                   |
| -------------- | ---------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| New            | Not paid, invoice timer still has not expired                                                              | None                                                                                                     |
| Expired        | Not paid, invoice timer expired                                                                            | None                                                                                                     |
| Processing     | Paid in full, but has not received sufficient amount of confirmations specified in the store settings      | Wait for confirmations (The invoice should become - settled)                                             |
| Settled        | Paid, in full, received sufficient amount of confirmations in store                                        | Fulfil the order                                                                                         |
| Invalid        | Paid, but failed to receive sufficient amount of confirmations within the time specified in store settings | Check the transaction on a blockchain explorer, if it received sufficient confirmations, mark as settled |

- Invoices paid via the **Lightning Network** immediately go to a settled state, as their settlement is instant.
- Paid Partial invoice usually happens when a buyer pays the invoice from the exchange wallet which takes a fee for their service and deducts it from a total. In some cases, it happens when buyer enters an incorrect amount in their wallet.
- Invalid - If you're receiving a lot of invalid invoices in your store, you may want to adjust invalid invoice time in store settings.

## Invoice details

The invoice details page contains all information related to an invoice.

Invoice information is created automatically based on invoice status, exchange rate, etc. Product information is created automatically if the invoice was created with product information such as in the Point of Sale. Read about collecting Buyer information **here**.

## Invoice filtering

Invoices can be filtered via the quick filters located next to the search button or the advanced filters, which can be toggled by clicking the (Help) link on the top. Users can **filter invoices** by store, order id, item id, status, or date.

## Invoice export

CryptoPay Server Invoices can be exported in CSV or JSON format. For more information about invoice export and accounting, **see this page**.

# Refunding an invoice

If for any reason you would like to issue a refund, you can easily create a refund from the invoice view. Click our **refunding documentation** for more information.

# Archiving invoices

As a result of the no address re-use feature of CryptoPay Server, it's common to see many expired invoices in your store's invoice page. To hide them from your view, select them in the list and mark them as **archived**. Invoices that have been marked as archived are not deleted. Payment to an archived invoice will still be detected by your CryptoPay Server (paidLate status). You can view the store's archived invoices at any time by selecting archived invoices from the search filter dropdown.
