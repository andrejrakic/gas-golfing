// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import 'src/ZeroNonZero.sol';

contract ZeroNonZeroTest is Test {
	ZeroNonZero zeroNonZero;

	function setUp() public {
		zeroNonZero = new ZeroNonZero();
	}

	function testChangeZero() external {
		zeroNonZero.changeZero();
	}

	function testChangeNonZero() external {
		zeroNonZero.changeNonZero();
	}

	function testChangeZeroYul() external {
		zeroNonZero.changeZeroYul();
	}

	function testChangeNonZeroYul() external {
		zeroNonZero.changeNonZeroYul();
	}
}
