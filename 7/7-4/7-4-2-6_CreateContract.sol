pragma solidity ^0.4.0;


contract Target {

    uint x;

    function Target(uint a) public payable {
        x = a;
    }
}


contract CreateContract {

    Target t = new Target(4);

    function createTarget(uint arg) public {
        Target newTarget = new Target(arg);
    }

    function createAndEndowTarget(uint arg, uint amount) public payable {
        Target newTarget = (new Target).value(amount)(arg);
    }
}