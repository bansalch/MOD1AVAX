# AdminControl Smart Contract

This repository contains a simple Solidity smart contract that demonstrates basic admin control functionality.

## Features

- Admin-only access control
- Ability to change admin
- Setter function for admin data

## Contract Details

- License: MIT
- Solidity Version: >=0.8.9

## Functions

- `constructor()`: Sets the contract deployer as the initial admin
- `changeAdmin(address newAdmin)`: Allows the current admin to transfer admin rights
- `setAdminData(uint256 _data)`: Allows the admin to set a data value

## Usage

1. Deploy the contract
2. Use the `changeAdmin` function to transfer admin rights if needed
3. Use the `setAdminData` function to update the `adminData` value

## Security

- Only the admin can call restricted functions
- Zero address check when changing admin

## Complete Program
~~~
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract AdminControl {
    address public admin;
    uint256 public adminData;


    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call this function");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function changeAdmin(address newAdmin) public onlyAdmin {
        require(newAdmin != address(0), "New admin address cannot be zero");
        admin = newAdmin;
    }

    function setAdminData(uint256 _data) public onlyAdmin {
        adminData = _data;
    }

}
~~~

## License

This project is licensed under the MIT License.

## Contact
Name - Charu Bansal
Mail ID - cbansal412@gmail.com
