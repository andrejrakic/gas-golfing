// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import 'src/HelloWorld.sol';

contract HelloWorldTest is Test {
	HelloWorld helloWorld;

	function setUp() public {
		helloWorld = new HelloWorld('Foundry is fast!');
	}

	function testShouldBeDeployed() public {
		assertEq(helloWorld.greet(), 'Foundry is fast!');
	}

	function testShouldUpdateGreeting() public {
		assertEq(helloWorld.version(), 0);
		helloWorld.updateGreeting('Hello, World!');

		assertEq(helloWorld.version(), 1);
		assertEq(helloWorld.greet(), 'Hello, World!');

		emit log(helloWorld.greet()); // forge test -vv
	}

	function testShouldFuzz(string memory _greeting) public {
		helloWorld.updateGreeting(_greeting);
		assertEq(helloWorld.greet(), _greeting);
	}
}
