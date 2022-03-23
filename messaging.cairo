%lang starknet
%builtins pedersen range_check

from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.starknet.common.messages import send_message_to_l1

####################
# STORAGE VARIABLES
####################
@storage_var
func l1_address() -> (addr: felt):
end


####################
# CONSTRUCTOR
####################
@constructor
func constructor{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}(addr: felt):
    l1_address.write(addr)

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