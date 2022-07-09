pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    uint data;

    function set(uint newData) public {
        data = newData;
    }

    function get() public view returns (uint) {
        return data;
    }
}
