#!/usr/bin/env bash
print "Fetching public key 0x9C02D726E567EF8B from keyservers\n"
gpg --keyserver pool.sks-keyservers.net --recv-keys 0x9C02D726E567EF8B
print "Show fingerprint of key to check\n"
gpg --fingerprint 0x9C02D726E567EF8B
print "Verifying canary from git\n"
gpg --verify canary.asc
print "Downloading canary from website\n"
curl -O https://www.antonybailey.net/canary.asc
print "Verifying candary from website\n"
gpg --verify canary.asc
