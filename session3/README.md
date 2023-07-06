# Wilder World Community Led Events: Blockchain Coding
# Session 3: Deploying a token sales contract

## Overview
This session we will be creating our own Token Sales contract which will allow people to buy the Whipz token we created in Session 2.

By now you should be all set up and familiar with hardhat, so there are just a few deployment notes in this readme.

## Setup

Remember that you need to to create a .env file in the session 3 root folder , just like the way you did for session 2. 

## Compile, deploy and verify the contract

### Compile the contract

Run the command below to ask hardhat to compile the smart contract 

``npx hardhat compile``

### Deploy the contract into testnet

I decided to switch to Sepolia because Goerli is becoming really congested.
Run the command below to deploy the contract onto Ethereum Sepolia testnet. This will cost (sepolia) gas.


``npx hardhat run scripts/deploy.js --network sepolia``

If all goes well, you should see a response that looks like this

``Deploying contracts with the account: {ACCOUNT_ADDRESS}``

``Account balance: XXX``

``Contract deployed to address: {NFT_CONTRACT_ADDRESS}``

Make a note of the address that the contract was deployed to. 

### Verify the contract on Etherscan

Our TokenSales contract has constructor arguments so this command is a bit different from before. 

The idea is that we need to pass in the constructor arguments as well. We need to check the deploy.js file to see what these are, or just use the command below.

`` npx hardhat verify --contract contracts/TokenSale.sol:TokenSale {IMPLEMENTATION_ADDRESS} 1000000 '0xa90B01e34D5eB0eF48ece9F23c4c953568440147' "0xF10A5267B4faCBd19574Ef65EB85185fAbe455E0" ``


### Further reading

https://docs.openzeppelin.com/contracts/2.x/crowdsales
