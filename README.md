## The Ultimate StarkNet Dev Environment
Companion repository for - https://medium.com/starknet-edu/the-ultimate-starknet-dev-environment-716724aef4a7

### StarkNet CLI Cheatsheet
| Command        | Description           |
| ------------- |:-------------:|
| starknet-compile <span style="color:orange;">*.cairo*</span> --output <span style="color:orange;">*_compiled.json*</span> --abi <span style="color:orange;">*_abi.json*</span> | compile starknet contract with abi specification |
| starknet deploy --contract <span style="color:orange;">*_compiled.json*</span> | deploy compiled starknet contract |
| starknet deploy --contract <span style="color:orange;">*_compiled.json*</span> --gateway_url <span style="color:orange;">*GU*</span> | deploy compiled starknet contract with custom gateway |
| starknet deploy_account | deploy default account |
| starknet deploy_account --account <span style="color:orange;">*A*</span> | deploy named account |
| starknet call --address <span style="color:orange;">*0x*</span> --abi <span style="color:orange;">*_abi.json*</span> --function <span style="color:orange;">*F*</span> --inputs <span style="color:orange;">*Is*</span> | call a deployed starknet contract |
| starknet invoke --address <span style="color:orange;">*0x*</span> --abi <span style="color:orange;">*_abi.json*</span> --function <span style="color:orange;">*F*</span> --inputs <span style="color:orange;">*Is*</span> | invoke an external function on a starknet contract |
| starknet get_transaction --hash <span style="color:orange;">*0x*</span> | get transaction details |
| starknet get_transaction_receipt --hash <span style="color:orange;">*0x*</span> | get full transaction reciept |
| starknet estimate_fee --address <span style="color:orange;">*0x*</span> --abi <span style="color:orange;">*_abi.json*</span> --function F --inputs <span style="color:orange;">*Is*</span> | estimate fee for transaction |
| starknet get_code --contract_address <span style="color:orange;">*0x*</span> | get contract code |
| starknet get_full_contract --contract_address <span style="color:orange;">*0x*</span> | get full contract |
| starknet get_block --number <span style="color:orange;">*N*</span> | get block by block number |
| starknet get_state_update --block_number <span style="color:orange;">*BN*</span> | get state update by block number |


### Cairo CLI Cheatsheet
| Command        | Description           |
| ------------- |:-------------:|
| cairo-compile <span style="color:orange;">*.cairo*</span> --output <span style="color:orange;">*_compiled.json*</span> | compile cairo program |
| cairo-run --program <span style="color:orange;">*_compiled.json*</span> --print_output --layout=small | run cairo program and output results |
| cairo-hash-program --program <span style="color:orange;">*_compiled.json*</span> | output the KECCAK Fact of the cairo program |
| cairo-sharp submit --source <span style="color:orange;">*.cairo*</span> --program_input input.json | compile cairo program and submit the fact to the SHARP |