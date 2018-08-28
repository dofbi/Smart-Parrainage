pragma solidity ^0.4.18;

contract Candidat {

    string public candidatNom;
    string public CandidatType;

    constructor (string _nom, string _type) public {

        candidatNom = _nom;
        CandidatType = _type;
    }
}
