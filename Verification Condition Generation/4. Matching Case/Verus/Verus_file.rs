use vstd::prelude::*;

verus! {

	enum Operator {
		Add(int),
		Minus(int),
		Multiply(int),
	}

	spec fn Matching(x: int, op:Operator) -> int
	{
		match op {
			Operator::Add(a) => x+a,
			Operator::Minus(a) => x-a,
			Operator::Multiply(a) => x*a,
		}
	}

	proof fn Testing()
	{
		assert(Matching(2, Operator::Add(3)) == 5);
	}

	fn main() {
		//TODO:assert and copy
	}
}
