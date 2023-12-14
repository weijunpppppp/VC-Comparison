datatype Operator = Add(int) | Minus(int) | Multiply(int) 

function Matching(x: int, op:Operator): int
{
  match op{
    case Add(a) => x+a
    case Minus(a) => x-a
    case Multiply(a) => x*a
  }
}

method Testing()
{
  assert Matching(2, Operator.Add(3)) == 5;
}