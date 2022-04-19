// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <8.10.0;

contract EtherTransfer{
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
}