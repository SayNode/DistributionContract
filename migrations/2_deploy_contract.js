const Distribution  = artifacts.require("Distribution");

module.exports = function(deployer) {
  deployer.deploy(Distribution);
};