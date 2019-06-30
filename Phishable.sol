pragma solidity ^0.5.1;

contract Phishable {
    address public owner;
    constructor (address _owner) public {
        owner = _owner;
    }

    function () external payable {} // collect ether

    function withdrawAll(address payable _recipient) public {
        require(tx.origin == owner);
        _recipient.transfer(address(this).balance);
    }
}
