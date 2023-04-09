// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.8; 

contract BoxV2 {
    uint256 internal value;

    // Emitted when the stored value changes
    event ValueChanged(uint256 newValue);

    // Stores a new value in the contract
    function store(uint256 newValue) public {
        value = newValue;
        emit ValueChanged(newValue);
    }

    // Reads the last sotred value
    function retrieve() public view returns (uint256) {
        return value;
    }

    // // Increments the stored value by one
    function increment() public {
        value += 1;
        emit ValueChanged(value);
    }

    function version() public pure returns (uint256) {
        return 2;
    }
}