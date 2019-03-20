pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {

    //The address of the adoption contract to be tested
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    //The id of the pet we're going to use for testing
    uint expectedPetId = 8;

    address expectedAdopter = address(this);

    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(expectedPetId);

        Assert.equal(returnedId, expectedPetId, "Adoption of the expected pet should match what is returned");

    }

}
