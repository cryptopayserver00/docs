---
title: "Wallet"
description: "Better understand the store's wallet."
---

# Wallet

CryptoPay Server has a built in, full-node reliant wallet that allows for easy funds management.

Each store's configured cryptocurrency has a separate wallet displayed under Wallets in the menu bar.

# Wallet features

The wallet contains the following features:

1. Transactions
2. Send
3. Receive
4. Rescan
5. Pull payments
6. Payouts
7. PSBT
8. Settings

## Transactions

An overview of the incoming (green), outgoing (red) and unconfirmed (grayed out) **transactions** displayed together with timestamps and balances, sorted by date. You can click on the transaction ID to view the transaction details on the block explorer.

### Transaction Labels

The table below lists the various **transaction labels used by CryptoPay**.

| Transaction Type | Description                                            |
| ---------------- | ------------------------------------------------------ |
| plugin           | Payment was received through an plugin created invoice |
| invoice          | Payment was received through an invoice                |
| payjoin          | Not paid, invoice timer still has not expired          |
| payjoin-exposed  | UTXO was exposed through an invoice payjoin proposal   |
| payment-request  | Payment was received through a payment request         |
| payout           | Payment was sent through a payout or refund            |

you can also create your own **custom transaction labels and comments.**

## Send

The Send function allows spending of the funds from the CryptoPay wallet.

### Advanced Settings

Certain wallet features are available for advanced users. Toggle the `Advanced Settings` within the `Send` tab to preview them.

### Other features

### Camera QR scan

Scan option in wallet (camera icon in send screen) lets you use your device's camera to scan a QR code containing an address. It auto-populates the sending information so that you don't have to manually copy-paste an address and amount.

### Signing a transaction (spending)

To spend the funds, you are required to **sign** the transaction. Transactions can be signed with:

- Hardware Wallet
- Wallet supporting PSBT
- HD private key or recovery seed
- Hot Wallet

### Signing with HD Privacy key or mnemonic seed

If you set up an **existing wallet with your CryptoPay Server**, you can spend the funds by inputting your private key into an appropriate field. Make sure to set a proper **AccountKeyPath** in Wallet > Settings otherwise you won't be able to spend.

### Signing with a wallet supporting PSBT

PSBT (**Partially Signed Bitcoin Transactions**) is an interchange format for Bitcoin transactions that are not fully signed yet. PSBT is supported in CryptoPay Server and can be signed with compatible hardware and software wallets.

The construction of a fully signed Bitcoin transaction goes through the following steps:

- A PSBT gets constructed with certain inputs and outputs, but no signatures.
- The exported PSBT can be imported by a wallet that supports this format
- The transaction data can be inspected and signed using the wallet
- The signed PSBT file gets exported from the wallet and imported with CryptoPay Server
- CryptoPay Server produces the final Bitcoin transaction
- You verify the result and broadcast it to the network

Tutorials

- Sign a PSBT transaction with ColdCard Hardware Wallet (completely offline/air-gapped)&#x20;
- Create and sign a PSBT transaction with Sparrow wallet

### Signing with a hardware wallet

CryptoPay Server has built-in hardware wallet support allowing you to **use you hardware wallet with CryptoPay**, without leaking information to third-party apps or servers.

Check instructions on how to set up and sign with a [compatible hardware wallet](https://github.com/bitcoin-core/HWI#device-support).

### Signing with a hot wallet

If you created a new wallet when setting up your store and enabled it as a hot wallet, since version 0.0.1, we've added an option the when a hot wallet is created, it'll automatically use the seed stored on a server to sign.

## Receive

The Receive tab generates an unused address which can be used to receive payments. The same can be achieved by generating an invoice (Invoices > Create new invoice).

## Rescan

Wallet rescan solves two critical problems for CryptoPay users:

1. Transactions
2. Gas Limit
3. Importing a previously used wallet

**Transactions**: Get all the transactions that have occurred at this address.

**Gas Limit**: Most wallets typically have the address gas limit set to up. This means that if a merchant receives high or more consecutive unpaid invoices, those wallets show the incorrect balance and some transactions may not be visible.

**Wallet import**: When users add a derivation scheme of a wallet that had transactions in the past (previously used wallet), CryptoPay won't be able to show the balance and transactions from the past.

Rescan is a feature that solves both of these problems, Once the scan is complete, CryptoPay Server will show the correct balance, along with the past transactions of the wallet.

Wallet rescan requires access to the full node which means that this function is only available for server owners.

## Pull Payments

This feature gives you the ability to **create a Pull payment**, so that an outside individual may request to `pull` funds from your wallet.

For more information, see **Pull Payments.**

## Payouts

This section lets you manage Pull Payments and gives you the ability to **accept or decline payouts requested by outside individuals.**

For more information, see **Payouts**.

## Settings

In the top right corner of your wallet you will find the `wallet settings`. In the wallet settings tab you can adjust certain settings. If you've configured your wallet by creating a new wallet or using an existing wallet via the hardware wallet integration these settings will be pre-configured. Here, you have the options to perform several actions on your wallet, such Rescanning wallet for missing transactions, pruning old transactions, view wallet phrase, remove wallet among features.

If you manually added the extended public key from an external wallet, you'd need to adjust `AccountKeyPath` that you can find in your external wallet, for example `m/84'/0'/0'` to be able to spend from the CryptoPay Wallet.

In `wallet settings` you will also find the `speed policy` for the specific store. There are 2 main settings under `Payment`, Payment invalid if transaction fails to confirm in ... after invoice creation and Consider the invoice confirmed when the payment transaction ... The latter lets you set the number of confirmations required to be recognized as settled.

### Labels

At the bottom of your wallet settings, you can manage your `custom transaction label.`

Clicking on the link would take you to a page where you can view all custom labels associated to all transaction. You can remove any or all custom labels given the required permission.
