// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract PussycatToken is ERC20, Ownable, Pausable {
    constructor() ERC20("PUSSYCAT", "PUSSY") {
        _mint(msg.sender, 69000000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner whenNotPaused {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function setAllowance(address spender, uint256 amount) public {
        _approve(msg.sender, spender, amount);
    }
}
