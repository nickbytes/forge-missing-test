// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../Bar.sol";

contract BarTest is DSTest {
  Bar bar;

  function setUp() public {
    bar = new Bar();
  }

  function testMint() public {
    bar.mint();
    assertEq(bar.totalSupply(), 1);
  }
}
