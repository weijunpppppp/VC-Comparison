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

proof fn Testing()
{
  let v:int = Abs(3);
  assert(0 <= v);
}

fn main() {

}

} // verus!