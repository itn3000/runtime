// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

.assembly extern mscorlib { auto }
.assembly extern System.Runtime { auto }

.assembly TypeIntrinsicsTests { }

.class private auto ansi beforefieldinit Test_TypeIntrinsics_il
       extends [mscorlib]System.Object
{
  .method private hidebysig static int32 Main() cil managed
  {
    .entrypoint
    .maxstack  1
    // it's not currently possible to produce `ldtoken [type]&` in C#
    ldtoken    string&
    call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    call       instance bool [System.Runtime]System.Type::get_IsValueType()
    brtrue.s   FAILED

    ldtoken    valuetype [System.Runtime]System.Int16&
    call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    call       instance bool [System.Runtime]System.Type::get_IsValueType()
    brtrue.s   FAILED

    ldtoken    object&
    call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    call       instance bool [System.Runtime]System.Type::get_IsValueType()
    brtrue.s   FAILED

    ldtoken    valuetype [System.Runtime]System.Decimal&
    call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    call       instance bool [System.Runtime]System.Type::get_IsValueType()
    brtrue.s   FAILED

    ldc.i4.s   100
    ret
FAILED:
    ldc.i4.s   42
    ret
  }
}
