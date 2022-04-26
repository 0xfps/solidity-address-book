// SPDX-License-Identifier: MIT
pragma solidity >0.6.0;

import "../contracts/AddressBook.sol";

/*
 * @title: 
 * @author: Anthony (fps) https://github.com/fps8k .
 * @dev: 
*/

contract Test is AddressBook
{
    function register(string memory _name, address _address) public
    {
        add(_name, _address);

        assert(getAddress(_name) == _address);
    }




    function removeAddress(string memory _name) public
    {
        remove(_name);

        assert(getAddress(_name) == address(0));
    }




    function editAddress(string memory _name, address _address) public
    {
        updateAddress(_name, _address);

        assert(getAddress(_name) == _address);
    }




    function editName(string memory _name, string memory new_name) public
    {
        updateName(_name, new_name);

        assert(getAddress(_name) == address(0));
        assert(getAddress(new_name) != address(0));
    }

    


    function find(string memory _name) public view returns(address)
    {
        return getAddress(_name);
    }
}