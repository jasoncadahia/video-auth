//pragma solidity >=0.4.21 <0.7.0;
pragma solidity ^0.4.17;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

 /* constructor() public {
    owner = msg.sender;
  }*/

  // Jason: Added
  function Migrations()public{
    owner=msg.sender;
  }

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
