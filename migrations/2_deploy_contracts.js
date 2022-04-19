var SimpleStorage = artifacts.require("./SimpleStorage.sol");
var Adoption = artifacts.require("./Adoption.sol");
// var TransferOwner = artifacts.require("./TransferOwner.sol");
var Transfer = artifacts.require("./Transfer.sol");
var EtherTransfer = artifacts.require("./EtherTransfer.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
  deployer.deploy(Adoption);
  deployer.deploy(Transfer);
  deployer.deploy(EtherTransfer);
  // deployer.deploy(TransferOwner);
};
