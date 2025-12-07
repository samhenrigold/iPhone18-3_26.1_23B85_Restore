uint64_t Air::FunctionConstantValue::value_as_ConstantFloat(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 3) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantFloat::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantFloat", 0x11u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantFloat2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 4) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantFloat2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantFloat2", 0x12u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 8; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantFloat3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 5) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantFloat3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantFloat3", 0x12u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 12; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantFloat4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 6) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantFloat4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantFloat4", 0x12u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantHalf(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 16) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantHalf::HashImpl(__int16 *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantHalf", 0x10u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 2u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantHalf2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 17) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantHalf2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantHalf2", 0x11u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 4; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantHalf3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 18) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantHalf3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantHalf3", 0x11u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 6; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantHalf4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 19) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantHalf4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantHalf4", 0x11u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 8; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantInt(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 29) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantInt::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantInt", 0xFu);
  data = *a1;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantInt2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 30) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantInt2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantInt2", 0x10u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 8; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantInt3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 31) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::ConstantInt3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantInt3", 0x10u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 12; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantInt4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 32)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantInt4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantInt4", 0x10u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUInt(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 33)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUInt::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUInt", 0x10u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUInt2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 34)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUInt2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUInt2", 0x11u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 8; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUInt3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 35)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUInt3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUInt3", 0x11u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 12; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUInt4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 36)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUInt4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUInt4", 0x11u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantShort(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 37)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantShort::HashImpl(__int16 *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantShort", 0x11u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 2u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantShort2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 38)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantShort2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantShort2", 0x12u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 4; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantShort3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 39)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantShort3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantShort3", 0x12u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 6; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantShort4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 40)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantShort4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantShort4", 0x12u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 8; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUShort(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 41)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUShort::HashImpl(__int16 *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUShort", 0x12u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 2u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUShort2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 42)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUShort2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUShort2", 0x13u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 4; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUShort3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 43)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUShort3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUShort3", 0x13u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 6; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUShort4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 44)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUShort4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUShort4", 0x13u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 8; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantChar(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 45)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantChar::HashImpl(char *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantChar", 0x10u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantChar2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 46)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantChar2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantChar2", 0x11u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 2; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantChar3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 47)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantChar3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantChar3", 0x11u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 3; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantChar4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 48)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantChar4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantChar4", 0x11u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 4; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUChar(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 49)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUChar::HashImpl(char *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUChar", 0x11u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUChar2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 50)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUChar2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUChar2", 0x12u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 2; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUChar3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 51)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUChar3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUChar3", 0x12u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 3; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUChar4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 52)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUChar4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUChar4", 0x12u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 4; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantBool(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 53)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantBool::HashImpl(_BYTE *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantBool", 0x10u);
  data = *a1 != 0;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantBool2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 54)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantBool2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantBool2", 0x11u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 2; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantBool3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 55)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantBool3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantBool3", 0x11u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 3; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantBool4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 56)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantBool4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantBool4", 0x11u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 4; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantLong(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 81)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantLong::HashImpl(uint64_t *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantLong", 0x10u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 8u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantLong2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 82)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantLong2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantLong2", 0x11u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantLong3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 83)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantLong3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantLong3", 0x11u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 24; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantLong4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 84)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantLong4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantLong4", 0x11u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 32; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantULong(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 85)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantULong::HashImpl(uint64_t *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantULong", 0x11u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 8u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantULong2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 86)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantULong2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantULong2", 0x12u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantULong3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 87)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantULong3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantULong3", 0x12u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 24; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantULong4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 88)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantULong4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantULong4", 0x12u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 32; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantDouble(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 89)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantDouble::HashImpl(uint64_t *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantDouble", 0x12u);
  data = *a1;
  return CC_SHA256_Update(c, &data, 8u);
}

uint64_t Air::FunctionConstantValue::value_as_ConstantDouble2(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 90)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantDouble2::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantDouble2", 0x13u);
  if (a1)
  {
    data = 2;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantDouble3(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 91)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantDouble3::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantDouble3", 0x13u);
  if (a1)
  {
    data = 3;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 24; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantDouble4(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 92)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantDouble4::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantDouble4", 0x13u);
  if (a1)
  {
    data = 4;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 32; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantFloat8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 93)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantFloat8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantFloat8", 0x12u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 32; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantFloat16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 94)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantFloat16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantFloat16", 0x13u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 64; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantHalf8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 95)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantHalf8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantHalf8", 0x11u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantHalf16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 96)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantHalf16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantHalf16", 0x12u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 32; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantInt8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 97)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantInt8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantInt8", 0x10u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 32; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantInt16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 98)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantInt16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantInt16", 0x11u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 64; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUInt8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 99)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUInt8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUInt8", 0x11u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 32; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUInt16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 100)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUInt16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUInt16", 0x12u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 64; i += 4)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 4u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantShort8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 101)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantShort8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantShort8", 0x12u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantShort16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 102)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantShort16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantShort16", 0x13u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 32; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUShort8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 103)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUShort8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUShort8", 0x13u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUShort16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 104)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUShort16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUShort16", 0x14u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 32; i += 2)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 2u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantChar8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 105)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantChar8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantChar8", 0x11u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 8; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantChar16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 106)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantChar16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantChar16", 0x12u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUChar8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 107)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUChar8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUChar8", 0x12u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 8; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantUChar16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 108)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantUChar16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantUChar16", 0x13u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantLong8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 109)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantLong8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantLong8", 0x11u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 64; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantLong16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 110)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantLong16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantLong16", 0x12u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 128; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantULong8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 111)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantULong8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantULong8", 0x12u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 64; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantULong16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 112)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantULong16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantULong16", 0x13u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 128; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantDouble8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 113)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantDouble8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantDouble8", 0x13u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 64; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantDouble16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 114)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantDouble16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantDouble16", 0x14u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 128; i += 8)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 8u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantBool8(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 119)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantBool8::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantBool8", 0x11u);
  if (a1)
  {
    data = 8;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 8; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t Air::FunctionConstantValue::value_as_ConstantBool16(Air::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 7 || !v1[3])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 9 && *(this + v1[3]) == 120)
  {
    v3 = v1[4];
    if (v1[4])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Air::ConstantBool16::HashImpl(uint64_t a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.ConstantBool16", 0x12u);
  if (a1)
  {
    data = 16;
    CC_SHA256_Update(c, &data, 2u);
    for (i = 0; i != 16; ++i)
    {
      v7 = *(a1 + i);
      result = CC_SHA256_Update(c, &v7, 1u);
    }
  }

  else
  {
    v8 = 0;
    return CC_SHA256_Update(c, &v8, 4u);
  }

  return result;
}

uint64_t *std::vector<NSObject  {objcproto16OS_dispatch_data}*>::__init_with_size[abi:ne200100]<NSObject  {objcproto16OS_dispatch_data}**,NSObject  {objcproto16OS_dispatch_data}**>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185C8ECD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::FunctionStitching::Node::HashImpl(AirReflection::Node *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.Node", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 5u)
  {
    goto LABEL_23;
  }

  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(a1 + v7);
  if (v8 > 5)
  {
    if (v8 <= 8)
    {
      if (v8 == 6)
      {
        v22 = AirReflection::Node::node_as_MeshFunction(a1);
        return Mtl::FunctionStitching::TextureNode::HashImpl(v22, c);
      }

      else if (v8 == 7)
      {
        v19 = AirReflection::Node::node_as_ObjectFunction(a1);
        return Mtl::FunctionStitching::SamplerNode::HashImpl(v19, c);
      }

      else
      {
        v9 = Mtl4::FunctionStitching::Node::node_as_ThreadgroupNode(a1);
        return Mtl::FunctionStitching::ThreadgroupNode::HashImpl(v9, c);
      }
    }

    switch(v8)
    {
      case 9:
        Mtl4::FunctionStitching::Node::node_as_ImageblockNode(a1);
        v14 = "Mtl.FunctionStitching.ImageblockNode";
        v15 = c;
        v16 = 36;
        return CC_SHA256_Update(v15, v14, v16);
      case 10:
        v20 = Mtl4::FunctionStitching::Node::node_as_BuiltinNode(a1);
        return Mtl::FunctionStitching::BuiltinNode::HashImpl(v20, c);
      case 11:
        v12 = Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(a1);
        return Mtl::FunctionStitching::EarlyReturnNode::HashImpl(v12, c);
    }

LABEL_23:
    v24 = 0;
    v14 = &v24;
    v15 = c;
    v16 = 4;
    return CC_SHA256_Update(v15, v14, v16);
  }

  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v17 = AirReflection::Node::node_as_FragmentFunction(a1);
      return Mtl::FunctionStitching::InputNode::HashImpl(v17, c);
    }

    if (v8 == 2)
    {
      v13 = AirReflection::Node::node_as_KernelFunction(a1);
      return Mtl::FunctionStitching::FunctionNode::HashImpl(v13, c);
    }

    goto LABEL_23;
  }

  if (v8 == 3)
  {
    v21 = AirReflection::Node::node_as_VertexFunction(a1);
    return Mtl::FunctionStitching::BufferNode::HashImpl(v21, c);
  }

  else if (v8 == 4)
  {
    v18 = AirReflection::Node::node_as_VisibleFunction(a1);
    return Mtl::FunctionStitching::BufferAddressNode::HashImpl(v18, c);
  }

  else
  {
    v11 = AirReflection::Node::node_as_IntersectionFunction(a1);
    return Mtl::FunctionStitching::BufferDataNode::HashImpl(v11, c);
  }
}

uint64_t Mtl::FunctionStitching::Attribute::HashImpl(Mtl4::FunctionConstantValue *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.Attribute", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 5u)
  {
    goto LABEL_10;
  }

  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(a1 + v7);
  if (v8 == 2)
  {
    Mtl4::FunctionConstantValue::id_as_FunctionConstantName(a1);
    v9 = "Mtl.FunctionStitching.KernelAttribute";
    v10 = c;
    v11 = 37;
    return CC_SHA256_Update(v10, v9, v11);
  }

  if (v8 == 1)
  {
    Mtl4::FunctionConstantValue::id_as_FunctionConstantIndex(a1);
    v9 = "Mtl.FunctionStitching.AlwaysInlineAttribute";
    v10 = c;
    v11 = 43;
  }

  else
  {
LABEL_10:
    v14 = 0;
    v9 = &v14;
    v10 = c;
    v11 = 4;
  }

  return CC_SHA256_Update(v10, v9, v11);
}

uint64_t Mtl::FunctionStitching::InputNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.InputNode", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Mtl::FunctionStitching::FunctionNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.FunctionNode", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "Mtl.FunctionStitching.NodeId", 0x1Cu);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    result = CC_SHA256_Update(c, &data, 4u);
    v21 = *v19;
    if (v21)
    {
      v22 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "Mtl.FunctionStitching.NodeId", 0x1Cu);
        v23 = *v22++;
        data = v23;
        result = CC_SHA256_Update(c, &data, 4u);
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t Mtl::FunctionStitching::BufferNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.BufferNode", 0x20u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  v10 = v7;
  return CC_SHA256_Update(c, &v10, 4u);
}

uint64_t Mtl::FunctionStitching::BufferAddressNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.BufferAddressNode", 0x27u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    Mtl::FunctionStitching::BufferNode::HashImpl((a1 + v5 + *(a1 + v5)), c);
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      v7 = *(a1 + v7);
    }
  }

  v10 = v7;
  return CC_SHA256_Update(c, &v10, 8u);
}

uint64_t Mtl::FunctionStitching::BufferDataNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.BufferDataNode", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5 + *(a1 + v5));

    return Mtl::FunctionStitching::BufferAddressNode::HashImpl(v6, c);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t Mtl::FunctionStitching::TextureNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.TextureNode", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Mtl::FunctionStitching::SamplerNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.SamplerNode", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Mtl::FunctionStitching::ThreadgroupNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.ThreadgroupNode", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Mtl::FunctionStitching::BuiltinNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.BuiltinNode", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t Mtl::FunctionStitching::EarlyReturnNode::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Mtl.FunctionStitching.EarlyReturnNode", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "Mtl.FunctionStitching.NodeId", 0x1Cu);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = (a1 + v8 + *(a1 + v8));
    data = *v9;
    result = CC_SHA256_Update(c, &data, 4u);
    v11 = *v9;
    if (v11)
    {
      v12 = (v9 + 1);
      do
      {
        CC_SHA256_Update(c, "Mtl.FunctionStitching.NodeId", 0x1Cu);
        v13 = *v12++;
        data = v13;
        result = CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t **std::__hash_table<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>::find<std::string_view>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v6 == v15)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view&&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v6 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  v16 = a2;
  v14 = *a2;
  v15 = *(v16 + 8);
  while (1)
  {
    v17 = v13[1];
    if (v17 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v17 >= *&v8)
      {
        v17 %= *&v8;
      }
    }

    else
    {
      v17 &= *&v8 - 1;
    }

    if (v17 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (v13[3] != v15 || memcmp(v13[2], v14, v15))
  {
    goto LABEL_19;
  }

  return v13;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>>>::find<std::string_view>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::string ()(objc_object  {objcproto11MTLFunction}*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<MTLUINT256_t const,std::pair<std::string,std::string>>,0>(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, const void **a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_185C90308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl21FunctionConstantValueEEEZNS3_31CloneSpecializedFunctionLibraryINS3_26SpecializedFunctionLibraryEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41SpecializedFunctionLibraryCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::FunctionConstantValue>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::CloneFunctionConstantValue<Mtl::FunctionConstantValue>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionConstantValue>,std::allocator<flatbuffers::Offset<Mtl::FunctionConstantValue>>>(std::vector<flatbuffers::Offset<Mtl::FunctionConstantValue>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C9042C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::FunctionConstantValue>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C904A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneFunctionConstantValue<Mtl::FunctionConstantValue>(uint64_t a1, Mtl4::FunctionConstantValue *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  v4 = (a2 - *a2);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  switch(Mtl4::CloneConstantValue<Mtl4::ConstantValue>(v6))
  {
    case 3u:
      LODWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantFloat(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(a1, &v113);
      goto LABEL_78;
    case 4u:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(a1, &v113);
      goto LABEL_78;
    case 5u:
      v37 = Mtl4::FunctionConstantValue::value_as_ConstantFloat3(a2);
      v38 = *(v37 + 8);
      *&v113 = *v37;
      DWORD2(v113) = v38;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(a1, &v113);
      goto LABEL_78;
    case 6u:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantFloat4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(a1, &v113);
      goto LABEL_78;
    case 0x10u:
      LOWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantHalf(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(a1, &v113);
      goto LABEL_78;
    case 0x11u:
      LODWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantHalf2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(a1, &v113);
      goto LABEL_78;
    case 0x12u:
      v46 = Mtl4::FunctionConstantValue::value_as_ConstantHalf3(a2);
      v47 = *v46;
      WORD2(v113) = *(v46 + 4);
      LODWORD(v113) = v47;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(a1, &v113);
      goto LABEL_78;
    case 0x13u:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantHalf4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(a1, &v113);
      goto LABEL_78;
    case 0x1Du:
      LODWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantInt(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(a1, &v113);
      goto LABEL_78;
    case 0x1Eu:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantInt2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(a1, &v113);
      goto LABEL_78;
    case 0x1Fu:
      v33 = Mtl4::FunctionConstantValue::value_as_ConstantInt3(a2);
      v34 = *(v33 + 8);
      *&v113 = *v33;
      DWORD2(v113) = v34;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(a1, &v113);
      goto LABEL_78;
    case 0x20u:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantInt4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(a1, &v113);
      goto LABEL_78;
    case 0x21u:
      LODWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantUInt(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(a1, &v113);
      goto LABEL_78;
    case 0x22u:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantUInt2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(a1, &v113);
      goto LABEL_78;
    case 0x23u:
      v48 = Mtl4::FunctionConstantValue::value_as_ConstantUInt3(a2);
      v49 = *(v48 + 8);
      *&v113 = *v48;
      DWORD2(v113) = v49;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(a1, &v113);
      goto LABEL_78;
    case 0x24u:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantUInt4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(a1, &v113);
      goto LABEL_78;
    case 0x25u:
      LOWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantShort(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(a1, &v113);
      goto LABEL_78;
    case 0x26u:
      LODWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantShort2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(a1, &v113);
      goto LABEL_78;
    case 0x27u:
      v27 = Mtl4::FunctionConstantValue::value_as_ConstantShort3(a2);
      v28 = *v27;
      WORD2(v113) = *(v27 + 4);
      LODWORD(v113) = v28;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(a1, &v113);
      goto LABEL_78;
    case 0x28u:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantShort4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(a1, &v113);
      goto LABEL_78;
    case 0x29u:
      LOWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantUShort(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(a1, &v113);
      goto LABEL_78;
    case 0x2Au:
      LODWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantUShort2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(a1, &v113);
      goto LABEL_78;
    case 0x2Bu:
      v35 = Mtl4::FunctionConstantValue::value_as_ConstantUShort3(a2);
      v36 = *v35;
      WORD2(v113) = *(v35 + 4);
      LODWORD(v113) = v36;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(a1, &v113);
      goto LABEL_78;
    case 0x2Cu:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantUShort4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(a1, &v113);
      goto LABEL_78;
    case 0x2Du:
      LOBYTE(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantChar(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(a1, &v113);
      goto LABEL_78;
    case 0x2Eu:
      LOWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantChar2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(a1, &v113);
      goto LABEL_78;
    case 0x2Fu:
      v68 = Mtl4::FunctionConstantValue::value_as_ConstantChar3(a2);
      v69 = *v68;
      BYTE2(v113) = *(v68 + 2);
      LOWORD(v113) = v69;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(a1, &v113);
      goto LABEL_78;
    case 0x30u:
      LODWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantChar4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(a1, &v113);
      goto LABEL_78;
    case 0x31u:
      LOBYTE(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantUChar(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(a1, &v113);
      goto LABEL_78;
    case 0x32u:
      LOWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantUChar2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(a1, &v113);
      goto LABEL_78;
    case 0x33u:
      v52 = Mtl4::FunctionConstantValue::value_as_ConstantUChar3(a2);
      v53 = *v52;
      BYTE2(v113) = *(v52 + 2);
      LOWORD(v113) = v53;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(a1, &v113);
      goto LABEL_78;
    case 0x34u:
      LODWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantUChar4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(a1, &v113);
      goto LABEL_78;
    case 0x35u:
      LOBYTE(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantBool(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(a1, &v113);
      goto LABEL_78;
    case 0x36u:
      LOWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantBool2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(a1, &v113);
      goto LABEL_78;
    case 0x37u:
      v58 = Mtl4::FunctionConstantValue::value_as_ConstantBool3(a2);
      v59 = *v58;
      BYTE2(v113) = *(v58 + 2);
      LOWORD(v113) = v59;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(a1, &v113);
      goto LABEL_78;
    case 0x38u:
      LODWORD(v113) = *Mtl4::FunctionConstantValue::value_as_ConstantBool4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(a1, &v113);
      goto LABEL_78;
    case 0x51u:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantLong(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(a1, &v113);
      goto LABEL_78;
    case 0x52u:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantLong2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(a1, &v113);
      goto LABEL_78;
    case 0x53u:
      v25 = Mtl4::FunctionConstantValue::value_as_ConstantLong3(a2);
      v26 = *v25;
      *&v114 = *(v25 + 16);
      v113 = v26;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(a1, &v113);
      goto LABEL_78;
    case 0x54u:
      v23 = Mtl4::FunctionConstantValue::value_as_ConstantLong4(a2);
      v24 = v23[1];
      v113 = *v23;
      v114 = v24;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(a1, &v113);
      goto LABEL_78;
    case 0x55u:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantULong(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(a1, &v113);
      goto LABEL_78;
    case 0x56u:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantULong2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(a1, &v113);
      goto LABEL_78;
    case 0x57u:
      v64 = Mtl4::FunctionConstantValue::value_as_ConstantULong3(a2);
      v65 = *v64;
      *&v114 = *(v64 + 16);
      v113 = v65;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(a1, &v113);
      goto LABEL_78;
    case 0x58u:
      v13 = Mtl4::FunctionConstantValue::value_as_ConstantULong4(a2);
      v14 = v13[1];
      v113 = *v13;
      v114 = v14;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(a1, &v113);
      goto LABEL_78;
    case 0x59u:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantDouble(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(a1, &v113);
      goto LABEL_78;
    case 0x5Au:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantDouble2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(a1, &v113);
      goto LABEL_78;
    case 0x5Bu:
      v54 = Mtl4::FunctionConstantValue::value_as_ConstantDouble3(a2);
      v55 = *(v54 + 16);
      v113 = *v54;
      *&v114 = v55;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(a1, &v113);
      goto LABEL_78;
    case 0x5Cu:
      v79 = Mtl4::FunctionConstantValue::value_as_ConstantDouble4(a2);
      v80 = v79[1];
      v113 = *v79;
      v114 = v80;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(a1, &v113);
      goto LABEL_78;
    case 0x5Du:
      v50 = Mtl4::FunctionConstantValue::value_as_ConstantFloat8(a2);
      v51 = v50[1];
      v113 = *v50;
      v114 = v51;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(a1, &v113);
      goto LABEL_78;
    case 0x5Eu:
      v19 = Mtl4::FunctionConstantValue::value_as_ConstantFloat16(a2);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[3];
      v115 = v19[2];
      v116 = v22;
      v113 = v20;
      v114 = v21;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(a1, &v113);
      goto LABEL_78;
    case 0x5Fu:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantHalf8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(a1, &v113);
      goto LABEL_78;
    case 0x60u:
      v92 = Mtl4::FunctionConstantValue::value_as_ConstantHalf16(a2);
      v93 = v92[1];
      v113 = *v92;
      v114 = v93;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(a1, &v113);
      goto LABEL_78;
    case 0x61u:
      v77 = Mtl4::FunctionConstantValue::value_as_ConstantInt8(a2);
      v78 = v77[1];
      v113 = *v77;
      v114 = v78;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(a1, &v113);
      goto LABEL_78;
    case 0x62u:
      v15 = Mtl4::FunctionConstantValue::value_as_ConstantInt16(a2);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[3];
      v115 = v15[2];
      v116 = v18;
      v113 = v16;
      v114 = v17;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(a1, &v113);
      goto LABEL_78;
    case 0x63u:
      v56 = Mtl4::FunctionConstantValue::value_as_ConstantUInt8(a2);
      v57 = v56[1];
      v113 = *v56;
      v114 = v57;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(a1, &v113);
      goto LABEL_78;
    case 0x64u:
      v60 = Mtl4::FunctionConstantValue::value_as_ConstantUInt16(a2);
      v61 = *v60;
      v62 = v60[1];
      v63 = v60[3];
      v115 = v60[2];
      v116 = v63;
      v113 = v61;
      v114 = v62;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(a1, &v113);
      goto LABEL_78;
    case 0x65u:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantShort8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(a1, &v113);
      goto LABEL_78;
    case 0x66u:
      v66 = Mtl4::FunctionConstantValue::value_as_ConstantShort16(a2);
      v67 = v66[1];
      v113 = *v66;
      v114 = v67;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(a1, &v113);
      goto LABEL_78;
    case 0x67u:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantUShort8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(a1, &v113);
      goto LABEL_78;
    case 0x68u:
      v94 = Mtl4::FunctionConstantValue::value_as_ConstantUShort16(a2);
      v95 = v94[1];
      v113 = *v94;
      v114 = v95;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(a1, &v113);
      goto LABEL_78;
    case 0x69u:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantChar8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(a1, &v113);
      goto LABEL_78;
    case 0x6Au:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantChar16(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(a1, &v113);
      goto LABEL_78;
    case 0x6Bu:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantUChar8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(a1, &v113);
      goto LABEL_78;
    case 0x6Cu:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantUChar16(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(a1, &v113);
      goto LABEL_78;
    case 0x6Du:
      v29 = Mtl4::FunctionConstantValue::value_as_ConstantLong8(a2);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[3];
      v115 = v29[2];
      v116 = v32;
      v113 = v30;
      v114 = v31;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(a1, &v113);
      goto LABEL_78;
    case 0x6Eu:
      v70 = Mtl4::FunctionConstantValue::value_as_ConstantLong16(a2);
      v71 = *v70;
      v72 = v70[1];
      v73 = v70[3];
      v115 = v70[2];
      v116 = v73;
      v113 = v71;
      v114 = v72;
      v74 = v70[4];
      v75 = v70[5];
      v76 = v70[7];
      v119 = v70[6];
      v120 = v76;
      v117 = v74;
      v118 = v75;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(a1, &v113);
      goto LABEL_78;
    case 0x6Fu:
      v9 = Mtl4::FunctionConstantValue::value_as_ConstantULong8(a2);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v115 = v9[2];
      v116 = v12;
      v113 = v10;
      v114 = v11;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(a1, &v113);
      goto LABEL_78;
    case 0x70u:
      v81 = Mtl4::FunctionConstantValue::value_as_ConstantULong16(a2);
      v82 = *v81;
      v83 = v81[1];
      v84 = v81[3];
      v115 = v81[2];
      v116 = v84;
      v113 = v82;
      v114 = v83;
      v85 = v81[4];
      v86 = v81[5];
      v87 = v81[7];
      v119 = v81[6];
      v120 = v87;
      v117 = v85;
      v118 = v86;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(a1, &v113);
      goto LABEL_78;
    case 0x71u:
      v88 = Mtl4::FunctionConstantValue::value_as_ConstantDouble8(a2);
      v89 = *v88;
      v90 = v88[1];
      v91 = v88[3];
      v115 = v88[2];
      v116 = v91;
      v113 = v89;
      v114 = v90;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(a1, &v113);
      goto LABEL_78;
    case 0x72u:
      v39 = Mtl4::FunctionConstantValue::value_as_ConstantDouble16(a2);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[3];
      v115 = v39[2];
      v116 = v42;
      v113 = v40;
      v114 = v41;
      v43 = v39[4];
      v44 = v39[5];
      v45 = v39[7];
      v119 = v39[6];
      v120 = v45;
      v117 = v43;
      v118 = v44;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(a1, &v113);
      goto LABEL_78;
    case 0x77u:
      *&v113 = *Mtl4::FunctionConstantValue::value_as_ConstantBool8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(a1, &v113);
      goto LABEL_78;
    case 0x78u:
      v113 = *Mtl4::FunctionConstantValue::value_as_ConstantBool16(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(a1, &v113);
LABEL_78:
      v7 = v8;
      break;
    default:
      break;
  }

  v96 = (a2 - *a2);
  if (*v96 >= 5u)
  {
    v97 = v96[2];
    if (v97)
    {
      v98 = *(a2 + v97);
      if (v98 >= 3)
      {
        goto LABEL_100;
      }

      if (v98 == 2)
      {
        v100 = Mtl4::FunctionConstantValue::id_as_FunctionConstantName(a2);
        if (v100)
        {
          String = flatbuffers::FlatBufferBuilder::CreateString(a1, v100 + 4, *v100);
          goto LABEL_87;
        }
      }

      else if (v98 == 1)
      {
        LOWORD(v113) = *Mtl4::FunctionConstantValue::id_as_FunctionConstantIndex(a2);
        String = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(a1, &v113);
LABEL_87:
        v101 = String;
        goto LABEL_89;
      }
    }
  }

  v101 = 0;
LABEL_89:
  *(a1 + 70) = 1;
  v102 = *(a1 + 40);
  v103 = *(a1 + 48);
  v104 = *(a1 + 32);
  if (v7)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v7);
  }

  if (v101)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v101);
  }

  v105 = (a2 - *a2);
  if (*v105 >= 9u && (v106 = v105[4]) != 0)
  {
    v107 = *(a2 + v106);
  }

  else
  {
    v107 = 0;
  }

  v108 = Mtl4::CloneConstantValue<Mtl4::ConstantValue>(v107);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v108, 0);
  v109 = (a2 - *a2);
  if (*v109 >= 5u && (v110 = v109[2]) != 0)
  {
    v111 = *(a2 + v110);
    if (v111 >= 3)
    {
LABEL_100:
      abort();
    }
  }

  else
  {
    v111 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v111, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v104 - v103 + v102);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching5GraphEEEZNS3_20CloneStitchedLibraryINS3_15StitchedLibraryEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30StitchedLibraryCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Graph>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::FunctionStitching::CloneGraph<Mtl::FunctionStitching::Graph>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionStitching::Graph>,std::allocator<flatbuffers::Offset<Mtl::FunctionStitching::Graph>>>(std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Graph>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C91174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl20CloneStitchedLibraryINS5_15StitchedLibraryEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30StitchedLibraryCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185C9125C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Graph>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C912D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::FunctionStitching::CloneGraph<Mtl::FunctionStitching::Graph>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0xBu && (v7 = *(v6 + 5)) != 0)
  {
    v19 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching9AttributeEEEZNS4_10CloneGraphINS4_5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(a1, *v19, &v19, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v19 = &a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching4NodeEEEZNS4_10CloneGraphINS4_5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE0_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(a1, *v19, &v19, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = &a2[v5];
  if (*v10 >= 5u && (v11 = *(v10 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v11 + 4 + *&a2[v11]], *&a2[v11 + *&a2[v11]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v8);
  }

  v16 = &a2[-*a2];
  if (*v16 >= 9u)
  {
    v17 = *(v16 + 4);
    if (v17)
    {
      LODWORD(v19) = *&a2[v17];
      flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(a1, 8, &v19);
    }
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching9AttributeEEEZNS4_10CloneGraphINS4_5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::FunctionStitching::CloneAttribute<Mtl4::FunctionStitching::Attribute>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>,std::allocator<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>>>(std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C91580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching4NodeEEEZNS4_10CloneGraphINS4_5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE0_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Node>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::FunctionStitching::CloneNode<Mtl4::FunctionStitching::Node>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionStitching::Node>,std::allocator<flatbuffers::Offset<Mtl::FunctionStitching::Node>>>(std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Node>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C91664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C916E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Node>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C91758(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Mtl30CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_185C91810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneLinkedFunctions<Mtl::LinkedFunctions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0xBu && (v7 = v6[5]) != 0)
  {
    v18 = a2 + v7 + *(a2 + v7);
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v18, &v18, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 9u && *(a2 + v5 + 8))
  {
    v18 = a2 + *(a2 + v5 + 8) + *(a2 + *(a2 + v5 + 8));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v18, &v18, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + v5) >= 7u && *(a2 + v5 + 6))
  {
    v18 = a2 + *(a2 + v5 + 6) + *(a2 + *(a2 + v5 + 6));
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v18, &v18, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = (a2 + v5);
  if (*v11 >= 5u && (v12 = v11[2]) != 0)
  {
    v18 = a2 + v12 + *(a2 + v12);
    v13 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE2_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v18, &v18, a1);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 70) = 1;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v9);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v10);
  }

  if (v13)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v13);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v16 - v15 + v14);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_30CloneComputePipelineDescriptorINS3_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::ClonePipelineBufferDescriptor<Mtl::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C91AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneStageInputOutputDescriptor<Mtl::StageInputOutputDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v20 = a2 + v7 + *(a2 + v7);
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 5u && *(a2 + v5 + 4))
  {
    v20 = a2 + *(a2 + v5 + 4) + *(a2 + *(a2 + v5 + 4));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 70) = 1;
  v10 = (a2 + v5);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v9);
  }

  v16 = (a2 - *a2);
  if (*v16 >= 0xBu && (v17 = v16[5]) != 0)
  {
    v18 = *(a2 + v17);
    if (v18 >= 2)
    {
      abort();
    }
  }

  else
  {
    v18 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v18, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::FunctionGroup>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::CloneFunctionGroup<Mtl::FunctionGroup>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionGroup>,std::allocator<flatbuffers::Offset<Mtl::FunctionGroup>>>(std::vector<flatbuffers::Offset<Mtl::FunctionGroup>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C91D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185C91E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185C91F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE2_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185C92040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::FunctionGroup>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C920BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneFunctionGroup<Mtl::FunctionGroup>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 7u && (v7 = *(v6 + 3)) != 0)
  {
    v16 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = &a2[v5];
  if (*v9 >= 5u && (v10 = *(v9 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v10 + 4 + *&a2[v10]], *&a2[v10 + *&a2[v10]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Mtl18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185C922BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C92338(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::ClonePipelineBufferDescriptor<Mtl::PipelineBufferDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v3 = *(a1 + 40);
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
    if (v6 >= 3)
    {
      abort();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v6, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v7 + v3);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::BufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::CloneBufferLayoutDescriptor<Mtl::BufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Mtl::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C924AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::AttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::CloneAttributeDescriptor<Mtl::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Mtl::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::AttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C92590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::BufferLayoutDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C9260C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneBufferLayoutDescriptor<Mtl::BufferLayoutDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 7u && (v11 = v10[3]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 1;
  }

  v13 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v12, 1);
  v14 = (a2 - *a2);
  if (*v14 >= 5u)
  {
    v15 = v14[2];
    if (v15)
    {
      v13 = *(a2 + v15);
      if (v13 >= 9)
      {
        abort();
      }
    }

    else
    {
      v13 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v13, 1);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::AttributeDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C9279C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneAttributeDescriptor<Mtl::AttributeDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 7u && (v5 = v4[3]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  v13 = (a2 - *a2);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = *(a2 + v14);
    if (v15 >= 0x38 || ((0xFFE7FFFFFFFFFFuLL >> v15) & 1) == 0)
    {
      abort();
    }

    v16 = byte_185DD3A6A[v15];
  }

  else
  {
    v16 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v16, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_29CloneRenderPipelineDescriptorINS3_24RenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39RenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::ClonePipelineBufferDescriptor<Mtl::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C929AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_29CloneRenderPipelineDescriptorINS3_24RenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39RenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::ClonePipelineBufferDescriptor<Mtl::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C92A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl39RenderPipelineColorAttachmentDescriptorEEEZNS3_29CloneRenderPipelineDescriptorINS3_24RenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39RenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::CloneRenderPipelineColorAttachmentDescriptor<Mtl::RenderPipelineColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C92B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneVertexDescriptor<Mtl::VertexDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v16 = a2 + v7 + *(a2 + v7);
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl28VertexBufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 + v5);
  if (*v9 >= 5u && (v10 = v9[2]) != 0)
  {
    v16 = a2 + v10 + *(a2 + v10);
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl25VertexAttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v11);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Mtl::ClonePixelFormat<Mtl::PixelFormat>(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 53:
    case 54:
    case 55:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 84:
    case 85:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 103:
    case 104:
    case 105:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 123:
    case 124:
    case 125:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 150:
    case 151:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 313:
    case 314:
    case 315:
    case 323:
    case 324:
    case 325:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 540:
    case 541:
    case 542:
    case 543:
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 550:
    case 551:
    case 552:
    case 553:
    case 554:
    case 555:
    case 556:
    case 560:
    case 562:
    case 563:
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 569:
    case 570:
    case 571:
    case 572:
    case 573:
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 584:
    case 585:
    case 586:
    case 587:
    case 588:
    case 589:
    case 590:
    case 591:
    case 592:
    case 593:
    case 594:
    case 595:
    case 596:
    case 597:
    case 598:
    case 599:
    case 600:
    case 601:
    case 602:
    case 603:
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 609:
    case 610:
    case 611:
    case 612:
    case 613:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 624:
    case 625:
    case 626:
    case 627:
    case 628:
    case 629:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 644:
    case 645:
    case 646:
    case 647:
    case 648:
    case 649:
    case 650:
    case 651:
    case 652:
      return result;
    default:
      abort();
  }
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C92D5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneRenderPipelineColorAttachmentDescriptor<Mtl::RenderPipelineColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = Mtl::ClonePixelFormat<Mtl::PixelFormat>(v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);
  v11 = (a2 - *a2);
  if (*v11 >= 0x15u && (v12 = v11[10]) != 0)
  {
    v13 = *(a2 + v12);
    if (v13 >= 0x13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v13, 1);
  v15 = (a2 - *a2);
  if (*v15 >= 0x13u)
  {
    v16 = v15[9];
    if (v16)
    {
      v14 = *(a2 + v16);
      if (v14 >= 0x13)
      {
LABEL_31:
        abort();
      }
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v14, 1);
  v17 = (a2 - *a2);
  if (*v17 >= 0x11u && (v18 = v17[8]) != 0)
  {
    v19 = *(a2 + v18);
    if (v19 >= 0x13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v19 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v19, 0);
  v20 = (a2 - *a2);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = *(a2 + v21);
    if (v22 >= 0x13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v22, 0);
  v23 = (a2 - *a2);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = *(a2 + v24);
    if (v25 >= 5)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v25 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v25, 0);
  v26 = (a2 - *a2);
  if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
  {
    v28 = *(a2 + v27);
    if (v28 >= 5)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v28 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v28, 0);
  v29 = (a2 - *a2);
  v31 = *v29 >= 9u && (v30 = v29[4]) != 0 && *(a2 + v30) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v31, 0);
  v32 = (a2 - *a2);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = *(a2 + v33);
  }

  else
  {
    v34 = 15;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v34, 15);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl28VertexBufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::VertexBufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::CloneVertexBufferLayoutDescriptor<Mtl4::VertexBufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::VertexBufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Mtl::VertexBufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::VertexBufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C930D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl25VertexAttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::VertexAttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::CloneAttributeDescriptor<Mtl::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::VertexAttributeDescriptor>,std::allocator<flatbuffers::Offset<Mtl::VertexAttributeDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::VertexAttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C931B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::VertexBufferLayoutDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C93234(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::VertexAttributeDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C932AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Mtl33CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_185C93364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_33CloneTileRenderPipelineDescriptorINS3_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::ClonePipelineBufferDescriptor<Mtl::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C93444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl43TileRenderPipelineColorAttachmentDescriptorEEEZNS3_33CloneTileRenderPipelineDescriptorINS3_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::TileRenderPipelineColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::CloneTileRenderPipelineColorAttachmentDescriptor<Mtl::TileRenderPipelineColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::TileRenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl::TileRenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::TileRenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C93528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Mtl::TileRenderPipelineColorAttachmentDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C935A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl::CloneTileRenderPipelineColorAttachmentDescriptor<Mtl::TileRenderPipelineColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = (a2 - *a2);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = *(a2 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 - v3;
  v10 = Mtl::ClonePixelFormat<Mtl::PixelFormat>(v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 + v4);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_185C936F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Mtl33CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_185C937A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_33CloneMeshRenderPipelineDescriptorINS3_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::ClonePipelineBufferDescriptor<Mtl::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C93888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_33CloneMeshRenderPipelineDescriptorINS3_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE2_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::ClonePipelineBufferDescriptor<Mtl::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C9396C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl24PipelineBufferDescriptorEEEZNS3_33CloneMeshRenderPipelineDescriptorINS3_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE3_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::ClonePipelineBufferDescriptor<Mtl::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C93A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl39RenderPipelineColorAttachmentDescriptorEEEZNS3_33CloneMeshRenderPipelineDescriptorINS3_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE4_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl::CloneRenderPipelineColorAttachmentDescriptor<Mtl::RenderPipelineColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl::RenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C93B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<MTLMetalScriptSerializer::pipelineDescriptorData *,MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual,MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual,std::allocator<MTLMetalScriptSerializer::pipelineDescriptorData *>>::__emplace_unique_key_args<MTLMetalScriptSerializer::pipelineDescriptorData *,MTLMetalScriptSerializer::pipelineDescriptorData * const&>(void *a1, uint64_t *a2, void *a3)
{
  v5 = MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(a1, *a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if ((MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(a1 + 36, v12[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v12;
}

uint64_t MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(*a2, &buffer_ptr, &v10);
  v4 = (buffer_ptr + *buffer_ptr);
  v5 = (v4 - *v4);
  if (*v5 < 9u)
  {
    goto LABEL_7;
  }

  v6 = v5[4];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v4 + v6);
  if ((v7 - 2) < 2)
  {
    v8 = *(a2 + 8);
    goto LABEL_8;
  }

  if (v7 == 4)
  {
    v8 = *(a2 + 24) ^ *(a2 + 8) ^ *(a2 + 16);
    goto LABEL_8;
  }

  if (v7 == 1)
  {
    v8 = *(a2 + 16) ^ *(a2 + 8);
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

LABEL_8:
  dispatch_release(v3);
  return v8;
}

uint64_t MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v68 = a2;
  v65 = 0;
  buffer_ptr = 0;
  v63 = 0;
  size_ptr = 0;
  v5 = dispatch_data_create_map(*a2, &buffer_ptr, &size_ptr);
  v6 = dispatch_data_create_map(*a3, &v65, &v63);
  v7 = (buffer_ptr + *buffer_ptr);
  v8 = (v65 + *v65);
  v9 = (v7 - *v7);
  v10 = *v9;
  if (v10 < 9)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = v9[4];
    if (v9[4])
    {
      LODWORD(v11) = *(v7 + v11);
    }
  }

  v12 = (v8 - *v8);
  if (*v12 < 9u)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[4];
    if (v13)
    {
      LODWORD(v13) = *(v8 + v13);
    }
  }

  if (v11 == v13)
  {
    v62[0] = &v68;
    v62[1] = &v67;
    if (v10 >= 9)
    {
      v14 = v9[4];
      if (v14)
      {
        v15 = 0;
        v16 = *(v7 + v14);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            if (*(a2 + 32) == *(a3 + 32) && *(a2 + 40) == *(a3 + 40) && *(a2 + 48) == *(a3 + 48) && *(a2 + 56) == *(a3 + 56))
            {
              v50 = *(a2 + 128);
              v51 = *(a2 + 136);
              v52 = *(a3 + 128);
              v53 = *(a3 + 136);
              if (v51 - v50 == v53 - v52)
              {
                while (v50 != v51 && v52 != v53)
                {
                  if (*v50 != *v52 || *(v50 + 1) != *(v52 + 1) || *(v50 + 2) != *(v52 + 2) || *(v50 + 3) != *(v52 + 3))
                  {
                    goto LABEL_132;
                  }

                  v50 += 32;
                  v52 += 32;
                }

                v15 = 0;
                if (v50 != v51 || v52 != v53)
                {
                  goto LABEL_133;
                }

                v60 = Mtl4::FunctionConstantValue::value_as_ConstantFloat(v7);
                v61 = Mtl4::FunctionConstantValue::value_as_ConstantFloat(v8);
                v38 = MTLMetalScriptSerializer::EqualTileRenderDescriptor(v60, v61);
                goto LABEL_141;
              }
            }
          }

          else
          {
            if (v16 != 4)
            {
              goto LABEL_133;
            }

            if (*(a2 + 64) == *(a3 + 64) && *(a2 + 72) == *(a3 + 72) && *(a2 + 80) == *(a3 + 80) && *(a2 + 88) == *(a3 + 88))
            {
              v30 = *(a2 + 32) == *(a3 + 32) && *(a2 + 40) == *(a3 + 40);
              v31 = v30 && *(a2 + 48) == *(a3 + 48);
              if (v31 && *(a2 + 56) == *(a3 + 56))
              {
                v33 = *(a2 + 96) == *(a3 + 96) && *(a2 + 104) == *(a3 + 104);
                v34 = v33 && *(a2 + 112) == *(a3 + 112);
                v35 = v34 && *(a2 + 120) == *(a3 + 120);
                if (v35 && MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(MTLMetalScriptSerializer::pipelineDescriptorData const*,MTLMetalScriptSerializer::pipelineDescriptorData const*)const::{lambda(MTLMetalScriptSerializer::functionType)#1}::operator()(v62, 1u) && MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(MTLMetalScriptSerializer::pipelineDescriptorData const*,MTLMetalScriptSerializer::pipelineDescriptorData const*)const::{lambda(MTLMetalScriptSerializer::functionType)#1}::operator()(v62, 0) && MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(MTLMetalScriptSerializer::pipelineDescriptorData const*,MTLMetalScriptSerializer::pipelineDescriptorData const*)const::{lambda(MTLMetalScriptSerializer::functionType)#1}::operator()(v62, 2u))
                {
                  v36 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(v7);
                  v37 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(v8);
                  v38 = MTLMetalScriptSerializer::EqualMeshRenderDescriptor(v36, v37);
LABEL_141:
                  v15 = v38;
                  goto LABEL_133;
                }
              }
            }
          }
        }

        else
        {
          if (v16 != 1)
          {
            if (v16 == 2)
            {
              if (*(a2 + 32) == *(a3 + 32) && *(a2 + 40) == *(a3 + 40) && *(a2 + 48) == *(a3 + 48) && *(a2 + 56) == *(a3 + 56))
              {
                v20 = *(a2 + 128);
                v21 = *(a2 + 136);
                v22 = *(a3 + 128);
                v23 = *(a3 + 136);
                if (v21 - v20 == v23 - v22)
                {
                  while (v20 != v21 && v22 != v23)
                  {
                    if (*v20 != *v22 || *(v20 + 1) != *(v22 + 1) || *(v20 + 2) != *(v22 + 2) || *(v20 + 3) != *(v22 + 3))
                    {
                      goto LABEL_132;
                    }

                    v20 += 32;
                    v22 += 32;
                  }

                  v15 = 0;
                  if (v20 != v21 || v22 != v23)
                  {
                    goto LABEL_133;
                  }

                  v58 = Air::PipelineScript::pipeline_as_compute(v7);
                  v59 = Air::PipelineScript::pipeline_as_compute(v8);
                  v38 = MTLMetalScriptSerializer::EqualComputeDescriptor(v58, v59);
                  goto LABEL_141;
                }
              }

              goto LABEL_132;
            }

LABEL_133:
            dispatch_release(v5);
            dispatch_release(v6);
            return v15;
          }

          if (*(a2 + 32) == *(a3 + 32) && *(a2 + 40) == *(a3 + 40) && *(a2 + 48) == *(a3 + 48) && *(a2 + 56) == *(a3 + 56))
          {
            v42 = *(a2 + 64) == *(a3 + 64) && *(a2 + 72) == *(a3 + 72);
            v43 = v42 && *(a2 + 80) == *(a3 + 80);
            v44 = v43 && *(a2 + 88) == *(a3 + 88);
            if (v44 && MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(MTLMetalScriptSerializer::pipelineDescriptorData const*,MTLMetalScriptSerializer::pipelineDescriptorData const*)const::{lambda(MTLMetalScriptSerializer::functionType)#1}::operator()(v62, 0) && MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(MTLMetalScriptSerializer::pipelineDescriptorData const*,MTLMetalScriptSerializer::pipelineDescriptorData const*)const::{lambda(MTLMetalScriptSerializer::functionType)#1}::operator()(v62, 1u))
            {
              v45 = Air::PipelineScript::pipeline_as_render(v7);
              v46 = Air::PipelineScript::pipeline_as_render(v8);
              v38 = MTLMetalScriptSerializer::EqualRenderDescriptor(v45, v46);
              goto LABEL_141;
            }
          }
        }
      }
    }

LABEL_132:
    v15 = 0;
    goto LABEL_133;
  }

  dispatch_release(v5);
  dispatch_release(v6);
  return 0;
}

BOOL MTLMetalScriptSerializer::PipelineDescriptorHashAndEqual::operator()(MTLMetalScriptSerializer::pipelineDescriptorData const*,MTLMetalScriptSerializer::pipelineDescriptorData const*)const::{lambda(MTLMetalScriptSerializer::functionType)#1}::operator()(void **a1, unsigned int a2)
{
  v2 = **a1 + 24 * a2;
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  v5 = *a1[1] + 24 * a2;
  v6 = *(v5 + 128);
  v7 = *(v5 + 136);
  if (v4 - v3 != v7 - v6)
  {
    return 0;
  }

  if (v3 != v4 && v6 != v7)
  {
    while (1)
    {
      v11 = *v3 == *v6 && *(v3 + 1) == *(v6 + 1);
      v12 = v11 && *(v3 + 2) == *(v6 + 2);
      if (!v12 || *(v3 + 3) != *(v6 + 3))
      {
        break;
      }

      v3 += 32;
      v6 += 32;
      if (v3 == v4 || v6 == v7)
      {
        return v3 == v4 && v6 == v7;
      }
    }

    return 0;
  }

  return v3 == v4 && v6 == v7;
}

uint64_t std::__function::__func<MTLMetalScriptBuilderImpl::addComputePipeline(MTLComputePipelineDescriptor *)::$_0,std::allocator<MTLMetalScriptBuilderImpl::addComputePipeline(MTLComputePipelineDescriptor *)::$_0>,std::string ()(objc_object  {objcproto11MTLFunction}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF475488;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MTLMetalScriptBuilderImpl::addComputePipeline(MTLComputePipelineDescriptor *)::$_0,std::allocator<MTLMetalScriptBuilderImpl::addComputePipeline(MTLComputePipelineDescriptor *)::$_0>,std::string ()(objc_object  {objcproto11MTLFunction}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MTLMetalScriptBuilderImpl::addRenderPipeline(MTLRenderPipelineDescriptor *)::$_0,std::allocator<MTLMetalScriptBuilderImpl::addRenderPipeline(MTLRenderPipelineDescriptor *)::$_0>,std::string ()(objc_object  {objcproto11MTLFunction}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF475518;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MTLMetalScriptBuilderImpl::addRenderPipeline(MTLRenderPipelineDescriptor *)::$_0,std::allocator<MTLMetalScriptBuilderImpl::addRenderPipeline(MTLRenderPipelineDescriptor *)::$_0>,std::string ()(objc_object  {objcproto11MTLFunction}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MTLMetalScriptBuilderImpl::addMeshRenderPipeline(MTLMeshRenderPipelineDescriptor *)::$_0,std::allocator<MTLMetalScriptBuilderImpl::addMeshRenderPipeline(MTLMeshRenderPipelineDescriptor *)::$_0>,std::string ()(objc_object  {objcproto11MTLFunction}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF475598;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MTLMetalScriptBuilderImpl::addMeshRenderPipeline(MTLMeshRenderPipelineDescriptor *)::$_0,std::allocator<MTLMetalScriptBuilderImpl::addMeshRenderPipeline(MTLMeshRenderPipelineDescriptor *)::$_0>,std::string ()(objc_object  {objcproto11MTLFunction}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MTLMetalScriptBuilderImpl::addTileRenderPipeline(MTLTileRenderPipelineDescriptor *)::$_0,std::allocator<MTLMetalScriptBuilderImpl::addTileRenderPipeline(MTLTileRenderPipelineDescriptor *)::$_0>,std::string ()(objc_object  {objcproto11MTLFunction}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF475618;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MTLMetalScriptBuilderImpl::addTileRenderPipeline(MTLTileRenderPipelineDescriptor *)::$_0,std::allocator<MTLMetalScriptBuilderImpl::addTileRenderPipeline(MTLTileRenderPipelineDescriptor *)::$_0>,std::string ()(objc_object  {objcproto11MTLFunction}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_185C94938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

void sub_185C94C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<MTLUINT256_t const,std::pair<std::string,std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching9AttributeEEEZNS4_10CloneGraphIN3Air17FunctionStitching5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_INS4_5GraphEEEE4typeERS0_PKSE_EUlmPvE_vEENS2_INS_6VectorISE_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::FunctionStitching::CloneAttribute<Mtl4::FunctionStitching::Attribute>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>,std::allocator<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>>>(std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Attribute>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C94D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Mtl17FunctionStitching4NodeEEEZNS4_10CloneGraphIN3Air17FunctionStitching5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_INS4_5GraphEEEE4typeERS0_PKSE_EUlmPvE0_vEENS2_INS_6VectorISE_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Node>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::FunctionStitching::CloneNode<Mtl4::FunctionStitching::Node>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl::FunctionStitching::Node>,std::allocator<flatbuffers::Offset<Mtl::FunctionStitching::Node>>>(std::vector<flatbuffers::Offset<Mtl::FunctionStitching::Node>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C94E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t **std::__introsort<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**,false>(unint64_t **result, unint64_t **a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v8;
          v9 = a2 - v8;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                v178 = *v8;
                v179 = v8[1];
                v180 = bswap64(*v179);
                v181 = bswap64(**v8);
                if (v180 == v181 && (v180 = bswap64(v179[1]), v181 = bswap64(v178[1]), v180 == v181) && (v180 = bswap64(v179[2]), v181 = bswap64(v178[2]), v180 == v181) && (v180 = bswap64(v179[3]), v181 = bswap64(v178[3]), v180 == v181))
                {
                  v182 = 0;
                }

                else if (v180 < v181)
                {
                  v182 = -1;
                }

                else
                {
                  v182 = 1;
                }

                v253 = *(a2 - 1);
                v254 = bswap64(*v253);
                v255 = bswap64(*v179);
                if (v254 == v255 && (v254 = bswap64(v253[1]), v255 = bswap64(v179[1]), v254 == v255) && (v254 = bswap64(v253[2]), v255 = bswap64(v179[2]), v254 == v255) && (v254 = bswap64(v253[3]), v255 = bswap64(v179[3]), v254 == v255))
                {
                  v256 = 0;
                }

                else if (v254 < v255)
                {
                  v256 = -1;
                }

                else
                {
                  v256 = 1;
                }

                if (v182 < 0)
                {
                  if (v256 < 0)
                  {
                    *v8 = v253;
                  }

                  else
                  {
                    *v8 = v179;
                    v8[1] = v178;
                    v270 = *(a2 - 1);
                    v271 = bswap64(*v270);
                    v272 = bswap64(*v178);
                    if (v271 == v272 && (v271 = bswap64(v270[1]), v272 = bswap64(v178[1]), v271 == v272) && (v271 = bswap64(v270[2]), v272 = bswap64(v178[2]), v271 == v272) && (v271 = bswap64(v270[3]), v272 = bswap64(v178[3]), v271 == v272))
                    {
                      v273 = 0;
                    }

                    else if (v271 < v272)
                    {
                      v273 = -1;
                    }

                    else
                    {
                      v273 = 1;
                    }

                    if ((v273 & 0x80000000) == 0)
                    {
                      return result;
                    }

                    v8[1] = v270;
                  }

                  *(a2 - 1) = v178;
                  return result;
                }

                if ((v256 & 0x80000000) == 0)
                {
                  return result;
                }

                v8[1] = v253;
                *(a2 - 1) = v179;
                v257 = *v8;
                v248 = v8[1];
                v258 = bswap64(*v248);
                v259 = bswap64(**v8);
                if (v258 == v259 && (v258 = bswap64(v248[1]), v259 = bswap64(v257[1]), v258 == v259) && (v258 = bswap64(v248[2]), v259 = bswap64(v257[2]), v258 == v259) && (v258 = bswap64(v248[3]), v259 = bswap64(v257[3]), v258 == v259))
                {
                  v260 = 0;
                }

                else
                {
                  v260 = v258 < v259 ? -1 : 1;
                }

                if ((v260 & 0x80000000) == 0)
                {
                  return result;
                }

LABEL_565:
                *v8 = v248;
                v8[1] = v257;
                return result;
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**,0>(v8, v8 + 1, v8 + 2, a2 - 1);
              case 5:
                result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**,0>(v8, v8 + 1, v8 + 2, v8 + 3);
                v168 = *(a2 - 1);
                v169 = v8[3];
                v170 = bswap64(*v168);
                v171 = bswap64(*v169);
                if (v170 == v171 && (v170 = bswap64(v168[1]), v171 = bswap64(v169[1]), v170 == v171) && (v170 = bswap64(v168[2]), v171 = bswap64(v169[2]), v170 == v171) && (v170 = bswap64(v168[3]), v171 = bswap64(v169[3]), v170 == v171))
                {
                  v172 = 0;
                }

                else if (v170 < v171)
                {
                  v172 = -1;
                }

                else
                {
                  v172 = 1;
                }

                if ((v172 & 0x80000000) == 0)
                {
                  return result;
                }

                v8[3] = v168;
                *(a2 - 1) = v169;
                v249 = v8[2];
                v248 = v8[3];
                v250 = bswap64(*v248);
                v251 = bswap64(*v249);
                if (v250 == v251 && (v250 = bswap64(v248[1]), v251 = bswap64(v249[1]), v250 == v251) && (v250 = bswap64(v248[2]), v251 = bswap64(v249[2]), v250 == v251) && (v250 = bswap64(v248[3]), v251 = bswap64(v249[3]), v250 == v251))
                {
                  v252 = 0;
                }

                else
                {
                  v252 = v250 < v251 ? -1 : 1;
                }

                if ((v252 & 0x80000000) == 0)
                {
                  return result;
                }

                v8[2] = v248;
                v8[3] = v249;
                v274 = v8[1];
                v275 = bswap64(*v248);
                v276 = bswap64(*v274);
                if (v275 == v276 && (v275 = bswap64(v248[1]), v276 = bswap64(v274[1]), v275 == v276) && (v275 = bswap64(v248[2]), v276 = bswap64(v274[2]), v275 == v276) && (v275 = bswap64(v248[3]), v276 = bswap64(v274[3]), v275 == v276))
                {
                  v277 = 0;
                }

                else
                {
                  v277 = v275 < v276 ? -1 : 1;
                }

                if ((v277 & 0x80000000) == 0)
                {
                  return result;
                }

                v8[1] = v248;
                v8[2] = v274;
                v257 = *v8;
                v278 = bswap64(*v248);
                v279 = bswap64(**v8);
                if (v278 == v279 && (v278 = bswap64(v248[1]), v279 = bswap64(v257[1]), v278 == v279) && (v278 = bswap64(v248[2]), v279 = bswap64(v257[2]), v278 == v279) && (v278 = bswap64(v248[3]), v279 = bswap64(v257[3]), v278 == v279))
                {
                  v280 = 0;
                }

                else
                {
                  v280 = v278 < v279 ? -1 : 1;
                }

                if ((v280 & 0x80000000) == 0)
                {
                  return result;
                }

                goto LABEL_565;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              v173 = *(a2 - 1);
              v174 = *v8;
              v175 = bswap64(*v173);
              v176 = bswap64(**v8);
              if (v175 == v176 && (v175 = bswap64(v173[1]), v176 = bswap64(v174[1]), v175 == v176) && (v175 = bswap64(v173[2]), v176 = bswap64(v174[2]), v175 == v176) && (v175 = bswap64(v173[3]), v176 = bswap64(v174[3]), v175 == v176))
              {
                v177 = 0;
              }

              else if (v175 < v176)
              {
                v177 = -1;
              }

              else
              {
                v177 = 1;
              }

              if (v177 < 0)
              {
                *v8 = v173;
                *(a2 - 1) = v174;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            v183 = v8 + 1;
            v185 = v8 == a2 || v183 == a2;
            if (a4)
            {
              if (!v185)
              {
                v186 = 0;
                v187 = v8;
                do
                {
                  v189 = *v187;
                  v188 = v187[1];
                  v187 = v183;
                  v190 = bswap64(*v188);
                  v191 = bswap64(*v189);
                  if (v190 != v191 || (v190 = bswap64(v188[1]), v191 = bswap64(v189[1]), v190 != v191) || (v190 = bswap64(v188[2]), v191 = bswap64(v189[2]), v190 != v191) || (v190 = bswap64(v188[3]), v191 = bswap64(v189[3]), v190 != v191))
                  {
                    v192 = v190 < v191 ? -1 : 1;
                    if (v192 < 0)
                    {
                      v193 = v186;
                      while (1)
                      {
                        *(v8 + v193 + 8) = v189;
                        if (!v193)
                        {
                          break;
                        }

                        v189 = *(v8 + v193 - 8);
                        v194 = bswap64(*v188);
                        v195 = bswap64(*v189);
                        if (v194 == v195 && (v194 = bswap64(v188[1]), v195 = bswap64(v189[1]), v194 == v195) && (v194 = bswap64(v188[2]), v195 = bswap64(v189[2]), v194 == v195) && (v194 = bswap64(v188[3]), v195 = bswap64(v189[3]), v194 == v195))
                        {
                          v196 = 0;
                        }

                        else if (v194 < v195)
                        {
                          v196 = -1;
                        }

                        else
                        {
                          v196 = 1;
                        }

                        v193 -= 8;
                        if ((v196 & 0x80000000) == 0)
                        {
                          v197 = (v8 + v193 + 8);
                          goto LABEL_401;
                        }
                      }

                      v197 = v8;
LABEL_401:
                      *v197 = v188;
                    }
                  }

                  v183 = v187 + 1;
                  v186 += 8;
                }

                while (v187 + 1 != a2);
              }
            }

            else if (!v185)
            {
              do
              {
                v262 = *v7;
                v261 = v7[1];
                v7 = v183;
                v263 = bswap64(*v261);
                v264 = bswap64(*v262);
                if (v263 != v264 || (v263 = bswap64(v261[1]), v264 = bswap64(v262[1]), v263 != v264) || (v263 = bswap64(v261[2]), v264 = bswap64(v262[2]), v263 != v264) || (v263 = bswap64(v261[3]), v264 = bswap64(v262[3]), v263 != v264))
                {
                  v265 = v263 < v264 ? -1 : 1;
                  if (v265 < 0)
                  {
                    v266 = v183;
                    do
                    {
                      *v266 = v262;
                      v262 = *(v266 - 2);
                      v267 = bswap64(*v261);
                      v268 = bswap64(*v262);
                      if (v267 == v268 && (v267 = bswap64(v261[1]), v268 = bswap64(v262[1]), v267 == v268) && (v267 = bswap64(v261[2]), v268 = bswap64(v262[2]), v267 == v268) && (v267 = bswap64(v261[3]), v268 = bswap64(v262[3]), v267 == v268))
                      {
                        v269 = 0;
                      }

                      else if (v267 < v268)
                      {
                        v269 = -1;
                      }

                      else
                      {
                        v269 = 1;
                      }

                      --v266;
                    }

                    while (v269 < 0);
                    *v266 = v261;
                  }
                }

                v183 = (v7 + 1);
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v198 = (v9 - 2) >> 1;
              v199 = v198;
              do
              {
                v200 = v199;
                if (v198 >= v199)
                {
                  v201 = (2 * v199) | 1;
                  v202 = &v8[v201];
                  v203 = *v202;
                  if (2 * v200 + 2 < v9)
                  {
                    v204 = v202[1];
                    v205 = bswap64(*v203);
                    v206 = bswap64(*v204);
                    if (v205 == v206 && (v205 = bswap64(v203[1]), v206 = bswap64(v204[1]), v205 == v206) && (v205 = bswap64(v203[2]), v206 = bswap64(v204[2]), v205 == v206) && (v205 = bswap64(v203[3]), v206 = bswap64(v204[3]), v205 == v206))
                    {
                      v207 = 0;
                    }

                    else
                    {
                      v207 = v205 < v206 ? -1 : 1;
                    }

                    if (v207 < 0)
                    {
                      v203 = v202[1];
                      ++v202;
                      v201 = 2 * v200 + 2;
                    }
                  }

                  v208 = &v8[v200];
                  v209 = *v208;
                  v210 = bswap64(*v203);
                  v211 = bswap64(**v208);
                  if (v210 == v211 && (v210 = bswap64(v203[1]), v211 = bswap64(v209[1]), v210 == v211) && (v210 = bswap64(v203[2]), v211 = bswap64(v209[2]), v210 == v211) && (v210 = bswap64(v203[3]), v211 = bswap64(v209[3]), v210 == v211) || (v210 < v211 ? (v212 = -1) : (v212 = 1), (v212 & 0x80000000) == 0))
                  {
                    do
                    {
                      v213 = v202;
                      *v208 = v203;
                      if (v198 < v201)
                      {
                        break;
                      }

                      v214 = (2 * v201) | 1;
                      v202 = &v8[v214];
                      v201 = 2 * v201 + 2;
                      v203 = *v202;
                      if (v201 >= v9)
                      {
                        v201 = v214;
                      }

                      else
                      {
                        v215 = v202[1];
                        v216 = bswap64(*v203);
                        v217 = bswap64(*v215);
                        if (v216 == v217 && (v216 = bswap64(v203[1]), v217 = bswap64(v215[1]), v216 == v217) && (v216 = bswap64(v203[2]), v217 = bswap64(v215[2]), v216 == v217) && (v216 = bswap64(v203[3]), v217 = bswap64(v215[3]), v216 == v217))
                        {
                          v218 = 0;
                        }

                        else
                        {
                          v218 = v216 < v217 ? -1 : 1;
                        }

                        if (v218 >= 0)
                        {
                          v201 = v214;
                        }

                        else
                        {
                          v203 = v202[1];
                          ++v202;
                        }
                      }

                      v219 = bswap64(*v203);
                      v220 = bswap64(*v209);
                      if (v219 == v220 && (v219 = bswap64(v203[1]), v220 = bswap64(v209[1]), v219 == v220) && (v219 = bswap64(v203[2]), v220 = bswap64(v209[2]), v219 == v220) && (v219 = bswap64(v203[3]), v220 = bswap64(v209[3]), v219 == v220))
                      {
                        v221 = 0;
                      }

                      else
                      {
                        v221 = v219 < v220 ? -1 : 1;
                      }

                      v208 = v213;
                    }

                    while ((v221 & 0x80000000) == 0);
                    *v213 = v209;
                  }
                }

                v199 = v200 - 1;
              }

              while (v200);
              do
              {
                v222 = 0;
                v223 = *v8;
                v224 = v8;
                do
                {
                  v225 = &v224[v222];
                  v226 = v225 + 1;
                  v227 = v225[1];
                  result = (2 * v222);
                  v228 = (2 * v222) | 1;
                  v222 = 2 * v222 + 2;
                  if (v222 >= v9)
                  {
                    v222 = v228;
                  }

                  else
                  {
                    v230 = v225[2];
                    v229 = v225 + 2;
                    result = v230;
                    v231 = bswap64(*v227);
                    v232 = bswap64(*v230);
                    if (v231 == v232 && (v231 = bswap64(v227[1]), v232 = bswap64(result[1]), v231 == v232) && (v231 = bswap64(v227[2]), v232 = bswap64(result[2]), v231 == v232) && (v231 = bswap64(v227[3]), v232 = bswap64(result[3]), v231 == v232))
                    {
                      v233 = 0;
                    }

                    else if (v231 < v232)
                    {
                      v233 = -1;
                    }

                    else
                    {
                      v233 = 1;
                    }

                    if (v233 >= 0)
                    {
                      v222 = v228;
                    }

                    else
                    {
                      v227 = result;
                      v226 = v229;
                    }
                  }

                  *v224 = v227;
                  v224 = v226;
                }

                while (v222 <= ((v9 - 2) >> 1));
                if (v226 == --a2)
                {
                  *v226 = v223;
                }

                else
                {
                  *v226 = *a2;
                  *a2 = v223;
                  v234 = (v226 - v8 + 8) >> 3;
                  v235 = v234 < 2;
                  v236 = v234 - 2;
                  if (!v235)
                  {
                    v237 = v236 >> 1;
                    v238 = &v8[v237];
                    v239 = *v238;
                    v240 = *v226;
                    v241 = bswap64(**v238);
                    v242 = bswap64(**v226);
                    if (v241 != v242 || (v241 = bswap64(v239[1]), v242 = bswap64(v240[1]), v241 != v242) || (v241 = bswap64(v239[2]), v242 = bswap64(v240[2]), v241 != v242) || (v241 = bswap64(v239[3]), v242 = bswap64(v240[3]), v241 != v242))
                    {
                      v243 = v241 < v242 ? -1 : 1;
                      if (v243 < 0)
                      {
                        do
                        {
                          v244 = v238;
                          *v226 = v239;
                          if (!v237)
                          {
                            break;
                          }

                          v237 = (v237 - 1) >> 1;
                          v238 = &v8[v237];
                          v239 = *v238;
                          v245 = bswap64(**v238);
                          v246 = bswap64(*v240);
                          if (v245 == v246 && (v245 = bswap64(v239[1]), v246 = bswap64(v240[1]), v245 == v246) && (v245 = bswap64(v239[2]), v246 = bswap64(v240[2]), v245 == v246) && (v245 = bswap64(v239[3]), v246 = bswap64(v240[3]), v245 == v246))
                          {
                            v247 = 0;
                          }

                          else
                          {
                            v247 = v245 < v246 ? -1 : 1;
                          }

                          v226 = v244;
                        }

                        while (v247 < 0);
                        *v244 = v240;
                      }
                    }
                  }
                }

                v235 = v9-- <= 2;
              }

              while (!v235);
            }

            return result;
          }

          v10 = &v8[v9 >> 1];
          v11 = v10;
          v12 = *(a2 - 1);
          if (v9 >= 0x81)
          {
            v13 = *v10;
            v14 = *v8;
            v15 = bswap64(**v10);
            v16 = bswap64(**v8);
            if (v15 == v16 && (v15 = bswap64(v13[1]), v16 = bswap64(v14[1]), v15 == v16) && (v15 = bswap64(v13[2]), v16 = bswap64(v14[2]), v15 == v16) && (v15 = bswap64(v13[3]), v16 = bswap64(v14[3]), v15 == v16))
            {
              v17 = 0;
            }

            else if (v15 < v16)
            {
              v17 = -1;
            }

            else
            {
              v17 = 1;
            }

            v23 = bswap64(*v12);
            v24 = bswap64(*v13);
            if (v23 == v24 && (v23 = bswap64(v12[1]), v24 = bswap64(v13[1]), v23 == v24) && (v23 = bswap64(v12[2]), v24 = bswap64(v13[2]), v23 == v24) && (v23 = bswap64(v12[3]), v24 = bswap64(v13[3]), v23 == v24))
            {
              v25 = 0;
              if (v17 < 0)
              {
LABEL_31:
                if (v25 < 0)
                {
                  *v8 = v12;
                  goto LABEL_92;
                }

                *v8 = v13;
                *v10 = v14;
                v26 = *(a2 - 1);
                v27 = bswap64(*v26);
                v28 = bswap64(*v14);
                if (v27 == v28 && (v27 = bswap64(v26[1]), v28 = bswap64(v14[1]), v27 == v28) && (v27 = bswap64(v26[2]), v28 = bswap64(v14[2]), v27 == v28) && (v27 = bswap64(v26[3]), v28 = bswap64(v14[3]), v27 == v28))
                {
                  v29 = 0;
                }

                else if (v27 < v28)
                {
                  v29 = -1;
                }

                else
                {
                  v29 = 1;
                }

                if (v29 < 0)
                {
                  *v10 = v26;
LABEL_92:
                  *(a2 - 1) = v14;
                }

LABEL_93:
                v47 = v10 - 1;
                v48 = *(v10 - 1);
                v49 = v8[1];
                v50 = bswap64(*v48);
                v51 = bswap64(*v49);
                if (v50 == v51 && (v50 = bswap64(v48[1]), v51 = bswap64(v49[1]), v50 == v51) && (v50 = bswap64(v48[2]), v51 = bswap64(v49[2]), v50 == v51) && (v50 = bswap64(v48[3]), v51 = bswap64(v49[3]), v50 == v51))
                {
                  v52 = 0;
                }

                else if (v50 < v51)
                {
                  v52 = -1;
                }

                else
                {
                  v52 = 1;
                }

                v53 = *(a2 - 2);
                v54 = bswap64(*v53);
                v55 = bswap64(*v48);
                if (v54 == v55 && (v54 = bswap64(v53[1]), v55 = bswap64(v48[1]), v54 == v55) && (v54 = bswap64(v53[2]), v55 = bswap64(v48[2]), v54 == v55) && (v54 = bswap64(v53[3]), v55 = bswap64(v48[3]), v54 == v55))
                {
                  v56 = 0;
                  if (v52 < 0)
                  {
LABEL_106:
                    if (v56 < 0)
                    {
                      v8[1] = v53;
                      goto LABEL_135;
                    }

                    v8[1] = v48;
                    *v47 = v49;
                    v57 = *(a2 - 2);
                    v58 = bswap64(*v57);
                    v59 = bswap64(*v49);
                    if (v58 == v59 && (v58 = bswap64(v57[1]), v59 = bswap64(v49[1]), v58 == v59) && (v58 = bswap64(v57[2]), v59 = bswap64(v49[2]), v58 == v59) && (v58 = bswap64(v57[3]), v59 = bswap64(v49[3]), v58 == v59))
                    {
                      v60 = 0;
                    }

                    else if (v58 < v59)
                    {
                      v60 = -1;
                    }

                    else
                    {
                      v60 = 1;
                    }

                    if (v60 < 0)
                    {
                      *v47 = v57;
LABEL_135:
                      *(a2 - 2) = v49;
                    }

LABEL_136:
                    v68 = v10[1];
                    v66 = v10 + 1;
                    v67 = v68;
                    v69 = v8[2];
                    v70 = bswap64(*v68);
                    v71 = bswap64(*v69);
                    if (v70 == v71 && (v70 = bswap64(v67[1]), v71 = bswap64(v69[1]), v70 == v71) && (v70 = bswap64(v67[2]), v71 = bswap64(v69[2]), v70 == v71) && (v70 = bswap64(v67[3]), v71 = bswap64(v69[3]), v70 == v71))
                    {
                      v72 = 0;
                    }

                    else if (v70 < v71)
                    {
                      v72 = -1;
                    }

                    else
                    {
                      v72 = 1;
                    }

                    v73 = *(a2 - 3);
                    v74 = bswap64(*v73);
                    v75 = bswap64(*v67);
                    if (v74 == v75 && (v74 = bswap64(v73[1]), v75 = bswap64(v67[1]), v74 == v75) && (v74 = bswap64(v73[2]), v75 = bswap64(v67[2]), v74 == v75) && (v74 = bswap64(v73[3]), v75 = bswap64(v67[3]), v74 == v75))
                    {
                      v76 = 0;
                      if (v72 < 0)
                      {
LABEL_149:
                        if (v76 < 0)
                        {
                          v8[2] = v73;
                          goto LABEL_176;
                        }

                        v8[2] = v67;
                        *v66 = v69;
                        v77 = *(a2 - 3);
                        v78 = bswap64(*v77);
                        v79 = bswap64(*v69);
                        if (v78 == v79 && (v78 = bswap64(v77[1]), v79 = bswap64(v69[1]), v78 == v79) && (v78 = bswap64(v77[2]), v79 = bswap64(v69[2]), v78 == v79) && (v78 = bswap64(v77[3]), v79 = bswap64(v69[3]), v78 == v79))
                        {
                          v80 = 0;
                        }

                        else if (v78 < v79)
                        {
                          v80 = -1;
                        }

                        else
                        {
                          v80 = 1;
                        }

                        if (v80 < 0)
                        {
                          *v66 = v77;
LABEL_176:
                          *(a2 - 3) = v69;
                        }

LABEL_177:
                        v86 = *v11;
                        v87 = *v47;
                        v88 = bswap64(**v11);
                        v89 = bswap64(**v47);
                        if (v88 == v89 && (v88 = bswap64(v86[1]), v89 = bswap64(v87[1]), v88 == v89) && (v88 = bswap64(v86[2]), v89 = bswap64(v87[2]), v88 == v89) && (v88 = bswap64(v86[3]), v89 = bswap64(v87[3]), v88 == v89))
                        {
                          v90 = 0;
                        }

                        else if (v88 < v89)
                        {
                          v90 = -1;
                        }

                        else
                        {
                          v90 = 1;
                        }

                        v91 = *v66;
                        v92 = bswap64(**v66);
                        v93 = bswap64(*v86);
                        if (v92 == v93 && (v92 = bswap64(v91[1]), v93 = bswap64(v86[1]), v92 == v93) && (v92 = bswap64(v91[2]), v93 = bswap64(v86[2]), v92 == v93) && (v92 = bswap64(v91[3]), v93 = bswap64(v86[3]), v92 == v93))
                        {
                          v94 = 0;
                          if (v90 < 0)
                          {
LABEL_190:
                            if ((v94 & 0x80000000) == 0)
                            {
                              *v47 = v86;
                              *v11 = v87;
                              v95 = bswap64(*v91);
                              v96 = bswap64(*v87);
                              if (v95 == v96 && (v95 = bswap64(v91[1]), v96 = bswap64(v87[1]), v95 == v96) && (v95 = bswap64(v91[2]), v96 = bswap64(v87[2]), v95 == v96) && (v95 = bswap64(v91[3]), v96 = bswap64(v87[3]), v95 == v96))
                              {
                                v97 = 0;
                              }

                              else
                              {
                                v97 = v95 < v96 ? -1 : 1;
                              }

                              v47 = v11;
                              v86 = v91;
                              if ((v97 & 0x80000000) == 0)
                              {
                                v86 = v87;
                                goto LABEL_217;
                              }
                            }

                            goto LABEL_216;
                          }
                        }

                        else
                        {
                          if (v92 < v93)
                          {
                            v94 = -1;
                          }

                          else
                          {
                            v94 = 1;
                          }

                          if (v90 < 0)
                          {
                            goto LABEL_190;
                          }
                        }

                        if ((v94 & 0x80000000) == 0)
                        {
LABEL_217:
                          v101 = *v8;
                          *v8 = v86;
                          *v11 = v101;
                          goto LABEL_218;
                        }

                        *v11 = v91;
                        *v66 = v86;
                        v98 = bswap64(*v91);
                        v99 = bswap64(*v87);
                        if (v98 == v99 && (v98 = bswap64(v91[1]), v99 = bswap64(v87[1]), v98 == v99) && (v98 = bswap64(v91[2]), v99 = bswap64(v87[2]), v98 == v99) && (v98 = bswap64(v91[3]), v99 = bswap64(v87[3]), v98 == v99))
                        {
                          v100 = 0;
                        }

                        else if (v98 < v99)
                        {
                          v100 = -1;
                        }

                        else
                        {
                          v100 = 1;
                        }

                        v66 = v11;
                        v86 = v87;
                        if ((v100 & 0x80000000) == 0)
                        {
                          v86 = v91;
                          goto LABEL_217;
                        }

LABEL_216:
                        *v47 = v91;
                        *v66 = v87;
                        goto LABEL_217;
                      }
                    }

                    else
                    {
                      if (v74 < v75)
                      {
                        v76 = -1;
                      }

                      else
                      {
                        v76 = 1;
                      }

                      if (v72 < 0)
                      {
                        goto LABEL_149;
                      }
                    }

                    if (v76 < 0)
                    {
                      *v66 = v73;
                      *(a2 - 3) = v67;
                      v81 = *v66;
                      v82 = v8[2];
                      v83 = bswap64(**v66);
                      v84 = bswap64(*v82);
                      if (v83 == v84 && (v83 = bswap64(v81[1]), v84 = bswap64(v82[1]), v83 == v84) && (v83 = bswap64(v81[2]), v84 = bswap64(v82[2]), v83 == v84) && (v83 = bswap64(v81[3]), v84 = bswap64(v82[3]), v83 == v84))
                      {
                        v85 = 0;
                      }

                      else
                      {
                        v85 = v83 < v84 ? -1 : 1;
                      }

                      if (v85 < 0)
                      {
                        v8[2] = v81;
                        *v66 = v82;
                      }
                    }

                    goto LABEL_177;
                  }
                }

                else
                {
                  if (v54 < v55)
                  {
                    v56 = -1;
                  }

                  else
                  {
                    v56 = 1;
                  }

                  if (v52 < 0)
                  {
                    goto LABEL_106;
                  }
                }

                if (v56 < 0)
                {
                  *v47 = v53;
                  *(a2 - 2) = v48;
                  v61 = *v47;
                  v62 = v8[1];
                  v63 = bswap64(**v47);
                  v64 = bswap64(*v62);
                  if (v63 == v64 && (v63 = bswap64(v61[1]), v64 = bswap64(v62[1]), v63 == v64) && (v63 = bswap64(v61[2]), v64 = bswap64(v62[2]), v63 == v64) && (v63 = bswap64(v61[3]), v64 = bswap64(v62[3]), v63 == v64))
                  {
                    v65 = 0;
                  }

                  else
                  {
                    v65 = v63 < v64 ? -1 : 1;
                  }

                  if (v65 < 0)
                  {
                    v8[1] = v61;
                    *v47 = v62;
                  }
                }

                goto LABEL_136;
              }
            }

            else
            {
              if (v23 < v24)
              {
                v25 = -1;
              }

              else
              {
                v25 = 1;
              }

              if (v17 < 0)
              {
                goto LABEL_31;
              }
            }

            if (v25 < 0)
            {
              *v10 = v12;
              *(a2 - 1) = v13;
              v37 = *v10;
              v38 = *v8;
              v39 = bswap64(**v10);
              v40 = bswap64(**v8);
              if (v39 == v40 && (v39 = bswap64(v37[1]), v40 = bswap64(v38[1]), v39 == v40) && (v39 = bswap64(v37[2]), v40 = bswap64(v38[2]), v39 == v40) && (v39 = bswap64(v37[3]), v40 = bswap64(v38[3]), v39 == v40))
              {
                v41 = 0;
              }

              else
              {
                v41 = v39 < v40 ? -1 : 1;
              }

              if (v41 < 0)
              {
                *v8 = v37;
                *v10 = v38;
              }
            }

            goto LABEL_93;
          }

          v18 = *v8;
          v19 = *v10;
          v20 = bswap64(**v8);
          v21 = bswap64(**v11);
          if (v20 == v21 && (v20 = bswap64(v18[1]), v21 = bswap64(v19[1]), v20 == v21) && (v20 = bswap64(v18[2]), v21 = bswap64(v19[2]), v20 == v21) && (v20 = bswap64(v18[3]), v21 = bswap64(v19[3]), v20 == v21))
          {
            v22 = 0;
          }

          else
          {
            v22 = v20 < v21 ? -1 : 1;
          }

          v30 = bswap64(*v12);
          v31 = bswap64(*v18);
          if (v30 == v31 && (v30 = bswap64(v12[1]), v31 = bswap64(v18[1]), v30 == v31) && (v30 = bswap64(v12[2]), v31 = bswap64(v18[2]), v30 == v31) && (v30 = bswap64(v12[3]), v31 = bswap64(v18[3]), v30 == v31))
          {
            v32 = 0;
            if ((v22 & 0x80000000) == 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v30 < v31)
            {
              v32 = -1;
            }

            else
            {
              v32 = 1;
            }

            if ((v22 & 0x80000000) == 0)
            {
LABEL_65:
              if (v32 < 0)
              {
                *v8 = v12;
                *(a2 - 1) = v18;
                v42 = *v8;
                v43 = *v11;
                v44 = bswap64(**v8);
                v45 = bswap64(**v11);
                if (v44 == v45 && (v44 = bswap64(v42[1]), v45 = bswap64(v43[1]), v44 == v45) && (v44 = bswap64(v42[2]), v45 = bswap64(v43[2]), v44 == v45) && (v44 = bswap64(v42[3]), v45 = bswap64(v43[3]), v44 == v45))
                {
                  v46 = 0;
                }

                else
                {
                  v46 = v44 < v45 ? -1 : 1;
                }

                if (v46 < 0)
                {
                  *v11 = v42;
                  *v8 = v43;
                }
              }

              goto LABEL_218;
            }
          }

          if (v32 < 0)
          {
            *v11 = v12;
            goto LABEL_133;
          }

          *v11 = v18;
          *v8 = v19;
          v33 = *(a2 - 1);
          v34 = bswap64(*v33);
          v35 = bswap64(*v19);
          if (v34 == v35 && (v34 = bswap64(v33[1]), v35 = bswap64(v19[1]), v34 == v35) && (v34 = bswap64(v33[2]), v35 = bswap64(v19[2]), v34 == v35) && (v34 = bswap64(v33[3]), v35 = bswap64(v19[3]), v34 == v35))
          {
            v36 = 0;
          }

          else if (v34 < v35)
          {
            v36 = -1;
          }

          else
          {
            v36 = 1;
          }

          if (v36 < 0)
          {
            *v8 = v33;
LABEL_133:
            *(a2 - 1) = v19;
          }

LABEL_218:
          --a3;
          v102 = *v8;
          if (a4)
          {
            break;
          }

          v103 = *(v8 - 1);
          v104 = bswap64(*v103);
          v105 = bswap64(*v102);
          if (v104 == v105 && (v104 = bswap64(v103[1]), v105 = bswap64(v102[1]), v104 == v105) && (v104 = bswap64(v103[2]), v105 = bswap64(v102[2]), v104 == v105) && (v104 = bswap64(v103[3]), v105 = bswap64(v102[3]), v104 == v105))
          {
            v106 = 0;
          }

          else
          {
            v106 = v104 < v105 ? -1 : 1;
          }

          if (v106 < 0)
          {
            break;
          }

          v137 = *(a2 - 1);
          v138 = bswap64(*v102);
          v139 = bswap64(*v137);
          if (v138 == v139 && (v138 = bswap64(v102[1]), v139 = bswap64(v137[1]), v138 == v139) && (v138 = bswap64(v102[2]), v139 = bswap64(v137[2]), v138 == v139) && (v138 = bswap64(v102[3]), v139 = bswap64(v137[3]), v138 == v139))
          {
            v140 = 0;
          }

          else if (v138 < v139)
          {
            v140 = -1;
          }

          else
          {
            v140 = 1;
          }

          if (v140 < 0)
          {
            do
            {
              do
              {
                v147 = v8[1];
                ++v8;
                v146 = v147;
                v148 = bswap64(*v102);
                v149 = bswap64(*v147);
                if (v148 != v149)
                {
                  break;
                }

                v148 = bswap64(v102[1]);
                v149 = bswap64(v146[1]);
                if (v148 != v149)
                {
                  break;
                }

                v148 = bswap64(v102[2]);
                v149 = bswap64(v146[2]);
                if (v148 != v149)
                {
                  break;
                }

                v148 = bswap64(v102[3]);
                v149 = bswap64(v146[3]);
              }

              while (v148 == v149);
              if (v148 < v149)
              {
                v150 = -1;
              }

              else
              {
                v150 = 1;
              }
            }

            while ((v150 & 0x80000000) == 0);
          }

          else
          {
            v141 = v8 + 1;
            do
            {
              v8 = v141;
              if (v141 >= a2)
              {
                break;
              }

              v142 = *v141;
              v143 = bswap64(*v102);
              v144 = bswap64(**v8);
              if (v143 == v144 && (v143 = bswap64(v102[1]), v144 = bswap64(v142[1]), v143 == v144) && (v143 = bswap64(v102[2]), v144 = bswap64(v142[2]), v143 == v144) && (v143 = bswap64(v102[3]), v144 = bswap64(v142[3]), v143 == v144))
              {
                v145 = 0;
              }

              else
              {
                v145 = v143 < v144 ? -1 : 1;
              }

              v141 = v8 + 1;
            }

            while ((v145 & 0x80000000) == 0);
          }

          v151 = a2;
          if (v8 < a2)
          {
            v151 = a2;
            do
            {
              v153 = *--v151;
              v152 = v153;
              v154 = bswap64(*v102);
              v155 = bswap64(*v153);
              if (v154 == v155)
              {
                v154 = bswap64(v102[1]);
                v155 = bswap64(v152[1]);
                if (v154 == v155)
                {
                  v154 = bswap64(v102[2]);
                  v155 = bswap64(v152[2]);
                  if (v154 == v155)
                  {
                    v154 = bswap64(v102[3]);
                    v155 = bswap64(v152[3]);
                    if (v154 == v155)
                    {
                      break;
                    }
                  }
                }
              }

              v156 = v154 < v155 ? -1 : 1;
            }

            while (v156 < 0);
          }

          if (v8 < v151)
          {
            v157 = *v8;
            v158 = *v151;
            do
            {
              *v8 = v158;
              *v151 = v157;
              do
              {
                do
                {
                  v159 = v8[1];
                  ++v8;
                  v157 = v159;
                  v160 = bswap64(*v102);
                  v161 = bswap64(*v159);
                  if (v160 != v161)
                  {
                    break;
                  }

                  v160 = bswap64(v102[1]);
                  v161 = bswap64(v157[1]);
                  if (v160 != v161)
                  {
                    break;
                  }

                  v160 = bswap64(v102[2]);
                  v161 = bswap64(v157[2]);
                  if (v160 != v161)
                  {
                    break;
                  }

                  v160 = bswap64(v102[3]);
                  v161 = bswap64(v157[3]);
                }

                while (v160 == v161);
                if (v160 < v161)
                {
                  v162 = -1;
                }

                else
                {
                  v162 = 1;
                }
              }

              while ((v162 & 0x80000000) == 0);
              do
              {
                v164 = *--v151;
                v158 = v164;
                v165 = bswap64(*v102);
                v166 = bswap64(*v164);
                if (v165 == v166)
                {
                  v165 = bswap64(v102[1]);
                  v166 = bswap64(v158[1]);
                  if (v165 == v166)
                  {
                    v165 = bswap64(v102[2]);
                    v166 = bswap64(v158[2]);
                    if (v165 == v166)
                    {
                      v165 = bswap64(v102[3]);
                      v166 = bswap64(v158[3]);
                      if (v165 == v166)
                      {
                        break;
                      }
                    }
                  }
                }

                v163 = v165 < v166 ? -1 : 1;
              }

              while (v163 < 0);
            }

            while (v8 < v151);
          }

          v167 = v8 - 1;
          if (v8 - 1 != v7)
          {
            *v7 = *v167;
          }

          a4 = 0;
          *v167 = v102;
        }

        v107 = 0;
        do
        {
          v108 = v8[v107 + 1];
          v109 = bswap64(*v108);
          v110 = bswap64(*v102);
          if (v109 == v110 && (v109 = bswap64(v108[1]), v110 = bswap64(v102[1]), v109 == v110) && (v109 = bswap64(v108[2]), v110 = bswap64(v102[2]), v109 == v110) && (v109 = bswap64(v108[3]), v110 = bswap64(v102[3]), v109 == v110))
          {
            v111 = 0;
          }

          else if (v109 < v110)
          {
            v111 = -1;
          }

          else
          {
            v111 = 1;
          }

          ++v107;
        }

        while (v111 < 0);
        v112 = &v8[v107];
        v113 = a2;
        if (v107 == 1)
        {
          v113 = a2;
          while (v112 < v113)
          {
            v120 = *--v113;
            v119 = v120;
            v121 = bswap64(*v120);
            v122 = bswap64(*v102);
            if (v121 == v122)
            {
              v121 = bswap64(v119[1]);
              v122 = bswap64(v102[1]);
              if (v121 == v122)
              {
                v121 = bswap64(v119[2]);
                v122 = bswap64(v102[2]);
                if (v121 == v122)
                {
                  v121 = bswap64(v119[3]);
                  v122 = bswap64(v102[3]);
                  if (v121 == v122)
                  {
                    continue;
                  }
                }
              }
            }

            v123 = v121 < v122 ? -1 : 1;
            if (v123 < 0)
            {
              break;
            }
          }
        }

        else
        {
          do
          {
            do
            {
              v115 = *--v113;
              v114 = v115;
              v116 = bswap64(*v115);
              v117 = bswap64(*v102);
              if (v116 != v117)
              {
                break;
              }

              v116 = bswap64(v114[1]);
              v117 = bswap64(v102[1]);
              if (v116 != v117)
              {
                break;
              }

              v116 = bswap64(v114[2]);
              v117 = bswap64(v102[2]);
              if (v116 != v117)
              {
                break;
              }

              v116 = bswap64(v114[3]);
              v117 = bswap64(v102[3]);
            }

            while (v116 == v117);
            if (v116 < v117)
            {
              v118 = -1;
            }

            else
            {
              v118 = 1;
            }
          }

          while ((v118 & 0x80000000) == 0);
        }

        if (v112 >= v113)
        {
          v135 = v112 - 1;
        }

        else
        {
          v124 = *v113;
          v125 = v112;
          v126 = v113;
          do
          {
            *v125 = v124;
            *v126 = v108;
            do
            {
              v127 = v125[1];
              ++v125;
              v108 = v127;
              v128 = bswap64(*v127);
              v129 = bswap64(*v102);
              if (v128 == v129)
              {
                v128 = bswap64(v108[1]);
                v129 = bswap64(v102[1]);
                if (v128 == v129)
                {
                  v128 = bswap64(v108[2]);
                  v129 = bswap64(v102[2]);
                  if (v128 == v129)
                  {
                    v128 = bswap64(v108[3]);
                    v129 = bswap64(v102[3]);
                    if (v128 == v129)
                    {
                      break;
                    }
                  }
                }
              }

              v130 = v128 < v129 ? -1 : 1;
            }

            while (v130 < 0);
            do
            {
              do
              {
                v132 = *--v126;
                v124 = v132;
                v133 = bswap64(*v132);
                v134 = bswap64(*v102);
                if (v133 != v134)
                {
                  break;
                }

                v133 = bswap64(v124[1]);
                v134 = bswap64(v102[1]);
                if (v133 != v134)
                {
                  break;
                }

                v133 = bswap64(v124[2]);
                v134 = bswap64(v102[2]);
                if (v133 != v134)
                {
                  break;
                }

                v133 = bswap64(v124[3]);
                v134 = bswap64(v102[3]);
              }

              while (v133 == v134);
              if (v133 < v134)
              {
                v131 = -1;
              }

              else
              {
                v131 = 1;
              }
            }

            while ((v131 & 0x80000000) == 0);
          }

          while (v125 < v126);
          v135 = v125 - 1;
        }

        if (v135 != v8)
        {
          *v8 = *v135;
        }

        *v135 = v102;
        if (v112 >= v113)
        {
          break;
        }

LABEL_287:
        result = std::__introsort<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**,false>(v7, v135, a3, a4 & 1);
        a4 = 0;
        v8 = v135 + 1;
      }

      v136 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**>(v8, v135);
      v8 = v135 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**>(v135 + 1, a2);
      if (result)
      {
        break;
      }

      if (!v136)
      {
        goto LABEL_287;
      }
    }

    a2 = v135;
    if (!v136)
    {
      continue;
    }

    return result;
  }
}

unint64_t **std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLMetalScriptBuilderImpl::addStitchedFunctionLibraryWithDescriptorInternal(objc_object  {objcproto11MTLFunction}*,objc_object  {objcproto10MTLLibrary}*,MTLStitchedLibraryDescriptor *)::$_0 &,MTLUINT256_t const**,0>(unint64_t **result, unint64_t **a2, unint64_t **a3, unint64_t **a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = bswap64(**a2);
  v7 = bswap64(**result);
  if (v6 == v7 && (v6 = bswap64(v4[1]), v7 = bswap64(v5[1]), v6 == v7) && (v6 = bswap64(v4[2]), v7 = bswap64(v5[2]), v6 == v7) && (v6 = bswap64(v4[3]), v7 = bswap64(v5[3]), v6 == v7))
  {
    v8 = 0;
  }

  else if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  v9 = *a3;
  v10 = bswap64(**a3);
  v11 = bswap64(*v4);
  if (v10 != v11 || (v10 = bswap64(v9[1]), v11 = bswap64(v4[1]), v10 != v11) || (v10 = bswap64(v9[2]), v11 = bswap64(v4[2]), v10 != v11) || (v10 = bswap64(v9[3]), v11 = bswap64(v4[3]), v10 != v11))
  {
    if (v10 < v11)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v8 < 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (v12 < 0)
    {
      *a2 = v9;
      *a3 = v4;
      v16 = *a2;
      v17 = *result;
      v18 = bswap64(**a2);
      v19 = bswap64(**result);
      if (v18 == v19 && (v18 = bswap64(v16[1]), v19 = bswap64(v17[1]), v18 == v19) && (v18 = bswap64(v16[2]), v19 = bswap64(v17[2]), v18 == v19) && (v18 = bswap64(v16[3]), v19 = bswap64(v17[3]), v18 == v19))
      {
        v20 = 0;
      }

      else if (v18 < v19)
      {
        v20 = -1;
      }

      else
      {
        v20 = 1;
      }

      if (v20 < 0)
      {
        *result = v16;
        *a2 = v17;
        v4 = *a3;
      }
    }

    else
    {
      v4 = *a3;
    }

    goto LABEL_43;
  }

  v12 = 0;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v12 < 0)
  {
    *result = v9;
    goto LABEL_42;
  }

  *result = v4;
  *a2 = v5;
  v4 = *a3;
  v13 = bswap64(**a3);
  v14 = bswap64(*v5);
  if (v13 == v14 && (v13 = bswap64(v4[1]), v14 = bswap64(v5[1]), v13 == v14) && (v13 = bswap64(v4[2]), v14 = bswap64(v5[2]), v13 == v14) && (v13 = bswap64(v4[3]), v14 = bswap64(v5[3]), v13 == v14))
  {
    v15 = 0;
  }

  else if (v13 < v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if (v15 < 0)
  {
    *a2 = v4;
LABEL_42:
    *a3 = v5;
    v4 = v5;
  }

LABEL_43:
  v21 = *a4;
  v22 = bswap64(**a4);
  v23 = bswap64(*v4);
  if (v22 != v23 || (v22 = bswap64(v21[1]), v23 = bswap64(v4[1]), v22 != v23) || (v22 = bswap64(v21[2]), v23 = bswap64(v4[2]), v22 != v23) || (v22 = bswap64(v21[3]), v23 = bswap64(v4[3]), v22 != v23))
  {
    v24 = v22 < v23 ? -1 : 1;
    if (v24 < 0)
    {
      *a3 = v21;
      *a4 = v4;
      v25 = *a3;
      v26 = *a2;
      v27 = bswap64(**a3);
      v28 = bswap64(**a2);
      if (v27 == v28 && (v27 = bswap64(v25[1]), v28 = bswap64(v26[1]), v27 == v28) && (v27 = bswap64(v25[2]), v28 = bswap64(v26[2]), v27 == v28) && (v27 = bswap64(v25[3]), v28 = bswap64(v26[3]), v27 == v28))
      {
        v29 = 0;
      }

      else
      {
        v29 = v27 < v28 ? -1 : 1;
      }

      if (v29 < 0)
      {
        *a2 = v25;
        *a3 = v26;
        v30 = *a2;
        v31 = *result;
        v32 = bswap64(**a2);
        v33 = bswap64(**result);
        if (v32 == v33 && (v32 = bswap64(v30[1]), v33 = bswap64(v31[1]), v32 == v33) && (v32 = bswap64(v30[2]), v33 = bswap64(v31[2]), v32 == v33) && (v32 = bswap64(v30[3]), v33 = bswap64(v31[3]), v32 == v33))
        {
          v34 = 0;
        }

        else if (v32 < v33)
        {
          v34 = -1;
        }

        else
        {
          v34 = 1;
        }

        if (v34 < 0)
        {
          *result = v30;
          *a2 = v31;
        }
      }
    }
  }

  return result;
}