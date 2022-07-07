pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import 'src/Increment.sol';

contract IncrementTest is Test {
	Increment increment;

	function setUp() external {
		increment = new Increment();
	}

	function testInc1() external {
		increment.inc1();
	}

	function testInc2() external {
		increment.inc2();
	}

	function testInc3() external {
		increment.inc3();
	}

	function testInc4() external {
		increment.inc4();
	}

	function testInc5() external {
		increment.inc5();
	}

	function testInc6() external {
		increment.inc6();
	}
}
