use vstd::prelude::*;

verus! {
    proof fn AddCommutes(x: int, y: int)
        ensures x + y == y + x
    {}

    fn main() {}
}
