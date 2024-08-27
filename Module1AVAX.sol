// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ValueManager {
    uint256 public storedValue;

    function updateValue(uint256 _newValue) public {
        require(_newValue > 0, "Value must be greater than 0");
        storedValue = _newValue;
    }

    function multiplyValue() public {
        uint256 previousValue = storedValue;
        storedValue *= 2;

        assert(storedValue == previousValue * 2);
    }

    function clearValue() public {
        if (storedValue > 100) {
            revert("Value is too high to clear");
        }
        storedValue = 0;
    }
}
