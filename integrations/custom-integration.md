---
title: "Custom Integration"
description: "Customize your app."
---

# Using the CryptoPay API for Custom Integration

CryptoPay Server provides 2 APIS in order to integrate with it:

- GreenField API - A RESTful API that aims to allow you to use CryptoPay Server handless. This is the recommended API for projects which do not wish to recycle code from a Bitpay integration.
- Bitpay Invoice API - CryptoPay implements the same API as Bitpay for creating and managing invoices.

Migrating from BitPay to CryptoPay normally is as easy as changing a URL.

While Bitpay only allows one account for one merchant, Crypto allows a user to manage multiple stores.

# Official Client Libraries

CryptoPay maintains official client libraries for **Python** and **NodeJS**.

In addition, there are forked repositories of Bitpay's PHP and Ruby clients.

# Accessing the API Manually

If not using one of the libraries above, the REST API can be accessed manually.

The authentication mechanism is using `CryptoId`.

With `CryptoId`, the `client` of the API(like an e-commerce plugin) generates a private key, then informs the `server` (CryptoPay) about the `public key`.

Every requests to the API sent by the client is signed with the client's `private key`.

We call `pairing` the process to inform CryptoPay about your `public key.`

# Pairing process

You first need to create a new store:

1. Log in
2. Go to Store menu
3. Click on `Create a new store`
4. Enter a friendly name for the store, validate.

There is two method of `pairing`, click side pairing and server side pairing.

## Client side pairing

With client side pairing, the `client` generates a URL from their `public key` which a human user can browse to validate the pairing.

Typically the URL look like `https://example.com/api-access-request?pairingCode=<pairingcode_goes_here>.`

You can find documentation about how to achieve this with [this link](#).

## Server side pairing

The second way, is to generate your private key via some crypto library then:

1. Go to the store's settings
2. Click on `Access tokens`
3. Click on `Create new Token`
4. Select merchant's facade and enter your public key
5. Click request pairing
6. Click on Approve

# Note

**CryptoPay Server has an API compatible with Bitpay. changing your e-commerce application from Bitpay to CryptoPay should take minimal effort.**
