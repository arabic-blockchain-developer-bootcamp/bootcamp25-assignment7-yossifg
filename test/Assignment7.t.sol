// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Assignment7} from "../src/Assignment7.sol";

contract Assignment7Test is Test {
    Assignment7 assignment;

    function setUp() public {
        // Pass token name and symbol to constructor
        assignment = new Assignment7("MyToken", "MTK");
    }

    function testMintAndTransfer() public {
        // Mint tokens to the test contract
        assignment.mint(address(this), 1000 * 10**18);

        // Check balance of the test contract
        uint256 balance = assignment.balanceOf(address(this));
        assertEq(balance, 1000 * 10**18, "Balance should be 1000 tokens");
    }
}
