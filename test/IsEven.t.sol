// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import 'src/IsEven.sol';

contract IsEvenTest is Test {
	IsEven isEven;

	function setUp() public {
		isEven = new IsEven();
	}

	function testIsEvenA() external {
		uint256 nEven = 16;
		uint256 nOdd = 21;

		assert(isEven.isEvenA(nEven));
		assertFalse(isEven.isEvenA(nOdd));
	}

	function testIsEvenB() external {
		uint256 nEven = 16;
		uint256 nOdd = 21;

		assert(isEven.isEvenB(nEven));
		assertFalse(isEven.isEvenB(nOdd));
	}
}
