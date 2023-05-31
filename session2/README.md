# Wilder World Community Led Events: Blockchain Coding
# Session 2: Launching an ERC-20 Token

## Overview
This session we will be creating our own ERC-20 token.
We will look at
- Setting up our simple Node.js environment with Hardhat 
- Creating a smart contract using Solidity, which implements the ERC-20 standards
- Compiling and deploying this contract onto Ethereum Testnet using Hardhat
- Verifying the code on Etherscan

## Setup

### Wallet setup
We will need to write our wallet's private key into the .env file, so it is recommended to create a new dedicated wallet using Metamask

Once done, add some Goerli Testnet eth by going to https://goerlifaucet.com/

### Install dependencies via npm 
Open a Git Bash terminal from your session2 root, and run 
**``npm install``**<br> 

This will install all the dependent packages that we need (these are all specified in package.json)

### Setup Hardhat
Hardhat is a command line based Ethereum development environment. It lets us compile, test and deploy Ethereum smart contracts.


