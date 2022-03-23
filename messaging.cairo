%lang starknet
%builtins pedersen range_check

from starkware.starknet.common.messages import send_message_to_l1

####################
# STORAGE VARIABLES
####################
@storage_var
func l1_address() -> (count: felt):
end


####################
# CONSTRUCTOR
####################
@constructor
func constructor{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}(address: felt):
    l1_address.write(address)

    return ()
end

####################
# EXTERNAL FUNCTIONS
####################
@external
func message_example{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}() -> ():
    let (addr) = l1_address.read()
    
    let (message_payload: felt*) = alloc()
    assert message_payload[0] = 474315580261

    send_message_to_l1(
        to_address=addr,
        payload_size=1,
        payload=message_payload)

    return ()
end