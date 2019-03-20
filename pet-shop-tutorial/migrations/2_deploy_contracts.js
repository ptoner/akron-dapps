var Adoption = artifacts.require("Adoption");

module.exports = function(deployer) {
    console.log(1)
    deployer.deploy(Adoption);
    console.log(2)
}