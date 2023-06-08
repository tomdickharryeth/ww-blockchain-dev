// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";

contract WhipzToken is ERC20PresetMinterPauser
{

  constructor(uint256 initialSupply) ERC20PresetMinterPauser("WhipzToken", "WHIPZ") {
        _mint(msg.sender, initialSupply);
    }

}