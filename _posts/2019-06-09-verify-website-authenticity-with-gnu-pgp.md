---
layout: post
title: End-to-end verifiable web content using GnuPGP
date: 2019-06-09 08:00:00 
thumbnail: /images/verified.png
description: How would you trust that anything I write, comes from me, and has not been changed by anything in between? Trusting the server, the browser, the hosting, to trusting the entirety of the scope of the browser?
---

## TLS would only secure the connection

TLS can be used to verify a website's authenticity, it's a guarantee
the content is untampered between the server and the browser. Yet we still have
to trust there's no changes on the client, nothing that would sniff our
passwords, or steal our sessions, or alter the news article to different
meanings or truths. Either at the browser scope, or within the publishing
software.

This TLS protocol generates trust between the connection of the server and the
client. It doesn't secure us beyond the author from other people. Such as
engineers on the server who have access to the same content. Or from javascript
code added to the website that could later alter and publish false information.

## Using PGP for verification of the entire website
In this case PGP can be used to take the trust back to the original author. A
hash can so be made of the entire website, which would then be signed, and
can be verified using a trusted public key.

This using PGP can in exchange guarantee an end-to-end signature between the
writer and the reader. This extends beyond the serverside trust of the TLS and
is fully traceable back to the author.

## Reducing attack vectors

It limits the attack vectors from the server stack, it's CDN, API keys, and
developers, and fully restores trust in the author's management of their
private key. PGP can still be used to draw a complete trusted line from the
start to the end, rather than having to trust all the integration in between.

It allows matured security, from hardware wallets, to a well established
revokeability infrastructure.

PGP was built for guarantee of authenticity (and encryption), so there's
nothing new about it. Except it's rarely done on a full scale for the entire
website.

To verify the content, one must download the entire website, which we can
simplify using git. This would let pull in the latest incremental changes, and
verify the hash and content yourself.

## Signing the commit hashes
Each publication of content gets wrapped in a git commit, which is a hash of
the previous commit, and the applied changes. Which since `git 2.19` uses
`SHA256` for it's hashing (it used to be `SHA1`).
The SHA256 hash is signed, and attached to each git commit. And github
conveniently makes and publishes these signature verifications on their website
and their API.

## Verification snippet embedded in the website
One could then list all the commits for the website's repo te verify the
signatures on github [such as here][commitlist]. And for convenience, you can 
verify the content via a javascript snippet on the website. This checks for
each page visited the signature via the github API, and warns the user if the
signature verification fails.

This relies on the browser and github API. But as described before, it can
still be verified locally in it's full content, and simply acts as a short
notice/sign of trust that the content can be trusted.

## How is this different from TLS?
This guarantees the content from the start at the author level, rather than the
server level. To full control of the verification at the _client level_,
rather than the browser level.

## Why not sign the text, rather than the entire website?
The content is rendered in the browser, rather it doesn't verify the javascript
scope of the entire website (apart from any extensions).

## Why use git?
It compresses the entire website to it's boilerplate content, uses SHA256
hashes for it's changes, has verifycations built in, and let's you fetch
changes incrementally. 

## Didn't git use SHA1 for it's hashing?
It did, but not anymore since git 2.19

## What is actually signed?
A hash of the changes, plus the hash of the previous commit. Any change would
require a new signature for all following commits.

## Why do you check the latest commit overall, rather than the latest commit to the actual page?
The scope of the entire website needs to be verified, rather than the current
page. It always remains as an artifact of

## Why do you embed this verification state on the website, that means you can still change it?

Yes, embedding the verification button on the website makes it possible to
change verification button to  make it always look green. So it's best to have
it as a browser extension itself for a fully trusted verification.

This is a proof of concept, I hope I will build this out later into a fully
fledged browser extension.

