# How to Clone This Repo 🤔
``` sh
git clone https://github.com/KRIISHSHARMA/voting-Dapp.git
```
``` sh
cd voting-Dapp
```

# Setting Up ENV 🌲
- [Setup Hardhat Env](https://github.com/KRIISHSHARMA/test-hardhat)
- ``` sh
  npm install
  ```

# Solidity Smart Contract - Im using solidity smart contract example they have on their [documentations](https://docs.soliditylang.org/en/v0.8.6/solidity-by-example.html). 

# Complie Contract
``` sh
npx hardhat complie
```

# Errors i faced 
- If you are getting `nothing to compile error` try the following:
  - clearing cache ` npx hardhat clean`
  - try deleting cache and artifacts folder `rm -rf cache artifacts`
  - try forcing recompilation `npx hardhat compile --force`
  - Make sure that the solidity version in hardhat.config.js is the same as in Token.sol or any solidity file you create
  - Move your Sol file to a contract folder
 

# Running Dapp 👷
- Running Hardhat Node on localhost
``` sh
npx hardhat node
```
- **Dont close this session**

![image](https://github.com/KRIISHSHARMA/voting-Dapp/assets/86760658/9c530a3b-8e4b-4082-9a9a-a0c6eefd3f38)

- Deploy contract in a new terminal
``` sh
npx hardhat run script/deploy.js --network localhost
```

![image](https://github.com/KRIISHSHARMA/voting-Dapp/assets/86760658/1008e690-5c70-4d74-8401-4f8d5dea9849)

- Running Frontend (`cd frontend`)


# Connecting Metamask with a Local Hardhat Network [reference](https://medium.com/@kaishinaw/connecting-metamask-with-a-local-hardhat-network-7d8cea604dc6)

- run node in root folder (keep it running)
``` sh
npx hardhat node
```

![Screenshot from 2024-04-20 19-00-24](https://github.com/KRIISHSHARMA/voting-Dapp/assets/86760658/f283514b-95f5-499a-8543-f87a0dd4bd90)


- Running the above command, you will get the RPC endpoint as well as a list of locally generated accounts. We will need the endpoint as well as the private keys for configuring Metamask.

## Add Local Network to Metamask

![Screenshot from 2024-04-20 19-02-47](https://github.com/KRIISHSHARMA/voting-Dapp/assets/86760658/67798218-c5fa-4fa3-a30a-8037e3d0fe54)


- Select the “Add Network” button and you will be greeted with a form requesting for the relevant network details. In order to connect to our local network, we will be using the following:
- Network Name: Hardhat— This is up to you and defines how the network will show up in your network dropdown.
- New RPC URL: http://127.0.0.1:8545/ — The endpoint returned from running npx hardhat node earlier.
- Chain ID: 31337 — This is the default chain identifier that is implemented by Hardhat. You can refer to their documentation here.
- Currency Symbol: HardhatETH — This is up to you and defines the symbol for the local network currency (ie. ETH).

## Importing Test Accounts

- In order to add these accounts to Metamask, we will need to add the private keys which were returned when we ran the npx hardhat node command.

![Screenshot from 2024-04-20 19-05-40](https://github.com/KRIISHSHARMA/voting-Dapp/assets/86760658/ffaaa0ce-7330-4bc0-a5e5-15a01984d780)


- Select the “Import Account” option and Metamask will prompt you for the private key string. Paste the private keys from earlier, it should look something like this:

` 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80`

![Screenshot from 2024-04-20 19-07-16](https://github.com/KRIISHSHARMA/voting-Dapp/assets/86760658/d482109d-3923-410a-ad0b-25237044575c)

![Screenshot from 2024-04-20 19-07-46](https://github.com/KRIISHSHARMA/voting-Dapp/assets/86760658/73d3d655-f917-4ea3-8f03-cf4abc703bdb)


