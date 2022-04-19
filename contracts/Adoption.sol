// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <8.10.0;

contract Adoption{
    address[16] public adopters;
    address payable public owner;

    event Transfer(
        address _from,
        uint256 _amount
    );

    constructor() public{
        owner=payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint _amt) external {
        require(msg.sender==owner,"Only owner can call this method");
        payable(msg.sender).transfer(_amt);
    }

    function getBalance() external view returns (uint){
        return address(this).balance;
    }

    function transferEther() public payable{
        owner.transfer(msg.value);
        emit Transfer(msg.sender, msg.value);
    }
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
        // transferEther();
        adopters[petId]=msg.sender;
        return petId;
    }

    function getAdopters() public view returns (address[16] memory){
        return adopters;
    }
}