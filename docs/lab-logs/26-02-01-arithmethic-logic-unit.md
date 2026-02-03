# Hack Computer's ALU

ALU, or an Arithmetic Logic Unit. I would say it is an advanced Mux logic, because I see the similar pattern here: 2 Inputs, 1 Output, and it has a controller to control how the output will be generated.

## Controllers

Our Hack Computer has 6 controllers:

1. **zx (zero x)**: Sets whatever `x` value to 0.
2. **nx (negate x)**: Sets `x` value to its bitwise negation (*!x*).
3. **zy (zero y)**: Sets whatever `y` value to 0.
4. **ny (negate y)**: Sets `y` value to its bitwise negation (*!y*).
5. **f (function)**: Selects which computation to run, the `+` or `&`.
    - 1 for "+"
    - 0 for "&".
6. **no (negate output)**: Converts `out` value to its bitwise negation.

## Output control bits

This is additional metadata for output that will come into play when we build the complete computer's architecture.

1. **zr**: This represents if the output is 0 or not.
2. **ng**: This represents if the output is negative or not.
