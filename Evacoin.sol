// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";  // 引入 Ownable 合约

contract MyToken is ERC20, Ownable {
    constructor() ERC20 ("Evacoin", "EVA") Ownable(msg.sender) {
        uint256 initialSupply = 500000;
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    // 允许合约拥有者增加代币余额
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount* (10**decimals()));
    }
}


