// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0 ;

/* Reentrancy has been an issue and is one of the highest risk in smartcontract and often 
secured by a an archeticture we call  Reentrancy Guard 
why Propose? We think that it is necessary for every project to have Reentrancy Guard 
especially for contracts who has payment or payout functionalities
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
ex 
mapping(address => bool) calling ;
function call() public payable {
  require(!calling[msg.sender], 'Reentrancy detected');
  calling[msg.sender] = true ;
  // code ;
  ...
}
it is time consuming to define lots of mappings and can get messy sometimes 
*/

contract Checkpoint {
  mapping(address => mapping(uint256 => bool)) public _checked;
  // every function must have an Id ;
  function _checkIn(address account, uint256 id) internal {
    require(_checked[account][id] == false, "Reentrancy detected");
    _checked[account][id] = true ;
  }
  
  function _checkOut(address account, uint256 id) internal {
    _checked[account][id] = false ;
  }
}