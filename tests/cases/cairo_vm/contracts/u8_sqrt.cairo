#[starknet::contract]
mod U8Sqrt {
    #[storage]
    struct Storage {}

    use core::num::traits::Sqrt;
    use core::traits::Into;
    use traits::TryInto;
    use option::OptionTrait;


    #[external(v0)]
    fn sqrt(self: @ContractState, num: felt252) -> felt252 {
        let num_in_u8: u8 = num.try_into().unwrap();
        let a: u8 = num_in_u8.sqrt();
        let to_return: felt252 = a.into();
        to_return
    }
}
