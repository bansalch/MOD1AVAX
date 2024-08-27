# ValueManager Smart Contract

This repository contains a simple Solidity smart contract that demonstrates basic value management functionality.

## Features

- Update a stored value
- Double the stored value
- Reset the stored value with conditions

## Contract Details

- License: MIT
- Solidity Version: >=0.8.0

## Functions

- `constructor()`: Initializes the contract with a default value of `0` for `storedValue`.
- `updateValue(uint256 _newValue)`: Allows anyone to update the `storedValue`, provided the new value is greater than 0.
- `multiplyValue()`: Doubles the current `storedValue`.
- `clearValue()`: Resets the `storedValue` to 0, but only if it is 100 or less.

## Usage

1. Deploy the contract.
2. Use the `updateValue` function to set the `storedValue`.
3. Use the `multiplyValue` function to double the `storedValue`.
4. Use the `clearValue` function to reset the `storedValue` to 0 if it’s 100 or less.

## Security

- `updateValue` checks that the new value is greater than 0 before updating.
- `clearValue` checks that the `storedValue` is 100 or less before resetting.

## Complete Program
~~~
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
~~~

## License

This project is licensed under the MIT License.

## Contact
Name - Charu Bansal
Mail ID - cbansal412@gmail.com
