/*
TEST_OUTPUT:
---
fail_compilation/fail304.d(15): Error: cannot cast from Small to Large
---
*/

struct Small { uint x; }
struct Large { uint x, y, z; }
Small foo() { return Small(); }
void main()
{
    Large l;
    Small s;
    l = cast(Large)foo();
}
