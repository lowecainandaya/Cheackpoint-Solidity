# Checkpoint Solidity 
<p>Reentrancy has been an issue and is one of the highest risk in smartcontract and often 
secured by a an archeticture we call  Reentrancy Guard 
why Propose? We think that it is necessary for every project to have Reentrancy Guard 
especially for contracts who has payment or payout functionalities </p>
<h3> I also want this to be added to IEP </h3>

### Reentrancy Guard Example
```solidity
mapping(address => bool) calling ;
function call() public payable {
  require(!calling[msg.sender], 'Reentrancy detected');
  calling[msg.sender] = true ;
  /* your code */
}
```
### Then What is the problem ?

<p>
adding mappings to fight Reentrancy  means that the contract will accumalate larger storage and 
is vulnerable to reach EVM <b>24 kb</b> contract size limit and also 
it is good to use inorder too produce  cleaner code flow when adding Reentrancy Guard .
</p>

### Checkpoint Solidity 
<li>is meant to be proposed to the IEP (ERC)</li>

<p>There Are 3 ways To Add Checkpoint-Solidity to your project</p>


## 1 NPM
```bash 
 $  npm i checkpoint-solidity 
```
### Usage 
```solidity
import './node_modules/checkpoint-solidity/checkpoint.sol 
```
## 2 importing dericty from repository when using remix IDE.
```solidity
  import "https://github.com/FreenetProject/Cheackpoint-Solidity/checkpoint.sol"
```

### 3 clone 
```bash 
$ git clone "https://github.com/FreenetProject/Cheackpoint-Solidity";
$ cd Cheackpoint-Solidity
```
### Usage
``` Solidity
import "./Cheackpoint-Solidity/checkpoint.sol"
```

}
