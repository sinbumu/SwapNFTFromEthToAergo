// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"; // changed import

contract SwapNFTFromEthToAergo is IERC721Receiver, Ownable {
    //Declare an Event
    event SwapRequest(address indexed operator, address indexed from, uint256 tokenId, bytes data);

    /**
     * Always returns `IERC721Receiver.onERC721Received.selector`.
     */
    function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data) public virtual override returns (bytes4) {
        //Emit an event
        emit SwapRequest(operator, from, tokenId, data);
        return this.onERC721Received.selector;
    }

    function transferToken(address contractAddr, address to, uint256 tokenId)
        external 
        onlyOwner
    {
        CCCVNFT c = CCCVNFT(contractAddr);
        c.safeTransferFrom(address(this), to, tokenId);
    }
}

contract CCCVNFT is ERC721URIStorage, Ownable {
    constructor() public ERC721("CCCVNFT", "CNFT") {}
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override {
        safeTransferFrom(from, to, tokenId, "");
    }
}