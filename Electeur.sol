pragma solidity ^0.4.18;

contract Electeur is Proteger{

    string private prenom;
    string private nom;
    string private numElecteur;
    string private numIdentification;

    struct parrain{
        bool actif;
        uint date;
    }

    mapping(address=>parrain) public parrains;

    constructor(
        string _prenom,
        string _nom,
        string _numElecteur,
        string _numIdentification) public {

         prenom = _prenom;
         nom = _nom;
         numElecteur = _numElecteur;
         numIdentification = _numIdentification;

    }

    function parrainerCandidat(address _candidatAdress) public siProprietaire {

        parrains[_candidatAdress] =  parrain({
            actif: true,
            date: now
        });
    }
}
