#!/usr/bin/env bash
print "Fetching public key 0xd18da83cf2e50027 from keyservers\n"
gpg --keyserver pool.sks-keyservers.net --recv-keys 0xd18da83cf2e50027 
print "Show fingerprint of key to check\n"
gpg --fingerprint 0xd18da83cf2e50027 
print "Verifying canary from git\n"
gpg --verify canary.asc
print "Downloading canary from website\n"
curl -O https://www.antonybailey.net/canary.asc
print "Verifying candary from website\n"
gpg --verify canary.asc
