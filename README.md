# Welcome to the GenEOSTestnet


To create your GENEOS key pair you can use clgeneos command (need already installed GENEOS)  
`./clgeneos.sh create key ` 


# Manual installation

## Install GenEOS

```
cd
git clone https://github.com/geneosio/geneos --recursive    
cd geneos  
./geneosio_build.sh   
```  

## Configuring Node

- Clone all files from this repo:
  ```
  cd
  git clone https://github.com/GenEOSIO/GenEOSTestnet
  ```   
- add execution rights  
  ```
  chmod -R 777 *.sh   
  chmod -R 777 /Wallet/*.sh 
  ```  

- If you use different data-dir folders -> edit all paths in files cleos.sh, start.sh, stop.sh, config.ini, Wallet/start_wallet.sh, Wallet/stop_wallet.sh:


- Choose your producer name (12 symbols length a-z 1-5) and create own GENEOS key pair  
- Register account for your producer using created key
  
- Edit in config.ini next parameters:  
  - server address: p2p-server-address = YOUR_NODE_IP_ADDRESS:9876  
  - your producer name: producer-name = YOUR_BP_NAME  
  - created producer keypair: private-key = ["YOUR_PUBKEY","YOUR_PRIVKEY"]  
  - replace p2p-peer-address list  
  
- Open http and p2p Ports on your firewall/router  
- Connect your node, run 
```
./start.sh  
```
- Start wallet, run 
```
./Wallet/start_wallet.sh  
```
- Import your key 
```
./cleos.sh wallet import <YOUR_PRIVKEY>
```


**First run should be with --delete-all-blocks and --genesis-json**  
```
./start.sh --delete-all-blocks --genesis-json genesis.json
```  



Send SYS (CORE TOKEN OF GENEOS)
```
./cleos.sh transfer <your account>  <receiver account> "1.0000 SYS" "test memo text"
```
Get Balance  
```
./cleos.sh get currency balance eosio.token <account name>
```
