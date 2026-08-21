---
title: "Connect Wallet"
description: "Connect an existing wallet."
---

By using an existing wallet, you can receive payments to the external wallet, without CryptoPay Server knowing the wallet's private key. If a malicious attacker hacked your server and obtained the public address, they could observe your transaction history, but cannot access the funds.

* Connect hardware wallet
* Import Wallet file
* Enter extended public key
* Scan wallet QR code
* Enter wallet seed

# Connect hardware wallet

Hardware wallets provide a good balance between security and ease of use. If you already have a hardware wallet set up, you can easily use it with your CryptoPay Server. Thanks to built-in **hardware wallet integration** the public key from the hardware wallet is automatically added to your CryptoPay Server. The integration further allows you to spend funds received to your store within CryptoPay's **internal wallet**.

# Import Wallet file

Using an existing software wallet assumes that you already have an external wallet created and backed up. In theory, any mobile/desktop wallet that provides an extended public key should work, however, most wallets have technical information (gas-limit) that may cause serious user-experience problems for you later on.

For that reason, we recommend that you only use software wallets listed below.

* **Binance Wallet**
* **OKX Wallet**
* **Metamask**

Click on the links above and you will be redirected to a step by step tutorial on how to set up each particular software wallet with CryptoPay Server.

To spend and manage the funds received to your external software wallet, you can use the **internal CryptoPay Wallet** and sign a transaction with your private key or simply manage the funds in that external wallet itself.

# Enter extended public key

This option can be useful if you want to modify wallet addresses or if you wallet type is not compatible with the Hardware Wallet Integration (Vault).

This method requires you to configure your wallet connection manually and should only be used if you have a good understanding of wallet extended public keys, account key paths and master fingerprints.

# Scan wallet QR code

Some wallets allow you to create a wallet and export the extended public key using a QR Code. You can easily connect your CryptoPay Server to these types of wallets with the scan QR code option. The common (gas-limit) issue is likely to occur using any key,  unless the wallet provider has a way to adjust it.

To spend and mange the funds in your internal CryptoPay Wallet you will need to provide the private key (used to generate the private key QR Code) during transaction signing or simply receive funds through your CryptoPay and manage the funds in the external wallet.

# Enter wallet seed

This option is useful if you have no other way of spending funds in a certain wallet. Such as an altcoin wallet that was previously compatible with the hardware wallet integration but no longer is. In general you should never type wallet seed words on any internet connected device.

This method requires you to configure your wallet connection manually and should only be used if you have a good understanding of wallet formats, extended public keys, account key paths and master fingerprints.

