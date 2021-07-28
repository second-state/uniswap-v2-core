/*=====================================================*
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *=====================================================*/


object "UniswapV2ERC20_1438" {
    code {
        /// @src 0:104,3562
        mstore(64, 128)
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_UniswapV2ERC20_1438()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("UniswapV2ERC20_1438_deployed"), datasize("UniswapV2ERC20_1438_deployed"))

        return(_1, datasize("UniswapV2ERC20_1438_deployed"))

        function abi_encode_t_address_to_t_address_fromStack(value, pos) {
            mstore(pos, cleanup_t_address(value))
        }

        function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
            mstore(pos, cleanup_t_bytes32(value))
        }

        function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
            mstore(pos, cleanup_t_uint256(value))
        }

        function abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
            tail := add(headStart, 160)

            abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

            abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

            abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 128))

        }

        function allocate_memory(size) -> memPtr {
            memPtr := allocate_unbounded()
            finalize_allocation(memPtr, size)
        }

        function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
            let allocSize := array_allocation_size_t_string_memory_ptr(length)
            memPtr := allocate_memory(allocSize)

            mstore(memPtr, length)

        }

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function array_allocation_size_t_string_memory_ptr(length) -> size {
            // Make sure we can allocate memory without overflow
            if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

            size := round_up_to_mul_of_32(length)

            // add length slot
            size := add(size, 0x20)

        }

        function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
            data := ptr

            data := add(ptr, 0x20)

        }

        function array_length_t_bytes_memory_ptr(value) -> length {

            length := mload(value)

        }

        function cleanup_t_address(value) -> cleaned {
            cleaned := cleanup_t_uint160(value)
        }

        function cleanup_t_bytes32(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        /// @src 0:183,234
        function constant_name_1059() -> ret_mpos {
            /// @src 0:222,234
            let _3_mpos := convert_t_stringliteral_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738_to_t_string_memory_ptr()

            ret_mpos := _3_mpos
        }

        function constructor_IUniswapV2ERC20_1964() {

            /// @src 4:26,1147

        }

        function constructor_UniswapV2ERC20_1438() {

            /// @src 0:1004,1450
            constructor_IUniswapV2ERC20_1964()

            /// @src 0:1035,1047
            let var_chainId_1098
            let zero_t_uint256_2 := zero_value_for_split_t_uint256()
            var_chainId_1098 := zero_t_uint256_2
            /// @src 0:1057,1110
            { var_chainId_1098 := chainid() }
            /// @src 0:1189,1284
            let expr_1107 := 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
            /// @src 0:1318,1322
            let expr_1111_mpos := constant_name_1059()
            /// @src 0:1312,1323
            let expr_1112_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_1111_mpos)
            /// @src 0:1302,1324
            let expr_1113 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_1112_mpos), array_length_t_bytes_memory_ptr(expr_1112_mpos))
            /// @src 0:1352,1362
            let expr_1118_mpos := convert_t_stringliteral_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6_to_t_bytes_memory_ptr()
            /// @src 0:1342,1363
            let expr_1119 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_1118_mpos), array_length_t_bytes_memory_ptr(expr_1118_mpos))
            /// @src 0:1381,1388
            let _4 := var_chainId_1098
            let expr_1120 := _4
            /// @src 0:1414,1418
            let expr_1123_address := address()
            /// @src 0:1406,1419
            let expr_1124 := convert_t_contract$_UniswapV2ERC20_$1438_to_t_address(expr_1123_address)
            /// @src 0:1161,1433

            let expr_1125_mpos := allocate_unbounded()
            let _5 := add(expr_1125_mpos, 0x20)

            let _6 := abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(_5, expr_1107, expr_1113, expr_1119, expr_1120, expr_1124)
            mstore(expr_1125_mpos, sub(_6, add(expr_1125_mpos, 0x20)))
            finalize_allocation(expr_1125_mpos, sub(_6, expr_1125_mpos))
            /// @src 0:1138,1443
            let expr_1126 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_1125_mpos), array_length_t_bytes_memory_ptr(expr_1125_mpos))
            /// @src 0:1119,1443
            update_storage_value_offset_0t_bytes32_to_t_bytes32(0x03, expr_1126)
            let expr_1127 := expr_1126

        }

        function convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(value) -> converted  {
            converted := value

        }

        function convert_t_bytes32_to_t_bytes32(value) -> converted {
            converted := cleanup_t_bytes32(value)
        }

        function convert_t_contract$_UniswapV2ERC20_$1438_to_t_address(value) -> converted {
            converted := convert_t_contract$_UniswapV2ERC20_$1438_to_t_uint160(value)
        }

        function convert_t_contract$_UniswapV2ERC20_$1438_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(value)
        }

        function convert_t_stringliteral_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738_to_t_string_memory_ptr() -> converted {
            converted := copy_literal_to_memory_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738()
        }

        function convert_t_stringliteral_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6_to_t_bytes_memory_ptr() -> converted {
            converted := copy_literal_to_memory_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6()
        }

        function copy_literal_to_memory_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738() -> memPtr {
            memPtr := allocate_memory_array_t_string_memory_ptr(10)
            store_literal_in_memory_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738(add(memPtr, 32))
        }

        function copy_literal_to_memory_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6() -> memPtr {
            memPtr := allocate_memory_array_t_string_memory_ptr(1)
            store_literal_in_memory_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6(add(memPtr, 32))
        }

        function finalize_allocation(memPtr, size) {
            let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
            // protect against overflow
            if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
            mstore(64, newFreePtr)
        }

        function panic_error_0x41() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x41)
            revert(0, 0x24)
        }

        function prepare_store_t_bytes32(value) -> ret {
            ret := shift_right_0_unsigned(value)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function round_up_to_mul_of_32(value) -> result {
            result := and(add(value, 31), not(31))
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function store_literal_in_memory_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738(memPtr) {

            mstore(add(memPtr, 0), "Uniswap V2")

        }

        function store_literal_in_memory_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6(memPtr) {

            mstore(add(memPtr, 0), "1")

        }

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_bytes32_to_t_bytes32(slot, value_0) {
            let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_bytes32(convertedValue_0)))
        }

        function zero_value_for_split_t_uint256() -> ret {
            ret := 0
        }

    }
    object "UniswapV2ERC20_1438_deployed" {
        code {
            /// @src 0:104,3562
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_name_1059()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_approve_1282(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_totalSupply_1070()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_transferFrom_1357(param_0, param_1, param_2)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x30adf81f
                {
                    // PERMIT_TYPEHASH()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_PERMIT_TYPEHASH_1089()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x313ce567
                {
                    // decimals()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_decimals_1067()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3644e515
                {
                    // DOMAIN_SEPARATOR()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_DOMAIN_SEPARATOR_1085()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_balanceOf_1075(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7ecebe00
                {
                    // nonces(address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_nonces_1094(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x95d89b41
                {
                    // symbol()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_symbol_1063()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_transfer_1302(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd505accf
                {
                    // permit(address,address,uint256,uint256,uint8,bytes32,bytes32)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2, param_3, param_4, param_5, param_6 :=  abi_decode_tuple_t_addresst_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(4, calldatasize())
                    fun_permit_1437(param_0, param_1, param_2, param_3, param_4, param_5, param_6)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xdd62ed3e
                {
                    // allowance(address,address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                    let ret_0 :=  getter_fun_allowance_1082(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_t_uint8(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint8(value)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_addresst_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6 {
                if slt(sub(dataEnd, headStart), 224) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value6 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_t_stringliteral_03b20b9f6e6e7905f077509fd420fb44afc685f254bcefe49147296e1ba25590_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 21)
                store_literal_in_memory_03b20b9f6e6e7905f077509fd420fb44afc685f254bcefe49147296e1ba25590(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_2d893fc9f5fa2494c39ecec82df2778b33226458ccce3b9a56f5372437d54a56_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 28)
                store_literal_in_memory_2d893fc9f5fa2494c39ecec82df2778b33226458ccce3b9a56f5372437d54a56(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 2)
                store_literal_in_memory_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541(pos)
                end := add(pos, 2)
            }

            function abi_encode_t_stringliteral_3903056b84ed2aba2be78662dc6c5c99b160cebe9af9bd9493d0fc28ff16f6db_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 20)
                store_literal_in_memory_3903056b84ed2aba2be78662dc6c5c99b160cebe9af9bd9493d0fc28ff16f6db(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_stringliteral_47797eaaf6df6dc2efdb1e824209400a8293aff4c1e7f6d90fcc4b3e3ba18a87_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 18)
                store_literal_in_memory_47797eaaf6df6dc2efdb1e824209400a8293aff4c1e7f6d90fcc4b3e3ba18a87(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_packed_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                pos := abi_encode_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                tail := add(headStart, 192)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

            }

            function abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint8_to_t_uint8_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value3,  add(headStart, 96))

            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function abi_encode_tuple_t_stringliteral_03b20b9f6e6e7905f077509fd420fb44afc685f254bcefe49147296e1ba25590__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_03b20b9f6e6e7905f077509fd420fb44afc685f254bcefe49147296e1ba25590_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_2d893fc9f5fa2494c39ecec82df2778b33226458ccce3b9a56f5372437d54a56__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_2d893fc9f5fa2494c39ecec82df2778b33226458ccce3b9a56f5372437d54a56_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_3903056b84ed2aba2be78662dc6c5c99b160cebe9af9bd9493d0fc28ff16f6db__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_3903056b84ed2aba2be78662dc6c5c99b160cebe9af9bd9493d0fc28ff16f6db_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_stringliteral_47797eaaf6df6dc2efdb1e824209400a8293aff4c1e7f6d90fcc4b3e3ba18a87__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_47797eaaf6df6dc2efdb1e824209400a8293aff4c1e7f6d90fcc4b3e3ba18a87_to_t_string_memory_ptr_fromStack( tail)

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error_0x11() }

                sum := add(x, y)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                if lt(x, y) { panic_error_0x11() }

                diff := sub(x, y)
            }

            function cleanup_from_storage_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_rational_49955707469362902507454157297736832118868343942642399513960811609542965143241_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            /// @src 0:666,783
            function constant_PERMIT_TYPEHASH_1089() -> ret {
                /// @src 0:717,783
                let expr_1088 := 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9
                let _2 := convert_t_rational_49955707469362902507454157297736832118868343942642399513960811609542965143241_by_1_to_t_bytes32(expr_1088)

                ret := _2
            }

            /// @src 0:295,339
            function constant_decimals_1067() -> ret {
                /// @src 0:337,339
                let expr_1066 := 0x12
                let _3 := convert_t_rational_18_by_1_to_t_uint8(expr_1066)

                ret := _3
            }

            /// @src 0:183,234
            function constant_name_1059() -> ret_mpos {
                /// @src 0:222,234
                let _1_mpos := convert_t_stringliteral_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738_to_t_string_memory_ptr()

                ret_mpos := _1_mpos
            }

            /// @src 0:240,289
            function constant_symbol_1063() -> ret_mpos {
                /// @src 0:281,289
                let _4_mpos := convert_t_stringliteral_0c49a525f6758cfb27d0ada1467d2a2e99733995423d47ae30ae4ba2ba563255_to_t_string_memory_ptr()

                ret_mpos := _4_mpos
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_int256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_rational_18_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(value)
            }

            function convert_t_rational_49955707469362902507454157297736832118868343942642399513960811609542965143241_by_1_to_t_bytes32(value) -> converted {
                converted := shift_left_0(cleanup_t_rational_49955707469362902507454157297736832118868343942642399513960811609542965143241_by_1(value))
            }

            function convert_t_rational_minus_1_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(value)
            }

            function convert_t_stringliteral_0c49a525f6758cfb27d0ada1467d2a2e99733995423d47ae30ae4ba2ba563255_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_0c49a525f6758cfb27d0ada1467d2a2e99733995423d47ae30ae4ba2ba563255()
            }

            function convert_t_stringliteral_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738()
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function copy_literal_to_memory_0c49a525f6758cfb27d0ada1467d2a2e99733995423d47ae30ae4ba2ba563255() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(6)
                store_literal_in_memory_0c49a525f6758cfb27d0ada1467d2a2e99733995423d47ae30ae4ba2ba563255(add(memPtr, 32))
            }

            function copy_literal_to_memory_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(10)
                store_literal_in_memory_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738(add(memPtr, 32))
            }

            function copy_memory_to_memory(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                if gt(i, length)
                {
                    // clear end
                    mstore(add(dst, length), 0)
                }
            }

            function extract_from_storage_value_dynamict_bytes32(slot_value, offset) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_offset_0t_bytes32(slot_value) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function fun__approve_1224(var_owner_1202, var_spender_1204, var_value_1206) {
                /// @src 0:1870,2036

                /// @src 0:1978,1983
                let _8 := var_value_1206
                let expr_1214 := _8
                /// @src 0:1950,1959
                let _9 := 0x02
                let expr_1209 := _9
                /// @src 0:1960,1965
                let _10 := var_owner_1202
                let expr_1210 := _10
                /// @src 0:1950,1966
                let _11 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1209,expr_1210)
                let _12 := _11
                let expr_1212 := _12
                /// @src 0:1967,1974
                let _13 := var_spender_1204
                let expr_1211 := _13
                /// @src 0:1950,1975
                let _14 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1212,expr_1211)
                /// @src 0:1950,1983
                update_storage_value_offset_0t_uint256_to_t_uint256(_14, expr_1214)
                let expr_1215 := expr_1214
                /// @src 0:2007,2012
                let _15 := var_owner_1202
                let expr_1218 := _15
                /// @src 0:2014,2021
                let _16 := var_spender_1204
                let expr_1219 := _16
                /// @src 0:2023,2028
                let _17 := var_value_1206
                let expr_1220 := _17
                /// @src 0:1998,2029
                let _18 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                {
                    let _19 := allocate_unbounded()
                    let _20 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_19 , expr_1220)
                    log3(_19, sub(_20, _19) , _18, expr_1218, expr_1219)
                }
            }

            function fun__transfer_1262(var_from_1226, var_to_1228, var_value_1230) {
                /// @src 0:2042,2258

                /// @src 0:2135,2144
                let _24 := 0x01
                let expr_1236 := _24
                /// @src 0:2145,2149
                let _25 := var_from_1226
                let expr_1237 := _25
                /// @src 0:2135,2150
                let _26 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1236,expr_1237)
                let _27 := read_from_storage_split_offset_0_t_uint256(_26)
                let expr_1238 := _27
                /// @src 0:2135,2154
                let expr_1239_self := expr_1238
                let expr_1239_functionIdentifier := 2010
                /// @src 0:2155,2160
                let _28 := var_value_1230
                let expr_1240 := _28
                /// @src 0:2135,2161
                let expr_1241 := fun_sub_2010(expr_1239_self, expr_1240)
                /// @src 0:2117,2126
                let _29 := 0x01
                let expr_1233 := _29
                /// @src 0:2127,2131
                let _30 := var_from_1226
                let expr_1234 := _30
                /// @src 0:2117,2132
                let _31 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1233,expr_1234)
                /// @src 0:2117,2161
                update_storage_value_offset_0t_uint256_to_t_uint256(_31, expr_1241)
                let expr_1242 := expr_1241
                /// @src 0:2187,2196
                let _32 := 0x01
                let expr_1247 := _32
                /// @src 0:2197,2199
                let _33 := var_to_1228
                let expr_1248 := _33
                /// @src 0:2187,2200
                let _34 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1247,expr_1248)
                let _35 := read_from_storage_split_offset_0_t_uint256(_34)
                let expr_1249 := _35
                /// @src 0:2187,2204
                let expr_1250_self := expr_1249
                let expr_1250_functionIdentifier := 1988
                /// @src 0:2205,2210
                let _36 := var_value_1230
                let expr_1251 := _36
                /// @src 0:2187,2211
                let expr_1252 := fun_add_1988(expr_1250_self, expr_1251)
                /// @src 0:2171,2180
                let _37 := 0x01
                let expr_1244 := _37
                /// @src 0:2181,2183
                let _38 := var_to_1228
                let expr_1245 := _38
                /// @src 0:2171,2184
                let _39 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1244,expr_1245)
                /// @src 0:2171,2211
                update_storage_value_offset_0t_uint256_to_t_uint256(_39, expr_1252)
                let expr_1253 := expr_1252
                /// @src 0:2235,2239
                let _40 := var_from_1226
                let expr_1256 := _40
                /// @src 0:2241,2243
                let _41 := var_to_1228
                let expr_1257 := _41
                /// @src 0:2245,2250
                let _42 := var_value_1230
                let expr_1258 := _42
                /// @src 0:2226,2251
                let _43 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                {
                    let _44 := allocate_unbounded()
                    let _45 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_44 , expr_1258)
                    log3(_44, sub(_45, _44) , _43, expr_1256, expr_1257)
                }
            }

            function fun_add_1988(var_x_1968, var_y_1970) -> var_z_1973 {
                /// @src 8:154,280
                /// @src 8:206,212
                let zero_t_uint256_96 := zero_value_for_split_t_uint256()
                var_z_1973 := zero_t_uint256_96

                /// @src 8:237,238
                let _97 := var_x_1968
                let expr_1977 := _97
                /// @src 8:241,242
                let _98 := var_y_1970
                let expr_1978 := _98
                /// @src 8:237,242
                let expr_1979 := checked_add_t_uint256(expr_1977, expr_1978)

                /// @src 8:233,242
                var_z_1973 := expr_1979
                let expr_1980 := expr_1979
                /// @src 8:232,243
                let expr_1981 := expr_1980
                /// @src 8:247,248
                let _99 := var_x_1968
                let expr_1982 := _99
                /// @src 8:232,248
                let expr_1983 := iszero(lt(cleanup_t_uint256(expr_1981), cleanup_t_uint256(expr_1982)))
                /// @src 8:224,273
                require_helper_t_stringliteral_3903056b84ed2aba2be78662dc6c5c99b160cebe9af9bd9493d0fc28ff16f6db(expr_1983)

            }

            function fun_approve_1282(var_spender_1264, var_value_1266) -> var__1270 {
                /// @src 0:2264,2417
                /// @src 0:2337,2341
                let zero_t_bool_5 := zero_value_for_split_t_bool()
                var__1270 := zero_t_bool_5

                /// @src 0:2353,2361
                let expr_1272_functionIdentifier := 1224
                /// @src 0:2362,2372
                let expr_1274 := caller()
                /// @src 0:2374,2381
                let _6 := var_spender_1264
                let expr_1275 := _6
                /// @src 0:2383,2388
                let _7 := var_value_1266
                let expr_1276 := _7
                fun__approve_1224(expr_1274, expr_1275, expr_1276)
                /// @src 0:2406,2410
                let expr_1279 := 0x01
                /// @src 0:2399,2410
                var__1270 := expr_1279
                leave

            }

            function fun_permit_1437(var_owner_1359, var_spender_1361, var_value_1363, var_deadline_1365, var_v_1367, var_r_1369, var_s_1371) {
                /// @src 0:2889,3560

                /// @src 0:3031,3039
                let _68 := var_deadline_1365
                let expr_1376 := _68
                /// @src 0:3043,3058
                let expr_1378 := timestamp()
                /// @src 0:3031,3058
                let expr_1379 := iszero(lt(cleanup_t_uint256(expr_1376), cleanup_t_uint256(expr_1378)))
                /// @src 0:3023,3081
                require_helper_t_stringliteral_47797eaaf6df6dc2efdb1e824209400a8293aff4c1e7f6d90fcc4b3e3ba18a87(expr_1379)
                /// @src 0:3193,3209
                let _69 := read_from_storage_split_offset_0_t_bytes32(0x03)
                let expr_1389 := _69
                /// @src 0:3248,3263
                let expr_1393 := constant_PERMIT_TYPEHASH_1089()
                /// @src 0:3265,3270
                let _70 := var_owner_1359
                let expr_1394 := _70
                /// @src 0:3272,3279
                let _71 := var_spender_1361
                let expr_1395 := _71
                /// @src 0:3281,3286
                let _72 := var_value_1363
                let expr_1396 := _72
                /// @src 0:3288,3294
                let _73 := 0x04
                let expr_1397 := _73
                /// @src 0:3295,3300
                let _74 := var_owner_1359
                let expr_1398 := _74
                /// @src 0:3288,3301
                let _75 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1397,expr_1398)
                /// @src 0:3288,3303
                let _77 := read_from_storage_split_offset_0_t_uint256(_75)
                let _76 := increment_t_uint256(_77)
                update_storage_value_offset_0t_uint256_to_t_uint256(_75, _76)
                let expr_1400 := _77
                /// @src 0:3305,3313
                let _78 := var_deadline_1365
                let expr_1401 := _78
                /// @src 0:3237,3314

                let expr_1402_mpos := allocate_unbounded()
                let _79 := add(expr_1402_mpos, 0x20)

                let _80 := abi_encode_tuple_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__fromStack(_79, expr_1393, expr_1394, expr_1395, expr_1396, expr_1400, expr_1401)
                mstore(expr_1402_mpos, sub(_80, add(expr_1402_mpos, 0x20)))
                finalize_allocation(expr_1402_mpos, sub(_80, expr_1402_mpos))
                /// @src 0:3227,3315
                let expr_1403 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_1402_mpos), array_length_t_bytes_memory_ptr(expr_1402_mpos))
                /// @src 0:3131,3329

                let expr_1404_mpos := allocate_unbounded()
                let _81 := add(expr_1404_mpos, 0x20)

                let _82 := abi_encode_tuple_packed_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_81, expr_1389, expr_1403)
                mstore(expr_1404_mpos, sub(_82, add(expr_1404_mpos, 0x20)))
                finalize_allocation(expr_1404_mpos, sub(_82, expr_1404_mpos))
                /// @src 0:3108,3339
                let expr_1405 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_1404_mpos), array_length_t_bytes_memory_ptr(expr_1404_mpos))
                /// @src 0:3091,3339
                let var_digest_1384 := expr_1405
                /// @src 0:3386,3392
                let _83 := var_digest_1384
                let expr_1410 := _83
                /// @src 0:3394,3395
                let _84 := var_v_1367
                let expr_1411 := _84
                /// @src 0:3397,3398
                let _85 := var_r_1369
                let expr_1412 := _85
                /// @src 0:3400,3401
                let _86 := var_s_1371
                let expr_1413 := _86
                /// @src 0:3376,3402

                let _87 := allocate_unbounded()
                let _88 := abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(_87 , expr_1410, expr_1411, expr_1412, expr_1413)

                mstore(0, 0)

                let _89 := staticcall(gas(), 1 , _87, sub(_88, _87), 0, 32)
                if iszero(_89) { revert_forward_1() }
                let expr_1414 := shift_left_0(mload(0))
                /// @src 0:3349,3402
                let var_recoveredAddress_1408 := expr_1414
                /// @src 0:3420,3436
                let _90 := var_recoveredAddress_1408
                let expr_1417 := _90
                /// @src 0:3448,3449
                let expr_1420 := 0x00
                /// @src 0:3440,3450
                let expr_1421 := convert_t_rational_0_by_1_to_t_address(expr_1420)
                /// @src 0:3420,3450
                let expr_1422 := iszero(eq(cleanup_t_address(expr_1417), cleanup_t_address(expr_1421)))
                /// @src 0:3420,3479
                let expr_1426 := expr_1422
                if expr_1426 {
                    /// @src 0:3454,3470
                    let _91 := var_recoveredAddress_1408
                    let expr_1423 := _91
                    /// @src 0:3474,3479
                    let _92 := var_owner_1359
                    let expr_1424 := _92
                    /// @src 0:3454,3479
                    let expr_1425 := eq(cleanup_t_address(expr_1423), cleanup_t_address(expr_1424))
                    /// @src 0:3420,3479
                    expr_1426 := expr_1425
                }
                /// @src 0:3412,3512
                require_helper_t_stringliteral_2d893fc9f5fa2494c39ecec82df2778b33226458ccce3b9a56f5372437d54a56(expr_1426)
                /// @src 0:3522,3530
                let expr_1430_functionIdentifier := 1224
                /// @src 0:3531,3536
                let _93 := var_owner_1359
                let expr_1431 := _93
                /// @src 0:3538,3545
                let _94 := var_spender_1361
                let expr_1432 := _94
                /// @src 0:3547,3552
                let _95 := var_value_1363
                let expr_1433 := _95
                fun__approve_1224(expr_1431, expr_1432, expr_1433)

            }

            function fun_sub_2010(var_x_1990, var_y_1992) -> var_z_1995 {
                /// @src 8:286,413
                /// @src 8:338,344
                let zero_t_uint256_100 := zero_value_for_split_t_uint256()
                var_z_1995 := zero_t_uint256_100

                /// @src 8:369,370
                let _101 := var_x_1990
                let expr_1999 := _101
                /// @src 8:373,374
                let _102 := var_y_1992
                let expr_2000 := _102
                /// @src 8:369,374
                let expr_2001 := checked_sub_t_uint256(expr_1999, expr_2000)

                /// @src 8:365,374
                var_z_1995 := expr_2001
                let expr_2002 := expr_2001
                /// @src 8:364,375
                let expr_2003 := expr_2002
                /// @src 8:379,380
                let _103 := var_x_1990
                let expr_2004 := _103
                /// @src 8:364,380
                let expr_2005 := iszero(gt(cleanup_t_uint256(expr_2003), cleanup_t_uint256(expr_2004)))
                /// @src 8:356,406
                require_helper_t_stringliteral_03b20b9f6e6e7905f077509fd420fb44afc685f254bcefe49147296e1ba25590(expr_2005)

            }

            function fun_transferFrom_1357(var_from_1304, var_to_1306, var_value_1308) -> var__1312 {
                /// @src 0:2574,2883
                /// @src 0:2661,2665
                let zero_t_bool_46 := zero_value_for_split_t_bool()
                var__1312 := zero_t_bool_46

                /// @src 0:2681,2690
                let _47 := 0x02
                let expr_1314 := _47
                /// @src 0:2691,2695
                let _48 := var_from_1304
                let expr_1315 := _48
                /// @src 0:2681,2696
                let _49 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1314,expr_1315)
                let _50 := _49
                let expr_1316 := _50
                /// @src 0:2697,2707
                let expr_1318 := caller()
                /// @src 0:2681,2708
                let _51 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1316,expr_1318)
                let _52 := read_from_storage_split_offset_0_t_uint256(_51)
                let expr_1319 := _52
                /// @src 0:2722,2723
                let expr_1324 := 0x01
                /// @src 0:2721,2723
                let expr_1325 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 0:2717,2724
                let expr_1326 := convert_t_rational_minus_1_by_1_to_t_int256(expr_1325)
                /// @src 0:2712,2725
                let expr_1327 := convert_t_int256_to_t_uint256(expr_1326)
                /// @src 0:2681,2725
                let expr_1328 := iszero(eq(cleanup_t_uint256(expr_1319), cleanup_t_uint256(expr_1327)))
                /// @src 0:2677,2820
                if expr_1328 {
                    /// @src 0:2771,2780
                    let _53 := 0x02
                    let expr_1335 := _53
                    /// @src 0:2781,2785
                    let _54 := var_from_1304
                    let expr_1336 := _54
                    /// @src 0:2771,2786
                    let _55 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1335,expr_1336)
                    let _56 := _55
                    let expr_1337 := _56
                    /// @src 0:2787,2797
                    let expr_1339 := caller()
                    /// @src 0:2771,2798
                    let _57 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1337,expr_1339)
                    let _58 := read_from_storage_split_offset_0_t_uint256(_57)
                    let expr_1340 := _58
                    /// @src 0:2771,2802
                    let expr_1341_self := expr_1340
                    let expr_1341_functionIdentifier := 2010
                    /// @src 0:2803,2808
                    let _59 := var_value_1308
                    let expr_1342 := _59
                    /// @src 0:2771,2809
                    let expr_1343 := fun_sub_2010(expr_1341_self, expr_1342)
                    /// @src 0:2741,2750
                    let _60 := 0x02
                    let expr_1329 := _60
                    /// @src 0:2751,2755
                    let _61 := var_from_1304
                    let expr_1330 := _61
                    /// @src 0:2741,2756
                    let _62 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1329,expr_1330)
                    let _63 := _62
                    let expr_1333 := _63
                    /// @src 0:2757,2767
                    let expr_1332 := caller()
                    /// @src 0:2741,2768
                    let _64 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1333,expr_1332)
                    /// @src 0:2741,2809
                    update_storage_value_offset_0t_uint256_to_t_uint256(_64, expr_1343)
                    let expr_1344 := expr_1343
                    /// @src 0:2677,2820
                }
                /// @src 0:2829,2838
                let expr_1348_functionIdentifier := 1262
                /// @src 0:2839,2843
                let _65 := var_from_1304
                let expr_1349 := _65
                /// @src 0:2845,2847
                let _66 := var_to_1306
                let expr_1350 := _66
                /// @src 0:2849,2854
                let _67 := var_value_1308
                let expr_1351 := _67
                fun__transfer_1262(expr_1349, expr_1350, expr_1351)
                /// @src 0:2872,2876
                let expr_1354 := 0x01
                /// @src 0:2865,2876
                var__1312 := expr_1354
                leave

            }

            function fun_transfer_1302(var_to_1284, var_value_1286) -> var__1290 {
                /// @src 0:2423,2568
                /// @src 0:2492,2496
                let zero_t_bool_21 := zero_value_for_split_t_bool()
                var__1290 := zero_t_bool_21

                /// @src 0:2508,2517
                let expr_1292_functionIdentifier := 1262
                /// @src 0:2518,2528
                let expr_1294 := caller()
                /// @src 0:2530,2532
                let _22 := var_to_1284
                let expr_1295 := _22
                /// @src 0:2534,2539
                let _23 := var_value_1286
                let expr_1296 := _23
                fun__transfer_1262(expr_1294, expr_1295, expr_1296)
                /// @src 0:2557,2561
                let expr_1299 := 0x01
                /// @src 0:2550,2561
                var__1290 := expr_1299
                leave

            }

            function getter_fun_DOMAIN_SEPARATOR_1085() -> ret {
                /// @src 0:516,556

                let slot := 3
                let offset := 0

                ret := read_from_storage_split_dynamic_t_bytes32(slot, offset)

            }

            function getter_fun_PERMIT_TYPEHASH_1089() -> ret_0 {
                /// @src 0:666,783
                ret_0 := constant_PERMIT_TYPEHASH_1089()
            }

            function getter_fun_allowance_1082(key_0, key_1) -> ret {
                /// @src 0:439,509

                let slot := 2
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot, key_0)

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_1)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }

            function getter_fun_balanceOf_1075(key_0) -> ret {
                /// @src 0:383,433

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }

            function getter_fun_decimals_1067() -> ret_0 {
                /// @src 0:295,339
                ret_0 := constant_decimals_1067()
            }

            function getter_fun_name_1059() -> ret_0 {
                /// @src 0:183,234
                ret_0 := constant_name_1059()
            }

            function getter_fun_nonces_1094(key_0) -> ret {
                /// @src 0:789,836

                let slot := 4
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }

            function getter_fun_symbol_1063() -> ret_0 {
                /// @src 0:240,289
                ret_0 := constant_symbol_1063()
            }

            function getter_fun_totalSupply_1070() -> ret {
                /// @src 0:345,377

                let slot := 0
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function leftAlign_t_bytes32(value) -> aligned {
                aligned := value
            }

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_storage_split_dynamic_t_bytes32(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_bytes32(sload(slot), offset)

            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            function read_from_storage_split_offset_0_t_bytes32(slot) -> value {
                value := extract_from_storage_value_offset_0t_bytes32(sload(slot))

            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

            }

            function require_helper_t_stringliteral_03b20b9f6e6e7905f077509fd420fb44afc685f254bcefe49147296e1ba25590(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_03b20b9f6e6e7905f077509fd420fb44afc685f254bcefe49147296e1ba25590__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_2d893fc9f5fa2494c39ecec82df2778b33226458ccce3b9a56f5372437d54a56(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_2d893fc9f5fa2494c39ecec82df2778b33226458ccce3b9a56f5372437d54a56__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_3903056b84ed2aba2be78662dc6c5c99b160cebe9af9bd9493d0fc28ff16f6db(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_3903056b84ed2aba2be78662dc6c5c99b160cebe9af9bd9493d0fc28ff16f6db__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function require_helper_t_stringliteral_47797eaaf6df6dc2efdb1e824209400a8293aff4c1e7f6d90fcc4b3e3ba18a87(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_47797eaaf6df6dc2efdb1e824209400a8293aff4c1e7f6d90fcc4b3e3ba18a87__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function store_literal_in_memory_03b20b9f6e6e7905f077509fd420fb44afc685f254bcefe49147296e1ba25590(memPtr) {

                mstore(add(memPtr, 0), "ds-math-sub-underflow")

            }

            function store_literal_in_memory_0c49a525f6758cfb27d0ada1467d2a2e99733995423d47ae30ae4ba2ba563255(memPtr) {

                mstore(add(memPtr, 0), "UNI-V2")

            }

            function store_literal_in_memory_2d893fc9f5fa2494c39ecec82df2778b33226458ccce3b9a56f5372437d54a56(memPtr) {

                mstore(add(memPtr, 0), "UniswapV2: INVALID_SIGNATURE")

            }

            function store_literal_in_memory_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541(memPtr) {

                mstore(add(memPtr, 0), 0x1901000000000000000000000000000000000000000000000000000000000000)

            }

            function store_literal_in_memory_3903056b84ed2aba2be78662dc6c5c99b160cebe9af9bd9493d0fc28ff16f6db(memPtr) {

                mstore(add(memPtr, 0), "ds-math-add-overflow")

            }

            function store_literal_in_memory_47797eaaf6df6dc2efdb1e824209400a8293aff4c1e7f6d90fcc4b3e3ba18a87(memPtr) {

                mstore(add(memPtr, 0), "UniswapV2: EXPIRED")

            }

            function store_literal_in_memory_bfcc8ef98ffbf7b6c3fec7bf5185b566b9863e35a9d83acd49ad6824b5969738(memPtr) {

                mstore(add(memPtr, 0), "Uniswap V2")

            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint8(value) {
                if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

        }

        data ".metadata" hex"a2646970667358221220e7b89c1a886567fa9e96d430b04790fc589c7eb74e42be9741cd8870f47af72864736f6c63430008060033"
    }

}

