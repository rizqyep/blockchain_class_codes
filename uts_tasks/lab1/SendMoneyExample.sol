pragma solidity ^0.8.1;

contract SendMoneyExample {
    uint256 public balanceReceived;
    address public owner;

    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdrawMoney() public {
        address payable destination = payable(msg.sender);
        destination.transfer(getBalance());
    }
}
