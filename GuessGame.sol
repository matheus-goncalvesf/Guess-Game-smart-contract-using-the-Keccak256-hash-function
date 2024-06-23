//SPDX-License-Identifier: MIT

//this Guess Game sets a keccak256 hash as the answer and then asks for a guess, turn it into a keccak256 hash 
//and then compare the two hash function, if they are equal the contract returns true, if not, false

pragma solidity ^0.6.0;

contract GuessGame {

    bytes32 answer = 0xf60b0e34c817371a0b36d9e1c96487f690df8a12a997d1512b34c3a0331fe204;

    function guess(string memory _answer) public view returns(bool){
        return keccak256(abi.encode(_answer)) == answer;
    }
}