async function main() {

	// Get our account (as deployer) to verify that a minimum wallet balance is available
	const [deployer] = await ethers.getSigners();

	console.log(`Deploying contracts with the account: ${deployer.address}`);
	console.log(`Account balance: ${(await deployer.getBalance()).toString()}`);

	// Fetch the compiled contract using ethers.js
	const TokenContract = await ethers.getContractFactory("TokenSale");

	const rate = 1000000; // 1 ETH purchases 1,000,000 whipz 
	const proceedsWallet = '0xa90B01e34D5eB0eF48ece9F23c4c953568440147';
	const whipzContractAddress = "0x9f154d7b7a00a2a280733409aea309d2aea496f8";
	const nft = await TokenContract.deploy(rate, proceedsWallet, whipzContractAddress);

	console.log(`Contract deployed to address: ${nft.address}`);
	
}

main()
.then(() => process.exit(0))
.catch((error) => {
	console.error(error);
	process.exit(1);
});