pragma solidity ^0.5.5;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract TokenSale is Crowdsale, Ownable {
  constructor(uint256 rate,    // rate in TKNbits
              address payable wallet,
              IERC20 token) Crowdsale(rate, wallet, token)
        public {}
}
