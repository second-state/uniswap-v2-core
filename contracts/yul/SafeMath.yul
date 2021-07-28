/*=====================================================*
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *=====================================================*/


object "SafeMath_2039" {
    code {
        /// @src 8:131,561
        mstore(64, 128)
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SafeMath_2039_deployed"), datasize("SafeMath_2039_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SafeMath_2039_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function constructor_SafeMath_2039() {

            /// @src 8:131,561

        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

    }
    object "SafeMath_2039_deployed" {
        code {
            /// @src 8:131,561
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

        data ".metadata" hex"a264697066735822122057588e657ff4c25fe3d1f6947fe1757fc1c883e904989a86add49880e6d1305e64736f6c63430008060033"
    }

}

