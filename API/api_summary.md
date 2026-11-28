
# API Interaction Summary

## 1. GitHub Profile API

API URL: https://api.github.com/users/rajatchaudhary1833-crypto

I used the GitHub REST API to fetch my public GitHub profile information.

The following details were extracted using jq:

- Name: Rajat Chaudhary
- Public Repositories: 4
- Followers: 0
- Account Created: 2026-08-25

The API response is saved in `github_profile.json`.

## 2. JSONPlaceholder API

API URL: https://jsonplaceholder.typicode.com/posts

I used JSONPlaceholder to fetch sample post data.

- Total posts received: 100
- First 3 posts were checked using jq.
- The response is saved in `sample_posts.json`.

## 3. What is a REST API?

A REST API allows two applications to communicate over the internet using HTTP requests. It can send and receive data in formats such as JSON.

## 4. HTTP Status Codes

- 200 OK: The request was successful.
- 404 Not Found: The requested resource could not be found.

## 5. What is jq?

jq is a command-line tool used to read, filter and process JSON data.

Example command:

`jq '{name, public_repos, followers, created_at}' API/github_profile.json`

This command extracts selected fields from the GitHub profile JSON file.

Another example:

`jq 'length' API/sample_posts.json`

This command counts the total number of posts.
