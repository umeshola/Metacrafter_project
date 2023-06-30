pragma solidity ^0.8.7;

contract Require_Revert_Assert {
    address public owner=msg.sender;
    uint public age=25;

// REQUIRE
    function Check_Require(uint _x) public{
    age=age+5;
    require(_x>2," value of x is less then 2");
    }

    function onlyOwner() public {
    require(owner==msg.sender," you are not the owner");
    age=age-2;
    }


// REVERT
    error throwerror(string,address);
    function Check_Revert(uint _x) public{
    age=age+5;
    if(_x<2){
    revert throwerror(" value of x is less then 2",msg.sender);
    }
    }

    function onlyOwner_revert() public {
    if(owner!=msg.sender){
    revert(" you are not the owner");
    }
    age=age-2;
    }
// ASSERT

    function checkOwnership() public view {
    assert(owner==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }
} 

