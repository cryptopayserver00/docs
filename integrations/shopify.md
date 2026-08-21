---
title: "Shopify"
description: "Build Your Online Business — No.1 eCommerce Platform for All Businesses."
---

# Accept Crypto in Shopify with CryptoPay Server

Introducing CryptoPay Server for Shopify - open-souce payment gateway that enables you accept crypto payments directly on your website or stores from customers with no fee.

Out integration with Shopify allows you connect your self-hosted CryptoPay Server with your [Shopify store](https://www.shopify.com/), enabling you accept Crypto payments swiftly and securely.

# What CryptoPay offers:

- **Zero fees:** Enjoy a payment gateway with no fees. Yes, You saw that right. Zero fees!
- **Direct payment, No middlemen or KYC:** Say goodbye to intermediaries and tedious paperwork, and get your money directly in your wallet.
- **Fully automated system:** CryptoPay takes care of payments, invoice management and refunds automatically.
- **Display Button QR code at checkout:** Enhance customer experience with an easy and secure payment option.
- **Self-hosted infrastructure:** Maintain full control over your payment gateway.
- **Lightning network integrated:** Instant, fast and low cost payments and payouts.
- **Easy CSV exports**
- **Versatile plugin system:** Extend functionality according to you needs.
- **Point-of-sale integration** - Accept payments in your physical shops.
- **Multilingual ready:** Serve a global audience right out of the box.
- **Community-driven support:** Get responsive assistance from our dedicated community([Telegram](https://web.telegram.org/)).

# Prerequisites:

Before diving into the setup process, ensure you have the following:

- Shopify account
- CryptoPay Server - self-hosted or run by a third-party host v0.0.1 or later.
- Created CryptoPay Server store with wallet set up

# Setting up CryptoPay Server with Shopify

1. In Shopify, click on `Apps >` In the left sidebar
2. On the modal popped up, click on `App and sales channel settings`
3. From the page displayed, click on `Develop apps` button
4. If prompted, click on `Allow custom app development`
5. `Create an app` and name it, e.g. CryptoPay Server
6. On the app page, in `Overview` tab, click on the `Configure Admin API scopes`
7. In the filter admin access scopes type in `Orders`
8. In `Orders` enable `read_orders` and `write_orders` and then click `Save`
9. Click on the `Install App` in the top right corner and when pop-up window appears click `Install`
10. Reveal `Admin API access token` and `copy` it.
11. In your CryptoPay Server, go to your store and on the left sidebar click on `Shopify`
12. In the first field, `Shop name` enter the subdomain of your Shopify store e.g. SOME_ID.myshopify.com then enter SOME_ID
13. In third field, `Admin API access token` paste the `Admin API access token` you just copied from Shopify
14. In the second field, `API key` paste the `API key` from Shopify - which you can find at the bottom of the same page where you copied the Admin API access token
15. Click `Save` on CryptoPay Shopify settings page
16. Back on Shopify: On left menu select `Checkout` scroll down to "Order status page" and paste the HTML `<script>` code you see in CryptoPay Shopify settings into the "Additional scripts" text field.
17. Click `Save` and scroll back up to the top
18. Now click on `Payments` in the left sidebar, scroll down to "Manual payment methods", click on `(+) Manual payment method` and select `Create custom payment method` on the dropdown.
19. In `Custom payment method name` fill in `Crypto with CryptoPay Server`, optionally you can fill in other fields, but it's not required.
20. Hit `Activate` and you've set up Shopify and CryptoPay Server successfully.

> TIP
>
> "Custom Payment method name" must contain at least one fo the following words(case-insensitive): `crypto`, `cryptopayserver` or `cryptopay server` to work.

Below are step by step visuals describing the process outlined above.
