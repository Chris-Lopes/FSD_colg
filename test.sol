// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public myVariable;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function setMyVariable(uint256 _newValue) public onlyOwner {
        require(_newValue <= type(uint256).max - 1000, "Value too large");
        myVariable = _newValue;
    }

    function getMyVariable() public view returns (uint256) {
        return myVariable;
    }
}