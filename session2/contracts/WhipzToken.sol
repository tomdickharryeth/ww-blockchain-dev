// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "@openzeppelin/contracts-upgradeable/token/ERC20/presets/ERC20PresetMinterPauserUpgradeable.sol";

contract WhipzToken is ERC20PresetMinterPauserUpgradeable
{
  function initialize() public initializer 
  {
    __ERC20PresetMinterPauser_init("WhipzToken", "WHIPZ");
  }

}