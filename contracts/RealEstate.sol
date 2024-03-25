//SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.20;

// import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
// import "@openzeppelin/contracts/utils/Counters.sol";
// import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract RealEstate is ERC721URIStorage {
    uint256 private _nextTokenId;

    constructor() ERC721("Real Estate", "REAL") {}

    function awardItem(
        address player,
        string memory tokenURI
    ) public returns (uint256) {
        uint256 tokenId = _nextTokenId++;
        _mint(player, tokenId);
        _setTokenURI(tokenId, tokenURI);

        return tokenId;
    }
}
