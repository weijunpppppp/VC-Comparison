use vstd::prelude::*;

verus! {

spec fn Abs(x: int) -> (y:int) 

{
    if x < 0 {
        -x
    } else {
        x
    }
}

fn main() {

}

} // verus!