pragma solidity ^0.4.0;


contract Enum {
    enum Colors { Red, Blue, Green }
    Colors color;
    Colors constant defaultColor = Colors.Green;

    function setColor() {
        color = Colors.Blue;
    }

    // setColorを呼ばない場合、0(Red)が返ります
    // setColorを呼んだあとでは、1(Bliue)が返ります
    function getColor() returns (Colors) {
        return color;
    }

    // 2(Green)が返ります
    function getDefaultColor() returns (uint) {
        return uint(defaultColor);
    }
}
