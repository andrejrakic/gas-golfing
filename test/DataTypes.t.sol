// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import 'src/DataTypes.sol';

contract DataTypesTest is Test {
	DataTypes dataTypes;

	function setUp() public {
		dataTypes = new DataTypes();
	}

	function testPowerA() external {
		dataTypes.powerA();
	}

	function testPowerB() external {
		dataTypes.powerB();
	}
}
