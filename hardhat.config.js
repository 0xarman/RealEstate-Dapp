require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.20",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    },
    // allows you to run solc in your project.
    paths: {
      artifacts: './artifacts',
      cache: './cache',
      sources: './contracts',
      compiler: './node_modules/solc/solc'
    }
  }
};
