---
tags: privacy, policy
summary: Fdoo privacy policy for iOS users.
date: 2026-08-06
---
# Privacy Policy

Effective date: August 6, 2026

Fdoo is operated by Ketut Agus Cahyadi Nanda. This Privacy Policy explains how Fdoo handles information when you use the Fdoo iOS app or visit the Fdoo website.

## Summary

Fdoo helps you scan restaurant menus, identify and translate dish names, and understand whether a dish may match your dietary preferences. Fdoo processes camera images on your device. Recognized menu text and language information may be sent to Fdoo's service providers to return dish information. Fdoo also uses privacy-focused analytics to understand whether the app works and which features are useful.

Fdoo does not sell personal information, show third-party ads, use advertising identifiers, or track you across apps or websites owned by other companies.

## Information Fdoo Processes

### Camera and Menu Text

With your permission, Fdoo uses your device camera and Apple's VisionKit technology to recognize text on restaurant menus. Raw camera video and images remain on your device and are not uploaded by Fdoo.

When you capture a menu, recognized dish names and detected language codes may be sent through Fdoo's backend service to remote services. They are used to identify and translate dishes and to provide details such as ingredients, dietary flags, allergen warnings, cultural context, pronunciation, and similar dishes. Fdoo does not send raw camera video or images to these services.

### Dietary Preferences

During onboarding, you may choose dietary needs, foods you avoid, allergens, and food preferences. Fdoo uses them to classify scanned dishes and display recommendations or warnings.

Your individual preference selections are stored locally on your device using Apple platform storage. They are not sent with menu-analysis requests or to TelemetryDeck, and Fdoo does not create an account for them. TelemetryDeck may receive only the total number of selected preferences and a broad profile-complexity category.

### Local Cache

Fdoo may store dish names, translations, dish facts, and dish details locally on your device so the same dish can load faster and to reduce repeated network requests.

You can remove locally stored app data by deleting the Fdoo app from your device.

### Installation Identifier

Fdoo generates a random installation identifier and stores it on your device. The app sends this identifier to Fdoo's backend with service requests so the backend can apply rate limits and protect the service from abuse. It is not an Apple advertising identifier, is not associated with a Fdoo account, and is not used for advertising or cross-app tracking. Deleting and reinstalling the app generally creates a new identifier.

### App Analytics

Fdoo uses TelemetryDeck for privacy-focused product analytics. TelemetryDeck receives:

- A TelemetryDeck-generated, anonymized identifier that is stable for an app installation
- Product interactions and outcomes, such as onboarding completion, camera availability, scan requests and outcomes, whether dish details were viewed, and when a foreground usage period ends
- Broad, bounded categories and aggregate counts, such as detected language codes, number-of-items ranges, dietary-profile complexity, result-source categories, failure categories, and elapsed time
- Technical context supplied by the SDK, such as app version, build number, operating-system version, device model, and whether the build came from the App Store or TestFlight

Fdoo does not send TelemetryDeck menu text, dish names, individual dietary or allergen selections, database identifiers, dynamic error messages, raw images, audio, precise location, contact information, or advertising identifiers. TelemetryDeck states that it does not store IP addresses. Fdoo uses this information to measure reliability, understand feature use, and improve the app. It is not linked to a Fdoo account and is not used for advertising or cross-app tracking.

### Website Analytics

The Fdoo website also uses TelemetryDeck to measure basic website visits and interactions using privacy-focused analytics. The website does not use advertising cookies or third-party advertising trackers.

## Service Providers

Fdoo uses the following providers:

- **Cloudflare:** hosts Fdoo's backend and carries app requests. Requests contain a random installation identifier, recognized dish names, and detected language codes as needed for the requested feature. Like other internet infrastructure providers, Cloudflare necessarily processes network information such as an IP address to deliver and protect the service.
- **Alibaba Cloud Model Studio / Qwen:** receives recognized dish names, detected language codes, and Fdoo's instructions to generate translations, dish facts, and dish details. Fdoo uses direct model API calls and does not send the installation identifier to Qwen.
- **Supabase:** hosts Fdoo's shared dish-information database. Fdoo may look up and save generalized dish information including a dish name, translation, tags, allergen information, dietary flags, spice level, descriptions, and other dish details. This information is not stored under a Fdoo user account.
- **TelemetryDeck:** processes anonymized identifiers, usage data, and technical context for app and website analytics.

These providers process information only to supply services to Fdoo. Fdoo requires its providers to protect information consistently with this Policy and applicable App Store requirements. Their processing is also governed by their own terms and privacy notices.

## How Information Is Used

Fdoo uses information to:

- Detect and display dish names from menus
- Translate dish names
- Provide food and ingredient information
- Identify possible dietary matches, restrictions, allergens, pork, alcohol, vegetarian status, and spice level
- Improve app speed by caching dish results
- Maintain a shared dish-information database so future scans can return useful results faster
- Apply rate limits, secure the backend, and prevent abuse
- Measure app and website usage, diagnose broad failure points, and improve reliability and features

Fdoo does not use this information for third-party advertising, data-broker profiling, or tracking across other companies' apps or websites.

## What Fdoo Does Not Collect

Fdoo does not require account registration and does not collect through the app:

- Names, email addresses, phone numbers, or postal addresses
- Contacts
- Precise location
- Payment or financial information
- Health records
- Advertising identifiers
- Raw camera video or images from the menu scanner
- Data for third-party advertising or cross-app tracking

## Data Retention

Dietary preferences, the local dish cache, and Fdoo's backend installation identifier remain on your device until you reset relevant app settings or delete the app.

Generalized dish information in the shared database may be retained while it remains useful for providing and improving Fdoo. Operational and analytics information is retained only as long as reasonably needed for security, service operation, analysis, and legal obligations, subject to provider settings and policies.

Fdoo does not create user accounts or attach shared dish records or TelemetryDeck analytics to a directly identifiable user profile. As a result, Fdoo may not be able to associate an anonymous analytics event or shared dish record with a particular person. If you contact us with enough detail to identify specific content or another record, we will make reasonable efforts to review, correct, or delete it where feasible and legally required.

## Your Choices

You can:

- Deny or later revoke camera permission in iOS Settings. Menu scanning will not work without camera access.
- Delete the app to remove locally stored preferences, cached dish data, and the backend installation identifier.
- Contact us to ask privacy questions or request access, correction, or deletion where feasible.

## Children

Fdoo is not intended for children under 13. Fdoo does not knowingly collect personal information from children under 13. If you believe a child has provided personal information through Fdoo, contact us and we will take appropriate action.

## Security

Fdoo uses reasonable administrative and technical safeguards, including encrypted HTTPS connections, to protect information. However, no app, network, or storage system can be guaranteed completely secure.

## International Processing

Fdoo and its service providers may process information in countries other than your country of residence. Those countries may have different data-protection laws.

## Changes to This Policy

We may update this Privacy Policy from time to time. If we make material changes, we will update the effective date above and post the revised policy at this location.

## Contact

For privacy questions or requests, contact:

brent@projops.io
