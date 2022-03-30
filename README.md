## The Ultimate StarkNet Dev Environment
Companion repository for - https://medium.com/starknet-edu/the-ultimate-starknet-dev-environment-716724aef4a7

### StarkNet CLI Cheatsheet
| Command        | Description           |
| ------------- |:-------------:|
| starknet-compile *.cairo* --output *_compiled.json* --abi *_abi.json* | compile starknet contract with abi specification |
| starknet deploy --contract *_compiled.json* | deploy compiled starknet contract |
| starknet deploy --contract *_compiled.json* --gateway_url *U* | deploy compiled starknet contract with custom gateway |
| starknet deploy_account | deploy default account |
| starknet deploy_account --account *A* | deploy named account |
| starknet call --address *0x* --abi *_abi.json* --function *F* --inputs *Is* | call a deployed starknet contract |
| starknet invoke --address *0x* --abi *_abi.json* --function *F* --inputs *Is* | invoke an external function on a starknet contract |
| starknet get_transaction --hash *0x* | get transaction details |
| starknet get_transaction_receipt --hash *0x* | get full transaction reciept |
| starknet estimate_fee --address *0x* --abi *_abi.json* --function F --inputs *Is* | estimate fee for transaction |
| starknet get_code --contract_address *0x* | get contract code |
| starknet get_full_contract --contract_address *0x* | get full contract |
| starknet get_block --number *N* | get block by block number |
| starknet get_state_update --block_number *BN* | get state update by block number |


### Cairo CLI Cheatsheet
| Command        | Description           |
| ------------- |:-------------:|
| cairo-compile *.cairo* --output *_compiled.json* | compile cairo program |
| cairo-run --program *_compiled.json* --print_output --layout=small | run cairo program and output results |
| cairo-hash-program --program *_compiled.json* | output the KECCAK Fact of the cairo program |
| cairo-sharp submit --source *.cairo* --program_input input.json | compile cairo program and submit the fact to the SHARP |