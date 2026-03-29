// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 기존 함수: 가시성을 public으로 변경하여 내부에서도 호출 가능하게 함
    function double(uint _value) public pure returns (uint) {        
        return _value * 2;
    }

    function double(uint _val1, uint _val2) external pure returns (uint, uint) {
        // 기존의 public double 함수를 재사용하여 계산
        return (double(_val1), double(_val2));
    }
}
