// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <8.10.0;

contract Adoption{
    address[16] public adopters;
    // address public owner;
    // string public name="Sathishkumar";

    // constructor() public{
    //     owner=msg.sender;
    // }

    // modifier onlyOwner() {
    //     require(msg.sender==owner);
    //     _;
    // }

    // function transferOwner(address newOwner,string memory _name) public onlyOwner returns (address){
    //     name=_name;
    //     owner=newOwner;
    //     return owner;
    // }

    function adopt(uint petId) public returns (uint){
        require(petId>=0 && petId<=15);
        adopters[petId]=msg.sender;
        return petId;
    }

    function getAdopters() public view returns (address[16] memory){
        return adopters;
    }
}