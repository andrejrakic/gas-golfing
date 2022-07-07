// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import 'src/Looper.sol';

contract LooperTest is Test {
	Looper looper;
	uint256[] array;

	function setUp() public {
		looper = new Looper();
		for (uint256 i; i < 100; i++) {
			array.push(i);
		}
	}

	function testLoop1() public view {
		looper.loop1(array);
	}

	function testLoop2() public view {
		looper.loop2(array);
	}

	function testLoop3() public view {
		looper.loop3(array);
	}

	function testLoop4() public view {
		looper.loop4(array);
	}

	function testLoop5() public view {
		looper.loop5(array);
	}

	function testLoop6() public view {
		looper.loop6(array);
	}

	function testLoop7() public view {
		looper.loop7(array);
	}
}
