void *ZinTensorAxisTypePacked::GetSymbolicDimension(unsigned __int8 *a1, int a2)
{
  if (a2 >= 5)
  {
    goto LABEL_14;
  }

  if (ZinTensorAxisTypePacked::GetAxisType(a1, a2))
  {
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    if (v4 != v5)
    {
      v6 = *a1;
      v7 = vand_s8(vand_s8(vmovn_s32(vcgtq_s32(vdupq_n_s32(a2), xmmword_1A75D70A0)), 0x8000400020001), vceqz_s16(vand_s8(vdup_n_s16(v6), 0x8000400020001)));
      v8 = vaddv_s16(v7);
      v10 = (v6 & 0x10) == 0 && a2 == 4;
      v7.i32[0] = v8 & 0xF;
      v11 = vcnt_s8(v7);
      v11.i16[0] = vaddlv_u8(v11);
      v12 = ((v10 << 31 >> 31) - v11.i32[0] + a2);
      if ((v12 & 0x80000000) == 0 && v12 < (v5 - v4) >> 4)
      {
        return (v4 + 16 * v12);
      }

LABEL_14:
      ZinAssertImpl("Incorrect Axis index in GetSymbolicDimension");
    }
  }

  return &ZinTensorAxisTypePacked::GetSymbolicDimension(ZinIrDimension)const::obj;
}

void ZinTensorAxisTypePacked::SetSymbolicDimension(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  LOBYTE(v27) = 32;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v7;
  do
  {
    if (a2 != v6)
    {
      if (!ZinTensorAxisTypePacked::GetAxisType(a1, v6))
      {
        goto LABEL_39;
      }

      ZinTensorAxisTypePacked::SetAxisType(&v27, v6, 1);
      SymbolicDimension = ZinTensorAxisTypePacked::GetSymbolicDimension(a1, v6);
      v12 = v33;
      if (v33 < v34)
      {
        v13 = *SymbolicDimension;
        goto LABEL_25;
      }

      v14 = (v33 - __p) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        goto LABEL_48;
      }

      v16 = v34 - __p;
      if ((v34 - __p) >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ZinSymbolicExpressionRef>>(&__p, v17);
      }

      v23 = (16 * v14);
      v24 = *SymbolicDimension;
      goto LABEL_36;
    }

    if (*a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = a3[1] == 0;
    }

    if (!v9)
    {
      if (ZinTensorAxisTypePacked::GetAxisType(a1, a2))
      {
        v10 = ZinTensorAxisTypePacked::GetSymbolicDimension(a1, a2);
        if (*v10 != *a3 || v10[1] != a3[1])
        {
          ZinAssertImpl("Not allow overide", v27);
        }
      }

      else
      {
        ZinTensorAxisTypePacked::SetAxisType(&v27, a2, 1);
      }

      v12 = v33;
      if (v33 < v34)
      {
        v13 = *a3;
LABEL_25:
        *v12 = v13;
        v18 = v12 + 16;
LABEL_38:
        v33 = v18;
        goto LABEL_39;
      }

      v19 = (v33 - __p) >> 4;
      v20 = v19 + 1;
      if ((v19 + 1) >> 60)
      {
LABEL_48:
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v21 = v34 - __p;
      if ((v34 - __p) >> 3 > v20)
      {
        v20 = v21 >> 3;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF0)
      {
        v22 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ZinSymbolicExpressionRef>>(&__p, v22);
      }

      v23 = (16 * v19);
      v24 = *a3;
LABEL_36:
      *v23 = v24;
      v18 = (v23 + 1);
      v25 = v23 - (v33 - __p);
      memcpy(v25, __p, v33 - __p);
      v26 = __p;
      __p = v25;
      v33 = v18;
      v34 = 0;
      if (v26)
      {
        operator delete(v26);
      }

      goto LABEL_38;
    }

LABEL_39:
    v6 = (v6 + 1);
  }

  while (v6 != 5);
  std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>(&v28, __p, v33, (v33 - __p) >> 4);
  *a1 = v27;
  if (&v27 != a1)
  {
    std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>((a1 + 8), v28, v29, (v29 - v28) >> 4);
  }

  *v8 = v31;
  *(v8 + 4) = BYTE4(v31);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_1A6A2AF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinTensorAxisTypePacked::ValidateConsistenceOfBoolAndSymbolicAxis(ZinTensorAxisTypePacked *this)
{
  v1 = *this;
  if ((v1 & 0x20) == 0)
  {
    return 0;
  }

  v4 = *(this + 1);
  v3 = *(this + 2);
  return ((v1 >> 1) & 1) + (v1 & 1) + ((v1 >> 2) & 1) + ((v1 >> 3) & 1) + ((v1 >> 4) & 1) == (v3 - v4) >> 4 || v3 == v4;
}

BOOL ZinTensorAxisTypePacked::operator&@<W0>(ZinTensorAxisTypePacked *__return_ptr a1@<X8>, ZinTensorAxisTypePacked *a2@<X0>, uint64_t a3@<X1>)
{
  if ((*a3 & 0x20) == 0 || (*a2 & 0x20) == 0)
  {
    ZinAssertImpl("Missing axis type operands during axis_type propagation");
  }

  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(a1, a2);
  v6 = 0;
  do
  {
    if (*(a3 + 8) == *(a3 + 16) && *(a1 + 1) == *(a1 + 2))
    {
      if (!ZinTensorAxisTypePacked::GetAxisType(a3, v6))
      {
        ZinTensorAxisTypePacked::SetAxisType(a1, v6, 0);
      }
    }

    else if (ZinTensorAxisTypePacked::GetAxisType(a2, v6) && ZinTensorAxisTypePacked::GetAxisType(a3, v6))
    {
      SymbolicDimension = ZinTensorAxisTypePacked::GetSymbolicDimension(a2, v6);
      v8 = ZinTensorAxisTypePacked::GetSymbolicDimension(a3, v6);
      if (*SymbolicDimension != *v8 || (v9 = SymbolicDimension[1], v9 != v8[1]) || !*SymbolicDimension && !v9)
      {
        ZinAssertImpl("Two dynamic operands should have same symbolic expressions");
      }
    }

    else
    {
      v11[0] = 0;
      v11[1] = 0;
      ZinTensorAxisTypePacked::SetSymbolicDimension(a1, v6, v11);
    }

    v6 = (v6 + 1);
  }

  while (v6 != 5);
  result = ZinTensorAxisTypePacked::ValidateConsistenceOfBoolAndSymbolicAxis(a2);
  if (!result)
  {
    ZinAssertImpl("Inconsitent BOOLean and symbolic dynamic axis type");
  }

  return result;
}

void sub_1A6A2B138(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(uint64_t a1, void *__s, size_t __n, uint64_t a4)
{
  if (!__n)
  {
    v19 = *a1 & 0xF0;
LABEL_27:
    v21 = 32;
    goto LABEL_28;
  }

  v8 = memchr(__s, 78, __n);
  if (v8)
  {
    v9 = v8 - __s == -1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = *a1 & 0xFE;
  }

  else
  {
    v10 = (*a1 & 0xFE) + 1;
  }

  *a1 = v10;
  v11 = memchr(__s, 68, __n);
  v12 = v10 | 2;
  if (v11 - __s == -1)
  {
    v12 = v10 & 0xFD;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10 & 0xFD;
  }

  *a1 = v13;
  v14 = memchr(__s, 67, __n);
  v15 = v13 | 4;
  if (v14 - __s == -1)
  {
    v15 = v13 & 0xFB;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13 & 0xFB;
  }

  *a1 = v16;
  v17 = memchr(__s, 72, __n);
  v18 = v16 | 8;
  if (v17 - __s == -1)
  {
    v18 = v16 & 0xF7;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16 & 0xF7;
  }

  *a1 = v19;
  v20 = memchr(__s, 87, __n);
  if (!v20 || v20 - __s == -1)
  {
    goto LABEL_27;
  }

  v21 = 48;
LABEL_28:
  *a1 = v21 | v19 & 0xF;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  std::vector<ZinSymbolicExpressionRef>::__init_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>((a1 + 8), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 4);
  *(a1 + 32) = GetIsolationAxisFromString(__s, __n);
  *(a1 + 36) = 0;
  return a1;
}

BOOL ZinTensorAxisTypePacked::Transpose@<W0>(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6 - v5 != 20)
  {
    ZinAssertImpl("New order size is mismatched with ZinIrDimension::kCount");
  }

  std::set<ZinIrDimension>::set[abi:ne200100]<std::__wrap_iter<ZinIrDimension const*>>(v16, v5, v6);
  v9 = v18;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v16, v17);
  if (v9 != 5)
  {
    ZinAssertImpl("No duplicate dimension allowed");
  }

  if ((*a1 & 0x20) == 0)
  {
    ZinAssertImpl("Transpose operator missing input AxisType");
  }

  v10 = 0;
  LODWORD(v11) = 5;
  do
  {
    if ((*a2)[v10] == *(a1 + 32))
    {
      v11 = v10;
    }

    else
    {
      v11 = v11;
    }

    ++v10;
  }

  while (v10 != 5);
  v12 = 0;
  *a3 = 32;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = v11;
  do
  {
    v13 = (*a2)[v12];
    if (ZinTensorAxisTypePacked::GetAxisType(a1, v13))
    {
      if (*(a1 + 8) == *(a1 + 16))
      {
        ZinTensorAxisTypePacked::SetAxisType(a3, v12, 1);
      }

      else
      {
        SymbolicDimension = ZinTensorAxisTypePacked::GetSymbolicDimension(a1, v13);
        ZinTensorAxisTypePacked::SetSymbolicDimension(a3, v12, SymbolicDimension);
      }
    }

    ++v12;
  }

  while (v12 != 5);
  result = ZinTensorAxisTypePacked::ValidateConsistenceOfBoolAndSymbolicAxis(a1);
  if (!result)
  {
    ZinAssertImpl("Inconsitent BOOLean and symbolic dynamic axis type");
  }

  return result;
}

void sub_1A6A2B438(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void ZinTensorAxisTypePacked::Transpose(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v33 = 0;
  v34 = 0;
  v32 = &v33;
  v6 = *a2;
  v7 = a2[1];
  v29 = &v32;
  v30 = &v33;
  if (v6 != v7)
  {
    do
    {
      LODWORD(__src) = *v6;
      std::insert_iterator<std::set<ZinIrDimension>>::operator=[abi:ne200100](&v29, &__src);
      v6 += 2;
    }

    while (v6 != v7);
    v6 = *a2;
    v7 = a2[1];
  }

  v30 = 0;
  v31 = 0;
  v29 = &v30;
  __src = &v29;
  v27 = &v30;
  if (v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    do
    {
      v35 = v6[1];
      std::insert_iterator<std::set<ZinIrDimension>>::operator=[abi:ne200100](&__src, &v35);
      v6 += 2;
    }

    while (v6 != v7);
    v8 = v31 < 6;
  }

  if (v34 > 5 || !v8)
  {
    ZinAssertImpl("Exceed the maximum unique transpose src or dest", __src, v27);
  }

  v9 = 0;
  v10 = 0;
  __src = 0;
  v27 = 0;
  v28 = 0;
  do
  {
    if (v9 >= v28)
    {
      v11 = __src;
      v12 = v9 - __src;
      v13 = (v9 - __src) >> 2;
      v14 = v13 + 1;
      if ((v13 + 1) >> 62)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v15 = v28 - __src;
      if ((v28 - __src) >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(&__src, v16);
      }

      v17 = (v9 - __src) >> 2;
      v18 = (4 * v13);
      v19 = (4 * v13 - 4 * v17);
      *v18 = v10;
      v9 = (v18 + 1);
      memcpy(v19, v11, v12);
      v20 = __src;
      __src = v19;
      v27 = v9;
      v28 = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v9 = v10;
      v9 += 4;
    }

    v27 = v9;
    ++v10;
  }

  while (v10 != 5);
  v21 = *a2;
  v22 = a2[1];
  if (*a2 != v22)
  {
    v23 = __src;
    do
    {
      v24 = *v21;
      v25 = v21[1];
      v21 += 2;
      v23[v25] = v24;
    }

    while (v21 != v22);
  }

  ZinTensorAxisTypePacked::Transpose(a1, &__src, a3);
  if (__src)
  {
    v27 = __src;
    operator delete(__src);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v29, v30);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v32, v33);
}

void sub_1A6A2B684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a12, a13);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t ZinTensorAxisTypePacked::AreAllAxisTypesValidInaVector(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  v2 = *a1 + 40;
  do
  {
    v3 = *(v2 - 40);
    result = (v3 >> 5) & 1;
    if ((v3 & 0x20) == 0)
    {
      break;
    }

    v5 = v2 == v1;
    v2 += 40;
  }

  while (!v5);
  return result;
}

uint64_t ZinTensorAxisTypePacked::IsAnyBottomDynamic(ZinTensorAxisTypePacked **a1, void *__s, size_t __n)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  do
  {
    ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(v15, __s, __n);
    ZinTensorAxisTypePacked::operator&(v18, v3, v15);
    v10[0] = 32;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 5;
    v7 = ZinTensorAxisTypePacked::operator==(v18, v10);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    v3 = (v3 + 40);
    if (v3 == v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }
  }

  while ((v8 & 1) != 0);
  return v7 ^ 1u;
}

void sub_1A6A2B7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinTensorAxisTypeAndDimensions::IsAnyAxisTypeDynamicInaVector(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
    v5 = &a2[a3];
    while (2)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      while (v6 != v7)
      {
        v9 = 0;
        if ((ToZinIrDimension(*v3, &v9) & 1) == 0)
        {
          ZinAssertImpl("Unknown dynamic axis");
        }

        if (ZinTensorAxisTypePacked::GetAxisType(v6, v9))
        {
          return 1;
        }

        v6 += 80;
      }

      if (++v3 != v5)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

BOOL ZinTensorAxisTypeAndDimensions::IsAnyAxisTypeSymbolicInaVector(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 80;
  do
  {
    v3 = *(v2 - 72);
    v4 = *(v2 - 64);
    result = v3 != v4;
    v6 = v3 != v4 || v2 == v1;
    v2 += 80;
  }

  while (!v6);
  return result;
}

uint64_t ZinTensorAxisTypeAndDimensions::AreAllAxisTypesValidInaVector(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  v2 = *a1 + 80;
  do
  {
    v3 = *(v2 - 80);
    result = (v3 >> 5) & 1;
    if ((v3 & 0x20) == 0)
    {
      break;
    }

    v5 = v2 == v1;
    v2 += 80;
  }

  while (!v5);
  return result;
}

uint64_t ZinTensorAxisTypeAndDimensions::EqualsOrBroadcastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 != 5 && v5 != 5 && v4 != v5)
  {
    return 0;
  }

  __p = 0;
  v39 = 0;
  v40 = 0;
  if (*(a3 + 4))
  {
    if (*(a4 + 4))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__p, 1uLL);
    }

    return 0;
  }

  if (*(a4 + 4))
  {
    return 0;
  }

  GetAllZinIrDimensions(&v36);
  v12 = v36;
  v13 = v37;
  if (v36 != v37)
  {
    v14 = v39;
    do
    {
      if (v14 >= v40)
      {
        v16 = __p;
        v17 = v14 - __p;
        v18 = (v14 - __p) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v20 = v40 - __p;
        if ((v40 - __p) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__p, v21);
        }

        v22 = (v14 - __p) >> 3;
        v23 = (8 * v18);
        v24 = vld1_dup_f32(v12);
        v25 = (8 * v18 - 8 * v22);
        *v23 = v24;
        v14 = &v23[1];
        memcpy(v25, v16, v17);
        v26 = __p;
        __p = v25;
        v39 = v14;
        v40 = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        v15 = *v12;
        *v14 = *v12;
        *(v14 + 1) = v15;
        v14 += 8;
      }

      v39 = v14;
      ++v12;
    }

    while (v12 != v13);
    v12 = v36;
  }

  if (v12)
  {
    v37 = v12;
    operator delete(v12);
  }

  v27 = v39;
  v28 = __p;
  if (__p == v39)
  {
    v10 = 1;
    if (__p)
    {
      goto LABEL_57;
    }

    return v10;
  }

  while (1)
  {
    AxisType = ZinTensorAxisTypePacked::GetAxisType(a1, *v28);
    if (AxisType != ZinTensorAxisTypePacked::GetAxisType(a2, v28[1]) || (SymbolicDimension = ZinTensorAxisTypePacked::GetSymbolicDimension(a1, *v28), v31 = ZinTensorAxisTypePacked::GetSymbolicDimension(a2, v28[1]), *SymbolicDimension != *v31) || SymbolicDimension[1] != v31[1] || (Dimension = ZinTensorPosition::GetDimension(a1 + 40, *v28), Dimension != ZinTensorPosition::GetDimension(a2 + 40, v28[1])))
    {
      v33 = ZinTensorAxisTypePacked::GetAxisType(a1, *v28);
      if (v33 == ZinTensorAxisTypePacked::GetAxisType(a2, v28[1]) && *(a1 + 32) == 5 && *(a2 + 32) == 5)
      {
        break;
      }

      v34 = *v28;
      if (ZinTensorPosition::GetDimension(a1 + 40, *v28) != 1 || ZinTensorAxisTypePacked::GetAxisType(a1, v34) || *(a1 + 32) == v34)
      {
        v35 = v28[1];
        if (ZinTensorPosition::GetDimension(a2 + 40, v35) != 1 || ZinTensorAxisTypePacked::GetAxisType(a2, v35) || *(a2 + 32) == v35)
        {
          break;
        }
      }
    }

LABEL_51:
    v28 += 2;
    if (v28 == v27)
    {
      v10 = 1;
      goto LABEL_56;
    }
  }

  if (!ZinTensorAxisTypePacked::GetAxisType(a1, *v28) && !ZinTensorAxisTypePacked::GetAxisType(a2, v28[1]))
  {
    v10 = 0;
    if (*(a1 + 32) != 5 || *(a2 + 32) != 5)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  v10 = 0;
LABEL_56:
  v28 = __p;
  if (__p)
  {
LABEL_57:
    v39 = v28;
    operator delete(v28);
  }

  return v10;
}

void sub_1A6A2BC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinTensorAxisTypePacked::SetIsolationProperty(uint64_t result, _DWORD *a2)
{
  if (*(result + 36) == 1)
  {
    ZinAssertImpl("Attempt to overwrite isolation property", a2, v2, v3);
  }

  *(result + 32) = *a2;
  *(result + 36) = 1;
  return result;
}

uint64_t ZinTensorAxisTypeAndDimensions::ValidateBroadcastAxisType(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a1) >> 4) < 2)
  {
    return 1;
  }

  v5 = 0;
  for (i = 80; ; i += 80)
  {
    v7 = v5++;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v1) >> 4);
    v9 = i;
    v10 = v5;
    if (v5 < v8)
    {
      break;
    }

LABEL_7:
    if (v5 >= v8 - 1)
    {
      return 1;
    }
  }

  while (1)
  {
    v12[0] = 0;
    v12[4] = 0;
    v11[0] = 0;
    v11[4] = 0;
    if ((ZinTensorAxisTypeAndDimensions::EqualsOrBroadcastCompatible(v1 + 80 * v7, v1 + v9, v12, v11) & 1) == 0)
    {
      return 0;
    }

    ++v10;
    v1 = *a1;
    v2 = a1[1];
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a1) >> 4);
    v9 += 80;
    if (v10 >= v8)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::vector<ZinSymbolicExpressionRef>::__init_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ZinSymbolicExpressionRef>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A6A2BE64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::set<ZinIrDimension>::set[abi:ne200100]<std::__wrap_iter<ZinIrDimension const*>>(uint64_t a1, int *a2, int *a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<ZinKernelFormat>::__emplace_hint_unique_key_args<ZinKernelFormat,ZinKernelFormat const&>(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

__n128 ToTensorDimensions@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void FindDimension(std::vector<unsigned int> *__return_ptr a1@<X8>, const ZinTensorDimensions *a2@<X0>, uint64_t a3@<X1>)
{
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  std::vector<float>::reserve(a1, 5uLL);
  for (i = 0; i != 5; ++i)
  {
    v7 = dword_1A75D70B8[i];
    if (GetValueAtDimension<ZinTensorDimensions>(a2, v7) == a3)
    {
      end = a1->__end_;
      value = a1->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a1->__begin_;
        v12 = end - a1->__begin_;
        v13 = v12 >> 2;
        v14 = (v12 >> 2) + 1;
        if (v14 >> 62)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v15 = value - begin;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(a1, v16);
        }

        *(4 * v13) = v7;
        v10 = (4 * v13 + 4);
        memcpy(0, begin, v12);
        v17 = a1->__begin_;
        a1->__begin_ = 0;
        a1->__end_ = v10;
        a1->__end_cap_.__value_ = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *end = v7;
        v10 = end + 1;
      }

      a1->__end_ = v10;
    }
  }
}

void sub_1A6A2C054(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HasInterleaveMismatch(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2)
  {
    return a4 & (a1 != a3);
  }

  else
  {
    return 0;
  }
}

BOOL IsVector(const ZinTensorDimensions *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3);
  v1 = *(a1 + 4);
  v11[0] = *a1;
  v11[1] = v1;
  v12 = *(a1 + 8);
  v13 = v2;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v8, v11, &v14, 5uLL);
  if (v8 == v9)
  {
    v6 = 1;
    if (!v8)
    {
      return v6;
    }

    goto LABEL_7;
  }

  v3 = 0;
  v4 = v8;
  do
  {
    v5 = *v4++;
    if (v5 > 1)
    {
      ++v3;
    }
  }

  while (v4 != v9);
  v6 = v3 < 2;
  if (v8)
  {
LABEL_7:
    v9 = v8;
    operator delete(v8);
  }

  return v6;
}

uint64_t IsSingularValue(int64x2_t *a1)
{
  v1 = vdupq_n_s64(1uLL);
  v2 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*a1, v1), vceqq_s64(a1[1], v1))));
  v2.i16[0] = vmaxv_u16(v2);
  return (a1[2].i64[0] == 1) & (v2.i32[0] ^ 1u);
}

uint64_t GetMacroblockSize(int a1)
{
  if (a1 == 1)
  {
    return 32;
  }

  else
  {
    return 16 * (a1 == 2);
  }
}

uint64_t GetHWDMAFormatMode(unsigned int a1, int *a2)
{
  result = 0;
  if (a1 <= 7)
  {
    if (a1 - 3 >= 5)
    {
      if (a1 - 1 >= 2)
      {
        if (a1)
        {
          return result;
        }

        goto LABEL_16;
      }

LABEL_12:
      result = 0;
      *a2 = 0;
      return result;
    }

    goto LABEL_11;
  }

  if (a1 > 0x11)
  {
    goto LABEL_10;
  }

  if (((1 << a1) & 0x24800) != 0)
  {
    result = 0;
    v4 = 3;
    goto LABEL_14;
  }

  if (((1 << a1) & 0x3000) != 0)
  {
    goto LABEL_12;
  }

  if (((1 << a1) & 0x18000) == 0)
  {
LABEL_10:
    if (a1 - 9 < 2)
    {
LABEL_11:
      result = 0;
      v4 = 2;
LABEL_14:
      *a2 = v4;
      return result;
    }

    if (a1 != 8)
    {
      return result;
    }
  }

LABEL_16:
  v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v5)
  {
    GetHWDMAFormatMode(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  return 3;
}

uint64_t GetHWDMAMemoryFormat(int a1, int *a2)
{
  switch(a1)
  {
    case 0:
    case 8:
    case 15:
    case 16:
      v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v3)
      {
        GetHWDMAMemoryFormat(v3, v4, v5, v6, v7, v8, v9, v10);
      }

      return 3;
    case 1:
    case 9:
    case 14:
      result = 0;
      v11 = 1;
      goto LABEL_11;
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 10:
    case 17:
      result = 0;
      *a2 = 0;
      return result;
    case 3:
    case 13:
      result = 0;
      v11 = 2;
      goto LABEL_11;
    case 11:
      result = 0;
      v11 = 3;
      goto LABEL_11;
    case 12:
      result = 0;
      v11 = 4;
LABEL_11:
      *a2 = v11;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t GetHWDMAFormatBytes(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 2 * a2;
  v4 = 4;
  if (*a1 != 1)
  {
    v4 = a2;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (v2 == 3)
  {
    return 4 * a2;
  }

  else
  {
    return v3;
  }
}

uint64_t GetHWChannelFormat(unsigned int a1, unsigned int *a2)
{
  result = 0;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0u:
LABEL_8:
        v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v4)
        {
          GetHWChannelFormat(v4, v5, v6, v7, v8, v9, v10, v11);
        }

        return 3;
      case 1u:
        result = 0;
        goto LABEL_5;
      case 2u:
        result = 0;
        *a2 = 0;
        break;
    }
  }

  else
  {
    if (a1 > 0x11)
    {
      return result;
    }

    if (((1 << a1) & 0x2FF8) != 0)
    {
      result = 0;
      a1 = 2;
LABEL_5:
      *a2 = a1;
      return result;
    }

    if (((1 << a1) & 0x3C000) != 0)
    {
      goto LABEL_8;
    }

    if (a1 == 12)
    {
      result = 0;
      a1 = 4;
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t GetHWAtomicReadModifyWriteDataType(int a1)
{
  result = 0;
  if (a1 > 9)
  {
    if (a1 > 14)
    {
      if (a1 == 15)
      {
        return 7;
      }

      if (a1 == 17)
      {
        return 5;
      }

      if (a1 != 16)
      {
        return result;
      }
    }

    else
    {
      if (a1 == 10)
      {
        return 3;
      }

      if (a1 == 14)
      {
        return 4;
      }

      if ((a1 - 11) >= 3)
      {
        return result;
      }
    }

LABEL_19:
    ZinAssertImpl("Error: invalid data type for atomic read-modify-write operation - %s", "ZinAtomicReadModifyWriteDataType GetHWAtomicReadModifyWriteDataType(ZinTensorFormat)");
  }

  if (a1 > 3)
  {
    if (a1 == 9)
    {
      return 2;
    }

    if ((a1 - 4) >= 5)
    {
      return result;
    }

    goto LABEL_19;
  }

  switch(a1)
  {
    case 2:
      return 1;
    case 3:
      return 9;
    case 0:
      goto LABEL_19;
  }

  return result;
}

uint64_t GetSize(int a1)
{
  v2 = 0;
  if (ZinTensorFormatGetSizeInBytes(a1, &v2))
  {
    ZinAssertImpl("Error in getting tensor format size in bytes");
  }

  return v2;
}

uint64_t IsValidTensorDims(uint64_t a1, void *a2, void *a3)
{
  v6 = 0;
  while (1)
  {
    v10 = dword_1A75D70CC[v6];
    if (!std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(a3, &v10))
    {
      goto LABEL_6;
    }

    v7 = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(a3, &v10);
    if (!v7)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v7 + 20) != 2)
    {
LABEL_6:
      Dimension = ZinTensorPosition::GetDimension(a1, v10);
      if (Dimension < GetMinTensorSize(v10, a2) || Dimension > GetMaxTensorSize(v10, a2, a3))
      {
        return 0;
      }
    }

    if (++v6 == 5)
    {
      return 1;
    }
  }
}

uint64_t GetMinTensorSize(int a1, void *a2)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return a2[40];
      case 4:
        return a2[38];
      case 5:
        ZinAssertImpl("Error: Invalid tensor dimension given", a2, v2, v3);
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return a2[42];
    }

    else if (a1 == 2)
    {
      return a2[44];
    }
  }

  else
  {
    return a2[46];
  }

  return result;
}

uint64_t GetMaxTensorSize(int a1, uint64_t a2, void *a3)
{
  v11 = a1;
  if (std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(a3, &v11))
  {
    v5 = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(a3, &v11);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v6 = *(v5 + 20) == 1;
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v8 = !v6;
        v9 = 344;
        v10 = 416;
      }

      else
      {
        if (v11 != 2)
        {
          return result;
        }

        v8 = !v6;
        v9 = 360;
        v10 = 408;
      }
    }

    else
    {
      v8 = !v6;
      v9 = 384;
      v10 = 424;
    }

    goto LABEL_16;
  }

  switch(v11)
  {
    case 3:
      v8 = !v6;
      v9 = 328;
      v10 = 400;
      goto LABEL_16;
    case 4:
      v8 = !v6;
      v9 = 312;
      v10 = 392;
LABEL_16:
      if (!v8)
      {
        v9 = v10;
      }

      return *(a2 + v9);
    case 5:
      ZinAssertImpl("Error: Invalid tensor dimension given");
  }

  return result;
}

uint64_t ZinIrAffineTransformUnit::ZinIrAffineTransformUnit(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = ZinIrUnit::ZinIrUnit(a1, a3);
  *v5 = &unk_1F19F5088;
  ZinIrTextureUnitInfo::ZinIrTextureUnitInfo((v5 + 7), a2);
  *(a1 + 56) = &unk_1F19D2820;
  v6 = *(a2 + 160);
  v7 = *(a2 + 192);
  *(a1 + 232) = *(a2 + 176);
  *(a1 + 216) = v6;
  *(a1 + 248) = v7;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>((a1 + 256), *(a2 + 200), *(a2 + 208), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 208) - *(a2 + 200)) >> 2));
  return a1;
}

void sub_1A6A2C9D4(_Unwind_Exception *a1)
{
  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v2);
  ZinIrUnit::~ZinIrUnit(v1);
  _Unwind_Resume(a1);
}

uint64_t ZinIrAffineTransformUnit::TensorDimensions(ZinIrAffineTransformUnit *this, const ZinIrHalParameters *a2, int8x16_t *a3, ZinIrUnitStatus *a4)
{
  v4 = *(this + 1);
  a3->i64[1] = v4[2];
  a3[2].i64[0] = v4[5];
  v5 = v4[1];
  v6 = v4[18];
  if (v5 > v6)
  {
    v6 = v5;
  }

  a3->i64[0] = v6;
  a3[1] = vextq_s8(*(this + 216), *(this + 216), 8uLL);
  return 0;
}

void sub_1A6A2CC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1AC55A070](v12, 0x10B3C408C0C1E9CLL, a3, a4, a5, a6, a7, a8);
  if (a12)
  {
    (*(*a12 + 16))(a12);
  }

  _Unwind_Resume(a1);
}

void ZinMirChannelSplit::ComputeChannelDistributionVector(const void **__return_ptr a1@<X8>, ZinMirChannelSplit *this@<X0>, uint64_t a3@<X1>)
{
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = *MemoryPools;
  v7 = *(MemoryPools + 8);
  v8 = (*MemoryPools + 8);
  if (*MemoryPools != v7 && v8 != v7)
  {
    do
    {
      v10 = *v8;
      v11 = *((*(**v6 + 40))(*v6, 0) + 72);
      if (v11 < *((*(*v10 + 40))(v10, 0) + 72))
      {
        v6 = v8;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  v12 = *((*(**v6 + 40))(*v6, 0) + 72);
  v13 = vcvtps_u32_f32(v12 / a3);
  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = v12;
      v16 = v12 < a3;
      v12 -= a3;
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = a3;
      }

      v18 = a1[2];
      if (v14 >= v18)
      {
        v19 = *a1;
        v20 = v14 - *a1;
        v21 = v20 >> 3;
        v22 = (v20 >> 3) + 1;
        if (v22 >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v23 = v18 - v19;
        if (v23 >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v24);
        }

        *(8 * v21) = v17;
        v14 = (8 * v21 + 8);
        memcpy(0, v19, v20);
        v25 = *a1;
        *a1 = 0;
        a1[1] = v14;
        a1[2] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v14++ = v17;
      }

      a1[1] = v14;
      --v13;
    }

    while (v13);
  }
}

void sub_1A6A2CF44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinMirChannelSplit::IsValidInputChannelSplit(ZinMirChannelSplit *this, unint64_t a2)
{
  if (*(*(this + 11) + 8) != 93 || !RawOrShared<ZinConvLayer>::unwrap_const_ptr(this + 760))
  {
    MemoryPools = ZinIrContext::GetMemoryPools(this);
    v13 = *MemoryPools;
    v14 = *(MemoryPools + 8);
    while (1)
    {
      if (v13 == v14)
      {
        v20 = (*(*this + 440))(this);
        Hal = ZinIrTarget::GetHal(*(*(this + 4) + 200));
        v22 = (*(*Hal + 16))(Hal);
        v38 = 0;
        v23 = (*(*this + 40))(this, 0);
        if (ZinTensorFormatGetSizeInBytes(*(v23 + 104), &v38))
        {
          ZinAssertImpl("Error in getting tensor format size in bytes");
        }

        if (!v20 || !(v38 * a2 % *(v22 + 560)))
        {
          return 1;
        }

        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        ZinMirChannelSplit::IsValidInputChannelSplit(result, v24, v25, v26, v27, v28, v29, v30);
        return 0;
      }

      v15 = (*(**v13 + 40))(*v13, 0);
      RootTensor = ZinIrTensor::GetRootTensor(v15);
      Interleave = ZinIrTensor::GetInterleave(RootTensor);
      v19 = (v18 & 1) != 0 ? Interleave : 1;
      if (a2 % v19)
      {
        break;
      }

      ++v13;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ZinMirChannelSplit::IsValidInputChannelSplit(result, v31, v32, v33, v34, v35, v36, v37);
    return 0;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ZinMirChannelSplit::IsValidInputChannelSplit(result, v5, v6, v7, v8, v9, v10, v11);
    return 0;
  }

  return result;
}

uint64_t ZinMirChannelSplit::ComputeOutDims_Default@<X0>(ZinMirChannelSplit *this@<X0>, const ZinTensorDimensions *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(this + 1);
  *a4 = *this;
  *(a4 + 16) = v6;
  *(a4 + 32) = *(this + 4);
  result = (*(*a3 + 440))(a3);
  v8 = 8;
  if (result)
  {
    v8 = 24;
  }

  *(a4 + v8) = a2;
  return result;
}

void ZinMirChannelSplit::SplitPEElementWiseLayerWithPreOps(ZinMirChannelSplit *this, ZinIrOpLayerGraph *a2, ZinPEElementWiseLayer *a3, uint64_t a4, uint64_t a5, ZinObjectNameFactory *a6)
{
  v10[4] = *MEMORY[0x1E69E9840];
  ZinMirChannelSplit::PrepareInputViews(&v9, a2, a3, a4, a5);
  v10[0] = &unk_1F19CA618;
  v10[1] = ZinMirChannelSplit::ComputeOutDims_Default;
  v10[3] = v10;
  ZinMirChannelSplit::CreateOutputTensor(a2, a3, a5, v10);
}

void sub_1A6A2D500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void *a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a30);
  if (a22)
  {
    operator delete(a22);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t *ZinMirChannelSplit::PrepareInputViews@<X0>(uint64_t *__return_ptr a1@<X8>, ZinIrOpLayerGraph *a3@<X1>, const ZinIrOpLayer *a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v37 = *MEMORY[0x1E69E9840];
  MemoryPools = ZinIrContext::GetMemoryPools(a3);
  v10 = (MemoryPools[1] - *MemoryPools) >> 3;
  v36[0] = 0;
  result = std::vector<ZinIrOpLayer *>::vector[abi:ne200100](a1, v10, v36);
  if (MemoryPools[1] != *MemoryPools)
  {
    v12 = 0;
    while (1)
    {
      InputTensor = ZinIrOpLayer::GetInputTensor(a3, v12);
      v14 = *(InputTensor + 80);
      v33 = *(InputTensor + 64);
      v34 = v14;
      v35 = *(InputTensor + 96);
      if (!ZinIrOpLayer::IsPELayer(a3))
      {
        break;
      }

      if (ZinANELayer::GetTextureIndexInput(a3) != InputTensor || (result = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a3 + 392), *(result[11] + 8) != 55))
      {
        if (ZinPELayer::HasInputTranspose(a3, v12))
        {
          v15 = 4;
        }

        else
        {
          v15 = 2;
        }

LABEL_10:
        result = GetValueAtDimension<ZinTensorDimensions>(&v33, v15);
        if (result != 1)
        {
          v31[0] = v33;
          v31[1] = v34;
          v32 = v35;
          SetValueAtDimension<ZinTensorDimensions>(v31, v15, a4);
          v16 = *(*MemoryPools + 8 * v12);
          v30 = 0;
          v28 = 0u;
          v29 = 0u;
          SetValueAtDimension<ZinTensorDimensions>(&v28, v15, a5);
          v17 = *(a3 + 4);
          (*(*a6 + 16))(__p, a6, 0);
          (*(*v16 + 88))(v36, v16, 0);
          memset(v26, 0, sizeof(v26));
          std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v26, v36, &v37, 1uLL);
          v18 = (*(*v16 + 40))(v16, 0);
          v21[0] = v28;
          v21[1] = v29;
          v22 = v30;
          v23 = vdupq_n_s64(1uLL);
          v24 = v23;
          v25 = 1;
          ZinBuilder::CreateView(v17, __p, v26, v18, v31, v21);
        }
      }

      *(*a1 + 8 * v12) = *(*MemoryPools + 8 * v12);
      if (++v12 >= (MemoryPools[1] - *MemoryPools) >> 3)
      {
        return result;
      }
    }

    v15 = 2;
    goto LABEL_10;
  }

  return result;
}

void ZinMirChannelSplit::CreateOutputTensor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*a1 + 40))(a1, 0);
  std::function<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::operator()(a4, v9 + 64, a2, a1);
  (*(*a1 + 40))(a1, 0);
  (*(*a3 + 16))(&v10, a3, 0);
  ZinIrTensor::CreateTensor();
}

void sub_1A6A2DC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  v27 = *(v25 - 104);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void ZinMirChannelSplit::ConnectSplitNodeAndViewLayers(ZinIrOpLayerGraph *a1, void *a2, ZinIrContext *a3, ZinIrOpLayer *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v24.n128_u64[0] = a4;
  v25 = 0;
  v8 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v24);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v24, v8);
  v27[0] = a3;
  v20[0] = v27;
  v20[1] = 1;
  Layer2TDMapper::SourceLayer::SourceLayer(&v21, v20);
  ZinIrOpLayerGraph::AddNode(a1, &v24, &v21, &v16);
  v9 = v16;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v17);
  v21 = &unk_1F19C3950;
  v26 = &v22;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v26);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v24);
  MemoryPools = ZinIrContext::GetMemoryPools(a3);
  v11 = *MemoryPools;
  if (MemoryPools[1] != *MemoryPools)
  {
    v12 = 0;
    do
    {
      IndexOfMatchedIncomingLayer = ZinIrOpLayerGraph::GetIndexOfMatchedIncomingLayer(a1, a3, *(v11 + 8 * v12));
      if (v9)
      {
        v9 = ZinIrOpLayerGraph::AddEdge(a1, *(*a2 + 8 * v12), a4, 0xFFFFFFFFFFFFFFFFLL, IndexOfMatchedIncomingLayer, 0);
      }

      else
      {
        v9 = 0;
      }

      ++v12;
      v11 = *MemoryPools;
    }

    while (v12 < (MemoryPools[1] - *MemoryPools) >> 3);
  }

  ZinIrContext::GetParameters(&v16, *(**a2 + 32));
  v22 = 0;
  v23 = 0;
  v21 = &v16;
  v15 = *a2;
  v14 = a2[1];
  while (v15 != v14)
  {
    v9 &= (*(**v15 + 192))(*v15, a1, &v21) == 0;
    ++v15;
  }

  if ((v9 & 1) == 0)
  {
    ZinAssertImpl("Failed to update graph");
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_1A6A2DE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, char a24)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinMirChannelSplit::ZinSplitLayerByInputChannelByDistribution(ZinMirChannelSplit *a1, size_t *a2, ZinIrOpLayer ***a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = (*(*a2 + 440))(a2);
  if (*(a2 + 71) >= 0)
  {
    v10 = *(a2 + 71);
  }

  else
  {
    v10 = a2[7];
  }

  std::string::basic_string[abi:ne200100](&v44, v10 + 1);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v44;
  }

  else
  {
    v11 = v44.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a2 + 71) >= 0)
    {
      v12 = (a2 + 6);
    }

    else
    {
      v12 = a2[6];
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 95;
  *(&v41.__r_.__value_.__s + 23) = 10;
  strcpy(&v41, "split_inpc");
  v13 = std::string::append(&v41, "_xfm", 4uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v43 = v13->__r_.__value_.__r.__words[2];
  *v42 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v43 >= 0)
  {
    v15 = v42;
  }

  else
  {
    v15 = v42[0];
  }

  if (v43 >= 0)
  {
    v16 = HIBYTE(v43);
  }

  else
  {
    v16 = v42[1];
  }

  v17 = std::string::append(&v44, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  ZinObjectNameFactory::ZinObjectNameFactory(&v45, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  v32 = a4;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  memset(&v44, 0, sizeof(v44));
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  v19 = *a3;
  v20 = a3[1];
  if (*a3 != v20)
  {
    v21 = 0;
    v22 = 0;
    v33 = vdupq_n_s64(1uLL);
    do
    {
      v23 = *v19;
      std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::__value_func[abi:ne200100](v46, a5);
      SplitByInputChannel = ZinMirChannelSplit::CreateSplitByInputChannel(a1, a2, v23, v21, &v45, v46);
      std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::~__value_func[abi:ne200100](v46);
      if (!SplitByInputChannel)
      {
        ZinAssertImpl("failed create split by input channel, graph is changed");
      }

      v25 = (*(SplitByInputChannel->n128_u64[0] + 40))(SplitByInputChannel, 0);
      if (v9)
      {
        v26 = 0;
        v27 = (v25 + 88);
        v28 = v22;
      }

      else
      {
        v28 = 0;
        v27 = (v25 + 72);
        v26 = v22;
      }

      v29 = *v27;
      __p.__r_.__value_.__r.__words[0] = 0;
      *&__p.__r_.__value_.__r.__words[1] = v26;
      v37 = v28;
      v38 = xmmword_1A7598670;
      v39 = v33;
      v40 = v33;
      std::vector<ZinIrTensor::ViewOriginAndStep>::push_back[abi:ne200100](&v44, &__p);
      __p.__r_.__value_.__r.__words[0] = SplitByInputChannel;
      std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](v42, &__p);
      v22 += v29;
      v21 += v23;
      ++v19;
    }

    while (v19 != v20);
  }

  if (v9)
  {
    v30 = 3;
  }

  else
  {
    v30 = 0;
  }

  v31 = a2[4];
  v35 = 0;
  ZinBuilder::CreateConcat(v31, &v45, v32, v42, &v44, v30, &v35, 0);
}

void sub_1A6A2E3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a44)
  {
    operator delete(a44);
  }

  *(v49 - 184) = &unk_1F19D0088;
  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  _Unwind_Resume(exception_object);
}

__n128 *ZinMirChannelSplit::CreateSplitByInputChannel(ZinMirChannelSplit *this, ZinIrOpLayerGraph *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = *(*(a2 + 11) + 8);
  if (v12 == 89)
  {
    if ((*(*a2 + 696))(a2) & 1) != 0 || ((*(*a2 + 704))(a2) & 1) != 0 || ((*(*a2 + 680))(a2) & 1) != 0 || ((*(*a2 + 688))(a2))
    {

      ZinMirChannelSplit::SplitPEElementWiseLayerWithPreOps(this, a2, a3, a4, a5, v13);
    }

    v12 = *(*(a2 + 11) + 8);
  }

  if (v12 != 93)
  {
    if (v12 == 97)
    {
      std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::__value_func[abi:ne200100](v31, a6);
      v28 = a4;
      ZinMirChannelSplit::PrepareInputViews(&v26, a2, a3, a4, a5);
      std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::__value_func[abi:ne200100](v36, v31);
      ZinMirChannelSplit::CreateOutputTensor(a2, a3, a5, v36);
    }

    if (v12 == 98)
    {
      ZinMirChannelSplit::PrepareInputViews(&v32, a2, a3, a4, a5);
      v14 = *(ZinIrOpLayer::GetInputTensor(a2, 0) + 72);
      v15 = *((*(*a2 + 40))(a2, 0) + 72);
      if (!(v14 % v15))
      {
        v34.__r_.__value_.__r.__words[0] = &unk_1F19CA618;
        v34.__r_.__value_.__l.__size_ = ZinMirChannelSplit::ComputeOutDims_Default;
        v35 = &v34;
        ZinMirChannelSplit::CreateOutputTensor(a2, a3 / (v14 / v15), a5, &v34);
      }

      ZinAssertImpl("In ZinNEElementWiseLayer, input channel count must be a multiple of output channel count.");
    }

LABEL_17:
    ZinMirChannelSplit::PrepareInputViews(&v34, a2, a3, a4, a5);
    std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::__value_func[abi:ne200100](v29, a6);
    ZinMirChannelSplit::CreateOutputTensor(a2, a3, a5, v29);
  }

  if (RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760))
  {
    goto LABEL_17;
  }

  std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::__value_func[abi:ne200100](v30, a6);
  v27 = a4;
  v28 = a3;
  if (RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760))
  {
    ZinAssertImpl("SplitNEConvLayer: NEConv with kernel coefficients should be handled by the kernel splitter.");
  }

  if ((*(*a2 + 440))(a2) && (Hal = ZinIrTarget::GetHal(*(*(a2 + 4) + 200)), a4 % *((*(*Hal + 16))(Hal) + 560)))
  {
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      ZinMirChannelSplit::CreateSplitByInputChannel(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  else if ((*(*a2 + 96))(a2) == 1 && !RawOrShared<ZinQuantLayer>::unwrap_const_ptr(a2 + 720))
  {
    std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::__value_func[abi:ne200100](&__p, v30);
    ZinMirChannelSplit::CreateOutputTensor(a2, a3, a5, &__p);
  }

  std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::~__value_func[abi:ne200100](v30);
  return 0;
}

void sub_1A6A2FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::~__value_func[abi:ne200100](&a45);
  _Unwind_Resume(a1);
}

ZinConcatLayerUtils *ZinMirChannelSplit::ZinSplitLayerByInputChannel(ZinMirChannelSplit *a1, ZinMirChannelSplit *this, ZinANELayer *a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (ZinMirChannelSplit::IsValidInputChannelSplit(this, a3) && (*(*(this + 11) + 8) != 93 || !RawOrShared<ZinConvLayer>::unwrap_const_ptr(this + 760)))
  {
    ZinMirChannelSplit::ComputeChannelDistributionVector(&__p, this, a3);
    std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::__value_func[abi:ne200100](v12, a5);
    ZinMirChannelSplit::ZinSplitLayerByInputChannelByDistribution(a1, this, &__p, a4, v12);
  }

  return 0;
}

void sub_1A6A304B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::~__value_func[abi:ne200100](va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **ZinMirChannelSplit::SplitByOutputChannelWithTranspose(ZinMirChannelSplit *this, const void **a2, unint64_t a3)
{
  v80[0] = *MEMORY[0x1E69E9840];
  if (ZinIrOpLayer::IsPELayer(a2))
  {
    if ((*(*a2 + 85))(a2))
    {
      v5 = 1;
    }

    else
    {
      v5 = (*(*a2 + 86))(a2);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((((*(*a2 + 55))(a2) & 1) != 0 || v5) && ((*(*a2 + 55))(a2) & v5 & 1) == 0)
  {
    if (*(a2[11] + 2) == 93)
    {
      v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v7)
      {
        ZinMirChannelSplit::SplitByOutputChannelWithTranspose(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    else
    {
      v15 = (*(*a2 + 5))(a2, 0);
      Interleave = ZinIrTensor::GetInterleave(v15);
      if (v17)
      {
        v18 = Interleave;
      }

      else
      {
        v18 = 1;
      }

      if (a3 % v18)
      {
        v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v19)
        {
          ZinMirChannelSplit::SplitByOutputChannelWithTranspose(v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }

      else
      {
        Hal = ZinIrTarget::GetHal(*(a2[4] + 25));
        v28 = (*(*Hal + 16))(Hal);
        v78 = 0;
        v29 = (*(*a2 + 5))(a2, 0);
        if (ZinTensorFormatGetSizeInBytes(*(v29 + 104), &v78))
        {
          ZinAssertImpl("Error in getting tensor format size in bytes");
        }

        if (!(v78 * a3 % *(v28 + 560)))
        {
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v79, "_SplitByCoutWithOutputTranspose", a2 + 6);
          ZinObjectNameFactory::ZinObjectNameFactory(&v77, v79);
          if ((v79[23] & 0x80000000) != 0)
          {
            operator delete(*v79);
          }

          v74 = 0;
          v75 = 0;
          v76 = 0;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          MemoryPools = ZinIrContext::GetMemoryPools(a2);
          v39 = *((*(*a2 + 5))(a2, 0) + 72);
          if (v39 >= 1)
          {
            if (v39 < a3)
            {
              a3 = v39;
            }

            v69 = 0uLL;
            v70 = 0;
            v40 = MemoryPools[1] - *MemoryPools;
            *v79 = 0;
            std::vector<ZinIrOpLayer *>::vector[abi:ne200100](&v68, v40, v79);
            v65 = vdupq_n_s64(1uLL);
            v66 = v65;
            v67 = 1;
            if (MemoryPools[1] != *MemoryPools)
            {
              v41 = (*(***MemoryPools + 40))(**MemoryPools, 0);
              v42 = *(v41 + 80);
              v65 = *(v41 + 64);
              v66 = v42;
              v43 = *(v41 + 96);
              v66.i64[1] = a3;
              v67 = v43;
              v44 = **MemoryPools;
              v45 = a2[4];
              ZinObjectNameFactory::CreateName(&v77, 0, &__p);
              (*(*v44 + 88))(v79, v44, 0);
              v62 = 0;
              v63 = 0;
              v64 = 0;
              std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v62, v79, v80, 1uLL);
              v46 = (*(*v44 + 40))(v44, 0);
              *v57 = v69;
              v58 = v70;
              v59 = xmmword_1A7598670;
              v60 = vdupq_n_s64(1uLL);
              v61 = v60;
              ZinBuilder::CreateView(v45, &__p.__r_.__value_.__l.__data_, &v62, v46, &v65, v57);
            }

            v47 = (*(*a2 + 5))(a2, 0);
            v48 = *(v47 + 80);
            *v57 = *(v47 + 64);
            v58 = v48;
            *&v59 = *(v47 + 96);
            v57[1] = a3;
            (*(*a2 + 5))(a2, 0);
            ZinObjectNameFactory::CreateName(&v77, 0, &__p);
            v56 = 0;
            v62 = 0;
            v63 = 0;
            *v79 = 0;
            memset(&v79[8], 0, 19);
            v50[0] = 0;
            v52 = 0;
            v53 = 0;
            v51 = 0;
            v54 = 5;
            v55 = 0;
            ZinIrTensor::CreateTensor();
          }

          *v79 = 0;
          std::make_unique[abi:ne200100]<ZinIrConcatInfo,ZinIrConcatMode,std::vector<ZinIrTensor::ViewOriginAndStep> &,0>();
        }

        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v30)
        {
          ZinMirChannelSplit::IsValidInputChannelSplit(v30, v31, v32, v33, v34, v35, v36, v37);
        }
      }
    }
  }

  return 0;
}

void sub_1A6A3114C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a59 = (v70 + 8);
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&a59);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a53);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a50)
  {
    (*(*a50 + 16))(a50);
  }

  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  if (a67)
  {
    a68 = a67;
    operator delete(a67);
  }

  a69 = &unk_1F19D0088;
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a70);
  }

  _Unwind_Resume(a1);
}

BOOL ZinMirChannelSplit::HasSufficientCinToSplit(ZinMirChannelSplit *this, const ZinIrOpLayer *a2)
{
  v4 = *ZinIrContext::GetMemoryPools(this);
  v5 = *(ZinIrContext::GetMemoryPools(this) + 8);
  if (v4 == v5)
  {
    return 0;
  }

  v6 = v4 + 8;
  do
  {
    v7 = *((*(**(v6 - 8) + 40))(*(v6 - 8), 0) + 72);
    result = v7 >= a2;
    v9 = v7 >= a2 || v6 == v5;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t std::function<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, a2, &v7, &v6);
}

uint64_t RawOrShared<ZinIrOpLayer>::unwrap_ref(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F19F5140[v1])(&v4, a1);
}

void *ZinMirChannelSplit::SplitGOCWithPerCoutScaleBias(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[6] = a3;
  if (a1)
  {
    v5 = *(a1 + 160);
    if (!v5)
    {
      ZinAssertImpl("Error: GOC layer should contain a kernel", a2);
    }

    if ((ZinIrKernel::HasPerCoutScale(v5) & 1) != 0 || ZinIrKernel::HasPerCoutBias(*(a1 + 160)))
    {
      v7 = ZinObjectNameFactory::ZinObjectNameFactory(v11, a2);
      ZinObjectNameFactory::CreateName(v7, 2u, &v10);
      v9[0] = 0;
      std::allocate_shared[abi:ne200100]<ZinIrTransformPartial,std::allocator<ZinIrTransformPartial>,unsigned long &,unsigned long &,ZinPartialTransformDimension,0>();
    }
  }

  return a1;
}

void sub_1A6A3185C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, std::__shared_weak_count *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 120);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  *(v31 - 88) = &unk_1F19D0088;
  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<ZinTensorDimensions ()(ZinTensorDimensions const&,long,ZinANELayer const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void ZinMirChannelSplit::IsValidInputChannelSplit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Should not split a logical conv layer by input channel", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "the split channel number should be divisible by interleave factor", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Output CW transpose is enabled. The split channel count should be aligned in width dimension.", a5, a6, a7, a8, v8);
}

void ZinMirChannelSplit::CreateSplitByInputChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "SplitNEConvLayer: unable to split non-logical conv because of output cw transpose alignment.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "SplitNEConvLayer: unable to split goc.", a5, a6, a7, a8, v8);
}

void ZinMirChannelSplit::SplitByOutputChannelWithTranspose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "output channel should be a multiple of interleave factor.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Splittng output channel for Conv layer should be handled by kernel splitter.", a5, a6, a7, a8, v8);
}

void *ZinAllGatherLayer::ZinAllGatherLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  *a2 = 0;
  v6 = a3[1];
  v9 = *a3;
  v10 = v6;
  v11 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinCollectiveCommunicationLayer::ZinCollectiveCommunicationLayer(a1, &v11, &v9, a4);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  *a1 = &unk_1F19F5198;
  return a1;
}

void sub_1A6A31CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(va);
  _Unwind_Resume(a1);
}

void sub_1A6A31EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::unique_ptr<ZinIrAllSliceInfo>::~unique_ptr[abi:ne200100](va);
  MEMORY[0x1AC55A070](v7, v8);
  _Unwind_Resume(a1);
}

uint64_t ZinAllGatherLayer::Lower(ZinIrContext *a1)
{
  MemoryPools = ZinIrContext::GetMemoryPools(a1);
  v3 = *MemoryPools;
  v4 = MemoryPools[1];
  if (*MemoryPools == v4)
  {
LABEL_8:
    OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(a1);
    v11 = *OutgoingLayers;
    v12 = OutgoingLayers[1];
    while (1)
    {
      if (v11 == v12)
      {
        return 0;
      }

      if ((*(**v11 + 112))())
      {
        break;
      }

      v11 += 8;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      ZinAllGatherLayer::Lower();
    }
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      memset(v14, 0, sizeof(v14));
      if (ZinIrOpLayer::IsNoOp(v5, v14))
      {
        v6 = *(*(*v3 + 11) + 8);
        v7 = v6 > 0x1E;
        v8 = (1 << v6) & 0x68000000;
        if (v7 || v8 == 0)
        {
          break;
        }
      }

      v15 = v14;
      std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v15);
      if (++v3 == v4)
      {
        goto LABEL_8;
      }
    }

    v15 = v14;
    std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v15);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }
  }

  return 3;
}

void sub_1A6A32074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_1A6A321E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v17 - 72) = v16 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100]((v17 - 72));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinAllGatherLayer::BuildDecomposedLayer(uint64_t a1, char **a2, _OWORD *a3, std::string *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  ZinObjectNameFactory::ZinObjectNameFactory(&v20, a4);
  memset(&v11[1], 0, 24);
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = -1;
  v11[0] = &unk_1F1A35178;
  *v16 = 0u;
  *v17 = 0u;
  v18 = 0u;
  memset(__p, 0, sizeof(__p));
  if (v16 != a2)
  {
    std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v16, *a2, a2[1], (a2[1] - *a2) >> 1);
    std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v17[1], a2[3], a2[4], (a2[4] - a2[3]) >> 1);
    std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(__p, a2[6], a2[7], (a2[7] - a2[6]) >> 1);
  }

  v7 = *(a1 + 32);
  v8 = a3[3];
  v21[2] = a3[2];
  v21[3] = v8;
  v22[0] = a3[4];
  *(v22 + 13) = *(a3 + 77);
  v9 = a3[1];
  v21[0] = *a3;
  v21[1] = v9;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v23, (a3 + 6));
  memset(v10, 0, sizeof(v10));
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v10, v21, &v24, 1uLL);
  ZinBuilder::CreateAllGatherLayer(v7, &v20, v10, v11);
}

void sub_1A6A32440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  *(v38 - 200) = v37;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100]((v38 - 200));
  v40 = *(v38 - 88);
  if (v40)
  {
    *(v38 - 80) = v40;
    operator delete(v40);
  }

  ZinIrCollectiveCommunicationUnitInfo::~ZinIrCollectiveCommunicationUnitInfo(&a12);
  a31 = &unk_1F19D0088;
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ZinAllGatherLayer::ValidateSemantics_Impl(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (a2[1] - *a2 != 136)
  {
    ZinAssertImpl("ZinAllGatherLayer must have one input");
  }

  ZinIrShardingMapUtils::GetNumShardsPerDim(__p, (a1[11] + 16));
  v6 = (*(*a1 + 40))(a1, 0);
  for (i = 0; i != 5; ++i)
  {
    Dimension = ZinTensorPosition::GetDimension(v3 + 8, i);
    v9 = *(__p[0] + i);
    if (ZinTensorPosition::GetDimension(v6 + 64, i) != Dimension * v9)
    {
      ZinAssertImpl("AllGather output dimension size should be equal to the input dimension size times the number of shards");
    }
  }

  v11 = 0;
  if (ZinTensorFormatGetSizeInBytes(*(v6 + 104), &v11))
  {
    ZinAssertImpl("Unable to retrieve tensor format size in bytes");
  }

  v10 = *(a3 + 560);
  if (v11 * *(v3 + 32) % v10 || *(v6 + 88) * v11 % v10)
  {
    ZinAssertImpl("Input and output tensors must be aligned");
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1A6A32618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirUnit::ZinMirUnit(uint64_t a1, int a2, __int128 *a3)
{
  v5 = 0;
  v6 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F19F5348;
  v7 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v7;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a3 + 24);
  *(a1 + 72) = *(a3 + 5);
  *(a3 + 24) = 0uLL;
  *(a3 + 5) = 0;
  *(a1 + 80) = *(a3 + 12);
  *(a1 + 88) = *(a3 + 56);
  v8 = *(a3 + 9);
  *(a1 + 112) = 0u;
  *(a1 + 104) = v8;
  *(a1 + 128) = 0u;
  *(a1 + 144) = *(a3 + 10);
  *(a1 + 152) = *(a3 + 88);
  v9 = *(a3 + 104);
  v10 = *(a3 + 120);
  *(a1 + 200) = *(a3 + 17);
  *(a1 + 184) = v10;
  *(a1 + 168) = v9;
  v11 = a1 + 208;
  v12 = a3 + 9;
  do
  {
    v13 = v5;
    std::__optional_copy_base<ZinIrDMAConvertInfo,false>::__optional_copy_base[abi:ne200100](v11 + 32 * v6, &v12[2 * v6]);
    v5 = 1;
    v6 = 1;
  }

  while ((v13 & 1) == 0);
  std::__optional_copy_base<ZinIrDMAConvertInfo,false>::__optional_copy_base[abi:ne200100](a1 + 272, (a3 + 13));
  return a1;
}

void sub_1A6A327CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = (v3 + 240);
  v7 = -64;
  while (1)
  {
    if (*(v6 + 24) == 1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v6);
    }

    v6 = (v6 - 32);
    v7 += 32;
    if (!v7)
    {
      v8 = *(v3 + 136);
      *(v3 + 136) = 0;
      if (v8)
      {
        MEMORY[0x1AC55A070](v8, 0x1000C40E8BD624ALL);
      }

      v9 = *(v3 + 128);
      *(v3 + 128) = 0;
      if (v9)
      {
        MEMORY[0x1AC55A070](v9, 0x1000C40381B3574);
      }

      std::unique_ptr<ZinEngineLayerMirInfo>::reset[abi:ne200100](v4 + 1, 0);
      v10 = *v4;
      *v4 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
      if (*(v3 + 47) < 0)
      {
        operator delete(*(v3 + 24));
      }

      v11 = *(v3 + 16);
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      _Unwind_Resume(a1);
    }
  }
}

BOOL ZinMirUnit::IsValid(ZinMirUnit *this, ZinMirUnitValidationContext *a2)
{
  v4 = *(this + 12);
  if (v4 == 124)
  {
    return 0;
  }

  v9[3] = v2;
  v9[4] = v3;
  if ((*(this + 47) & 0x8000000000000000) != 0)
  {
    if (!*(this + 4))
    {
      return 0;
    }
  }

  else if (!*(this + 47))
  {
    return 0;
  }

  if (!*(this + 20) || (*(this + 11) & 0x8000000000000000) != 0 || *(this + 18) == -1 || *(this + 160) == 1 && (*(this + 19) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v8 = v4 - 27;
  if ((v8 > 0x2F || ((1 << v8) & 0x800000000005) == 0) && *(this + 8) == *(this + 7))
  {
    return 0;
  }

  result = ZinMirUnitValidationContext::InsertValueToSet<std::string>(a2, a2, this + 3);
  if (result)
  {
    v9[0] = *(this + 12);
    result = ZinMirUnitValidationContext::InsertValueToSet<unsigned long long>(a2, a2 + 5, v9);
    if (result)
    {
      if (*(this + 160) != 1)
      {
        return 1;
      }

      v9[0] = *(this + 19);
      result = ZinMirUnitValidationContext::InsertValueToSet<unsigned long long>(a2, a2 + 10, v9);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ZinMirUnit::SetLayerMirInfo(uint64_t a1, ZinEngineLayerMirInfo **a2)
{
  v2 = *a2;
  *a2 = 0;
  std::unique_ptr<ZinEngineLayerMirInfo>::reset[abi:ne200100]((a1 + 120), v2);
  return 0;
}

uint64_t ZinMirUnit::SetLayerL2Symbols(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 128);
  *(a1 + 128) = v3;
  if (v4)
  {
    MEMORY[0x1AC55A070](v4, 0x1000C40381B3574);
  }

  return 0;
}

uint64_t ZinMirUnit::SetLayerDRAMSymbols(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 136);
  *(a1 + 136) = v3;
  if (v4)
  {
    MEMORY[0x1AC55A070](v4, 0x1000C40E8BD624ALL);
  }

  return 0;
}

uint64_t ZinMirUnit::InitializeEngineLayer(uint64_t a1, std::string *this, uint64_t *a3, void *a4)
{
  v32[0] = *MEMORY[0x1E69E9840];
  if (ZinIrOpLayer::IsANELayer(this))
  {
    if (!*(a1 + 120))
    {
      ZinAssertImpl("Invalid mir info");
    }

    Hal = ZinIrTarget::GetHal(*(this[1].__r_.__value_.__l.__size_ + 200));
    v9 = (*(*Hal + 16))(Hal);
    ZinMirUnit::CreateSymbols(a1, a3, a4, *(v9 + 752));
    ZinANELayer::SetMirInfo(this, (a1 + 120));
    if ((*(a1 + 160) & 1) == 0)
    {
      ZinAssertImpl("Missing TID.");
    }

    v10 = *(a1 + 152);
    if ((v10 & 0x8000000000000000) != 0)
    {
      ZinAssertImpl("Invalid TD id");
    }

    this[16].__r_.__value_.__r.__words[0] = v10;
    ZinObjectNameFactory::ZinObjectNameFactory(v29, this + 2);
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = a1 + 208 + 32 * v11;
      if (*(v14 + 24) == 1)
      {
        size = this[1].__r_.__value_.__l.__size_;
        (*(this->__r_.__value_.__r.__words[0] + 88))(v31, this, 0);
        v26 = 0;
        v27 = 0;
        v28 = 0;
        std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v26, v31, v32, 1uLL);
        std::to_string(&v23, v11);
        v16 = std::string::insert(&v23, 0, "_src", 4uLL);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v25 = v16->__r_.__value_.__r.__words[2];
        *__p = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        v18 = (*(this->__r_.__value_.__r.__words[0] + 40))(this, 0);
        ZinIrTensor::CopyTensorMirInfo(&v22, v18);
        ZinBuilder::CreateDMAConvertLayer(size, v29, &v26, __p, &v22, *(v14 + 12) & 0xFFFFFFFFFFLL);
      }

      v12 = 0;
      v11 = 1;
    }

    while ((v13 & 1) != 0);
    if (*(a1 + 296))
    {
      v19 = this[1].__r_.__value_.__l.__size_;
      (*(this->__r_.__value_.__r.__words[0] + 88))(v31, this, 0);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v26, v31, v32, 1uLL);
      HIBYTE(v25) = 4;
      strcpy(__p, "_dst");
      v20 = (*(this->__r_.__value_.__r.__words[0] + 40))(this, 0);
      ZinIrTensor::CopyTensorMirInfo(&v23, v20);
      ZinBuilder::CreateDMAConvertLayer(v19, v29, &v26, __p, &v23, *(a1 + 284) & 0xFFFFFFFFFFLL);
    }

    v29[0] = &unk_1F19D0088;
    if (v30 < 0)
    {
      operator delete(v29[1]);
    }
  }

  return 0;
}

void sub_1A6A32ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirUnit::CreateSymbols(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (ZinMirUnit::CreateL2Symbols(a1, a2, a4))
  {
    ZinAssertImpl("Unable to create L2 symbols");
  }

  result = ZinMirUnit::CreateDRAMSymbols(a1, a3, a4);
  if (result)
  {
    ZinAssertImpl("Unable to create DRAM symbols");
  }

  return result;
}

uint64_t ZinMirUnit::CreateL2Symbols(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 128);
  if (!v3)
  {
    return 3;
  }

  v5 = *v3;
  if (0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 4) <= v5)
  {
    ZinAssertImpl("L2 src1 symbol index is out of bounds.");
  }

  v7 = *a2 + 368 * v5;
  v8 = *(v7 + 360);
  if (!v8)
  {
    ZinAssertImpl("L2 section is not initialized\n", 0, a3);
  }

  Symbol = ZinMirCreateSymbol(v7, v8, a2, a3);
  v11 = *(a1 + 120);
  v35 = 0;
  v36 = Symbol;
  __p = 0;
  v34 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&__p, &v36, &v37, 1uLL);
  v12 = ZinEngineLayerMirInfo::SetL2RdSymbols(v11, &__p, 0, *(*(a1 + 128) + 4));
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if ((v12 & 1) == 0)
  {
    return 3;
  }

  v13 = *(a1 + 128);
  if (*(v13 + 16) == 1)
  {
    v14 = *(v13 + 8);
    if (0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 4) <= v14)
    {
      ZinAssertImpl("L2 src2 symbol index is out of bounds.");
    }

    v15 = *a2 + 368 * v14;
    v16 = *(v15 + 360);
    if (!v16)
    {
      ZinAssertImpl("L2 section is not initialized\n");
    }

    v17 = ZinMirCreateSymbol(v15, v16, a2, a3);
    v18 = *(a1 + 120);
    v35 = 0;
    v36 = v17;
    __p = 0;
    v34 = 0;
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&__p, &v36, &v37, 1uLL);
    v19 = ZinEngineLayerMirInfo::SetL2RdSymbols(v18, &__p, 1u, *(*(a1 + 128) + 12));
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    if (!v19)
    {
      return 3;
    }

    v13 = *(a1 + 128);
  }

  if (*(v13 + 28) == 1)
  {
    v20 = *(v13 + 20);
    v21 = *a2;
    if (0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 4) <= v20)
    {
      ZinAssertImpl("L2 idx symbol index is out of bounds.");
    }

    if ((*(v13 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = *(v21 + 368 * *(v13 + 8) + 360);
    if (!v22)
    {
      ZinAssertImpl("L2 section is not initialized\n");
    }

    v23 = ZinMirCreateSymbol(v21 + 368 * v20, v22, a2, a3);
    v24 = *(a1 + 120);
    v35 = 0;
    v36 = v23;
    __p = 0;
    v34 = 0;
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&__p, &v36, &v37, 1uLL);
    v25 = ZinEngineLayerMirInfo::SetL2RdSymbols(v24, &__p, 2u, *(*(a1 + 128) + 24));
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    if (v25)
    {
      v13 = *(a1 + 128);
      goto LABEL_22;
    }

    return 3;
  }

LABEL_22:
  v26 = *(v13 + 32);
  if (0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 4) <= v26)
  {
    ZinAssertImpl("L2 dst symbol index is out of bounds.");
  }

  v27 = *a2 + 368 * v26;
  v28 = *(v27 + 360);
  if (!v28)
  {
    ZinAssertImpl("L2 section is not initialized\n");
  }

  v29 = ZinMirCreateSymbol(v27, v28, a2, a3);
  v30 = *(a1 + 120);
  v35 = 0;
  v36 = v29;
  __p = 0;
  v34 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&__p, &v36, &v37, 1uLL);
  v31 = ZinEngineLayerMirInfo::SetL2WrSymbols(v30, &__p, *(*(a1 + 128) + 36));
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v31)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

void sub_1A6A33390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirUnit::CreateDRAMSymbols(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 136);
  if (!v3)
  {
    return 3;
  }

  if (*(v3 + 4) == 1)
  {
    v7 = *v3;
    if (0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 4) <= v7)
    {
      ZinAssertImpl("DRAM src1 symbol index is out of bounds.");
    }

    v8 = *a2 + 368 * v7;
    v9 = *(v8 + 360);
    if (!v9)
    {
      goto LABEL_16;
    }

    *(*(a1 + 120) + 640) = ZinMirCreateSymbol(v8, v9, a2, a3);
    v3 = *(a1 + 136);
  }

  if (*(v3 + 12) == 1)
  {
    v10 = v3[2];
    if (0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 4) <= v10)
    {
      ZinAssertImpl("DRAM src2 symbol index is out of bounds.");
    }

    v11 = *a2 + 368 * v10;
    v12 = *(v11 + 360);
    if (!v12)
    {
      goto LABEL_16;
    }

    *(*(a1 + 120) + 720) = ZinMirCreateSymbol(v11, v12, a2, a3);
    v3 = *(a1 + 136);
  }

  if (*(v3 + 20) == 1)
  {
    v13 = v3[4];
    if (0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 4) <= v13)
    {
      ZinAssertImpl("DRAM dst symbol index is out of bounds.");
    }

    v14 = *a2 + 368 * v13;
    v15 = *(v14 + 360);
    if (v15)
    {
      Symbol = ZinMirCreateSymbol(v14, v15, a2, a3);
      result = 0;
      *(*(a1 + 120) + 800) = Symbol;
      return result;
    }

LABEL_16:
    ZinAssertImpl("DRAM section is not initialized\n");
  }

  return 0;
}

uint64_t ZinMirCreateSymbol(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  SymbolByName = ZinIrSymbolTable::GetSymbolByName(a2 + 56, (a1 + 8));
  if (!SymbolByName)
  {
    if (*(a1 + 348) == 1)
    {
      v9 = *(a1 + 344);
      if (0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 4) <= v9)
      {
        ZinAssertImpl("Symbol index is out of bounds.");
      }

      Symbol = ZinMirCreateSymbol(*a3 + 368 * v9, a2, a3, a4);
    }

    else
    {
      Symbol = 0;
    }

    ZinIrSymbol::Descriptor::Descriptor(&v18);
    std::string::operator=(&v19, (a1 + 8));
    v18 = vrev64_s32(*a1);
    *v20 = *(a1 + 48);
    *&v20[8] = *(a1 + 56);
    if (*(a1 + 280) == 1)
    {
      ZinIrSymbol::Descriptor::SetTensorDesc(&v18, a1 + 72);
    }

    v13 = v18;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v19;
    }

    v15 = *v20;
    v16 = *&v20[16];
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinTensorDescriptor,ZinKernelDescriptor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v17, &v21);
    if (*(a1 + 304))
    {
      ZinIrSection::CreateSymbolAtOffset(a2, &v13, Symbol, *(a1 + 32), *(a1 + 40), *(a1 + 352), a4, v11, *(a1 + 288), a1 + 312);
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return SymbolByName;
}

void sub_1A6A33740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  ZinIrSymbol::Descriptor::~Descriptor(&a65);
  _Unwind_Resume(a1);
}

uint64_t *ZinMirUnit::Print@<X0>(uint64_t *__return_ptr a1@<X8>, ZinMirUnit *this@<X0>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v41);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "\t\t\t", 3);
  v5 = *(this + 47);
  if (v5 >= 0)
  {
    v6 = this + 24;
  }

  else
  {
    v6 = *(this + 3);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 47);
  }

  else
  {
    v7 = *(this + 4);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "</font><br/>", 12);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "\t\t\t<font face='Arial Rounded MT Bold'>Op:</font> ", 49);
  ZinIrEnumToStringUtil::OpCodeToString(*(this + 12), &v38);
  if ((v40 & 0x80u) == 0)
  {
    locale = &v38;
  }

  else
  {
    locale = v38.__locale_;
  }

  if ((v40 & 0x80u) == 0)
  {
    v13 = v40;
  }

  else
  {
    v13 = v39;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, locale, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "<br align='left'/>", 18);
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&v51, MEMORY[0x1E69E5318]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  if (v40 < 0)
  {
    operator delete(v38.__locale_);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "\t\t\t<font face='Arial Rounded MT Bold'>ID:</font> ", 49);
  v18 = MEMORY[0x1AC559BA0](v17, *(this + 12));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "<br align='left'/>", 18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "\t\t\t<font face='Arial Rounded MT Bold'>SCHED:</font> ", 52);
  v22 = MEMORY[0x1AC559B60](v21, *(this + 11));
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "<br align='left'/>", 18);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  if (*(this + 160) == 1)
  {
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "\t\t\t<font face='Arial Rounded MT Bold'>TID:</font> ", 50);
    if ((*(this + 160) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v26 = MEMORY[0x1AC559B60](v25, *(this + 19));
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "<br align='left'/>", 18);
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v28 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
    (v28->__vftable[2].~facet_0)(v28, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "\t\t\t<font face='Arial Rounded MT Bold'>GROUP ID:</font> ", 55);
  v30 = MEMORY[0x1AC559B60](v29, *(this + 13));
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "<br align='left'/>", 18);
  std::ios_base::getloc((v31 + *(*v31 - 24)));
  v32 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
  (v32->__vftable[2].~facet_0)(v32, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  if ((v49 & 0x10) != 0)
  {
    v34 = v48;
    if (v48 < v45)
    {
      v48 = v45;
      v34 = v45;
    }

    v35 = v44[4].__locale_;
  }

  else
  {
    if ((v49 & 8) == 0)
    {
      v33 = 0;
      *(a1 + 23) = 0;
      goto LABEL_31;
    }

    v35 = v44[1].__locale_;
    v34 = v44[3].__locale_;
  }

  v33 = v34 - v35;
  if ((v34 - v35) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v33;
  if (v33)
  {
    memmove(a1, v35, v33);
  }

LABEL_31:
  *(a1 + v33) = 0;
  v41[0] = *MEMORY[0x1E69E54D8];
  v36 = *(MEMORY[0x1E69E54D8] + 72);
  *(v41 + *(v41[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v42 = v36;
  v43 = MEMORY[0x1E69E5548] + 16;
  if (v47 < 0)
  {
    operator delete(__p);
  }

  v43 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v44);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v50);
}

void sub_1A6A33E28(_Unwind_Exception *a1, uint64_t a2, std::locale a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::locale::~locale(&a10);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a13, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](va);
  _Unwind_Resume(a1);
}

BOOL ZinMirUnitValidationContext::InsertValueToSet<std::string>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, a3);
  if (!v5)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2, a3, a3);
  }

  return v5 == 0;
}

BOOL ZinMirUnitValidationContext::InsertValueToSet<unsigned long long>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a2, a3);
  if (!v5)
  {
    std::__hash_table<ZinNamedType<unsigned long,TidTag>,std::hash<ZinNamedType<unsigned long,TidTag>>,std::equal_to<ZinNamedType<unsigned long,TidTag>>,std::allocator<ZinNamedType<unsigned long,TidTag>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,TidTag>,ZinNamedType<unsigned long,TidTag> const&>(a2, a3, a3);
  }

  return v5 == 0;
}

uint64_t ZinIrPadUnit::ZinIrPadUnit(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = ZinIrUnit::ZinIrUnit(a1, a3);
  *v5 = &unk_1F19F53C0;
  ZinIrTextureUnitInfo::ZinIrTextureUnitInfo((v5 + 7), a2);
  *(a1 + 56) = &unk_1F1A33FD0;
  v6 = *(a2 + 156);
  v7 = *(a2 + 172);
  *(a1 + 244) = *(a2 + 188);
  *(a1 + 228) = v7;
  *(a1 + 212) = v6;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 256), *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 3);
  *(a1 + 280) = *(a2 + 224);
  return a1;
}

void sub_1A6A34608(_Unwind_Exception *a1)
{
  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v2);
  ZinIrUnit::~ZinIrUnit(v1);
  _Unwind_Resume(a1);
}

uint64_t ZinIrPadUnit::TensorDimensions(ZinIrPadUnit *this, const ZinIrHalParameters *a2, ZinTensorDimensions *a3, ZinIrUnitStatus *a4)
{
  v4 = *(this + 1);
  v5 = v4[2];
  v6 = v4[1] + *(this + 61) + *(this + 62);
  *(a3 + 4) = v4[5] + *(this + 57) + *(this + 58);
  v7 = v5 + *(this + 59) + *(this + 60);
  *a3 = v6;
  *(a3 + 1) = v7;
  v8 = v4[3] + *(this + 55) + *(this + 56);
  v9 = v4[4] + *(this + 53) + *(this + 54);
  *(a3 + 2) = v8;
  *(a3 + 3) = v9;
  return 0;
}

void ZinIrPadUnit::CreateOpcode(uint64_t (***this)(unsigned int **))
{
  v3 = *((*this)[14](this) + 64);
  v4 = *this[1];
  if (!v3)
  {
    if (v4 == 8)
    {
      ZinAssertImpl("Invalid input tensor format: packed10 for pad layer");
    }

    if ((IsFormatDMAConvertibleToFP16(v4) & 1) == 0 && CheckValidFormat(*this[1]))
    {
      ZinTensorFormatToString(*this[1], v6);
      if (v7 >= 0)
      {
        v5 = v6;
      }

      else
      {
        v5 = v6[0];
      }

      ZinAssertImpl("Invalid input tensor format: %s for pad layer", v5);
    }
  }

  operator new();
}

void sub_1A6A347B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A6A349A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    (*(*a15 + 16))(a15);
  }

  _Unwind_Resume(a1);
}

void ZinIrOpt::MergeIntCast(void *a1, uint64_t a2)
{
  v14[29] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v8, "op_pattern");
  v9[0] = &unk_1F19F5488;
  v9[3] = v9;
  v4 = 1;
  std::unordered_set<Attribute>::unordered_set(&v10, &v4, 1);
  std::string::basic_string[abi:ne200100]<0>(v11, "cast_pattern");
  v12[0] = &unk_1F19F5508;
  v12[3] = v12;
  v3 = 1;
  std::unordered_set<Attribute>::unordered_set(&v13, &v3, 1);
  memset(v5, 0, sizeof(v5));
  std::vector<ZinLinearPattern::AtomItemDesc>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItemDesc const*,ZinLinearPattern::AtomItemDesc const*>(v5, v8, v14, 2uLL);
  v7 = 0;
  ZinLinearPattern::ZinLinearPattern(v14, v5, a2, 0, v6, 0);
  std::allocate_shared[abi:ne200100]<ZinLinearPattern,std::allocator<ZinLinearPattern>,ZinLinearPattern,0>();
}

void sub_1A6A34DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53)
{
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](&a21);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a53);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0,std::allocator<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0>,MatchStatus ()(MatchParams const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2[11] + 8) == 16 && *((*(*v2 + 40))(v2, 0) + 104) == 10;
  return v3 | 0x100u;
}

uint64_t std::__function::__func<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0,std::allocator<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1,std::allocator<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1>,MatchStatus ()(MatchParams const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2[11] + 8) == 2 && ZinGOCLayer::HasDefaultScaleBias(*(a2 + 8)) && *((*(*v2 + 40))(v2, 0) + 104) == 2;
  return v3 | 0x100u;
}

uint64_t std::__function::__func<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1,std::allocator<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2,std::allocator<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F5588;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2,std::allocator<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, ZinIrOpLayerGraph **a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    v6 = *a2;
    v7 = *a3;
    do
    {
      if ((*(**v4 + 8))(*v4, v6, v7))
      {
        v8 = *v4;
        std::string::basic_string[abi:ne200100]<0>(&__p, "op_pattern");
        SingleMatch = ZinPattern::GetSingleMatch(v8, &__p);
        if (v27 < 0)
        {
          operator delete(__p);
        }

        v10 = *v4;
        std::string::basic_string[abi:ne200100]<0>(&__p, "cast_pattern");
        ZinPattern::GetSingleMatch(v10, &__p);
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (*(SingleMatch + 71) >= 0)
        {
          v11 = *(SingleMatch + 71);
        }

        else
        {
          v11 = *(SingleMatch + 56);
        }

        std::string::basic_string[abi:ne200100](&v25, v11 + 1);
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v25;
        }

        else
        {
          v12 = v25.__r_.__value_.__r.__words[0];
        }

        if (v11)
        {
          if (*(SingleMatch + 71) >= 0)
          {
            v13 = (SingleMatch + 48);
          }

          else
          {
            v13 = *(SingleMatch + 48);
          }

          memmove(v12, v13, v11);
        }

        *(&v12->__r_.__value_.__l.__data_ + v11) = 95;
        std::string::basic_string[abi:ne200100]<0>(&v22, "merge_cast");
        v14 = std::string::append(&v22, "_xfm", 4uLL);
        v15 = *&v14->__r_.__value_.__l.__data_;
        v24 = v14->__r_.__value_.__r.__words[2];
        *v23 = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        if (v24 >= 0)
        {
          v16 = v23;
        }

        else
        {
          v16 = v23[0];
        }

        if (v24 >= 0)
        {
          v17 = HIBYTE(v24);
        }

        else
        {
          v17 = v23[1];
        }

        v18 = std::string::append(&v25, v16, v17);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v21.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v21.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        ZinObjectNameFactory::ZinObjectNameFactory(&__p, &v21);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23[0]);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        (*(*SingleMatch + 40))(SingleMatch, 0);
        ZinObjectNameFactory::CreateName(&__p, 0, &v21);
        ZinIrTensor::CreateTensor();
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  return 0;
}

void sub_1A6A35654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, void *__p, int a40, __int16 a41, char a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a25);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a32);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  a38 = &unk_1F19D0088;
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2,std::allocator<ZinIrOpt::MergeIntCast(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL ZinSeedUtils::ValidateHWSeeds(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = *a1;
  v12 = 0;
  v7 = 0;
  if (ZinSeedUtils::GenerateOrValidateLFSR113Seed(0, v5, &v12, a4))
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if (v5 != v12 || v12 == 0)
      {
        break;
      }

      if (v8 == 4)
      {
        return 1;
      }

      v7 = v8 - 1 > 2;
      v5 = a1[v8];
      v12 = 0;
    }

    while (ZinSeedUtils::GenerateOrValidateLFSR113Seed(v8++, v5, &v12, v6));
  }

  return v7;
}

BOOL ZinSeedUtils::GenerateOrValidateLFSR113Seed(unint64_t this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  if (ZinSeedUtils::minimum_seed_values[this] > a2)
  {
    *a3 = 0;
    return 1;
  }

  if (this < 4)
  {
    *a3 = ((((dword_1A75D14D0[this] & a2) << dword_1A75D14F0[this]) ^ dword_1A75D14D0[this] & a2) >> dword_1A75D14E0[this]) | dword_1A75D14D0[this] & a2;
    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ZinSeedUtils::GenerateOrValidateLFSR113Seed();
    return 0;
  }

  return result;
}

uint64_t ZinSeedUtils::CreateDeterministicSeeds(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = strlen(v4);
  CC_SHA512(v4, v5, md);
  v7 = 0;
  v8 = 0;
  while (2)
  {
    v21 = 0;
    if (!ZinSeedUtils::GenerateOrValidateLFSR113Seed(v7, md[v7], &v21, v6))
    {
      return 3;
    }

    while (!v21)
    {
      if (v8 >= 10)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinSeedUtils::CreateDeterministicSeeds();
        }

        return 3;
      }

      std::to_string(&v18, v8 + 1);
      v9 = *(a1 + 23);
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v9 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }

      v12 = std::string::insert(&v18, 0, v10, v11);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v20 = v12->__r_.__value_.__r.__words[2];
      *__p = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (v20 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      v15 = strlen(v14);
      CC_SHA512(v14, v15, md);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      ++v8;
      if (!ZinSeedUtils::GenerateOrValidateLFSR113Seed(v7, md[v7], &v21, v16))
      {
        return 3;
      }
    }

    *(a2 + 4 * v7++) = v21;
    if (v7 != 4)
    {
      continue;
    }

    break;
  }

  return 0;
}

void sub_1A6A35B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *Layer2TDMapper::LayerInfo::LayerInfo(std::string *this, void (***a2)(void), __int128 *a3, std::string::size_type a4, std::string::size_type a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  this[1].__r_.__value_.__r.__words[0] = a5;
  this[1].__r_.__value_.__l.__size_ = a4;
  (**a2)(a2);
  return this;
}

void sub_1A6A35CBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *Layer2TDMapper::LayerInfo::LayerInfo(std::string *this, const Layer2TDMapper::LayerInfo *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  (***(a2 + 5))(*(a2 + 5));
  return this;
}

void sub_1A6A35D60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void Layer2TDMapper::LayerTracker::GetRootSourceLayerName(std::string *__return_ptr a1@<X8>, Layer2TDMapper::LayerTracker *this@<X0>, unint64_t a3@<X1>)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 == v3 || *(v6 + 4) > a3)
  {
LABEL_14:
    ZinAssertImpl("source id must exist", a3);
  }

  if (v6[63] < 0)
  {
    v11 = *(v6 + 5);
    v12 = *(v6 + 6);

    std::string::__init_copy_ctor_external(a1, v11, v12);
  }

  else
  {
    v10 = *(v6 + 40);
    a1->__r_.__value_.__r.__words[2] = *(v6 + 7);
    *&a1->__r_.__value_.__l.__data_ = v10;
  }
}

uint64_t Layer2TDMapper::LayerTracker::SetOption(uint64_t result, int a2)
{
  if (!a2)
  {
    *(result + 88) = 1;
  }

  return result;
}

uint64_t Layer2TDMapper::LayerTracker::RecordSourceLayers(Layer2TDMapper::LayerTracker *this, ZinIrOpLayer *a2, const Layer2TDMapper::SourceLayer *a3)
{
  v3 = a3;
  v40 = *MEMORY[0x1E69E9840];
  if ((**a3)(a3))
  {
    if (ZinIrOpLayer::CanHaveSourceId(a2))
    {
      v6 = *(this + 8);
      v7 = *(this + 9);
      v36.__r_.__value_.__r.__words[0] = *(a2 + 3);
      v8 = v36.__r_.__value_.__r.__words[0];
      std::unordered_set<unsigned long long>::unordered_set(&v32, &v36, 1);
      std::vector<std::unordered_set<unsigned long long>>::push_back[abi:ne200100](this + 64, &v32);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v32);
      v9 = *(a2 + 11);
      Stats = ZinIrCodegenStatsPerBasicBlock::GetStats(a2);
      Layer2TDMapper::LayerInfo::LayerInfo(&v36, v9, a2 + 3, v8, *Stats);
      v32.__r_.__value_.__r.__words[0] = v8;
      Layer2TDMapper::LayerInfo::LayerInfo(&v32.__r_.__value_.__r.__words[1], &v36);
      std::__tree<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,Layer2TDMapper::LayerInfo>>(this, &v32, &v32);
      v11 = v35;
      v35 = 0;
      if (v11)
      {
        (*(*v11 + 16))(v11);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__size_);
      }

      v12 = v39;
      v39 = 0;
      if (v12)
      {
        (*(*v12 + 16))(v12);
      }

      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 3);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

LABEL_50:
      ZinIrOpLayer::SetGroupId(a2, v13);
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    v14 = *(v3 + 1);
    v15 = *(v3 + 2);
    if (v15 != v14)
    {
      while (1)
      {
        Layer2TDMapper::LayerInfo::LayerInfo(&v32, v14);
        v16 = v34;
        v17 = *(v34 + 8);
        v34 = 0;
        (*(*v16 + 16))(v16);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (((v17 < 0x20) & (0xE8000000 >> v17)) != 0)
        {
          break;
        }

        v14 = (v14 + 48);
        if (v14 == v15)
        {
          Layer2TDMapper::LayerInfo::LayerInfo(&v32, *(v3 + 1));
          v13 = v33;
          if ((v33 & 0x8000000000000000) != 0 || (v18 = *(this + 8), v33 >= 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - v18) >> 3)))
          {
            v21 = 0;
            *(this + 89) = 1;
            LOBYTE(v3) = *(this + 88) ^ 1;
          }

          else
          {
            std::unordered_set<unsigned long long>::unordered_set(v31, v18 + 40 * v33);
            v19 = *(v3 + 1);
            v20 = *(v3 + 2);
            v21 = 1;
            if (v19 != v20)
            {
              do
              {
                Layer2TDMapper::LayerInfo::LayerInfo(&v36, v19);
                if ((v37 & 0x8000000000000000) != 0 || (v22 = *(this + 8), v37 >= 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - v22) >> 3)))
                {
                  v24 = 0;
                  *(this + 89) = 1;
                  LOBYTE(v3) = *(this + 88) ^ 1;
                }

                else
                {
                  if (v37 != v13)
                  {
                    for (i = *(v22 + 40 * v37 + 16); i; i = *i)
                    {
                      std::__hash_table<ZinNamedType<unsigned long,TidTag>,std::hash<ZinNamedType<unsigned long,TidTag>>,std::equal_to<ZinNamedType<unsigned long,TidTag>>,std::allocator<ZinNamedType<unsigned long,TidTag>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,TidTag>,ZinNamedType<unsigned long,TidTag> const&>(v31, i + 2, i + 2);
                    }

                    v13 = -1;
                  }

                  std::__hash_table<ZinNamedType<unsigned long,TidTag>,std::hash<ZinNamedType<unsigned long,TidTag>>,std::equal_to<ZinNamedType<unsigned long,TidTag>>,std::allocator<ZinNamedType<unsigned long,TidTag>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,TidTag>,ZinNamedType<unsigned long,TidTag> const&>(this + 3, &v38, &v38);
                  v24 = 1;
                }

                v25 = v39;
                v39 = 0;
                if (v25)
                {
                  (*(*v25 + 16))(v25);
                }

                if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v36.__r_.__value_.__l.__data_);
                }

                if ((v24 & 1) == 0)
                {
                  v21 = 0;
                  goto LABEL_43;
                }

                v19 = (v19 + 48);
              }

              while (v19 != v20);
              if (v13 == -1)
              {
                v27 = *(this + 8);
                v26 = *(this + 9);
                if (v26 >= *(this + 10))
                {
                  v28 = std::vector<std::unordered_set<unsigned long long>>::__emplace_back_slow_path<std::unordered_set<unsigned long long> const&>(this + 8, v31);
                }

                else
                {
                  std::unordered_set<unsigned long long>::unordered_set(*(this + 9), v31);
                  v28 = v26 + 40;
                  *(this + 9) = v26 + 40;
                }

                v13 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v27) >> 3);
                *(this + 9) = v28;
              }

              v21 = 1;
            }

LABEL_43:
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v31);
          }

          v29 = v34;
          v34 = 0;
          if (v29)
          {
            (*(*v29 + 16))(v29);
          }

          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (v21)
            {
              goto LABEL_50;
            }

            return v3 & 1;
          }

          operator delete(v32.__r_.__value_.__l.__data_);
          if ((v21 & 1) == 0)
          {
            return v3 & 1;
          }

          goto LABEL_50;
        }
      }
    }

    *(this + 89) = 1;
    LOBYTE(v3) = *(this + 88) ^ 1;
  }

  return v3 & 1;
}

void sub_1A6A362D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a9);
  Layer2TDMapper::LayerInfo::~LayerInfo(&a14);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::unordered_set<unsigned long long>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::unordered_set<unsigned long long>>::__emplace_back_slow_path<std::unordered_set<unsigned long long>>(a1, a2);
  }

  else
  {
    result = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(v3, a2) + 40;
  }

  *(a1 + 8) = result;
  return result;
}

__int128 *Layer2TDMapper::LayerTracker::EmptySourceIds(Layer2TDMapper::LayerTracker *this)
{
  if ((atomic_load_explicit(_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    Layer2TDMapper::LayerTracker::EmptySourceIds();
  }

  return &xmmword_1ED440618;
}

__int128 *Layer2TDMapper::LayerTracker::GetSourceLayerIds(Layer2TDMapper::LayerTracker *this, const ZinIrOpLayer *a2)
{
  v2 = *(this + 9) - *(this + 8);
  if (v2 && (v4 = this, v5 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 3), this = ZinIrCodegenStatsPerBasicBlock::GetStats(a2), v5 > *this))
  {
    Stats = ZinIrCodegenStatsPerBasicBlock::GetStats(a2);
    v7 = *(v4 + 8);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 9) - v7) >> 3) <= *Stats)
    {
      std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
    }

    return (v7 + 40 * *Stats);
  }

  else
  {
    Layer2TDMapper::LayerTracker::EmptySourceIds(this);
    return &xmmword_1ED440618;
  }
}

std::string *Layer2TDMapper::LayerTracker::GetRootSourceLayerInfos@<X0>(uint64_t *__return_ptr a1@<X8>, Layer2TDMapper::LayerTracker *this@<X0>, const ZinIrOpLayer *a3@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = Layer2TDMapper::LayerTracker::GetSourceLayerIds(this, a3);
  v6 = result->__r_.__value_.__r.__words[2];
  if (v6)
  {
    v7 = 0;
    v8 = (this + 8);
    do
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_16;
      }

      v10 = v6[2];
      v11 = v8;
      do
      {
        v12 = v9[4];
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = v9[v14];
      }

      while (v9);
      if (v11 == v8 || v10 < v11[4])
      {
LABEL_16:
        ZinAssertImpl("");
      }

      if (v7 >= a1[2])
      {
        result = std::vector<Layer2TDMapper::LayerInfo>::__emplace_back_slow_path<Layer2TDMapper::LayerInfo const&>(a1, (v11 + 5));
        v7 = result;
      }

      else
      {
        result = Layer2TDMapper::LayerInfo::LayerInfo(v7, (v11 + 5));
        v7 += 2;
      }

      a1[1] = v7;
      v6 = *v6;
    }

    while (v6);
  }

  return result;
}

void sub_1A6A36548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *Layer2TDMapper::SourceLayer::SourceLayer(void *a1, ZinIrCodegenStatsPerBasicBlock ***a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  *a1 = &unk_1F19C3950;
  a1[2] = 0;
  a1[3] = 0;
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    v6 = *v4;
    if (*v4)
    {
      v7 = *(v6 + 11);
      v8 = *(v6 + 3);
      Stats = ZinIrCodegenStatsPerBasicBlock::GetStats(*v4);
      Layer2TDMapper::LayerInfo::LayerInfo(&__p, v7, v6 + 3, v8, *Stats);
      std::vector<Layer2TDMapper::LayerInfo>::push_back[abi:ne200100](v3, &__p);
      v10 = v13;
      v13 = 0;
      if (v10)
      {
        (*(*v10 + 16))(v10);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    ++v4;
  }

  return a1;
}

void sub_1A6A3666C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  Layer2TDMapper::LayerInfo::~LayerInfo(&a9);
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *Layer2TDMapper::SourceLayer::SourceLayer(void *a1, uint64_t a2)
{
  *a1 = &unk_1F19C3950;
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        v8 = *(v7 + 11);
        v9 = *(v7 + 3);
        Stats = ZinIrCodegenStatsPerBasicBlock::GetStats(*v5);
        Layer2TDMapper::LayerInfo::LayerInfo(&__p, v8, v7 + 3, v9, *Stats);
        std::vector<Layer2TDMapper::LayerInfo>::push_back[abi:ne200100](v3, &__p);
        v11 = v14;
        v14 = 0;
        if (v11)
        {
          (*(*v11 + 16))(v11);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void sub_1A6A3679C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  Layer2TDMapper::LayerInfo::~LayerInfo(&a9);
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::unordered_set<unsigned long long>>::__emplace_back_slow_path<std::unordered_set<unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<ZinIrDimension,ZinTensorDimensionException>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = *(a1 + 8);
  v8 = 40 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_set<unsigned long long>>,std::unordered_set<unsigned long long>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::unordered_set<unsigned long long>>::~__split_buffer(&v13);
  return v12;
}

void sub_1A6A368E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::unordered_set<unsigned long long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<unsigned long long,Layer2TDMapper::LayerInfo>::~pair(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::vector<Layer2TDMapper::LayerInfo>::__emplace_back_slow_path<Layer2TDMapper::LayerInfo const&>(uint64_t a1, const Layer2TDMapper::LayerInfo *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Layer2TDMapper::LayerInfo>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  Layer2TDMapper::LayerInfo::LayerInfo((48 * v2), a2);
  v15 = 48 * v2 + 48;
  v7 = *(a1 + 8);
  v8 = (48 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Layer2TDMapper::LayerInfo>,Layer2TDMapper::LayerInfo*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<Layer2TDMapper::LayerInfo>::~__split_buffer(&v13);
  return v12;
}

void sub_1A6A36A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<Layer2TDMapper::LayerInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t std::unordered_set<unsigned long long>::unordered_set(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<ZinNamedType<unsigned long,TidTag>,std::hash<ZinNamedType<unsigned long,TidTag>>,std::equal_to<ZinNamedType<unsigned long,TidTag>>,std::allocator<ZinNamedType<unsigned long,TidTag>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,TidTag>,ZinNamedType<unsigned long,TidTag> const&>(a1, a2, a2);
      ++a2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,Layer2TDMapper::LayerInfo>>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>>>::__construct_node<std::pair<unsigned long long,Layer2TDMapper::LayerInfo>>();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Layer2TDMapper::LayerInfo>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void Layer2TDMapper::LayerTracker::EmptySourceIds()
{
  if (__cxa_guard_acquire(_MergedGlobals_2))
  {
    unk_1ED440628 = 0u;
    xmmword_1ED440618 = 0u;
    dword_1ED440638 = 1065353216;
    __cxa_atexit(std::unordered_set<unsigned long long>::~unordered_set[abi:ne200100], &xmmword_1ED440618, &dword_1A617D000);

    __cxa_guard_release(_MergedGlobals_2);
  }
}

void ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(void *a1, uint64_t a2)
{
  v22[29] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v10, "conv");
  v11[0] = &unk_1F19F5608;
  v11[3] = v11;
  v6 = 1;
  std::unordered_set<Attribute>::unordered_set(&v12, &v6, 1);
  std::string::basic_string[abi:ne200100]<0>(v13, "any_goc");
  v14[0] = &unk_1F19F5688;
  v14[3] = v14;
  v5 = 2;
  std::unordered_set<Attribute>::unordered_set(&v15, &v5, 1);
  std::string::basic_string[abi:ne200100]<0>(v16, "relu");
  v17[0] = &unk_1F19F5708;
  v17[3] = v17;
  v4 = 1;
  std::unordered_set<Attribute>::unordered_set(&v18, &v4, 1);
  std::string::basic_string[abi:ne200100]<0>(v19, "positive_goc");
  v20[0] = &unk_1F19F5788;
  v20[3] = v20;
  v3 = 1;
  std::unordered_set<Attribute>::unordered_set(&v21, &v3, 1);
  memset(v7, 0, sizeof(v7));
  std::vector<ZinLinearPattern::AtomItemDesc>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItemDesc const*,ZinLinearPattern::AtomItemDesc const*>(v7, v10, v22, 4uLL);
  v9 = 0;
  ZinLinearPattern::ZinLinearPattern(v22, v7, a2, 0, v8, 0);
  std::allocate_shared[abi:ne200100]<ZinLinearPattern,std::allocator<ZinLinearPattern>,ZinLinearPattern,0>();
}

void sub_1A6A37030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](&a23);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

uint64_t ZinIrOpt::ActivationWithSingularScaleGOC(ZinIrOpt *this, ZinIrOpLayerGraph *a2, ZinIrOpLayer *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 11) + 8) != 4)
  {
    return 0;
  }

  if (ZinIrOpLayer::IsTensorFmtQuantized(a2, a2))
  {
    return 0;
  }

  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(a2);
  if (OutgoingLayers[1] - *OutgoingLayers != 8)
  {
    return 0;
  }

  v57 = a2;
  if (!ZinActivationLayer::HasEligibleModeToMergeWithScale(a2, 1.0))
  {
    return 0;
  }

  v67.n128_u64[0] = a2;
  LODWORD(v68) = 0;
  v6 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v67);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v67, v6);
  v64 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v67);
  v7 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v64);
  v8 = (v7 + 3);
  if (!v7)
  {
    v8 = (this + 104);
  }

  v9 = **v8;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v67);
  v55 = 0;
  v56 = v9;
  v67.n128_u64[0] = a2;
  __p = 0;
  v54 = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&__p, &v67, &v67.n128_i64[1], 1uLL);
  v10 = 0;
  v11 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v12 = 1.0;
    while (1)
    {
      v13 = ZinIrOpLayer::GetOutgoingLayers(a2);
      if (v13[1] - *v13 != 8 || (v14 = v56) == 0 || *(*(v56 + 11) + 8) != 2 || (Hal = ZinIrTarget::GetHal(*(*(v56 + 4) + 200)), v16 = (*(*Hal + 16))(Hal), !*(v14 + 20)) || !ZinIrKernel::HasNoBiasNoWeightButSingularScale(*(v14 + 20), *(v16 + 1308)))
      {
        if (v10)
        {
          goto LABEL_46;
        }

LABEL_52:
        v38 = 0;
        goto LABEL_57;
      }

      v17 = v56;
      HasScale = ZinIrKernel::HasScale(*(v56 + 20));
      SingularVal = 1.0;
      if (HasScale)
      {
        SingularVal = ZinIrVector::GetSingularVal(*(*(v17 + 20) + 656));
      }

      v12 = v12 * SingularVal;
      v20 = v57;
      if (ZinActivationLayer::HasEligibleModeToMergeWithScale(v57, v12))
      {
        break;
      }

      std::vector<ZinGOCLayer const*>::push_back[abi:ne200100](&__p, &v56);
      v67.n128_u64[0] = v56;
      LODWORD(v68) = 0;
      v21 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v67);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v67, v21);
      v64 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v67);
      v22 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v64);
      v23 = (v22 + 3);
      if (!v22)
      {
        v23 = (this + 104);
      }

      v56 = **v23;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v67);
      v24 = ZinIrOpLayer::GetOutgoingLayers(v56);
      if (v24[1] - *v24 != 8)
      {
        goto LABEL_52;
      }
    }

    v25 = (*(*a2 + 40))(a2, 0);
    *(v25 + 104) = *((*(*v17 + 40))(v17, 0) + 104);
    ZinActivationLayer::FuseIntoPostScale(v20, v12);
    std::vector<ZinGOCLayer const*>::push_back[abi:ne200100](&__p, &v56);
    v26 = v56;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    for (i = ZinIrOpLayer::GetOutgoingLayers(a2); ; i = ZinIrOpLayer::GetOutgoingLayers(v63))
    {
      v63 = **i;
      if (v63 == v26)
      {
        break;
      }

      std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&v64, &v63);
      v28 = ZinIrOpLayer::GetOutgoingLayers(v63);
      if (v28[1] - *v28 != 8)
      {
        ZinAssertImpl("Unexpected number of outgoing layers");
      }
    }

    std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&v64, &v63);
    v67 = 0u;
    v68 = 0u;
    v69 = 1065353216;
    v29 = ZinIrOpLayerGraph::MoveOutgoingEdges(this, v26, a2, &v67, 0, 0);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v67);
    if (v29)
    {
      v30 = v64;
      v31 = v65;
      while (v30 != v31)
      {
        v59.n128_u64[0] = *(v31 - 1);
        v60 = 0;
        v32 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v59);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v59, v32);
        v33 = ZinIrOpLayerGraph::RemoveNode(this, &v59, 0);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v59);
        if (!v33 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          ZinIrOpt::ActivationWithSingularScaleGOC(v58, &v58[1]);
        }

        v30 = v64;
        v31 = v65 - 8;
        v65 -= 8;
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ZinIrOptForkDilatedConvs(&buf, v62);
      }

      v30 = v64;
    }

    if (v30)
    {
      v65 = v30;
      operator delete(v30);
    }

    if (!v29)
    {
      break;
    }

    v67.n128_u64[0] = a2;
    LODWORD(v68) = 0;
    v34 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v67);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v67, v34);
    v64 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v67);
    v35 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v64);
    v36 = (v35 + 3);
    if (!v35)
    {
      v36 = (this + 104);
    }

    v56 = **v36;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v67);
    v10 = 1;
    if (v56 && ZinIrOpLayer::IsTensorFmtQuantized(v56, v37))
    {
LABEL_46:
      v40 = v57;
      v41 = (*(*v57 + 48))(v57, 0);
      v42 = v41[1];
      v51 = *v41;
      v52 = v42;
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v40 + 200))(&v64, v40, &v51, v40 + 48);
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      Layer2TDMapper::SourceLayer::SourceLayer(&v67, &__p);
      ZinIrOpLayerGraph::AddNode(this, &v64, &v67, v49);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v50);
      v67.n128_u64[0] = &unk_1F19C3950;
      v59.n128_u64[0] = &v67.n128_u64[1];
      std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v59);
      v43 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v64);
      ZinIrOpLayerGraph::MoveIncomingEdges(this, v40, v43);
      v44 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v64);
      memset(v47, 0, sizeof(v47));
      v48 = 1065353216;
      v45 = ZinIrOpLayerGraph::MoveOutgoingEdges(this, v40, v44, v47, 0, 0);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v47);
      if (v45)
      {
        RawOrShared<ZinIrOpLayer>::RawOrShared<ZinGOCLayer *&>(&v46, &v57);
        ZinIrOpLayerGraph::RemoveNode(this, &v46, 0);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v46);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v64);
        goto LABEL_52;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MirOpt::MergeGOCsToConvs();
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v64);
      break;
    }
  }

  v38 = 3;
LABEL_57:
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  return v38;
}

void sub_1A6A377A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v30 - 160);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0>,MatchStatus ()(MatchParams const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a2 + 8) + 88) + 8))
  {
    return 256;
  }

  else
  {
    return 257;
  }
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1>,MatchStatus ()(MatchParams const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a2 + 8) + 88) + 8) == 2)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2>,MatchStatus ()(MatchParams const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(v2 + 88) + 8) == 4 && *(v2 + 176) == 1 && *((*(*v2 + 40))(v2, 0) + 104) == 3;
  return v3 | 0x100u;
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3>,MatchStatus ()(MatchParams const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(v2[11] + 8) == 2 && *((*(*v2 + 40))(v2, 0) + 104) == 3 && ZinGOCLayer::IsSingularScaleBias(*(a2 + 8)))
  {
    v10 = 0.0;
    v9 = 0;
    ZinGOCLayer::GetSingularScale(*(a2 + 8), &v10, &v9);
    v8 = 0.0;
    v7 = 0;
    ZinGOCLayer::GetSingularBias(*(a2 + 8), &v8, &v7);
    v5 = v8 == 0.0 && v10 > 0.0;
  }

  else
  {
    v5 = 0;
  }

  return v5 | 0x100u;
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_4,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_4>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F5808;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_4,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_4>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, ZinIrOpLayerGraph **a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *a3;
  while (1)
  {
    if ((*(**v4 + 8))(*v4, v6, v7))
    {
      v8 = *v4;
      std::string::basic_string[abi:ne200100]<0>(__p, "relu");
      SingleMatch = ZinPattern::GetSingleMatch(v8, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = *v4;
      std::string::basic_string[abi:ne200100]<0>(__p, "positive_goc");
      v11 = ZinPattern::GetSingleMatch(v10, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if ((ZinIrOpLayerGraph::SwapNodes(v6, SingleMatch, v11) & 1) == 0)
      {
        break;
      }
    }

    v4 += 2;
    if (v4 == v5)
    {
      return 0;
    }
  }

  return 3;
}

void sub_1A6A37F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_4,std::allocator<ZinIrOpt::ZinIrOptSwapReluSingularScalePositive(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_4>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ZinIrOpt::ActivationWithSingularScaleGOC(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed in removing node.\n", buf, 2u);
}

uint64_t MirOpt::CpBasedCWTransposeUtil::TransposerWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MirOpt::CpBasedCWTransposeUtil::TransposerWrapper(std::unique_ptr<CpTransposeGraph> &,std::unordered_set<unsigned long long> const&,std::string const&,CpTransposeUtils::CpTransposeOptimizationResult &)::dlhandle)
  {
    v10 = dlopen("/System/Library/PrivateFrameworks/ANECompiler.framework/libORTools.dylib", 10);
    MirOpt::CpBasedCWTransposeUtil::TransposerWrapper(std::unique_ptr<CpTransposeGraph> &,std::unordered_set<unsigned long long> const&,std::string const&,CpTransposeUtils::CpTransposeOptimizationResult &)::dlhandle = v10;
    if (v10)
    {
      v8 = dlsym(v10, "ORToolsCpBasedTransposerUtil_CallCpTransposer");
      MirOpt::CpBasedCWTransposeUtil::TransposerWrapper(std::unique_ptr<CpTransposeGraph> &,std::unordered_set<unsigned long long> const&,std::string const&,CpTransposeUtils::CpTransposeOptimizationResult &)::dlfunc = v8;
      if (v8)
      {
        goto LABEL_3;
      }

      dlerror();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MirOpt::CpBasedCWTransposeUtil::TransposerWrapper();
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MirOpt::CpBasedCWTransposeUtil::TransposerWrapper();
      }
    }

    else
    {
      dlerror();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MirOpt::CpBasedCWTransposeUtil::TransposerWrapper();
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MirOpt::CpBasedCWTransposeUtil::TransposerWrapper();
      }
    }

    return 0;
  }

  v8 = MirOpt::CpBasedCWTransposeUtil::TransposerWrapper(std::unique_ptr<CpTransposeGraph> &,std::unordered_set<unsigned long long> const&,std::string const&,CpTransposeUtils::CpTransposeOptimizationResult &)::dlfunc;
LABEL_3:

  return (v8)(a1, a2, a3, a4);
}

void ZinCpBasedAllocatorUtil::AllocatorWrapper(CpAllocGraph **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (ZinCpBasedAllocatorUtil::AllocatorWrapper(std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long,std::string const&)::dlhandle)
  {
    goto LABEL_2;
  }

  *a5 = &unk_1F19F5888;
  a5[3] = a5;
  v12 = dlopen("/System/Library/PrivateFrameworks/ANECompiler.framework/libORTools.dylib", 10);
  ZinCpBasedAllocatorUtil::AllocatorWrapper(std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long,std::string const&)::dlhandle = v12;
  if (v12)
  {
    ZinCpBasedAllocatorUtil::AllocatorWrapper(std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long,std::string const&)::dlfunc = dlsym(v12, "ORToolsCpBasedAllocatorUtil_CallCpAllocator");
    if (ZinCpBasedAllocatorUtil::AllocatorWrapper(std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long,std::string const&)::dlfunc)
    {
      std::__function::__value_func<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::~__value_func[abi:ne200100](a5);
LABEL_2:
      v10 = ZinCpBasedAllocatorUtil::AllocatorWrapper(std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long,std::string const&)::dlfunc;
      a5[3] = 0;
      v11 = *a1;
      *a1 = 0;
      v13 = v11;
      v10(&v13, a2, a3, a4, a5);
      std::unique_ptr<CpAllocGraph>::~unique_ptr[abi:ne200100](&v13);
      return;
    }

    dlerror();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCpBasedAllocatorUtil::AllocatorWrapper();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MirOpt::CpBasedCWTransposeUtil::TransposerWrapper();
    }
  }

  else
  {
    dlerror();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCpBasedAllocatorUtil::AllocatorWrapper();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MirOpt::CpBasedCWTransposeUtil::TransposerWrapper();
    }
  }
}

void sub_1A6A382A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<CpAllocGraph>::~unique_ptr[abi:ne200100](va);
  std::__function::__value_func<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::~__value_func[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

uint64_t ZinCpBasedMemCacheAllocatorUtil::MemCacheAllocatorWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!ZinCpBasedMemCacheAllocatorUtil::MemCacheAllocatorWrapper(CpMemCacheAllocGraph *,std::string const&,unsigned long long,std::unordered_map<unsigned long long,CpAllocUtils::MemCacheAllocationType> &)::dlhandle)
  {
    v10 = dlopen("/System/Library/PrivateFrameworks/ANECompiler.framework/libORTools.dylib", 10);
    ZinCpBasedMemCacheAllocatorUtil::MemCacheAllocatorWrapper(CpMemCacheAllocGraph *,std::string const&,unsigned long long,std::unordered_map<unsigned long long,CpAllocUtils::MemCacheAllocationType> &)::dlhandle = v10;
    if (v10)
    {
      v8 = dlsym(v10, "ORToolsCpBasedMemCacheAllocatorUtil_CallCpAllocator");
      ZinCpBasedMemCacheAllocatorUtil::MemCacheAllocatorWrapper(CpMemCacheAllocGraph *,std::string const&,unsigned long long,std::unordered_map<unsigned long long,CpAllocUtils::MemCacheAllocationType> &)::dlfunc = v8;
      if (v8)
      {
        goto LABEL_3;
      }

      dlerror();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCpBasedAllocatorUtil::AllocatorWrapper();
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MirOpt::CpBasedCWTransposeUtil::TransposerWrapper();
      }
    }

    else
    {
      dlerror();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCpBasedAllocatorUtil::AllocatorWrapper();
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MirOpt::CpBasedCWTransposeUtil::TransposerWrapper();
      }
    }

    return 0;
  }

  v8 = ZinCpBasedMemCacheAllocatorUtil::MemCacheAllocatorWrapper(CpMemCacheAllocGraph *,std::string const&,unsigned long long,std::unordered_map<unsigned long long,CpAllocUtils::MemCacheAllocationType> &)::dlfunc;
LABEL_3:

  return (v8)(a1, a2, a3, a4);
}

uint64_t std::__function::__func<ZinCpBasedAllocatorUtil::AllocatorWrapper(std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long,std::string const&)::$_0,std::allocator<ZinCpBasedAllocatorUtil::AllocatorWrapper(std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long,std::string const&)::$_0>,std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinCpBasedAllocatorUtil::AllocatorWrapper(std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long,std::string const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<ZinCpBasedAllocatorUtil::AllocatorWrapper(std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long,std::string const&)::$_0::operator() const(void)::{lambda(void)#1}>,std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A6A38950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  ZinMPSConstantInfo::~ZinMPSConstantInfo(&a18);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  MEMORY[0x1AC55A040](a10, v24);
  MEMORY[0x1AC55A040](a11, v24);
  _Unwind_Resume(a1);
}

void ZinMPSConstantInfo::~ZinMPSConstantInfo(ZinMPSConstantInfo *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ZinMPSConstantInfo::ZinMPSConstantInfo(ZinMPSConstantInfo *this, const ZinMPSConstantInfo *a2)
{
  *this = *a2;
  *(this + 8) = *(a2 + 8);
  *(this + 3) = CFRetain(*(a2 + 3));
}

uint64_t ZinMPSConstantInfo::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = a2[1];
    *&v9 = *a2;
    *(&v9 + 1) = v4;
    v6 = a2[2];
    v5 = a2[3];
    *&v10 = v6;
    v7 = CFRetain(v5);
    *(&v10 + 1) = v7;
    if (&v9 != a1)
    {
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      v9 = 0u;
      v10 = 0u;
    }

    ZinMPSConstantInfo::~ZinMPSConstantInfo(&v9);
  }

  return a1;
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      memset(this->__end_, *__x, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v8 = (end - this->__begin_);
    v9 = &v8[__n];
    if (&v8[__n] < 0)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = end - this->__begin_;
    memset(v8, *__x, __n);
    memcpy(&v8[begin - end], begin, v12);
    this->__begin_ = &v8[begin - end];
    this->__end_ = &v8[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,ZinMPSConstantInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinMPSConstantInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinMPSConstantInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(char *a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void mlir::Liveness::build(mlir::ForwardIterator **this)
{
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v1 = *this;
  v65 = 0;
  *v64 = 0u;
  v66 = &v68;
  v67 = 0;
  v68 = &v61;
  v69 = v64;
  v2 = v67;
  if (!v67)
  {
LABEL_112:
    if (v66 != &v68)
    {
      free(v66);
    }

    llvm::deallocate_buffer(v64[0], (8 * v65));
  }

  while (1)
  {
    v3 = *(v66 + v2 - 1);
    v4 = v3 >> 4;
    if (v65)
    {
      v5 = (v4 ^ (v3 >> 9)) & (v65 - 1);
      v6 = *(v64[0] + v5);
      if (v3 == v6)
      {
LABEL_6:
        *(v64[0] + v5) = -8192;
        v64[1] = vadd_s32(v64[1], 0x1FFFFFFFFLL);
      }

      else
      {
        v58 = 1;
        while (v6 != -4096)
        {
          v59 = v5 + v58++;
          v5 = v59 & (v65 - 1);
          v6 = *(v64[0] + v5);
          if (v3 == v6)
          {
            goto LABEL_6;
          }
        }
      }
    }

    LODWORD(v67) = v2 - 1;
    v7 = v63;
    if (v63)
    {
      v8 = (v63 - 1) & (v4 ^ (v3 >> 9));
      v9 = (v61 + 656 * v8);
      v10 = *v9;
      if (*v9 == v3)
      {
        goto LABEL_24;
      }

      v11 = 0;
      v12 = 1;
      while (v10 != -4096)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = v10 == -8192;
        }

        if (v13)
        {
          v11 = v9;
        }

        v14 = v8 + v12++;
        v8 = v14 & (v63 - 1);
        v9 = (v61 + 656 * v8);
        v10 = *v9;
        if (*v9 == v3)
        {
          goto LABEL_24;
        }
      }

      if (v11)
      {
        v9 = v11;
      }
    }

    else
    {
      v9 = 0;
    }

    v68 = v9;
    if (4 * v62 + 4 >= 3 * v63)
    {
      break;
    }

    if (v63 + ~v62 - HIDWORD(v62) <= v63 >> 3)
    {
      goto LABEL_110;
    }

    LODWORD(v62) = v62 + 1;
    if (*v9 != -4096)
    {
      goto LABEL_22;
    }

LABEL_23:
    *v9 = v3;
    bzero(v9 + 1, 0x288uLL);
    v9[2] = (v9 + 6);
    v9[3] = (v9 + 6);
    *(v9 + 8) = 16;
    v9[22] = (v9 + 26);
    v9[23] = (v9 + 26);
    *(v9 + 48) = 16;
    v9[42] = (v9 + 46);
    v9[43] = (v9 + 46);
    *(v9 + 88) = 16;
    v9[62] = (v9 + 66);
    v9[63] = (v9 + 66);
    *(v9 + 128) = 16;
LABEL_24:
    v60 = v3;
    mlir::SuccessorRange::SuccessorRange(&v68, v9[1]);
    v15 = v69;
    if (v69)
    {
      v16 = 0;
      v17 = v68;
      while (1)
      {
        if (!v63)
        {
          goto LABEL_33;
        }

        v18 = v17[4 * v16 + 3];
        v19 = ((v18 >> 4) ^ (v18 >> 9)) & (v63 - 1);
        v20 = (v61 + 656 * v19);
        v21 = *v20;
        if (*v20 != v18)
        {
          break;
        }

LABEL_34:
        v25 = v20[2];
        v24 = v20[3];
        v26 = v20 + 2;
        if (v24 == v25)
        {
          v27 = 20;
        }

        else
        {
          v27 = 16;
        }

        v28 = *(v26 + v27);
        if (v28)
        {
          v29 = 8 * v28;
          v30 = v24;
          while (*v30 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v30;
            v29 -= 8;
            if (!v29)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v30 = v24;
        }

        v31 = &v24[v28];
        if (v30 != v31)
        {
          v32 = v9[22];
          v33 = v9[23];
          v34 = *v30;
          while (1)
          {
            if (v33 != v32)
            {
              goto LABEL_46;
            }

            v35 = *(v9 + 49);
            if (!v35)
            {
              break;
            }

            v36 = 0;
            while (*(v32 + v36) != v34)
            {
              v36 += 8;
              if (8 * v35 == v36)
              {
                goto LABEL_56;
              }
            }

            do
            {
LABEL_48:
              if (++v30 == v31)
              {
                goto LABEL_26;
              }

              v34 = *v30;
            }

            while (*v30 >= 0xFFFFFFFFFFFFFFFELL);
            if (v30 == v31)
            {
              goto LABEL_26;
            }
          }

LABEL_56:
          if (v35 >= *(v9 + 48))
          {
LABEL_46:
            llvm::SmallPtrSetImplBase::insert_imp_big((v9 + 22), v34);
          }

          else
          {
            *(v9 + 49) = v35 + 1;
            *(v32 + v35) = v34;
          }

          v32 = v9[22];
          v33 = v9[23];
          goto LABEL_48;
        }

LABEL_26:
        if (++v16 == v15)
        {
          goto LABEL_58;
        }
      }

      v22 = 1;
      while (v21 != -4096)
      {
        v23 = v19 + v22++;
        v19 = v23 & (v63 - 1);
        v20 = (v61 + 656 * v19);
        v21 = *v20;
        if (*v20 == v18)
        {
          goto LABEL_34;
        }
      }

LABEL_33:
      v20 = (v61 + 656 * v63);
      goto LABEL_34;
    }

LABEL_58:
    {
      v37 = *v60;
      if (*v60)
      {
        while (1)
        {
          v41 = mlir::PredecessorIterator::unwrap(v37);
          if (!v65)
          {
            goto LABEL_84;
          }

          v38 = ((v41 >> 4) ^ (v41 >> 9)) & (v65 - 1);
          v39 = v64[0] + 8 * v38;
          v40 = *v39;
          if (v41 != *v39)
          {
            break;
          }

LABEL_62:
          v37 = *v37;
          if (!v37)
          {
            goto LABEL_3;
          }
        }

        v43 = 0;
        v44 = 1;
        while (v40 != -4096)
        {
          if (v43)
          {
            v45 = 0;
          }

          else
          {
            v45 = v40 == -8192;
          }

          if (v45)
          {
            v43 = v39;
          }

          v46 = v38 + v44++;
          v38 = v46 & (v65 - 1);
          v39 = v64[0] + 8 * v38;
          v40 = *v39;
          if (v41 == *v39)
          {
            goto LABEL_62;
          }
        }

        if (v43)
        {
          v47 = v43;
        }

        else
        {
          v47 = v39;
        }

        if (4 * LODWORD(v64[1]) + 4 < 3 * v65)
        {
          if (v65 + ~LODWORD(v64[1]) - HIDWORD(v64[1]) > v65 >> 3)
          {
            ++LODWORD(v64[1]);
            if (*v47 == -4096)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          }

          v48 = v41;
          llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(v64, v65);
          v49 = v65;
          if (v65)
          {
            goto LABEL_85;
          }
        }

        else
        {
LABEL_84:
          v48 = v41;
          llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(v64, 2 * v65);
          v49 = v65;
          if (v65)
          {
LABEL_85:
            v41 = v48;
            v50 = v49 - 1;
            v51 = (v49 - 1) & ((v48 >> 4) ^ (v48 >> 9));
            v47 = v64[0] + 8 * v51;
            v52 = *v47;
            if (v48 != *v47)
            {
              v53 = 0;
              v54 = 1;
              while (v52 != -4096)
              {
                if (v53)
                {
                  v55 = 0;
                }

                else
                {
                  v55 = v52 == -8192;
                }

                if (v55)
                {
                  v53 = v47;
                }

                v56 = v51 + v54++;
                v51 = v56 & v50;
                v47 = v64[0] + 8 * (v56 & v50);
                v52 = *v47;
                if (v48 == *v47)
                {
                  goto LABEL_97;
                }
              }

              if (v53)
              {
                v47 = v53;
              }
            }

LABEL_97:
            ++LODWORD(v64[1]);
            if (*v47 == -4096)
            {
LABEL_68:
              *v47 = v41;
              v42 = v67;
              if (v67 >= HIDWORD(v67))
              {
                v57 = v41;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, &v68, v67 + 1, 8);
                v41 = v57;
                v42 = v67;
              }

              *(v66 + v42) = v41;
              LODWORD(v67) = v67 + 1;
              goto LABEL_62;
            }

LABEL_67:
            --HIDWORD(v64[1]);
            goto LABEL_68;
          }
        }

        v47 = 0;
        v41 = v48;
        goto LABEL_97;
      }
    }

LABEL_3:
    v2 = v67;
    if (!v67)
    {
      goto LABEL_112;
    }
  }

  v7 = 2 * v63;
LABEL_110:
  v9 = v68;
  LODWORD(v62) = v62 + 1;
  if (*v68 == -4096)
  {
    goto LABEL_23;
  }

LABEL_22:
  --HIDWORD(v62);
  goto LABEL_23;
}

void mlir::Liveness::Liveness(mlir::Liveness *this, mlir::Operation *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = 0;
  mlir::Liveness::build(this);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 336 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 336 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 328) = 0;
  *(v5 + 8) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 312) = 0u;
  *(v5 + 16) = v5 + 48;
  *(v5 + 24) = v5 + 48;
  *(v5 + 32) = 16;
  *(v5 + 176) = v5 + 208;
  *(v5 + 184) = v5 + 208;
  *(v5 + 192) = 16;
  return v5 + 8;
}

uint64_t *mlir::Liveness::getLiveness(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v5 = (v2 + 336 * v4);
  v6 = *v5;
  if (*v5 != a2)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v4 + v8++;
      v4 = v9 & (v3 - 1);
      v5 = (v2 + 336 * v4);
      v6 = *v5;
      if (*v5 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v5 == (v2 + 336 * v3))
  {
    return 0;
  }

  else
  {
    return v5 + 1;
  }
}

void mlir::LivenessBlockInfo::getEndOperation(uint64_t a1, uint64_t **a2, mlir::Block **a3)
{
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v9 = (a1 + 168);
  if (v8 == v7)
  {
    v12 = *(a1 + 188);
    if (v12)
    {
      v13 = 8 * v12;
      while (*v7 != a2)
      {
        ++v7;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v7 = &v8[v12];
    }

    v10 = v8;
  }

  else
  {
    v7 = llvm::SmallPtrSetImplBase::doFind(v9, a2);
    v8 = *(a1 + 168);
    v10 = *(a1 + 176);
    if (!v7)
    {
      v11 = 16;
      if (v10 == v8)
      {
        v11 = 20;
      }

      v7 = &v10[*(v9 + v11)];
    }
  }

  v14 = v10 == v8;
  v15 = 16;
  if (v14)
  {
    v15 = 20;
  }

  if (v7 == &v10[*(v9 + v15)])
  {
    v17 = *a2;
    if (*a2)
    {
      do
      {
        AncestorOpInBlock = mlir::Block::findAncestorOpInBlock(*a1, v17[2]);
        if (AncestorOpInBlock)
        {
          v19 = AncestorOpInBlock;
          if (mlir::Operation::isBeforeInBlock(a3, AncestorOpInBlock))
          {
            a3 = v19;
          }
        }

        v17 = *v17;
      }

      while (v17);
    }
  }

  else
  {
    v16 = *(*a1 + 32);

    ZinIrHalH13g::~ZinIrHalH13g(v16);
  }
}

void std::vector<mlir::Operation *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

BOOL anonymous namespace::BlockInfoBuilder::updateLiveIn(_anonymous_namespace_::BlockInfoBuilder *this)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v17, &v22, (this + 488));
  v2 = *(this + 22);
  v3 = 16;
  if (v2 == *(this + 21))
  {
    v3 = 20;
  }

  v4 = *(this + v3 + 168);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(this + 22);
    while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v6 = *(this + 22);
  }

  v7 = (v2 + 8 * v4);
  if (v6 != v7)
  {
    v8 = v17;
    v9 = v18;
    while (1)
    {
      v10 = *v6;
      if (v9 != v8)
      {
        goto LABEL_12;
      }

      v11 = v20;
      if (v20)
      {
        v12 = 0;
        while (v8[v12] != v10)
        {
          if (v20 == ++v12)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_14;
      }

LABEL_25:
      if (v20 < v19)
      {
        ++v20;
        v8[v11] = v10;
      }

      else
      {
LABEL_12:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v17, v10);
      }

      v8 = v17;
LABEL_14:
      if (++v6 != v7)
      {
        v9 = v18;
        while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
        {
          if (++v6 == v7)
          {
            goto LABEL_27;
          }
        }

        if (v6 != v7)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_27:
  llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(&v17, this + 328);
  v13 = v20 - v21;
  v14 = (this + 8);
  v15 = *(this + 7) - *(this + 8);
  if (&v17 != v14 && v13 != v15)
  {
    llvm::SmallPtrSetImplBase::MoveFrom(v14, 16, &v17);
  }

  if (v18 != v17)
  {
    free(v18);
  }

  return v13 != v15;
}

uint64_t mlir::detail::walk<mlir::ForwardIterator>(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  result = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = result + 24 * v8;
    if (a4)
    {
      if (a4 == 1)
      {
        do
        {
          v11 = *(v9 + 8);
          if (v11 != v9)
          {
            do
            {
              v12 = v11[1];
              for (i = v11[4]; i != (v11 + 3); i = *(i + 1))
              {
                ZinIrHalH13g::~ZinIrHalH13g(i);
                mlir::detail::walk<mlir::ForwardIterator>(v14, a2, a3, 1);
              }

              result = (a2)(a3, v11 - 1);
              v11 = v12;
            }

            while (v12 != v9);
          }

          v9 += 24;
        }

        while (v9 != v10);
      }

      else
      {
        do
        {
          v20 = *(v9 + 8);
          if (v20 != v9)
          {
            do
            {
              v21 = v20[1];
              v22 = (v20 + 3);
              v23 = v20[4];
              if (v23 != (v20 + 3))
              {
                do
                {
                  ZinIrHalH13g::~ZinIrHalH13g(v23);
                  result = mlir::detail::walk<mlir::ForwardIterator>(v24, a2, a3, a4);
                  v23 = *(v23 + 1);
                }

                while (v23 != v22);
              }

              v20 = v21;
            }

            while (v21 != v9);
          }

          v9 += 24;
        }

        while (v9 != v10);
      }
    }

    else
    {
      do
      {
        v15 = *(v9 + 8);
        if (v15 != v9)
        {
          do
          {
            v16 = *(v15 + 8);
            result = (a2)(a3, v15 - 8);
            v17 = (v15 + 24);
            for (j = *(v15 + 32); j != v17; j = *(j + 1))
            {
              ZinIrHalH13g::~ZinIrHalH13g(j);
              result = mlir::detail::walk<mlir::ForwardIterator>(v19, a2, a3, 0);
            }

            v15 = v16;
          }

          while (v16 != v9);
        }

        v9 += 24;
      }

      while (v9 != v10);
    }
  }

  return result;
}

{
  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (!v8)
  {
    return 1;
  }

  v9 = Iterable;
  v10 = Iterable + 24 * v8;
  if (a4 == 1)
  {
    while (1)
    {
      v22 = *(v9 + 8);
      if (v22 != v9)
      {
        break;
      }

LABEL_24:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v23 = v22[1];
      v24 = v22[4];
      if (v24 != (v22 + 3))
      {
        break;
      }

LABEL_29:
      result = (a2)(a3, v22 - 1);
      if (!result)
      {
        return result;
      }

      v22 = v23;
      if (v23 == v9)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v24);
      result = mlir::detail::walk<mlir::ForwardIterator>(v25, a2, a3, 1);
      if (!result)
      {
        break;
      }

      v24 = *(v24 + 1);
      if (v24 == (v22 + 3))
      {
        goto LABEL_29;
      }
    }
  }

  else if (a4)
  {
    while (1)
    {
      v17 = *(v9 + 8);
      if (v17 != v9)
      {
        break;
      }

LABEL_16:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v18 = v17[1];
      v19 = (v17 + 3);
      v20 = v17[4];
      if (v20 != (v17 + 3))
      {
        break;
      }

LABEL_19:
      v17 = v18;
      if (v18 == v9)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v20);
      result = mlir::detail::walk<mlir::ForwardIterator>(v21, a2, a3, a4);
      if (!result)
      {
        break;
      }

      v20 = *(v20 + 1);
      if (v20 == v19)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    while (1)
    {
      v11 = *(v9 + 8);
      if (v11 != v9)
      {
        break;
      }

LABEL_5:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v13 = *(v11 + 8);
      result = (a2)(a3, v11 - 8);
      if (result != 2)
      {
        if (!result)
        {
          return result;
        }

        v14 = (v11 + 24);
        v15 = *(v11 + 32);
        if (v15 != v14)
        {
          break;
        }
      }

LABEL_7:
      v11 = v13;
      if (v13 == v9)
      {
        goto LABEL_5;
      }
    }

    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v15);
      result = mlir::detail::walk<mlir::ForwardIterator>(v16, a2, a3, 0);
      if (!result)
      {
        break;
      }

      v15 = *(v15 + 1);
      if (v15 == v14)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

{
  if (!a4)
  {
    result = (a2)(a3, a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = Iterable;
    v10 = Iterable + 24 * v8;
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        v13 = *(v12 + 40);
        v14 = (v12 + 32);
        while (v13 != v14)
        {
          v15 = *(v13 + 1);
          ZinIrHalH13g::~ZinIrHalH13g(v13);
          v17 = mlir::detail::walk<mlir::ForwardIterator>(v16, a2, a3, a4);
          v13 = v15;
          if (!v17)
          {
            return 0;
          }
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 != 1)
  {
    return 1;
  }

  return (a2)(a3, a1);
}

void llvm::function_ref<void ()(mlir::Block *)>::callback_fn<buildBlockMapping(mlir::Operation *,llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>> &)::$_0>(uint64_t *a1, mlir::Block *a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *v4 + 656 * v6;
    v8 = *v7;
    if (*v7 == a2)
    {
      goto LABEL_63;
    }

    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & (v5 - 1);
      v7 = *v4 + 656 * v6;
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_63;
      }
    }

    if (v9)
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v51[0] = v7;
  v13 = *(v4 + 8);
  if (4 * v13 + 4 >= 3 * v5)
  {
    v5 *= 2;
  }

  else if (v5 + ~v13 - *(v4 + 12) > v5 >> 3)
  {
    *(v4 + 8) = v13 + 1;
    if (*v7 == -4096)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = v51[0];
  ++*(v4 + 8);
  if (*v7 != -4096)
  {
LABEL_16:
    --*(v4 + 12);
  }

LABEL_17:
  *v7 = a2;
  *(v7 + 8) = a2;
  v14 = v7 + 8;
  *(v7 + 16) = v7 + 48;
  *(v7 + 24) = v7 + 48;
  *(v7 + 32) = 16;
  *(v7 + 40) = 0;
  *(v7 + 176) = v7 + 208;
  *(v7 + 184) = v7 + 208;
  *(v7 + 192) = 16;
  *(v7 + 200) = 0;
  *(v7 + 336) = v7 + 368;
  *(v7 + 344) = v7 + 368;
  *(v7 + 352) = 16;
  *(v7 + 360) = 0;
  *(v7 + 496) = v7 + 528;
  *(v7 + 504) = v7 + 528;
  *(v7 + 512) = 16;
  *(v7 + 520) = 0;
  v15 = *(a2 + 6);
  v16 = *(a2 + 7);
  if (v15 != v16)
  {
    while (1)
    {
      v31 = *v15;
      v32 = *(v7 + 336);
      if (*(v7 + 344) != v32)
      {
        goto LABEL_41;
      }

      v40 = *(v7 + 356);
      if (!v40)
      {
        break;
      }

      v41 = 8 * v40;
      v42 = *(v7 + 336);
      while (*v42 != v31)
      {
        ++v42;
        v41 -= 8;
        if (!v41)
        {
          goto LABEL_57;
        }
      }

LABEL_42:
      v33 = v31;
      do
      {
        v33 = *v33;
        if (!v33)
        {
          goto LABEL_39;
        }

        v34 = *(*(v33 + 2) + 16);
        Parent = mlir::Block::getParent(a2);
      }

      while (mlir::Region::findAncestorBlockInRegion(Parent, v34) == a2);
      v36 = *(v7 + 176);
      if (*(v7 + 184) != v36)
      {
        goto LABEL_38;
      }

      v37 = *(v7 + 196);
      if (v37)
      {
        v38 = 8 * v37;
        v39 = *(v7 + 176);
        while (*v39 != v31)
        {
          ++v39;
          v38 -= 8;
          if (!v38)
          {
            goto LABEL_50;
          }
        }

LABEL_39:
        if (++v15 == v16)
        {
          goto LABEL_18;
        }

        continue;
      }

LABEL_50:
      if (v37 >= *(v7 + 192))
      {
LABEL_38:
        llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 176), v31);
        goto LABEL_39;
      }

      *(v7 + 196) = v37 + 1;
      *(v36 + 8 * v37) = v31;
      if (++v15 == v16)
      {
        goto LABEL_18;
      }
    }

LABEL_57:
    if (v40 < *(v7 + 352))
    {
      *(v7 + 356) = v40 + 1;
      *(v32 + 8 * v40) = v31;
      goto LABEL_42;
    }

LABEL_41:
    llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 336), *v15);
    goto LABEL_42;
  }

LABEL_18:
  v17 = a2 + 32;
  v18 = *(a2 + 5);
  if (v18 != (a2 + 32))
  {
    v49 = v3;
    do
    {
      ZinIrHalH13g::~ZinIrHalH13g(v18);
      v20 = *(v19 + 36);
      if (v20)
      {
        v21 = v19 - 16;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = 0;
        while (1)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v22);
          v24 = NextResultAtOffset;
          do
          {
            v24 = *v24;
            if (!v24)
            {
              goto LABEL_27;
            }

            v25 = *(*(v24 + 2) + 16);
            v26 = mlir::Block::getParent(a2);
          }

          while (mlir::Region::findAncestorBlockInRegion(v26, v25) == a2);
          v27 = *(v7 + 176);
          if (*(v7 + 184) != v27)
          {
            break;
          }

          v28 = *(v7 + 196);
          if (v28)
          {
            v29 = 8 * v28;
            v30 = *(v7 + 176);
            while (*v30 != NextResultAtOffset)
            {
              ++v30;
              v29 -= 8;
              if (!v29)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
LABEL_36:
            if (v28 >= *(v7 + 192))
            {
              break;
            }

            *(v7 + 196) = v28 + 1;
            *(v27 + 8 * v28) = NextResultAtOffset;
          }

LABEL_27:
          if (++v22 == v20)
          {
            goto LABEL_20;
          }
        }

        llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 176), NextResultAtOffset);
        goto LABEL_27;
      }

LABEL_20:
      v18 = *(v18 + 1);
      v17 = a2 + 32;
    }

    while (v18 != (a2 + 32));
    v18 = *(a2 + 5);
    v14 = v7 + 8;
    v3 = v49;
  }

  v51[0] = v14;
  if (v18 != v17)
  {
    do
    {
      v43 = *(v18 + 1);
      ZinIrHalH13g::~ZinIrHalH13g(v18);
      v18 = v43;
    }

    while (v43 != v17);
  }

  llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(v7 + 496, v7 + 336);
LABEL_63:
  {
    v45 = *a2;
    if (v45)
    {
      v46 = v3[1];
      do
      {
        v50 = mlir::PredecessorIterator::unwrap(v45);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v46, &v50, v51);
        if (v52 == 1)
        {
          v47 = v50;
          v48 = *(v46 + 32);
          if (v48 >= *(v46 + 36))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v46 + 24, (v46 + 40), v48 + 1, 8);
            v48 = *(v46 + 32);
          }

          *(*(v46 + 24) + 8 * v48) = v47;
          ++*(v46 + 32);
        }

        v45 = *v45;
      }

      while (v45);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::LookupBucketFor<mlir::Block *>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 656 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
LABEL_3:
      *a4 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 656 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a4 = v6;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(656 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 656 * v10 - 656;
    if (v11 >= 0x290)
    {
      v16 = v11 / 0x290 + 1;
      v12 = &result[82 * (v16 & 0xFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[82] = -4096;
        v17 += 164;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v21 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v22 = *(a1 + 16);
              if (v22)
              {
                v23 = v22 - 1;
                v24 = v23 & ((v21 >> 4) ^ (v21 >> 9));
                v25 = (*a1 + 656 * v24);
                v26 = *v25;
                if (*v25 != v21)
                {
                  v27 = 0;
                  v28 = 1;
                  while (v26 != -4096)
                  {
                    if (v27)
                    {
                      v29 = 0;
                    }

                    else
                    {
                      v29 = v26 == -8192;
                    }

                    if (v29)
                    {
                      v27 = v25;
                    }

                    v30 = v24 + v28++;
                    v24 = v30 & v23;
                    v25 = (*a1 + 656 * v24);
                    v26 = *v25;
                    if (*v25 == v21)
                    {
                      goto LABEL_32;
                    }
                  }

                  if (v27)
                  {
                    v25 = v27;
                  }
                }
              }

              else
              {
                v25 = 0;
              }

LABEL_32:
              *v25 = v21;
              v25[1] = *(v20 + 1);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 2), v25 + 6, 16, v20 + 2);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 22), v25 + 26, 16, v20 + 22);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 42), v25 + 46, 16, v20 + 42);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 62), v25 + 66, 16, v20 + 62);
              ++*(a1 + 8);
              v31 = *(v20 + 63);
              if (v31 != *(v20 + 62))
              {
                free(v31);
              }

              v32 = *(v20 + 43);
              if (v32 != *(v20 + 42))
              {
                free(v32);
              }

              v33 = *(v20 + 23);
              if (v33 != *(v20 + 22))
              {
                free(v33);
              }

              v34 = *(v20 + 3);
              if (v34 != *(v20 + 2))
              {
                free(v34);
              }
            }

            v20 = (v20 + 656);
          }

          while (v20 != (v4 + 656 * v3));
        }

        llvm::deallocate_buffer(v4, (656 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[82 * v10];
    do
    {
      *v12 = -4096;
      v12 += 82;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 656 * v13 - 656;
    if (v14 < 0x290)
    {
      v15 = result;
LABEL_49:
      v38 = &result[82 * v13];
      do
      {
        *v15 = -4096;
        v15 += 82;
      }

      while (v15 != v38);
      return result;
    }

    v35 = v14 / 0x290 + 1;
    v15 = &result[82 * (v35 & 0xFFFFFFFFFFFFFELL)];
    v36 = result;
    v37 = v35 & 0xFFFFFFFFFFFFFELL;
    do
    {
      *v36 = -4096;
      v36[82] = -4096;
      v36 += 164;
      v37 -= 2;
    }

    while (v37);
    if (v35 != (v35 & 0xFFFFFFFFFFFFFELL))
    {
      goto LABEL_49;
    }
  }

  return result;
}

uint64_t llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 20) - *(result + 24) >= (*(a2 + 20) - *(a2 + 24)))
  {
    v3 = *(a2 + 8);
    v4 = 16;
    if (v3 == *a2)
    {
      v4 = 20;
    }

    v5 = *(a2 + v4);
    if (v5)
    {
      v6 = 8 * v5;
      for (i = *(a2 + 8); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
      {
        v6 -= 8;
        if (!v6)
        {
          return result;
        }
      }
    }

    else
    {
      i = *(a2 + 8);
    }

    v8 = (v3 + 8 * v5);
    while (i != v8)
    {
      v9 = *i;
      v10 = *v2;
      if (*(v2 + 8) == *v2)
      {
        v11 = *(v2 + 20);
        if (v11)
        {
          v12 = 8 * v11;
          v13 = *v2;
          while (*v13 != v9)
          {
            ++v13;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_25;
            }
          }

          v14 = v11 - 1;
          *(v2 + 20) = v14;
          *v13 = v10[v14];
        }
      }

      else
      {
        result = llvm::SmallPtrSetImplBase::doFind(v2, v9);
        if (result)
        {
          *result = -2;
          ++*(v2 + 24);
        }
      }

      do
      {
LABEL_25:
        ++i;
      }

      while (i != v8 && *i >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

  else
  {

    return llvm::SmallPtrSetImpl<mlir::Value>::remove_if<void llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(llvm::SmallPtrSet<mlir::Value,16u> &,llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(llvm::SmallPtrSet<mlir::Value,16u> const&)#1}>(result, a2);
  }

  return result;
}

uint64_t llvm::SmallPtrSetImpl<mlir::Value>::remove_if<void llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(llvm::SmallPtrSet<mlir::Value,16u> &,llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(llvm::SmallPtrSet<mlir::Value,16u> const&)#1}>(uint64_t a1, const void ***this)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5 != *a1)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = &v5[v6];
      while (1)
      {
        v9 = *v5;
        if (*v5 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          break;
        }

LABEL_4:
        if (++v5 == v8)
        {
          return v7 & 1;
        }
      }

      v10 = *this;
      v11 = this[1];
      if (v11 == *this)
      {
        v16 = *(this + 5);
        if (v16)
        {
          v17 = 8 * v16;
          while (*v10 != v9)
          {
            ++v10;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_20;
            }
          }

          if (v10 == &this[1][*(this + 5)])
          {
            goto LABEL_4;
          }

LABEL_25:
          *v5 = -2;
          ++*(a1 + 24);
          v7 = 1;
          goto LABEL_4;
        }

LABEL_20:
        v12 = &v11[v16];
        v13 = this[1];
      }

      else
      {
        v12 = llvm::SmallPtrSetImplBase::doFind(this, v9);
        v11 = *this;
        v13 = this[1];
        if (!v12)
        {
          if (v13 == v11)
          {
            v14 = 20;
          }

          else
          {
            v14 = 16;
          }

          if (v13 == v11)
          {
            v15 = 20;
          }

          else
          {
            v15 = 16;
          }

          if (&v13[*(this + v14)] == &v13[*(this + v15)])
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }
      }

      if (v13 == v11)
      {
        v18 = 20;
      }

      else
      {
        v18 = 16;
      }

      if (v12 == &v13[*(this + v18)])
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    goto LABEL_49;
  }

  v19 = *(a1 + 20);
  if (!v19)
  {
LABEL_49:
    v7 = 0;
    return v7 & 1;
  }

  v7 = 0;
  v20 = &v4[v19];
  do
  {
    while (1)
    {
      v21 = *v4;
      v22 = *this;
      v23 = this[1];
      if (v23 == *this)
      {
        v26 = *(this + 5);
        if (v26)
        {
          v27 = 8 * v26;
          while (*v22 != v21)
          {
            ++v22;
            v27 -= 8;
            if (!v27)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
LABEL_41:
          v22 = &v23[v26];
        }

        v24 = this[1];
      }

      else
      {
        v22 = llvm::SmallPtrSetImplBase::doFind(this, v21);
        v23 = *this;
        v24 = this[1];
        if (!v22)
        {
          if (v24 == v23)
          {
            v25 = 20;
          }

          else
          {
            v25 = 16;
          }

          v22 = &v24[*(this + v25)];
        }
      }

      v28 = v24 == v23 ? 20 : 16;
      if (v22 != &v24[*(this + v28)])
      {
        break;
      }

      if (++v4 == v20)
      {
        return v7 & 1;
      }
    }

    v29 = *--v20;
    *v4 = v29;
    --*(a1 + 20);
    v7 = 1;
  }

  while (v4 != v20);
  return v7 & 1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 2);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

int64x2_t *llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = (result + 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL));
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          v10->i64[0] = -4096;
          v10 = (v10 + 8);
        }

        while (v10 != (result + 8 * v11));
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = ((v28 >> 4) ^ (v28 >> 9)) & v18;
          v27 = &result->i8[8 * v29];
          v30 = *v27;
          if (v28 != *v27)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v27;
              }

              v34 = v29 + v32++;
              v29 = v34 & v18;
              v27 = &result->i8[8 * (v34 & v18)];
              v30 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v31)
            {
              v27 = v31;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = (result + 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL));
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = (result + 8 * v20);
      do
      {
        v10->i64[0] = -4096;
        v10 = (v10 + 8);
      }

      while (v10 != v26);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 336 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 336 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(336 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::moveFromOldBuckets(a1, v4, &v4[42 * v3]);

    llvm::deallocate_buffer(v4, (336 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 336 * v10 - 336;
    if (v11 < 0x150)
    {
      v12 = result;
LABEL_14:
      v16 = &result[42 * v10];
      do
      {
        *v12 = -4096;
        v12 += 42;
      }

      while (v12 != v16);
      return result;
    }

    v13 = v11 / 0x150 + 1;
    v12 = &result[42 * (v13 & 0x1FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v13 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      v14[42] = -4096;
      v14 += 84;
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0x1FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 336 * v6 - 336;
    if (v8 < 0x150)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[42 * v6];
      do
      {
        *v9 = -4096;
        v9 += 42;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x150 + 1;
    v9 = &v7[42 * (v10 & 0x1FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[42] = -4096;
      v11 += 84;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & ((v14 >> 4) ^ (v14 >> 9));
          v18 = (*a1 + 336 * v17);
          v19 = *v18;
          if (v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -4096)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -8192;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = (*a1 + 336 * v17);
              v19 = *v18;
              if (v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        v18[1] = v4[1];
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v18 + 2), v18 + 6, 16, v4 + 2);
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v18 + 22), v18 + 26, 16, v4 + 22);
        ++*(a1 + 8);
        v24 = v4[23];
        if (v24 != v4[22])
        {
          free(v24);
        }

        v25 = v4[3];
        if (v25 != v4[2])
        {
          free(v25);
        }
      }

      v4 += 42;
    }

    while (v4 != a3);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void *llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v25 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v26 >> 47) ^ v26);
          v28 = (-348639895 * ((v27 >> 47) ^ v27)) & v16;
          v23 = &result[2 * v28];
          v29 = *v23;
          if (v25 != *v23)
          {
            v30 = 0;
            v31 = 1;
            while (v29 != -4096)
            {
              if (v30)
              {
                v32 = 0;
              }

              else
              {
                v32 = v29 == -8192;
              }

              if (v32)
              {
                v30 = v23;
              }

              v33 = v28 + v31++;
              v28 = v33 & v16;
              v23 = &result[2 * (v33 & v16)];
              v29 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v30)
            {
              v23 = v30;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (*a1 + 16 * (v12 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v9)
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v13 = *(a1 + 8);
  if (4 * v13 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v13 = *(v16 + 8);
    v7 = v17;
    goto LABEL_15;
  }

  if (v2 + ~v13 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v13 + 1;
  if (*v7 != -4096)
  {
    --*(a1 + 12);
  }

  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

const char *llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsTerminator<Empty>]";
  v6 = 84;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(uint64_t this)
{
  v1 = (this + 96);
  v2 = *(this + 96) + 40 * *(this + 104);
  v3 = *(v2 - 24);
  if (v3 != *(v2 - 8))
  {
    v4 = this;
    while (1)
    {
      v7 = *(v2 - 32);
      *(v2 - 24) = v3 + 1;
      v8 = *(v7 + 32 * v3 + 24);
      v15 = v8;
      v9 = *v4;
      if (*(v4 + 8) == *v4)
      {
        v11 = *(v4 + 20);
        if (v11)
        {
          v12 = 8 * v11;
          v13 = *v4;
          while (*v13 != v8)
          {
            ++v13;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_7;
        }

LABEL_15:
        if (v11 < *(v4 + 16))
        {
          break;
        }
      }

      this = llvm::SmallPtrSetImplBase::insert_imp_big(v4, v8);
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_7:
      v2 = *(v4 + 96) + 40 * *(v4 + 104);
      v3 = *(v2 - 24);
      if (v3 == *(v2 - 8))
      {
        return this;
      }
    }

    *(v4 + 20) = v11 + 1;
    v9[v11] = v8;
LABEL_5:
    mlir::SuccessorRange::SuccessorRange(&v16, v15);
    v14 = v16;
    this = mlir::SuccessorRange::SuccessorRange(&v16, v15);
    v5 = *(v4 + 104);
    if (v5 >= *(v4 + 108))
    {
      this = llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v1, &v15, &v14, &v16);
    }

    else
    {
      v6 = *(v4 + 96) + 40 * v5;
      *v6 = v15;
      *(v6 + 8) = v14;
      *(v6 + 24) = v16;
      ++*(v4 + 104);
    }

    goto LABEL_7;
  }

  return this;
}

unint64_t llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(unint64_t *a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v15 = *a2;
  v4 = *a4;
  v16 = *a3;
  v17 = v4;
  v5 = *(a1 + 2);
  v6 = *a1;
  v7 = &v15;
  if (v5 >= *(a1 + 3))
  {
    if (v6 <= &v15 && v6 + 40 * v5 > &v15)
    {
      v13 = &v15 - v6;
      v14 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v5 + 1, 40);
      a1 = v14;
      v6 = *v14;
      v7 = &v13[*v14];
    }

    else
    {
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v5 + 1, 40);
      a1 = v12;
      v6 = *v12;
      v7 = &v15;
    }
  }

  v8 = v6 + 40 * *(a1 + 2);
  v9 = *v7;
  v10 = *(v7 + 1);
  *(v8 + 32) = *(v7 + 4);
  *v8 = v9;
  *(v8 + 16) = v10;
  LODWORD(v8) = *(a1 + 2) + 1;
  *(a1 + 2) = v8;
  return *a1 + 40 * v8 - 40;
}

void **llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(void **result, void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 2)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      result[1] = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_20;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 2);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = *result;
        v13 = &v2[5 * v7];
        do
        {
          *v12 = *v2;
          *(v12 + 8) = *(v2 + 1);
          *(v12 + 24) = *(v2 + 3);
          v2 += 5;
          v12 += 40;
        }

        while (v2 != v13);
      }

      *(result + 2) = v7;
      goto LABEL_20;
    }

    if (*(result + 3) >= v7)
    {
      if (v8)
      {
        v14 = &v2[5 * v8];
        v10 = result;
        v15 = *result;
        do
        {
          *v15 = *v2;
          *(v15 + 8) = *(v2 + 1);
          *(v15 + 24) = *(v2 + 3);
          v2 += 5;
          v15 += 40;
        }

        while (v2 != v14);
        v11 = *v6 - v8;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      *(result + 2) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v7, 40);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_19;
      }
    }

    memcpy(*v10 + 40 * v8, *a2 + 40 * v8, 40 * v11);
LABEL_19:
    result = v10;
    *(v10 + 2) = v7;
LABEL_20:
    *v6 = 0;
  }

  return result;
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(uint64_t a1, mlir::Block *a2)
{
  v9 = a2;
  *(a1 + 32) = a2;
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 32;
  *(a1 + 24) = 0;
  *(a1 + 96) = a1 + 112;
  v4 = (a1 + 96);
  *(a1 + 104) = 0x800000000;
  *(a1 + 16) = 0x100000008;
  mlir::SuccessorRange::SuccessorRange(&v10, a2);
  v8 = v10;
  mlir::SuccessorRange::SuccessorRange(&v10, a2);
  v5 = *(a1 + 104);
  if (v5 >= *(a1 + 108))
  {
    llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v4, &v9, &v8, &v10);
  }

  else
  {
    v6 = *(a1 + 96) + 40 * v5;
    *v6 = a2;
    *(v6 + 8) = v8;
    *(v6 + 24) = v10;
    ++*(a1 + 104);
  }

  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(a1);
  return a1;
}

void mlir::arith::ConstantOp::getAsmResultNames(mlir::arith::ConstantOp *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v5 = *(*a1 - 8);
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(a1);
  if (*(*ValueAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = ValueAttr;
  }

  else
  {
    v7 = 0;
  }

  v35 = v7;
  if (v7)
  {
    v8 = v5 & 0xFFFFFFFFFFFFFFF8;
    if (*(*(v5 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v9 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v9 = 0;
    }

    v34 = v9;
    if (v9 && mlir::IntegerType::getWidth(&v34) == 1)
    {
      if (*(*a1 + 36))
      {
        v10 = *a1 - 16;
      }

      else
      {
        v10 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
      Int = mlir::IntegerAttr::getInt(&v35);
      if (Int)
      {
        v13 = 4;
      }

      else
      {
        v13 = 5;
      }

      if (Int)
      {
        v14 = "true";
      }

      else
      {
        v14 = "false";
      }

      a2(a3, NextResultAtOffset, v14, v13);
    }

    else
    {
      v36 = v38;
      v37 = xmmword_1A75A2980;
      v27 = 2;
      v31 = 0;
      v32 = 1;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      v26 = &unk_1F1A36338;
      v33 = &v36;
      llvm::raw_ostream::SetBufferAndMode(&v26, 0, 0, 0);
      v15 = v30;
      if (v30 >= v29)
      {
        v16 = llvm::raw_ostream::write(&v26, 99);
      }

      else
      {
        ++v30;
        *v15 = 99;
        v16 = &v26;
      }

      mlir::IntegerAttr::getValue(&v35, &v24);
      llvm::APInt::print(&v24, v16, 1);
      if (v25 >= 0x41 && v24)
      {
        MEMORY[0x1AC55A040](v24, 0x1000C8000313F17);
      }

      if (v34)
      {
        v19 = v30;
        if (v30 >= v29)
        {
          v20 = llvm::raw_ostream::write(&v26, 95);
        }

        else
        {
          ++v30;
          *v19 = 95;
          v20 = &v26;
        }

        v24 = v8;
        mlir::Type::print(&v24, v20);
      }

      if (*(*a1 + 36))
      {
        v21 = *a1 - 16;
      }

      else
      {
        v21 = 0;
      }

      v22 = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
      a2(a3, v22, *v33, v33[1]);
      llvm::raw_ostream::~raw_ostream(&v26);
      if (v36 != v38)
      {
        free(v36);
      }
    }
  }

  else
  {
    if (*(*a1 + 36))
    {
      v17 = *a1 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);

    a2(a3, v18, "cst", 3);
  }
}

BOOL mlir::arith::ConstantOp::verify(mlir::arith::ConstantOp *this)
{
  v87 = *MEMORY[0x1E69E9840];
  v2 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(this);
  v76 = v3;
  if (mlir::FunctionOpInterface::getFunctionType(&ValueAttr) != v2)
  {
    v71 = 257;
    mlir::OpState::emitOpError(this, v70, &ValueAttr);
    if (ValueAttr)
    {
      LODWORD(v72) = 3;
      v73 = "value type ";
      v74 = 11;
      v16 = &v72;
      v17 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v65 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v17 = v77;
          v16 = v77 + v65;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v16 = &v72;
          v17 = v77;
        }
      }

      v18 = &v17[24 * v78];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v78;
    }

    v69[0] = mlir::arith::ConstantOp::getValueAttr(this);
    v69[1] = v20;
    FunctionType = mlir::FunctionOpInterface::getFunctionType(v69);
    if (ValueAttr)
    {
      v22 = &v72;
      mlir::DiagnosticArgument::DiagnosticArgument(&v72, FunctionType);
      v23 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v66 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v23 = v77;
          v22 = v77 + v66;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v22 = &v72;
          v23 = v77;
        }
      }

      v24 = &v23[24 * v78];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v78;
      if (ValueAttr)
      {
        LODWORD(v72) = 3;
        v73 = " must match return type: ";
        v74 = 25;
        v27 = &v72;
        v28 = v77;
        if (v26 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v26 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v26 + 1, 24);
            v28 = v77;
            v27 = v77 + v67;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v26 + 1, 24);
            v27 = &v72;
            v28 = v77;
          }
        }

        v29 = &v28[24 * v78];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v78;
        if (ValueAttr)
        {
          v31 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v2);
          v32 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v68 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v32 = v77;
              v31 = v77 + v68;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v31 = &v72;
              v32 = v77;
            }
          }

          v33 = &v32[24 * v78];
          v34 = *v31;
          *(v33 + 2) = *(v31 + 2);
          *v33 = v34;
          ++v78;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
    if (ValueAttr)
    {
      mlir::InFlightDiagnostic::report(&ValueAttr);
    }

    if (v86 == 1)
    {
      if (v85 != &v86)
      {
        free(v85);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v84;
        v37 = __p;
        if (v84 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v84 = v35;
        operator delete(v37);
      }

      v38 = v81;
      if (!v81)
      {
        goto LABEL_109;
      }

      v39 = v82;
      v40 = v81;
      if (v82 == v81)
      {
        goto LABEL_108;
      }

      do
      {
        v42 = *--v39;
        v41 = v42;
        *v39 = 0;
        if (v42)
        {
          MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
        }
      }

      while (v39 != v38);
      goto LABEL_107;
    }

    return v12;
  }

  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ValueAttr = v2;
    if (mlir::IntegerType::getSignedness(&ValueAttr))
    {
      v70[0] = "integer return type must be signless";
      v71 = 259;
      mlir::OpState::emitOpError(this, v70, &ValueAttr);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
      if (ValueAttr)
      {
        mlir::InFlightDiagnostic::report(&ValueAttr);
      }

      if (v86 == 1)
      {
        if (v85 != &v86)
        {
          free(v85);
        }

        v52 = __p;
        if (__p)
        {
          v53 = v84;
          v54 = __p;
          if (v84 != __p)
          {
            do
            {
              v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
            }

            while (v53 != v52);
            v54 = __p;
          }

          v84 = v52;
          operator delete(v54);
        }

        v38 = v81;
        if (!v81)
        {
          goto LABEL_109;
        }

        v55 = v82;
        v40 = v81;
        if (v82 == v81)
        {
LABEL_108:
          v82 = v38;
          operator delete(v40);
LABEL_109:
          if (v77 != v80)
          {
            free(v77);
          }

          return v12;
        }

        do
        {
          v57 = *--v55;
          v56 = v57;
          *v55 = 0;
          if (v57)
          {
            MEMORY[0x1AC55A040](v56, 0x1000C8077774924);
          }
        }

        while (v55 != v38);
LABEL_107:
        v40 = v81;
        goto LABEL_108;
      }

      return v12;
    }
  }

  v4 = mlir::arith::ConstantOp::getValueAttr(this);
  v5 = *v4;
  v6 = *(*v4 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    goto LABEL_8;
  }

  {
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v5 + 8);
    v45 = *(v5 + 16);
    if (!v45)
    {
      goto LABEL_91;
    }
  }

  else
  {
    mlir::arith::ConstantOp::verify();
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v5 + 8);
    v45 = *(v5 + 16);
    if (!v45)
    {
      goto LABEL_91;
    }
  }

  v46 = v44;
  v47 = v45;
  do
  {
    v48 = v47 >> 1;
    v49 = &v46[2 * (v47 >> 1)];
    v51 = *v49;
    v50 = v49 + 2;
    v47 += ~(v47 >> 1);
    if (v51 < v43)
    {
      v46 = v50;
    }

    else
    {
      v47 = v48;
    }
  }

  while (v47);
  if (v46 != &v44[2 * v45] && *v46 == v43 && v46[1])
  {
LABEL_8:
    if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    v72 = v8;
    if (!v8)
    {
      return 1;
    }

    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v72);
    v11 = v10;
    v12 = 1;
    v13 = memchr(RawStringData, 1, v10);
    if (!v13 || v13 == &RawStringData[v11])
    {
      return v12;
    }

    v14 = mlir::arith::ConstantOp::getValueAttr(this);
    v15 = mlir::DenseElementsAttr::classof(v14) ? v14 : 0;
    ValueAttr = v15;
    if (v15)
    {
      if (mlir::DenseElementsAttr::isSplat(&ValueAttr))
      {
        return 1;
      }
    }

    v70[0] = "intializing scalable vectors with elements attribute is not supported unless it's a vector splat";
    v71 = 259;
    mlir::OpState::emitOpError(this, v70, &ValueAttr);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
    if (ValueAttr)
    {
      mlir::InFlightDiagnostic::report(&ValueAttr);
    }

    if (v86 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v76);
    }

    return v12;
  }

LABEL_91:
  v70[0] = "value must be an integer, float, or elements attribute";
  v71 = 259;
  mlir::OpState::emitOpError(this, v70, &ValueAttr);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
  if (ValueAttr)
  {
    mlir::InFlightDiagnostic::report(&ValueAttr);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v58 = __p;
    if (__p)
    {
      v59 = v84;
      v60 = __p;
      if (v84 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v84 = v58;
      operator delete(v60);
    }

    v38 = v81;
    if (!v81)
    {
      goto LABEL_109;
    }

    v61 = v82;
    v40 = v81;
    if (v82 == v81)
    {
      goto LABEL_108;
    }

    do
    {
      v63 = *--v61;
      v62 = v63;
      *v61 = 0;
      if (v63)
      {
        MEMORY[0x1AC55A040](v62, 0x1000C8077774924);
      }
    }

    while (v61 != v38);
    goto LABEL_107;
  }

  return v12;
}