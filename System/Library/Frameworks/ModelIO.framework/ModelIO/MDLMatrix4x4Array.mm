@interface MDLMatrix4x4Array
- (MDLDataPrecision)precision;
- (MDLMatrix4x4Array)initWithElementCount:(NSUInteger)arrayElementCount;
- (NSUInteger)getDouble4x4Array:(matrix_double4x4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat4x4Array:(matrix_float4x4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (void)clear;
- (void)resetWithUsdAttribute:(const void *)attribute;
- (void)resetWithUsdAttribute:(const void *)attribute time:(double)time;
- (void)setDouble4x4Array:(const matrix_double4x4 *)valuesArray count:(NSUInteger)count;
- (void)setFloat4x4Array:(const matrix_float4x4 *)valuesArray count:(NSUInteger)count;
@end

@implementation MDLMatrix4x4Array

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MDLMatrix4x4Array alloc];
  elementCount = self->_elementCount;

  return objc_msgSend_initWithElementCount_(v4, v5, elementCount, v6, v11, v12, v13, v14, v7, v8, v9, v10);
}

- (MDLDataPrecision)precision
{
  if (sub_239F20504(&self->_data))
  {
    return 1;
  }

  if (sub_239F2053C(&self->_data))
  {
    return 2;
  }

  return 0;
}

- (VtValue)defaultVtValue
{
  v4 = v2;
  if (sub_239F20504(&self->_data))
  {
    sub_239F20650(v7, 0);
    v4[1] = &off_284D160D8;
    sub_239EB5D90(v4, v7);
  }

  v5 = sub_239F2053C(&self->_data);
  if (v5)
  {
    sub_239F206C8(v7, 0);
    v4[1] = &off_284D16190;
    sub_239EB5D90(v4, v7);
  }

  v4[1] = 0;
  result._info._ptrAndBits = v6;
  result._storage = v5;
  return result;
}

- (void)resetWithUsdAttribute:(const void *)attribute
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((sub_239F20504(v4) & 1) != 0 || sub_239F2053C(v4))
  {
    sub_239EF2160(&self->_data._storage, v4);
  }

  sub_239E5B240(v4);
}

- (void)resetWithUsdAttribute:(const void *)attribute time:(double)time
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((sub_239F20504(v5) & 1) != 0 || sub_239F2053C(v5))
  {
    sub_239EF2160(&self->_data._storage, v5);
  }

  sub_239E5B240(v5);
}

- (void)clear
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[1] = 0;
  sub_239EC8B1C(&self->_data._storage, v2);
  sub_239E5B240(v2);
}

- (MDLMatrix4x4Array)initWithElementCount:(NSUInteger)arrayElementCount
{
  v8.receiver = self;
  v8.super_class = MDLMatrix4x4Array;
  v4 = [(MDLMatrix4x4Array *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_elementCount = arrayElementCount;
    v6 = v4;
  }

  return v5;
}

- (void)setFloat4x4Array:(const matrix_float4x4 *)valuesArray count:(NSUInteger)count
{
  v4 = count;
  v16[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_239F20650(v14, count);
    if (v4)
    {
      v7 = &valuesArray->columns[2];
      v8 = 32;
      do
      {
        v12 = v7[-1];
        v13 = v7[-2];
        v10 = v7[1];
        v11 = *v7;
        sub_239F22888(v14);
        v9 = (v15 + v8);
        v9[-2] = v13;
        v9[-1] = v12;
        *v9 = v11;
        v9[1] = v10;
        v8 += 64;
        v7 += 4;
        --v4;
      }

      while (v4);
    }

    v16[1] = &off_284D160D8;
    sub_239EB5D90(v16, v14);
  }

  NSLog(&cfstr_ArrayCountLuHa.isa, a2, valuesArray, count, elementCount);
}

- (void)setDouble4x4Array:(const matrix_double4x4 *)valuesArray count:(NSUInteger)count
{
  v4 = count;
  v19[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_239F206C8(v17, count);
    if (v4)
    {
      v7 = 0;
      do
      {
        v15 = *&valuesArray[v7].columns[1].f64[2];
        v16 = *&valuesArray[v7].columns[0].f64[2];
        v11 = *valuesArray[v7].columns[1].f64;
        v12 = *valuesArray[v7].columns[0].f64;
        v13 = *&valuesArray[v7].columns[3].f64[2];
        v14 = *&valuesArray[v7].columns[2].f64[2];
        v9 = *valuesArray[v7].columns[3].f64;
        v10 = *valuesArray[v7].columns[2].f64;
        sub_239F228CC(v17);
        v8 = (v18 + v7 * 128);
        *v8 = v12;
        v8[1] = v16;
        v8[2] = v11;
        v8[3] = v15;
        v8[4] = v10;
        v8[5] = v14;
        v8[6] = v9;
        v8[7] = v13;
        ++v7;
        --v4;
      }

      while (v4);
    }

    v19[1] = &off_284D16190;
    sub_239EB5D90(v19, v17);
  }

  NSLog(&cfstr_ArrayCountLuHa.isa, a2, valuesArray, count, elementCount);
}

- (NSUInteger)getFloat4x4Array:(matrix_float4x4 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v4 = maxCount;
  v23 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v22.__vftable = 0;
    v22.__type_name = 0;
    sub_239E5F7D4(&v22, &self->_data._storage);
    if (v22.__type_name)
    {
      if ((sub_239F20504(&v22) & 1) == 0)
      {
        v7 = sub_239F20DD0(&v22);
        sub_239EF2160(&v22, v7);
      }

      v8 = sub_239F20E5C(&v22);
      v9 = *(v8 + 16);
      v19 = *v8;
      v20 = v9;
      v10 = *(v8 + 32);
      v21 = v10;
      if (v10)
      {
        v11 = (v10 - 16);
        if (*(&v20 + 1))
        {
          v11 = *(&v20 + 1);
        }

        atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
      }

      if (v19 < v4)
      {
        v4 = v19;
      }

      if (v4)
      {
        v12 = &valuesArray->columns[2];
        v13 = 32;
        v14 = v4;
        do
        {
          sub_239F22888(&v19);
          v15 = *(v21 + v13 - 16);
          v16 = *(v21 + v13);
          v17 = *(v21 + v13 + 16);
          v12[-2] = *(v21 + v13 - 32);
          v12[-1] = v15;
          *v12 = v16;
          v12[1] = v17;
          v12 += 4;
          v13 += 64;
          --v14;
        }

        while (v14);
      }

      sub_239E56C80(&v19);
    }

    else
    {
      v4 = 0;
    }

    sub_239E5B240(&v22);
  }

  else
  {
    NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, valuesArray, maxCount, elementCount);
    return 0;
  }

  return v4;
}

- (NSUInteger)getDouble4x4Array:(matrix_double4x4 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v4 = maxCount;
  v27 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v26.__vftable = 0;
    v26.__type_name = 0;
    sub_239E5F7D4(&v26, &self->_data._storage);
    if (v26.__type_name)
    {
      if ((sub_239F2053C(&v26) & 1) == 0)
      {
        v7 = sub_239F210D0(&v26);
        sub_239EF2160(&v26, v7);
      }

      v8 = sub_239F2115C(&v26);
      v9 = *(v8 + 16);
      v23 = *v8;
      v24 = v9;
      v10 = *(v8 + 32);
      v25 = v10;
      if (v10)
      {
        v11 = (v10 - 16);
        if (*(&v24 + 1))
        {
          v11 = *(&v24 + 1);
        }

        atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
      }

      if (v23 < v4)
      {
        v4 = v23;
      }

      if (v4)
      {
        v12 = 112;
        v13 = v4;
        do
        {
          sub_239F228CC(&v23);
          v14 = *(v25 + v12 - 96);
          v15 = *(v25 + v12 - 80);
          v16 = *(v25 + v12 - 64);
          v17 = *(v25 + v12 - 48);
          v18 = *(v25 + v12 - 32);
          v19 = *(v25 + v12 - 16);
          v20 = *(v25 + v12);
          v21 = (valuesArray + v12);
          *(v21 - 7) = *(v25 + v12 - 112);
          *(v21 - 6) = v14;
          *(v21 - 5) = v15;
          *(v21 - 4) = v16;
          *(v21 - 3) = v17;
          *(v21 - 2) = v18;
          *(v21 - 1) = v19;
          *v21 = v20;
          v12 += 128;
          --v13;
        }

        while (v13);
      }

      sub_239E56C80(&v23);
    }

    else
    {
      v4 = 0;
    }

    sub_239E5B240(&v26);
  }

  else
  {
    NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, valuesArray, maxCount, elementCount);
    return 0;
  }

  return v4;
}

@end