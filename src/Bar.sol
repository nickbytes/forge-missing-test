// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import { ERC721 } from "solmate/tokens/ERC721.sol";
import "./Render.sol";

contract Bar is ERC721 {
  address public owner;
  uint256 public totalSupply;

  constructor() ERC721("Bar", "BAR") {
    owner = msg.sender;
  }

  function tokenURI(uint256 id) public view override returns (string memory) {
    return Render.tokenURI(id);
  }

  function mint() external payable {
    uint256 id = ++totalSupply;

    // mint token
    _mint(msg.sender, id);
  }
}
