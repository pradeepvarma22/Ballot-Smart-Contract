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
    Proposal[] public proposals;


    constructor(bytes32[] memory c_proposal){

        admin = msg.sender;
        voters[msg.sender].weight =1;
        for(uint64 i=0;i<c_proposal.length;i++)
        {
            proposals.push(Proposal({ name: c_proposal[i],voteCount: 0 }));
        }

    }

    function giveAcessToVote(address voter_t)  external{

        require(msg.sender==admin,"you dont have access");
        require(voters[voter_t].isVoted == false,"Already voted");
        require(voters[voter_t].weight==0,"weight not zero wrong call");
        
        voters[voter_t].weight =1;

    }    



    







}