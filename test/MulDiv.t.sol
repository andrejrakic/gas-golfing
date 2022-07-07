// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import 'src/MulDiv.sol';

contract MulDivTest is Test {
	MulDiv mulDiv;

	function setUp() public {
		mulDiv = new MulDiv();
	}

	function testDivideByTwo() external view {
		mulDiv.divideByTwo();
	}

	function testDivideByFour() external view {
		mulDiv.divideByFour();
	}

	function testMultiplyByEight() external view {
		mulDiv.multiplyByEight();
	}

	function testBitwiseDivideByTwo() external view {
		mulDiv.bitwiseDivideByTwo();
	}

	function testBitwiseDivideByFour() external view {
		mulDiv.bitwiseDivideByFour();
	}

	function testBitwiseMultiplyByEight() external view {
		mulDiv.bitwiseMultiplyByEight();
	}
}
