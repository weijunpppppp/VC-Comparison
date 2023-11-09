use vstd::prelude::*;

verus! {

proof fn Abs(x: int) -> (y:int) 
ensures 0 <= y
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