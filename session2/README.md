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
If you see an error that npm is not installed, you will need to install node.js. This is a good guide on how to do so: https://docs.npmjs.com/downloading-and-installing-node-js-and-npm

### Setup Hardhat
Hardhat is a command line based Ethereum development environment. It lets us compile, test and deploy Ethereum smart contracts.
You will see that this repo already has a hardhat.config.js. This is a ocnfiguration file where we define blockchain variables such as networks and accounts.

Now you need to create a .env file in the session 2 root folder, just like the way you did for session 1. 

``ETHERSCAN_API_KEY=(your key)``<br>
``ALCHEMY_KEY==(your key)``<br>
``ACCOUNT_PRIVATE_KEY==(your key)``<br>

The ACCOUNT_PRIVATE_KEY is the private key that you need to export from Metamask. See here https://metamask.zendesk.com/hc/en-us/articles/360015289632 for how to do this.

Hardhat doesn't support interacting with a wallet app like Metamask or Ledger so the private key must be stored here.

Remember, as mentioned above, it's recommended to create a new dedicated wallet for this.

## Looking at the token contract

If you do not already have an IDE that you are used to, VS Code is a good IDE to use.

https://code.visualstudio.com/download 

Once installed, head to the Extensions tab and install Juan Blanco's solidity addin

![image](https://github.com/tomdickharryeth/ww-blockchain-dev/assets/103291582/ce279734-04d1-472e-8bfb-9b6cbfe3be0f)

Open up our contracts/Token.sol file and take a look.

## Compile, deploy and verify the contract

### Compile the contract

Run the command below to ask hardhat to compile the smart contract 

``npx hardhat compile``

### Deploy the contract into testnet

Run the command below to deploy the contract onto Ethereum Goerli testnet. This will cost (goerli) gas.


``npx hardhat run scripts/deploy.js --network goerli``

If all goes well, you should see a response that looks like this

``Deploying contracts with the account: {ACCOUNT_ADDRESS}``

``Account balance: XXX``

``Contract deployed to address: {NFT_CONTRACT_ADDRESS}``

Make a note of the address that the contract was deployed to. 

### Verify the contract on Etherscan

In order to be able to call our contract on Etherscan, we need to upload the source contract code and use Etherscan's verification functionality.

This is very easy to do using the etherscan package which was already installed earlier. Just call this command below.


`` npx hardhat verify {NFT_CONTRACT_ADDRESS}``

