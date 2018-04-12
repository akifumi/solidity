pragma solidity ^0.4.0;


contract ConversionTruncate {

    function f() returns (uint16) {
        // 305419896がセットされます
        uint32 a = 0x12345678;
        // 切り捨てたられて0x5678になります
        uint16 b = uint16(a);
        // 22136が返ります
        return b;
    }
}
