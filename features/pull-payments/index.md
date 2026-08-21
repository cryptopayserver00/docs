---
title: "Pull Payments"
description: "Better understand the store's pull payments."
---

# Introduction

Traditionally, to make a crypto payment, a receiver shares their crypto address and the sender later sends money to this address. Such system is called `Push payment` as the sender initiates the payment while the receiver may be unavailable, in effect  `pushing` the payment to the receiver.

However, what about reversing the role?

What if, instead of a sender `pushing` the payment, the sender allows the receiver to pull the payment at a time the receiver seems fit? This is the concept of `Pull payments`. This allows several new application such as:

* A subscription service (where the subscriber allows the service to pull money every x amount of time)
* Refunds (where the merchant allows the customer to pull the refund money to his wallet when it seems fit)
* Time-based billing for freelancers (where the person hiring allows the freelancer to pull money to his wallet as time gets reported)
* Patronage (where the patron allows the recipient to pull money every month to continue supporting their work)
* Automatic selling (where a customer of an exchange would allow an exchange to pull money from their wallet to automatically sell every month)
* Balance withdraw system (where a high-volume service allows users to request withdraws from their balance, the service can then easily batch all the payouts to many users, at fixed intervals)

You can also follow this video:

> not found the video

# Concept

When a sender configures a `Pull Payment`, they can configure a number of properties:

* Start date
* End date (optional)
* A period (optional)
* A limit amount
* A unit (such as USD, BTC, Hours)
* Available payment methods

After this, the sender can **share the pull payment** using a link with the receiver, allowing the receiver to `create a payout`. The receiver will choose for their payout:

* Which payment method to use
* Where to send the money

Once a payout is created, it will count toward the `pull payment's limit` for the current `period`. The sender will then approve the payout by setting the `rate` in which the payout will be sent, and proceed with payment.

For the sender, we provide an easy to use way to batch the payment of several payouts from the CryptoPay Internal Wallet.

Note that CryptoPay Server does not approve and pay a payout automatically. In future releases, we will look into payouts which are approved to be paid out automatically under the correct conditions. Instead, a notification will appear for the sender, giving the sender the choice to approve and pay the payouts.

# Greenfield API

We provide a full API to both the sender and receiver that is documented in the `/docs` page of your instance. (or on our public link page)

Since our API exposes the full capability of pull payments, a sender can automate payments for his own need.

# User interface

The user interface only allows a subset of what is possible.

## Create a pull payment

1. Go to your wallet page / pull payments
2. Click on `Create a new pull payment`
3. Fill out the pull payment information, click `Create`
4. Go to the pull payment page by clicking on `View`
5. Share this page with the payment receiver
6. As the receiver, fill out how much `USD` you claim, and to which address the money should be sent.

Approve and pay a payout

1. The sender gets notified when the receiver is pulling money
2. Clicking on the notification brings the sender to a page listing all outstanding payouts
3. Check the payout to approve, pay and confirm
4. You are then brought to the normal wallet user interface of CryptoPay Server

# Additional use cases for the Pull Payments feature

The **Pull Payment feature** can be used in multiple applications, the first one being Refunds.
