// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// ERC20 is a common cryptocurrency standard on the blockchain
interface IERC20 {
    // Know the specific function that you want to call and describe how the function works
    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) external returns (bool success);
}

// You don't need the complete code of a smart contract on chain
contract MyContract {
    function deposit(address _tokenAddress, uint _amount) public {
        // So you can use the function inside your smart contract like this, where _tokenAddress is the address of the ERC20 token we want to call the function
        IERC20(_tokenAddress).transferFrom(msg.sender, address(this), _amount);
    }
}