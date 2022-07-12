//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BallotContract{

    address public admin;

    struct Proposal {
        bytes32 name;
        uint256 voteCount;
    } 

    struct Voter{
        address delegate;//A person who represents others.
        uint256 weight;
        bool isVoted;
        uint256 votedTo;
    }

    mapping (address=>Voter) public voters;
    Proposal[] public proposal;



    







}