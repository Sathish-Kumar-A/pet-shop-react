var SimpleStorage = artifacts.require("./SimpleStorage.sol");
var Adoption = artifacts.require("./Adoption.sol");
// var TransferOwner = artifacts.require("./TransferOwner.sol");
var Transfer = artifacts.require("./Transfer.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
  deployer.deploy(Adoption);
  deployer.deploy(Transfer);
  // deployer.deploy(TransferOwner);
};
