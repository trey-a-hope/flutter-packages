 ## Description

A simple wrapper for using the firebase cloud storage api.

## Features

Allows for the uploading and deleting of files.

## Getting started

Create a default Cloud Storage bucket
From the navigation pane of the Firebase console, select Storage, then click Get started.

Review the messaging about securing your Cloud Storage data using security rules. During development, consider setting up your rules for public access.

Select a location for your default Cloud Storage bucket.

This location setting is your project's default Google Cloud Platform (GCP) resource location. Note that this location will be used for GCP services in your project that require a location setting, specifically, your Cloud Firestore database and your App Engine app (which is required if you use Cloud Scheduler).

If you aren't able to select a location, then your project already has a default GCP resource location. It was set either during project creation or when setting up another service that requires a location setting.

If you're on the Blaze plan, you can create multiple buckets, each with its own location.

Warning: After you set your project's default GCP resource location, you cannot change it.
Click Done.

## Usage

Call 'uploadFile', passing in the file and path name.