## Ocoins smart contract

**Contract address** : 0x5A9053AEce1da9E92E34C9Ce58B4e916B5C0Fcb4.  <br>
**Ropsten chain link**: https://ropsten.etherscan.io/address/0x5a9053aece1da9e92e34c9ce58b4e916b5c0fcb4.  <br>

```
 [
    {
        "constant": true,
        "inputs": [
            {
                "name": "investor",
                "type": "address"
            }
        ],
        "name": "equity_in_usd",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "usd_to_Ocoins",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "investor",
                "type": "address"
            },
            {
                "name": "Ocoins_sold",
                "type": "uint256"
            }
        ],
        "name": "sell_Ocoins",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "investor",
                "type": "address"
            },
            {
                "name": "usd_invested",
                "type": "uint256"
            }
        ],
        "name": "buy_Ocoins",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "total_Ocoins_bought",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "max_Ocoins",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [
            {
                "name": "investor",
                "type": "address"
            }
        ],
        "name": "equity_in_Ocoins",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    }
]
```

Functions:

**equity_in_usd** : Amount in USD owned by the address. <br>
**usd_to_Ocoins** : the exchange rate of USD to Ocoins.  <br>
**sell_Ocoins** : Sell Ocoins.  <br>
**buy_Ocoins** : Buy Ocoins.  <br>
**total_Ocoins_bought** : The total amount of Ocoins that was bought by investors.  <br>
**max_Ocoins** : The amount of Ocoins available.  <br>
**equity_in_Ocoins** : Amount in Ocoins owned by the address.  <br>

**Note**: This is just experimental training
