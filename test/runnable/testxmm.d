// REQUIRED_ARGS:

version (D_SIMD)
{

import core.simd;
import core.stdc.string;
import std.stdio;

/*****************************************/

void test1()
{
    void16 v1 = void,v2 = void;
    byte16 b;
    v2 = b;
    v1 = v2;
    static assert(!__traits(compiles, v1 + v2));
    static assert(!__traits(compiles, v1 - v2));
    static assert(!__traits(compiles, v1 * v2));
    static assert(!__traits(compiles, v1 / v2));
    static assert(!__traits(compiles, v1 % v2));
    static assert(!__traits(compiles, v1 & v2));
    static assert(!__traits(compiles, v1 | v2));
    static assert(!__traits(compiles, v1 ^ v2));
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    static assert(!__traits(compiles, ~v1));
    static assert(!__traits(compiles, -v1));
    static assert(!__traits(compiles, +v1));
    static assert(!__traits(compiles, !v1));

    static assert(!__traits(compiles, v1 += v2));
    static assert(!__traits(compiles, v1 -= v2));
    static assert(!__traits(compiles, v1 *= v2));
    static assert(!__traits(compiles, v1 /= v2));
    static assert(!__traits(compiles, v1 %= v2));
    static assert(!__traits(compiles, v1 &= v2));
    static assert(!__traits(compiles, v1 |= v2));
    static assert(!__traits(compiles, v1 ^= v2));
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2()
{
    byte16 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    static assert(!__traits(compiles, v1 * v2));
    static assert(!__traits(compiles, v1 / v2));
    static assert(!__traits(compiles, v1 % v2));
    v1 = v2 & v3;
    v1 = v2 | v3;
    v1 = v2 ^ v3;
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    v1 = ~v2;
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    static assert(!__traits(compiles, v1 *= v2));
    static assert(!__traits(compiles, v1 /= v2));
    static assert(!__traits(compiles, v1 %= v2));
    v1 &= v2;
    v1 |= v2;
    v1 ^= v2;
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2b()
{
    ubyte16 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    static assert(!__traits(compiles, v1 * v2));
    static assert(!__traits(compiles, v1 / v2));
    static assert(!__traits(compiles, v1 % v2));
    v1 = v2 & v3;
    v1 = v2 | v3;
    v1 = v2 ^ v3;
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    v1 = ~v2;
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    static assert(!__traits(compiles, v1 *= v2));
    static assert(!__traits(compiles, v1 /= v2));
    static assert(!__traits(compiles, v1 %= v2));
    v1 &= v2;
    v1 |= v2;
    v1 ^= v2;
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2c()
{
    short8 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    v1 = v2 * v3;
    static assert(!__traits(compiles, v1 / v2));
    static assert(!__traits(compiles, v1 % v2));
    v1 = v2 & v3;
    v1 = v2 | v3;
    v1 = v2 ^ v3;
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    v1 = ~v2;
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    v1 *= v2;
    static assert(!__traits(compiles, v1 /= v2));
    static assert(!__traits(compiles, v1 %= v2));
    v1 &= v2;
    v1 |= v2;
    v1 ^= v2;
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2d()
{
    ushort8 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    v1 = v2 * v3;
    static assert(!__traits(compiles, v1 / v2));
    static assert(!__traits(compiles, v1 % v2));
    v1 = v2 & v3;
    v1 = v2 | v3;
    v1 = v2 ^ v3;
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    v1 = ~v2;
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    v1 *= v2;
    static assert(!__traits(compiles, v1 /= v2));
    static assert(!__traits(compiles, v1 %= v2));
    v1 &= v2;
    v1 |= v2;
    v1 ^= v2;
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2e()
{
    int4 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    static assert(!__traits(compiles, v1 * v2));
    static assert(!__traits(compiles, v1 / v2));
    static assert(!__traits(compiles, v1 % v2));
    v1 = v2 & v3;
    v1 = v2 | v3;
    v1 = v2 ^ v3;
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    v1 = ~v2;
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    static assert(!__traits(compiles, v1 *= v2));
    static assert(!__traits(compiles, v1 /= v2));
    static assert(!__traits(compiles, v1 %= v2));
    v1 &= v2;
    v1 |= v2;
    v1 ^= v2;
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2f()
{
    uint4 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    static assert(!__traits(compiles, v1 * v2));
    static assert(!__traits(compiles, v1 / v2));
    static assert(!__traits(compiles, v1 % v2));
    v1 = v2 & v3;
    v1 = v2 | v3;
    v1 = v2 ^ v3;
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    v1 = ~v2;
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    static assert(!__traits(compiles, v1 *= v2));
    static assert(!__traits(compiles, v1 /= v2));
    static assert(!__traits(compiles, v1 %= v2));
    v1 &= v2;
    v1 |= v2;
    v1 ^= v2;
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2g()
{
    long2 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    static assert(!__traits(compiles, v1 * v2));
    static assert(!__traits(compiles, v1 / v2));
    static assert(!__traits(compiles, v1 % v2));
    v1 = v2 & v3;
    v1 = v2 | v3;
    v1 = v2 ^ v3;
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    v1 = ~v2;
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    static assert(!__traits(compiles, v1 *= v2));
    static assert(!__traits(compiles, v1 /= v2));
    static assert(!__traits(compiles, v1 %= v2));
    v1 &= v2;
    v1 |= v2;
    v1 ^= v2;
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2h()
{
    ulong2 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    static assert(!__traits(compiles, v1 * v2));
    static assert(!__traits(compiles, v1 / v2));
    static assert(!__traits(compiles, v1 % v2));
    v1 = v2 & v3;
    v1 = v2 | v3;
    v1 = v2 ^ v3;
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    v1 = ~v2;
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    static assert(!__traits(compiles, v1 *= v2));
    static assert(!__traits(compiles, v1 /= v2));
    static assert(!__traits(compiles, v1 %= v2));
    v1 &= v2;
    v1 |= v2;
    v1 ^= v2;
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2i()
{
    float4 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    v1 = v2 * v3;
    v1 = v2 / v3;
    static assert(!__traits(compiles, v1 % v2));
    static assert(!__traits(compiles, v1 & v2));
    static assert(!__traits(compiles, v1 | v2));
    static assert(!__traits(compiles, v1 ^ v2));
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    static assert(!__traits(compiles, ~v1));
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    v1 *= v2;
    v1 /= v2;
    static assert(!__traits(compiles, v1 %= v2));
    static assert(!__traits(compiles, v1 &= v2));
    static assert(!__traits(compiles, v1 |= v2));
    static assert(!__traits(compiles, v1 ^= v2));
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

void test2j()
{
    double2 v1,v2,v3;
    v1 = v2;
    v1 = v2 + v3;
    v1 = v2 - v3;
    v1 = v2 * v3;
    v1 = v2 / v3;
    static assert(!__traits(compiles, v1 % v2));
    static assert(!__traits(compiles, v1 & v2));
    static assert(!__traits(compiles, v1 | v2));
    static assert(!__traits(compiles, v1 ^ v2));
    static assert(!__traits(compiles, v1 ~ v2));
    static assert(!__traits(compiles, v1 ^^ v2));
    static assert(!__traits(compiles, v1 is v2));
    static assert(!__traits(compiles, v1 !is v2));
    static assert(!__traits(compiles, v1 == v2));
    static assert(!__traits(compiles, v1 != v2));
    static assert(!__traits(compiles, v1 < v2));
    static assert(!__traits(compiles, v1 > v2));
    static assert(!__traits(compiles, v1 <= v2));
    static assert(!__traits(compiles, v1 >= v2));
    static assert(!__traits(compiles, v1 << 1));
    static assert(!__traits(compiles, v1 >> 1));
    static assert(!__traits(compiles, v1 >>> 1));
    static assert(!__traits(compiles, v1 && v2));
    static assert(!__traits(compiles, v1 || v2));
    static assert(!__traits(compiles, ~v1));
    v1 = -v2;
    v1 = +v2;
    static assert(!__traits(compiles, !v1));

    v1 += v2;
    v1 -= v2;
    v1 *= v2;
    v1 /= v2;
    static assert(!__traits(compiles, v1 %= v2));
    static assert(!__traits(compiles, v1 &= v2));
    static assert(!__traits(compiles, v1 |= v2));
    static assert(!__traits(compiles, v1 ^= v2));
    static assert(!__traits(compiles, v1 ~= v2));
    static assert(!__traits(compiles, v1 ^^= v2));
    static assert(!__traits(compiles, v1 <<= 1));
    static assert(!__traits(compiles, v1 >>= 1));
    static assert(!__traits(compiles, v1 >>>= 1));
}

/*****************************************/

float4 test3()
{
    float4 a;
    a = __simd(XMM.PXOR, a, a);
    return a;
}

/*****************************************/

void test4()
{
    int4 c = 7;
    (cast(int[4])c)[3] = 4;
    (cast(int*)&c)[2] = 4;
    c.array[1] = 4;
    c.ptr[3] = 4;
    assert(c.length == 4);
}

/*****************************************/

void BaseTypeOfVector(T : __vector(T[N]), size_t N)(int i)
{
    assert(is(T == int));
    assert(N == 4);
}


void test7411()
{
    BaseTypeOfVector!(__vector(int[4]))(3);
}

/*****************************************/
// 7951

float[4] test7951()
{
    float4 v1;
    float4 v2;

    return cast(float[4])(v1+v2);
}

/*****************************************/

void test7951_2()
{
    float[4] v1 = [1,2,3,4];
    float[4] v2 = [1,2,3,4];
    float4 f1, f2, f3;
    f1.array = v1;
    f2.array = v2;
    f3 = f1 + f2;
}

/*****************************************/

void test7949()
{
    int[4] o = [1,2,3,4];
    int4 v1;
    v1.array = o;
    int4 v2;
    v2.array = o;



    auto r = __simd(XMM.ADDPS, v1,v2);

    writeln(r.array);
}

/*****************************************/

immutable ulong2 gulong2 = 0x8000_0000_0000_0000;
immutable uint4 guint4 = 0x8000_0000;
immutable ushort8 gushort8 = 0x8000;
immutable ubyte16 gubyte16 = 0x80;

immutable long2 glong2 = 0x7000_0000_0000_0000;
immutable int4 gint4 = 0x7000_0000;
immutable short8 gshort8 = 0x7000;
immutable byte16 gbyte16 = 0x70;

immutable float4 gfloat4 = 4.0;
immutable double2 gdouble2 = 8.0;

void test7414()
{
    immutable ulong2 lulong2 = 0x8000_0000_0000_0000;
    assert(memcmp(&lulong2, &gulong2, gulong2.sizeof) == 0);

    immutable uint4 luint4 = 0x8000_0000;
    assert(memcmp(&luint4, &guint4, guint4.sizeof) == 0);

    immutable ushort8 lushort8 = 0x8000;
    assert(memcmp(&lushort8, &gushort8, gushort8.sizeof) == 0);

    immutable ubyte16 lubyte16 = 0x80;
    assert(memcmp(&lubyte16, &gubyte16, gubyte16.sizeof) == 0);


    immutable long2 llong2 = 0x7000_0000_0000_0000;
    assert(memcmp(&llong2, &glong2, glong2.sizeof) == 0);

    immutable int4 lint4 = 0x7000_0000;
    assert(memcmp(&lint4, &gint4, gint4.sizeof) == 0);

    immutable short8 lshort8 = 0x7000;
    assert(memcmp(&lshort8, &gshort8, gshort8.sizeof) == 0);

    immutable byte16 lbyte16 = 0x70;
    assert(memcmp(&lbyte16, &gbyte16, gbyte16.sizeof) == 0);


    immutable float4 lfloat4 = 4.0;
    assert(memcmp(&lfloat4, &gfloat4, gfloat4.sizeof) == 0);

    immutable double2 ldouble2 = 8.0;
    assert(memcmp(&ldouble2, &gdouble2, gdouble2.sizeof) == 0);
}

/*****************************************/

void test7413()
{
    byte16 b = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
    assert(b.array[0] == 1);
    assert(b.array[1] == 2);
    assert(b.array[2] == 3);
    assert(b.array[3] == 4);
    assert(b.array[4] == 5);
    assert(b.array[5] == 6);
    assert(b.array[6] == 7);
    assert(b.array[7] == 8);
    assert(b.array[8] == 9);
    assert(b.array[9] == 10);
    assert(b.array[10] == 11);
    assert(b.array[11] == 12);
    assert(b.array[12] == 13);
    assert(b.array[13] == 14);
    assert(b.array[14] == 15);
    assert(b.array[15] == 16);

    ubyte16 ub = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
    assert(ub.array[0] == 1);
    assert(ub.array[1] == 2);
    assert(ub.array[2] == 3);
    assert(ub.array[3] == 4);
    assert(ub.array[4] == 5);
    assert(ub.array[5] == 6);
    assert(ub.array[6] == 7);
    assert(ub.array[7] == 8);
    assert(ub.array[8] == 9);
    assert(ub.array[9] == 10);
    assert(ub.array[10] == 11);
    assert(ub.array[11] == 12);
    assert(ub.array[12] == 13);
    assert(ub.array[13] == 14);
    assert(ub.array[14] == 15);
    assert(ub.array[15] == 16);

    short8 s = [1,2,3,4,5,6,7,8];
    assert(s.array[0] == 1);
    assert(s.array[1] == 2);
    assert(s.array[2] == 3);
    assert(s.array[3] == 4);
    assert(s.array[4] == 5);
    assert(s.array[5] == 6);
    assert(s.array[6] == 7);
    assert(s.array[7] == 8);

    ushort8 us = [1,2,3,4,5,6,7,8];
    assert(us.array[0] == 1);
    assert(us.array[1] == 2);
    assert(us.array[2] == 3);
    assert(us.array[3] == 4);
    assert(us.array[4] == 5);
    assert(us.array[5] == 6);
    assert(us.array[6] == 7);
    assert(us.array[7] == 8);

    int4 i = [1,2,3,4];
    assert(i.array[0] == 1);
    assert(i.array[1] == 2);
    assert(i.array[2] == 3);
    assert(i.array[3] == 4);

    uint4 ui = [1,2,3,4];
    assert(ui.array[0] == 1);
    assert(ui.array[1] == 2);
    assert(ui.array[2] == 3);
    assert(ui.array[3] == 4);

    long2 l = [1,2];
    assert(l.array[0] == 1);
    assert(l.array[1] == 2);

    ulong2 ul = [1,2];
    assert(ul.array[0] == 1);
    assert(ul.array[1] == 2);

    float4 f = [1,2,3,4];
    assert(f.array[0] == 1);
    assert(f.array[1] == 2);
    assert(f.array[2] == 3);
    assert(f.array[3] == 4);

    double2 d = [1,2];
    assert(d.array[0] == 1);
    assert(d.array[1] == 2);
}

/*****************************************/

byte16 b = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
ubyte16 ub = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
short8 s = [1,2,3,4,5,6,7,8];
ushort8 us = [1,2,3,4,5,6,7,8];
int4 i = [1,2,3,4];
uint4 ui = [1,2,3,4];
long2 l = [1,2];
ulong2 ul = [1,2];
float4 f = [1,2,3,4];
double2 d = [1,2];

void test7413_2()
{
    assert(b.array[0] == 1);
    assert(b.array[1] == 2);
    assert(b.array[2] == 3);
    assert(b.array[3] == 4);
    assert(b.array[4] == 5);
    assert(b.array[5] == 6);
    assert(b.array[6] == 7);
    assert(b.array[7] == 8);
    assert(b.array[8] == 9);
    assert(b.array[9] == 10);
    assert(b.array[10] == 11);
    assert(b.array[11] == 12);
    assert(b.array[12] == 13);
    assert(b.array[13] == 14);
    assert(b.array[14] == 15);
    assert(b.array[15] == 16);

    assert(ub.array[0] == 1);
    assert(ub.array[1] == 2);
    assert(ub.array[2] == 3);
    assert(ub.array[3] == 4);
    assert(ub.array[4] == 5);
    assert(ub.array[5] == 6);
    assert(ub.array[6] == 7);
    assert(ub.array[7] == 8);
    assert(ub.array[8] == 9);
    assert(ub.array[9] == 10);
    assert(ub.array[10] == 11);
    assert(ub.array[11] == 12);
    assert(ub.array[12] == 13);
    assert(ub.array[13] == 14);
    assert(ub.array[14] == 15);
    assert(ub.array[15] == 16);

    assert(s.array[0] == 1);
    assert(s.array[1] == 2);
    assert(s.array[2] == 3);
    assert(s.array[3] == 4);
    assert(s.array[4] == 5);
    assert(s.array[5] == 6);
    assert(s.array[6] == 7);
    assert(s.array[7] == 8);

    assert(us.array[0] == 1);
    assert(us.array[1] == 2);
    assert(us.array[2] == 3);
    assert(us.array[3] == 4);
    assert(us.array[4] == 5);
    assert(us.array[5] == 6);
    assert(us.array[6] == 7);
    assert(us.array[7] == 8);

    assert(i.array[0] == 1);
    assert(i.array[1] == 2);
    assert(i.array[2] == 3);
    assert(i.array[3] == 4);

    assert(ui.array[0] == 1);
    assert(ui.array[1] == 2);
    assert(ui.array[2] == 3);
    assert(ui.array[3] == 4);

    assert(l.array[0] == 1);
    assert(l.array[1] == 2);

    assert(ul.array[0] == 1);
    assert(ul.array[1] == 2);

    assert(f.array[0] == 1);
    assert(f.array[1] == 2);
    assert(f.array[2] == 3);
    assert(f.array[3] == 4);

    assert(d.array[0] == 1);
    assert(d.array[1] == 2);
}

/*****************************************/

float bug8060(float x) {
    int i = *cast(int*)&x;
    ++i;
    return *cast(float*)&i;
}

/*****************************************/

float4 test5(float4 a, float4 b)
{
    a = __simd(XMM.ADDPD, a, b);
    a = __simd(XMM.ADDSS, a, b);
    a = __simd(XMM.ADDSD, a, b);
    a = __simd(XMM.ADDPS, a, b);
    a = __simd(XMM.PADDB, a, b);
    a = __simd(XMM.PADDW, a, b);
    a = __simd(XMM.PADDD, a, b);
    a = __simd(XMM.PADDQ, a, b);

    a = __simd(XMM.SUBPD, a, b);
    a = __simd(XMM.SUBSS, a, b);
    a = __simd(XMM.SUBSD, a, b);
    a = __simd(XMM.SUBPS, a, b);
    a = __simd(XMM.PSUBB, a, b);
    a = __simd(XMM.PSUBW, a, b);
    a = __simd(XMM.PSUBD, a, b);
    a = __simd(XMM.PSUBQ, a, b);

    a = __simd(XMM.MULPD, a, b);
    a = __simd(XMM.MULSS, a, b);
    a = __simd(XMM.MULSD, a, b);
    a = __simd(XMM.MULPS, a, b);
    a = __simd(XMM.PMULLW, a, b);

    a = __simd(XMM.DIVPD, a, b);
    a = __simd(XMM.DIVSS, a, b);
    a = __simd(XMM.DIVSD, a, b);
    a = __simd(XMM.DIVPS, a, b);

    a = __simd(XMM.PAND, a, b);
    a = __simd(XMM.POR, a, b);

    a = __simd(XMM.UCOMISS, a, b);
    a = __simd(XMM.UCOMISD, a, b);

    a = __simd(XMM.XORPS, a, b);
    a = __simd(XMM.XORPD, a, b);

    a = __simd_sto(XMM.STOSS, a, b);
    a = __simd_sto(XMM.STOSD, a, b);
    a = __simd_sto(XMM.STOAPS, a, b);
    a = __simd_sto(XMM.STOAPD, a, b);
    a = __simd_sto(XMM.STODQA, a, b);
    //a = __simd_sto(XMM.STOD, a, b);
    a = __simd_sto(XMM.STOQ, a, b);

    a = __simd(XMM.LODSS, a);
    a = __simd(XMM.LODSD, a);
    a = __simd(XMM.LODAPS, a);
    a = __simd(XMM.LODAPD, a);
    a = __simd(XMM.LODDQA, a);
    //a = __simd(XMM.LODD, a);
    a = __simd(XMM.LODQ, a);

    a = __simd(XMM.LODDQU, a);
    a = __simd_sto(XMM.STODQU, a, b);
    //MOVDQ2Q  = 0xF20FD6,        // MOVDQ2Q mmx, xmm          F2 0F D6 /r
/+
    LODHPD   = 0x660F16,        // MOVHPD xmm, mem64         66 0F 16 /r
    STOHPD   = 0x660F17,        // MOVHPD mem64, xmm         66 0F 17 /r
    LODHPS   = 0x0F16,          // MOVHPS xmm, mem64         0F 16 /r
    STOHPS   = 0x0F17,          // MOVHPS mem64, xmm         0F 17 /r
    MOVLHPS  = 0x0F16,          // MOVLHPS xmm1, xmm2        0F 16 /r
    LODLPD   = 0x660F12,        // MOVLPD xmm, mem64         66 0F 12 /r
    STOLPD   = 0x660F13,        // MOVLPD mem64, xmm         66 0F 13 /r
    a = __simd(XMM.LODLPS, a, b);
    STOLPS   = 0x0F13,          // MOVLPS mem64, xmm         0F 13 /r
    MOVMSKPD = 0x660F50,        // MOVMSKPD reg32, xmm 66 0F 50 /r
    MOVMSKPS = 0x0F50,          // MOVMSKPS reg32, xmm 0F 50 /r
    MOVNTDQ  = 0x660FE7,        // MOVNTDQ mem128, xmm 66 0F E7 /r
    MOVNTI   = 0x0FC3,          // MOVNTI m32,r32 0F C3 /r
                                // MOVNTI m64,r64 0F C3 /r
    MOVNTPD  = 0x660F2B,        // MOVNTPD mem128, xmm 66 0F 2B /r
    MOVNTPS  = 0x0F2B,          // MOVNTPS mem128, xmm 0F 2B /r
    //MOVNTQ   = 0x0FE7,          // MOVNTQ m64, mmx 0F E7 /r
    //MOVQ2DQ  = 0xF30FD6,        // MOVQ2DQ xmm, mmx F3 0F D6 /r
 +/
    a = __simd(XMM.LODUPD, a, b);
    a = __simd_sto(XMM.STOUPD, a, b);
    a = __simd(XMM.LODUPS, a, b);
    a = __simd_sto(XMM.STOUPS, a, b);

    a = __simd(XMM.PACKSSDW, a, b);
    a = __simd(XMM.PACKSSWB, a, b);
    a = __simd(XMM.PACKUSWB, a, b);
    a = __simd(XMM.PADDSB, a, b);
    a = __simd(XMM.PADDSW, a, b);
    a = __simd(XMM.PADDUSB, a, b);
    a = __simd(XMM.PADDUSW, a, b);
    a = __simd(XMM.PANDN, a, b);
    a = __simd(XMM.PCMPEQB, a, b);
    a = __simd(XMM.PCMPEQD, a, b);
    a = __simd(XMM.PCMPEQW, a, b);
    a = __simd(XMM.PCMPGTB, a, b);
    a = __simd(XMM.PCMPGTD, a, b);
    a = __simd(XMM.PCMPGTW, a, b);
    a = __simd(XMM.PMADDWD, a, b);
    a = __simd(XMM.PSLLW, a, b);
    a = __simd_ib(XMM.PSLLW, a, cast(ubyte)0x7A);
    a = __simd(XMM.PSLLD, a, b);
    a = __simd_ib(XMM.PSLLD, a, cast(ubyte)0x7A);
    a = __simd(XMM.PSLLQ, a, b);
    a = __simd_ib(XMM.PSLLQ, a, cast(ubyte)0x7A);
    a = __simd(XMM.PSRAW, a, b);
    a = __simd_ib(XMM.PSRAW, a, cast(ubyte)0x7A);
    a = __simd(XMM.PSRAD, a, b);
    a = __simd_ib(XMM.PSRAD, a, cast(ubyte)0x7A);
    a = __simd(XMM.PSRLW, a, b);
    a = __simd_ib(XMM.PSRLW, a, cast(ubyte)0x7A);
    a = __simd(XMM.PSRLD, a, b);
    a = __simd_ib(XMM.PSRLD, a, cast(ubyte)0x7A);
    a = __simd(XMM.PSRLQ, a, b);
    a = __simd_ib(XMM.PSRLQ, a, cast(ubyte)0x7A);

    a = __simd(XMM.PSUBSB, a, b);
    a = __simd(XMM.PSUBSW, a, b);
    a = __simd(XMM.PSUBUSB, a, b);
    a = __simd(XMM.PSUBUSW, a, b);

    a = __simd(XMM.PUNPCKHBW, a, b);
    a = __simd(XMM.PUNPCKHDQ, a, b);
    a = __simd(XMM.PUNPCKHWD, a, b);
    a = __simd(XMM.PUNPCKLBW, a, b);
    a = __simd(XMM.PUNPCKLDQ, a, b);
    a = __simd(XMM.PUNPCKLWD, a, b);

    a = __simd(XMM.PXOR, a, b);
    a = __simd(XMM.ANDPD, a, b);
    a = __simd(XMM.ANDPS, a, b);
    a = __simd(XMM.ANDNPD, a, b);
    a = __simd(XMM.ANDNPS, a, b);

    a = __simd(XMM.CMPPD, a, b, 0x7A);
    a = __simd(XMM.CMPSS, a, b, 0x7A);
    a = __simd(XMM.CMPSD, a, b, 0x7A);
    a = __simd(XMM.CMPPS, a, b, 0x7A);

    a = __simd(XMM.CVTDQ2PD, a, b);
    a = __simd(XMM.CVTDQ2PS, a, b);
    a = __simd(XMM.CVTPD2DQ, a, b);
    //a = __simd(XMM.CVTPD2PI, a, b);
    a = __simd(XMM.CVTPD2PS, a, b);
    a = __simd(XMM.CVTPI2PD, a, b);
    a = __simd(XMM.CVTPI2PS, a, b);
    a = __simd(XMM.CVTPS2DQ, a, b);
    a = __simd(XMM.CVTPS2PD, a, b);
    //a = __simd(XMM.CVTPS2PI, a, b);
    //a = __simd(XMM.CVTSD2SI, a, b);
    //a = __simd(XMM.CVTSD2SI, a, b);

    a = __simd(XMM.CVTSD2SS, a, b);
    //a = __simd(XMM.CVTSI2SD, a, b);
    //a = __simd(XMM.CVTSI2SD, a, b);
    //a = __simd(XMM.CVTSI2SS, a, b);
    //a = __simd(XMM.CVTSI2SS, a, b);
    a = __simd(XMM.CVTSS2SD, a, b);
    //a = __simd(XMM.CVTSS2SI, a, b);
    //a = __simd(XMM.CVTSS2SI, a, b);
    //a = __simd(XMM.CVTTPD2PI, a, b);
    a = __simd(XMM.CVTTPD2DQ, a, b);
    a = __simd(XMM.CVTTPS2DQ, a, b);
    //a = __simd(XMM.CVTTPS2PI, a, b);
    //a = __simd(XMM.CVTTSD2SI, a, b);
    //a = __simd(XMM.CVTTSD2SI, a, b);
    //a = __simd(XMM.CVTTSS2SI, a, b);
    //a = __simd(XMM.CVTTSS2SI, a, b);

    a = __simd(XMM.MASKMOVDQU, a, b);
    //a = __simd(XMM.MASKMOVQ, a, b);

    a = __simd(XMM.MAXPD, a, b);
    a = __simd(XMM.MAXPS, a, b);
    a = __simd(XMM.MAXSD, a, b);
    a = __simd(XMM.MAXSS, a, b);

    a = __simd(XMM.MINPD, a, b);
    a = __simd(XMM.MINPS, a, b);
    a = __simd(XMM.MINSD, a, b);
    a = __simd(XMM.MINSS, a, b);

    a = __simd(XMM.ORPD, a, b);
    a = __simd(XMM.ORPS, a, b);
    a = __simd(XMM.PAVGB, a, b);
    a = __simd(XMM.PAVGW, a, b);
    a = __simd(XMM.PMAXSW, a, b);
    //a = __simd(XMM.PINSRW, a, b);
    a = __simd(XMM.PMAXUB, a, b);
    a = __simd(XMM.PMINSB, a, b);
    a = __simd(XMM.PMINUB, a, b);
    //a = __simd(XMM.PMOVMSKB, a, b);
    a = __simd(XMM.PMULHUW, a, b);
    a = __simd(XMM.PMULHW, a, b);
    a = __simd(XMM.PMULUDQ, a, b);
    a = __simd(XMM.PSADBW, a, b);
    a = __simd(XMM.PUNPCKHQDQ, a, b);
    a = __simd(XMM.PUNPCKLQDQ, a, b);
    a = __simd(XMM.RCPPS, a, b);
    a = __simd(XMM.RCPSS, a, b);
    a = __simd(XMM.RSQRTPS, a, b);
    a = __simd(XMM.RSQRTSS, a, b);
    a = __simd(XMM.SQRTPD, a, b);
    a = __simd(XMM.SHUFPD, a, b, 0xA7);
    a = __simd(XMM.SHUFPS, a, b, 0x7A);
    a = __simd(XMM.SQRTPS, a, b);
    a = __simd(XMM.SQRTSD, a, b);
    a = __simd(XMM.SQRTSS, a, b);
    a = __simd(XMM.UNPCKHPD, a, b);
    a = __simd(XMM.UNPCKHPS, a, b);
    a = __simd(XMM.UNPCKLPD, a, b);
    a = __simd(XMM.UNPCKLPS, a, b);

    a = __simd(XMM.PSHUFD, a, b, 0x7A);
    a = __simd(XMM.PSHUFHW, a, b, 0x7A);
    a = __simd(XMM.PSHUFLW, a, b, 0x7A);
    //a = __simd(XMM.PSHUFW, a, b, 0x7A);
    a = __simd_ib(XMM.PSLLDQ, a, cast(ubyte)0x7A);
    a = __simd_ib(XMM.PSRLDQ, a, cast(ubyte)0x7A);

/**/

    a = __simd(XMM.BLENDPD, a, b, 0x7A);
    a = __simd(XMM.BLENDPS, a, b, 0x7A);

    a = __simd(XMM.DPPD, a, b, 0x7A);
    a = __simd(XMM.DPPS, a, b, 0x7A);

    a = __simd(XMM.MPSADBW, a, b, 0x7A);
    a = __simd(XMM.PBLENDW, a, b, 0x7A);

    a = __simd(XMM.ROUNDPD, a, b, 0x7A);
    a = __simd(XMM.ROUNDPS, a, b, 0x7A);
    a = __simd(XMM.ROUNDSD, a, b, 0x7A);
    a = __simd(XMM.ROUNDSS, a, b, 0x7A);

    return a;
}

/*****************************************/
/+
// 9200

void bar9200(double[2] a)
{
    assert(a[0] == 1);
    assert(a[1] == 2);
}

double2 * v9200(double2* a)
{
    return a;
}

void test9200()
{
    double2 a = [1, 2];

    *v9200(&a) = a;

    bar9200(a.array);
}
+/

/*****************************************/

// 9304 and 9322

float4 foo9304(float4 a)
{
    return -a;
}


void test9304()
{
    auto a = foo9304([0, 1, 2, 3]);
    //writeln(a.array);
    assert(a.array == [0,-1,-2,-3]);
}

/*****************************************/

int main()
{
    test1();
    test2();
    test2b();
    test2c();
    test2d();
    test2e();
    test2f();
    test2g();
    test2h();
    test2i();
    test2j();

    test3();
    test4();
    test7411();

    test7951();
    test7951_2();
    test7949();
    test7414();
    test7413();
    test7413_2();
//    test9200();
    test9304();

    return 0;
}

}
else
{

int main() { return 0; }

}
