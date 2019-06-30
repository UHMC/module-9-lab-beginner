pragma solidity ^0.5.1;

contract UnPhishable {
    address public owner;
    constructor (address _owner) public {
        owner = _owner;
    }

    function () external payable {} // collect ether

    function withdrawAll(address payable _recipient) public {
        require(msg.sender == owner);
        _recipient.transfer(address(this).balance);
    }
}
