@interface USKData
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (NSData)dataNoCopy;
- (USKData)initWithBool:(BOOL)bool;
- (USKData)initWithDouble2:(USKData *)self;
- (USKData)initWithDouble2Array:(USKData *)self count:(SEL)count;
- (USKData)initWithDouble3:(USKData *)self;
- (USKData)initWithDouble3Array:(USKData *)self count:(SEL)count;
- (USKData)initWithDouble4:(USKData *)self;
- (USKData)initWithDouble4Array:(USKData *)self count:(SEL)count;
- (USKData)initWithDouble4x4:(__int128 *)double4x4;
- (USKData)initWithDouble4x4Array:(id *)array count:(unint64_t)count;
- (USKData)initWithDouble:(double)double;
- (USKData)initWithDoubleArray:(double *)array count:(unint64_t)count;
- (USKData)initWithFloat2:(USKData *)self;
- (USKData)initWithFloat2Array:(USKData *)self count:(SEL)count;
- (USKData)initWithFloat3:(USKData *)self;
- (USKData)initWithFloat3Array:(USKData *)self count:(SEL)count;
- (USKData)initWithFloat4:(USKData *)self;
- (USKData)initWithFloat4Array:(USKData *)self count:(SEL)count;
- (USKData)initWithFloat:(float)float;
- (USKData)initWithFloatArray:(float *)array count:(unint64_t)count;
- (USKData)initWithInt:(int)int;
- (USKData)initWithIntArray:(int *)array count:(unint64_t)count;
- (USKData)initWithObjectPath:(id)path;
- (USKData)initWithQuatf:(uint64_t)quatf;
- (USKData)initWithQuatfArray:(id *)array count:(unint64_t)count;
- (USKData)initWithResourcePath:(id)path;
- (USKData)initWithResourcePathArray:(id)array;
- (USKData)initWithString:(id)string;
- (USKData)initWithStringArray:(id)array;
- (USKData)initWithTimeCode:(id)code;
- (USKData)initWithToken:(id)token;
- (USKData)initWithTokenArray:(id)array;
- (USKData)initWithUInt:(unsigned int)int;
- (USKData)initWithUIntArray:(unsigned int *)array count:(unint64_t)count;
- (USKData)initWithURL:(id)l;
- (USKData)initWithVtValue:(VtValue)value typeName:(TfToken)name;
- (USKData)initWithVtValue:(VtValue)value typeName:(TfToken)name withNodeOwner:(id)owner;
- (USKData)initWithVtValue:(VtValue)value typeName:(TfToken)name withPropertyOwner:(id)owner;
- (USKData)initWithVtValue:(VtValue)value typeName:(TfToken)name withSceneOwner:(id)owner;
- (VtValue)value;
- (double)double2Value;
- (double)double4x4Value;
- (double)doubleValue;
- (double)float3Value;
- (double)float4Value;
- (double)float4x4Value;
- (double)quatfValue;
- (float)floatValue;
- (id)objectPathValue;
- (id)pathArray;
- (id)resourcePath;
- (id)resourcePathArray;
- (id)stringArray;
- (id)stringValue;
- (id)timeCodeValue;
- (id)tokenArray;
- (id)tokenValue;
- (id)urlValue;
- (int)intValue;
- (int8x8_t)float2Value;
- (uint64_t)double3Value;
- (uint64_t)double4Value;
- (unint64_t)double2Array:(USKData *)self maxCount:(SEL)count;
- (unint64_t)double3Array:(USKData *)self maxCount:(SEL)count;
- (unint64_t)double4Array:(USKData *)self maxCount:(SEL)count;
- (unint64_t)double4x4Array:(id *)array maxCount:(unint64_t)count;
- (unint64_t)doubleArray:(double *)array maxCount:(unint64_t)count;
- (unint64_t)float2Array:(USKData *)self maxCount:(SEL)count;
- (unint64_t)float3Array:(USKData *)self maxCount:(SEL)count;
- (unint64_t)float4Array:(USKData *)self maxCount:(SEL)count;
- (unint64_t)float4x4Array:(id *)array maxCount:(unint64_t)count;
- (unint64_t)floatArray:(float *)array maxCount:(unint64_t)count;
- (unint64_t)intArray:(int *)array maxCount:(unint64_t)count;
- (unint64_t)quatfArray:(id *)array maxCount:(unint64_t)count;
- (unint64_t)uintArray:(unsigned int *)array maxCount:(unint64_t)count;
- (unsigned)uintValue;
- (void)setBoolValue:(BOOL)value;
- (void)setDouble2Array:(USKData *)self count:(SEL)count;
- (void)setDouble3Array:(USKData *)self count:(SEL)count;
- (void)setDouble4Array:(USKData *)self count:(SEL)count;
- (void)setDouble4x4Array:(id *)array count:(unint64_t)count;
- (void)setDoubleArray:(double *)array count:(unint64_t)count;
- (void)setDoubleValue:(double)value;
- (void)setFloat2Array:(USKData *)self count:(SEL)count;
- (void)setFloat2Value:(USKData *)self;
- (void)setFloat3Array:(USKData *)self count:(SEL)count;
- (void)setFloat4Array:(USKData *)self count:(SEL)count;
- (void)setFloatArray:(float *)array count:(unint64_t)count;
- (void)setFloatValue:(float)value;
- (void)setIntArray:(int *)array count:(unint64_t)count;
- (void)setIntValue:(int)value;
- (void)setObjectPathValue:(id)value;
- (void)setQuatfArray:(id *)array count:(unint64_t)count;
- (void)setResourcePath:(id)path;
- (void)setResourcePathArray:(id)array;
- (void)setStringArray:(id)array;
- (void)setStringValue:(id)value;
- (void)setTimeCodeValue:(id)value;
- (void)setTokenArray:(id)array;
- (void)setTokenValue:(id)value;
- (void)setUIntArray:(unsigned int *)array count:(unint64_t)count;
- (void)setUIntValue:(unsigned int)value;
- (void)setURLValue:(id)value;
- (void)setValue:(VtValue)value;
@end

@implementation USKData

- (VtValue)value
{
  v3 = sub_270313C14(v2, &self->_value._storage);
  result._info._ptrAndBits = v4;
  result._storage = v3;
  return result;
}

- (USKData)initWithVtValue:(VtValue)value typeName:(TfToken)name
{
  ptrAndBits = value._info._ptrAndBits;
  storage = value._storage;
  sub_27035CAC4();
  v17.receiver = self;
  v17.super_class = USKData;
  v9 = [(USKData *)&v17 init];
  if (v9)
  {
    v10 = *ptrAndBits;
    v16 = v10;
    if ((v10 & 7) != 0)
    {
      v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 = v11;
      }
    }

    v12 = objc_msgSend_dataTypeWithTfToken_(USKToken, v7, &v16, v8);
    type = v9->_type;
    v9->_type = v12;

    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_27031A1C0(&v9->_value._storage, storage);
    v9->_arraySize = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(storage);
    v14 = v9;
  }

  return v9;
}

- (USKData)initWithVtValue:(VtValue)value typeName:(TfToken)name withNodeOwner:(id)owner
{
  ptrAndBits = value._info._ptrAndBits;
  storage = value._storage;
  v9 = name._rep._ptrAndBits;
  sub_27035CAC4();
  v20.receiver = self;
  v20.super_class = USKData;
  v12 = [(USKData *)&v20 init];
  if (v12)
  {
    v13 = *ptrAndBits;
    v19 = v13;
    if ((v13 & 7) != 0)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
      {
        v19 = v14;
      }
    }

    v15 = objc_msgSend_dataTypeWithTfToken_(USKToken, v10, &v19, v11);
    type = v12->_type;
    v12->_type = v15;

    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_27031A1C0(&v12->_value._storage, storage);
    v12->_arraySize = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(storage);
    objc_storeStrong(&v12->_nodeOwner, name._rep._ptrAndBits);
    v17 = v12;
  }

  return v12;
}

- (USKData)initWithVtValue:(VtValue)value typeName:(TfToken)name withSceneOwner:(id)owner
{
  ptrAndBits = value._info._ptrAndBits;
  storage = value._storage;
  v9 = name._rep._ptrAndBits;
  sub_27035CAC4();
  v20.receiver = self;
  v20.super_class = USKData;
  v12 = [(USKData *)&v20 init];
  if (v12)
  {
    v13 = *ptrAndBits;
    v19 = v13;
    if ((v13 & 7) != 0)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
      {
        v19 = v14;
      }
    }

    v15 = objc_msgSend_dataTypeWithTfToken_(USKToken, v10, &v19, v11);
    type = v12->_type;
    v12->_type = v15;

    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_27031A1C0(&v12->_value._storage, storage);
    v12->_arraySize = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(storage);
    objc_storeStrong(&v12->_sceneOwner, name._rep._ptrAndBits);
    v17 = v12;
  }

  return v12;
}

- (USKData)initWithVtValue:(VtValue)value typeName:(TfToken)name withPropertyOwner:(id)owner
{
  ptrAndBits = value._info._ptrAndBits;
  storage = value._storage;
  v9 = name._rep._ptrAndBits;
  sub_27035CAC4();
  v20.receiver = self;
  v20.super_class = USKData;
  v12 = [(USKData *)&v20 init];
  if (v12)
  {
    v13 = *ptrAndBits;
    v19 = v13;
    if ((v13 & 7) != 0)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
      {
        v19 = v14;
      }
    }

    v15 = objc_msgSend_dataTypeWithTfToken_(USKToken, v10, &v19, v11);
    type = v12->_type;
    v12->_type = v15;

    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_27031A1C0(&v12->_value._storage, storage);
    v12->_arraySize = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(storage);
    objc_storeStrong(&v12->_propertyOwner, name._rep._ptrAndBits);
    v17 = v12;
  }

  return v12;
}

- (NSData)dataNoCopy
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(&self->_value))
  {
    NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(&self->_value);
    ElementTypeid = pxrInternal__aapl__pxrReserved__::VtValue::GetElementTypeid(&self->_value);
    v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(ElementTypeid, v5);
    v8 = pxrInternal__aapl__pxrReserved__::TfType::GetSizeof(v6) * NumElements;
    v9 = MEMORY[0x277CBEA90];
    ptrAndBits = self->_value._info._ptrAndBits;
    if ((ptrAndBits & 4) != 0)
    {
      storage = (*((ptrAndBits & 0xFFFFFFFFFFFFFFF8) + 168))(&self->_value);
    }

    else
    {
      storage = self->_value._storage;
    }

    v12 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v9, v7, *(*&storage + 32), v8, 0);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)tokenValue
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  sub_270313C14(v11, &self->_value._storage);
  v2 = sub_27031A88C(v11, &v10);
  sub_270311D34(v11);
  if (v2)
  {
    v3 = [USKToken alloc];
    v9 = v10;
    if ((v10 & 7) != 0)
    {
      v6 = v10 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v9 = v6;
      }
    }

    v7 = objc_msgSend_initWithTfToken_(v3, v4, &v9, v5);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v7;
}

- (id)stringValue
{
  v33 = 0;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  *v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  sub_27031AD44(&v26);
  type = self->_type;
  if (type == @"asset")
  {
    v4 = sub_27031AFE8(&self->_value);
    v5 = *(v4 + 23);
    if (v5 >= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = *v4;
    }

    if (v5 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    sub_2703180A8(&v27, v6, v7);
  }

  else if (type == @"rel")
  {
    v8 = sub_27031B07C(&self->_value);
    __p = 0;
    v24 = 0;
    v25 = 0;
    sub_270325930(&__p, *v8, v8[1], (v8[1] - *v8) >> 3);
    sub_2703180A8(&v27, "[", 1);
    v9 = __p;
    if (v24 != __p)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v9[v10]);
        v13 = *(String + 23);
        if (v13 >= 0)
        {
          v14 = String;
        }

        else
        {
          v14 = *String;
        }

        if (v13 >= 0)
        {
          v15 = *(String + 23);
        }

        else
        {
          v15 = *(String + 8);
        }

        sub_2703180A8(&v27, v14, v15);
        v9 = __p;
        v16 = (v24 - __p) >> 3;
        if (v16 - 1 > v11)
        {
          sub_2703180A8(&v27, ", ", 2);
          v9 = __p;
          v16 = (v24 - __p) >> 3;
        }

        ++v11;
        v10 += 8;
      }

      while (v16 > v11);
    }

    sub_2703180A8(&v27, "]", 1);
    p_p = &__p;
    sub_270325B58(&p_p);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::operator<<();
  }

  v17 = MEMORY[0x277CCACA8];
  std::stringbuf::str();
  if (v25 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v17, v18, &__p, v19);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v17, v18, __p, v19);
  }
  v20 = ;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  *&v26 = *MEMORY[0x277D82818];
  v21 = *(MEMORY[0x277D82818] + 72);
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v27 = v21;
  *(&v27 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  *(&v27 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  MEMORY[0x27439F390](v32);

  return v20;
}

- (id)timeCodeValue
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = 0.0;
  sub_270313C14(v10, &self->_value._storage);
  v2 = sub_27031B214(v10, &v9);
  sub_270311D34(v10);
  if (v2)
  {
    v3 = [USKTimeCode alloc];
    v7 = objc_msgSend_initWithSdfTimeCode_(v3, v4, v5, v6, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)BOOLValue
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0;
  sub_270313C14(v5, &self->_value._storage);
  v2 = sub_27031B3AC(v5, &v4);
  sub_270311D34(v5);
  return v2 & v4;
}

- (int)intValue
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0;
  sub_270313C14(v5, &self->_value._storage);
  v2 = sub_27031B548(v5, &v4);
  sub_270311D34(v5);
  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (unsigned)uintValue
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0;
  sub_270313C14(v5, &self->_value._storage);
  v2 = sub_27031B6E4(v5, &v4);
  sub_270311D34(v5);
  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (float)floatValue
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0.0;
  sub_270313C14(v5, &self->_value._storage);
  v2 = sub_27031B884(v5, &v4);
  sub_270311D34(v5);
  result = v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (int8x8_t)float2Value
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0;
  sub_270313C14(v5, (self + 8));
  v1 = sub_27031BA28(v5, &v4);
  sub_270311D34(v5);
  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  return vand_s8(v4, vdup_n_s32(v2));
}

- (double)float3Value
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4.i32[2] = 0;
  v4.i64[0] = 0;
  sub_270313C14(v5, (self + 8));
  v1 = sub_270313B0C(v5, &v4);
  sub_270311D34(v5);
  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  *&result = vbslq_s8(vdupq_n_s32(v2), v4, 0).u64[0];
  return result;
}

- (double)float4Value
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0uLL;
  sub_270313C14(v5, (self + 8));
  v1 = sub_27031BC80(v5, &v4);
  sub_270311D34(v5);
  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  *&result = vandq_s8(v4, vdupq_n_s32(v2)).u64[0];
  return result;
}

- (double)float4x4Value
{
  v13[2] = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v1 = sub_270313C14(v13, (self + 8));
  v2 = sub_27031BE90(v1, v11);
  sub_270311D34(v13);
  v3 = 0uLL;
  if (v2)
  {
    v4 = 0;
    memset(v12, 0, sizeof(v12));
    v5 = v11;
    do
    {
      v6 = 0;
      v7 = v12[v4];
      do
      {
        v8 = v5[v6];
        v10 = v7;
        *(&v10 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3))) = v8;
        v7 = v10;
        ++v6;
      }

      while (v6 != 4);
      v12[v4++] = v10;
      v5 += 4;
    }

    while (v4 != 4);
    *&v3 = *&v12[0];
  }

  *&result = v3;
  return result;
}

- (double)doubleValue
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0.0;
  sub_270313C14(v5, &self->_value._storage);
  v2 = sub_27031C060(v5, &v4);
  sub_270311D34(v5);
  result = v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (double)double2Value
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0uLL;
  sub_270313C14(v5, (self + 8));
  v1 = sub_27031C204(v5, &v4);
  sub_270311D34(v5);
  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  *&result = vandq_s8(v4, vdupq_n_s64(v2)).u64[0];
  return result;
}

- (uint64_t)double3Value
{
  v9[2] = *MEMORY[0x277D85DE8];
  v7 = 0uLL;
  v8 = 0;
  sub_270313C14(v9, (self + 8));
  v3 = sub_27031C3C0(v9, &v7);
  result = sub_270311D34(v9);
  v5 = 0uLL;
  v6 = 0uLL;
  if (v3)
  {
    v5 = v7;
    *&v6 = v8;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

- (uint64_t)double4Value
{
  v9[2] = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  sub_270313C14(v9, (self + 8));
  v3 = sub_27031C58C(v9, &v7);
  result = sub_270311D34(v9);
  v5 = 0uLL;
  v6 = 0uLL;
  if (v3)
  {
    v5 = v7;
    v6 = v8;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

- (double)double4x4Value
{
  v19[2] = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = sub_270313C14(v19, (self + 8));
  v4 = sub_27031BE90(v3, &v11);
  sub_270311D34(v19);
  if (v4)
  {
    v5 = v12;
    *a2 = v11;
    a2[1] = v5;
    v6 = v14;
    a2[2] = v13;
    a2[3] = v6;
    v7 = v16;
    a2[4] = v15;
    a2[5] = v7;
    v8 = v17;
    v9 = v18;
    a2[6] = v17;
    a2[7] = v9;
  }

  else
  {
    *&v8 = 0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  *&result = v8;
  return result;
}

- (double)quatfValue
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0uLL;
  sub_270313C14(v5, (self + 8));
  v1 = sub_27031C848(v5, &v4);
  sub_270311D34(v5);
  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  *&result = vandq_s8(v4, vdupq_n_s32(v2)).u64[0];
  return result;
}

- (id)objectPathValue
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  sub_270313C14(v11, &self->_value._storage);
  LODWORD(self) = sub_27031CAA4(v11, &v10);
  sub_270311D34(v11);
  if (self)
  {
    v3 = [USKObjectPath alloc];
    sub_2703256DC(&v8, &v10);
    sub_270325728(&v9, &v10 + 1);
    v6 = objc_msgSend_initWithSdfPath_(v3, v4, &v8, v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v8);
  }

  else
  {
    v6 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v10);

  return v6;
}

- (id)urlValue
{
  v17[2] = *MEMORY[0x277D85DE8];
  *__p = 0u;
  v16 = 0u;
  *v14 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v14);
  sub_270313C14(v17, &self->_value._storage);
  v3 = sub_27031CD68(v17, v14);
  sub_270311D34(v17);
  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = MEMORY[0x277CCACA8];
    v6 = sub_27031AFE8(&self->_value);
    if (*(v6 + 23) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v5, v7, v6, v8);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v5, v7, *v6, v8);
    }
    v9 = ;
    v12 = objc_msgSend_fileURLWithPath_(v4, v10, v9, v11);
  }

  else
  {
    v12 = 0;
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v14[0]);
  }

  return v12;
}

- (id)resourcePath
{
  v15[2] = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  *v13 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v13);
  v3 = sub_270313C14(v15, &self->_value._storage);
  LODWORD(self) = sub_27031CD68(v3, v13);
  sub_270311D34(v15);
  if (self)
  {
    v6 = [USKResourcePath alloc];
    if (SHIBYTE(v14[0]) < 0)
    {
      sub_2703129A8(v9, v13[0], v13[1]);
    }

    else
    {
      *v9 = *v13;
      v10 = v14[0];
    }

    if (SHIBYTE(v14[3]) < 0)
    {
      sub_2703129A8(__p, v14[1], v14[2]);
    }

    else
    {
      *__p = *&v14[1];
      v12 = v14[3];
    }

    v7 = objc_msgSend_initWithSdfAssetPath_(v6, v4, v9, v5);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v14[3]) < 0)
  {
    operator delete(v14[1]);
  }

  if (SHIBYTE(v14[0]) < 0)
  {
    operator delete(v13[0]);
  }

  return v7;
}

- (unint64_t)intArray:(int *)array maxCount:(unint64_t)count
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v6 = sub_270313C14(v17, &self->_value._storage);
  v7 = sub_27031D1DC(v6, &v14);
  sub_270311D34(v17);
  if (v7)
  {
    v11 = v14;
    v12 = v15;
    __src = v16;
    if (v16)
    {
      v8 = (v16 - 16);
      if (*(&v12 + 1))
      {
        v8 = *(&v12 + 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    v9 = v11;
    sub_270310DE0(&v11);
    if (v9 < count)
    {
      count = v9;
    }

    memcpy(array, __src, 4 * count);
    sub_270310E24(&v11);
  }

  else
  {
    count = 0;
  }

  sub_270310E24(&v14);
  return count;
}

- (unint64_t)uintArray:(unsigned int *)array maxCount:(unint64_t)count
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v6 = sub_270313C14(v17, &self->_value._storage);
  v7 = sub_27031D430(v6, &v14);
  sub_270311D34(v17);
  if (v7)
  {
    v11 = v14;
    v12 = v15;
    __src = v16;
    if (v16)
    {
      v8 = (v16 - 16);
      if (*(&v12 + 1))
      {
        v8 = *(&v12 + 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    v9 = v11;
    sub_27032C7E0(&v11);
    if (v9 < count)
    {
      count = v9;
    }

    memcpy(array, __src, 4 * count);
    sub_270310E24(&v11);
  }

  else
  {
    count = 0;
  }

  sub_270310E24(&v14);
  return count;
}

- (unint64_t)quatfArray:(id *)array maxCount:(unint64_t)count
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_270313C14(v11, &self->_value._storage);
  v6 = sub_27031D650(v11, v9);
  sub_270311D34(v11);
  if (v6)
  {
    if (*&v9[0] < count)
    {
      count = *&v9[0];
    }

    if (count)
    {
      v7 = 0;
      do
      {
        sub_270328150(v9);
        *(array + v7) = *(v10 + 16 * v7);
        ++v7;
      }

      while (count != v7);
    }
  }

  else
  {
    count = 0;
  }

  sub_270310E24(v9);
  return count;
}

- (id)stringArray
{
  v4 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, self->_arraySize, v2);
  if (self->_type == @"string[]")
  {
    v5 = sub_27031D854(&self->_value);
    if (self->_arraySize)
    {
      v8 = v5;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(v8 + 32) + v9;
        if (*(v11 + 23) < 0)
        {
          v11 = *v11;
        }

        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v11, v7);
        objc_msgSend_addObject_(v4, v13, v12, v14);

        ++v10;
        v9 += 24;
      }

      while (v10 < self->_arraySize);
    }
  }

  return v4;
}

- (id)tokenArray
{
  v4 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, self->_arraySize, v2);
  if (self->_type == @"token[]")
  {
    v5 = sub_27031DA6C(&self->_value);
    if (self->_arraySize)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = [USKToken alloc];
        v11 = *(*(v6 + 32) + 8 * v7);
        v16 = v11;
        if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v16 &= 0xFFFFFFFFFFFFFFF8;
        }

        v12 = objc_msgSend_initWithTfToken_(v8, v9, &v16, v10);
        objc_msgSend_addObject_(v4, v13, v12, v14);

        if ((v16 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v7;
      }

      while (v7 < self->_arraySize);
    }
  }

  return v4;
}

- (id)pathArray
{
  if (self->_type == @"rel")
  {
    v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, self->_arraySize, v2);
    v5 = sub_27031B07C(&self->_value);
    if (v5[1] != *v5)
    {
      v6 = 0;
      v7 = 4;
      do
      {
        v8 = [USKObjectPath alloc];
        v9 = (*v5 + v7);
        sub_2703256DC(&v16, v9 - 1);
        sub_270325728(&v17, v9);
        v12 = objc_msgSend_initWithSdfPath_(v8, v10, &v16, v11);
        objc_msgSend_addObject_(v3, v13, v12, v14);

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v16);
        ++v6;
        v7 += 8;
      }

      while (v6 < (v5[1] - *v5) >> 3);
    }
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)resourcePathArray
{
  if (self->_type == @"asset[]")
  {
    v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, self->_arraySize, v2);
    v5 = sub_27031DE50(&self->_value);
    if (*v5)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v10 = [USKResourcePath alloc];
        v11 = v5[4];
        v12 = (v11 + v6);
        if (*(v11 + v6 + 23) < 0)
        {
          sub_2703129A8(v20, *v12, *(v12 + 1));
        }

        else
        {
          v13 = *v12;
          v21 = *(v12 + 2);
          *v20 = v13;
        }

        v14 = v11 + v6;
        if (*(v11 + v6 + 47) < 0)
        {
          sub_2703129A8(&__p, *(v14 + 24), *(v14 + 32));
        }

        else
        {
          v15 = *(v14 + 24);
          v23 = *(v14 + 40);
          __p = v15;
        }

        v16 = objc_msgSend_initWithSdfAssetPath_(v10, v8, v20, v9);
        objc_msgSend_addObject_(v3, v17, v16, v18);

        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20[0]);
        }

        ++v7;
        v6 += 48;
      }

      while (v7 < *v5);
    }
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (unint64_t)floatArray:(float *)array maxCount:(unint64_t)count
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v6 = sub_270313C14(v17, &self->_value._storage);
  v7 = sub_27031E074(v6, &v14);
  sub_270311D34(v17);
  if (v7)
  {
    v11 = v14;
    v12 = v15;
    __src = v16;
    if (v16)
    {
      v8 = (v16 - 16);
      if (*(&v12 + 1))
      {
        v8 = *(&v12 + 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    v9 = v11;
    sub_27032F7DC(&v11);
    if (v9 < count)
    {
      count = v9;
    }

    memcpy(array, __src, 4 * count);
    sub_270310E24(&v11);
  }

  else
  {
    count = 0;
  }

  sub_270310E24(&v14);
  return count;
}

- (unint64_t)float2Array:(USKData *)self maxCount:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_270313C14(v11, &self->_value._storage);
  v6 = sub_27031E294(v11, v9);
  sub_270311D34(v11);
  if (v6)
  {
    if (*&v9[0] < v4)
    {
      v4 = *&v9[0];
    }

    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        sub_27032889C(v9);
        *(v5 + 8 * i) = *(v10 + 8 * i);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  sub_270310E24(v9);
  return v4;
}

- (unint64_t)float3Array:(USKData *)self maxCount:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_270313C14(&v13, &self->_value._storage);
  v6 = sub_27031E4C0(&v13, v11);
  sub_270311D34(&v13);
  if (v6)
  {
    if (*&v11[0] < v4)
    {
      v4 = *&v11[0];
    }

    if (v4)
    {
      v7 = 0;
      v8 = v4;
      do
      {
        sub_27031951C(v11);
        *&v9 = *(v12 + v7);
        DWORD2(v9) = *(v12 + v7 + 8);
        *v5++ = v9;
        v7 += 12;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_270310E24(v11);
  return v4;
}

- (unint64_t)float4Array:(USKData *)self maxCount:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_270313C14(v11, &self->_value._storage);
  v6 = sub_27031E6E0(v11, v9);
  sub_270311D34(v11);
  if (v6)
  {
    if (*&v9[0] < v4)
    {
      v4 = *&v9[0];
    }

    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        sub_270319444(v9);
        *(v5 + 16 * i) = *(v10 + 16 * i);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  sub_270310E24(v9);
  return v4;
}

- (unint64_t)float4x4Array:(id *)array maxCount:(unint64_t)count
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_270313C14(v19, &self->_value._storage);
  v6 = sub_27031E950(v19, v17);
  sub_270311D34(v19);
  if (v6)
  {
    if (*&v17[0] < count)
    {
      count = *&v17[0];
    }

    if (count)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        sub_270328FBC(v17);
        v9 = 0;
        v10 = array + 64 * v8;
        v11 = v18 + v7;
        do
        {
          v12 = 0;
          v13 = *&v10[16 * v9];
          do
          {
            v14 = *(v11 + 8 * v12);
            v16 = v13;
            *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) = v14;
            v13 = v16;
            *&v10[16 * v9] = v16;
            ++v12;
          }

          while (v12 != 4);
          ++v9;
          v11 += 32;
        }

        while (v9 != 4);
        ++v8;
        v7 += 128;
      }

      while (v8 != count);
    }
  }

  else
  {
    count = 0;
  }

  sub_270310E24(v17);
  return count;
}

- (unint64_t)doubleArray:(double *)array maxCount:(unint64_t)count
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v6 = sub_270313C14(v17, &self->_value._storage);
  v7 = sub_27031EBA4(v6, &v14);
  sub_270311D34(v17);
  if (v7)
  {
    v11 = v14;
    v12 = v15;
    __src = v16;
    if (v16)
    {
      v8 = (v16 - 16);
      if (*(&v12 + 1))
      {
        v8 = *(&v12 + 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    v9 = v11;
    sub_270330518(&v11);
    if (v9 < count)
    {
      count = v9;
    }

    memcpy(array, __src, 8 * count);
    sub_270310E24(&v11);
  }

  else
  {
    count = 0;
  }

  sub_270310E24(&v14);
  return count;
}

- (unint64_t)double2Array:(USKData *)self maxCount:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_270313C14(v11, &self->_value._storage);
  v6 = sub_27031EDC4(v11, v9);
  sub_270311D34(v11);
  if (v6)
  {
    if (*&v9[0] < v4)
    {
      v4 = *&v9[0];
    }

    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        sub_270329624(v9);
        *(v5 + 16 * i) = *(v10 + 16 * i);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  sub_270310E24(v9);
  return v4;
}

- (unint64_t)double3Array:(USKData *)self maxCount:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v13[2] = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_270313C14(v13, &self->_value._storage);
  v6 = sub_27031EFF8(v13, v11);
  sub_270311D34(v13);
  if (v6)
  {
    if (*&v11[0] < v4)
    {
      v4 = *&v11[0];
    }

    if (v4)
    {
      v7 = 0;
      v8 = v4;
      do
      {
        sub_2703299C4(v11);
        *&v9 = *(v12 + v7 + 16);
        *v5 = *(v12 + v7);
        v5[1] = v9;
        v5 += 2;
        v7 += 24;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_270310E24(v11);
  return v4;
}

- (unint64_t)double4Array:(USKData *)self maxCount:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v14[2] = *MEMORY[0x277D85DE8];
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_270313C14(v14, &self->_value._storage);
  v6 = sub_27031F230(v14, v12);
  sub_270311D34(v14);
  if (v6)
  {
    if (*&v12[0] < v4)
    {
      v4 = *&v12[0];
    }

    if (v4)
    {
      v7 = 0;
      v8 = v4;
      do
      {
        sub_270329D6C(v12);
        v9 = *(v13 + v7 + 16);
        v10 = (v5 + v7);
        *v10 = *(v13 + v7);
        v10[1] = v9;
        v7 += 32;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_270310E24(v12);
  return v4;
}

- (unint64_t)double4x4Array:(id *)array maxCount:(unint64_t)count
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_270313C14(v20, &self->_value._storage);
  v6 = sub_27031E950(v20, v18);
  sub_270311D34(v20);
  if (v6)
  {
    if (*&v18[0] < count)
    {
      count = *&v18[0];
    }

    if (count)
    {
      v7 = 112;
      countCopy = count;
      do
      {
        sub_270328FBC(v18);
        v9 = *(v19 + v7 - 96);
        v10 = *(v19 + v7 - 80);
        v11 = *(v19 + v7 - 64);
        v12 = *(v19 + v7 - 48);
        v13 = *(v19 + v7 - 32);
        v14 = *(v19 + v7 - 16);
        v15 = *(v19 + v7);
        v16 = (array + v7);
        *(v16 - 7) = *(v19 + v7 - 112);
        *(v16 - 6) = v9;
        *(v16 - 5) = v10;
        *(v16 - 4) = v11;
        *(v16 - 3) = v12;
        *(v16 - 2) = v13;
        *(v16 - 1) = v14;
        *v16 = v15;
        v7 += 128;
        --countCopy;
      }

      while (countCopy);
    }
  }

  else
  {
    count = 0;
  }

  sub_270310E24(v18);
  return count;
}

- (void)setValue:(VtValue)value
{
  storage = value._storage;
  v14 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(*&value._storage))
  {
    NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(storage);
  }

  else
  {
    NumElements = 0;
  }

  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&self->_value);
  if (Type == pxrInternal__aapl__pxrReserved__::VtValue::GetType(storage))
  {
    sub_2703178C8(&self->_value._storage, storage);
    self->_arraySize = NumElements;
  }

  else
  {
    v12 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&self->_value);
    Typeid = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(&v12);
    v8 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(storage);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(v8, Typeid, v9))
    {
      v12 = 0;
      v13 = 0;
      v10 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&self->_value);
      v11 = sub_270325768(storage, v10);
      sub_270313C14(&v12, v11);
      if (v13)
      {
        sub_2703178C8(&self->_value._storage, &v12);
        self->_arraySize = NumElements;
      }

      sub_270311D34(&v12);
    }
  }
}

- (void)setTokenValue:(id)value
{
  v13 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v8 = valueCopy;
  if (valueCopy)
  {
    objc_msgSend_token(valueCopy, v5, v6, v7);
    v11 = v9;
    v12 = &off_288040298 + 1;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = &off_288040298 + 1;
  }

  objc_msgSend_setValue_(self, v5, &v11, v7, v9);
  sub_270311D34(&v11);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

- (void)setStringValue:(id)value
{
  v33 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = valueCopy;
  type = self->_type;
  if (type == @"string" || type == @"token")
  {
    v8 = valueCopy;
    v25[0] = objc_msgSend_UTF8String(v8, v9, v10, v11);
    v32 = 0;
    sub_270329FE8(v31, v25);
  }

  if (type == @"rel")
  {
    v17 = valueCopy;
    v21 = objc_msgSend_UTF8String(v17, v18, v19, v20);
    sub_2703122D4(v25, v21);
    MEMORY[0x27439E5E0](v24, v25);
    v30 = &off_288040418 + 1;
    sub_2703256DC(&v28, v24);
    sub_270325728(&v29, v24 + 1);
    objc_msgSend_setValue_(self, v22, &v28, v23);
    sub_270311D34(&v28);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v24);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  else if (type == @"asset")
  {
    v12 = valueCopy;
    v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
    sub_2703122D4(v24, v16);
    MEMORY[0x27439E030](v25, v24);
    v27[1] = &off_2880404D0;
    sub_27032ABA0(v27, v25);
  }
}

- (void)setTimeCodeValue:(id)value
{
  v8[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_sdfTimeCode(value, a2, value, v3);
  v8[1] = &off_288040588 + 1;
  v8[0] = v5;
  objc_msgSend_setValue_(self, v6, v8, v7);
  sub_270311D34(v8);
}

- (void)setBoolValue:(BOOL)value
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &unk_288040643;
  v4[0] = value;
  objc_msgSend_setValue_(self, a2, v4, v3);
  sub_270311D34(v4);
}

- (void)setIntValue:(int)value
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &unk_2880406FB;
  valueCopy = value;
  objc_msgSend_setValue_(self, a2, &valueCopy, v3);
  sub_270311D34(&valueCopy);
}

- (void)setUIntValue:(unsigned int)value
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &unk_2880407B3;
  valueCopy = value;
  objc_msgSend_setValue_(self, a2, &valueCopy, v3);
  sub_270311D34(&valueCopy);
}

- (void)setObjectPathValue:(id)value
{
  v15 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v8 = valueCopy;
  if (valueCopy)
  {
    objc_msgSend_path(valueCopy, v5, v6, v7);
  }

  else
  {
    v11 = 0;
  }

  v14 = &off_288040418 + 1;
  sub_2703256DC(&v12, &v11);
  sub_270325728(&v13, &v11 + 1);
  objc_msgSend_setValue_(self, v9, &v12, v10);
  sub_270311D34(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v11);
}

- (void)setURLValue:(id)value
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_path(value, a2, value, v3);
  v8 = objc_msgSend_UTF8String(v4, v5, v6, v7);
  sub_2703122D4(v9, v8);
  MEMORY[0x27439E030](&v10, v9);
  v11[1] = &off_2880404D0;
  sub_27032ABA0(v11, &v10);
}

- (void)setResourcePath:(id)path
{
  v13[2] = *MEMORY[0x277D85DE8];
  *v11 = 0u;
  v12 = 0u;
  *v10 = 0u;
  pathCopy = path;
  v7 = objc_msgSend_UTF8String(pathCopy, v4, v5, v6);
  sub_2703122D4(__p, v7);
  MEMORY[0x27439E030](v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v13[1] = &off_2880404D0;
  sub_27032ABA0(v13, v10);
}

- (void)setFloatValue:(float)value
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &unk_28803FCC3;
  valueCopy = value;
  objc_msgSend_setValue_(self, a2, &valueCopy, v3);
  sub_270311D34(&valueCopy);
}

- (void)setFloat2Value:(USKData *)self
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &off_288040868 + 3;
  v4[0] = v3;
  objc_msgSend_setValue_(self, a2, v4, v2);
  sub_270311D34(v4);
}

- (void)setDoubleValue:(double)value
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &unk_2880409DB;
  *v4 = value;
  objc_msgSend_setValue_(self, a2, v4, v3);
  sub_270311D34(v4);
}

- (void)setIntArray:(int *)array count:(unint64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v6, 0, sizeof(v6));
  sub_27030E054(v6, count);
  sub_270310DE0(v6);
  memcpy(__dst, array, 4 * count);
  v8[1] = &off_288040CB8;
  sub_27032C360(v8, v6);
}

- (void)setUIntArray:(unsigned int *)array count:(unint64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v6, 0, sizeof(v6));
  sub_2703208AC(v6, count);
  sub_27032C7E0(v6);
  memcpy(__dst, array, 4 * count);
  v8[1] = &off_288040D70;
  sub_27032C360(v8, v6);
}

- (void)setQuatfArray:(id *)array count:(unint64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v6, 0, sizeof(v6));
  sub_270320A2C(v6, count);
  sub_270328150(v6);
  memcpy(__dst, array, 16 * count);
  v8[1] = off_288040E28;
  sub_270318A3C(v8, v6);
}

- (void)setStringArray:(id)array
{
  v79 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v8 = arrayCopy;
  type = self->_type;
  if (type == @"string[]")
  {
    *__p = 0u;
    memset(v74, 0, sizeof(v74));
    v27 = objc_msgSend_count(arrayCopy, v5, v6, v7);
    sub_270321124(__p, v27);
    v31 = 0;
    for (i = 0; i < objc_msgSend_count(v8, v28, v29, v30); ++i)
    {
      v35 = objc_msgSend_objectAtIndexedSubscript_(v8, v33, i, v34);
      v36 = v35;
      v40 = objc_msgSend_UTF8String(v35, v37, v38, v39);
      sub_27032D564(__p);
      MEMORY[0x27439F260](*&v74[16] + v31, v40);

      v31 += 24;
    }

    v76[0] = 0;
    v76[1] = &off_288040EE0;
    sub_270318A3C(v76, __p);
  }

  if (type == @"token[]")
  {
    *__p = 0u;
    memset(v74, 0, sizeof(v74));
    v41 = objc_msgSend_count(arrayCopy, v5, v6, v7);
    sub_2703211BC(__p, v41);
    v45 = 0;
    for (j = 0; j < objc_msgSend_count(v8, v42, v43, v44); ++j)
    {
      v49 = objc_msgSend_objectAtIndexedSubscript_(v8, v47, j, v48);
      v50 = v49;
      v54 = objc_msgSend_UTF8String(v49, v51, v52, v53);
      MEMORY[0x27439E610](v76, v54);
      sub_27032DE68(__p);
      v55 = (*&v74[16] + v45);
      if ((*&v74[16] + v45) == v76)
      {
        if ((v76[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v76[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v55 = v76[0];
        v76[0] = 0;
      }

      v45 += 8;
    }

    v76[0] = 0;
    v76[1] = off_288040F98;
    sub_270318A3C(v76, __p);
  }

  if (type == @"rel")
  {
    *__p = 0u;
    memset(v74, 0, sizeof(v74));
    v56 = objc_msgSend_count(arrayCopy, v5, v6, v7);
    sub_270321260(__p, v56);
    v60 = 0;
    v61 = 4;
    while (v60 < objc_msgSend_count(v8, v57, v58, v59))
    {
      v64 = objc_msgSend_objectAtIndexedSubscript_(v8, v62, v60, v63);
      v65 = v64;
      v69 = objc_msgSend_UTF8String(v64, v66, v67, v68);
      sub_2703122D4(v76, v69);
      MEMORY[0x27439E5E0](v71, v76);
      sub_27032E618(__p);
      v70 = *&v74[16] + v61;
      sub_270325804(*&v74[16] + v61 - 4, v71);
      sub_27032585C(v70, v71 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(v71);
      if (SBYTE7(v77) < 0)
      {
        operator delete(v76[0]);
      }

      ++v60;
      v61 += 8;
    }

    v76[0] = 0;
    v76[1] = &off_288041050;
    sub_270318A3C(v76, __p);
  }

  if (type == @"asset[]")
  {
    v78 = 0;
    *v76 = 0u;
    v77 = 0u;
    v10 = objc_msgSend_count(arrayCopy, v5, v6, v7);
    sub_270321314(v76, v10);
    v14 = 0;
    for (k = 0; k < objc_msgSend_count(v8, v11, v12, v13); ++k)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(v8, v16, k, v17);
      v19 = v18;
      v23 = objc_msgSend_UTF8String(v18, v20, v21, v22);
      sub_2703122D4(v71, v23);
      MEMORY[0x27439E030](__p, v71);
      sub_27032EFE8(v76);
      v24 = v78 + v14;
      if (*(v78 + v14 + 23) < 0)
      {
        operator delete(*v24);
      }

      v25 = *__p;
      *(v24 + 16) = *v74;
      *v24 = v25;
      v74[7] = 0;
      LOBYTE(__p[0]) = 0;
      if (*(v24 + 47) < 0)
      {
        operator delete(*(v24 + 24));
      }

      v26 = *&v74[8];
      *(v24 + 40) = v75;
      *(v24 + 24) = v26;
      HIBYTE(v75) = 0;
      v74[8] = 0;
      if ((v74[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }

      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      v14 += 48;
    }

    __p[0] = 0;
    __p[1] = off_288041120;
    sub_270318A3C(__p, v76);
  }
}

- (void)setTokenArray:(id)array
{
  v24[2] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v7 = objc_msgSend_count(arrayCopy, v4, v5, v6);
  sub_2703211BC(v22, v7);
  v11 = 0;
  for (i = 0; i < objc_msgSend_count(arrayCopy, v8, v9, v10); ++i)
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v13, i, v14);
    v19 = v15;
    if (v15)
    {
      objc_msgSend_token(v15, v16, v17, v18);
    }

    else
    {
      v21 = 0;
    }

    sub_27032DE68(v22);
    v20 = (v23 + v11);
    if ((v23 + v11) == &v21)
    {
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v20 = v21;
      v21 = 0;
    }

    v11 += 8;
  }

  v24[1] = off_288040F98;
  sub_270318A3C(v24, v22);
}

- (void)setResourcePathArray:(id)array
{
  v32[2] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v7 = objc_msgSend_count(arrayCopy, v4, v5, v6);
  sub_270321314(v30, v7);
  v11 = 0;
  for (i = 0; i < objc_msgSend_count(arrayCopy, v8, v9, v10); ++i)
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v13, i, v14);
    v16 = v15;
    v20 = objc_msgSend_UTF8String(v15, v17, v18, v19);
    sub_2703122D4(v24, v20);
    MEMORY[0x27439E030](__p, v24);
    sub_27032EFE8(v30);
    v21 = v31 + v11;
    if (*(v31 + v11 + 23) < 0)
    {
      operator delete(*v21);
    }

    v22 = *__p;
    *(v21 + 16) = v27;
    *v21 = v22;
    HIBYTE(v27) = 0;
    LOBYTE(__p[0]) = 0;
    if (*(v21 + 47) < 0)
    {
      operator delete(*(v21 + 24));
    }

    v23 = v28;
    *(v21 + 40) = v29;
    *(v21 + 24) = v23;
    HIBYTE(v29) = 0;
    LOBYTE(v28) = 0;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v11 += 48;
  }

  v32[1] = off_288041120;
  sub_270318A3C(v32, v30);
}

- (void)setFloatArray:(float *)array count:(unint64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v6, 0, sizeof(v6));
  sub_2703218F4(v6, count);
  sub_27032F7DC(v6);
  memcpy(__dst, array, 4 * count);
  v8[1] = &off_2880411D8;
  sub_27032FBF4(v8, v6);
}

- (void)setFloat2Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_270321A90(v8, v3);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = *(v5 + 8 * i);
      sub_27032889C(v8);
      *(v9 + 8 * i) = v7;
    }
  }

  v10[1] = off_288041290;
  sub_270318A3C(v10, v8);
}

- (void)setFloat3Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_270317438(v9, v3);
  if (v4)
  {
    v6 = 0;
    do
    {
      v8 = *v5;
      sub_27031951C(v9);
      v7 = v10 + v6;
      *v7 = v8;
      *(v7 + 8) = DWORD2(v8);
      ++v5;
      v6 += 12;
      --v4;
    }

    while (v4);
  }

  v11[1] = off_28803FF38;
  sub_270318A3C(v11, v9);
}

- (void)setFloat4Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_2703173C4(v8, v3);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = *(v5 + 16 * i);
      sub_270319444(v8);
      *(v9 + 16 * i) = v7;
    }
  }

  v10[1] = &off_288040008;
  sub_270318A3C(v10, v8);
}

- (void)setDoubleArray:(double *)array count:(unint64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v6, 0, sizeof(v6));
  sub_270321E6C(v6, count);
  sub_270330518(v6);
  memcpy(__dst, array, 8 * count);
  v8[1] = &off_288041348;
  sub_27032FBF4(v8, v6);
}

- (void)setDouble2Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_270322008(v8, v3);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = *(v5 + 16 * i);
      sub_270329624(v8);
      *(v9 + 16 * i) = v7;
    }
  }

  v10[1] = off_288041400;
  sub_270318A3C(v10, v8);
}

- (void)setDouble3Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v12[2] = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_2703221B0(v10, v3);
  if (v4)
  {
    v6 = 0;
    do
    {
      v8 = *v5;
      v9 = v5[1];
      sub_2703299C4(v10);
      v7 = v11 + v6;
      *v7 = v8;
      *(v7 + 16) = v9;
      v5 += 2;
      v6 += 24;
      --v4;
    }

    while (v4);
  }

  v12[1] = off_2880414B8;
  sub_270318A3C(v12, v10);
}

- (void)setDouble4Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v12[2] = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_270322358(v10, v3);
  if (v4)
  {
    v6 = 0;
    do
    {
      v8 = *(v5 + v6);
      v9 = *(v5 + v6 + 16);
      sub_270329D6C(v10);
      v7 = (v11 + v6);
      *v7 = v8;
      v7[1] = v9;
      v6 += 32;
      --v4;
    }

    while (v4);
  }

  v12[1] = off_288041570;
  sub_270318A3C(v12, v10);
}

- (void)setDouble4x4Array:(id *)array count:(unint64_t)count
{
  countCopy = count;
  v18[2] = *MEMORY[0x277D85DE8];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_27032253C(v16, count);
  if (countCopy)
  {
    v6 = 0;
    do
    {
      v14 = *(array + v6 + 48);
      v15 = *(array + v6 + 16);
      v10 = *(array + v6 + 32);
      v11 = *(array + v6);
      v12 = *(array + v6 + 112);
      v13 = *(array + v6 + 80);
      v8 = *(array + v6 + 96);
      v9 = *(array + v6 + 64);
      sub_270328FBC(v16);
      v7 = (v17 + v6);
      *v7 = v11;
      v7[1] = v15;
      v7[2] = v10;
      v7[3] = v14;
      v7[4] = v9;
      v7[5] = v13;
      v7[6] = v8;
      v7[7] = v12;
      v6 += 128;
      --countCopy;
    }

    while (countCopy);
  }

  v18[1] = off_288041628;
  sub_270318A3C(v18, v16);
}

- (USKData)initWithToken:(id)token
{
  v14 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  sub_27035CAC4();
  v11.receiver = self;
  v11.super_class = USKData;
  v8 = [(USKData *)&v11 init];
  if (v8)
  {
    if (tokenCopy)
    {
      objc_msgSend_token(tokenCopy, v5, v6, v7);
      v12 = v10;
      v13 = &off_288040298 + 1;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v10 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v10 = 0;
      v12 = 0;
      v13 = &off_288040298 + 1;
    }

    sub_270312D2C(&v8->_value._storage, &v12);
    sub_270311D34(&v12);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    objc_storeStrong(&v8->_type, @"token");
    v8->_arraySize = 0;
  }

  return v8;
}

- (USKData)initWithString:(id)string
{
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  sub_27035CAC4();
  v11.receiver = self;
  v11.super_class = USKData;
  if ([(USKData *)&v11 init])
  {
    v5 = stringCopy;
    v10 = objc_msgSend_UTF8String(stringCopy, v6, v7, v8);
    v13 = 0;
    sub_270329FE8(v12, &v10);
  }

  return 0;
}

- (USKData)initWithTimeCode:(id)code
{
  v12[2] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  sub_27035CAC4();
  v11.receiver = self;
  v11.super_class = USKData;
  v8 = [(USKData *)&v11 init];
  if (v8)
  {
    objc_msgSend_sdfTimeCode(codeCopy, v5, v6, v7);
    v12[1] = &off_288040588 + 1;
    v12[0] = v9;
    sub_270312D2C(&v8->_value._storage, v12);
    sub_270311D34(v12);
    objc_storeStrong(&v8->_type, @"timecode");
    v8->_arraySize = 0;
  }

  return v8;
}

- (USKData)initWithBool:(BOOL)bool
{
  v9[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v8.receiver = self;
  v8.super_class = USKData;
  v5 = [(USKData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v9[1] = &unk_288040643;
    LOBYTE(v9[0]) = bool;
    sub_270312D2C(&v5->_value._storage, v9);
    sub_270311D34(v9);
    objc_storeStrong(&v6->_type, @"BOOL");
    v6->_arraySize = 0;
  }

  return v6;
}

- (USKData)initWithInt:(int)int
{
  v9[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v8.receiver = self;
  v8.super_class = USKData;
  v5 = [(USKData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v9[1] = &unk_2880406FB;
    LODWORD(v9[0]) = int;
    sub_270312D2C(&v5->_value._storage, v9);
    sub_270311D34(v9);
    objc_storeStrong(&v6->_type, @"int");
    v6->_arraySize = 0;
  }

  return v6;
}

- (USKData)initWithUInt:(unsigned int)int
{
  v9[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v8.receiver = self;
  v8.super_class = USKData;
  v5 = [(USKData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v9[1] = &unk_2880407B3;
    LODWORD(v9[0]) = int;
    sub_270312D2C(&v5->_value._storage, v9);
    sub_270311D34(v9);
    objc_storeStrong(&v6->_type, @"uint");
    v6->_arraySize = 0;
  }

  return v6;
}

- (USKData)initWithObjectPath:(id)path
{
  v12[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sub_27035CAC4();
  v11.receiver = self;
  v11.super_class = USKData;
  v8 = [(USKData *)&v11 init];
  if (v8)
  {
    if (pathCopy)
    {
      objc_msgSend_path(pathCopy, v5, v6, v7);
    }

    else
    {
      v10 = 0;
    }

    v12[1] = &off_288040418 + 1;
    sub_2703256DC(v12, &v10);
    sub_270325728(v12 + 1, &v10 + 1);
    sub_270312D2C(&v8->_value._storage, v12);
    sub_270311D34(v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v10);
    objc_storeStrong(&v8->_type, @"rel");
    v8->_arraySize = 0;
  }

  return v8;
}

- (USKData)initWithURL:(id)l
{
  v18[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  sub_27035CAC4();
  v17.receiver = self;
  v17.super_class = USKData;
  if ([(USKData *)&v17 init])
  {
    v8 = objc_msgSend_relativeString(lCopy, v5, v6, v7);
    v9 = v8;
    v13 = objc_msgSend_UTF8String(v8, v10, v11, v12);
    sub_2703122D4(v15, v13);
    MEMORY[0x27439E030](&v16, v15);
    v18[1] = &off_2880404D0;
    sub_27032ABA0(v18, &v16);
  }

  return 0;
}

- (USKData)initWithResourcePath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sub_27035CAC4();
  v12.receiver = self;
  v12.super_class = USKData;
  if ([(USKData *)&v12 init])
  {
    v5 = pathCopy;
    v9 = objc_msgSend_UTF8String(pathCopy, v6, v7, v8, 0, 0, 0, 0, 0);
    sub_2703122D4(__p, v9);
    MEMORY[0x27439E030](v11, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    __p[1] = &off_2880404D0;
    sub_27032ABA0(__p, v11);
  }

  return 0;
}

- (USKData)initWithFloat:(float)float
{
  v9[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v8.receiver = self;
  v8.super_class = USKData;
  v5 = [(USKData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v9[1] = &unk_28803FCC3;
    *v9 = float;
    sub_270312D2C(&v5->_value._storage, v9);
    sub_270311D34(v9);
    objc_storeStrong(&v6->_type, @"float");
    v6->_arraySize = 0;
  }

  return v6;
}

- (USKData)initWithFloat2:(USKData *)self
{
  v3 = v2;
  v9[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v8.receiver = self;
  v8.super_class = USKData;
  v5 = [(USKData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v9[1] = &off_288040868 + 3;
    v9[0] = v3;
    sub_270312D2C(&v5->_value._storage, v9);
    sub_270311D34(v9);
    objc_storeStrong(&v6->_type, @"float2");
    v6->_arraySize = 0;
  }

  return v6;
}

- (USKData)initWithFloat3:(USKData *)self
{
  v5 = v2;
  v8 = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v6.receiver = self;
  v6.super_class = USKData;
  if ([(USKData *)&v6 init])
  {
    v7 = &off_28803FBF8 + 2;
    operator new();
  }

  return 0;
}

- (USKData)initWithFloat4:(USKData *)self
{
  v5 = v2;
  v8 = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v6.receiver = self;
  v6.super_class = USKData;
  if ([(USKData *)&v6 init])
  {
    v7 = &off_288040920 + 2;
    operator new();
  }

  return 0;
}

- (USKData)initWithDouble:(double)double
{
  v9[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v8.receiver = self;
  v8.super_class = USKData;
  v5 = [(USKData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v9[1] = &unk_2880409DB;
    *v9 = double;
    sub_270312D2C(&v5->_value._storage, v9);
    sub_270311D34(v9);
    objc_storeStrong(&v6->_type, @"double");
    v6->_arraySize = 0;
  }

  return v6;
}

- (USKData)initWithDouble2:(USKData *)self
{
  v5 = v2;
  v8 = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v6.receiver = self;
  v6.super_class = USKData;
  if ([(USKData *)&v6 init])
  {
    v7 = &off_288040A90 + 2;
    operator new();
  }

  return 0;
}

- (USKData)initWithDouble3:(USKData *)self
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *v2;
  v6 = v2[1];
  sub_27035CAC4();
  v7.receiver = self;
  v7.super_class = USKData;
  if ([(USKData *)&v7 init:v5])
  {
    v8 = &off_288040B48 + 2;
    operator new();
  }

  return 0;
}

- (USKData)initWithDouble4:(USKData *)self
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *v2;
  v6 = v2[1];
  sub_27035CAC4();
  v7.receiver = self;
  v7.super_class = USKData;
  if ([(USKData *)&v7 init:v5])
  {
    v8 = &off_288040C00 + 2;
    operator new();
  }

  return 0;
}

- (USKData)initWithDouble4x4:(__int128 *)double4x4
{
  v7 = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v5.receiver = self;
  v5.super_class = USKData;
  if ([(USKData *)&v5 init])
  {
    v6 = &off_28803FE40 + 2;
    operator new();
  }

  return 0;
}

- (USKData)initWithQuatf:(uint64_t)quatf
{
  v9 = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v7.receiver = self;
  v7.super_class = USKData;
  if ([(USKData *)&v7 init])
  {
    v8 = &off_28803FD78;
    operator new();
  }

  return 0;
}

- (USKData)initWithIntArray:(int *)array count:(unint64_t)count
{
  v11[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v10.receiver = self;
  v10.super_class = USKData;
  if ([(USKData *)&v10 init])
  {
    __dst = 0;
    memset(v8, 0, sizeof(v8));
    sub_27030E054(v8, count);
    sub_270310DE0(v8);
    memcpy(__dst, array, 4 * count);
    v11[1] = &off_288040CB8;
    sub_27032C360(v11, v8);
  }

  return 0;
}

- (USKData)initWithUIntArray:(unsigned int *)array count:(unint64_t)count
{
  v11[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v10.receiver = self;
  v10.super_class = USKData;
  if ([(USKData *)&v10 init])
  {
    __dst = 0;
    memset(v8, 0, sizeof(v8));
    sub_2703208AC(v8, count);
    sub_27032C7E0(v8);
    memcpy(__dst, array, 4 * count);
    v11[1] = &off_288040D70;
    sub_27032C360(v11, v8);
  }

  return 0;
}

- (USKData)initWithQuatfArray:(id *)array count:(unint64_t)count
{
  v13[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v12.receiver = self;
  v12.super_class = USKData;
  if ([(USKData *)&v12 init])
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_270320A2C(v10, count);
    if (count)
    {
      v7 = 0;
      do
      {
        v9 = *(array + v7);
        sub_270328150(v10);
        *(v11 + 16 * v7++) = v9;
      }

      while (count != v7);
    }

    v13[1] = off_288040E28;
    sub_270318A3C(v13, v10);
  }

  return 0;
}

- (USKData)initWithStringArray:(id)array
{
  v26[2] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  sub_27035CAC4();
  v25.receiver = self;
  v25.super_class = USKData;
  if ([(USKData *)&v25 init])
  {
    v24 = 0;
    v8 = objc_msgSend_count(arrayCopy, v5, v6, v7, 0, 0, 0, 0);
    sub_270321124(&v23, v8);
    v12 = 0;
    for (i = 0; i < objc_msgSend_count(arrayCopy, v9, v10, v11); ++i)
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v14, i, v15);
      v17 = v16;
      v21 = objc_msgSend_UTF8String(v16, v18, v19, v20);
      sub_27032D564(&v23);
      MEMORY[0x27439F260](v24 + v12, v21);

      v12 += 24;
    }

    v26[1] = &off_288040EE0;
    sub_270318A3C(v26, &v23);
  }

  return 0;
}

- (USKData)initWithTokenArray:(id)array
{
  v26[2] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  sub_27035CAC4();
  v25.receiver = self;
  v25.super_class = USKData;
  if ([(USKData *)&v25 init])
  {
    v24 = 0;
    v8 = objc_msgSend_count(arrayCopy, v5, v6, v7, 0, 0, 0, 0);
    sub_2703211BC(&v23, v8);
    v12 = 0;
    for (i = 0; i < objc_msgSend_count(arrayCopy, v9, v10, v11); ++i)
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v14, i, v15);
      v20 = v16;
      if (v16)
      {
        objc_msgSend_token(v16, v17, v18, v19);
      }

      else
      {
        v26[0] = 0;
      }

      sub_27032DE68(&v23);
      v21 = (v24 + v12);
      if ((v24 + v12) == v26)
      {
        if ((v26[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v21 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v21 = v26[0];
        v26[0] = 0;
      }

      v12 += 8;
    }

    v26[1] = off_288040F98;
    sub_270318A3C(v26, &v23);
  }

  return 0;
}

- (USKData)initWithResourcePathArray:(id)array
{
  v35 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  sub_27035CAC4();
  v30.receiver = self;
  v30.super_class = USKData;
  if ([(USKData *)&v30 init])
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v8 = objc_msgSend_count(arrayCopy, v5, v6, v7);
    sub_270321314(v28, v8);
    v12 = 0;
    for (i = 0; i < objc_msgSend_count(arrayCopy, v9, v10, v11); ++i)
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v14, i, v15);
      v17 = v16;
      v21 = objc_msgSend_UTF8String(v16, v18, v19, v20);
      sub_2703122D4(v26, v21);
      MEMORY[0x27439E030](__p, v26);
      sub_27032EFE8(v28);
      v22 = v29 + v12;
      if (*(v29 + v12 + 23) < 0)
      {
        operator delete(*v22);
      }

      v23 = *__p;
      *(v22 + 16) = v32;
      *v22 = v23;
      HIBYTE(v32) = 0;
      LOBYTE(__p[0]) = 0;
      if (*(v22 + 47) < 0)
      {
        operator delete(*(v22 + 24));
      }

      v24 = v33;
      *(v22 + 40) = v34;
      *(v22 + 24) = v24;
      HIBYTE(v34) = 0;
      LOBYTE(v33) = 0;
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      v12 += 48;
    }

    __p[1] = off_288041120;
    sub_270318A3C(__p, v28);
  }

  return 0;
}

- (USKData)initWithFloatArray:(float *)array count:(unint64_t)count
{
  v11[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v10.receiver = self;
  v10.super_class = USKData;
  if ([(USKData *)&v10 init])
  {
    __dst = 0;
    memset(v8, 0, sizeof(v8));
    sub_2703218F4(v8, count);
    sub_27032F7DC(v8);
    memcpy(__dst, array, 4 * count);
    v11[1] = &off_2880411D8;
    sub_27032FBF4(v11, v8);
  }

  return 0;
}

- (USKData)initWithFloat2Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v13[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v12.receiver = self;
  v12.super_class = USKData;
  if ([(USKData *)&v12 init])
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_270321A90(v10, v4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v8 = *(v5 + 8 * i);
        sub_27032889C(v10);
        *(v11 + 8 * i) = v8;
      }
    }

    v13[1] = off_288041290;
    sub_270318A3C(v13, v10);
  }

  return 0;
}

- (USKData)initWithFloat3Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v14.receiver = self;
  v14.super_class = USKData;
  if ([(USKData *)&v14 init])
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_270317438(v12, v4);
    if (v4)
    {
      v7 = 0;
      v8 = v4;
      do
      {
        v11 = *v5;
        sub_27031951C(v12);
        v9 = v13 + v7;
        *v9 = v11;
        *(v9 + 8) = DWORD2(v11);
        ++v5;
        v7 += 12;
        --v8;
      }

      while (v8);
    }

    v15[1] = off_28803FF38;
    sub_270318A3C(v15, v12);
  }

  return 0;
}

- (USKData)initWithFloat4Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v13[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v12.receiver = self;
  v12.super_class = USKData;
  if ([(USKData *)&v12 init])
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_2703173C4(v10, v4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = *(v5 + 16 * i);
        sub_270319444(v10);
        *(v11 + 16 * i) = v9;
      }
    }

    v13[1] = &off_288040008;
    sub_270318A3C(v13, v10);
  }

  return 0;
}

- (USKData)initWithDoubleArray:(double *)array count:(unint64_t)count
{
  v11[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v10.receiver = self;
  v10.super_class = USKData;
  if ([(USKData *)&v10 init])
  {
    __dst = 0;
    memset(v8, 0, sizeof(v8));
    sub_270321E6C(v8, count);
    sub_270330518(v8);
    memcpy(__dst, array, 8 * count);
    v11[1] = &off_288041348;
    sub_27032FBF4(v11, v8);
  }

  return 0;
}

- (USKData)initWithDouble2Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v13[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v12.receiver = self;
  v12.super_class = USKData;
  if ([(USKData *)&v12 init])
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_270322008(v10, v4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = *(v5 + 16 * i);
        sub_270329624(v10);
        *(v11 + 16 * i) = v9;
      }
    }

    v13[1] = off_288041400;
    sub_270318A3C(v13, v10);
  }

  return 0;
}

- (USKData)initWithDouble3Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v16[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v15.receiver = self;
  v15.super_class = USKData;
  if ([(USKData *)&v15 init])
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_2703221B0(v13, v4);
    if (v4)
    {
      v7 = 0;
      v8 = v4;
      do
      {
        v11 = *v5;
        v12 = v5[1];
        sub_2703299C4(v13);
        v9 = v14 + v7;
        *v9 = v11;
        *(v9 + 16) = v12;
        v5 += 2;
        v7 += 24;
        --v8;
      }

      while (v8);
    }

    v16[1] = off_2880414B8;
    sub_270318A3C(v16, v13);
  }

  return 0;
}

- (USKData)initWithDouble4Array:(USKData *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v16[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v15.receiver = self;
  v15.super_class = USKData;
  if ([(USKData *)&v15 init])
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_270322358(v13, v4);
    if (v4)
    {
      v7 = 0;
      v8 = v4;
      do
      {
        v11 = *(v5 + v7);
        v12 = *(v5 + v7 + 16);
        sub_270329D6C(v13);
        v9 = (v14 + v7);
        *v9 = v11;
        v9[1] = v12;
        v7 += 32;
        --v8;
      }

      while (v8);
    }

    v16[1] = off_288041570;
    sub_270318A3C(v16, v13);
  }

  return 0;
}

- (USKData)initWithDouble4x4Array:(id *)array count:(unint64_t)count
{
  v29[2] = *MEMORY[0x277D85DE8];
  sub_27035CAC4();
  v28.receiver = self;
  v28.super_class = USKData;
  if ([(USKData *)&v28 init])
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_27032253C(v26, count);
    if (count)
    {
      v7 = 0;
      countCopy = count;
      do
      {
        v24 = *(array + v7 + 48);
        v25 = *(array + v7 + 16);
        v20 = *(array + v7 + 32);
        v21 = *(array + v7);
        v22 = *(array + v7 + 112);
        v23 = *(array + v7 + 80);
        v18 = *(array + v7 + 96);
        v19 = *(array + v7 + 64);
        sub_270328FBC(v26);
        v9 = (v27 + v7);
        *v9 = v21;
        v9[1] = v25;
        v9[2] = v20;
        v9[3] = v24;
        v9[4] = v19;
        v9[5] = v23;
        v9[6] = v18;
        v9[7] = v22;
        sub_270328FBC(v26);
        v10 = (v27 + v7);
        v11 = *v9;
        v12 = v9[1];
        v13 = v9[3];
        v10[2] = v9[2];
        v10[3] = v13;
        v14 = v9[7];
        v16 = v9[4];
        v15 = v9[5];
        v10[6] = v9[6];
        v10[7] = v14;
        v10[4] = v16;
        v10[5] = v15;
        *v10 = v11;
        v10[1] = v12;
        v7 += 128;
        --countCopy;
      }

      while (countCopy);
    }

    v29[1] = off_288041628;
    sub_270318A3C(v29, v26);
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  v12 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_value(v5, v6, v7, v8);
    v9 = sub_2703254C0(&self->_value, v11);
    sub_270311D34(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end