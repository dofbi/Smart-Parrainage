pragma solidity ^0.4.18;

contract Proteger{

    address public proprietaire;

    constructor() public {

        proprietaire = msg.sender;

    }

    modifier siProprietaire{

        require(
            msg.sender == proprietaire,
            "Seul le proprietaire peut appeler cette action."
        );
        _;

    }

    function suppression() public siProprietaire {

        selfdestruct(proprietaire);
    }

}
