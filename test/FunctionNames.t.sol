// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import 'src/FunctionNames.sol';

contract FunctionNamesTest is Test {
	FunctionNames functionNames;

	function setUp() public {
		functionNames = new FunctionNames();
	}

	function test0() public view {
		functionNames.publicVarsHaveGeneratedGetterFunctions();
	}

	function test1() public {
		functionNames.mint();
	}

	function test2(address receiver) public {
		functionNames.mint(receiver);
	}

	function test3(uint256 value) public {
		functionNames.mint(value);
	}

	function test4(address receiver, uint256 value) public {
		functionNames.mint(receiver, value);
	}

	function test5() public {
		functionNames.pay();
	}

	function test6() public {
		functionNames.withdraw();
	}
}
