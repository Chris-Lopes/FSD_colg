// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public myVariable;

    function setMyVariable(uint256 _newValue) public {
        myVariable = _newValue;
    }

    function getMyVariable() public view returns (uint256) {
        return myVariable;
    }
}