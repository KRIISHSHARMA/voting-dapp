# How to Clone This Repo 🤔
``` sh
git clone https://github.com/KRIISHSHARMA/voting-Dapp.git
docker pull kriishsharma/vote-system 
```
``` sh
docker run -it -p 80:8545 <docker inage id>
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

![image](https://github.com/KRIISHSHARMA/voting-dapp/assets/86760658/ec7cfa34-398b-49e8-b6ec-d995dc8182b8)


- Deploy contract in a new terminal
``` sh
npx hardhat run script/deploy.js --network localhost
```

![image](https://github.com/KRIISHSHARMA/voting-dapp/assets/86760658/5bfa72c6-66cd-4fcb-bedf-32fd35f2687f)


- Running Frontend (`cd frontend`)


# Connecting Metamask with a Local Hardhat Network [reference](https://medium.com/@kaishinaw/connecting-metamask-with-a-local-hardhat-network-7d8cea604dc6)

- run node in root folder (keep it running)
``` sh
npx hardhat node
```
![image](https://github.com/KRIISHSHARMA/voting-dapp/assets/86760658/371d619c-64ca-489f-b63b-9825da2c782d)



- Running the above command, you will get the RPC endpoint as well as a list of locally generated accounts. We will need the endpoint as well as the private keys for configuring Metamask.

## Add Local Network to Metamask

![image](https://github.com/KRIISHSHARMA/voting-dapp/assets/86760658/accb208f-6994-4e7f-8996-e54697577c0a)



- Select the “Add Network” button and you will be greeted with a form requesting for the relevant network details. In order to connect to our local network, we will be using the following:
- Network Name: Hardhat— This is up to you and defines how the network will show up in your network dropdown.
- New RPC URL: http://127.0.0.1:8545/ — The endpoint returned from running npx hardhat node earlier.
- Chain ID: 31337 — This is the default chain identifier that is implemented by Hardhat. You can refer to their documentation here.
- Currency Symbol: HardhatETH — This is up to you and defines the symbol for the local network currency (ie. ETH).

## Importing Test Accounts

- In order to add these accounts to Metamask, we will need to add the private keys which were returned when we ran the npx hardhat node command.

![image](https://github.com/KRIISHSHARMA/voting-dapp/assets/86760658/ad6db297-50f0-4255-a30c-a07b583ba81e)


- Select the “Import Account” option and Metamask will prompt you for the private key string. Paste the private keys from earlier, it should look something like this:

` 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80`

![image](https://github.com/KRIISHSHARMA/voting-dapp/assets/86760658/2dc2ae57-70c5-4a92-999e-5dab6ceb7bb4)

![image](https://github.com/KRIISHSHARMA/voting-dapp/assets/86760658/d44f7738-08e4-4655-a16e-4758d1f78d3d)



