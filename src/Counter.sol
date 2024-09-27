// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number = 1;

    /// @notice sets the value of the number variable
    /// @notice number can never be set to 0
    /// @param newNumber the value to set number to
    function setNumber(uint256 newNumber) public {
        if (newNumber != 0) {
            number = newNumber;
        }
    }

    /// @notice increments the existing number value
    function increment() public {
        number++;
        _incrementHelper();
    }

    function _incrementHelper() internal {
        if(number == 5) {
            number = 0;
        }
    }
}