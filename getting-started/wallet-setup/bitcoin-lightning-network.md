---
title: "Bitcoin Lightning Network"
description: "Bitcoin Lightning Network"
---

# Overview

After deploying CryptoPay Server, you may want to experiment with an innovative second-layer payment system built on top of Bitcoin protocol - the [Lightning Network](https://en.bitcoin.it/wiki/Lightning_Network).

The guide will show you how to set up your Lightning Network (LN) node in CryptoPay Server and guide you through the basics.

CryptoPay Server currently offers these implementations of the Lightning Network:

- [Core Lightning (CLN) (formerly c-lightning)](https://github.com/ElementsProject/lightning)
- Lightning Charge
- [Eclair](https://github.com/ACINQ/eclair)
- [LND](https://github.com/lightningnetwork/lnd)
- [LNDhub](https://bluewallet.io/lndhub/)

Before you proceed, please understand that the Lightning Network is still in the experimental stage. Using the Lightning Network can put your money at risk. Do not use more than you can afford to lose.

Take time to familiarize yourself with the risks associated with using the Lightning Network.

If you choose to run the internal Lightning Node in CryptoPay Server, consider:

1. Any lightning network node operates at 2 levels: **on-chain** and **off-chain**.
2. The LN implementation of choice will create an on-chain hot wallet that will be used to fund the the off-chain payment channels.
3. Make sure you back up the **on-chain** hot wallet seed (see below instructions for the individual implementations).
4. The seed in step #3 can **only recover the on-chain funds**, although it is necessary for the off-chain operation.
5. **Off-chain** funds locked in channels **cannot** be backed up using a single-seed. Read the documentation issued by your LN implementation of choice.
6. **Off-chain** recovery mechanisms are under active research and development. Erasing your CryptoPay Server or unsafe/unsecure operation of the computing environment (e.g Filesystem corruption, compromised keys) can lead to permanent **loss of funds**.

As the technology matures and develops, mechanisms for proper backup will be easier to implement in CryptoPay Server.&#x20;

# Choosing the Lightning Network implementation

First, read **here** about using pruned Bitcoin nodes with lightning network implementations before deploying.

On the installation, you'll have the option to choose the implementation.

For **web-interface installations**, you can simply select the implementation from the drop-down menu. For other **docker** based **deployment methods** you need to:

```
sudo su -
cd cryptopayserver-docker
...
```

- For **Core Lightning (CLN)** use `export`&#x20;
- For **LND** use `export`
- For **eclair** use `export`

Finally, to begin using Lightning, you blockchain needs to be fully synced.

# Lightning node configuration in CryptoPay Server

## Connecting your internal Lightning Node

Irrespective of the LN implementation deployed, the process of connecting your internal Lightning Node in CryptoPay Server is the same.

1. Choose a store
2. Go to "Lightning" > Select "Use internal node"
3. Click "Save" > See "BTC Lightning node updated" message
4. Go to "Public Node Info" > The node should appear "**Online**"

If the internal connection fails, confirm:

1. The Bitcoin on-chain node is fully synchronized
2. The Internal lightning node is "Enabled" under "Lightning" > "Settings" > "BTC Lightning Settings"

If you are unable to connect to your Lightning node, try restarting your server or reviewing our troubleshooting guide. You will not be able to accept lightning payments in your store until you Lightning node appears "Online". Try to test your Lightning connection by clicking the "Public Node Info" link.

## Connecting an external Lightning Node in CryptoPay Server

CryptoPay Server offers the option to connect to an external Lightning node. To configure it:

1. Go to "Lightning" > Select "Use custom node" if there is no Lightning node configured.
2. Go to "Lightning" > Select "Settings" > Select "Change connection" > Select "Use custom node" to modify an existing connection
3. Add the configuration details matching the lightning implementation used > "Test connection"

# Getting started with CryptoPay Server and LND

## Control your LND using Ride The Lightning (RTL)

The easiest way to use LND implementation with CryptoPay Server is to use the **[Ride The Lightning](https://github.com/Ride-The-Lightning/RTL)** (RTL) service. A web user interface for the Lightning Network, RTL allows you to operate your node without leaving CryptoPay Server, from your browser. To initiate RTL in CryptoPay Server, Go to Server > Services > Ride The Lightning > See information.

## Control your LND using Zap

For remote use of your LND node on IOS or PC, you can use **Zap Wallet integration**.

Beside Zap, there are a few more wallets that allow remote control of the LND node, [the Nayuta wallet](https://nayuta.co/) and the [ZeusLN](https://github.com/ZeusLN/zeus). Both of which have not yet extensively been tested by the community.

## Control your LND using Lightning Joule

To remotely control your LND node via web browser, you can use Lightning Joule.

## Control your LND via the command-line: lncli

LND can be accessed via the command-line using the shell script `bitcoin-lncli.sh`.

If you're on Docker make sure you're in docker directory.

```
sudo su -
cd cryptopayserver-docker
./bitcoin-lncli.sh $command
./bitcoin-lncli.sh getinfo #show info about the node
```

Run ./bitcoin-lncli.sh --help\` to see a full list of commands or check the full [API documentation](https://api.lightning.community/).
