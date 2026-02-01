# Hack Computer's ALU

ALU, or an Arithmetic Logic Unit. I would say it is an advanced Mux logic, because I see the similar pattern here: 1 Input, 2 Outputs, has a controller to control how the output will be generated.

## Controllers

Our Hack Computer has 6 controllers:

1. **zx (zero x)**: Set whatever `x` value to 0.
2. **nx (negate x)**: Converts `x` value to its arithmetic inverse (*!x*).
3. **zy (zero y)**: Set whatever `y` value to 0.
2. **ny (negate y)**: Converts `y` value to its arithmetic inverse (*!y*).
5. **f (function)**: Selects which computation to run, the `+` or `&`.
    - 1 for "+"
    - 0 for "&".
6. **no (negate output)**: Converts `out` value to its arithmetic inverse.

## Output control bits

This is an additional metadata for output that will come into play when we build the complete computer's architecture.

1. **zr**: This represent if the input is 0 or not.
2. **ng**: This represent if the input is negative or not.