/*=====================================================*
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *=====================================================*/


object "UQ112x112_1846" {
    code {
        /// @src 9:182,576
        mstore(64, 128)
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("UQ112x112_1846_deployed"), datasize("UQ112x112_1846_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("UQ112x112_1846_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function constructor_UQ112x112_1846() {

            /// @src 9:182,576

        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

    }
    object "UQ112x112_1846_deployed" {
        code {
            /// @src 9:182,576
            mstore(64, 128)

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                default {}
            }
            if iszero(calldatasize()) {  }
            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

        }

        data ".metadata" hex"a2646970667358221220ae1d65e83a0b3b599efc7878f97ea044d4d616090a01a85ef95302d1184c2c7964736f6c63430008060033"
    }

}

