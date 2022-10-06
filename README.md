# ERC20_Project-1 Notes

## What is ERC-20?

ERC stands for Ethereum Request for Comments. An ERC is a form of proposal and its purpose is to define standards and practices.
ERC20 is a proposal that intends to standardize how a token contract should be defined, how we interact with such a token contract and how these contracts interact with each other.
ERC20 is a standard interface used for financial applications.
A full compatible ERC20 Token must implement 6 functions and 2 events.
🔥 ERC stands for Ethereum Request for Comments. An ERC is a form of proposal and its purpose is to define standards and practices.

🔥 ERC20 is a proposal that intends to standardize howa token contract should be defined, how we interact with such a token contract and how these contracts interact with each other.

🔥 ERC20 is a standard interface used for financial applications.

🔥 A full compatible ERC20 Token must implement 6 functions and 2 events.

## Standard Functions of ERC-20 Explained

**1. `totalSupply():`** Returns the amount of tokens in existance, which is set by the owner or minter.

**2. `balanceOf():`** Returns the amount of tokens owned by any accounts, this functions executes with the help of mapping created above in the code.

**3. `transfer(receipient, amount):`** It moves 'amount' number of tokens from function-callers account to recipient's account.
It returns boolean and fires transfer event.     

**4. `approve(spender, amount):`** It allows the "spender" to transfer token from "function-caller's" account to another account. Returns boolean and fires approval event.

**5. `transferFrom(sender, recipient, amount):`** 'Approved' account can transfer tokens from authorized account to another account. Amount is deducted from the authorized account.It returns boolean on successful transfer, fires a transfer event.

**6. `allowance(onwer, spender):`** Returns the available amount of tokens for the spender to spend, on behalf of the 'approve()' function-caller.

## Standard Events of ERC-20 Explained

**1. `Transfer(from, to, value):`** This event is fired when 'transfer()' and 'transferFrom()' from function is called.

**2. `Approval(function-caller, spender, value):`** This event is fired when 'approve()' function is called. 
