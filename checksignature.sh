#!/usr/bin/env bash
gpg --keyserver pool.sks-keyservers.net --recv-keys 0xd18da83cf2e50027 
gpg --fingerprint 0xd18da83cf2e50027 
gpg --verify canary.asc