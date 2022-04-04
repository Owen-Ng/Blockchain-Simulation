pragma solidity ^0.4.11;

contract Ocoin_ico {
    // Introducing the maximum number of Ocoins available for sale 
    uint public max_Ocoins = 1000000;

    // Introducing the usd to Ocoins conversion rate
    uint public usd_to_Ocoins = 1000;

    // Introducing the total number of Ocoins that have been bought by the investors
    uint public total_Ocoins_bought = 0;

    // Mapping from the investor address to its equity in Ocoins and USD
    mapping(address => uint) equity_Ocoins;
    mapping(address => uint) equity_usd;

    // Checking if an investor can buy Ocoins
    modifier can_buy_Ocoins(uint usd_invested){
        require (usd_invested * usd_to_Ocoins + total_Ocoins_bought <= max_Ocoins);
        _;
    }
    // Checking if an investor can sell his Ocoins
    modifier can_sell_Ocoins(uint Ocoins_sold){
        require ( total_Ocoins_bought > Ocoins_sold);
        _;
    }

    // Getting the equity in Ocoins of an investor
    function equity_in_Ocoins(address investor)external constant returns (uint){
        return equity_Ocoins[investor];
    }
    // Getting the amount of Ocoins still available
   
    // Getting the equity in USD of an investor
    function equity_in_usd(address investor)external constant returns (uint){
        return equity_usd[investor];
    }
    // Buying Ocoins
    function buy_Ocoins(address investor, uint usd_invested) external 
    can_buy_Ocoins(usd_invested) {
        uint Ocoins_bought = usd_invested * usd_to_Ocoins;
        equity_Ocoins[investor] += Ocoins_bought;
        equity_usd[investor] = equity_Ocoins[investor] /1000;
        total_Ocoins_bought += Ocoins_bought; 

    }

    // Selling Ocoins
    function sell_Ocoins(address investor, uint Ocoins_sold) external 
    can_sell_Ocoins(Ocoins_sold) { 
        equity_Ocoins[investor] -= Ocoins_sold;
        equity_usd[investor] = equity_Ocoins[investor] /1000;
        total_Ocoins_bought -= Ocoins_sold;  
    }

}