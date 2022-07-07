// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import 'src/Errors.sol';

contract ErrorsTest is Test {
	Errors errors;
	uint256 a = 5;
	uint256 b = 6;

	function setUp() public {
		errors = new Errors();
	}

	function testStringOver32() external view {
		errors.stringOver32(a, b);
	}

	function testStringUnder32() external view {
		errors.stringUnder32(a, b);
	}

	function testCustomError() external view {
		errors.customError(a, b);
	}
}
