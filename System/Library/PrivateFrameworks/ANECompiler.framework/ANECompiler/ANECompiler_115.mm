float ZinIrVector::GetSingularVal(ZinIrVector *this)
{
  if ((*(this + 328) & 1) == 0)
  {
    ZinAssertImpl("Trying to get singular value of a non-singular vector", v1, v2);
  }

  return *(this + 81);
}

uint64_t ZinIrVector::GetAt<half>(uint64_t result)
{
  if (*(result + 328) == 1)
  {
    _S0 = *(result + 324);
    __asm { FCVT            H0, S0 }
  }

  else
  {
    v8 = *(result + 136);
    if (!v8)
    {
      ZinAssertImpl("Const data is null for GetAt call", v1, v2);
    }

    v9 = *(*v8 + 56);

    return v9();
  }

  return result;
}

uint64_t ZinIrVector::GetAt<float>(uint64_t result)
{
  if (*(result + 328) != 1)
  {
    v3 = *(result + 136);
    if (!v3)
    {
      ZinAssertImpl("Const data is null for GetAt call", v1, v2);
    }

    v4 = *(*v3 + 40);

    return v4();
  }

  return result;
}

uint64_t ZinIrVector::GetAt<e4m3_t>(uint64_t a1)
{
  if (*(a1 + 328) == 1)
  {
    v3 = *(a1 + 324);

    return ZinF32ToE4M3(v3, 1, 0);
  }

  else
  {
    v5 = *(a1 + 136);
    if (!v5)
    {
      ZinAssertImpl("Const data is null for GetAt call", v1, v2);
    }

    v6 = *(*v5 + 88);

    return v6();
  }
}

uint64_t ZinIrVector::GetAt<signed char>(uint64_t a1)
{
  if (*(a1 + 328) == 1)
  {
    return *(a1 + 324);
  }

  v4 = *(a1 + 136);
  if (!v4)
  {
    ZinAssertImpl("Const data is null for GetAt call", v1, v2);
  }

  v5 = *(*v4 + 72);

  return v5();
}

uint64_t ZinIrVector::GetAt<unsigned char>(uint64_t a1)
{
  if (*(a1 + 328) == 1)
  {
    return *(a1 + 324);
  }

  v4 = *(a1 + 136);
  if (!v4)
  {
    ZinAssertImpl("Const data is null for GetAt call", v1, v2);
  }

  v5 = *(*v4 + 120);

  return v5();
}

uint64_t ZinIrVector::GetValueAsInt32(ZinIrVector *this)
{
  v1 = *(this + 2);
  if (v1 == 1)
  {
    return ZinIrVector::GetAt<signed char>(this);
  }

  if (v1 == 2)
  {
    return ZinIrVector::GetAt<unsigned char>(this);
  }

  return 0;
}

void sub_1A69EADC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MEMORY[0x1AC55A070](v10, 0x10B3C40C4A76B87, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A69EAEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MEMORY[0x1AC55A070](v10, 0x10B3C40C4A76B87, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A69EAFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MEMORY[0x1AC55A070](v10, 0x10B3C40C4A76B87, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void ZinIrVector::GetValuesAsVector<float>(ZinIrVector *a1@<X0>, std::vector<unsigned int>::size_type a2@<X1>, int a3@<W2>, std::vector<unsigned int> *a4@<X8>)
{
  a4->__begin_ = 0;
  a4->__end_ = 0;
  a4->__end_cap_.__value_ = 0;
  std::vector<float>::reserve(a4, a2);
  v8 = 1.0;
  if (a3)
  {
    v8 = ldexpf(1.0, *(a1 + 320));
  }

  if (a2)
  {
    v9 = 0;
    do
    {
      v10 = v8 * ZinIrVector::GetValueAsFloat(a1, v9);
      std::vector<float>::push_back[abi:ne200100](&a4->__begin_, &v10);
      ++v9;
    }

    while (a2 != v9);
  }
}

void sub_1A69EB0B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrVector::GetValuesAsVector<signed char>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      v7 = ZinIrVector::GetAt<signed char>(a1);
      std::vector<unsigned char>::push_back[abi:ne200100](a3, &v7);
      ++v6;
    }

    while (a2 != v6);
  }
}

void sub_1A69EB14C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrVector::GetValuesAsVector<unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      v7 = ZinIrVector::GetAt<unsigned char>(a1);
      std::vector<unsigned char>::push_back[abi:ne200100](a3, &v7);
      ++v6;
    }

    while (a2 != v6);
  }
}

void sub_1A69EB1E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrTransformRemap::ZinIrTransformRemap(ZinIrTransformRemap *this, const ZinTensorDimensions *a2)
{
  *this = &unk_1F19F3B88;
  *(this + 1) = &unk_1F19F3BD0;
  v2 = *a2;
  v3 = *(a2 + 1);
  *(this + 6) = *(a2 + 4);
  *(this + 1) = v2;
  *(this + 2) = v3;
}

void sub_1A69EB3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MEMORY[0x1AC55A070](v10, 0x10B3C40C4A76B87, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrTransformRemap::Serialize(ZinIrTransformRemap *this, ZinIrSerializer *a2)
{
  v4 = ZinIrSerializer::WriteUint8(a2, 2);
  v5 = ZinIrSerializer::WriteUint64(a2, *(this + 2)) + v4;
  v6 = ZinIrSerializer::WriteUint64(a2, *(this + 3));
  v7 = v5 + v6 + ZinIrSerializer::WriteUint64(a2, *(this + 4));
  return v7 + ZinIrSerializer::WriteUint64(a2, *(this + 5));
}

uint64_t ZinIrTransformRemap::DebugPrint@<X0>(void *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v8);
}

void sub_1A69EB63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void ZinIrTransformDuplicate::ZinIrTransformDuplicate(ZinIrTransformDuplicate *this, uint64_t a2, char a3)
{
  *this = &unk_1F19F3C10;
  *(this + 1) = a2;
  *(this + 16) = a3;
}

uint64_t ZinIrTransformDuplicate::Apply(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8) * *(a2 + 56);
  v6 = *(a2 + 8);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      memset(&v16, 0, sizeof(v16));
      std::vector<half>::reserve(&v16, v5);
      ZinIrTransformDuplicate::Duplicate<half>(a1, a2, &v16.__begin_);
      std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<half>,std::allocator<ZinIrConstData_specialization<half>>,std::vector<half>,0>();
    }

    if (v6 == 6)
    {
      memset(&v16, 0, sizeof(v16));
      std::vector<float>::reserve(&v16, v5);
      ZinIrTransformDuplicate::Duplicate<float>(a1, a2, &v16.__begin_);
      std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<float>,std::allocator<ZinIrConstData_specialization<float>>,std::vector<float>,0>();
    }
  }

  else
  {
    if (v6 == 1)
    {
      memset(&v16, 0, sizeof(v16));
      std::vector<unsigned char>::reserve(&v16, v5);
      ZinIrTransformDuplicate::Duplicate<signed char>(a1, a2, &v16);
      std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<signed char>,std::allocator<ZinIrConstData_specialization<signed char>>,std::vector<signed char>,0>();
    }

    if (v6 == 2)
    {
      memset(&v16, 0, sizeof(v16));
      std::vector<unsigned char>::reserve(&v16, v5);
      ZinIrTransformDuplicate::Duplicate<unsigned char>(a1, a2, &v16);
      std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<unsigned char>,std::allocator<ZinIrConstData_specialization<unsigned char>>,std::vector<unsigned char>,0>();
    }
  }

  v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v7)
  {
    ZinIrTransformDuplicate::Apply(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return 3;
}

void sub_1A69EB9C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MEMORY[0x1AC55A070](v12, 0x10B3C40C4A76B87, a3, a4, a5, a6, a7, a8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ZinIrTransformDuplicate::Duplicate<float>(uint64_t a1, uint64_t a2, const void **a3)
{
  if (*(a1 + 16))
  {
    v6 = *(a2 + 56);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 8);
      do
      {
        if (v8)
        {
          for (i = 0; i < v8; ++i)
          {
            ZinIrVector::GetAt<float>(a2);
            v17 = v10;
            std::vector<float>::push_back[abi:ne200100](a3, &v17);
            v8 = *(a1 + 8);
          }

          v6 = *(a2 + 56);
        }

        ++v7;
      }

      while (v6 > v7);
    }
  }

  else
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 0;
      v13 = *(a2 + 56);
      do
      {
        if (v13)
        {
          for (j = 0; j < v13; ++j)
          {
            ZinIrVector::GetAt<float>(a2);
            v16 = v15;
            std::vector<float>::push_back[abi:ne200100](a3, &v16);
            v13 = *(a2 + 56);
          }

          v11 = *(a1 + 8);
        }

        ++v12;
      }

      while (v11 > v12);
    }
  }
}

void ZinIrTransformDuplicate::Duplicate<half>(uint64_t a1, uint64_t a2, const void **a3)
{
  if (*(a1 + 16))
  {
    v6 = *(a2 + 56);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 8);
      do
      {
        if (v8)
        {
          for (i = 0; i < v8; ++i)
          {
            ZinIrVector::GetAt<half>(a2);
            v17 = v10;
            std::vector<half>::push_back[abi:ne200100](a3, &v17);
            v8 = *(a1 + 8);
          }

          v6 = *(a2 + 56);
        }

        ++v7;
      }

      while (v6 > v7);
    }
  }

  else
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 0;
      v13 = *(a2 + 56);
      do
      {
        if (v13)
        {
          for (j = 0; j < v13; ++j)
          {
            ZinIrVector::GetAt<half>(a2);
            v16 = v15;
            std::vector<half>::push_back[abi:ne200100](a3, &v16);
            v13 = *(a2 + 56);
          }

          v11 = *(a1 + 8);
        }

        ++v12;
      }

      while (v11 > v12);
    }
  }
}

void ZinIrTransformDuplicate::Duplicate<signed char>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v6 = *(a2 + 56);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 8);
      do
      {
        if (v8)
        {
          for (i = 0; i < v8; ++i)
          {
            v15 = ZinIrVector::GetAt<signed char>(a2);
            std::vector<unsigned char>::push_back[abi:ne200100](a3, &v15);
            v8 = *(a1 + 8);
          }

          v6 = *(a2 + 56);
        }

        ++v7;
      }

      while (v6 > v7);
    }
  }

  else
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 0;
      v12 = *(a2 + 56);
      do
      {
        if (v12)
        {
          for (j = 0; j < v12; ++j)
          {
            v14 = ZinIrVector::GetAt<signed char>(a2);
            std::vector<unsigned char>::push_back[abi:ne200100](a3, &v14);
            v12 = *(a2 + 56);
          }

          v10 = *(a1 + 8);
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }
}

void ZinIrTransformDuplicate::Duplicate<unsigned char>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v6 = *(a2 + 56);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 8);
      do
      {
        if (v8)
        {
          for (i = 0; i < v8; ++i)
          {
            v15 = ZinIrVector::GetAt<unsigned char>(a2);
            std::vector<unsigned char>::push_back[abi:ne200100](a3, &v15);
            v8 = *(a1 + 8);
          }

          v6 = *(a2 + 56);
        }

        ++v7;
      }

      while (v6 > v7);
    }
  }

  else
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 0;
      v12 = *(a2 + 56);
      do
      {
        if (v12)
        {
          for (j = 0; j < v12; ++j)
          {
            v14 = ZinIrVector::GetAt<unsigned char>(a2);
            std::vector<unsigned char>::push_back[abi:ne200100](a3, &v14);
            v12 = *(a2 + 56);
          }

          v10 = *(a1 + 8);
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }
}

uint64_t ZinIrTransformDuplicate::DebugPrint@<X0>(void *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v8);
}

void sub_1A69EBFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

__n128 ZinIrTransformShuffle::ZinIrTransformShuffle(__n128 *a1, __n128 *a2, unint64_t a3)
{
  a1->n128_u64[0] = &unk_1F19F3C50;
  *(a1 + 8) = &unk_1F19F3C98;
  *(&a1[1] + 8) = 0uLL;
  result = *a2;
  a1[1] = *a2;
  a1[2].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  a1[2].n128_u64[1] = a3;
  return result;
}

void sub_1A69EC240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MEMORY[0x1AC55A070](v10, 0x10B3C40C4A76B87, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrTransformShuffle::Serialize(ZinIrTransformShuffle *this, ZinIrSerializer *a2)
{
  v4 = (*(this + 3) - *(this + 2)) >> 3;
  v5 = ZinIrSerializer::WriteUint8(a2, 3);
  v6 = ZinIrSerializer::WriteUint64(a2, v4) + v5;
  v8 = *(this + 2);
  v7 = *(this + 3);
  while (v8 != v7)
  {
    v9 = *v8++;
    v6 += ZinIrSerializer::WriteUint64(a2, v9);
  }

  return v6;
}

uint64_t ZinIrTransformShuffle::DebugPrint@<X0>(void *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v8);
}

void sub_1A69EC484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *ZinIrVectorEWMultiply::ZinIrVectorEWMultiply(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_1F19F3CD8;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ZinIrVectorEWMultiply::Apply(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 56) == 1)
  {
    v5 = *(*(a1 + 8) + 56);
  }

  else
  {
    v5 = *(a2 + 56);
  }

  memset(&v13, 0, sizeof(v13));
  std::vector<float>::reserve(&v13, v5);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      ZinIrVector::GetAt<float>(a2);
      v8 = v7;
      if (*(a2 + 320) >= 1)
      {
        v9 = (1 << *(a2 + 320));
      }

      else
      {
        v9 = 1.0 / (1 << -*(a2 + 320));
      }

      ZinIrVector::GetAt<float>(*(a1 + 8));
      v11 = 1.0 / (1 << -*(*(a1 + 8) + 320));
      if (*(*(a1 + 8) + 320) >= 1)
      {
        v11 = (1 << *(*(a1 + 8) + 320));
      }

      v12 = (v8 * v9) * (v10 * v11);
      std::vector<float>::push_back[abi:ne200100](&v13.__begin_, &v12);
    }
  }

  ZinDynamicRange::ZinConvertToFP32WithShift(&v13, -31, 0, &v12);
  ZinIrVector::StdvectorToVector<float>();
}

void sub_1A69EC688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

float ZinIrVector::Unshift(ZinIrVector *this, float a2)
{
  v2 = 1.0 / (1 << -this);
  if (this >= 1)
  {
    v2 = (1 << this);
  }

  return v2 * a2;
}

uint64_t ZinIrVector::Serialize(ZinIrVector *this, ZinIrSerializer *a2)
{
  if (*(this + 38) == 2)
  {
    v4 = ZinIrSerializer::WriteUint8(a2, 1);
    SourceFileInfo = ZinIrWeightBase::GetSourceFileInfo(this);
    v6 = SourceFileInfo;
    if (*(SourceFileInfo + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *SourceFileInfo, *(SourceFileInfo + 8));
    }

    else
    {
      v7 = *SourceFileInfo;
      __p.__r_.__value_.__r.__words[2] = *(SourceFileInfo + 16);
      *&__p.__r_.__value_.__l.__data_ = v7;
    }

    v16 = *(v6 + 24);
    v28 = *(v6 + 40);
    *v27 = v16;
    v17 = ZinIrSerializer::WriteUint32(a2, 0);
    v18 = ZinIrSerializer::WriteUint64(a2, v27[0]);
    v19 = ZinIrSerializer::WriteUint64(a2, v27[1]);
    ZinIrHalH13g::~ZinIrHalH13g((this + 160));
    v21 = ZinIrSerializer::WriteUint64(a2, (v20[1] - *v20) >> 4);
    ZinIrHalH13g::~ZinIrHalH13g((this + 160));
    v9 = v17 + v4 + v18 + v19 + v21;
    v23 = *v22;
    v24 = *(v22 + 8);
    while (v23 != v24)
    {
      v9 += (*(**v23 + 16))(*v23, a2);
      v23 += 2;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else if (*(this + 328) == 1)
  {
    v8 = ZinIrSerializer::WriteUint8(a2, 2);
    if ((*(this + 328) & 1) == 0)
    {
      ZinAssertImpl("Trying to get singular value of a non-singular vector");
    }

    return ZinIrSerializer::WriteFloat32(a2, *(this + 81)) + v8;
  }

  else
  {
    v10 = ZinIrSerializer::WriteUint8(a2, 3);
    v11 = *(this + 17);
    v12 = *(this + 18);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = (*(*v11 + 24))(v11);
    v9 = ZinIrSerializer::WriteUint64(a2, v13) + v10;
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        ZinIrVector::GetAt<float>(this);
        v9 += ZinIrSerializer::WriteFloat32(a2, v15);
      }
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  return v9;
}

void sub_1A69EC984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrVectorEWMultiply::DebugPrint@<X0>(void *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v8);
}

void sub_1A69ECB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *ZinIrVectorFoldBiasWithBotScaleBotBias::ZinIrVectorFoldBiasWithBotScaleBotBias(void *result, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *result = &unk_1F19F3D18;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  result[3] = *a3;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1A69ECC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrVectorMergeBiasAndScale(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, char a5)
{
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *a4;
  v13 = a4[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    v15 = *(v11 + 56);
  }

  else
  {
    v15 = 1;
  }

  v16 = *(v9 + 56);
  if (v14)
  {
    v17 = *(v14 + 56);
  }

  else
  {
    v17 = 1;
  }

  if (v16 <= v15)
  {
    v16 = v15;
  }

  if (v17 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  memset(&v32, 0, sizeof(v32));
  if (*a4)
  {
    v19 = *(*a4 + 320);
  }

  else
  {
    v19 = 0;
  }

  if (*a3)
  {
    v20 = *(*a3 + 320);
  }

  else
  {
    v20 = 0;
  }

  std::vector<float>::reserve(&v32, v18);
  if (v18)
  {
    v21 = 0;
    if (v19 <= 0)
    {
      v22 = 1.0 / (1 << -v19);
    }

    else
    {
      v22 = (1 << v19);
    }

    if (v20 <= 0)
    {
      v23 = 1.0 / (1 << -v20);
    }

    else
    {
      v23 = (1 << v20);
    }

    do
    {
      ZinIrVector::GetAt<float>(*a1);
      v25 = v24;
      if (*a4)
      {
        ZinIrVector::GetAt<float>(*a4);
        v27 = v26;
      }

      else
      {
        v27 = 0.0;
      }

      if (*a3)
      {
        ZinIrVector::GetAt<float>(*a3);
      }

      else
      {
        v28 = 1.0;
      }

      v29 = v28 * v23;
      v30 = 1.0 / (1 << -*(*a1 + 320));
      if (*(*a1 + 320) >= 1)
      {
        v30 = (1 << *(*a1 + 320));
      }

      *&v31 = (v27 * v22) + ((v25 * v30) / v29);
      std::vector<float>::push_back[abi:ne200100](&v32.__begin_, &v31);
      ++v21;
    }

    while (v18 != v21);
  }

  if (a5)
  {
    ZinDynamicRange::ZinConvertToFP32WithShift(&v32, -16, 15, &v31);
    ZinIrVector::StdvectorToVector<float>();
  }

  ZinIrVector::StdvectorToVector<float>();
}

void sub_1A69ECFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

uint64_t ZinIrVectorFoldBiasWithBotScaleBotBias::Serialize(ZinIrVectorFoldBiasWithBotScaleBotBias *this, ZinIrSerializer *a2)
{
  v4 = ZinIrSerializer::WriteUint8(a2, 5);
  v5 = *(this + 3) != 0;
  v6 = ZinIrSerializer::WriteUint8(a2, *(this + 1) != 0) + v4;
  v7 = v6 + ZinIrSerializer::WriteUint8(a2, v5);
  v8 = *(this + 1);
  if (v8)
  {
    v7 += ZinIrVector::Serialize(v8, a2);
  }

  v9 = *(this + 3);
  if (v9)
  {
    v7 += ZinIrVector::Serialize(v9, a2);
  }

  return v7;
}

uint64_t ZinIrVectorFoldBiasWithBotScaleBotBias::DebugPrint@<X0>(void *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v8);
}

void sub_1A69ED228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *ZinIrVectorFoldBotBiasWithBotScaleBias::ZinIrVectorFoldBotBiasWithBotScaleBias(void *result, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *result = &unk_1F19F3D58;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  result[3] = *a3;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ZinIrVectorFoldBotBiasWithBotScaleBias::Apply(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[4];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector const&,0>();
}

void sub_1A69ED378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (!v11)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  goto LABEL_5;
}

uint64_t ZinIrVectorFoldBotBiasWithBotScaleBias::Serialize(ZinIrVectorFoldBotBiasWithBotScaleBias *this, ZinIrSerializer *a2)
{
  v4 = ZinIrSerializer::WriteUint8(a2, 6);
  v5 = *(this + 3) != 0;
  v6 = ZinIrSerializer::WriteUint8(a2, *(this + 1) != 0) + v4;
  v7 = v6 + ZinIrSerializer::WriteUint8(a2, v5);
  v8 = *(this + 1);
  if (v8)
  {
    v7 += ZinIrVector::Serialize(v8, a2);
  }

  v9 = *(this + 3);
  if (v9)
  {
    v7 += ZinIrVector::Serialize(v9, a2);
  }

  return v7;
}

uint64_t ZinIrVectorFoldBotBiasWithBotScaleBias::DebugPrint@<X0>(void *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v8);
}

void sub_1A69ED5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *ZinIrVectorFoldBotScaleWithBotBiasBias::ZinIrVectorFoldBotScaleWithBotBiasBias(void *result, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *result = &unk_1F19F3D98;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  result[3] = *a3;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ZinIrVectorFoldBotScaleWithBotBiasBias::Apply(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[4];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector const&,0>();
}

void sub_1A69ED724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrVectorFoldBotScaleWithBotBiasBias::Serialize(ZinIrVectorFoldBotScaleWithBotBiasBias *this, ZinIrSerializer *a2)
{
  v4 = ZinIrSerializer::WriteUint8(a2, 7);
  v5 = *(this + 3) != 0;
  v6 = ZinIrSerializer::WriteUint8(a2, *(this + 1) != 0) + v4;
  v7 = v6 + ZinIrSerializer::WriteUint8(a2, v5);
  v8 = *(this + 1);
  if (v8)
  {
    v7 += ZinIrVector::Serialize(v8, a2);
  }

  v9 = *(this + 3);
  if (v9)
  {
    v7 += ZinIrVector::Serialize(v9, a2);
  }

  return v7;
}

uint64_t ZinIrVectorFoldBotScaleWithBotBiasBias::DebugPrint@<X0>(void *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v8);
}

void sub_1A69ED96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void ZinIrVectorConvertPerCoutVectorToSingularVector::ZinIrVectorConvertPerCoutVectorToSingularVector(ZinIrVectorConvertPerCoutVectorToSingularVector *this, char a2, char a3)
{
  *this = &unk_1F19F3DD8;
  *(this + 8) = a2;
  *(this + 9) = a3;
}

void ZinIrVectorConvertPerCoutVectorToSingularVector::Apply(uint64_t a1, std::vector<unsigned int>::size_type *a2, uint64_t *a3)
{
  ZinIrVector::GetValuesAsVector<float>(a2, a2[7], 1, &v5);
  std::vector<float>::resize(&v5, 1uLL);
  ZinDynamicRange::ZinConvertToFP32WithShift(&v5, *(a1 + 8), *(a1 + 9), v4);
  ZinIrVector::StdvectorToVector<float>();
}

void sub_1A69EDA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

uint64_t ZinIrVectorConvertPerCoutVectorToSingularVector::Serialize(ZinIrVectorConvertPerCoutVectorToSingularVector *this, ZinIrSerializer *a2)
{
  v4 = ZinIrSerializer::WriteUint8(a2, 12);
  v5 = ZinIrSerializer::WriteUint8(a2, *(this + 8)) + v4;
  return v5 + ZinIrSerializer::WriteUint8(a2, *(this + 9));
}

uint64_t ZinIrVectorConvertPerCoutVectorToSingularVector::DebugPrint@<X0>(void *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v8);
}

void sub_1A69EDC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

BOOL ZinIrVector::IsQualifiedToConvertPerCoutVectorToSingularVector(ZinIrVector *this, int a2, int a3)
{
  if (*(this + 38) == 2)
  {
    return 0;
  }

  if (*(this + 328))
  {
    return 0;
  }

  v6 = *(this + 320);
  return ZinIrVector::HasSingleUniqueValue(this) && v6 >= a2 && v6 <= a3;
}

BOOL ZinIrVector::HasSingleUniqueValue(ZinIrVector *this)
{
  if (!*(this + 7))
  {
    return 0;
  }

  v2 = *(this + 2);
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
      v21 = ZinIrVector::GetAt<signed char>(this);
      if (*(this + 7) < 2uLL)
      {
        return 1;
      }

      v22 = v21;
      v23 = 2;
      do
      {
        v12 = ZinIrVector::GetAt<signed char>(this) == v22;
        result = v12;
        if (!v12)
        {
          break;
        }

        v8 = *(this + 7) > v23++;
      }

      while (v8);
    }

    else
    {
      if (v2 != 2)
      {
LABEL_37:
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ZinIrVector::HasSingleUniqueValue(result, v24, v25, v26, v27, v28, v29, v30);
          return 0;
        }

        return result;
      }

      v9 = ZinIrVector::GetAt<unsigned char>(this);
      if (*(this + 7) < 2uLL)
      {
        return 1;
      }

      v10 = v9;
      v11 = 2;
      do
      {
        v12 = ZinIrVector::GetAt<unsigned char>(this) == v10;
        result = v12;
        if (!v12)
        {
          break;
        }

        v8 = *(this + 7) > v11++;
      }

      while (v8);
    }
  }

  else
  {
    switch(v2)
    {
      case 6:
        ZinIrVector::GetAt<float>(this);
        if (*(this + 7) < 2uLL)
        {
          return 1;
        }

        v14 = v13;
        v15 = 2;
        do
        {
          ZinIrVector::GetAt<float>(this);
          result = v16 == v14;
          if (v16 != v14)
          {
            break;
          }

          v8 = *(this + 7) > v15++;
        }

        while (v8);
        break;
      case 5:
        v17 = ZinIrVector::GetAt<e4m3_t>(this);
        if (*(this + 7) < 2uLL)
        {
          return 1;
        }

        v18 = v17;
        v19 = 2;
        do
        {
          v20 = ZinIrVector::GetAt<e4m3_t>(this);
          result = v20 == v18;
          if (v20 != v18)
          {
            break;
          }

          v8 = *(this + 7) > v19++;
        }

        while (v8);
        break;
      case 4:
        ZinIrVector::GetAt<half>(this);
        if (*(this + 7) >= 2uLL)
        {
          v4 = v3;
          v5 = 2;
          do
          {
            ZinIrVector::GetAt<half>(this);
            result = v6 == v4;
            if (v6 != v4)
            {
              break;
            }

            v8 = *(this + 7) > v5++;
          }

          while (v8);
          return result;
        }

        return 1;
      default:
        goto LABEL_37;
    }
  }

  return result;
}

void ZinIrVector::ConvertSingularVectorToPerCoutVector(uint64_t *__return_ptr a1@<X8>, ZinIrVector *this@<X0>, uint64_t a3@<X1>)
{
  if ((*(this + 328) & 1) == 0)
  {
    ZinAssertImpl("This function should only be called for singular vectors.", a3);
  }

  v4 = *(this + 2);
  if (v4 == 2)
  {
    v13 = *(this + 81);
    std::vector<unsigned char>::vector[abi:ne200100](&__p, a3, &v13);
    std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<unsigned char>,std::allocator<ZinIrConstData_specialization<unsigned char>>,std::vector<unsigned char>,0>();
  }

  if (v4 == 1)
  {
    v13 = *(this + 81);
    std::vector<signed char>::vector[abi:ne200100](&__p, a3, &v13);
    std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<signed char>,std::allocator<ZinIrConstData_specialization<signed char>>,std::vector<signed char>,0>();
  }

  v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v5)
  {
    ZinIrVector::ConvertSingularVectorToPerCoutVector(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  *a1 = 0;
}

void sub_1A69EE0B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  MEMORY[0x1AC55A070](v14, 0x10B3C40C4A76B87, a3, a4, a5, a6, a7, a8);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrVector::Transform(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v30[0] = 0;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 == v7)
  {
    v8 = 0;
LABEL_7:
    v30[0] = 0;
    std::unique_ptr<ZinIrVector>::reset[abi:ne200100](a3, v8);
    __src = 0;
    v28 = 0;
    v29 = 0;
    v10 = *a2;
    v11 = *(a2 + 8);
    if (*a2 != v11)
    {
      v12 = 0;
      do
      {
        v26 = *v10;
        v13 = v10[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v10[1] + 8), 1uLL, memory_order_relaxed);
          v12 = v28;
        }

        if (v12 >= v29)
        {
          v14 = __src;
          v15 = v12 - __src;
          v16 = (v12 - __src) >> 4;
          v17 = v16 + 1;
          if ((v16 + 1) >> 60)
          {
            std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
          }

          v18 = v29 - __src;
          if ((v29 - __src) >> 3 > v17)
          {
            v17 = v18 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          v31[4] = &__src;
          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(&__src, v19);
          }

          v20 = v16;
          v21 = (16 * v16);
          v22 = &v21[-v20];
          *v21 = v26;
          v12 = (v21 + 1);
          memcpy(v22, v14, v15);
          v23 = __src;
          v24 = v29;
          __src = v22;
          v28 = v12;
          v29 = 0;
          v31[2] = v23;
          v31[3] = v24;
          v31[0] = v23;
          v31[1] = v23;
          std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(v31);
        }

        else
        {
          *v12 = v26;
          *(v12 + 1) = v13;
          v12 += 16;
        }

        v28 = v12;
        v10 += 2;
      }

      while (v10 != v11);
    }

    ZinIrWeightBase::SetupRunTimeMutableHistory(a1, *a3, &__src);
    v31[0] = &__src;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v31);
    v9 = 0;
  }

  else
  {
    v8 = a1;
    while (1)
    {
      v9 = (*(**v6 + 40))(*v6, v8, v30);
      if (v9)
      {
        break;
      }

      v8 = v30[0];
      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_7;
      }
    }
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v30, 0);
  return v9;
}

void sub_1A69EE32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a16, 0);
  _Unwind_Resume(a1);
}

BOOL ZinIrVector::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2 != *(a2 + 56))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    return 0;
  }

  if (v5 != 4)
  {
    if (v5 == 6)
    {
      if (v2 >= 2)
      {
        v6 = 2;
        do
        {
          ZinIrVector::GetAt<float>(a1);
          v8 = v7;
          ZinIrVector::GetAt<float>(a2);
          result = v8 == v9;
          if (v8 != v9)
          {
            break;
          }

          v11 = *(a1 + 56) > v6++;
        }

        while (v11);
        return result;
      }

      return 1;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ZinIrVector::operator==(result, v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  if (v2 < 2)
  {
    return 1;
  }

  v12 = 2;
  do
  {
    ZinIrVector::GetAt<half>(a1);
    v14 = v13;
    ZinIrVector::GetAt<half>(a2);
    result = v14 == v15;
    if (v14 != v15)
    {
      break;
    }

    v11 = *(a1 + 56) > v12++;
  }

  while (v11);
  return result;
}

void sub_1A69EE670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *(v3 + 144);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  MEMORY[0x1AC55A070](v3, v4);
  _Unwind_Resume(a1);
}

void ZinIrVector::Clone(uint64_t *__return_ptr a1@<X8>, ZinIrVector *this@<X0>)
{
  if ((*(this + 328) & 1) == 0)
  {
    operator new();
  }

  v3 = *(this + 2);
  if (v3 > 3)
  {
    if (v3 == 6 || v3 == 4)
    {
      operator new();
    }
  }

  else
  {
    if (v3 == 1)
    {
      operator new();
    }

    if (v3 == 2)
    {
      operator new();
    }
  }

  v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v5)
  {
    ZinIrVector::Clone(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  *a1 = 0;
}

BOOL ZinIrVector::HasAllZero(ZinIrVector *this)
{
  if (*(this + 328) == 1)
  {
    return *(this + 81) == 0.0;
  }

  v3 = *(this + 17);
  v4 = *(this + 18);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HasAllZero = ZinIrConstData::HasAllZero(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return HasAllZero;
}

void sub_1A69EE9EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrTransformShuffle::~ZinIrTransformShuffle(ZinIrTransformShuffle *this)
{
  *this = &unk_1F19F3C50;
  *(this + 1) = &unk_1F19F3C98;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F19F3C50;
  *(this + 1) = &unk_1F19F3C98;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1AC55A070);
}

void non-virtual thunk toZinIrTransformShuffle::~ZinIrTransformShuffle(ZinIrTransformShuffle *this)
{
  *(this - 1) = &unk_1F19F3C50;
  *this = &unk_1F19F3C98;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *(this - 1) = &unk_1F19F3C50;
  *this = &unk_1F19F3C98;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrVectorEWMultiply::~ZinIrVectorEWMultiply(ZinIrVectorEWMultiply *this)
{
  *this = &unk_1F19F3CD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F19F3CD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrVectorFoldBiasWithBotScaleBotBias::~ZinIrVectorFoldBiasWithBotScaleBotBias(ZinIrVectorFoldBiasWithBotScaleBotBias *this)
{
  *this = &unk_1F19F3D18;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F19F3D18;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrVectorFoldBotBiasWithBotScaleBias::~ZinIrVectorFoldBotBiasWithBotScaleBias(ZinIrVectorFoldBotBiasWithBotScaleBias *this)
{
  *this = &unk_1F19F3D58;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F19F3D58;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrVectorFoldBotScaleWithBotBiasBias::~ZinIrVectorFoldBotScaleWithBotBiasBias(ZinIrVectorFoldBotScaleWithBotBiasBias *this)
{
  *this = &unk_1F19F3D98;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F19F3D98;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_emplace<ZinIrVector>::__shared_ptr_emplace[abi:ne200100]<ZinIrVector const&,std::allocator<ZinIrVector>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F19F3F30;
  *(a1 + 24) = &unk_1F19C4550;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 40);
  *(a1 + 80) = v6;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 104);
  *(a1 + 144) = v9;
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  v10 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 136);
  *(a1 + 168) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 152);
  *(a1 + 184) = 0;
  *(a1 + 176) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  std::vector<std::shared_ptr<ZinIrTransform>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinIrTransform>*,std::shared_ptr<ZinIrTransform>*>((a1 + 184), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 4);
  if (*(a2 + 207) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 208), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v12 = *(a2 + 184);
    *(a1 + 224) = *(a2 + 200);
    *(a1 + 208) = v12;
  }

  v13 = *(a2 + 208);
  *(a1 + 248) = *(a2 + 224);
  *(a1 + 232) = v13;
  v14 = *(a2 + 248);
  *(a1 + 256) = *(a2 + 232);
  *(a1 + 272) = v14;
  v15 = *(a2 + 264);
  v16 = *(a2 + 280);
  v17 = *(a2 + 296);
  *(a1 + 336) = *(a2 + 312);
  *(a1 + 304) = v16;
  *(a1 + 320) = v17;
  *(a1 + 288) = v15;
  *(a1 + 24) = &unk_1F19F3B70;
  v18 = *(a2 + 320);
  *(a1 + 352) = *(a2 + 328);
  *(a1 + 344) = v18;
  return a1;
}

void sub_1A69EF324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = v3[7].__vftable;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::~__shared_weak_count(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ZinIrVector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F3F30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_emplace<ZinIrVector>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_1F19C4550;
  v2 = (a1 + 184);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v4 = v2;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a1 + 168);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ZinCpBasedAllocator::ZinCpBasedAllocator(uint64_t a1, const ZinIrControlFlowGraph *a2, uint64_t *a3, __int128 *a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 72) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  if (*(a2 + 49) != *(a2 + 48))
  {
    *(a1 + 152) = a2 + 384;
    *(a1 + 160) = a2;
    *(a1 + 168) = a3;
    v9 = *a3;
    *(a1 + 176) = *a3;
    *(a1 + 184) = a3[1];
    v10 = *(v9 + 440);
    *(a1 + 192) = v10 >> 2;
    *(a1 + 200) = v10;
    v11 = (a1 + 208);
    *(a1 + 672) = 0;
    v12 = MEMORY[0x1E69E5530] + 64;
    *(a1 + 624) = MEMORY[0x1E69E5530] + 64;
    v13 = *(MEMORY[0x1E69E54D0] + 16);
    v14 = *(MEMORY[0x1E69E54D0] + 8);
    *(a1 + 208) = v14;
    *(v11 + *(v14 - 24)) = v13;
    v15 = (a1 + 208 + *(*(a1 + 208) - 24));
    std::ios_base::init(v15, (a1 + 216));
    v16 = MEMORY[0x1E69E5530] + 24;
    v15[1].__vftable = 0;
    v15[1].__fmtflags_ = -1;
    *v11 = v16;
    *(a1 + 624) = v12;
    MEMORY[0x1AC559A60](a1 + 216);
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 776), *a4, *(a4 + 1));
    }

    else
    {
      v17 = *a4;
      *(a1 + 792) = *(a4 + 2);
      *(a1 + 776) = v17;
    }

    *(a1 + 800) = 0;
    *(a1 + 801) = a5;
    *(a1 + 816) = 0u;
    *(a1 + 808) = a1 + 816;
    ZinTensorFamilyUtil::ZinTensorFamilyUtil((a1 + 832), a2, 1, 0);
    *(a1 + 936) = 1;
    *(a1 + 944) = 0u;
    v18 = *(***(a1 + 152) + 32);
    if (*(v18 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *(v18 + 40), *(v18 + 48));
    }

    else
    {
      v32 = *(v18 + 40);
    }

    if ((*(*(a1 + 184) + 124) & 4) != 0)
    {
      if (*(a4 + 23) >= 0)
      {
        v19 = *(a4 + 23);
      }

      else
      {
        v19 = *(a4 + 1);
      }

      v20 = &v28;
      std::string::basic_string[abi:ne200100](&v28, v19 + 19);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v28.__r_.__value_.__r.__words[0];
      }

      if (v19)
      {
        if (*(a4 + 23) >= 0)
        {
          v21 = a4;
        }

        else
        {
          v21 = *a4;
        }

        memmove(v20, v21, v19);
      }

      strcpy(v20 + v19, ".CpAllocation.debug");
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v32;
      }

      else
      {
        v22 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v32.__r_.__value_.__l.__size_;
      }

      v24 = std::string::append(&v28, v22, size);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v26 = std::string::append(&v29, ".txt", 4uLL);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v31 = v26->__r_.__value_.__r.__words[2];
      *__p = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      std::ofstream::open();
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }

    ZinCpBasedAllocator::Initialize(a1);
  }

  ZinAssertImpl("Must run scheduler first", a1 + 72, a1 + 48, a1 + 24);
}

void sub_1A69EFA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::unique_ptr<ZinIrResourceTracker>::reset[abi:ne200100]((v37 + 952), 0);
  std::unique_ptr<ZinIrExecutionBehavior>::reset[abi:ne200100]((v37 + 944), 0);
  std::optional<ZinTensorFamilyUtil>::~optional(v37 + 832);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v37 + 808, *(v37 + 816));
  if (*(v37 + 799) < 0)
  {
    operator delete(*v40);
  }

  std::ofstream::~ofstream(v39);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v38);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a9);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(a10, *(v37 + 56));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(a11, *(v37 + 32));
  a32 = v37;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

void ZinCpBasedAllocator::Initialize(ZinCpBasedAllocator *this)
{
  v2 = *(this + 20);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      Hal = ZinIrTarget::GetHal(v4[4]);
      v7 = Hal + 1;
      v8 = *Hal;
      if (*Hal != Hal + 1)
      {
        do
        {
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v17, (v8 + 4));
          if (*(*(RawOrShared<ZinIrOpLayer>::unwrap_ptr(v17) + 88) + 8) != 28)
          {
            v9 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(v17);
            v10 = (*(*v9 + 40))(v9, 0);
            RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), v10);
            std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(this + 3, &RootTensor, &RootTensor);
            *(RawOrShared<ZinIrOpLayer>::unwrap_ptr(v17) + 80) = 0;
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v17);
          v11 = v8[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v8[2];
              v13 = *v12 == v8;
              v8 = v12;
            }

            while (!v13);
          }

          v8 = v12;
        }

        while (v12 != v7);
      }

      v14 = v4[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v4[2];
          v13 = *v15 == v4;
          v4 = v15;
        }

        while (!v13);
      }

      v4 = v15;
    }

    while (v15 != v3);
  }

  ZinLiveRangeUtils<ZinIrOpLayer,ZinIrTensor>::ZinIrComputeLiveRanges(*(this + 19), this + 14);
  operator new();
}

void ZinCpBasedAllocator::~ZinCpBasedAllocator(ZinCpBasedAllocator *this)
{
  std::unique_ptr<ZinIrResourceTracker>::reset[abi:ne200100](this + 119, 0);
  std::unique_ptr<ZinIrExecutionBehavior>::reset[abi:ne200100](this + 118, 0);
  if (*(this + 936) == 1)
  {
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 912, *(this + 115));
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 872);
    std::__hash_table<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>>>::~__hash_table(this + 832);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 808, *(this + 102));
  if (*(this + 799) < 0)
  {
    operator delete(*(this + 97));
  }

  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *(this + 26) = *MEMORY[0x1E69E54D0];
  *(this + *(v3 - 24) + 208) = *(v2 + 24);
  MEMORY[0x1AC559A70](this + 216);
  std::ostream::~ostream();
  MEMORY[0x1AC559F60](this + 624);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 112);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 72);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 48, *(this + 7));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 24, *(this + 4));
  v4 = this;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t ZinCpBasedAllocator::Execute(ZinCpBasedAllocator *this)
{
  v79 = *MEMORY[0x1E69E9840];
  if (*(*(this + 22) + 1153) != 1)
  {
    return 0;
  }

  ZinCpBasedAllocator::CreateRegions(this);
  v61 = this;
  v2 = std::thread::hardware_concurrency();
  v3 = *(this + 23);
  if (*(v3 + 486))
  {
    v4 = *(v3 + 485);
    v5 = *this;
    if (v4 != 1)
    {
      goto LABEL_81;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - v5) >> 3);
    if (v6 < 2 || v2 <= 1)
    {
      goto LABEL_81;
    }

    v8 = 0;
    v9 = 0;
    v10 = v2;
    v56 = v2;
    v57 = v2;
    while (1)
    {
      v67.__r_.__value_.__r.__words[2] = v8;
      v68 = v6;
      v69 = v10;
      v70 = v61;
      v71 = 1;
      v59 = 0;
      v60 = 0;
      v58 = 0;
      *&v73 = v8;
      *(&v73 + 1) = v10;
      v74 = &v70;
      v75 = 0;
      v77.__r_.__value_.__r.__words[0] = v6;
      v78 = 1;
      if (!ranges::operator==<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>>(&v73, &v77))
      {
        v11 = 0;
        do
        {
          ++v11;
          v12 = ranges::_get_::get<0ul,ranges::variant<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>> &>(&v73);
          LODWORD(v73) = v73 + 1;
          --*(&v73 + 1);
        }

        while (!ranges::operator==<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>>(v12, &v77));
        v62 = &v58;
        v63 = 0;
        std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>::__vallocate[abi:ne200100](&v58, v11);
      }

      if (v58 != v59)
      {
        v13 = v58 + 40;
        do
        {
          v14 = *(v13 - 8);
          v15 = v14 != 1 || v13 == v59;
          v13 += 40;
        }

        while (!v15);
        if ((v14 & 1) == 0)
        {
          std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::clear(this + 9);
          *(this + 800) = 0;
          goto LABEL_114;
        }
      }

      v73 = 0uLL;
      v74 = 0;
      std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::reserve(&v73, 0xCCCCCCCCCCCCCCCDLL * ((v59 - v58) >> 3));
      v16 = v59;
      v17 = 0xCCCCCCCCCCCCCCCDLL * ((v59 - v58) >> 3);
      v18 = v73;
      if (v17 > (v74 - v73) >> 3)
      {
        std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__vdeallocate(&v73);
        if (!(v17 >> 61))
        {
          v19 = (v74 - v73) >> 2;
          if (v19 <= v17)
          {
            v19 = v17;
          }

          if ((v74 - v73) >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          std::vector<ZinIrOpLayer *>::__vallocate[abi:ne200100](&v73, v20);
        }

        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v21 = *(&v73 + 1);
      v22 = (*(&v73 + 1) - v73) >> 3;
      if (v22 >= v17)
      {
        v65 = v58;
        if (v58 != v59)
        {
          do
          {
            ranges::basic_iterator<ranges::adaptor_cursor<std::__wrap_iter<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>> *>,ranges::iter_transform_view<ranges::ref_view<std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_2>>::adaptor<false>>>::operator*(&v65, v64);
            v28 = v64[0];
            v64[0] = 0;
            v29 = *v18;
            *v18 = v28;
            if (v29)
            {
              if (!atomic_fetch_add(v29 + 1, 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(*v29 + 16))(v29);
              }

              v30 = v64[0];
              if (v64[0] && !atomic_fetch_add((v64[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(*v30 + 16))(v30);
              }
            }

            v65 += 40;
            ++v18;
          }

          while (v65 != v16);
          v21 = *(&v73 + 1);
        }

        while (v21 != v18)
        {
          v32 = *--v21;
          v31 = v32;
          if (v32 && !atomic_fetch_add(v31 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v31 + 16))(v31);
          }
        }
      }

      else
      {
        v23 = v58 + 40 * v22;
        v65 = v58;
        if (*(&v73 + 1) != v73)
        {
          do
          {
            ranges::basic_iterator<ranges::adaptor_cursor<std::__wrap_iter<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>> *>,ranges::iter_transform_view<ranges::ref_view<std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_2>>::adaptor<false>>>::operator*(&v65, v64);
            v24 = v64[0];
            v64[0] = 0;
            v25 = *v18;
            *v18 = v24;
            if (v25)
            {
              if (!atomic_fetch_add(v25 + 1, 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(*v25 + 16))(v25);
              }

              v26 = v64[0];
              if (v64[0] && !atomic_fetch_add((v64[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(*v26 + 16))(v26);
              }
            }

            v65 += 40;
            ++v18;
          }

          while (v65 != v23);
        }

        v27 = v23;
        v65 = v23;
        v64[0] = *(&v73 + 1);
        v62 = *(&v73 + 1);
        v67.__r_.__value_.__r.__words[0] = &v73;
        v67.__r_.__value_.__l.__size_ = &v62;
        v67.__r_.__value_.__r.__words[2] = v64;
        LOBYTE(v68) = 0;
        if (v23 == v16)
        {
          v18 = *(&v73 + 1);
        }

        else
        {
          v18 = *(&v73 + 1);
          do
          {
            ranges::basic_iterator<ranges::adaptor_cursor<std::__wrap_iter<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>> *>,ranges::iter_transform_view<ranges::ref_view<std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_2>>::adaptor<false>>>::operator*(&v65, &v66);
            *v18 = v66;
            v27 += 40;
            v65 = v27;
            v18 = (v64[0] + 8);
            v64[0] += 8;
          }

          while (v27 != v16);
        }

        LOBYTE(v68) = 1;
        std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>,std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>*>>::~__exception_guard_exceptions[abi:ne200100](&v67);
      }

      v77.__r_.__value_.__r.__words[0] = v73;
      v77.__r_.__value_.__l.__size_ = v18;
      v77.__r_.__value_.__r.__words[2] = v74;
      v74 = 0;
      v73 = 0uLL;
      v67.__r_.__value_.__r.__words[0] = &v73;
      std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__destroy_vector::operator()[abi:ne200100](&v67);
      size = v77.__r_.__value_.__l.__size_;
      v34 = v77.__r_.__value_.__r.__words[0];
      if (v77.__r_.__value_.__r.__words[0] != v77.__r_.__value_.__l.__size_)
      {
        do
        {
          std::__assoc_sub_state::wait(*v34++);
        }

        while (v34 != size);
        size = v77.__r_.__value_.__l.__size_;
        v34 = v77.__r_.__value_.__r.__words[0];
      }

      if (v34 != size && v6 != v8)
      {
        break;
      }

LABEL_73:
      v67.__r_.__value_.__r.__words[0] = &v77;
      std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__destroy_vector::operator()[abi:ne200100](&v67);
      v67.__r_.__value_.__r.__words[0] = &v58;
      std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>::__destroy_vector::operator()[abi:ne200100](&v67);
      v8 = v56 + v9;
      v10 = v57;
      v38 = v57;
      while (v6 != v9)
      {
        ++v9;
        if (!--v38)
        {
          v9 = v8;
          goto LABEL_78;
        }
      }

      v8 = v9;
LABEL_78:
      if (v6 == v8)
      {
        goto LABEL_83;
      }
    }

    v35 = v9;
    v36 = v57;
    while (1)
    {
      std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::get(v34, &v67);
      LODWORD(v73) = v35;
      std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::__value_func[abi:ne200100](&v73 + 8, &v67);
      std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__value_func[abi:ne200100](&v67);
      if (!v76)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v76 + 48))(&v67);
      v37 = v70;
      if (v70)
      {
        ZinORToolsConversionUtils::ConvertMappingDecision((*this + 24 * v73), &v67, this + 9);
      }

      else
      {
        std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::clear(this + 9);
        *(this + 800) = 0;
      }

      if (v70 == 1)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v67);
      }

      std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__value_func[abi:ne200100](&v73 + 8);
      if (!v37)
      {
        break;
      }

      if (++v34 != size && v36 != 1)
      {
        v35 = v8 + 1;
        v8 = (v8 + 1);
        --v36;
        if (v6 != v8)
        {
          continue;
        }
      }

      goto LABEL_73;
    }

    v67.__r_.__value_.__r.__words[0] = &v77;
    std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__destroy_vector::operator()[abi:ne200100](&v67);
LABEL_114:
    v67.__r_.__value_.__r.__words[0] = &v58;
    std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>::__destroy_vector::operator()[abi:ne200100](&v67);
    return 0;
  }

  v5 = *this;
LABEL_81:
  if (*(this + 1) != v5)
  {
    ZinCpBasedAllocator::Execute(void)::$_0::operator()(&v61, 0);
  }

LABEL_83:
  ZinCpBasedAllocator::PropagateDimOrderForL2Inplace(this);
  ZinCpBasedAllocator::DemoteL2CircularDepToL2Circular(this);
  ZinCpBasedAllocator::UpdateScheduleForPipelineRunPair(this);
  ZinCpBasedAllocator::SetMemoryPressure(this);
  if (*(this + 42))
  {
    v39 = *(***(this + 19) + 32);
    if (*(this + 799) >= 0)
    {
      v40 = *(this + 799);
    }

    else
    {
      v40 = *(this + 98);
    }

    v41 = &v77;
    std::string::basic_string[abi:ne200100](&v77, v40 + 35);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v77.__r_.__value_.__r.__words[0];
    }

    if (v40)
    {
      if (*(this + 799) >= 0)
      {
        v42 = this + 776;
      }

      else
      {
        v42 = *(this + 97);
      }

      memmove(v41, v42, v40);
    }

    strcpy(v41 + v40, ".CpAllocationBeforePromotion.debug.");
    v43 = *(v39 + 63);
    if (v43 >= 0)
    {
      v44 = (v39 + 40);
    }

    else
    {
      v44 = *(v39 + 40);
    }

    if (v43 >= 0)
    {
      v45 = *(v39 + 63);
    }

    else
    {
      v45 = *(v39 + 48);
    }

    v46 = std::string::append(&v77, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v67, ".txt", 4uLL);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v74 = v48->__r_.__value_.__r.__words[2];
    v73 = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    v72[6] = 0;
    v50 = MEMORY[0x1E69E5530] + 64;
    v72[0] = MEMORY[0x1E69E5530] + 64;
    v51 = MEMORY[0x1E69E54D0];
    v52 = *(MEMORY[0x1E69E54D0] + 16);
    v67.__r_.__value_.__r.__words[0] = *(MEMORY[0x1E69E54D0] + 8);
    *(v67.__r_.__value_.__r.__words + *(v67.__r_.__value_.__r.__words[0] - 24)) = v52;
    v53 = (&v67 + *(v67.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v53, &v67.__r_.__value_.__r.__words[1]);
    v54 = MEMORY[0x1E69E5530] + 24;
    v53[1].__vftable = 0;
    v53[1].__fmtflags_ = -1;
    v67.__r_.__value_.__r.__words[0] = v54;
    v72[0] = v50;
    MEMORY[0x1AC559A60](&v67.__r_.__value_.__r.__words[1]);
    std::ofstream::open();
    ZinCpBasedAllocatorUtil::PrintAllocationDecision(&v67, this + 24, this + 9);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v67 + *(v67.__r_.__value_.__r.__words[0] - 24)), *(&v69 + *(v67.__r_.__value_.__r.__words[0] - 24)) | 4);
    }

    v67.__r_.__value_.__r.__words[0] = *v51;
    *(v67.__r_.__value_.__r.__words + *(v67.__r_.__value_.__r.__words[0] - 24)) = v51[3];
    MEMORY[0x1AC559A70](&v67.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x1AC559F60](v72);
    if (SHIBYTE(v74) < 0)
    {
      operator delete(v73);
    }
  }

  while (1)
  {
    v67.__r_.__value_.__s.__data_[0] = 0;
    ZinCpBasedAllocator::PromoteResidentToInplace(this, &v67);
    ZinCpBasedAllocator::PromoteNonResidentToResident(this, &v67);
    result = ZinCpBasedAllocator::PromoteChainToL2Dependent(this, &v67);
    if (result)
    {
      break;
    }

    if ((v67.__r_.__value_.__s.__data_[0] & 1) == 0)
    {
      ZinCpBasedAllocator::PromoteResidentToL2Dependent(this);
      ZinCpBasedAllocator::PromoteParallelExecution(this);
      result = ZinCpBasedAllocator::VerifyAllocationDecision(this);
      if (result)
      {
        return result;
      }

      if (*(this + 800) == 1)
      {
        ZinCpBasedAllocatorUtil::PrintAllocationDecision(this + 26, this + 24, this + 9);
      }

      else
      {
        ZinCpBasedAllocator::UndoParallelPairSchedules(this);
        std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::clear(this + 9);
      }

      if (*(this + 42))
      {
        if (!std::filebuf::close())
        {
          std::ios_base::clear((this + *(*(this + 26) - 24) + 208), *(this + *(*(this + 26) - 24) + 240) | 4);
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_1A69F0BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  __p = (v37 - 176);
  std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  *(v37 - 128) = &a13;
  std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>::__destroy_vector::operator()[abi:ne200100]((v37 - 128));
  _Unwind_Resume(a1);
}

uint64_t ZinCpBasedAllocator::CreateRegions(ZinCpBasedAllocator *this)
{
  v1 = *(this + 22);
  v2 = *(v1 + 1164) == 0;
  if (*(v1 + 1164))
  {
    v3 = 3000;
  }

  else
  {
    v3 = 10500;
  }

  v4 = *(v1 + 4);
  v5 = 150;
  if (!v2)
  {
    v5 = 70;
  }

  v106 = v5;
  v6 = 100;
  v140 = 0;
  v141 = 0;
  if (!v2)
  {
    v6 = 20;
  }

  v102 = v6;
  v103 = v3;
  v7 = v4 < 16;
  v8 = 12;
  if (v7)
  {
    v8 = 10;
  }

  v110 = v8;
  v142 = 0;
  v138 = 0;
  v139 = 0;
  v136 = 0;
  v137 = &v138;
  v134 = &v135;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = &v132;
  v128 = &v129;
  v129 = 0;
  memset(v126, 0, sizeof(v126));
  v127 = 1065353216;
  v9 = *(this + 20);
  if (!*(v9 + 376))
  {
    ZinAssertImpl("Must run scheduler first");
  }

  v10 = this;
  std::map<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>,ScheduleComparator,std::allocator<std::pair<ZinIrBasicBlock * const,std::vector<ZinIrOpLayer *>>>>::map[abi:ne200100](&v124, v9 + 360);
  v11 = v124;
  v115 = v10;
  if (v124 != v125)
  {
    v109 = 0;
    v12 = 0;
    v13 = 0;
    v108 = 0;
    v105 = 0;
    v104 = 0;
    v100 = 0;
    v101 = 0;
    do
    {
      v14 = v11[5];
      v15 = v11[6] - v14;
      if (!v15)
      {
        goto LABEL_103;
      }

      v16 = 0;
      v17 = v15 >> 3;
      do
      {
        v18 = v16 + 1;
        if (v16 + 1 >= v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = *(v14 + 8 * v18);
        }

        v20 = *(v14 + 8 * v16);
        if (!ZinIrOpLayer::IsANELayer(v20))
        {
          goto LABEL_102;
        }

        v117 = v20;
        v22 = *v10;
        v21 = *(v10 + 1);
        __p = &v117;
        std::__hash_table<std::__hash_value_type<ZinIrTensor const*,long>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,long>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,long>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,long>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(v126, &v117, &std::piecewise_construct, &__p)[3] = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
        LayerExecutionBehaviors = ZinIrExecutionBehavior::GetLayerExecutionBehaviors(*(v10 + 118));
        v24 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(LayerExecutionBehaviors, &v117);
        v116[0] = 0;
        v143 = 0;
        ZinCpBasedAllocator::GetEarlyAllocationDecision(v10, v117, v116, &v143);
        MaxCycle = LayerCycleAndFootprintEstimator::GetMaxCycle(v24[3], v116[0], v143);
        v112 = v13;
        v113 = v12;
        v107 = v19;
        if (*((*(*v117 + 40))(v117, 0) + 208) == 1)
        {
          v26 = (*(*v117 + 40))(v117, 0);
          if ((*(v26 + 208) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v27 = *(v26 + 184);
          v105 = BYTE1(v27);
          v104 = BYTE5(v27);
          v28 = v27;
          v29 = BYTE4(v27);
          v30 = BYTE2(v27);
          v31 = BYTE6(v27);
        }

        else
        {
          v29 = 0;
          v31 = 0;
          v28 = 0;
          v30 = 0;
        }

        v32 = v11[5];
        v33 = v16 + 1;
        if (v18 >= (v11[6] - v32) >> 3)
        {
          goto LABEL_30;
        }

        while (1)
        {
          v34 = *(v32 + 8 * v33);
          if (ZinIrOpLayer::IsEngineLayer(v34))
          {
            break;
          }

          ++v33;
          v32 = v11[5];
          if (v33 >= (v11[6] - v32) >> 3)
          {
            goto LABEL_30;
          }
        }

        if (*((*(*v34 + 40))(v34, 0) + 208) == 1)
        {
          v35 = (*(*v34 + 40))(v34, 0);
          if ((*(v35 + 208) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v36 = *(v35 + 184);
          v100 = BYTE5(v36);
          v101 = BYTE1(v36);
          v37 = v36 & 0xFF00000000;
          v38 = v36;
          v39 = BYTE2(v36);
          v40 = BYTE6(v36);
        }

        else
        {
LABEL_30:
          v37 = 0;
          v39 = 0;
          v38 = 0;
          v40 = 0;
        }

        if (v39 == v30 && (v30 & 1) != 0)
        {
          v41 = (v28 | (v105 << 8)) == (v38 | (v101 << 8));
        }

        else
        {
          v41 = v39 == v30;
        }

        v10 = v115;
        if (v41)
        {
          v42 = v40 == v31;
          v43 = (v29 | (v104 << 8)) == (v37 | (v100 << 40)) >> 32;
          if ((v42 & v31) == 0)
          {
            v43 = v42;
          }

          v44 = !v43;
        }

        else
        {
          v44 = 1;
        }

        v45 = (*(*v117 + 40))(v117, 0);
        RootTensor = ZinTensorFamilyUtil::GetRootTensor((v115 + 832), v45);
        v144[0] = RootTensor;
        if ((*(v115 + 801) & 1) != 0 || (IsChainable = ZinIrRegAllocUtil::IsChainable(RootTensor, *(v115 + 22), v47), RootTensor = v144[0], !IsChainable))
        {
          v108 = v16;
          goto LABEL_62;
        }

        v49 = v144[0][19];
        v50 = **ZinIrOpLayer::GetOutgoingLayers(v49);
        IncomingLayersNodeKey = ZinIrOpLayer::GetIncomingLayersNodeKey(v49);
        __p = 0;
        v122 = 0;
        v123 = 0;
        std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *IncomingLayersNodeKey, IncomingLayersNodeKey[1], (IncomingLayersNodeKey[1] - *IncomingLayersNodeKey) >> 3);
        v52 = v122;
        v53 = *ZinIrContext::GetMemoryPools(v50);
        MemoryPools = ZinIrContext::GetMemoryPools(v50);
        std::vector<ZinIrOpLayer *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ZinTransposeLayer **>,std::__wrap_iter<ZinTransposeLayer **>>(&__p, v52, v53, *(MemoryPools + 8), (*(MemoryPools + 8) - v53) >> 3);
        v55 = __p;
        if (__p == v122)
        {
          goto LABEL_56;
        }

        v56 = 0;
        do
        {
          while (!v129)
          {
LABEL_50:
            v55 += 8;
            if (v55 == v122)
            {
              if (v56)
              {
                goto LABEL_57;
              }

LABEL_56:
              std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v128, v129);
              v129 = 0;
              v130 = 0;
              v128 = &v129;
              goto LABEL_57;
            }
          }

          v57 = *v55;
          v58 = v129;
          while (1)
          {
            v59 = v58[4];
            if (v59 <= v57)
            {
              break;
            }

LABEL_49:
            v58 = *v58;
            if (!v58)
            {
              goto LABEL_50;
            }
          }

          if (v59 < v57)
          {
            ++v58;
            goto LABEL_49;
          }

          v55 += 8;
          v56 = 1;
        }

        while (v55 != v122);
LABEL_57:
        v120 = v49;
        std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(&v128, &v120, &v120);
        v10 = v115;
        v120 = v50;
        std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(&v128, &v120, &v120);
        if (v130 >= 4)
        {
          std::set<__CFString const*>::insert[abi:ne200100]<std::__tree_const_iterator<__CFString const*,std::__tree_node<__CFString const*,void *> *,long>>(&v131, v128, &v129);
        }

        std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(&v134, v144, v144);
        if (__p)
        {
          v122 = __p;
          operator delete(__p);
        }

        RootTensor = v144[0];
LABEL_62:
        v60 = *(RootTensor + 208);
        if (!std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(v10 + 9, v144) || ((ZinIrRegAllocUtil::IsPipelinable(v144[0], *(v10 + 22), (v10 + 832)) | v60) & 1) != 0)
        {
          std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(&v137, v144, v144);
          goto LABEL_65;
        }

        if (v109)
        {
LABEL_65:
          v62 = v141;
          if (v141 >= v142)
          {
            v64 = (v141 - v140) >> 3;
            if ((v64 + 1) >> 61)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v65 = (v142 - v140) >> 2;
            if (v65 <= v64 + 1)
            {
              v65 = v64 + 1;
            }

            if (v142 - v140 >= 0x7FFFFFFFFFFFFFF8)
            {
              v66 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v66 = v65;
            }

            if (v66)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>(&v140, v66);
            }

            *(8 * v64) = v117;
            v63 = 8 * v64 + 8;
            v67 = (8 * v64 - (v141 - v140));
            memcpy(v67, v140, v141 - v140);
            v68 = v140;
            v140 = v67;
            v141 = v63;
            v142 = 0;
            if (v68)
            {
              operator delete(v68);
            }
          }

          else
          {
            *v141 = v117;
            v63 = (v62 + 8);
          }

          v141 = v63;
          v13 = v112 + 1;
          v109 = 1;
        }

        else
        {
          v109 = 0;
          v13 = v112;
        }

        v12 = MaxCycle + v113;
        v69 = 1;
        if (v13 <= v106 && v12 <= v103 && v139 < v102 && v136 < v110 && v133 <= 0xB)
        {
          v69 = ZinCpBasedAllocator::NeedSplitForInplaceAllocation(v10, v107);
        }

        v70 = v44 & v69;
        if (!v60)
        {
          v70 = v69;
        }

        if (v70)
        {
          v71 = ZinIrRegAllocUtil::IsPipelinable(v144[0], *(v10 + 22), (v10 + 832)) ^ 1;
        }

        else
        {
          v71 = 0;
        }

        if (v136 <= v110)
        {
          v73 = 0;
        }

        else
        {
          if (*(v10 + 801))
          {
            v72 = 0;
          }

          else
          {
            v72 = ZinIrRegAllocUtil::IsChainable(v144[0], *(v10 + 22), v61);
          }

          v73 = v72 ^ 1;
          if ((v16 - v108) > 2)
          {
            v73 = 1;
          }
        }

        if ((((v71 | v44) & 1) != 0 || v73) && v141 != v140)
        {
          std::vector<std::vector<ZinANELayer const*>>::push_back[abi:ne200100](v10, &v140);
          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v137, v138);
          v138 = 0;
          v139 = 0;
          v137 = &v138;
          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v134, v135);
          v135 = 0;
          v136 = 0;
          v134 = &v135;
          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v128, v129);
          v129 = 0;
          v130 = 0;
          v128 = &v129;
          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v131, v132);
          v13 = 0;
          v12 = 0;
          v109 = 0;
          v132 = 0;
          v133 = 0;
          v131 = &v132;
          v141 = v140;
          v108 = v16;
        }

LABEL_102:
        v14 = v11[5];
        v17 = (v11[6] - v14) >> 3;
        ++v16;
      }

      while (v18 < v17);
LABEL_103:
      v74 = v11[1];
      if (v74)
      {
        do
        {
          v75 = v74;
          v74 = *v74;
        }

        while (v74);
      }

      else
      {
        do
        {
          v75 = v11[2];
          v2 = *v75 == v11;
          v11 = v75;
        }

        while (!v2);
      }

      v11 = v75;
    }

    while (v75 != v125);
  }

  if (v141 != v140)
  {
    std::vector<std::vector<ZinANELayer const*>>::push_back[abi:ne200100](v10, &v140);
  }

  v77 = *(v10 + 7);
  v76 = (v10 + 56);
  v114 = (v76 - 1);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy((v76 - 1), v77);
  *v76 = 0;
  v76[1] = 0;
  *(v76 - 1) = v76;
  v78 = v76[13];
  v79 = *v78;
  v111 = v78 + 1;
  if (*v78 != v78 + 1)
  {
    do
    {
      Hal = ZinIrTarget::GetHal(v79[4]);
      v81 = Hal + 1;
      v82 = *Hal;
      if (*Hal != Hal + 1)
      {
        do
        {
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&__p, (v82 + 4));
          if (*(*(RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p) + 88) + 8) != 28)
          {
            v83 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
            v84 = (*(*v83 + 40))(v83, 0);
            v120 = ZinTensorFamilyUtil::GetRootTensor((v115 + 832), v84);
            if (!std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__count_unique<ZinIrTensor *>(v114, &v120))
            {
              v118 = 0;
              v119 = 0;
              v117 = &v118;
              TensorFamily = ZinTensorFamilyUtil::GetTensorFamily((v115 + 832), v120);
              v86 = *TensorFamily;
              v87 = TensorFamily[1];
              while (v86 != v87)
              {
                v88 = *(*v86 + 152);
                if (ZinIrOpLayer::IsANELayer(v88))
                {
                  *v116 = v88;
                  v144[0] = v116;
                  v89 = std::__hash_table<std::__hash_value_type<ZinIrTensor const*,long>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,long>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,long>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,long>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(v126, v116, &std::piecewise_construct, v144);
                  std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v117, v89 + 3, v89 + 3);
                }

                OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v88);
                v91 = *OutgoingLayers;
                v92 = *(OutgoingLayers + 8);
                while (v91 != v92)
                {
                  v93 = *v91;
                  if (ZinIrOpLayer::IsANELayer(*v91))
                  {
                    *v116 = v93;
                    v144[0] = v116;
                    v94 = std::__hash_table<std::__hash_value_type<ZinIrTensor const*,long>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,long>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,long>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,long>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(v126, v116, &std::piecewise_construct, v144);
                    std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v117, v94 + 3, v94 + 3);
                  }

                  ++v91;
                }

                v86 += 8;
              }

              if (v119 > 1)
              {
                if (!std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(v115 + 9, &v120))
                {
                  ZinIrResourceTracker::SetAllocationDecision(*(v115 + 119), v120, 1);
                }

                std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(v114, &v120, &v120);
              }

              std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v117, v118);
            }
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
          v95 = v82[1];
          if (v95)
          {
            do
            {
              v96 = v95;
              v95 = *v95;
            }

            while (v95);
          }

          else
          {
            do
            {
              v96 = v82[2];
              v2 = *v96 == v82;
              v82 = v96;
            }

            while (!v2);
          }

          v82 = v96;
        }

        while (v96 != v81);
      }

      v97 = v79[1];
      if (v97)
      {
        do
        {
          v98 = v97;
          v97 = *v97;
        }

        while (v97);
      }

      else
      {
        do
        {
          v98 = v79[2];
          v2 = *v98 == v79;
          v79 = v98;
        }

        while (!v2);
      }

      v79 = v98;
    }

    while (v98 != v111);
  }

  ZinCpBasedAllocatorUtil::PrintRegionInformation(v115 + 26, v115, v114);
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(&v124, v125[0]);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v126);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v128, v129);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v131, v132);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v134, v135);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v137, v138);
  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  return 0;
}

void sub_1A69F18B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, ...)
{
  va_start(va, a38);
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(&a36, a37);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v38 - 224, *(v38 - 216));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v38 - 200, *(v38 - 192));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v38 - 176, *(v38 - 168));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v38 - 152, *(v38 - 144));
  v40 = *(v38 - 128);
  if (v40)
  {
    *(v38 - 120) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void ZinCpBasedAllocator::Execute(void)::$_0::operator()(uint64_t a1, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = (**a1 + 24 * a2);
  ZinIrExecutionBehavior::GetLayerExecutionBehaviors(*(*a1 + 944));
  ZinORToolsConversionUtils::CreateORToolsGraph(v4, a2);
}

void sub_1A69F1D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a37);
  std::unique_ptr<CpAllocGraph>::~unique_ptr[abi:ne200100]((v37 - 120));
  _Unwind_Resume(a1);
}

uint64_t ZinCpBasedAllocator::PropagateDimOrderForL2Inplace(ZinCpBasedAllocator *this)
{
  v1 = *(this + 3);
  v2 = this + 32;
  if (v1 != this + 32)
  {
    v4 = (this + 816);
    do
    {
      v25 = *(v1 + 4);
      __p = &v25;
      v5 = std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v25, &std::piecewise_construct, &__p);
      if (CpAllocUtils::IsL2Inplace(*(v5 + 24)))
      {
        LastConsumer = ZinIrRegAllocUtil::GetLastConsumer(v25, (this + 832));
        v7 = (*(*LastConsumer + 40))(LastConsumer, 0);
        MemoryPools = ZinIrContext::GetMemoryPools(LastConsumer);
        if (MemoryPools[1] == *MemoryPools)
        {
          goto LABEL_30;
        }

        v9 = 0;
        while (1)
        {
          v10 = ZinIrContext::GetMemoryPools(LastConsumer);
          v11 = (*(**(*v10 + 8 * v9) + 40))(*(*v10 + 8 * v9), 0);
          RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), v11);
          if (RootTensor == v25)
          {
            break;
          }

          ++v9;
          v13 = ZinIrContext::GetMemoryPools(LastConsumer);
          if (v9 >= (v13[1] - *v13) >> 3)
          {
            goto LABEL_30;
          }
        }

        v14 = *v4;
        if (*v4)
        {
          v15 = v4;
          do
          {
            v16 = v14[4];
            v17 = v16 >= v7;
            v18 = v16 < v7;
            if (v17)
            {
              v15 = v14;
            }

            v14 = v14[v18];
          }

          while (v14);
          if (v15 != v4 && v7 >= v15[4])
          {
LABEL_30:
            ZinAssertImpl("internal error: PropagateDimOrderForL2Inplace");
          }
        }

        if (ZinIrTensor::HasFlexDimensionOrderHint(v25) && ZinTensorFamilyUtil::HasReshapeInTensorFamily((this + 832), v25))
        {
          DimensionOrderHint::DimensionOrderHint(&__p, 1);
          if (ZinIrTensor::SetDimensionOrderHint(v25, &__p, 1))
          {
            ZinAssertImpl("fail to set dim order in PropagateDimOrderForL2Inplace.");
          }

          if (__p)
          {
            v24 = __p;
            operator delete(__p);
          }
        }

        __p = v7;
        v24 = v9;
        std::__tree<std::__value_type<ZinIrTensor *,unsigned long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,unsigned long>,std::less<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,unsigned long>>>::__emplace_unique_key_args<ZinIrTensor *,std::pair<ZinIrTensor *,unsigned long>>(this + 808, &__p, &__p);
        if ((ZinIrRegAllocUtil::AdjustDimOrderForInplace(v7[19], this + 808, this + 9, (this + 832)) & 1) == 0)
        {
          ZinAssertImpl("failed to post-process in PropagateDimOrderForL2Inplace.");
        }
      }

      v19 = *(v1 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v1 + 2);
          v21 = *v20 == v1;
          v1 = v20;
        }

        while (!v21);
      }

      v1 = v20;
    }

    while (v20 != v2);
  }

  return 0;
}

void sub_1A69F202C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinCpBasedAllocator::DemoteL2CircularDepToL2Circular(const ZinIrTensor **this)
{
  v43 = *MEMORY[0x1E69E9840];
  ZinCpBasedAllocator::SetMemoryPressure(this);
  v2 = this[3];
  v3 = this + 4;
  if (v2 != (this + 4))
  {
    do
    {
      v36 = *(v2 + 4);
      *buf = &v36;
      if (*(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v36, &std::piecewise_construct, buf) + 24) == 7)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        if ((ZinIrRegAllocUtil::IsL2Dependentable(v36, this[22], &v33, (this + 104)) & 1) == 0)
        {
          ZinAssertImpl("Unsuccesfull CP result");
        }

        v4 = v33;
        v5 = v34;
        v31 = v34;
        if (v33 != v34)
        {
          while (1)
          {
            v7 = *v4;
            v6 = v4[1];
            *&buf[8] = 0;
            *&buf[16] = 0;
            LOBYTE(v42) = 0;
            *buf = &buf[8];
            v8 = *(v7 + 9);
            if (v8 <= *(v6 + 10) + *(v6 + 9))
            {
              do
              {
                v38 = 0;
                v39 = 0;
                v40 = 0;
                __p = &v38;
                L2 = ZinIrResourceTracker::GetL2(this[119]);
                v32[0] = v8;
                v32[1] = v8;
                ZinIrMemoryPressureAnalyzer::GetPeakPressure(L2, v32, &__p);
                std::set<ZinIrMemoryPressureAnalyzer::Allocation const*,ZinIrMemoryPressureAnalyzer::PointerComparator,std::allocator<ZinIrMemoryPressureAnalyzer::Allocation const*>>::insert[abi:ne200100]<std::__tree_const_iterator<ZinIrMemoryPressureAnalyzer::Allocation const*,std::__tree_node<ZinIrMemoryPressureAnalyzer::Allocation const*,void *> *,long>>(buf, __p, &v38);
                std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&__p, v38);
                ++v8;
              }

              while (v8 <= *(v6 + 10) + *(v6 + 9));
              v10 = *buf;
              if (*buf != &buf[8])
              {
                v11 = 0;
                do
                {
                  v12 = v10[4];
                  if ((*(*v12 + 24))(v12) == 1)
                  {
                    goto LABEL_10;
                  }

                  if (!(*(*v12 + 24))(v12))
                  {
                    v13 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, v12 + 4);
                    if (!v13)
                    {
                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    if (CpAllocUtils::IsResident(*(v13 + 24)))
                    {
LABEL_10:
                      v11 += v12[1];
                    }
                  }

                  v14 = v10[1];
                  if (v14)
                  {
                    do
                    {
                      v15 = v14;
                      v14 = *v14;
                    }

                    while (v14);
                  }

                  else
                  {
                    do
                    {
                      v15 = v10[2];
                      v16 = *v15 == v10;
                      v10 = v15;
                    }

                    while (!v16);
                  }

                  v10 = v15;
                }

                while (v15 != &buf[8]);
                v5 = v31;
                if (v11 > *(this[22] + 55))
                {
                  break;
                }
              }
            }

            MemoryPools = ZinIrContext::GetMemoryPools(v7);
            __p = 0;
            v38 = 0;
            v39 = 0;
            std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *MemoryPools, *(MemoryPools + 8), (*(MemoryPools + 8) - *MemoryPools) >> 3);
            v18 = __p;
            v19 = v38;
            while (1)
            {
              if (v18 == v19)
              {
                v23 = 1;
                goto LABEL_29;
              }

              v20 = (*(**v18 + 40))(*v18, 0);
              v32[0] = ZinTensorFamilyUtil::GetRootTensor((this + 104), v20);
              v21 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, v32);
              v22 = v21;
              if (v21)
              {
                if ((CpAllocUtils::IsL2Dependent(*(v21 + 24)) & 1) != 0 || CpAllocUtils::IsChain(*(v22 + 24)))
                {
                  break;
                }
              }

              ++v18;
            }

            v23 = 0;
LABEL_29:
            v24 = (*(*v6 + 40))(v6, 0);
            v32[0] = ZinTensorFamilyUtil::GetRootTensor((this + 104), v24);
            v25 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, v32);
            v26 = v25;
            if (v25 && ((CpAllocUtils::IsL2Dependent(*(v25 + 24)) & 1) != 0 || CpAllocUtils::IsChain(*(v26 + 24))))
            {
              v23 = 0;
            }

            if (__p)
            {
              v38 = __p;
              operator delete(__p);
            }

            std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(buf, *&buf[8]);
            if ((v23 & 1) == 0)
            {
              goto LABEL_39;
            }

            v4 += 2;
            if (v4 == v5)
            {
              goto LABEL_44;
            }
          }

          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(buf, *&buf[8]);
LABEL_39:
          *buf = &v36;
          *(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v36, &std::piecewise_construct, buf) + 24) = 6;
          if ((*(this[23] + 124) & 0x10) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v27 = (v36 + 40);
            if (*(v36 + 63) < 0)
            {
              v27 = *v27;
            }

            *buf = 136315650;
            *&buf[4] = v27;
            *&buf[12] = 2080;
            *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/ANECompiler/libs/inference/compiler/ZinIrSchedule/src/ZinCpBasedAllocator.cpp";
            *&buf[22] = 1024;
            v42 = 2612;
            _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "INFO: Tensor %s is demoted from kL2DependentAndCircular to kL2Circular (file %s, line %d)\n", buf, 0x1Cu);
          }

LABEL_44:
          v4 = v33;
        }

        if (v4)
        {
          v34 = v4;
          operator delete(v4);
        }

        v3 = this + 4;
      }

      v28 = *(v2 + 1);
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = *(v2 + 2);
          v16 = *v29 == v2;
          v2 = v29;
        }

        while (!v16);
      }

      v2 = v29;
    }

    while (v29 != v3);
  }

  return 0;
}

void sub_1A69F2538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinCpBasedAllocator::UpdateScheduleForPipelineRunPair(ZinCpBasedAllocator *this)
{
  v2 = *(this + 3);
  v3 = this + 32;
  if (v2 != this + 32)
  {
    do
    {
      v9 = *(v2 + 4);
      v4 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &v9);
      if (v4)
      {
        v5 = v4;
        if (CpAllocUtils::IsChain(*(v4 + 24)))
        {
          ZinCpBasedAllocator::UpdateScheduleForChainPair(this, v9);
        }

        if (CpAllocUtils::IsL2Dependent(*(v5 + 24)))
        {
          ZinCpBasedAllocator::UpdateScheduleForL2DependentPair(this, v9);
        }
      }

      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::clear(this + 14);
  ZinLiveRangeUtils<ZinIrOpLayer,ZinIrTensor>::ZinIrComputeLiveRanges(*(this + 19), this + 14);
}

void ZinCpBasedAllocator::SetMemoryPressure(ZinIrResourceTracker **this)
{
  L2 = ZinIrResourceTracker::GetL2(this[119]);
  std::__tree<std::unique_ptr<ZinIrMemoryPressureAnalyzer::Allocation const>,ZinIrMemoryPressureAnalyzer::PointerComparator,std::allocator<std::unique_ptr<ZinIrMemoryPressureAnalyzer::Allocation const>>>::destroy(L2, *(L2 + 8));
  *L2 = L2 + 8;
  *(L2 + 16) = 0;
  *(L2 + 8) = 0;
  std::__hash_table<std::__hash_value_type<unsigned long,std::set<ZinIrMemoryPressureAnalyzer::Allocation const*,ZinIrMemoryPressureAnalyzer::PointerComparator,std::allocator<ZinIrMemoryPressureAnalyzer::Allocation const*>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::set<ZinIrMemoryPressureAnalyzer::Allocation const*,ZinIrMemoryPressureAnalyzer::PointerComparator,std::allocator<ZinIrMemoryPressureAnalyzer::Allocation const*>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::set<ZinIrMemoryPressureAnalyzer::Allocation const*,ZinIrMemoryPressureAnalyzer::PointerComparator,std::allocator<ZinIrMemoryPressureAnalyzer::Allocation const*>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::set<ZinIrMemoryPressureAnalyzer::Allocation const*,ZinIrMemoryPressureAnalyzer::PointerComparator,std::allocator<ZinIrMemoryPressureAnalyzer::Allocation const*>>>>>::clear(L2 + 64);
  v3 = this[3];
  if (v3 != (this + 4))
  {
    do
    {
      v9 = *(v3 + 4);
      v4 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &v9);
      if (!v4)
      {
        ZinAssertImpl("Allocation decision must exist");
      }

      v5 = *(v4 + 24);
      if (v5 <= 8)
      {
        if (((1 << v5) & 0x153) != 0)
        {
          ZinCpBasedAllocator::UpdateMemoryPressureForNonPipelineDecision(this, v9);
        }

        else
        {
          ZinCpBasedAllocator::UpdateMemoryPressureForPipelineDecision(this, v9);
        }
      }

      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != this + 4);
  }
}

uint64_t ZinCpBasedAllocator::PromoteResidentToInplace(ZinCpBasedAllocator *this, BOOL *a2)
{
  v4 = *(this + 19);
  v5 = *v4;
  v6 = v4[1];
  v7 = v6 - *v4;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&v24, v5, v6, v7);
  v8 = v24;
  v9 = v25;
  v10 = v25 - 1;
  if (v24 != v25 && v10 > v24)
  {
    v12 = v24 + 8;
    do
    {
      v13 = *(v12 - 8);
      *(v12 - 8) = *v10;
      *v10-- = v13;
      v14 = v12 >= v10;
      v12 += 8;
    }

    while (!v14);
    v8 = v24;
    v9 = v25;
  }

  if (v8 != v9)
  {
    do
    {
      v15 = *v8;
      v16 = (*(**v8 + 40))(*v8, 0);
      v23 = v16;
      if (*(*(v15 + 88) + 8) != 28)
      {
        RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), v16);
        if (RootTensor == v23)
        {
          Usages = ZinTensorFamilyUtil::GetReadUsages((this + 832), v23);
          if (Usages[1] != *Usages)
          {
            v19 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &v23);
            v20 = v19;
            if (!v19)
            {
              ZinAssertImpl("The decision must exist");
            }

            if (CpAllocUtils::IsNonChainResident(*(v19 + 24)))
            {
              if (!CpAllocUtils::IsL2Inplace(*(v20 + 24)) && !ZinCpBasedAllocator::IsDisqualifiedForInplacePromotion(this, v23))
              {
                v21 = v23;
                if (ZinCpBasedAllocator::TryInplaceAllocationWithProducer(this, v23) || ZinCpBasedAllocator::TryInplaceAllocationWithConsumer(this, v21))
                {
                  *a2 = 1;
                }
              }
            }
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = v24;
  }

  if (v8)
  {
    v25 = v8;
    operator delete(v8);
  }

  return 0;
}

void sub_1A69F295C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinCpBasedAllocator::PromoteNonResidentToResident(ZinIrResourceTracker **this, BOOL *a2)
{
  L2 = ZinIrResourceTracker::GetL2(this[119]);
  v5 = *(this[22] + 55);
  v6 = (*(this[19] + 1) - *this[19]) >> 3;
  v13 = 0;
  v14 = v6;
  ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(L2, &v13, v5, v15);
  if (!v17)
  {
    ZinCpBasedAllocator::GetSortedNonResidentTensors(&v13, this);
    v7 = v13;
    v8 = v14;
    if (v13 != v14)
    {
      while (1)
      {
        v12 = *v7;
        v18 = &v12;
        if (*(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v12, &std::piecewise_construct, &v18) + 24) != 1)
        {
          ZinAssertImpl("Invalid list of non-resident tensors");
        }

        IsDisqualifiedForInplacePromotion = ZinCpBasedAllocator::IsDisqualifiedForInplacePromotion(this, v12);
        v10 = v12;
        if (IsDisqualifiedForInplacePromotion)
        {
          goto LABEL_5;
        }

        if (!ZinCpBasedAllocator::TryInplaceAllocationWithProducer(this, v12) && !ZinCpBasedAllocator::TryInplaceAllocationWithConsumer(this, v10))
        {
          break;
        }

LABEL_9:
        *a2 = 1;
LABEL_10:
        if (++v7 == v8)
        {
          v7 = v13;
          goto LABEL_13;
        }
      }

      v10 = v12;
LABEL_5:
      if (!ZinCpBasedAllocator::PromoteToResident(this, v10))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_13:
    if (v7)
    {
      v14 = v7;
      operator delete(v7);
    }
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v15, v16);
  return 0;
}

uint64_t ZinCpBasedAllocator::PromoteChainToL2Dependent(ZinIrResourceTracker **this, BOOL *a2)
{
  L2 = ZinIrResourceTracker::GetL2(this[119]);
  v7 = *(this[22] + 55);
  v8 = (*(this[19] + 1) - *this[19]) >> 3;
  __p = 0;
  v19 = v8;
  ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(L2, &__p, v7, v21);
  if (v23 || (v11 = this[3], v11 == (this + 4)))
  {
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  while (1)
  {
    v20 = *(v11 + 4);
    __p = &v20;
    if (*(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v20, &std::piecewise_construct, &__p) + 24) == 2)
    {
      break;
    }

LABEL_15:
    v15 = *(v11 + 1);
    if (v15)
    {
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v16 = *(v11 + 2);
        v17 = *v16 == v11;
        v11 = v16;
      }

      while (!v17);
    }

    v11 = v16;
    if (v16 == this + 4)
    {
      goto LABEL_2;
    }
  }

  if (*(this + 801) & 1) == 0 && (ZinIrRegAllocUtil::IsChainable(v20, this[22], v12))
  {
    if (ZinIrRegAllocUtil::IsL2Dependentable(v20, this[22], (this + 104)))
    {
      ZinCpBasedAllocator::FindInplaceablePorts(&__p, this, v20);
      v14 = __p;
      v13 = v19;
      if (__p == v19)
      {
LABEL_12:
        v2 &= 0xFFFFFFFFFFFFFF00;
        v3 &= 0xFFFFFFFFFFFFFF00;
        ZinCpBasedAllocator::TryPromoteChainToL2Dependent(this, v20, v2, v3, a2);
      }

      else
      {
        while (!ZinCpBasedAllocator::TryPromoteChainToL2Dependent(this, v20, *v14, 1, a2))
        {
          if (++v14 == v13)
          {
            goto LABEL_12;
          }
        }
      }

      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinCpBasedAllocator::PromoteChainToL2Dependent();
  }

  v9 = 3;
LABEL_3:
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v21, v22);
  return v9;
}

void sub_1A69F2D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a13, a14);
  _Unwind_Resume(a1);
}

uint64_t ZinCpBasedAllocator::PromoteResidentToL2Dependent(ZinIrResourceTracker **this)
{
  L2 = ZinIrResourceTracker::GetL2(this[119]);
  v3 = *(this[22] + 55);
  v4 = (*(this[19] + 1) - *this[19]) >> 3;
  p_RootTensor = 0;
  v45 = v4;
  ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(L2, &p_RootTensor, v3, v51);
  if (!v53)
  {
    v5 = this[3];
    if (v5 != (this + 4))
    {
      v6 = &v45;
      v7 = &v42;
      do
      {
        v50 = *(v5 + 4);
        p_RootTensor = &v50;
        if (*(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v50, &std::piecewise_construct, &p_RootTensor) + 24) == 4 || (p_RootTensor = &v50, !*(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v50, &std::piecewise_construct, &p_RootTensor) + 24)))
        {
          if ((*(this + 801) & 1) == 0)
          {
            if (ZinIrRegAllocUtil::IsChainable(v50, this[22], v8))
            {
              v9 = *(v50 + 19);
              v10 = **ZinIrOpLayer::GetOutgoingLayers(v9);
              MemoryPools = ZinIrContext::GetMemoryPools(v10);
              if (MemoryPools[1] - *MemoryPools < 9uLL || !ZinIrOpLayer::IsPELayer(v10))
              {
                if (ZinCpBasedAllocator::GetInputTensorWithL2InplaceDecision(this, v9))
                {
                  v12 = (*(*v10 + 40))(v10, 0);
                  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 104), v12);
                  p_RootTensor = &RootTensor;
                  v13 = std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &RootTensor, &std::piecewise_construct, &p_RootTensor);
                  if (CpAllocUtils::IsNonResident(*(v13 + 24)))
                  {
                    p_RootTensor = &v50;
                    if (*(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v50, &std::piecewise_construct, &p_RootTensor) + 24) == 4)
                    {
                      ZinIrResourceTracker::SetAllocationDecision(this[119], v50, 5);
                      ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v50);
                    }

                    else
                    {
                      p_RootTensor = &v50;
                      if (!*(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v50, &std::piecewise_construct, &p_RootTensor) + 24))
                      {
                        v14 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 14, &v50);
                        if (!v14)
                        {
                          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                        }

                        v15 = v7;
                        v16 = v6;
                        v48 = *(v14 + 3);
                        v17 = ZinIrResourceTracker::GetL2(this[119]);
                        PeakPressure = ZinIrMemoryPressureAnalyzer::GetPeakPressure(v17, &v48);
                        ZinIrResourceTracker::SetAllocationDecision(this[119], v50, 3);
                        ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v50);
                        v18 = (*(*v10 + 40))(v10, 0);
                        ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v18);
                        v19 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(this, v50);
                        v21 = v20;
                        v22 = (*(*v10 + 40))(v10, 0);
                        v23 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(this, v22);
                        if (v23 >= v19)
                        {
                          v25 = v19;
                        }

                        else
                        {
                          v25 = v23;
                        }

                        if (v21 <= v24)
                        {
                          v26 = v24;
                        }

                        else
                        {
                          v26 = v21;
                        }

                        v47[0] = v25;
                        v47[1] = v26 + 1;
                        v27 = ZinIrResourceTracker::GetL2(this[119]);
                        ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v27, v47, *(this[22] + 55), &p_RootTensor);
                        ZinIrResourceTracker::SetAllocationDecision(this[119], v50, 0);
                        v6 = v16;
                        v7 = v15;
                        if (v46)
                        {
                          ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v50);
                          v28 = (*(*v10 + 40))(v10, 0);
                          ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v28);
                          v29 = ZinIrResourceTracker::GetL2(this[119]);
                          v30 = *(this[22] + 55);
                          v40 = v48;
                          ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v29, &v40, v30, &v41);
                          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&p_RootTensor, v45);
                          v31 = v42;
                          p_RootTensor = v41;
                          v45 = v42;
                          v46 = v43;
                          if (v43)
                          {
                            v42[2] = v16;
                            v41 = v15;
                            *v15 = 0;
                            v15[1] = 0;
                            v31 = 0;
                          }

                          else
                          {
                            p_RootTensor = v16;
                          }

                          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v41, v31);
                          v32 = ZinIrResourceTracker::GetL2(this[119]);
                          if (PeakPressure != ZinIrMemoryPressureAnalyzer::GetPeakPressure(v32, &v48))
                          {
                            v37 = (v50 + 40);
                            v38 = "Invalid memory pressure analyzer while resident/inplace to l2-dep update in %s";
                            if (*(v50 + 63) < 0)
                            {
                              goto LABEL_39;
                            }

                            goto LABEL_40;
                          }

                          if (v46)
                          {
                            v37 = (v50 + 40);
                            v38 = "Invalid resident/inplace to l2-dep update in %s";
                            if (*(v50 + 63) < 0)
                            {
LABEL_39:
                              v37 = *v37;
                            }

LABEL_40:
                            ZinAssertImpl(v38, v37);
                          }
                        }

                        else
                        {
                          ZinIrResourceTracker::SetAllocationDecision(this[119], v50, 3);
                        }

                        std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&p_RootTensor, v45);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v33 = *(v5 + 1);
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = *(v5 + 2);
            v35 = *v34 == v5;
            v5 = v34;
          }

          while (!v35);
        }

        v5 = v34;
      }

      while (v34 != this + 4);
    }
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v51, v52);
  return 0;
}

void sub_1A69F3240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a16, a17);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v17 - 112, *(v17 - 104));
  _Unwind_Resume(a1);
}

uint64_t ZinCpBasedAllocator::PromoteParallelExecution(ZinIrResourceTracker **this)
{
  L2 = ZinIrResourceTracker::GetL2(this[119]);
  v3 = *(this[22] + 55);
  v4 = (*(this[19] + 1) - *this[19]) >> 3;
  v38 = 0;
  v39 = v4;
  ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(L2, &v38, v3, v40);
  if (!v42)
  {
    NumAnesUsed = ZinBondedUtils::GetNumAnesUsed(this[20], this[21]);
    __p = 0;
    v36 = 0;
    v37 = 0;
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&__p, 0, 0, 0);
    std::vector<std::vector<ZinANELayer *>>::vector[abi:ne200100](&v38, NumAnesUsed, &__p);
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    v6 = this[19];
    v7 = *v6;
    v8 = *(v6 + 1);
    if (*v6 != v8)
    {
      do
      {
        v9 = *v7;
        if (ZinIrOpLayer::IsANELayer(*v7))
        {
          __p = v9;
          BondedInfo = ZinEngineLayer::GetBondedInfo(v9);
          if (ZinBondedInfo::IsAneIndexLocked(BondedInfo))
          {
            v11 = ZinEngineLayer::GetBondedInfo(__p);
            AneIndex = ZinBondedInfo::GetAneIndex(v11);
            if (*AneIndex >= 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3))
            {
              ZinAssertImpl("Invalid ANE Index");
            }

            std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&v38[3 * *AneIndex], &__p);
          }

          else
          {
            std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](v38, &__p);
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }

    v13 = v38;
    v14 = v39;
    while (v13 != v14)
    {
      v15 = *v13;
      if (v13[1] - *v13 != 8)
      {
        v16 = 0;
        v17 = -1;
        do
        {
          v18 = *(v15 + 8 * v16);
          v19 = *(v18 + 48);
          if (v19 < v17)
          {
            ZinAssertImpl("TID should increase monotonically over iteration");
          }

          v36 = 0;
          v37 = 0;
          __p = 0;
          for (i = v16 + 1; i < (v13[1] - *v13) >> 3; ++i)
          {
            if ((v36 - __p) > 0x10)
            {
              break;
            }

            v34 = *(*v13 + 8 * i);
            IsNELayer = ZinIrOpLayer::IsNELayer(v18);
            if (IsNELayer == ZinIrOpLayer::IsNELayer(v34))
            {
              break;
            }

            std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&__p, &v34);
          }

          v22 = __p;
          v23 = v36;
          if (__p != v36)
          {
            v24 = ((v36 - __p) >> 3) - 1;
            v25 = __p + 8;
            while (v24)
            {
              v26 = *(*(v25 - 1) + 384) + 1;
              v27 = *(*v25 + 384);
              --v24;
              v25 += 8;
              if (v26 != v27)
              {
                ZinAssertImpl("Identified sequence should be back-to-back TDs");
              }
            }

            while (1)
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v31, v22, v23, (v23 - v22) >> 3);
              v28 = ZinCpBasedAllocator::PromoteParallelExecutionBetweenTasks(this, v18, &v31);
              if (v31)
              {
                v32 = v31;
                operator delete(v31);
              }

              v22 = __p;
              v29 = v36;
              if (v28)
              {
                break;
              }

              v23 = (v36 - 8);
              v36 -= 8;
              if (__p == v29 - 8)
              {
                v29 = __p;
                break;
              }
            }

            v16 += (v29 - __p) >> 3;
          }

          if (v22)
          {
            v36 = v22;
            operator delete(v22);
          }

          ++v16;
          v15 = *v13;
          v17 = v19;
        }

        while (v16 < ((v13[1] - *v13) >> 3) - 1);
      }

      v13 += 3;
    }

    __p = &v38;
    std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v40, v41);
  return 0;
}

void sub_1A69F35B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t ZinCpBasedAllocator::VerifyAllocationDecision(ZinCpBasedAllocator *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = this + 32;
  if (v2 == this + 32)
  {
LABEL_9:
    L2 = ZinIrResourceTracker::GetL2(*(this + 119));
    v8 = *(*(this + 22) + 440);
    v9 = *(*(*(this + 19) + 8) - 8);
    v10 = *(v9 + 80) + *(v9 + 72);
    *__p = 0;
    *&__p[8] = v10;
    ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(L2, __p, v8, &v22);
    v11 = v24;
    *(this + 800) = v24 == 0;
    if (v11)
    {
      if (*(this + 42))
      {
        v12 = ZinIrResourceTracker::GetL2(*(this + 119));
        ZinIrMemoryPressureAnalyzer::GetDebugString(v12, *(*(this + 22) + 440), __p);
        v13 = v26 >= 0 ? __p : *__p;
        v14 = v26 >= 0 ? HIBYTE(v26) : *&__p[8];
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 26, v13, v14);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(*__p);
        }
      }

      std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::clear(this + 9);
      v15 = v22;
      if (v22 != &v23)
      {
        v16 = MEMORY[0x1E69E9C10];
        do
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = v15[4];
            v18 = (v17 + 40);
            if (*(v17 + 63) < 0)
            {
              v18 = *v18;
            }

            *__p = 136315650;
            *&__p[4] = v18;
            *&__p[12] = 2080;
            *&__p[14] = "/Library/Caches/com.apple.xbs/Sources/ANECompiler/libs/inference/compiler/ZinIrSchedule/src/ZinCpBasedAllocator.cpp";
            v26 = 1024;
            v27 = 1046;
            _os_log_impl(&dword_1A617D000, v16, OS_LOG_TYPE_INFO, "INFO: Allocation decision in %s is beyond budget (file %s, line %d)\n", __p, 0x1Cu);
          }

          v19 = v15[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v15[2];
              v6 = *v20 == v15;
              v15 = v20;
            }

            while (!v6);
          }

          v15 = v20;
        }

        while (v20 != &v23);
      }
    }

    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v22, v23);
    return 0;
  }

  else
  {
    while (1)
    {
      *__p = *(v2 + 4);
      if (!std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, __p))
      {
        break;
      }

      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
      if (v5 == v3)
      {
        goto LABEL_9;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCpBasedAllocator::VerifyAllocationDecision(__p);
    }

    return 3;
  }
}

void sub_1A69F38D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a12, a13);
  _Unwind_Resume(a1);
}

void ZinCpBasedAllocator::UndoParallelPairSchedules(ZinCpBasedAllocator *this)
{
  v1 = *(this + 3);
  v2 = (this + 32);
  if (v1 != (this + 32))
  {
    do
    {
      v9 = v1[4];
      v4 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &v9);
      if (v4)
      {
        v5 = v4;
        if (CpAllocUtils::IsChain(*(v4 + 24)) || CpAllocUtils::IsL2Dependent(*(v5 + 24)))
        {
          ZinCpBasedAllocator::UndoParallelPairSchedule(this, v9);
        }
      }

      v6 = v1[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != v2);
  }
}

void ZinCpBasedAllocator::CreateCpAllocGraphDotFile(ZinCpBasedAllocator *this, const CpAllocGraph *a2)
{
  v25[19] = *MEMORY[0x1E69E9840];
  if (*(this + 42))
  {
    if (*(this + 799) >= 0)
    {
      v4 = *(this + 799);
    }

    else
    {
      v4 = *(this + 98);
    }

    v5 = &v21;
    std::string::basic_string[abi:ne200100](&v21, v4 + 9);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v21.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 799) >= 0)
      {
        v6 = this + 776;
      }

      else
      {
        v6 = *(this + 97);
      }

      memmove(v5, v6, v4);
    }

    strcpy(v5 + v4, ".CpGraph.");
    if (*(a2 + 335) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 39), *(a2 + 40));
    }

    else
    {
      __p = *(a2 + 13);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v21, p_p, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v24, ".dot", 4uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v23 = v11->__r_.__value_.__r.__words[2];
    *v22 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v25[6] = 0;
    v13 = MEMORY[0x1E69E5530] + 64;
    v25[0] = MEMORY[0x1E69E5530] + 64;
    v14 = MEMORY[0x1E69E54D0];
    v15 = *(MEMORY[0x1E69E54D0] + 16);
    v24.__r_.__value_.__r.__words[0] = *(MEMORY[0x1E69E54D0] + 8);
    *(v24.__r_.__value_.__r.__words + *(v24.__r_.__value_.__r.__words[0] - 24)) = v15;
    v16 = (&v24 + *(v24.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v16, &v24.__r_.__value_.__r.__words[1]);
    v17 = MEMORY[0x1E69E5530] + 24;
    v16[1].__vftable = 0;
    v16[1].__fmtflags_ = -1;
    v24.__r_.__value_.__r.__words[0] = v17;
    v25[0] = v13;
    MEMORY[0x1AC559A60](&v24.__r_.__value_.__r.__words[1]);
    std::ofstream::open();
    CpGraph::CreateDotString(&v21, a2);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v21;
    }

    else
    {
      v18 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v21.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v18, v19);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v24 + *(v24.__r_.__value_.__r.__words[0] - 24)), *(&v24 + *(v24.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
    }

    v24.__r_.__value_.__r.__words[0] = *v14;
    *(v24.__r_.__value_.__r.__words + *(v24.__r_.__value_.__r.__words[0] - 24)) = v14[3];
    MEMORY[0x1AC559A70](&v24.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x1AC559F60](v25);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }
}

void sub_1A69F3DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinCpBasedAllocator::CalculatesL2BudgetPerRegion(uint64_t a1, ZinIrContext ***a2, void *a3, unint64_t a4, void *a5)
{
  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    do
    {
      v12 = *v9;
      MemoryPools = ZinIrContext::GetMemoryPools(*v9);
      v14 = *MemoryPools;
      v15 = *(MemoryPools + 8);
      while (v14 != v15)
      {
        v16 = (*(**v14 + 40))(*v14, 0);
        RootTensor = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v16);
        std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer *>(v34, &RootTensor, &RootTensor);
        ++v14;
      }

      v17 = (*(*v12 + 40))(v12, 0);
      RootTensor = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v17);
      std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer *>(v34, &RootTensor, &RootTensor);
      ++v9;
    }

    while (v9 != v10);
    v9 = *a2;
    v10 = a2[1];
  }

  v18 = *(a1 + 48);
  if (v18 == (a1 + 56))
  {
    v19 = 0;
  }

  else
  {
    v19 = 0;
    v20 = *(*v9 + 9);
    v21 = *(*(v10 - 1) + 10) + *(*(v10 - 1) + 9);
    do
    {
      v22 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 112), v18 + 4);
      if (!v22)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (!std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(v34, v18 + 4))
      {
        v26 = v22[3];
        if ((v26 & 0x8000000000000000) == 0)
        {
          v27 = v22[4];
          if ((v27 & 0x8000000000000000) == 0 && (v20 & 0x8000000000000000) == 0 && (v21 & 0x8000000000000000) == 0 && v26 <= v20 && v27 >= v21)
          {
            v28 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a3, v18 + 4);
            if (v28)
            {
              v29 = *(v28 + 24);
              if (v29 <= 7 && ((1 << v29) & 0xC1) != 0)
              {
                L2FootprintCalculator = ZinIrExecutionBehavior::GetL2FootprintCalculator(*(a1 + 944));
                ZinL2FootprintCalculator::GetResidentBufferSize(*L2FootprintCalculator, v18[4]);
                v19 += v31;
              }
            }
          }
        }
      }

      v23 = v18[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v18[2];
          v25 = *v24 == v18;
          v18 = v24;
        }

        while (!v25);
      }

      v18 = v24;
    }

    while (v24 != (a1 + 56));
  }

  if (a4 <= v19)
  {
    *a5 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      ZinCpBasedAllocator::CalculatesL2BudgetPerRegion();
    }
  }

  else
  {
    *a5 = a4 - v19;
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v34);
  return a4 > v19;
}

void sub_1A69F4110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ZinCpBasedAllocator::InitializeEarlyAllocationDecision(ZinCpBasedAllocator *this)
{
  v2 = (this + 24);
  v3 = *(this + 3);
  v4 = this + 32;
  if (v3 != (this + 32))
  {
    v57[0] = v3[4];
    L2FootprintCalculator = ZinIrExecutionBehavior::GetL2FootprintCalculator(*(this + 118));
    ZinL2FootprintCalculator::GetResidentBufferSize(*L2FootprintCalculator, v57[0]);
    v8 = v7;
    v9 = *(this + 22);
    if (v7 <= *(v9 + 55))
    {
      v11 = *(v57[0] + 20);
      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = 0;
    }

    else
    {
      if (*(this + 801))
      {
        goto LABEL_12;
      }

      IsChainable = ZinIrRegAllocUtil::IsChainable(v57[0], v9, v6);
      v11 = *(v57[0] + 20);
      if (!v11)
      {
        if ((IsChainable & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }

      v12 = IsChainable ^ 1;
    }

    v13 = *(v11 + 96);
    v14 = v13 != 2 && v12 == 0;
    if (!v14)
    {
LABEL_12:
      L2 = ZinIrResourceTracker::GetL2(*(this + 119));
      v52[0] = v57;
      v16 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 14, v57, &std::piecewise_construct, v52);
      ZinIrMemoryPressureAnalyzer::AddTensorAllocation(L2, v8, (v16 + 3), v57[0]);
    }

    if (v13 == 1)
    {
      v17 = ZinIrResourceTracker::GetL2(*(this + 119));
      v52[0] = v57;
      v18 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 14, v57, &std::piecewise_construct, v52);
      ZinIrMemoryPressureAnalyzer::AddTensorAllocation(v17, v8, (v18 + 3), v57[0]);
    }

LABEL_16:
    v19 = ZinIrResourceTracker::GetL2(*(this + 119));
    v52[0] = v57;
    v20 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 14, v57, &std::piecewise_construct, v52);
    ZinIrMemoryPressureAnalyzer::AddTensorAllocation(v19, v8, (v20 + 3), v57[0]);
  }

  v21 = ZinIrResourceTracker::GetL2(*(this + 119));
  v22 = *(*(this + 22) + 440);
  v23 = (*(*(this + 19) + 8) - **(this + 19)) >> 3;
  v52[0] = 0;
  v52[1] = v23;
  ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v21, v52, v22, v54);
  ZinBondedUtils::GetSharedRootTensors(v52, *(this + 20));
  v24 = *v2;
  if (*v2 == v4)
  {
    goto LABEL_41;
  }

  do
  {
    v57[0] = *(v24 + 4);
    if (std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, v57))
    {
      goto LABEL_34;
    }

    v25 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(v53, v57);
    v28 = v57[0];
    if (v25)
    {
      v29 = 1;
LABEL_33:
      ZinIrResourceTracker::SetAllocationDecision(*(this + 119), v28, v29);
      goto LABEL_34;
    }

    if (ZinIrCircularBufferUtil::QualifyForCircularBuffer(v57[0], *(this + 22), v26, v27) && ZinCpBasedAllocator::IsBoundaryForTiledRegions(this, v57[0]))
    {
      v29 = 6;
LABEL_32:
      v28 = v57[0];
      goto LABEL_33;
    }

    if (!std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__count_unique<ZinIrTensor *>(v54, v57))
    {
      if (*(this + 801) & 1) == 0 && (ZinIrRegAllocUtil::IsChainable(v57[0], *(this + 22), v30))
      {
        goto LABEL_34;
      }

      v29 = 0;
      goto LABEL_32;
    }

    v31 = ZinIrExecutionBehavior::GetL2FootprintCalculator(*(this + 118));
    ZinL2FootprintCalculator::GetResidentBufferSize(*v31, v57[0]);
    v34 = v33;
    if (((*(this + 801) & 1) != 0 || (ZinIrRegAllocUtil::IsChainable(v57[0], *(this + 22), v32) & 1) == 0) && v34 > *(*(this + 22) + 440))
    {
      ZinIrResourceTracker::SetAllocationDecision(*(this + 119), v57[0], 1);
    }

LABEL_34:
    v35 = *(v24 + 1);
    if (v35)
    {
      do
      {
        v36 = v35;
        v35 = *v35;
      }

      while (v35);
    }

    else
    {
      do
      {
        v36 = *(v24 + 2);
        v14 = *v36 == v24;
        v24 = v36;
      }

      while (!v14);
    }

    v24 = v36;
  }

  while (v36 != v4);
  v24 = *v2;
LABEL_41:
  if (v24 != v4)
  {
    do
    {
      v37 = *(v24 + 4);
      v38 = v37[19];
      if (*(*(v38 + 11) + 8) == 7)
      {
        MemoryPools = ZinIrContext::GetMemoryPools(v37[19]);
        v40 = (MemoryPools[1] - *MemoryPools) >> 3;
        if (v40 >= 0x10)
        {
          *v57 = 0u;
          v58 = 0u;
          v59 = 1065353216;
          v41 = ZinIrContext::GetMemoryPools(v38);
          v42 = *v41;
          v43 = *(v41 + 8);
          if (*v41 != v43)
          {
            while (1)
            {
              v44 = *v42;
              v45 = ZinIrContext::GetMemoryPools(*v42);
              if (v45[1] - *v45 != 8)
              {
                break;
              }

              OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v44);
              if (OutgoingLayers[1] - *OutgoingLayers != 8)
              {
                break;
              }

              InputTensor = ZinIrOpLayer::GetInputTensor(v44, 0);
              std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer *>(v57, &InputTensor, &InputTensor);
              if (++v42 == v43)
              {
                if (*(&v58 + 1) != 1)
                {
                  break;
                }

                v47 = ZinIrOpLayer::GetOutgoingLayers(*(*(v58 + 16) + 152));
                v48 = (v47[1] - *v47) >> 3;
                std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v57);
                if (v48 >= 0x20 && v48 > v40)
                {
                  ZinIrResourceTracker::SetAllocationDecision(*(this + 119), v37, 1);
                }

                goto LABEL_56;
              }
            }
          }

          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v57);
        }
      }

LABEL_56:
      v50 = *(v24 + 1);
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = *(v24 + 2);
          v14 = *v51 == v24;
          v24 = v51;
        }

        while (!v14);
      }

      v24 = v51;
    }

    while (v51 != v4);
  }

  ZinCpBasedAllocatorUtil::PrintEarlyAllocationDecision(this + 26, v2, (this + 72), *(this + 22));
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v53);
  std::__list_imp<ZinIrSection *>::clear(v52);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v54, v55);
}

void sub_1A69F4638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a12);
  std::__list_imp<ZinIrSection *>::clear(&a9);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a17, a18);
  _Unwind_Resume(a1);
}

BOOL ZinCpBasedAllocator::IsBoundaryForTiledRegions(ZinCpBasedAllocator *this, ZinIrTensor *a2)
{
  v16 = 0;
  v17 = 0;
  v15 = &v16;
  TensorFamily = ZinTensorFamilyUtil::GetTensorFamily((this + 832), a2);
  v3 = *TensorFamily;
  v4 = TensorFamily[1];
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = *(*v3 + 152);
    if (ZinIrOpLayer::IsANELayer(v6) && *(v5 + 208) == 1)
    {
      v14 = *(v5 + 184);
      std::__tree<ZinIrTensor::SplitIDs>::__emplace_unique_key_args<ZinIrTensor::SplitIDs,ZinIrTensor::SplitIDs const&>(&v15, &v14, &v14);
    }

    OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v6);
    v8 = *OutgoingLayers;
    v9 = *(OutgoingLayers + 8);
    while (v8 != v9)
    {
      v10 = *v8;
      if (ZinIrOpLayer::IsANELayer(*v8) && *((*(*v10 + 40))(v10, 0) + 208) == 1)
      {
        v11 = (*(*v10 + 40))(v10, 0);
        if ((*(v11 + 208) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v14 = *(v11 + 184);
        std::__tree<ZinIrTensor::SplitIDs>::__emplace_unique_key_args<ZinIrTensor::SplitIDs,ZinIrTensor::SplitIDs const&>(&v15, &v14, &v14);
      }

      ++v8;
    }

    ++v3;
  }

  v12 = v17 != 0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v15, v16);
  return v12;
}

uint64_t ZinCpBasedAllocator::NeedSplitForInplaceAllocation(ZinIrExecutionBehavior **this, ZinIrOpLayer *a2)
{
  if (!a2 || *(*(a2 + 11) + 8) == 28)
  {
    return 0;
  }

  v5 = *(a2 + 21);
  v6 = (*(*a2 + 40))(a2, 0);
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 104), v6);
  ZinIrTensor::GetTensorSizeInBytes(RootTensor);
  v9 = v8;
  if (*(this + 936) == 1)
  {
    v10 = (*(*a2 + 40))(a2, 0);
    ZinTensorFamilyUtil::GetLastReadUsage(v26, (this + 104), v10);
    if ((v27 & 1) == 0)
    {
      goto LABEL_7;
    }

    LastConsumer = v26[0];
    if (!v26[0])
    {
      goto LABEL_7;
    }

LABEL_9:
    v15 = ZinIrExecutionBehavior::GetInPlaceUpdate(this[118]);
    ZinIrInPlaceUpdate::IsInPlaceable(*v15, LastConsumer, v5, 2, *(this[22] + 1165), v26);
    v13 = v26[0];
    v12 = v26[1];
    goto LABEL_10;
  }

  v14 = (*(*a2 + 40))(a2, 0);
  LastConsumer = ZinIrRegAllocUtil::GetLastConsumer(v14, (this + 104));
  if (LastConsumer)
  {
    goto LABEL_9;
  }

LABEL_7:
  v12 = 0;
  v13 = 0;
LABEL_10:
  if (!ZinIrOpLayer::IsPELayer(a2) || (MemoryPools = ZinIrContext::GetMemoryPools(a2), MemoryPools[1] - *MemoryPools < 9uLL))
  {
LABEL_16:
    v3 = 0;
    goto LABEL_17;
  }

  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(a2);
  v3 = 0;
  if (OutgoingLayers[1] - *OutgoingLayers >= 9uLL && v12 != v13)
  {
    if (v9 >= this[24] && v9 <= this[25])
    {
      v19 = ZinIrContext::GetMemoryPools(a2);
      v20 = v19[1];
      if (*v19 == v20)
      {
        v3 = 1;
      }

      else
      {
        v21 = *v19 + 8;
        do
        {
          v22 = (*(**(v21 - 8) + 40))(*(v21 - 8), 0);
          v23 = ZinTensorFamilyUtil::GetRootTensor((this + 104), v22);
          IsPipelinable = ZinIrRegAllocUtil::IsPipelinable(v23, this[22], (this + 104));
          if (v21 == v20)
          {
            v25 = 1;
          }

          else
          {
            v25 = IsPipelinable;
          }

          v21 += 8;
        }

        while ((v25 & 1) == 0);
        v3 = IsPipelinable ^ 1u;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  if (v13)
  {
    operator delete(v13);
  }

  return v3;
}

void sub_1A69F4A88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ZinCpBasedAllocator::GetEarlyAllocationDecision(ZinCpBasedAllocator *this, const ZinANELayer *a2, BOOL *a3, BOOL *a4)
{
  *a3 = 1;
  (*(*a2 + 544))(&__p, a2);
  v8 = __p;
  if (v16 != __p)
  {
    v9 = 0;
    while (1)
    {
      RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), v8[v9]);
      v10 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 9, &RootTensor);
      if (!v10 || *(v10 + 24))
      {
        break;
      }

      ++v9;
      v8 = __p;
      if (v9 >= (v16 - __p) >> 3)
      {
        goto LABEL_8;
      }
    }

    *a3 = 0;
  }

LABEL_8:
  v11 = (*(*a2 + 40))(a2, 0);
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), v11);
  v12 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 9, &RootTensor);
  if (v12)
  {
    v13 = *(v12 + 24) == 0;
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_1A69F4BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinCpBasedAllocator::UpdateScheduleForChainPair(ZinCpBasedAllocator *this, const ZinIrTensor *a2)
{
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), a2);
  v3 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &RootTensor);
  if (!v3)
  {
    ZinAssertImpl("Allocation decision must exist");
  }

  if (!CpAllocUtils::IsChain(*(v3 + 24)))
  {
    ZinAssertImpl("Allocation decision must be chain");
  }

  v4 = *(RootTensor + 19);
  v5 = **ZinIrOpLayer::GetOutgoingLayers(v4);
  ZinCpBasedAllocator::UndoParallelPairSchedule(this, RootTensor);
  v6 = *(v4 + 10) + *(v4 + 9);
  v7 = *(v5 + 72) - v6;
  *(v5 + 72) = v6;
  *(v5 + 80) = v7;
}

void ZinCpBasedAllocator::UpdateScheduleForL2DependentPair(ZinCpBasedAllocator *this, const ZinIrTensor *a2)
{
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), a2);
  v3 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &RootTensor);
  if (!v3)
  {
    ZinAssertImpl("Allocation decision must exist");
  }

  if ((CpAllocUtils::IsL2Dependent(*(v3 + 24)) & 1) == 0)
  {
    ZinAssertImpl("Allocation decision must be L2-dep");
  }

  ZinCpBasedAllocator::UndoParallelPairSchedule(this, RootTensor);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  IsL2Dependentable = ZinIrRegAllocUtil::IsL2Dependentable(RootTensor, *(this + 22), &v22, (this + 832));
  v5 = v22;
  if (IsL2Dependentable && v23 != v22)
  {
    v6 = 0;
    do
    {
      v7 = &v5[2 * v6];
      v9 = *v7;
      v8 = v7[1];
      v10 = *(*v7 + 10) + *(*v7 + 9);
      v11 = *(v8 + 9) - v10;
      *(v8 + 9) = v10;
      *(v8 + 10) = v11;
      __p = 0;
      v20 = 0;
      v21 = 0;
      IntermediateLayers = ZinTensorFamilyUtil::GetIntermediateLayers(v9, v8, 0, 0, &__p, (this + 832));
      v13 = __p;
      if (!IntermediateLayers)
      {
        v14 = v20;
        if (__p != v20)
        {
          v15 = __p;
          do
          {
            v16 = *v15++;
            v17 = *(v9 + 10) + *(v9 + 9);
            v18 = *(v16 + 72) - v17;
            *(v16 + 72) = v17;
            *(v16 + 80) = v18;
          }

          while (v15 != v14);
        }
      }

      if (v13)
      {
        v20 = v13;
        operator delete(v13);
      }

      ++v6;
      v5 = v22;
    }

    while (v6 < (v23 - v22) >> 4);
  }

  if (v5)
  {
    v23 = v5;
    operator delete(v5);
  }
}

void sub_1A69F4E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinCpBasedAllocator::UndoParallelPairSchedule(ZinCpBasedAllocator *this, const ZinIrTensor *a2)
{
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), a2);
  if (!std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &RootTensor))
  {
    ZinAssertImpl("Allocation decision must exist");
  }

  v14 = 0;
  v12 = -1;
  v13 = 0;
  ZinIrRegAllocUtil::FindLastProducerFirstConsumer(RootTensor, &v14, &v13, &v12, (this + 832));
  v3 = v13;
  if (v13)
  {
    *(v13 + 9) += *(v13 + 10);
    *(v3 + 10) = 0;
    __p = 0;
    v10 = 0;
    v11 = 0;
    IntermediateLayers = ZinTensorFamilyUtil::GetIntermediateLayers(v14, v3, 0, 0, &__p, (this + 832));
    v5 = __p;
    if (!IntermediateLayers)
    {
      v6 = v10;
      if (__p != v10)
      {
        v7 = __p;
        do
        {
          v8 = *v7++;
          *(v8 + 72) += *(v8 + 80);
          *(v8 + 80) = 0;
        }

        while (v7 != v6);
      }
    }

    if (v5)
    {
      v10 = v5;
      operator delete(v5);
    }
  }
}

void sub_1A69F4F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinCpBasedAllocator::UpdateScheduleForResidentAndNonResidentTensor(ZinCpBasedAllocator *this, const ZinIrTensor *a2)
{
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), a2);
  if (!std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &RootTensor))
  {
    ZinAssertImpl("Allocation decision must exist");
  }

  v5 = 0;
  v6 = 0;
  v4 = -1;
  ZinIrRegAllocUtil::FindLastProducerFirstConsumer(RootTensor, &v6, &v5, &v4, (this + 832));
  if (v5)
  {
    if (!ZinCpBasedAllocator::GetInputTensorWithPipelineDecision(this, v5))
    {
      ZinCpBasedAllocator::UndoParallelPairSchedule(this, a2);
    }
  }
}

ZinIrTensor *ZinCpBasedAllocator::GetInputTensorWithPipelineDecision(ZinCpBasedAllocator *this, const ZinIrOpLayer *a2)
{
  MemoryPools = ZinIrContext::GetMemoryPools(a2);
  v5 = *MemoryPools;
  v6 = *(MemoryPools + 8);
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    v7 = (*(**v5 + 40))(*v5, 0);
    RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), v7);
    v8 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 9, &RootTensor);
    if (!v8)
    {
      goto LABEL_12;
    }

    if (CpAllocUtils::IsChain(*(v8 + 24)))
    {
      goto LABEL_7;
    }

    v9 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 9, &RootTensor);
    if (!v9)
    {
LABEL_12:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (CpAllocUtils::IsL2Dependent(*(v9 + 24)))
    {
LABEL_7:
      if (ZinIrRegAllocUtil::GetFirstConsumer(RootTensor, (this + 832)) == a2)
      {
        return RootTensor;
      }
    }

    ++v5;
  }
}

uint64_t ZinCpBasedAllocator::UpdateMemoryPressureForPipelineDecision(ZinCpBasedAllocator *this, const ZinIrTensor *a2)
{
  ZinCpBasedAllocator::UpdateDMAPressureReflectingDecision(this, a2);
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), a2);
  if (RootTensor != a2)
  {
    ZinAssertImpl("API should be called for root tensor only");
  }

  v14 = 0;
  v12 = -1;
  v13 = 0;
  ZinIrRegAllocUtil::FindLastProducerFirstConsumer(RootTensor, &v14, &v13, &v12, (this + 832));
  v5 = (*(*v14 + 40))(v14, 0);
  v11 = ZinTensorFamilyUtil::GetRootTensor((this + 832), v5);
  if (!std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &v11) || (v6 = (*(*v13 + 40))(v13, 0), v10 = ZinTensorFamilyUtil::GetRootTensor((this + 832), v6), (v7 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &v10)) == 0))
  {
    ZinAssertImpl("Allocation decision must exist");
  }

  v8 = v7;
  ZinCpBasedAllocator::UpdateMemoryPressureReflectingDecision(this, v11);
  result = CpAllocUtils::IsNonResident(*(v8 + 24));
  if ((result & 1) == 0)
  {
    return ZinCpBasedAllocator::UpdateMemoryPressureReflectingDecision(this, v10);
  }

  return result;
}

uint64_t ZinCpBasedAllocator::UpdateDMAPressureReflectingDecision(ZinCpBasedAllocator *this, const ZinIrTensor *a2)
{
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), a2);
  if (!std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &RootTensor))
  {
    ZinAssertImpl("Allocation decision must exist");
  }

  ZinIrResourceTracker::RemoveDMABufferFromPressureAnalyzer(*(this + 119), RootTensor);
  ZinIrResourceTracker::AddDMABufferToPressureAnalyzer(*(this + 119), RootTensor);
  if ((*(this + 801) & 1) == 0 && (ZinIrRegAllocUtil::IsChainable(a2, *(this + 22), v4) & 1) != 0 || (result = ZinIrRegAllocUtil::IsL2Dependentable(a2, *(this + 22), (this + 832)), result))
  {
    v7 = 0;
    v8 = 0;
    v6 = -1;
    result = ZinIrRegAllocUtil::FindLastProducerFirstConsumer(RootTensor, &v8, &v7, &v6, (this + 832));
    if (result)
    {
      ZinIrResourceTracker::RemoveDMABufferFromPressureAnalyzer(*(this + 119), v8);
      ZinIrResourceTracker::AddDMABufferToPressureAnalyzer(*(this + 119), v8);
      ZinIrResourceTracker::RemoveDMABufferFromPressureAnalyzer(*(this + 119), v7);
      return ZinIrResourceTracker::AddDMABufferToPressureAnalyzer(*(this + 119), v7);
    }
  }

  return result;
}

uint64_t ZinCpBasedAllocator::UpdateMemoryPressureReflectingDecision(ZinCpBasedAllocator *this, const ZinIrTensor *a2)
{
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), a2);
  v3 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &RootTensor);
  if (!v3)
  {
    ZinAssertImpl("Allocation decision must exist");
  }

  v4 = v3;
  v5 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 14, &RootTensor);
  if (!v5 || (v6 = v5[3], (v7 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 14, &RootTensor)) == 0))
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v7[3] + 1;
  v22[0] = v6 - 1;
  v22[1] = v8;
  *&v21 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(this, RootTensor);
  *(&v21 + 1) = v9;
  p_RootTensor = &RootTensor;
  *(std::__hash_table<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 14, &RootTensor, &std::piecewise_construct, &p_RootTensor) + 3) = v21;
  L2 = ZinIrResourceTracker::GetL2(*(this + 119));
  result = ZinIrMemoryPressureAnalyzer::RemoveTensorAllocation(L2, RootTensor, v22);
  v12 = *(v4 + 24);
  if ((v12 - 3) >= 5)
  {
    if (v12 == 2)
    {
      L2FootprintCalculator = ZinIrExecutionBehavior::GetL2FootprintCalculator(*(this + 118));
      ChainBufferSize = ZinL2FootprintCalculator::GetChainBufferSize(*L2FootprintCalculator, RootTensor);
      v16 = ZinIrResourceTracker::GetL2(*(this + 119));
      v17 = RootTensor;
      v18 = ChainBufferSize;
LABEL_14:
      ZinIrMemoryPressureAnalyzer::AddTensorAllocation(v16, v18, &v21, v17);
    }

    if (*(v4 + 24))
    {
      return result;
    }
  }

  v13 = ZinIrExecutionBehavior::GetL2FootprintCalculator(*(this + 118));
  ZinL2FootprintCalculator::GetResidentBufferSize(*v13, RootTensor);
  if (v21 <= *(&v21 + 1))
  {
    v15 = v14;
    v16 = ZinIrResourceTracker::GetL2(*(this + 119));
    v17 = RootTensor;
    v18 = v15;
    goto LABEL_14;
  }

  if (!CpAllocUtils::IsL2Dependent(*(v4 + 24)) || (result = CpAllocUtils::IsL2Inplace(*(v4 + 24)), (result & 1) == 0))
  {
    ZinAssertImpl("Invalid schedule for L2-dep");
  }

  return result;
}

uint64_t ZinCpBasedAllocator::UpdateMemoryPressureForNonPipelineDecision(ZinCpBasedAllocator *this, const ZinIrTensor *a2)
{
  ZinCpBasedAllocator::UpdateDMAPressureReflectingDecision(this, a2);
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), a2);
  if (RootTensor != a2)
  {
    ZinAssertImpl("API should be called for root tensor only");
  }

  return ZinCpBasedAllocator::UpdateMemoryPressureReflectingDecision(this, RootTensor);
}

uint64_t ZinCpBasedAllocator::ComputeLiveRangeForTensor(ZinCpBasedAllocator *this, const ZinIrTensor *a2)
{
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), a2);
  v3 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 9, &RootTensor);
  if (!v3)
  {
    ZinAssertImpl("Allocation decision must exist");
  }

  v4 = v3;
  FirstProducer = ZinIrRegAllocUtil::GetFirstProducer(RootTensor, (this + 832));
  LastConsumer = ZinIrRegAllocUtil::GetLastConsumer(RootTensor, (this + 832));
  if (!FirstProducer)
  {
    v7 = *(*(RootTensor + 19) + 72);
    if (!LastConsumer)
    {
      return v7;
    }

    goto LABEL_4;
  }

  v7 = *(FirstProducer + 9);
  if (LastConsumer)
  {
LABEL_4:
    CpAllocUtils::IsL2Inplace(*(v4 + 24));
  }

  return v7;
}

void *ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(void *this, const ZinIrTensor *a2)
{
  if (a2)
  {
    v2 = this;
    RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 104), a2);
    this = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(v2 + 9, &RootTensor);
    if (!this)
    {
      ZinAssertImpl("Allocation decision must exist");
    }

    v3 = *(this + 24);
    if (v3 <= 8)
    {
      v4 = 1 << v3;
      if ((v4 & 0x153) != 0)
      {
        ZinCpBasedAllocator::UpdateScheduleForResidentAndNonResidentTensor(v2, RootTensor);
        return ZinCpBasedAllocator::UpdateMemoryPressureForNonPipelineDecision(v2, RootTensor);
      }

      else
      {
        if ((v4 & 0xA8) != 0)
        {
          ZinCpBasedAllocator::UpdateScheduleForL2DependentPair(v2, RootTensor);
        }

        else
        {
          ZinCpBasedAllocator::UpdateScheduleForChainPair(v2, RootTensor);
        }

        return ZinCpBasedAllocator::UpdateMemoryPressureForPipelineDecision(v2, RootTensor);
      }
    }
  }

  return this;
}

uint64_t ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureForParallelExecution(ZinCpBasedAllocator *this, ZinANELayer *a2, ZinANELayer *a3)
{
  if (!a2 || !a3)
  {
    ZinAssertImpl("Both tasks must exist to perform promotion");
  }

  v4 = *(a2 + 9);
  *(a2 + 10) = *(a3 + 9) - v4 + *(a3 + 10);
  CollectTensorsAroundLayer(a2, (this + 832), &v11);
  v5 = v11;
  v6 = v12;
  if (v11 != v12)
  {
    do
    {
      RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), *v5);
      v7 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &RootTensor);
      if (!v7)
      {
        ZinAssertImpl("Allocation decision must exist");
      }

      v8 = *(v7 + 24);
      if (v8 <= 8)
      {
        if (((1 << v8) & 0x153) != 0)
        {
          ZinCpBasedAllocator::UpdateMemoryPressureForNonPipelineDecision(this, RootTensor);
        }

        else
        {
          ZinCpBasedAllocator::UpdateMemoryPressureForPipelineDecision(this, RootTensor);
        }
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = v11;
  }

  if (v5)
  {
    v12 = v5;
    operator delete(v5);
  }

  return v4;
}

void sub_1A69F57A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CollectTensorsAroundLayer(ZinIrContext *a1@<X0>, ZinTensorFamilyUtil *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  MemoryPools = ZinIrContext::GetMemoryPools(a1);
  v7 = *MemoryPools;
  v8 = *(MemoryPools + 8);
  while (v7 != v8)
  {
    v9 = (*(**v7 + 40))(*v7, 0);
    RootTensor = ZinTensorFamilyUtil::GetRootTensor(a2, v9);
    std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](a3, &RootTensor);
    ++v7;
  }

  v10 = (*(*a1 + 40))(a1, 0);
  v11 = ZinTensorFamilyUtil::GetRootTensor(a2, v10);
  v13 = *(a3 + 8);
  v12 = *(a3 + 16);
  if (v13 >= v12)
  {
    v15 = (v13 - *a3) >> 3;
    if ((v15 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v16 = v12 - *a3;
    v17 = v16 >> 2;
    if (v16 >> 2 <= (v15 + 1))
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>(a3, v18);
    }

    v19 = (8 * v15);
    *v19 = v11;
    v14 = 8 * v15 + 8;
    v20 = *(a3 + 8) - *a3;
    v21 = v19 - v20;
    memcpy(v19 - v20, *a3, v20);
    v22 = *a3;
    *a3 = v21;
    *(a3 + 8) = v14;
    *(a3 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v13 = v11;
    v14 = (v13 + 1);
  }

  *(a3 + 8) = v14;
}

void sub_1A69F5954(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ZinCpBasedAllocator::RevertScheduleAndMemoryPressureForParallelExecution(ZinCpBasedAllocator *this, ZinANELayer *a2, const ZinLiveRange *a3)
{
  if (!a2)
  {
    ZinAssertImpl("Task must exist to perform promotion", 0, a3);
  }

  v3 = *(a2 + 9);
  if (v3 != *a3)
  {
    ZinAssertImpl("Invalid schedule set during parallel execution update");
  }

  *(a2 + 10) = *(a3 + 1) - v3;
  CollectTensorsAroundLayer(a2, (this + 832), &v10);
  v5 = v10;
  v6 = v11;
  if (v10 != v11)
  {
    do
    {
      RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), *v5);
      v7 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &RootTensor);
      if (!v7)
      {
        ZinAssertImpl("Allocation decision must exist");
      }

      v8 = *(v7 + 24);
      if (v8 <= 8)
      {
        if (((1 << v8) & 0x153) != 0)
        {
          ZinCpBasedAllocator::UpdateMemoryPressureForNonPipelineDecision(this, RootTensor);
        }

        else
        {
          ZinCpBasedAllocator::UpdateMemoryPressureForPipelineDecision(this, RootTensor);
        }
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = v10;
  }

  if (v5)
  {
    v11 = v5;
    operator delete(v5);
  }
}

void sub_1A69F5A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ZinIrTensor *ZinCpBasedAllocator::GetInputTensorWithL2InplaceDecision(ZinCpBasedAllocator *this, const ZinIrOpLayer *a2)
{
  MemoryPools = ZinIrContext::GetMemoryPools(a2);
  v5 = *MemoryPools;
  v6 = *(MemoryPools + 8);
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    v7 = (*(**v5 + 40))(*v5, 0);
    RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), v7);
    v8 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 9, &RootTensor);
    if (!v8)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (CpAllocUtils::IsL2Inplace(*(v8 + 24)) && ZinIrRegAllocUtil::GetLastConsumer(RootTensor, (this + 832)) == a2)
    {
      break;
    }

    ++v5;
  }

  return RootTensor;
}

BOOL ZinCpBasedAllocator::TryPromoteChainToL2Dependent(uint64_t a1, ZinIrOpLayer **a2, void *a3, char a4, _BYTE *a5)
{
  v62 = a2;
  v10 = a2[19];
  v11 = *(v10 + 21);
  v12 = **ZinIrOpLayer::GetOutgoingLayers(v10);
  v13 = (*(*v12 + 40))(v12, 0);
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v13);
  L2FootprintCalculator = ZinIrExecutionBehavior::GetL2FootprintCalculator(*(a1 + 944));
  ZinL2FootprintCalculator::GetResidentBufferSize(*L2FootprintCalculator, a2);
  v17 = v16;
  v18 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>((a1 + 112), &v62);
  if (!v18)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v61 = *(v18 + 3);
  L2 = ZinIrResourceTracker::GetL2(*(a1 + 952));
  PeakPressure = ZinIrMemoryPressureAnalyzer::GetPeakPressure(L2, &v61);
  v21 = ZinIrExecutionBehavior::GetInPlaceUpdate(*(a1 + 944));
  ZinIrInPlaceUpdate::IsInPlaceable(*v21, v12, v11, 2, *(*(a1 + 176) + 1165), &__p);
  if (v17 >= *(*(a1 + 176) + 440) || (v22 = (*(*v12 + 40))(v12, 0), v50 = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v22), v53 = &v50, *(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>((a1 + 72), &v50, &std::piecewise_construct, &v53) + 24)) || (v39 = v60, __p == v60))
  {
    v23 = 0;
  }

  else
  {
    v40 = __p + 8;
    do
    {
      InputTensor = ZinIrOpLayer::GetInputTensor(v12, *(v40 - 1));
      v23 = InputTensor == v62;
      v42 = InputTensor == v62 || v40 == v39;
      v40 += 8;
    }

    while (!v42);
  }

  if (ZinCpBasedAllocator::GetInputTensorWithL2InplaceDecision(a1, v12))
  {
    v23 = 0;
  }

  v58 = 0;
  if (a4)
  {
    v24 = ZinIrOpLayer::GetInputTensor(v62[19], a3);
    v58 = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v24);
    v25 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>((a1 + 72), &v58);
    if (!v25 || (v26 = *(v25 + 24), (CpAllocUtils::IsL2Dependent(v26) & 1) != 0) || CpAllocUtils::IsChain(v26) || std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__count_unique<ZinIrTensor *>(a1 + 48, &v58))
    {
      v27 = 0;
      goto LABEL_49;
    }

    if (v58)
    {
      v45 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>((a1 + 72), &v58);
      if (!v45)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v28 = *(v45 + 24);
      v46 = v58;
    }

    else
    {
      v46 = 0;
      v28 = 0;
    }

    ZinIrResourceTracker::SetAllocationDecision(*(a1 + 952), v46, 4);
  }

  else
  {
    v28 = 0;
  }

  if (v23)
  {
    v29 = 5;
  }

  else
  {
    v29 = 3;
  }

  ZinIrResourceTracker::SetAllocationDecision(*(a1 + 952), v62, v29);
  ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(a1, v58);
  ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(a1, v62);
  ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(a1, RootTensor);
  v56 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(a1, v62);
  v57 = v30;
  if (a4)
  {
    v31 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(a1, v58);
    v32 = v56;
    if (v31 < v56)
    {
      v32 = v31;
    }

    if (v57 > v30)
    {
      v30 = v57;
    }

    v56 = v32;
    v57 = v30;
  }

  if (v23)
  {
    v33 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(a1, RootTensor);
    v34 = v56;
    if (v33 < v56)
    {
      v34 = v33;
    }

    if (v57 > v30)
    {
      v30 = v57;
    }

    v56 = v34;
  }

  v57 = v30 + 1;
  v35 = ZinIrResourceTracker::GetL2(*(a1 + 952));
  ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v35, &v56, *(*(a1 + 176) + 440), &v53);
  if (a4)
  {
    ZinIrResourceTracker::SetAllocationDecision(*(a1 + 952), v58, v28);
  }

  ZinIrResourceTracker::SetAllocationDecision(*(a1 + 952), v62, 2);
  v27 = v55 == 0;
  if (!v55)
  {
    if (a4)
    {
      ZinIrResourceTracker::SetAllocationDecision(*(a1 + 952), v58, 4);
      v50 = v62;
      v51 = a3;
      std::__tree<std::__value_type<ZinIrTensor *,unsigned long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,unsigned long>,std::less<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,unsigned long>>>::__emplace_unique_key_args<ZinIrTensor *,std::pair<ZinIrTensor *,unsigned long>>(a1 + 808, &v50, &v50);
      if ((ZinIrRegAllocUtil::AdjustDimOrderForInplace(v62[19], a1 + 808, (a1 + 72), (a1 + 832)) & 1) == 0)
      {
        ZinAssertImpl("failed to propagate dim order for inplace");
      }
    }

    ZinIrResourceTracker::SetAllocationDecision(*(a1 + 952), v62, v29);
    *a5 = 1;
    goto LABEL_48;
  }

  ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(a1, v58);
  ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(a1, v62);
  ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(a1, RootTensor);
  v36 = ZinIrResourceTracker::GetL2(*(a1 + 952));
  v37 = *(*(a1 + 176) + 440);
  v49 = v61;
  ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v36, &v49, v37, &v50);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v53, v54);
  v38 = v51;
  v53 = v50;
  v54 = v51;
  v55 = v52;
  if (v52)
  {
    v51[2] = &v54;
    v50 = &v51;
    v51 = 0;
    v52 = 0;
    v38 = 0;
  }

  else
  {
    v53 = &v54;
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v50, v38);
  v43 = ZinIrResourceTracker::GetL2(*(a1 + 952));
  if (PeakPressure != ZinIrMemoryPressureAnalyzer::GetPeakPressure(v43, &v61))
  {
    v47 = v62 + 5;
    v48 = "Invalid memory pressure analyzer while chain to l2-dep update in %s";
    if ((*(v62 + 63) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v55)
  {
    v47 = v62 + 5;
    v48 = "Invalid chain to l2-dep update in %s";
    if ((*(v62 + 63) & 0x80000000) == 0)
    {
LABEL_60:
      ZinAssertImpl(v48, v47);
    }

LABEL_59:
    v47 = *v47;
    goto LABEL_60;
  }

LABEL_48:
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v53, v54);
LABEL_49:
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

  return v27;
}

void sub_1A69F60C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a16, a17);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

ZinIrTensor *ZinCpBasedAllocator::FindInplaceablePorts@<X0>(const void **__return_ptr a1@<X8>, ZinIrExecutionBehavior **this@<X0>, ZinIrTensor *a3@<X1>)
{
  v6 = *(*(a3 + 19) + 168);
  v7 = ZinIrExecutionBehavior::GetInPlaceUpdate(this[118]);
  ZinIrInPlaceUpdate::IsInPlaceable(*v7, *(a3 + 19), v6, 2, *(this[22] + 1165), a1);
  L2FootprintCalculator = ZinIrExecutionBehavior::GetL2FootprintCalculator(this[118]);
  ZinL2FootprintCalculator::GetResidentBufferSize(*L2FootprintCalculator, a3);
  if (v9 > *(this[22] + 55))
  {
    a1[1] = *a1;
  }

  result = ZinCpBasedAllocator::GetInputTensorWithL2InplaceDecision(this, *(a3 + 19));
  if (result)
  {
    a1[1] = *a1;
  }

  return result;
}

void sub_1A69F61D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinCpBasedAllocator::IsDisqualifiedForParallelExecution(uint64_t a1, ZinIrOpLayer *this, ZinIrOpLayer ***a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v8 = *v3;
    if (*(this + 48) == -1 || *(*v3 + 48) == -1)
    {
      return 1;
    }

    IsNELayer = ZinIrOpLayer::IsNELayer(this);
    if (IsNELayer == ZinIrOpLayer::IsNELayer(v8))
    {
      return 1;
    }

    v11 = (*(*this + 40))(this, 0);
    RootTensor = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v11);
    v12 = (*(*v8 + 40))(v8, 0);
    v58 = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v12);
    MemoryPools = ZinIrContext::GetMemoryPools(v8);
    v14 = *MemoryPools;
    v15 = *(MemoryPools + 8);
    if (*MemoryPools != v15)
    {
      v16 = 0;
      do
      {
        v17 = *v14++;
        v18 = (*(*v17 + 40))(v17, 0);
        v19 = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v18);
        v16 |= RootTensor == v19;
      }

      while (v14 != v15);
      if ((v16 & 1) != 0 && (v8 == **a3 || v8 != *(a3[1] - 1)))
      {
        return 1;
      }
    }

    v20 = ZinIrContext::GetMemoryPools(this);
    v21 = *v20;
    v22 = *(v20 + 8);
    while (v21 != v22)
    {
      v23 = (*(**v21 + 40))(*v21, 0);
      v60 = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v23);
      v24 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 72), &v60);
      if (!v24)
      {
        goto LABEL_56;
      }

      v25 = *(v24 + 24);
      if (CpAllocUtils::IsL2Dependent(v25) & 1) != 0 || CpAllocUtils::IsChain(v25) || (*(a1 + 801) & 1) == 0 && (ZinIrRegAllocUtil::IsChainable(v60, *(a1 + 176), v26))
      {
        return 1;
      }

      ++v21;
    }

    v27 = (*(*v8 + 40))(v8, 0);
    v57 = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v27);
    v28 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 72), &v57);
    if (!v28)
    {
      goto LABEL_56;
    }

    v29 = *(v28 + 24);
    if (CpAllocUtils::IsL2Dependent(v29) & 1) != 0 || CpAllocUtils::IsChain(v29) || (*(a1 + 801) & 1) == 0 && (ZinIrRegAllocUtil::IsChainable(v57, *(a1 + 176), v30))
    {
      return 1;
    }

    v31 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 72), &RootTensor);
    if (!v31 || (v32 = *(v31 + 24), (v33 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 72), &v58)) == 0))
    {
LABEL_56:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v34 = *(v33 + 24);
    if (CpAllocUtils::IsNonResident(v32) && CpAllocUtils::IsNonResident(v34))
    {
      return 1;
    }

    v55 = v34;
    v56 = v4;
    v35 = *ZinIrContext::GetMemoryPools(this);
    v36 = *(ZinIrContext::GetMemoryPools(this) + 8);
    while (1)
    {
      if (v35 == v36)
      {
        v41 = 0;
        goto LABEL_38;
      }

      v37 = *v35;
      v38 = (*(**v35 + 40))(*v35, 0);
      if ((IsKernelTensorToMatMul(v38, this) & 1) == 0)
      {
        v39 = (*(*v37 + 40))(v37, 0);
        v60 = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v39);
        v40 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 72), &v60);
        if (!v40)
        {
          goto LABEL_56;
        }

        if (CpAllocUtils::IsNonResident(*(v40 + 24)))
        {
          break;
        }
      }

      ++v35;
    }

    v41 = 1;
LABEL_38:
    v42 = *ZinIrContext::GetMemoryPools(v8);
    v43 = *(ZinIrContext::GetMemoryPools(v8) + 8);
    while (v42 != v43)
    {
      v44 = *v42;
      v45 = (*(**v42 + 40))(*v42, 0);
      if ((IsKernelTensorToMatMul(v45, v8) & 1) == 0)
      {
        v46 = (*(*v44 + 40))(v44, 0);
        v60 = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v46);
        v47 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 72), &v60);
        if (!v47)
        {
          goto LABEL_56;
        }

        if (CpAllocUtils::IsNonResident(*(v47 + 24)))
        {
          v4 = v56;
          v48 = v55;
          if ((v41 & 1) == 0)
          {
            v49 = v55;
LABEL_48:
            if (!CpAllocUtils::IsNonResident(v49))
            {
              goto LABEL_49;
            }
          }

          return 1;
        }
      }

      ++v42;
    }

    v4 = v56;
    v48 = v55;
    if (v41)
    {
      v49 = v32;
      goto LABEL_48;
    }

LABEL_49:
    if (CpAllocUtils::IsResident(v48))
    {
      L2FootprintCalculator = ZinIrExecutionBehavior::GetL2FootprintCalculator(*(a1 + 944));
      ZinL2FootprintCalculator::GetResidentBufferSize(*L2FootprintCalculator, v58);
      if (*(*(a1 + 176) + 440) * 0.5 < v51)
      {
        return 1;
      }
    }

    if (CpAllocUtils::IsResident(v32))
    {
      v52 = ZinIrExecutionBehavior::GetL2FootprintCalculator(*(a1 + 944));
      ZinL2FootprintCalculator::GetResidentBufferSize(*v52, RootTensor);
      if (*(*(a1 + 176) + 440) * 0.5 < v53)
      {
        return 1;
      }
    }

    if (++v3 == v4)
    {
      return 0;
    }
  }
}

BOOL ZinCpBasedAllocator::PromoteParallelExecutionBetweenTasks(uint64_t a1, ZinIrOpLayer *a2, uint64_t a3)
{
  v6 = (*(*a2 + 40))(a2, 0);
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((a1 + 832), v6);
  v31 = 0;
  v32 = 0;
  v30 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v30, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  IsDisqualifiedForParallelExecution = ZinCpBasedAllocator::IsDisqualifiedForParallelExecution(a1, a2, &v30);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if ((IsDisqualifiedForParallelExecution & 1) == 0)
  {
    v9 = *(*(*(a3 + 8) - 8) + 80) + *(*(*(a3 + 8) - 8) + 72);
    v29[0] = *(a2 + 9);
    v29[1] = v9;
    L2 = ZinIrResourceTracker::GetL2(*(a1 + 952));
    PeakPressure = ZinIrMemoryPressureAnalyzer::GetPeakPressure(L2, v29);
    if (PeakPressure <= *(*(a1 + 176) + 440))
    {
      v13 = PeakPressure;
      v28[0] = ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureForParallelExecution(a1, a2, *(*(a3 + 8) - 8));
      v28[1] = v14;
      v15 = ZinIrResourceTracker::GetL2(*(a1 + 952));
      ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v15, v29, *(*(a1 + 176) + 440), &v25);
      v12 = v27 == 0;
      if (!v27)
      {
LABEL_12:
        std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v25, v26);
        return v12;
      }

      ZinCpBasedAllocator::RevertScheduleAndMemoryPressureForParallelExecution(a1, a2, v28);
      v16 = ZinIrResourceTracker::GetL2(*(a1 + 952));
      ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v16, v29, *(*(a1 + 176) + 440), &v22);
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v25, v26);
      v17 = v23;
      v25 = v22;
      v26 = v23;
      v27 = v24;
      if (v24)
      {
        v23[2] = &v26;
        v22 = &v23;
        v23 = 0;
        v24 = 0;
        v17 = 0;
      }

      else
      {
        v25 = &v26;
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v22, v17);
      v18 = ZinIrResourceTracker::GetL2(*(a1 + 952));
      if (v13 == ZinIrMemoryPressureAnalyzer::GetPeakPressure(v18, v29))
      {
        if (!v27)
        {
          goto LABEL_12;
        }

        v20 = (RootTensor + 40);
        v21 = "Invalid parallel execution between tiles update in %s";
        if ((*(RootTensor + 63) & 0x80000000) == 0)
        {
LABEL_16:
          ZinAssertImpl(v21, v20, v22, v23, v24, v25, v26);
        }
      }

      else
      {
        v20 = (RootTensor + 40);
        v21 = "Invalid memory pressure analyzer while parallel execution between tiles update in %s";
        if ((*(RootTensor + 63) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      v20 = *v20;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t ZinCpBasedAllocator::PromoteDecisionToInplace(ZinCpBasedAllocator *this, ZinIrTensor *a2)
{
  v8 = a2;
  v9 = &v8;
  v3 = *(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v8, &std::piecewise_construct, &v9) + 24);
  if (v3 < 2)
  {
    v4 = v8;
    v5 = *(this + 119);
    v6 = 4;
LABEL_6:
    ZinIrResourceTracker::SetAllocationDecision(v5, v4, v6);
    return 1;
  }

  if (v3 - 4 >= 2)
  {
    if (v3 != 3)
    {
      return 0;
    }

    v4 = v8;
    v5 = *(this + 119);
    v6 = 5;
    goto LABEL_6;
  }

  return 1;
}

void ZinCpBasedAllocator::GetSortedNonResidentTensors(uint64_t *__return_ptr a1@<X8>, ZinCpBasedAllocator *this@<X0>)
{
  v3 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  BlockGraph = ZinRtBlockNode::GetBlockGraph((this + 832));
  v5 = BlockGraph + 1;
  v6 = *BlockGraph;
  if (*BlockGraph == BlockGraph + 1)
  {
    v11 = 0;
    v30 = 0;
    v31 = 0;
    v29 = &v30;
  }

  else
  {
    v27 = v3;
    do
    {
      if (*(*(*(v6[4] + 152) + 88) + 8) != 28)
      {
        v7 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 9, v6 + 4);
        if (!v7)
        {
          ZinAssertImpl("The decision is missing.");
        }

        if (*(v7 + 24) == 1)
        {
          std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](v3, v6 + 4);
        }
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
    v11 = *v3;
    v12 = v3[1];
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    if (v11 != v12)
    {
      do
      {
        v28 = *v11;
        TensorFamily = ZinTensorFamilyUtil::GetTensorFamily((this + 832), v28);
        v14 = *TensorFamily;
        v15 = TensorFamily[1];
        if (*TensorFamily == v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v17 = *v14;
            OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(*(*v14 + 152));
            v19 = *OutgoingLayers;
            v20 = *(OutgoingLayers + 8);
            while (v19 != v20)
            {
              v16 += ZinIrOpLayer::IsANELayer(*v19++);
            }

            MemoryPools = ZinIrContext::GetMemoryPools(*(v17 + 152));
            v22 = *MemoryPools;
            v23 = *(MemoryPools + 8);
            while (v22 != v23)
            {
              v16 += ZinIrOpLayer::IsANELayer(*v22++);
            }

            ++v14;
          }

          while (v14 != v15);
        }

        v32 = &v28;
        std::__tree<std::__value_type<ZinIrTensor const*,double>,std::__map_value_compare<ZinIrTensor const*,std::__value_type<ZinIrTensor const*,double>,std::less<ZinIrTensor const*>,true>,std::allocator<std::__value_type<ZinIrTensor const*,double>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(&v29, &v28, &std::piecewise_construct, &v32)[5] = v16;
        ++v11;
      }

      while (v11 != v12);
      v3 = v27;
      v11 = *v27;
    }
  }

  v24 = v3[1];
  v25 = 126 - 2 * __clz(v24 - v11);
  v32 = &v29;
  if (v24 == v11)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  std::__introsort<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,false>(v11, v24, &v32, v26, 1);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v29, v30);
}

void sub_1A69F6C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinCpBasedAllocator::TryInplaceAllocationWithProducer(ZinIrExecutionBehavior **this, const ZinIrOpLayerGraph ***a2)
{
  v84[0] = a2;
  v3 = a2[19];
  v4 = ZinIrExecutionBehavior::GetInPlaceUpdate(this[118]);
  ZinIrInPlaceUpdate::IsInPlaceable(*v4, v3, v3[21], 2, *(this[22] + 1165), &v82);
  v5 = v82;
  v6 = v83;
  if (v83 == v82)
  {
    v23 = 0;
    if (!v82)
    {
      return v23;
    }

    goto LABEL_72;
  }

  v7 = -1;
  do
  {
    v8 = *v5;
    InputTensor = ZinIrOpLayer::GetInputTensor(v3, *v5);
    __p = ZinTensorFamilyUtil::GetRootTensor((this + 104), InputTensor);
    v79[0] = &__p;
    v10 = *(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &__p, &std::piecewise_construct, v79) + 24);
    if (ZinCpBasedAllocator::GetInputTensorWithL2InplaceDecision(this, v3))
    {
      goto LABEL_15;
    }

    v11 = *(InputTensor + 80);
    *v79 = *(InputTensor + 64);
    v80 = v11;
    v81 = *(InputTensor + 96);
    v12 = *(v84[0] + 5);
    *v76 = *(v84[0] + 4);
    v77 = v12;
    v78 = *(v84[0] + 12);
    if (ZinTensorDimensionsEqual(v79, v76) && CpAllocUtils::IsNonChainResident(v10) && !CpAllocUtils::IsL2Inplace(v10))
    {
      v7 = v8;
    }

    ++v5;
  }

  while (v5 != v6);
  if (v7 == -1)
  {
LABEL_15:
    v23 = 0;
    goto LABEL_71;
  }

  v13 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, v84);
  if (!v13)
  {
    ZinAssertImpl("The decision is missing.");
  }

  IsResident = CpAllocUtils::IsResident(*(v13 + 24));
  LastConsumer = ZinIrRegAllocUtil::GetLastConsumer(v84[0], (this + 104));
  v16 = *(LastConsumer + 21);
  IndexOfMatchedIncomingLayer = ZinIrOpLayerGraph::GetIndexOfMatchedIncomingLayer(v16, LastConsumer, v3);
  v18 = ZinIrExecutionBehavior::GetInPlaceUpdate(this[118]);
  ZinIrInPlaceUpdate::IsInPlaceable(*v18, LastConsumer, v16, 2, *(this[22] + 1165), &__p);
  InputTensorWithL2InplaceDecision = ZinCpBasedAllocator::GetInputTensorWithL2InplaceDecision(this, LastConsumer);
  v20 = (*(*LastConsumer + 40))(LastConsumer, 0);
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 104), v20);
  v79[0] = &RootTensor;
  v21 = *(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &RootTensor, &std::piecewise_construct, v79) + 24);
  v22 = __p;
  if (__p != v75)
  {
    while (*v22 != IndexOfMatchedIncomingLayer)
    {
      if (++v22 == v75)
      {
        goto LABEL_33;
      }
    }
  }

  if (v22 == v75)
  {
    goto LABEL_33;
  }

  v24 = CpAllocUtils::IsNonChainResident(v21) ^ 1;
  if (InputTensorWithL2InplaceDecision)
  {
    LOBYTE(v24) = 1;
  }

  if (v24)
  {
LABEL_33:
    v32 = 0;
    goto LABEL_34;
  }

  v25 = ZinIrOpLayer::GetInputTensor(v3, v7);
  v26 = ZinTensorFamilyUtil::GetRootTensor((this + 104), v25);
  ZinIrTensor::GetDimensionOrderHint(v26, v79);
  ZinIrTensor::GetDimensionOrderHint(RootTensor, v76);
  if (DimensionOrderHint::IsSet(v79))
  {
    IsSet = DimensionOrderHint::IsSet(v76);
    v28 = v76[0];
    if (IsSet)
    {
      v29 = v79[0];
      if (v76[1] - v76[0] != v79[1] - v79[0])
      {
        v32 = 0;
        goto LABEL_79;
      }

      if (v76[0] != v76[1])
      {
        v30 = v76[0] + 4;
        do
        {
          v31 = *v29++;
          v32 = *(v30 - 1) == v31;
          v33 = *(v30 - 1) != v31 || v30 == v76[1];
          v30 += 4;
        }

        while (!v33);
        goto LABEL_79;
      }
    }

    v32 = 1;
  }

  else
  {
    v32 = 1;
    v28 = v76[0];
  }

LABEL_79:
  if (v28)
  {
    v76[1] = v28;
    operator delete(v28);
  }

  if (v79[0])
  {
    v79[1] = v79[0];
    operator delete(v79[0]);
  }

LABEL_34:
  v34 = ZinIrOpLayer::GetInputTensor(v3, v7);
  v72 = ZinTensorFamilyUtil::GetRootTensor((this + 104), v34);
  MemoryPools = ZinIrContext::GetMemoryPools(v3);
  v36 = *MemoryPools;
  v37 = *(MemoryPools + 8);
  if (*MemoryPools == v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = 0;
    do
    {
      v39 = (*(**v36 + 40))(*v36, 0);
      v79[0] = ZinTensorFamilyUtil::GetRootTensor((this + 104), v39);
      if (v79[0] != v72)
      {
        v40 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, v79);
        if (!v40)
        {
          goto LABEL_83;
        }

        if (CpAllocUtils::IsL2Dependent(*(v40 + 24)))
        {
          goto LABEL_41;
        }

        v41 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, v79);
        if (!v41)
        {
LABEL_83:
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        if (CpAllocUtils::IsChain(*(v41 + 24)))
        {
LABEL_41:
          v38 = v79[0];
        }
      }

      ++v36;
    }

    while (v36 != v37);
  }

  v42 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 14, v84);
  if (!v42)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v71 = *(v42 + 3);
  L2 = ZinIrResourceTracker::GetL2(this[119]);
  PeakPressure = ZinIrMemoryPressureAnalyzer::GetPeakPressure(L2, &v71);
  v45 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &v72);
  if (!v45)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v46 = *(v45 + 24);
  v47 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, v84);
  if (!v47)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v48 = *(v47 + 24);
  ZinCpBasedAllocator::PromoteDecisionToInplace(this, v72);
  if (!IsResident)
  {
    ZinIrResourceTracker::SetAllocationDecision(this[119], v84[0], 0);
  }

  if (v32)
  {
    ZinCpBasedAllocator::PromoteDecisionToInplace(this, v84[0]);
  }

  ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v38);
  ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v72);
  ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v84[0]);
  v69 = PeakPressure;
  v49 = IsResident;
  v50 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(this, v72);
  v52 = v51;
  v53 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(this, v84[0]);
  if (v53 >= v50)
  {
    v55 = v50;
  }

  else
  {
    v55 = v53;
  }

  if (v52 <= v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v52;
  }

  v70[0] = v55;
  v70[1] = v56 + 1;
  v57 = ZinIrResourceTracker::GetL2(this[119]);
  ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v57, v70, *(this[22] + 55), v79);
  ZinIrResourceTracker::SetAllocationDecision(this[119], v72, v46);
  ZinIrResourceTracker::SetAllocationDecision(this[119], v84[0], v48);
  v23 = v80 == 0;
  if (v80)
  {
    ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v38);
    ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v72);
    ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v84[0]);
    v58 = ZinIrResourceTracker::GetL2(this[119]);
    ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v58, &v71, *(this[22] + 55), v76);
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v79, v79[1]);
    v59 = v76[1];
    v79[0] = v76[0];
    v79[1] = v76[1];
    *&v80 = v77;
    if (v77)
    {
      *(v76[1] + 2) = &v79[1];
      v76[0] = &v76[1];
      v76[1] = 0;
      *&v77 = 0;
      v59 = 0;
    }

    else
    {
      v79[0] = &v79[1];
    }

    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v76, v59);
    v65 = ZinIrResourceTracker::GetL2(this[119]);
    if (v69 == ZinIrMemoryPressureAnalyzer::GetPeakPressure(v65, &v71))
    {
      if (!v80)
      {
        goto LABEL_69;
      }

      v67 = (v84[0] + 40);
      v68 = "Invalid inplace update in %s";
      if ((*(v84[0] + 63) & 0x80000000) == 0)
      {
LABEL_90:
        ZinAssertImpl(v68, v67);
      }
    }

    else
    {
      v67 = (v84[0] + 40);
      v68 = "Invalid memory pressure analyzer while inplace update in %s";
      if ((*(v84[0] + 63) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }
    }

    v67 = *v67;
    goto LABEL_90;
  }

  v60 = ZinCpBasedAllocator::PromoteDecisionToInplace(this, v72);
  v76[0] = v84[0];
  v76[1] = v7;
  std::__tree<std::__value_type<ZinIrTensor *,unsigned long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,unsigned long>,std::less<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,unsigned long>>>::__emplace_unique_key_args<ZinIrTensor *,std::pair<ZinIrTensor *,unsigned long>>((this + 101), v76, v76);
  if ((v60 & ZinIrRegAllocUtil::AdjustDimOrderForInplace(*(v84[0] + 19), (this + 101), this + 9, (this + 104)) & 1) == 0)
  {
    v62 = v72 + 40;
    v63 = 2907;
    v64 = 2907;
    if ((*(v72 + 63) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (!v32)
  {
    if (!v49)
    {
      ZinIrResourceTracker::SetAllocationDecision(this[119], v84[0], 0);
    }

    goto LABEL_69;
  }

  v61 = ZinCpBasedAllocator::PromoteDecisionToInplace(this, v84[0]);
  v76[0] = RootTensor;
  v76[1] = IndexOfMatchedIncomingLayer;
  std::__tree<std::__value_type<ZinIrTensor *,unsigned long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,unsigned long>,std::less<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,unsigned long>>>::__emplace_unique_key_args<ZinIrTensor *,std::pair<ZinIrTensor *,unsigned long>>((this + 101), v76, v76);
  if ((v61 & ZinIrRegAllocUtil::AdjustDimOrderForInplace(*(RootTensor + 19), (this + 101), this + 9, (this + 104)) & 1) == 0)
  {
    v62 = v84[0] + 40;
    v63 = 2925;
    v64 = 2925;
    if ((*(v84[0] + 63) & 0x80000000) == 0)
    {
LABEL_95:
      ZinAssertImpl("INFO: This tensor %s is not inplacable.(file %s, line %d)\n", v62, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/libs/inference/compiler/ZinIrSchedule/src/ZinCpBasedAllocator.cpp", v64);
    }

LABEL_94:
    v62 = *v62;
    v64 = v63;
    goto LABEL_95;
  }

LABEL_69:
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v79, v79[1]);
  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

LABEL_71:
  v5 = v82;
  if (v82)
  {
LABEL_72:
    v83 = v5;
    operator delete(v5);
  }

  return v23;
}

void sub_1A69F74A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a29, a30);
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 120);
  if (v32)
  {
    *(v30 - 112) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

BOOL ZinCpBasedAllocator::TryInplaceAllocationWithConsumer(ZinCpBasedAllocator *this, ZinIrTensor *a2)
{
  v52 = a2;
  if (ZinTensorFamilyUtil::GetRootTensor((this + 832), a2) != a2)
  {
    return 0;
  }

  LastConsumer = ZinIrRegAllocUtil::GetLastConsumer(a2, (this + 832));
  if (!LastConsumer)
  {
    return 0;
  }

  v7 = LastConsumer;
  v8 = (*(*LastConsumer + 40))(LastConsumer, 0);
  RootTensor = ZinTensorFamilyUtil::GetRootTensor((this + 832), v8);
  v9 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &RootTensor);
  if (!v9)
  {
    ZinAssertImpl("The decision is missing.");
  }

  v10 = v9;
  if (!CpAllocUtils::IsResident(*(v9 + 24)))
  {
    return 0;
  }

  IsChain = CpAllocUtils::IsChain(*(v10 + 24));
  if (IsChain)
  {
    if (ZinIrRegAllocUtil::IsL2Dependentable(RootTensor, *(this + 22), (this + 832)))
    {
      v12 = RootTensor;
      goto LABEL_11;
    }

    return 0;
  }

  v12 = 0;
LABEL_11:
  v13 = *(v7 + 21);
  v14 = ZinIrExecutionBehavior::GetInPlaceUpdate(*(this + 118));
  ZinIrInPlaceUpdate::IsInPlaceable(*v14, v7, v13, 2, *(*(this + 22) + 1165), &__p);
  v15 = __p;
  if (v50 == __p)
  {
    v4 = 0;
    goto LABEL_45;
  }

  InputTensorWithL2InplaceDecision = ZinCpBasedAllocator::GetInputTensorWithL2InplaceDecision(this, v7);
  v17 = __p;
  v18 = v50;
  if (__p != v50)
  {
    v19 = InputTensorWithL2InplaceDecision;
    v20 = -1;
    do
    {
      v21 = *v17;
      MemoryPools = ZinIrContext::GetMemoryPools(v7);
      v23 = (*(**(*MemoryPools + 8 * v21) + 40))(*(*MemoryPools + 8 * v21), 0);
      v24 = ZinTensorFamilyUtil::GetRootTensor((this + 832), v23);
      if (v24 == v52)
      {
        v20 = v21;
      }

      ++v17;
    }

    while (v17 != v18);
    if (v20 != -1 && v19 == 0)
    {
      v26 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 14, &v52);
      if (!v26)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v48 = *(v26 + 3);
      L2 = ZinIrResourceTracker::GetL2(*(this + 119));
      PeakPressure = ZinIrMemoryPressureAnalyzer::GetPeakPressure(L2, &v48);
      v29 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(this + 9, &v52);
      if (!v29)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v30 = *(v29 + 24);
      ZinCpBasedAllocator::PromoteDecisionToInplace(this, v52);
      if (IsChain)
      {
        ZinIrResourceTracker::SetAllocationDecision(*(this + 119), v12, 3);
      }

      ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v52);
      ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v12);
      v46 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(this, v52);
      v47 = v31;
      if (IsChain)
      {
        v32 = ZinCpBasedAllocator::ComputeLiveRangeForTensor(this, v12);
        v33 = v46;
        if (v32 < v46)
        {
          v33 = v32;
        }

        if (v47 > v31)
        {
          v31 = v47;
        }

        v46 = v33;
      }

      v47 = v31 + 1;
      v34 = ZinIrResourceTracker::GetL2(*(this + 119));
      ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v34, &v46, *(*(this + 22) + 440), v43);
      ZinIrResourceTracker::SetAllocationDecision(*(this + 119), v52, v30);
      if (IsChain)
      {
        ZinIrResourceTracker::SetAllocationDecision(*(this + 119), v12, 2);
      }

      v4 = v45 == 0;
      if (v45)
      {
        ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v52);
        ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v12);
        v35 = ZinIrResourceTracker::GetL2(*(this + 119));
        ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v35, &v48, *(*(this + 22) + 440), &v41);
        std::__tree<ZinIrOpLayer *,ScheduleComparator,std::allocator<ZinIrOpLayer *>>::__move_assign(v43, &v41);
        std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v41, v42);
        v36 = ZinIrResourceTracker::GetL2(*(this + 119));
        if (PeakPressure != ZinIrMemoryPressureAnalyzer::GetPeakPressure(v36, &v48))
        {
          v37 = (v52 + 40);
          v38 = "Invalid memory pressure analyzer while inplace update in %s";
          if ((*(v52 + 63) & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        if (v45)
        {
          v37 = (v52 + 40);
          v38 = "Invalid inplace update in %s";
          if ((*(v52 + 63) & 0x80000000) == 0)
          {
LABEL_52:
            ZinAssertImpl(v38, v37);
          }

LABEL_51:
          v37 = *v37;
          goto LABEL_52;
        }
      }

      else
      {
        v39 = ZinCpBasedAllocator::PromoteDecisionToInplace(this, v52);
        v41 = RootTensor;
        v42 = v20;
        std::__tree<std::__value_type<ZinIrTensor *,unsigned long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,unsigned long>,std::less<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,unsigned long>>>::__emplace_unique_key_args<ZinIrTensor *,std::pair<ZinIrTensor *,unsigned long>>(this + 808, &v41, &v41);
        if ((v39 & ZinIrRegAllocUtil::AdjustDimOrderForInplace(*(RootTensor + 19), this + 808, this + 9, (this + 832)) & 1) == 0)
        {
          v40 = v52 + 40;
          if (*(v52 + 63) < 0)
          {
            v40 = *v40;
          }

          ZinAssertImpl("INFO: This tensor %s is not inplacable.(file %s, line %d)\n", v40, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/libs/inference/compiler/ZinIrSchedule/src/ZinCpBasedAllocator.cpp", 3330);
        }

        if (IsChain)
        {
          ZinIrResourceTracker::SetAllocationDecision(*(this + 119), RootTensor, 3);
        }
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v43, v44);
      goto LABEL_44;
    }
  }

  v4 = 0;
LABEL_44:
  v15 = __p;
LABEL_45:
  if (v15)
  {
    v50 = v15;
    operator delete(v15);
  }

  return v4;
}

void sub_1A69F7A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a16, a17);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ZinCpBasedAllocator::PromoteToResident(ZinIrResourceTracker **this, ZinIrTensor *a2)
{
  v25 = a2;
  v20 = &v25;
  if (*(std::__hash_table<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 9, &v25, &std::piecewise_construct, &v20) + 24) == 1)
  {
    v3 = *(v25 + 20);
    if (!v3 || *(v3 + 96) != 2)
    {
      v20 = &v25;
      v24 = *(std::__hash_table<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,ZinLiveRange>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,ZinLiveRange>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 14, &v25, &std::piecewise_construct, &v20) + 3);
      L2 = ZinIrResourceTracker::GetL2(this[119]);
      PeakPressure = ZinIrMemoryPressureAnalyzer::GetPeakPressure(L2, &v24);
      ZinIrResourceTracker::SetAllocationDecision(this[119], v25, 0);
      ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v25);
      v23[0] = ZinCpBasedAllocator::ComputeLiveRangeForTensor(this, v25);
      v23[1] = v7 + 1;
      v8 = ZinIrResourceTracker::GetL2(this[119]);
      ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v8, v23, *(this[22] + 55), &v20);
      ZinIrResourceTracker::SetAllocationDecision(this[119], v25, 1);
      v4 = v22 == 0;
      if (!v22)
      {
        ZinIrResourceTracker::SetAllocationDecision(this[119], v25, 0);
LABEL_12:
        std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v20, v21);
        return v4;
      }

      ZinCpBasedAllocator::UpdateScheduleAndMemoryPressureReflectingDecision(this, v25);
      v9 = ZinIrResourceTracker::GetL2(this[119]);
      v10 = *(this[22] + 55);
      v16 = v24;
      ZinIrMemoryPressureAnalyzer::GetTensorsBeyondBudget(v9, &v16, v10, &v17);
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v20, v21);
      v11 = v18;
      v20 = v17;
      v21 = v18;
      v22 = v19;
      if (v19)
      {
        v18[2] = &v21;
        v17 = &v18;
        v18 = 0;
        v19 = 0;
        v11 = 0;
      }

      else
      {
        v20 = &v21;
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v17, v11);
      v12 = ZinIrResourceTracker::GetL2(this[119]);
      if (PeakPressure == ZinIrMemoryPressureAnalyzer::GetPeakPressure(v12, &v24))
      {
        if (!v22)
        {
          goto LABEL_12;
        }

        v14 = (v25 + 40);
        v15 = "Invalid promotion in boundary tensor residency update in %s";
        if ((*(v25 + 63) & 0x80000000) == 0)
        {
LABEL_16:
          ZinAssertImpl(v15, v14);
        }
      }

      else
      {
        v14 = (v25 + 40);
        v15 = "Invalid memory pressure analyzer while promotion in boundary tensor residency update in %s";
        if ((*(v25 + 63) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      v14 = *v14;
      goto LABEL_16;
    }
  }

  return 0;
}

BOOL ZinCpBasedAllocator::IsDisqualifiedForInplacePromotion(ZinCpBasedAllocator *this, ZinIrOpLayer **a2)
{
  v13 = a2;
  TensorFamily = ZinTensorFamilyUtil::GetTensorFamily((this + 832), a2);
  v6 = *TensorFamily;
  v5 = TensorFamily[1];
  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(a2[19]);
  v9 = *OutgoingLayers;
  v8 = OutgoingLayers[1];
  v10 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 14, &v13);
  if (!v10)
  {
    ZinAssertImpl("The liverange must exist");
  }

  if (v5 - v6 != 8)
  {
    return 0;
  }

  return ((v10[4] - v10[3] + 1) / ((*(*(this + 19) + 8) - **(this + 19)) >> 3)) > 0.2 && (v8 - v9) < 0x11;
}

CpAllocGraph **std::unique_ptr<CpAllocGraph>::~unique_ptr[abi:ne200100](CpAllocGraph **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CpAllocGraph::~CpAllocGraph(v2);
    MEMORY[0x1AC55A070]();
  }

  return a1;
}

uint64_t std::__function::__value_func<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::get(std::__assoc_sub_state **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::move(v2, a2);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    on_zero_shared = v2->__on_zero_shared;

    (on_zero_shared)(v2);
  }
}

void sub_1A69F7F54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::move(std::__assoc_sub_state *a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v6, &a1->__exception_);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::__value_func[abi:ne200100](a2, &a1[1]);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1A69F8010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

atomic_ullong *std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__base_destruct_at_end[abi:ne200100](atomic_ullong *result, atomic_ullong a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5 && !atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      result = (*(*result + 16))(result);
    }
  }

  v3[1] = a2;
  return result;
}

void std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 8);
        v4 -= 40;
        if (v6 == 1)
        {
          v4 = std::__function::__value_func<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::~__value_func[abi:ne200100](v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t IsKernelTensorToMatMul(const ZinIrTensor *a1, const ZinIrOpLayer *a2)
{
  if (*(*(a2 + 11) + 8) != 93 || !(*(*a2 + 144))(a2))
  {
    return 0;
  }

  v4 = *(*a2 + 224);

  return v4(a2, a1);
}

uint64_t *std::vector<std::vector<ZinANELayer *>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<ZinIrOpLayer *>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

unint64_t *std::__introsort<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,false>(unint64_t *result, unint64_t *a2, void *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  i = v9;
  while (1)
  {
    v9 = i;
    v11 = a2 - i;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(i, i + 1, a2 - 1, a3);
        case 4:

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(i, i + 1, i + 2, a2 - 1, a3);
        case 5:

          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(i, i + 1, i + 2, i + 3, a2 - 1, a3);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v181 = *(a2 - 1);
        v182 = (*a3 + 8);
        v183 = *v182;
        if (!*v182)
        {
          goto LABEL_353;
        }

        v184 = (*a3 + 8);
        v185 = *v184;
        do
        {
          v186 = v185[4];
          v23 = v186 >= v181;
          v187 = v186 < v181;
          if (v23)
          {
            v184 = v185;
          }

          v185 = v185[v187];
        }

        while (v185);
        if (v184 == v182 || v184[4] > v181)
        {
LABEL_353:
          v184 = (*a3 + 8);
        }

        v188 = *i;
        if (!v183)
        {
          goto LABEL_362;
        }

        v189 = *a3 + 8;
        do
        {
          v190 = *(v183 + 32);
          v23 = v190 >= v188;
          v191 = v190 < v188;
          if (v23)
          {
            v189 = v183;
          }

          v183 = *(v183 + 8 * v191);
        }

        while (v183);
        if (v189 == v182 || *(v189 + 32) > v188)
        {
LABEL_362:
          v189 = *a3 + 8;
        }

        v192 = v184[5];
        v193 = *(v189 + 40);
        if (v181 == v188 || v192 != v193)
        {
          if (v192 <= v193)
          {
            return result;
          }
        }

        else if (*(*(v181 + 152) + 72) >= *(*(v188 + 152) + 72))
        {
          return result;
        }

        *i = v181;
        *(a2 - 1) = v188;
        return result;
      }
    }

    if (v11 <= 23)
    {
      v194 = i + 1;
      v196 = i == a2 || v194 == a2;
      if (a5)
      {
        if (v196)
        {
          return result;
        }

        v197 = *a3;
        v198 = i;
        while (1)
        {
          v199 = v198;
          v198 = v194;
          v200 = v199[1];
          v201 = v197 + 8;
          v202 = *(v197 + 8);
          if (!v202)
          {
            goto LABEL_390;
          }

          v203 = v197 + 8;
          v204 = *(v197 + 8);
          do
          {
            v205 = *(v204 + 32);
            v23 = v205 >= v200;
            v206 = v205 < v200;
            if (v23)
            {
              v203 = v204;
            }

            v204 = *(v204 + 8 * v206);
          }

          while (v204);
          if (v203 == v201 || *(v203 + 32) > v200)
          {
LABEL_390:
            v203 = v197 + 8;
          }

          v207 = *v199;
          if (!v202)
          {
            goto LABEL_399;
          }

          v208 = v197 + 8;
          do
          {
            v209 = *(v202 + 32);
            v23 = v209 >= v207;
            v210 = v209 < v207;
            if (v23)
            {
              v208 = v202;
            }

            v202 = *(v202 + 8 * v210);
          }

          while (v202);
          if (v208 == v201 || *(v208 + 32) > v207)
          {
LABEL_399:
            v208 = v197 + 8;
          }

          v211 = *(v203 + 40);
          v212 = *(v208 + 40);
          if (v200 != v207 && v211 == v212)
          {
            if (*(*(v200 + 152) + 72) >= *(*(v207 + 152) + 72))
            {
              goto LABEL_437;
            }
          }

          else if (v211 <= v212)
          {
            goto LABEL_437;
          }

          v199[1] = v207;
          v214 = i;
          if (v199 == i)
          {
            goto LABEL_436;
          }

          while (1)
          {
            v215 = (*a3 + 8);
            v216 = *v215;
            if (!*v215)
            {
              goto LABEL_416;
            }

            v217 = (*a3 + 8);
            v218 = *v217;
            do
            {
              v219 = v218[4];
              v23 = v219 >= v200;
              v220 = v219 < v200;
              if (v23)
              {
                v217 = v218;
              }

              v218 = v218[v220];
            }

            while (v218);
            if (v217 == v215 || v217[4] > v200)
            {
LABEL_416:
              v217 = (*a3 + 8);
            }

            v221 = v199 - 1;
            v222 = *(v199 - 1);
            if (!v216)
            {
              goto LABEL_425;
            }

            v223 = *a3 + 8;
            do
            {
              v224 = *(v216 + 32);
              v23 = v224 >= v222;
              v225 = v224 < v222;
              if (v23)
              {
                v223 = v216;
              }

              v216 = *(v216 + 8 * v225);
            }

            while (v216);
            if (v223 == v215 || *(v223 + 32) > v222)
            {
LABEL_425:
              v223 = *a3 + 8;
            }

            v226 = v217[5];
            v227 = *(v223 + 40);
            if (v200 == v222 || v226 != v227)
            {
              if (v226 <= v227)
              {
                break;
              }

              goto LABEL_433;
            }

            if (*(*(v200 + 152) + 72) >= *(*(v222 + 152) + 72))
            {
              break;
            }

LABEL_433:
            *v199-- = v222;
            if (v221 == i)
            {
              v214 = i;
              goto LABEL_436;
            }
          }

          v214 = v199;
LABEL_436:
          *v214 = v200;
          v197 = *a3;
LABEL_437:
          v194 = v198 + 1;
          if (v198 + 1 == a2)
          {
            return result;
          }
        }
      }

      if (v196)
      {
        return result;
      }

      v339 = *a3;
      while (2)
      {
        v340 = v9;
        v9 = v194;
        v341 = v340[1];
        v342 = v339 + 8;
        v343 = *(v339 + 8);
        if (!v343)
        {
          goto LABEL_640;
        }

        v344 = v339 + 8;
        v345 = *(v339 + 8);
        do
        {
          v346 = *(v345 + 32);
          v23 = v346 >= v341;
          v347 = v346 < v341;
          if (v23)
          {
            v344 = v345;
          }

          v345 = *(v345 + 8 * v347);
        }

        while (v345);
        if (v344 == v342 || *(v344 + 32) > v341)
        {
LABEL_640:
          v344 = v339 + 8;
        }

        v348 = *v340;
        if (!v343)
        {
          goto LABEL_649;
        }

        v349 = v339 + 8;
        do
        {
          v350 = *(v343 + 32);
          v23 = v350 >= v348;
          v351 = v350 < v348;
          if (v23)
          {
            v349 = v343;
          }

          v343 = *(v343 + 8 * v351);
        }

        while (v343);
        if (v349 == v342 || *(v349 + 32) > v348)
        {
LABEL_649:
          v349 = v339 + 8;
        }

        v352 = *(v344 + 40);
        v353 = *(v349 + 40);
        if (v341 != v348 && v352 == v353)
        {
          if (*(*(v341 + 152) + 72) >= *(*(v348 + 152) + 72))
          {
            goto LABEL_684;
          }
        }

        else if (v352 <= v353)
        {
LABEL_684:
          v194 = v9 + 1;
          if (v9 + 1 == a2)
          {
            return result;
          }

          continue;
        }

        break;
      }

      v355 = v9;
      do
      {
        while (1)
        {
          *v355 = v348;
          v355 = v340;
          v356 = (*a3 + 8);
          v357 = *v356;
          if (!*v356)
          {
            goto LABEL_666;
          }

          v358 = (*a3 + 8);
          v359 = *v358;
          do
          {
            v360 = v359[4];
            v23 = v360 >= v341;
            v361 = v360 < v341;
            if (v23)
            {
              v358 = v359;
            }

            v359 = v359[v361];
          }

          while (v359);
          if (v358 == v356 || v358[4] > v341)
          {
LABEL_666:
            v358 = (*a3 + 8);
          }

          v340 = v355 - 1;
          v348 = *(v355 - 1);
          if (!v357)
          {
            goto LABEL_675;
          }

          v362 = *a3 + 8;
          do
          {
            v363 = *(v357 + 32);
            v23 = v363 >= v348;
            v364 = v363 < v348;
            if (v23)
            {
              v362 = v357;
            }

            v357 = *(v357 + 8 * v364);
          }

          while (v357);
          if (v362 == v356 || *(v362 + 32) > v348)
          {
LABEL_675:
            v362 = *a3 + 8;
          }

          v365 = v358[5];
          v366 = *(v362 + 40);
          if (v341 != v348 && v365 == v366)
          {
            break;
          }

          if (v365 <= v366)
          {
            goto LABEL_683;
          }
        }
      }

      while (*(*(v341 + 152) + 72) < *(*(v348 + 152) + 72));
LABEL_683:
      *v355 = v341;
      v339 = *a3;
      goto LABEL_684;
    }

    if (!a4)
    {
      break;
    }

    v12 = v11 >> 1;
    v13 = &i[v11 >> 1];
    if (v11 < 0x81)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(&v9[v11 >> 1], v9, a2 - 1, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(v9, &v9[v11 >> 1], a2 - 1, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(v9 + 1, v13 - 1, a2 - 2, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(v9 + 2, &v9[v12 + 1], a2 - 3, a3);
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(v13 - 1, v13, &v9[v12 + 1], a3);
      v14 = *v9;
      *v9 = *v13;
      *v13 = v14;
    }

    --a4;
    v15 = *v9;
    v16 = *a3;
    if (a5)
    {
      v17 = *(v16 + 8);
LABEL_88:
      v54 = v16 + 8;
      v55 = v9;
      do
      {
        while (1)
        {
          v56 = v55;
          v58 = *(v55 + 8);
          v55 += 8;
          v57 = v58;
          if (!v17)
          {
            goto LABEL_97;
          }

          v59 = v54;
          v60 = v17;
          do
          {
            v61 = *(v60 + 32);
            v23 = v61 >= v57;
            v62 = v61 < v57;
            if (v23)
            {
              v59 = v60;
            }

            v60 = *(v60 + 8 * v62);
          }

          while (v60);
          if (v59 == v54 || *(v59 + 32) > v57)
          {
LABEL_97:
            v59 = v54;
          }

          if (!v17)
          {
            goto LABEL_106;
          }

          v63 = v54;
          v64 = v17;
          do
          {
            v65 = *(v64 + 32);
            v23 = v65 >= v15;
            v66 = v65 < v15;
            if (v23)
            {
              v63 = v64;
            }

            v64 = *(v64 + 8 * v66);
          }

          while (v64);
          if (v63 == v54 || *(v63 + 32) > v15)
          {
LABEL_106:
            v63 = v54;
          }

          v67 = *(v59 + 40);
          v68 = *(v63 + 40);
          if (v57 != v15 && v67 == v68)
          {
            break;
          }

          if (v67 <= v68)
          {
            goto LABEL_114;
          }
        }
      }

      while (*(*(v57 + 152) + 72) < *(*(v15 + 152) + 72));
LABEL_114:
      v70 = a2;
      if (v56 == v9)
      {
        v70 = a2;
        if (v55 < a2)
        {
          v70 = a2;
          do
          {
            while (1)
            {
              v85 = *--v70;
              v84 = v85;
              if (!v17)
              {
                goto LABEL_151;
              }

              v86 = v54;
              v87 = v17;
              do
              {
                v88 = *(v87 + 32);
                v23 = v88 >= v84;
                v89 = v88 < v84;
                if (v23)
                {
                  v86 = v87;
                }

                v87 = *(v87 + 8 * v89);
              }

              while (v87);
              if (v86 == v54 || *(v86 + 32) > v84)
              {
LABEL_151:
                v86 = v54;
              }

              if (!v17)
              {
                goto LABEL_160;
              }

              v90 = v54;
              v91 = v17;
              do
              {
                v92 = *(v91 + 32);
                v23 = v92 >= v15;
                v93 = v92 < v15;
                if (v23)
                {
                  v90 = v91;
                }

                v91 = *(v91 + 8 * v93);
              }

              while (v91);
              if (v90 == v54 || *(v90 + 32) > v15)
              {
LABEL_160:
                v90 = v54;
              }

              v94 = *(v86 + 40);
              v95 = *(v90 + 40);
              if (v84 != v15 && v94 == v95)
              {
                break;
              }

              if (v55 >= v70 || v94 > v95)
              {
                goto LABEL_170;
              }
            }
          }

          while (v55 < v70 && *(*(v84 + 152) + 72) >= *(*(v15 + 152) + 72));
        }
      }

      else
      {
        do
        {
          while (1)
          {
            v72 = *--v70;
            v71 = v72;
            if (!v17)
            {
              goto LABEL_123;
            }

            v73 = v54;
            v74 = v17;
            do
            {
              v75 = *(v74 + 32);
              v23 = v75 >= v71;
              v76 = v75 < v71;
              if (v23)
              {
                v73 = v74;
              }

              v74 = *(v74 + 8 * v76);
            }

            while (v74);
            if (v73 == v54 || *(v73 + 32) > v71)
            {
LABEL_123:
              v73 = v54;
            }

            if (!v17)
            {
              goto LABEL_132;
            }

            v77 = v54;
            v78 = v17;
            do
            {
              v79 = *(v78 + 32);
              v23 = v79 >= v15;
              v80 = v79 < v15;
              if (v23)
              {
                v77 = v78;
              }

              v78 = *(v78 + 8 * v80);
            }

            while (v78);
            if (v77 == v54 || *(v77 + 32) > v15)
            {
LABEL_132:
              v77 = v54;
            }

            v81 = *(v73 + 40);
            v82 = *(v77 + 40);
            if (v71 != v15 && v81 == v82)
            {
              break;
            }

            if (v81 > v82)
            {
              goto LABEL_170;
            }
          }
        }

        while (*(*(v71 + 152) + 72) >= *(*(v15 + 152) + 72));
      }

LABEL_170:
      if (v55 < v70)
      {
        v97 = *v70;
        v98 = v55;
        v99 = v70;
        do
        {
          *v98 = v97;
          *v99 = v57;
          v100 = (*a3 + 8);
          v101 = *v100;
          do
          {
            while (1)
            {
              v56 = v98;
              v102 = v98[1];
              ++v98;
              v57 = v102;
              if (!v101)
              {
                goto LABEL_181;
              }

              v103 = (*a3 + 8);
              v104 = *v103;
              do
              {
                v105 = v104[4];
                v23 = v105 >= v57;
                v106 = v105 < v57;
                if (v23)
                {
                  v103 = v104;
                }

                v104 = v104[v106];
              }

              while (v104);
              if (v103 == v100 || v103[4] > v57)
              {
LABEL_181:
                v103 = (*a3 + 8);
              }

              if (!v101)
              {
                goto LABEL_190;
              }

              v107 = (*a3 + 8);
              v108 = *v107;
              do
              {
                v109 = v108[4];
                v23 = v109 >= v15;
                v110 = v109 < v15;
                if (v23)
                {
                  v107 = v108;
                }

                v108 = v108[v110];
              }

              while (v108);
              if (v107 == v100 || v107[4] > v15)
              {
LABEL_190:
                v107 = (*a3 + 8);
              }

              v111 = v103[5];
              v112 = v107[5];
              if (v57 == v15 || v111 != v112)
              {
                break;
              }

              if (*(*(v57 + 152) + 72) >= *(*(v15 + 152) + 72))
              {
                goto LABEL_200;
              }
            }
          }

          while (v111 > v112);
          do
          {
            while (1)
            {
LABEL_200:
              v114 = *--v99;
              v97 = v114;
              if (!v101)
              {
                goto LABEL_208;
              }

              v115 = (*a3 + 8);
              v116 = *v115;
              do
              {
                v117 = v116[4];
                v23 = v117 >= v97;
                v118 = v117 < v97;
                if (v23)
                {
                  v115 = v116;
                }

                v116 = v116[v118];
              }

              while (v116);
              if (v115 == v100 || v115[4] > v97)
              {
LABEL_208:
                v115 = (*a3 + 8);
              }

              if (!v101)
              {
                goto LABEL_217;
              }

              v119 = (*a3 + 8);
              v120 = *v119;
              do
              {
                v121 = v120[4];
                v23 = v121 >= v15;
                v122 = v121 < v15;
                if (v23)
                {
                  v119 = v120;
                }

                v120 = v120[v122];
              }

              while (v120);
              if (v119 == v100 || v119[4] > v15)
              {
LABEL_217:
                v119 = (*a3 + 8);
              }

              v123 = v115[5];
              v124 = v119[5];
              if (v97 == v15 || v123 != v124)
              {
                break;
              }

              if (*(*(v97 + 152) + 72) < *(*(v15 + 152) + 72))
              {
                goto LABEL_223;
              }
            }
          }

          while (v123 <= v124);
LABEL_223:
          ;
        }

        while (v98 < v99);
      }

      if (v56 != v9)
      {
        *v9 = *v56;
      }

      *v56 = v15;
      if (v55 < v70)
      {
LABEL_229:
        result = std::__introsort<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,false>(v9, v56, a3, a4, a5 & 1);
        a5 = 0;
        i = v56 + 1;
      }

      else
      {
        v126 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **>(v9, v56, a3);
        i = v56 + 1;
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **>(v56 + 1, a2, a3);
        if (result)
        {
          a2 = v56;
          if (v126)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v126)
        {
          goto LABEL_229;
        }
      }
    }

    else
    {
      v18 = *(v9 - 1);
      v19 = v16 + 8;
      v17 = *(v16 + 8);
      if (!v17)
      {
        goto LABEL_25;
      }

      v20 = v16 + 8;
      v21 = *(v16 + 8);
      do
      {
        v22 = *(v21 + 32);
        v23 = v22 >= v18;
        v24 = v22 < v18;
        if (v23)
        {
          v20 = v21;
        }

        v21 = *(v21 + 8 * v24);
      }

      while (v21);
      if (v20 == v19 || *(v20 + 32) > v18)
      {
LABEL_25:
        v20 = v16 + 8;
      }

      if (!v17)
      {
        goto LABEL_34;
      }

      v25 = v16 + 8;
      v26 = *(v16 + 8);
      do
      {
        v27 = *(v26 + 32);
        v23 = v27 >= v15;
        v28 = v27 < v15;
        if (v23)
        {
          v25 = v26;
        }

        v26 = *(v26 + 8 * v28);
      }

      while (v26);
      if (v25 == v19 || *(v25 + 32) > v15)
      {
LABEL_34:
        v25 = v16 + 8;
      }

      v29 = *(v20 + 40);
      v30 = *(v25 + 40);
      if (v18 == v15 || v29 != v30)
      {
        if (v29 > v30)
        {
          goto LABEL_88;
        }
      }

      else if (*(*(v18 + 152) + 72) < *(*(v15 + 152) + 72))
      {
        goto LABEL_88;
      }

      if (!v17)
      {
        goto LABEL_46;
      }

      v31 = v16 + 8;
      v32 = *(v16 + 8);
      do
      {
        v33 = *(v32 + 32);
        v23 = v33 >= v15;
        v34 = v33 < v15;
        if (v23)
        {
          v31 = v32;
        }

        v32 = *(v32 + 8 * v34);
      }

      while (v32);
      if (v31 == v19 || *(v31 + 32) > v15)
      {
LABEL_46:
        v31 = v19;
      }

      v35 = *(a2 - 1);
      if (!v17)
      {
        goto LABEL_55;
      }

      v36 = v19;
      v37 = v17;
      do
      {
        v38 = *(v37 + 32);
        v23 = v38 >= v35;
        v39 = v38 < v35;
        if (v23)
        {
          v36 = v37;
        }

        v37 = *(v37 + 8 * v39);
      }

      while (v37);
      if (v36 == v19 || *(v36 + 32) > v35)
      {
LABEL_55:
        v36 = v19;
      }

      v40 = *(v31 + 40);
      v41 = *(v36 + 40);
      if (v15 == v35 || v40 != v41)
      {
        if (v40 <= v41)
        {
LABEL_59:
          for (i = v9 + 1; i < a2; ++i)
          {
            if (!v17)
            {
              goto LABEL_69;
            }

            v42 = v19;
            v43 = v17;
            do
            {
              v44 = *(v43 + 32);
              v23 = v44 >= v15;
              v45 = v44 < v15;
              if (v23)
              {
                v42 = v43;
              }

              v43 = *(v43 + 8 * v45);
            }

            while (v43);
            if (v42 == v19 || *(v42 + 32) > v15)
            {
LABEL_69:
              v42 = v19;
            }

            v46 = *i;
            if (!v17)
            {
              goto LABEL_78;
            }

            v47 = v19;
            v48 = v17;
            do
            {
              v49 = *(v48 + 32);
              v23 = v49 >= v46;
              v50 = v49 < v46;
              if (v23)
              {
                v47 = v48;
              }

              v48 = *(v48 + 8 * v50);
            }

            while (v48);
            if (v47 == v19 || *(v47 + 32) > v46)
            {
LABEL_78:
              v47 = v19;
            }

            v51 = *(v42 + 40);
            v52 = *(v47 + 40);
            if (v15 != v46 && v51 == v52)
            {
              if (*(*(v15 + 152) + 72) < *(*(v46 + 152) + 72))
              {
                goto LABEL_257;
              }
            }

            else if (v51 > v52)
            {
              goto LABEL_257;
            }
          }

          goto LABEL_257;
        }
      }

      else if (*(*(v15 + 152) + 72) >= *(*(v35 + 152) + 72))
      {
        goto LABEL_59;
      }

      i = v9;
      do
      {
        while (1)
        {
          if (!v17)
          {
            goto LABEL_240;
          }

          v127 = v19;
          v128 = v17;
          do
          {
            v129 = *(v128 + 32);
            v23 = v129 >= v15;
            v130 = v129 < v15;
            if (v23)
            {
              v127 = v128;
            }

            v128 = *(v128 + 8 * v130);
          }

          while (v128);
          if (v127 == v19 || *(v127 + 32) > v15)
          {
LABEL_240:
            v127 = v19;
          }

          v132 = i[1];
          ++i;
          v131 = v132;
          if (!v17)
          {
            goto LABEL_249;
          }

          v133 = v19;
          v134 = v17;
          do
          {
            v135 = *(v134 + 32);
            v23 = v135 >= v131;
            v136 = v135 < v131;
            if (v23)
            {
              v133 = v134;
            }

            v134 = *(v134 + 8 * v136);
          }

          while (v134);
          if (v133 == v19 || *(v133 + 32) > v131)
          {
LABEL_249:
            v133 = v19;
          }

          v137 = *(v127 + 40);
          v138 = *(v133 + 40);
          if (v15 != v131 && v137 == v138)
          {
            break;
          }

          if (v137 > v138)
          {
            goto LABEL_257;
          }
        }
      }

      while (*(*(v15 + 152) + 72) >= *(*(v131 + 152) + 72));
LABEL_257:
      v140 = a2;
      if (i >= a2)
      {
        goto LABEL_283;
      }

      v141 = a2;
      if (!v17)
      {
LABEL_266:
        v142 = v19;
        goto LABEL_267;
      }

      while (1)
      {
        v142 = v19;
        v143 = v17;
        do
        {
          v144 = *(v143 + 32);
          v23 = v144 >= v15;
          v145 = v144 < v15;
          if (v23)
          {
            v142 = v143;
          }

          v143 = *(v143 + 8 * v145);
        }

        while (v143);
        if (v142 == v19 || *(v142 + 32) > v15)
        {
          goto LABEL_266;
        }

LABEL_267:
        if (!v17)
        {
          goto LABEL_275;
        }

        v146 = v19;
        v147 = v17;
        do
        {
          v148 = *(v147 + 32);
          v23 = v148 >= v35;
          v149 = v148 < v35;
          if (v23)
          {
            v146 = v147;
          }

          v147 = *(v147 + 8 * v149);
        }

        while (v147);
        if (v146 == v19 || *(v146 + 32) > v35)
        {
LABEL_275:
          v146 = v19;
        }

        v140 = v141 - 1;
        v150 = *(v142 + 40);
        v151 = *(v146 + 40);
        if (v15 != v35 && v150 == v151)
        {
          break;
        }

        if (v150 <= v151)
        {
          goto LABEL_283;
        }

LABEL_281:
        v35 = *(v141 - 2);
        --v141;
        if (!v17)
        {
          goto LABEL_266;
        }
      }

      if (*(*(v15 + 152) + 72) < *(*(v35 + 152) + 72))
      {
        goto LABEL_281;
      }

LABEL_283:
      if (i < v140)
      {
        v152 = *i;
        v153 = *v140;
        do
        {
          *i = v153;
          *v140 = v152;
          v154 = (*a3 + 8);
          v155 = *v154;
          do
          {
            while (1)
            {
              v156 = i[1];
              ++i;
              v152 = v156;
              if (!v155)
              {
                goto LABEL_294;
              }

              v157 = (*a3 + 8);
              v158 = *v157;
              do
              {
                v159 = v158[4];
                v23 = v159 >= v15;
                v160 = v159 < v15;
                if (v23)
                {
                  v157 = v158;
                }

                v158 = v158[v160];
              }

              while (v158);
              if (v157 == v154 || v157[4] > v15)
              {
LABEL_294:
                v157 = (*a3 + 8);
              }

              if (!v155)
              {
                goto LABEL_303;
              }

              v161 = (*a3 + 8);
              v162 = *v161;
              do
              {
                v163 = v162[4];
                v23 = v163 >= v152;
                v164 = v163 < v152;
                if (v23)
                {
                  v161 = v162;
                }

                v162 = v162[v164];
              }

              while (v162);
              if (v161 == v154 || v161[4] > v152)
              {
LABEL_303:
                v161 = (*a3 + 8);
              }

              v165 = v157[5];
              v166 = v161[5];
              if (v15 == v152 || v165 != v166)
              {
                break;
              }

              if (*(*(v15 + 152) + 72) < *(*(v152 + 152) + 72))
              {
                goto LABEL_313;
              }
            }
          }

          while (v165 <= v166);
          do
          {
            while (1)
            {
LABEL_313:
              v168 = *--v140;
              v153 = v168;
              if (!v155)
              {
                goto LABEL_321;
              }

              v169 = (*a3 + 8);
              v170 = *v169;
              do
              {
                v171 = v170[4];
                v23 = v171 >= v15;
                v172 = v171 < v15;
                if (v23)
                {
                  v169 = v170;
                }

                v170 = v170[v172];
              }

              while (v170);
              if (v169 == v154 || v169[4] > v15)
              {
LABEL_321:
                v169 = (*a3 + 8);
              }

              if (!v155)
              {
                goto LABEL_330;
              }

              v173 = (*a3 + 8);
              v174 = *v173;
              do
              {
                v175 = v174[4];
                v23 = v175 >= v153;
                v176 = v175 < v153;
                if (v23)
                {
                  v173 = v174;
                }

                v174 = v174[v176];
              }

              while (v174);
              if (v173 == v154 || v173[4] > v153)
              {
LABEL_330:
                v173 = (*a3 + 8);
              }

              v177 = v169[5];
              v178 = v173[5];
              if (v15 == v153 || v177 != v178)
              {
                break;
              }

              if (*(*(v15 + 152) + 72) >= *(*(v153 + 152) + 72))
              {
                goto LABEL_336;
              }
            }
          }

          while (v177 > v178);
LABEL_336:
          ;
        }

        while (i < v140);
      }

      v180 = i - 1;
      if (i - 1 != v9)
      {
        *v9 = *v180;
      }

      a5 = 0;
      *v180 = v15;
    }
  }

  if (i == a2)
  {
    return result;
  }

  v229 = (v11 - 2) >> 1;
  v230 = v229;
  while (2)
  {
    v231 = v230;
    if (v229 >= v230)
    {
      v232 = (2 * v230) | 1;
      v233 = &i[v232];
      v234 = *a3;
      if (2 * v231 + 2 >= v11)
      {
        v236 = *(v234 + 8);
      }

      else
      {
        v235 = *v233;
        v237 = v234 + 8;
        v236 = *(v234 + 8);
        if (!v236)
        {
          goto LABEL_451;
        }

        v238 = v234 + 8;
        v239 = *(v234 + 8);
        do
        {
          v240 = *(v239 + 32);
          v23 = v240 >= v235;
          v241 = v240 < v235;
          if (v23)
          {
            v238 = v239;
          }

          v239 = *(v239 + 8 * v241);
        }

        while (v239);
        if (v238 == v237 || *(v238 + 32) > v235)
        {
LABEL_451:
          v238 = v234 + 8;
        }

        v242 = v233[1];
        if (!v236)
        {
          goto LABEL_460;
        }

        v243 = v234 + 8;
        v244 = *(v234 + 8);
        do
        {
          v245 = *(v244 + 32);
          v23 = v245 >= v242;
          v246 = v245 < v242;
          if (v23)
          {
            v243 = v244;
          }

          v244 = *(v244 + 8 * v246);
        }

        while (v244);
        if (v243 == v237 || *(v243 + 32) > v242)
        {
LABEL_460:
          v243 = v234 + 8;
        }

        v247 = *(v238 + 40);
        v248 = *(v243 + 40);
        if (v235 == v242 || v247 != v248)
        {
          if (v247 > v248)
          {
            goto LABEL_467;
          }
        }

        else
        {
          if (*(*(v235 + 152) + 72) >= *(*(v242 + 152) + 72))
          {
            goto LABEL_468;
          }

LABEL_467:
          ++v233;
          v232 = 2 * v231 + 2;
        }
      }

LABEL_468:
      v249 = *v233;
      v250 = i[v231];
      v251 = v234 + 8;
      if (!v236)
      {
        goto LABEL_476;
      }

      v252 = v251;
      v253 = v236;
      do
      {
        v254 = *(v253 + 32);
        v23 = v254 >= v249;
        v255 = v254 < v249;
        if (v23)
        {
          v252 = v253;
        }

        v253 = *(v253 + 8 * v255);
      }

      while (v253);
      if (v252 == v251 || *(v252 + 32) > v249)
      {
LABEL_476:
        v252 = v251;
      }

      if (!v236)
      {
        goto LABEL_485;
      }

      result = v251;
      do
      {
        v256 = *(v236 + 32);
        v23 = v256 >= v250;
        v257 = v256 < v250;
        if (v23)
        {
          result = v236;
        }

        v236 = *(v236 + 8 * v257);
      }

      while (v236);
      if (result == v251 || result[4] > v250)
      {
LABEL_485:
        result = v251;
      }

      v258 = *(v252 + 40);
      v259 = result[5];
      if (v249 == v250 || v258 != v259)
      {
        if (v258 <= v259)
        {
          goto LABEL_491;
        }
      }

      else
      {
        if (*(*(v249 + 152) + 72) < *(*(v250 + 152) + 72))
        {
          goto LABEL_544;
        }

LABEL_491:
        i[v231] = v249;
        if (v229 < v232)
        {
LABEL_492:
          v260 = v233;
          goto LABEL_543;
        }

        while (2)
        {
          v261 = 2 * v232;
          v232 = (2 * v232) | 1;
          v260 = &i[v232];
          v262 = v261 + 2;
          v263 = *a3;
          if (v261 + 2 >= v11)
          {
            v266 = *(v263 + 8);
          }

          else
          {
            v264 = *v260;
            v265 = v263 + 8;
            v266 = *(v263 + 8);
            if (!v266)
            {
              goto LABEL_502;
            }

            v267 = v263 + 8;
            v268 = *(v263 + 8);
            do
            {
              v269 = *(v268 + 32);
              v23 = v269 >= v264;
              v270 = v269 < v264;
              if (v23)
              {
                v267 = v268;
              }

              v268 = *(v268 + 8 * v270);
            }

            while (v268);
            if (v267 == v265 || *(v267 + 32) > v264)
            {
LABEL_502:
              v267 = v263 + 8;
            }

            v271 = v260[1];
            if (!v266)
            {
              goto LABEL_511;
            }

            v272 = v263 + 8;
            v273 = *(v263 + 8);
            do
            {
              v274 = *(v273 + 32);
              v23 = v274 >= v271;
              v275 = v274 < v271;
              if (v23)
              {
                v272 = v273;
              }

              v273 = *(v273 + 8 * v275);
            }

            while (v273);
            if (v272 == v265 || *(v272 + 32) > v271)
            {
LABEL_511:
              v272 = v263 + 8;
            }

            v276 = *(v267 + 40);
            v277 = *(v272 + 40);
            if (v264 == v271 || v276 != v277)
            {
              if (v276 > v277)
              {
                goto LABEL_518;
              }
            }

            else
            {
              if (*(*(v264 + 152) + 72) >= *(*(v271 + 152) + 72))
              {
                goto LABEL_519;
              }

LABEL_518:
              ++v260;
              v232 = v262;
            }
          }

LABEL_519:
          v278 = *v260;
          v279 = v263 + 8;
          if (!v266)
          {
            goto LABEL_527;
          }

          result = v279;
          v280 = v266;
          do
          {
            v281 = *(v280 + 32);
            v23 = v281 >= v278;
            v282 = v281 < v278;
            if (v23)
            {
              result = v280;
            }

            v280 = *(v280 + 8 * v282);
          }

          while (v280);
          if (result == v279 || result[4] > v278)
          {
LABEL_527:
            result = v279;
          }

          if (!v266)
          {
            goto LABEL_536;
          }

          v283 = v279;
          do
          {
            v284 = *(v266 + 32);
            v23 = v284 >= v250;
            v285 = v284 < v250;
            if (v23)
            {
              v283 = v266;
            }

            v266 = *(v266 + 8 * v285);
          }

          while (v266);
          if (v283 == v279 || *(v283 + 32) > v250)
          {
LABEL_536:
            v283 = v279;
          }

          v286 = result[5];
          v287 = *(v283 + 40);
          if (v278 == v250 || v286 != v287)
          {
            if (v286 > v287)
            {
              goto LABEL_492;
            }
          }

          else if (*(*(v278 + 152) + 72) < *(*(v250 + 152) + 72))
          {
            goto LABEL_492;
          }

          *v233 = v278;
          v233 = v260;
          if (v229 >= v232)
          {
            continue;
          }

          break;
        }

LABEL_543:
        *v260 = v250;
      }
    }

LABEL_544:
    v230 = v231 - 1;
    if (v231)
    {
      continue;
    }

    break;
  }

  while (2)
  {
    v288 = 0;
    v289 = *i;
    v290 = i;
    while (2)
    {
      v291 = v290;
      v292 = &v290[v288];
      v290 = v292 + 1;
      v293 = 2 * v288;
      v288 = (2 * v288) | 1;
      v294 = v293 + 2;
      if (v294 < v11)
      {
        v297 = v292[2];
        v295 = v292 + 2;
        v296 = v297;
        v298 = *(v295 - 1);
        v299 = (*a3 + 8);
        v300 = *v299;
        if (!*v299)
        {
          goto LABEL_555;
        }

        v301 = (*a3 + 8);
        v302 = *v301;
        do
        {
          v303 = v302[4];
          v23 = v303 >= v298;
          v304 = v303 < v298;
          if (v23)
          {
            v301 = v302;
          }

          v302 = v302[v304];
        }

        while (v302);
        if (v301 == v299 || v301[4] > v298)
        {
LABEL_555:
          v301 = (*a3 + 8);
        }

        if (!v300)
        {
          goto LABEL_564;
        }

        v305 = *a3 + 8;
        do
        {
          v306 = *(v300 + 32);
          v23 = v306 >= v296;
          v307 = v306 < v296;
          if (v23)
          {
            v305 = v300;
          }

          v300 = *(v300 + 8 * v307);
        }

        while (v300);
        if (v305 == v299 || *(v305 + 32) > v296)
        {
LABEL_564:
          v305 = *a3 + 8;
        }

        result = v301[5];
        v308 = *(v305 + 40);
        if (v298 == v296 || result != v308)
        {
          if (result <= v308)
          {
            goto LABEL_571;
          }
        }

        else if (*(*(v298 + 152) + 72) >= *(*(v296 + 152) + 72))
        {
          goto LABEL_571;
        }

        v290 = v295;
        v288 = v294;
      }

LABEL_571:
      *v291 = *v290;
      if (v288 <= ((v11 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    if (v290 == --a2)
    {
      *v290 = v289;
    }

    else
    {
      *v290 = *a2;
      *a2 = v289;
      v309 = (v290 - i + 8) >> 3;
      v310 = v309 - 2;
      if (v309 >= 2)
      {
        v311 = v310 >> 1;
        v312 = &i[v310 >> 1];
        v313 = *v312;
        v314 = (*a3 + 8);
        v315 = *v314;
        if (!*v314)
        {
          goto LABEL_582;
        }

        v316 = (*a3 + 8);
        v317 = *v316;
        do
        {
          v318 = v317[4];
          v23 = v318 >= v313;
          v319 = v318 < v313;
          if (v23)
          {
            v316 = v317;
          }

          v317 = v317[v319];
        }

        while (v317);
        if (v316 == v314 || v316[4] > v313)
        {
LABEL_582:
          v316 = (*a3 + 8);
        }

        v320 = *v290;
        if (!v315)
        {
          goto LABEL_591;
        }

        result = (*a3 + 8);
        do
        {
          v321 = *(v315 + 32);
          v23 = v321 >= v320;
          v322 = v321 < v320;
          if (v23)
          {
            result = v315;
          }

          v315 = *(v315 + 8 * v322);
        }

        while (v315);
        if (result == v314 || result[4] > v320)
        {
LABEL_591:
          result = (*a3 + 8);
        }

        v323 = v316[5];
        v324 = result[5];
        if (v313 == v320 || v323 != v324)
        {
          if (v323 > v324)
          {
            goto LABEL_598;
          }
        }

        else
        {
          if (*(*(v313 + 152) + 72) >= *(*(v320 + 152) + 72))
          {
            goto LABEL_625;
          }

LABEL_598:
          *v290 = v313;
          if (v310 >= 2)
          {
            do
            {
              v326 = v311 - 1;
              v311 = (v311 - 1) >> 1;
              v325 = &i[v311];
              v327 = *v325;
              v328 = (*a3 + 8);
              v329 = *v328;
              if (!*v328)
              {
                goto LABEL_608;
              }

              v330 = (*a3 + 8);
              v331 = *v330;
              do
              {
                v332 = v331[4];
                v23 = v332 >= v327;
                v333 = v332 < v327;
                if (v23)
                {
                  v330 = v331;
                }

                v331 = v331[v333];
              }

              while (v331);
              if (v330 == v328 || v330[4] > v327)
              {
LABEL_608:
                v330 = (*a3 + 8);
              }

              if (!v329)
              {
                goto LABEL_617;
              }

              result = (*a3 + 8);
              do
              {
                v334 = *(v329 + 32);
                v23 = v334 >= v320;
                v335 = v334 < v320;
                if (v23)
                {
                  result = v329;
                }

                v329 = *(v329 + 8 * v335);
              }

              while (v329);
              if (result == v328 || result[4] > v320)
              {
LABEL_617:
                result = (*a3 + 8);
              }

              v336 = v330[5];
              v337 = result[5];
              if (v327 == v320 || v336 != v337)
              {
                if (v336 <= v337)
                {
                  goto LABEL_599;
                }
              }

              else if (*(*(v327 + 152) + 72) >= *(*(v320 + 152) + 72))
              {
                goto LABEL_599;
              }

              *v312 = v327;
              v312 = &i[v311];
            }

            while (v326 > 1);
          }

          else
          {
LABEL_599:
            v325 = v312;
          }

          *v325 = v320;
        }
      }
    }

LABEL_625:
    if (v11-- > 2)
    {
      continue;
    }

    return result;
  }
}