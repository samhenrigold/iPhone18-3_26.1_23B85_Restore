void sub_25D20F8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a65)
  {
    operator delete(a65);
  }

  v68 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v68;
    operator delete(v68);
  }

  v69 = STACK[0x408];
  if (STACK[0x408])
  {
    STACK[0x410] = v69;
    operator delete(v69);
  }

  _Unwind_Resume(a1);
}

void ou3dod::LShapeBeautification(void *a1, unint64_t a2, unint64_t a3, void *a4, int a5, uint64_t *a6, void *a7, void *a8)
{
  v38 = *MEMORY[0x277D85DE8];
  v15 = a4;
  if (((*(*a7 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) == 0 && ((*(*a7 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    v16 = boxVolume((*a6 + 224 * a2));
    v17 = boxVolume((*a6 + 224 * a3));
    v32 = a1;
    if (v16 <= v17)
    {
      v18 = a2;
    }

    else
    {
      v18 = a3;
    }

    if (v16 > v17)
    {
      a3 = a2;
    }

    v19 = *a6;
    v37 = @"Sofa";
    v34 = 0;
    v35 = 0;
    __p = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&__p, &v37, &v38, 1uLL);
    v21 = __p;
    v20 = v34;
    if (__p == v34)
    {
LABEL_12:
      v23 = 0;
    }

    else
    {
      v22 = v19 + 224 * v18;
      while (![*(v22 + 128) isEqualToString:*v21])
      {
        if (++v21 == v20)
        {
          goto LABEL_12;
        }
      }

      v23 = (*(*a6 + 224 * a3 + 72) - *(*a6 + 224 * v18 + 72)) > 0.15;
    }

    p_p = &__p;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&p_p);

    if (v23)
    {
      v24 = a3;
    }

    else
    {
      v24 = v18;
    }

    if (!v23)
    {
      v18 = a3;
    }

    v25 = [*(*a6 + 224 * v18 + 144) UUIDString];
    v26 = v25;
    std::string::basic_string[abi:ne200100]<0>(&__p, [v25 UTF8String]);
    v27 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>(a8, &__p);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    if (v27)
    {
      v28 = v18;
    }

    else
    {
      v28 = v24;
    }

    if (v27)
    {
      v29 = v24;
    }

    else
    {
      v29 = v18;
    }

    v30 = [*(*a6 + 224 * v28 + 144) UUIDString];
    v31 = v30;
    std::string::basic_string[abi:ne200100]<0>(&__p, [v30 UTF8String]);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a8, &__p, &__p);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    if (ou3dod::MaybeClipExtendLShapeObjects(v32, v28, v29, v15, a5, a6, a7, 0) == 6 && a5)
    {
      ou3dod::MaybeClipExtendLShapeObjects(v32, v29, v28, v15, 1, a6, a7, 0);
    }
  }
}

void sub_25D20FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(void *a1, char **a2, char **a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, *a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, *a3);
  return a1;
}

void sub_25D20FE98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](&v16, a2);
  v5 = std::__string_hash<char>::operator()[abi:ne200100](&v15, a2 + 3);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v5 ^ v4;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v7 == v13)
      {
        if (std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>::operator()[abi:ne200100](a1, (v12 + 2), a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v6)
          {
            v13 %= *&v6;
          }
        }

        else
        {
          v13 &= *&v6 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](&v16, a2);
  v5 = std::__string_hash<char>::operator()[abi:ne200100](&v15, a2 + 3);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v5 ^ v4;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>::operator()[abi:ne200100](a1, (v12 + 2), a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v6)
          {
            v13 %= *&v6;
          }
        }

        else
        {
          v13 &= *&v6 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

BOOL std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v9 = v4 >= 0 ? a2 : *a2;
  v10 = v7 >= 0 ? a3 : *a3;
  if (memcmp(v9, v10, v5))
  {
    return 0;
  }

  v11 = *(a2 + 47);
  if (v11 >= 0)
  {
    v12 = *(a2 + 47);
  }

  else
  {
    v12 = *(a2 + 32);
  }

  v13 = *(a3 + 47);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 32);
  }

  if (v12 != v13)
  {
    return 0;
  }

  v17 = *(a2 + 24);
  v16 = (a2 + 24);
  v15 = v17;
  if (v11 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  v21 = *(a3 + 24);
  v20 = (a3 + 24);
  v19 = v21;
  if (v14 >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  return memcmp(v18, v22, v12) == 0;
}

void *std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,std::string> const,BOOL>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::__emplace_unique_key_args<std::pair<std::string,std::string>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::string> const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](v17, a2);
  v8 = std::__string_hash<char>::operator()[abi:ne200100](&v18, a2 + 3) ^ v7;
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
    v12 = v8;
    if (v8 >= *&v9)
    {
      v12 = v8 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::string> const&>,std::tuple<>>();
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

  if (!std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>::operator()[abi:ne200100](a1, (v14 + 2), a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_25D2105B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_25D2106C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, uint64_t *a2, uint64_t a3)
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

void _GLOBAL__sub_I_OU3DLShapeObjectMergerUtils_mm()
{
  v73 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  LODWORD(v21) = 0;
  *(&v21 + 1) = @"Unknown";
  LODWORD(v22) = 1;
  *(&v22 + 1) = *(&v21 + 1);
  LODWORD(v23) = 2;
  *(&v23 + 1) = *(&v22 + 1);
  LODWORD(v24) = 3;
  *(&v24 + 1) = *(&v23 + 1);
  LODWORD(v25) = 4;
  *(&v25 + 1) = *(&v24 + 1);
  LODWORD(v26) = 5;
  *(&v26 + 1) = *(&v25 + 1);
  LODWORD(v27) = 6;
  v20 = @"Door";
  *(&v27 + 1) = v20;
  LODWORD(v28) = 7;
  v19 = @"Window";
  *(&v28 + 1) = v19;
  LODWORD(v29) = 8;
  *(&v29 + 1) = *(&v26 + 1);
  LODWORD(v30) = 9;
  v17 = @"Fireplace";
  *(&v30 + 1) = v17;
  LODWORD(v31) = 10;
  *(&v31 + 1) = *(&v29 + 1);
  LODWORD(v32) = 11;
  *(&v32 + 1) = *(&v31 + 1);
  LODWORD(v33) = 12;
  v18 = @"Stairs";
  *(&v33 + 1) = v18;
  LODWORD(v34) = 13;
  v13 = @"Bed";
  *(&v34 + 1) = v13;
  LODWORD(v35) = 14;
  v36 = @"Cabinet";
  v37 = 15;
  v16 = @"Chair";
  v38 = v16;
  v39 = 16;
  v40 = v36;
  v41 = 17;
  v42 = v40;
  v43 = 18;
  v15 = @"Sofa";
  v44 = v15;
  v45 = 19;
  v14 = @"Table";
  v46 = v14;
  v47 = 20;
  v12 = @"Toilet";
  v48 = v12;
  v49 = 21;
  v0 = @"Sink";
  v50 = v0;
  v51 = 22;
  v11 = @"Bathtub";
  v52 = v11;
  v53 = 23;
  v54 = *(&v32 + 1);
  v55 = 24;
  v1 = @"Refrigerator";
  v56 = v1;
  v57 = 25;
  v2 = @"Stove";
  v58 = v2;
  v59 = 26;
  v3 = @"Washer";
  v60 = v3;
  v61 = 27;
  v4 = @"Oven";
  v62 = v4;
  v63 = 28;
  v5 = @"Dishwasher";
  v64 = v5;
  v65 = 29;
  v66 = v54;
  v67 = 30;
  v6 = v42;
  v68 = v6;
  v69 = 31;
  v70 = v66;
  v71 = 32;
  v7 = @"Screen";
  v72 = v7;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSemanticsODLabelMap, &v21, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSemanticsODLabelMap, &dword_25D1DB000);
  v31 = xmmword_25D2783C0;
  v32 = unk_25D2783D0;
  v33 = xmmword_25D2783E0;
  v34 = unk_25D2783F0;
  v27 = xmmword_25D278380;
  v28 = unk_25D278390;
  v29 = xmmword_25D2783A0;
  v30 = unk_25D2783B0;
  v23 = xmmword_25D278340;
  v24 = unk_25D278350;
  v25 = xmmword_25D278360;
  v26 = unk_25D278370;
  v21 = xmmword_25D278320;
  v22 = unk_25D278330;
  v35 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v21, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v21) = 0;
  *(&v21 + 1) = v6;
  LODWORD(v22) = 1;
  *(&v22 + 1) = v1;
  LODWORD(v23) = 2;
  *(&v23 + 1) = @"Shelf";
  LODWORD(v24) = 3;
  *(&v24 + 1) = v2;
  LODWORD(v25) = 4;
  *(&v25 + 1) = v13;
  LODWORD(v26) = 5;
  *(&v26 + 1) = v0;
  LODWORD(v27) = 6;
  *(&v27 + 1) = v3;
  LODWORD(v28) = 7;
  *(&v28 + 1) = v12;
  LODWORD(v29) = 8;
  *(&v29 + 1) = v11;
  LODWORD(v30) = 9;
  *(&v30 + 1) = v4;
  LODWORD(v31) = 10;
  *(&v31 + 1) = v5;
  LODWORD(v32) = 11;
  *(&v32 + 1) = v17;
  LODWORD(v33) = 12;
  *(&v33 + 1) = @"Stool";
  LODWORD(v34) = 13;
  *(&v34 + 1) = v16;
  LODWORD(v35) = 14;
  v36 = v14;
  v37 = 15;
  v38 = v7;
  v39 = 16;
  v40 = v15;
  v41 = 17;
  v42 = v18;
  v43 = 18;
  v44 = v19;
  v45 = 19;
  v46 = v20;
  v47 = 20;
  v48 = @"BuildInCabinet";
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v21, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
}

void sub_25D210FF0(_Unwind_Exception *a1)
{
  for (i = 328; i != -8; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<NSString * const {__strong},std::set<unsigned char>>::~pair(uint64_t a1)
{
  std::__tree<int>::destroy(a1 + 8, *(a1 + 16));

  return a1;
}

void OUCannyEdgeDetectorSemantic::OUCannyEdgeDetectorSemantic(OUCannyEdgeDetectorSemantic *this, id *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = OUCannyEdgeDetectorInterface::OUCannyEdgeDetectorInterface(this, a2);
  *v4 = &unk_286EBBE60;
  v4[19] = 0;
  v4[20] = 0;
  *(this + 21) = a2[7];
  v20 = 1038323257;
  std::vector<float>::vector[abi:ne200100](__p, 9uLL, &v20);
  v5 = objc_alloc(MEMORY[0x277CD7500]);
  v6 = [v5 initWithDevice:*(this + 1) kernelWidth:3 kernelHeight:3 weights:__p[0]];
  v7 = *(this + 19);
  *(this + 19) = v6;

  if (*(this + 21) == @"Unknown")
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] Object type shouldn't be unknown for edge detection.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v8 = OUCannyEdgeDetectorInterface::GenerateEmptyMTLTexture(this, this + 18, [*(this + 5) pixelFormat]);
  v9 = *(this + 20);
  *(this + 20) = v8;

  v10 = OUCannyEdgeDetectorInterface::GenerateEmptyMTLTexture(this, this + 16, 10);
  v11 = *(this + 3);
  *(this + 3) = v10;

  if (*(this + 16) != *(this + 18) || *(this + 17) != *(this + 19))
  {
    v12 = OUCannyEdgeDetectorInterface::GenerateEmptyMTLTexture(this, this + 18, 10);
    v13 = *(this + 4);
    *(this + 4) = v12;
  }

  v14 = [objc_alloc(MEMORY[0x277CD74F0]) initWithDevice:*(this + 1)];
  v15 = *(this + 7);
  *(this + 7) = v14;

  LODWORD(v16) = *(a2 + 1);
  [*(this + 7) setHighThreshold:v16];
  LODWORD(v17) = *a2;
  [*(this + 7) setLowThreshold:v17];
  [*(this + 7) setUseFastMode:*(a2 + 8)];
  v22 = *MEMORY[0x277CC4DE8];
  v23[0] = MEMORY[0x277CBEC10];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(this + 16), *(this + 17), 0x4C303038u, v18, this + 18);

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25D211330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  OUCannyEdgeDetectorInterface::~OUCannyEdgeDetectorInterface(v12);
  _Unwind_Resume(a1);
}

void OUCannyEdgeDetectorInterface::~OUCannyEdgeDetectorInterface(void **this)
{
  *this = &unk_286EBC518;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }
}

void OUCannyEdgeDetectorSemantic::GenerateSourceTexture(uint64_t a1, void *a2)
{
  v32 = a2;
  if ([v32 semanticLabelBufferOnWideCamera])
  {
    v3 = [v32 semanticLabelBufferOnWideCamera];
  }

  else
  {
    v3 = [v32 semanticLabelBuffer];
  }

  v4 = v3;
  if (CVPixelBufferGetWidth(v3) != *(a1 + 64) || CVPixelBufferGetHeight(v4) != *(a1 + 68))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] Semantic edge detection image size doesn't match.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  OUCannyEdgeDetectorSemantic::CopyCVPixelBuffer(a1, v4);
  CVPixelBufferLockBaseAddress(*(a1 + 144), 0);
  Width = CVPixelBufferGetWidth(*(a1 + 144));
  Height = CVPixelBufferGetHeight(*(a1 + 144));
  BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 144));
  v8 = qword_28155A9F0;
  if (qword_28155A9F0)
  {
    v9 = BaseAddress;
    v10 = *(a1 + 168);
    v11 = &qword_28155A9F0;
    do
    {
      v12 = *(v8 + 32);
      v13 = v12 >= v10;
      v14 = v12 < v10;
      if (v13)
      {
        v11 = v8;
      }

      v8 = *(v8 + 8 * v14);
    }

    while (v8);
    if (v11 != &qword_28155A9F0 && v10 >= v11[4])
    {
      v16 = (Width * Height);
      if (v16 << 32)
      {
        v17 = &v9[v16];
        v18 = v15 + 1;
        do
        {
          v19 = *v18;
          if (!*v18)
          {
            goto LABEL_24;
          }

          v20 = *v9;
          v21 = v15 + 1;
          do
          {
            v22 = *(v19 + 25);
            v13 = v22 >= v20;
            v23 = v22 < v20;
            if (v13)
            {
              v21 = v19;
            }

            v19 = *(v19 + 8 * v23);
          }

          while (v19);
          if (v21 != v18 && *(v21 + 25) <= v20)
          {
            v24 = *(*v15 + 25);
          }

          else
          {
LABEL_24:
            v24 = 0;
          }

          *v9++ = v24;
        }

        while (v9 != v17);
      }

      IOSurface = CVPixelBufferGetIOSurface(*(a1 + 144));
      v26 = MEMORY[0x277CD7058];
      v27 = IOSurfaceGetWidth(IOSurface);
      v28 = [v26 texture2DDescriptorWithPixelFormat:10 width:v27 height:IOSurfaceGetHeight(IOSurface) mipmapped:0];
      v29 = [*(a1 + 8) newTextureWithDescriptor:v28 iosurface:IOSurface plane:0];
      v30 = *(a1 + 24);
      *(a1 + 24) = v29;
    }
  }
}

void *OUCannyEdgeDetectorSemantic::CopyCVPixelBuffer(CVPixelBufferRef *this, CVPixelBufferRef pixelBuffer)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  CVPixelBufferLockBaseAddress(this[18], 0);
  v7 = CVPixelBufferGetBaseAddress(this[18]);

  return memcpy(v7, BaseAddress, Height * BytesPerRow);
}

void *std::map<NSString * {__strong},std::set<unsigned char>>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void OUCannyEdgeDetectorSemantic::PostProcess(id *this)
{
  v3 = [this[2] commandBuffer];
  [this[19] encodeToCommandBuffer:? sourceTexture:? destinationTexture:?];
  [v3 commit];
  [v3 waitUntilCompleted];
  v2 = this[5];
  this[5] = this[20];
  this[20] = v2;
}

void OUCannyEdgeDetectorSemantic::~OUCannyEdgeDetectorSemantic(OUCannyEdgeDetectorSemantic *this)
{
  *this = &unk_286EBBE60;
  v2 = *(this + 18);
  if (v2)
  {
    CVPixelBufferRelease(v2);
  }

  OUCannyEdgeDetectorInterface::~OUCannyEdgeDetectorInterface(this);
}

{
  OUCannyEdgeDetectorSemantic::~OUCannyEdgeDetectorSemantic(this);

  JUMPOUT(0x25F894DE0);
}

void *std::pair<NSString * const {__strong},std::set<unsigned char>>::pair[abi:ne200100]<true,0>(void *a1, id *a2, uint64_t a3)
{
  *a1 = *a2;
  std::set<unsigned char>::set[abi:ne200100](a1 + 1, a3);
  return a1;
}

void *std::set<unsigned char>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned char>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned char,std::__tree_node<unsigned char,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned char>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned char,std::__tree_node<unsigned char,void *> *,long>>(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(v5, (v5 + 8), v4 + 25, v4 + 25);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v4 = *std::__tree<unsigned char>::__find_equal<unsigned char>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<unsigned char>::__find_equal<unsigned char>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 25), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 25) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 25);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 25))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 25);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25D211D74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::set<unsigned char>::set[abi:ne200100](uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v5 = a3;
    do
    {
      std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(a1, v4, a2, a2);
      ++a2;
      --v5;
    }

    while (v5);
  }

  return a1;
}

uint64_t **std::map<NSString * {__strong},std::set<unsigned char>>::map[abi:ne200100](uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::__emplace_hint_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},std::set<unsigned char>> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::__emplace_hint_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},std::set<unsigned char>> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::__find_equal<NSString * {__strong}>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::__construct_node<std::pair<NSString * const {__strong},std::set<unsigned char>> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::__find_equal<NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_25D212134(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},std::set<unsigned char>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::pair<NSString * const {__strong},std::set<unsigned char>>::pair[abi:ne200100](void *a1, id *a2)
{
  v3 = a2 + 1;
  *a1 = *a2;
  std::set<unsigned char>::set[abi:ne200100](a1 + 1, v3);
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},std::set<unsigned char>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<int>::destroy(a2 + 40, *(a2 + 48));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::set<unsigned char>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::set<unsigned char>>>>::destroy(a1, a2[1]);
    std::__tree<int>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void _GLOBAL__sub_I_OUCannyEdgeDetectorSemantic_mm()
{
  v23[4] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v15 = 4366;
  v16 = 30;
  std::set<unsigned char>::set[abi:ne200100](v17, &v15, 3);
  std::pair<NSString * const {__strong},std::set<unsigned char>>::pair[abi:ne200100]<true,0>(v19, &OU3DObjectTypeCabinet, v17);
  v11 = 4366;
  v12 = 30;
  std::set<unsigned char>::set[abi:ne200100](v13, &v11, 3);
  std::pair<NSString * const {__strong},std::set<unsigned char>>::pair[abi:ne200100]<true,0>(v20, &OU3DObjectTypeShelf, v13);
  v8 = 19;
  std::set<unsigned char>::set[abi:ne200100](v9, &v8, 1);
  std::pair<NSString * const {__strong},std::set<unsigned char>>::pair[abi:ne200100]<true,0>(v21, &OU3DObjectTypeTable, v9);
  v5 = 18;
  std::set<unsigned char>::set[abi:ne200100](v6, &v5, 1);
  std::pair<NSString * const {__strong},std::set<unsigned char>>::pair[abi:ne200100]<true,0>(v22, &OU3DObjectTypeSofa, v6);
  v2 = 32;
  std::set<unsigned char>::set[abi:ne200100](v3, &v2, 1);
  std::pair<NSString * const {__strong},std::set<unsigned char>>::pair[abi:ne200100]<true,0>(v23, &OU3DObjectTypeScreen, v3);
  for (i = 0; i != -20; i -= 4)
  {
    std::__tree<int>::destroy(&v23[i + 1], v23[i + 2]);
  }

  std::__tree<int>::destroy(v3, v4);
  std::__tree<int>::destroy(v6, v7);
  std::__tree<int>::destroy(v9, v10);
  std::__tree<int>::destroy(v13, v14);
  std::__tree<int>::destroy(v17, v18);
  objc_autoreleasePoolPop(v0);
}

void sub_25D2124B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  v30 = -160;
  v31 = v27;
  do
  {
    v31 = std::pair<NSString * const {__strong},std::set<unsigned char>>::~pair(v31) - 32;
    v30 += 32;
  }

  while (v30);
  std::__tree<int>::destroy(&a11, a12);
  std::__tree<int>::destroy(&a15, a16);
  std::__tree<int>::destroy(&a19, a20);
  std::__tree<int>::destroy(&a23, a24);
  std::__tree<int>::destroy(&a27, *(v28 + 8));
  _Unwind_Resume(a1);
}

void sub_25D212CAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void vectorFromNSArray(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v7 = 0;
  std::vector<float>::vector[abi:ne200100](a2, [v3 count], &v7);
  for (i = 0; [v3 count] > i; ++i)
  {
    v5 = [v3 objectAtIndexedSubscript:i];
    [v5 floatValue];
    *(*a2 + 4 * i) = v6;
  }
}

void sub_25D2138A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, OUBox3d *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void CollectPointCloudFromBox(uint64_t *a1@<X0>, float32x4_t *a2@<X1>, const void **a3@<X8>)
{
  v31 = *a2;
  v33 = a2[1];
  v35 = a2[3];
  v29 = a2[4];
  v30 = a2[6];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a3, (a1[1] - *a1) >> 4);
  v6 = *a1;
  v5 = a1[1];
  if (v5 != *a1)
  {
    v7 = 0;
    v8 = vsubq_f32(v31, v35);
    v9 = vmulq_f32(v8, v8);
    v9.f32[0] = v9.f32[2] + vaddv_f32(*v9.f32);
    v10 = vrsqrte_f32(v9.u32[0]);
    v11 = vmul_f32(v10, vrsqrts_f32(v9.u32[0], vmul_f32(v10, v10)));
    v12 = vmulq_n_f32(v8, vmul_f32(v11, vrsqrts_f32(v9.u32[0], vmul_f32(v11, v11))).f32[0]);
    v13 = vsubq_f32(v31, v33);
    v14 = vmulq_f32(v13, v13);
    v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
    v15 = vrsqrte_f32(v14.u32[0]);
    v16 = vmul_f32(v15, vrsqrts_f32(v14.u32[0], vmul_f32(v15, v15)));
    v34 = vmulq_n_f32(v13, vmul_f32(v16, vrsqrts_f32(v14.u32[0], vmul_f32(v16, v16))).f32[0]);
    v36 = v12;
    v17 = sqrtf(v9.f32[0]) * 0.5;
    v18 = sqrtf(v14.f32[0]) * 0.5;
    v19 = vsubq_f32(v31, v29);
    v20 = vmulq_f32(v19, v19);
    v21 = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)) * 0.5;
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v32 = vmulq_f32(vaddq_f32(v31, v30), v9);
    do
    {
      v37.i32[2] = 0;
      v37.i64[0] = 0;
      v37 = *(v6 + 16 * v7);
      v22 = vsubq_f32(v37, v32);
      v23 = vmulq_f32(v36, v22);
      v24 = fabsf(v23.f32[2] + vaddv_f32(*v23.f32));
      v25 = vmulq_f32(v34, v22);
      v26 = fabsf(v25.f32[2] + vaddv_f32(*v25.f32));
      if (vabds_f32(v37.f32[2], v32.f32[2]) <= v21 && v24 <= v17 && v26 <= v18)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(a3, &v37);
        v6 = *a1;
        v5 = a1[1];
      }

      ++v7;
    }

    while (v7 < (v5 - v6) >> 4);
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13shrink_to_fitEv(a3);
}

void sub_25D213C0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13shrink_to_fitEv(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v4 >> 4);
    }

    v6 = 0;
    if (v3 >> 4)
    {
      v7 = 16 * (v4 >> 4);
      v8 = a1[1] - v2;
      v9 = (v7 - v8);
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void CollectPointCloudFromBox(OUPointCloud *a1@<X0>, float32x4_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1;
  v48 = *a2;
  v50 = a2[1];
  v52 = a2[3];
  v46 = a2[4];
  v47 = a2[6];
  v59 = 0;
  v60 = 0;
  v61 = 0;
  memset(&v58, 0, sizeof(v58));
  __p = 0;
  v56 = 0;
  v57 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v59, [(OUPointCloud *)v5 count]);
  std::vector<int>::reserve(&v58, [(OUPointCloud *)v5 count]);
  std::vector<unsigned long>::reserve(&__p, [(OUPointCloud *)v5 count]);
  v6 = 0;
  v7 = vsubq_f32(v48, v52);
  v8 = vmulq_f32(v7, v7);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = vrsqrte_f32(v8.u32[0]);
  v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
  v11 = vmulq_n_f32(v7, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]);
  v12 = vsubq_f32(v48, v50);
  v13 = vmulq_f32(v12, v12);
  v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  v14 = vrsqrte_f32(v13.u32[0]);
  v15 = vmul_f32(v14, vrsqrts_f32(v13.u32[0], vmul_f32(v14, v14)));
  v51 = vmulq_n_f32(v12, vmul_f32(v15, vrsqrts_f32(v13.u32[0], vmul_f32(v15, v15))).f32[0]);
  v53 = v11;
  v16 = sqrtf(v8.f32[0]) * 0.5;
  v17 = sqrtf(v13.f32[0]) * 0.5;
  v18 = vsubq_f32(v48, v46);
  v19 = vmulq_f32(v18, v18);
  v20 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)) * 0.5;
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v49 = vmulq_f32(vaddq_f32(v48, v47), v8);
  while ([(OUPointCloud *)v5 count]> v6)
  {
    v54.i32[2] = 0;
    v54.i64[0] = 0;
    v54 = *([(OUPointCloud *)v5 points]+ 16 * v6);
    v21 = vsubq_f32(v54, v49);
    v22 = vmulq_f32(v53, v21);
    v23 = fabsf(v22.f32[2] + vaddv_f32(*v22.f32));
    v24 = vmulq_f32(v51, v21);
    v25 = fabsf(v24.f32[2] + vaddv_f32(*v24.f32));
    if (vabds_f32(v54.f32[2], v49.f32[2]) <= v20 && v23 <= v16 && v25 <= v17)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&v59, &v54);
      v28 = [(OUPointCloud *)v5 semanticLabels];
      end = v58.__end_;
      if (v58.__end_ >= v58.__end_cap_.__value_)
      {
        v31 = v58.__end_ - v58.__begin_;
        if ((v31 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v32 = (v58.__end_cap_.__value_ - v58.__begin_) >> 1;
        if (v32 <= v31 + 1)
        {
          v32 = v31 + 1;
        }

        if ((v58.__end_cap_.__value_ - v58.__begin_) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v33 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v32;
        }

        if (v33)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v58, v33);
        }

        v34 = (4 * v31);
        *v34 = *(v28 + 4 * v6);
        v30 = (4 * v31 + 4);
        v35 = v34 - (v58.__end_ - v58.__begin_);
        memcpy(v35, v58.__begin_, v58.__end_ - v58.__begin_);
        begin = v58.__begin_;
        v58.__begin_ = v35;
        v58.__end_ = v30;
        v58.__end_cap_.__value_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        *v58.__end_ = *(v28 + 4 * v6);
        v30 = end + 1;
      }

      v58.__end_ = v30;
      v37 = [(OUPointCloud *)v5 semanticVotes];
      v38 = v56;
      if (v56 >= v57)
      {
        v40 = (v56 - __p) >> 3;
        if ((v40 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v41 = (v57 - __p) >> 2;
        if (v41 <= v40 + 1)
        {
          v41 = v40 + 1;
        }

        if (v57 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        if (v42)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v42);
        }

        v43 = (8 * v40);
        *v43 = *(v37 + 8 * v6);
        v39 = 8 * v40 + 8;
        v44 = v43 - (v56 - __p);
        memcpy(v44, __p, v56 - __p);
        v45 = __p;
        __p = v44;
        v56 = v39;
        v57 = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v56 = *(v37 + 8 * v6);
        v39 = (v38 + 8);
      }

      v56 = v39;
    }

    ++v6;
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13shrink_to_fitEv(&v59);
  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE13shrink_to_fitEv(&v58.__begin_);
  _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE13shrink_to_fitEv(&__p);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIDv3_fNS_9allocatorIS4_EEEENS3_IDv4_hNS5_IS8_EEEENS3_IDv4_tNS5_ISB_EEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS7_SA_SD_EJEJEJRS7_RSA_RSD_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSK_IJDpT2_EEEDpOT3_(a3, &v59, &v58, &__p);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  if (v58.__begin_)
  {
    v58.__end_ = v58.__begin_;
    operator delete(v58.__begin_);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }
}

void sub_25D214100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE13shrink_to_fitEv(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = 4 * (v4 >> 2);
      v8 = a1[1] - v2;
      v9 = (v7 - v8);
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE13shrink_to_fitEv(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = (v7 - v8);
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t *NormalizePointCloud@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if (*result == v4)
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    v5 = result;
    v6 = 0uLL;
    v7 = *result;
    do
    {
      v8 = *v7++;
      v6 = vaddq_f32(v6, v8);
    }

    while (v7 != v4);
    v19 = v6;
    v9 = (v4 - v3) >> 4;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    result = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v20, v3, v4, v9);
    v11 = v20;
    if (v5[1] == *v5)
    {
      v10.i32[0] = -1.0;
    }

    else
    {
      v12 = 0;
      v10.f32[0] = v9;
      v10 = vdupq_lane_s32(*v10.f32, 0);
      v13 = vdivq_f32(v19, v10);
      v10.i32[0] = -1.0;
      do
      {
        *(v11 + 16 * v12) = vsubq_f32(*(v11 + 16 * v12), v13);
        v11 = v20;
        v14 = vmulq_f32(*(v20 + 16 * v12), *(v20 + 16 * v12));
        v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
        if (v10.f32[0] < v15)
        {
          v10.f32[0] = v15;
        }

        ++v12;
      }

      while (v12 < (v5[1] - *v5) >> 4);
    }

    v16 = v21;
    if (v21 != v11)
    {
      v17 = 0;
      v18 = vdupq_lane_s32(*v10.f32, 0);
      do
      {
        *(v11 + 16 * v17) = vdivq_f32(*(v11 + 16 * v17), v18);
        ++v17;
        v11 = v20;
        v16 = v21;
      }

      while (v17 < (v21 - v20) >> 4);
    }

    *a2 = v11;
    *(a2 + 8) = v16;
    *(a2 + 16) = v22;
    *(a2 + 24) = 1;
  }

  return result;
}

double FarthestPointSample@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>, double result@<D0>)
{
  if (a4 > 0 && (v9 = (a1[1] - *a1) >> 4, v9 == (a2[1] - *a2) >> 2) && v9 == (a3[1] - *a3) >> 3)
  {
    if (v9 <= a4)
    {
      _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIDv3_fNS_9allocatorIS4_EEEENS3_IDv4_hNS5_IS8_EEEENS3_IDv4_tNS5_ISB_EEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS7_SA_SD_EJEJEJRKS7_RKSA_RKSD_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(v36, a1, a2, a3);
      v29 = v36[1];
      *a5 = v36[0];
      *(a5 + 16) = v29;
      result = *&v36[2];
      v30 = v37;
      *(a5 + 32) = v36[2];
      *(a5 + 48) = v30;
      *(a5 + 64) = v38;
      *(a5 + 72) = 1;
    }

    else
    {
      v11 = a4;
      LODWORD(v36[0]) = 2139095039;
      std::vector<float>::vector[abi:ne200100](&v34, v9, v36);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(v33, v11);
      _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEEC2B8ne200100Em(v32, v11);
      _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEEC2B8ne200100Em(__p, v11);
      v12 = rand();
      v13 = 0;
      v14 = v12 % v9;
      v15 = *a1;
      do
      {
        v16 = 0;
        *(v33[0] + v13) = *(v15 + 16 * v14);
        *(v32[0] + v13) = *(*a2 + 4 * v14);
        *(__p[0] + v13) = *(*a3 + 8 * v14);
        v15 = *a1;
        v17 = *(*a1 + 16 * v14);
        v18 = v34;
        do
        {
          v19 = vsubq_f32(*(v15 + 16 * v16), v17);
          v20 = vmulq_f32(v19, v19);
          v21 = v20.f32[2] + vaddv_f32(*v20.f32);
          if (v21 < v18[v16])
          {
            v18[v16] = v21;
          }

          ++v16;
        }

        while (v9 != v16);
        v22 = v18 + 1;
        v23 = v18 == v35 || v22 == v35;
        v24 = v18;
        if (!v23)
        {
          v25 = *v18;
          v24 = v18;
          v26 = v18 + 1;
          do
          {
            v27 = *v26++;
            v28 = v27;
            if (v25 < v27)
            {
              v25 = v28;
              v24 = v22;
            }

            v22 = v26;
          }

          while (v26 != v35);
        }

        v14 = v24 - v18;
        ++v13;
      }

      while (v13 != v11);
      _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIDv3_fNS_9allocatorIS4_EEEENS3_IDv4_hNS5_IS8_EEEENS3_IDv4_tNS5_ISB_EEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS7_SA_SD_EJEJEJRS7_RSA_RSD_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSK_IJDpT2_EEEDpOT3_(v36, v33, v32, __p);
      *a5 = v36[0];
      *(a5 + 16) = *&v36[1];
      v36[0] = 0uLL;
      *(a5 + 24) = *(&v36[1] + 8);
      *(a5 + 40) = *(&v36[2] + 1);
      memset(&v36[1], 0, 32);
      result = *&v37;
      *(a5 + 48) = v37;
      *(a5 + 64) = v38;
      *(a5 + 72) = 1;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v32[0])
      {
        v32[1] = v32[0];
        operator delete(v32[0]);
      }

      if (v33[0])
      {
        v33[1] = v33[0];
        operator delete(v33[0]);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 72) = 0;
  }

  return result;
}

void sub_25D2146B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIDv3_fNS_9allocatorIS4_EEEENS3_IDv4_hNS5_IS8_EEEENS3_IDv4_tNS5_ISB_EEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS7_SA_SD_EJEJEJRS7_RSA_RSD_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSK_IJDpT2_EEEDpOT3_(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1 + 6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  return a1;
}

void sub_25D2147A4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIDv3_fNS_9allocatorIS4_EEEENS3_IDv4_hNS5_IS8_EEEENS3_IDv4_tNS5_ISB_EEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS7_SA_SD_EJEJEJRKS7_RKSA_RKSD_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1 + 6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  return a1;
}

void sub_25D214864(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OU3DSSDConfig::IsValidConfig(int8x16_t *this)
{
  if (this->i32[0] < 1)
  {
    return 0;
  }

  result = 0;
  v3 = this[1];
  if (v3.i32[0])
  {
    v4 = vceqz_s32(*&vextq_s8(v3, v3, 4uLL));
    if ((v4.i8[0] & 1) == 0 && (v4.i8[4] & 1) == 0)
    {
      v5 = this[2];
      v6 = *v5.i32 > 0.0;
      *v5.i8 = vmvn_s8(vclez_f32(vext_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL), 4uLL)));
      return v6 & v5.i32[0] & v5.i32[1];
    }
  }

  return result;
}

__n128 *OU3DSSDConfig::OU3DSSDConfig(__n128 *a1, unsigned __int32 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a1->n128_u32[0] = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4].n128_u8[0] = 0;
  if ((MGGetSInt64Answer() - 32800) <= 0xE0)
  {
    a1[4].n128_u8[0] = 1;
  }

  if (a1->n128_i32[0] < 1 || (v6 = a1[1], !v6.i32[0]) || (v7 = vceqz_s32(*&vextq_s8(v6, v6, 4uLL)), (v7.i8[0] & 1) != 0) || (v7.i8[4] & 1) != 0 || (v8 = a1[2], *v8.i32 <= 0.0) || (v9 = vmvn_s8(vclez_f32(vext_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL), 4uLL))), (v9.i8[0] & 1) == 0) || (v9.i8[4] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] The voxelSSD config is not valid.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_25D2151D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  if (__p)
  {
    operator delete(__p);
  }

  _ZNSt3__15tupleIJNS_6vectorIDv4_hNS_9allocatorIS2_EEEENS1_IDv4_tNS3_IS6_EEEEEED2Ev(va);
  v23 = *(v21 - 120);
  if (v23)
  {
    *(v21 - 112) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void sub_25D215A10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x25F894DE0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__15tupleIJNS_6vectorIDv4_hNS_9allocatorIS2_EEEENS1_IDv4_tNS3_IS6_EEEEEED2Ev(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

unint64_t std::unordered_map<ou3dor::PartAttributeID,NSString * {__strong}>::unordered_map(unint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<int,NSString * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,NSString * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,NSString * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,NSString * {__strong}>>>::__emplace_unique_key_args<int,std::pair<int const,NSString * {__strong}> const&>(a1, a2, a2);
      a2 += 4;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

id *std::unique_ptr<ou3dor::OU3DObjectRepresentation>::reset[abi:ne200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ou3dor::OU3DObjectRepresentation::~OU3DObjectRepresentation(result);

    JUMPOUT(0x25F894DE0);
  }

  return result;
}

void ou3dor::OU3DObjectRepresentation::~OU3DObjectRepresentation(id *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table((this + 16));
  utils::OUImageUtils::~OUImageUtils((this + 12));

  v2 = this[6];
  this[6] = 0;
  if (v2)
  {
    OU3DORIDTree::~OU3DORIDTree(v2);
    MEMORY[0x25F894DE0]();
  }

  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy((this + 2), this[3]);
  v3 = this[1];
  this[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void utils::OUImageUtils::~OUImageUtils(utils::OUImageUtils *this)
{
  v2 = *this;
  v3 = *(this + 1);
  while (v2 != v3)
  {
    free(*(v2 + 24));
    v2 += 32;
  }

  free(*(this + 3));
  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void OU3DORIDTree::~OU3DORIDTree(OU3DORIDTree *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    OU3DORIDTree::Node::~Node(v2);
    MEMORY[0x25F894DE0]();
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void OU3DORIDTree::Node::~Node(OU3DORIDTree::Node *this)
{
  v3 = this + 24;
  v2 = *(this + 3);
  v4 = *(v3 + 1) - v2;
  if ((v4 >> 3) >= 1)
  {
    v5 = 0;
    v6 = (v4 >> 3) & 0x7FFFFFFF;
    do
    {
      v7 = *(*(this + 3) + 8 * v5);
      if (v7)
      {
        OU3DORIDTree::Node::~Node(v7);
        MEMORY[0x25F894DE0]();
      }

      ++v5;
    }

    while (v6 != v5);
    v2 = *(this + 3);
  }

  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

utils::OUFrameWriter *std::unique_ptr<utils::OUFrameWriter>::reset[abi:ne200100](utils::OUFrameWriter **a1, utils::OUFrameWriter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    utils::OUFrameWriter::~OUFrameWriter(result);

    JUMPOUT(0x25F894DE0);
  }

  return result;
}

void _GLOBAL__sub_I_OUPipelineOnline_mm()
{
  v108 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  LODWORD(v22) = 0;
  *(&v22 + 1) = @"Unknown";
  LODWORD(v23) = 1;
  *(&v23 + 1) = *(&v22 + 1);
  LODWORD(v24) = 2;
  *(&v24 + 1) = *(&v23 + 1);
  LODWORD(v25) = 3;
  *(&v25 + 1) = *(&v24 + 1);
  LODWORD(v26) = 4;
  *(&v26 + 1) = *(&v25 + 1);
  LODWORD(v27) = 5;
  *(&v27 + 1) = *(&v26 + 1);
  LODWORD(v28) = 6;
  v21 = @"Door";
  *(&v28 + 1) = v21;
  LODWORD(v29) = 7;
  v20 = @"Window";
  *(&v29 + 1) = v20;
  LODWORD(v30) = 8;
  *(&v30 + 1) = *(&v27 + 1);
  LODWORD(v31) = 9;
  v18 = @"Fireplace";
  *(&v31 + 1) = v18;
  LODWORD(v32) = 10;
  *(&v32 + 1) = *(&v30 + 1);
  LODWORD(v33) = 11;
  *(&v33 + 1) = *(&v32 + 1);
  LODWORD(v34) = 12;
  v19 = @"Stairs";
  *(&v34 + 1) = v19;
  LODWORD(v35) = 13;
  v14 = @"Bed";
  *(&v35 + 1) = v14;
  LODWORD(v36) = 14;
  v37 = @"Cabinet";
  v38 = 15;
  v17 = @"Chair";
  v39 = v17;
  v40 = 16;
  v41 = v37;
  v42 = 17;
  v43 = v41;
  v44 = 18;
  v16 = @"Sofa";
  v45 = v16;
  v46 = 19;
  v15 = @"Table";
  v47 = v15;
  v48 = 20;
  v13 = @"Toilet";
  v49 = v13;
  v50 = 21;
  v0 = @"Sink";
  v51 = v0;
  v52 = 22;
  v12 = @"Bathtub";
  v53 = v12;
  v54 = 23;
  v55 = *(&v33 + 1);
  v56 = 24;
  v1 = @"Refrigerator";
  v57 = v1;
  v58 = 25;
  v2 = @"Stove";
  v59 = v2;
  v60 = 26;
  v3 = @"Washer";
  v61 = v3;
  v62 = 27;
  v4 = @"Oven";
  v63 = v4;
  v64 = 28;
  v5 = @"Dishwasher";
  v65 = v5;
  v66 = 29;
  v67 = v55;
  v68 = 30;
  v6 = v43;
  v69 = v6;
  v70 = 31;
  v71 = v67;
  v72 = 32;
  v7 = @"Screen";
  v73 = v7;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSemanticsODLabelMap, &v22, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSemanticsODLabelMap, &dword_25D1DB000);
  v32 = xmmword_25D2784E8;
  v33 = unk_25D2784F8;
  v34 = xmmword_25D278508;
  v35 = unk_25D278518;
  v28 = xmmword_25D2784A8;
  v29 = unk_25D2784B8;
  v30 = xmmword_25D2784C8;
  v31 = unk_25D2784D8;
  v24 = xmmword_25D278468;
  v25 = unk_25D278478;
  v26 = xmmword_25D278488;
  v27 = unk_25D278498;
  v22 = xmmword_25D278448;
  v23 = unk_25D278458;
  v36 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v22, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v22) = 0;
  *(&v22 + 1) = v6;
  LODWORD(v23) = 1;
  *(&v23 + 1) = v1;
  LODWORD(v24) = 2;
  *(&v24 + 1) = @"Shelf";
  LODWORD(v25) = 3;
  *(&v25 + 1) = v2;
  LODWORD(v26) = 4;
  *(&v26 + 1) = v14;
  LODWORD(v27) = 5;
  *(&v27 + 1) = v0;
  LODWORD(v28) = 6;
  *(&v28 + 1) = v3;
  LODWORD(v29) = 7;
  *(&v29 + 1) = v13;
  LODWORD(v30) = 8;
  *(&v30 + 1) = v12;
  LODWORD(v31) = 9;
  *(&v31 + 1) = v4;
  LODWORD(v32) = 10;
  *(&v32 + 1) = v5;
  LODWORD(v33) = 11;
  *(&v33 + 1) = v18;
  LODWORD(v34) = 12;
  *(&v34 + 1) = @"Stool";
  LODWORD(v35) = 13;
  *(&v35 + 1) = v17;
  LODWORD(v36) = 14;
  v37 = v15;
  v38 = 15;
  v39 = v7;
  v40 = 16;
  v41 = v16;
  v42 = 17;
  v43 = v19;
  v44 = 18;
  v45 = v20;
  v46 = 19;
  v47 = v21;
  v48 = 20;
  v49 = @"BuildInCabinet";
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v22, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  *(&v22 + 1) = @"Chair-chair_type-dining";
  LODWORD(v23) = 2;
  *(&v23 + 1) = @"Chair-chair_type-swivel";
  LODWORD(v24) = 3;
  *(&v24 + 1) = @"Chair-chair_type-other";
  LODWORD(v25) = 4;
  *(&v25 + 1) = @"Chair-chair_leg_type-four";
  LODWORD(v26) = 5;
  *(&v26 + 1) = @"Chair-chair_leg_type-star";
  LODWORD(v27) = 6;
  *(&v27 + 1) = @"Chair-chair_leg_type-other";
  LODWORD(v28) = 7;
  *(&v28 + 1) = @"Chair-chair_arm_type-missing";
  LODWORD(v29) = 8;
  *(&v29 + 1) = @"Chair-chair_arm_type-existing";
  LODWORD(v30) = 9;
  *(&v30 + 1) = @"Chair-chair_back_type-missing";
  LODWORD(v31) = 10;
  *(&v31 + 1) = @"Chair-chair_back_type-existing";
  LODWORD(v32) = 11;
  *(&v32 + 1) = @"Chair-chair_seat_height-tall_seat";
  LODWORD(v33) = 12;
  *(&v33 + 1) = @"Chair-chair_seat_height-normal/low_seat";
  LODWORD(v34) = 13;
  *(&v34 + 1) = @"Chair-chair_seat_shape-rectangular";
  LODWORD(v35) = 14;
  *(&v35 + 1) = @"Chair-chair_seat_shape-round";
  LODWORD(v36) = 15;
  v37 = @"Chair-chair_seat_shape-none";
  v38 = 16;
  v39 = @"Sofa-sofa_type-rectangular";
  v40 = 17;
  v41 = @"Sofa-sofa_type-lShaped";
  v42 = 18;
  v43 = @"Sofa-sofa_type-singleSeat";
  v44 = 19;
  v45 = @"Sofa-sofa_type-lShapedMain";
  v46 = 20;
  v47 = @"Sofa-sofa_type-lShapedExtension";
  v48 = 21;
  v49 = @"Sofa-sofa_type-lShapedMiddle";
  v50 = 22;
  v51 = @"Sofa-sofa_type-other";
  v52 = 23;
  v53 = @"Sofa-sofa_arm_type-missing";
  v54 = 24;
  v55 = @"Sofa-sofa_arm_type-two_arms";
  v56 = 25;
  v57 = @"Sofa-sofa_arm_type-none";
  v58 = 26;
  v59 = @"Sofa-sofa_back_type-missing";
  v60 = 27;
  v61 = @"Sofa-sofa_back_type-existing";
  v62 = 28;
  v63 = @"Table-table_type-desk";
  v64 = 29;
  v65 = @"Table-table_type-coffee";
  v66 = 30;
  v67 = @"Table-table_type-dining";
  v68 = 31;
  v69 = @"Table-table_type-other";
  v70 = 32;
  v71 = @"Table-table_shape-rectangular";
  v72 = 33;
  v73 = @"Table-table_shape-lShaped";
  v74 = 34;
  v75 = @"Table-table_shape-circularElliptic";
  v76 = 35;
  v77 = @"Table-table_shape-other";
  v78 = 36;
  v79 = @"Table-table_leg_type-two_leg";
  v80 = 37;
  v81 = @"Table-table_leg_type-four_leg";
  v82 = 38;
  v83 = @"Table-table_leg_type-none";
  v84 = 39;
  v85 = @"Table-table_attribute-with_storage";
  v86 = 40;
  v87 = @"Table-table_attribute-without_storage";
  v88 = 41;
  v89 = @"Cabinet-cabinet_type-standalone_cabinet";
  v90 = 42;
  v91 = @"Cabinet-cabinet_type-kitchen_cabinet";
  v92 = 43;
  v93 = @"Cabinet-cabinet_type-nightstand";
  v94 = 44;
  v95 = @"Cabinet-cabinet_type-none";
  v96 = 45;
  v97 = @"Cabinet-cabinet_attribute-no_countertop";
  v98 = 46;
  v99 = @"Cabinet-cabinet_attribute-with_countertop";
  v100 = 100;
  v101 = @"Sofa-sofa_arm_type-existing";
  v102 = 101;
  LODWORD(v22) = 0;
  v103 = @"Storage-storage_type-cabinet";
  v104 = 102;
  v105 = @"Storage-storage_type-shelf";
  v106 = 103;
  v107 = @"Chair-chair_type-stool";
  std::unordered_map<ou3dor::PartAttributeID,NSString * {__strong}>::unordered_map(&ou3dor::k3DORSupportedAttributeTypeMap, &v22, 50);
  for (k = 792; k != -8; k -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<ou3dor::PartAttributeID,NSString * {__strong}>::~unordered_map[abi:ne200100], &ou3dor::k3DORSupportedAttributeTypeMap, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
}

void sub_25D2169C4(_Unwind_Exception *a1)
{
  for (i = 792; i != -8; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25D217CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void **a51)
{
  a51 = &STACK[0x370];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a51);
  a51 = &STACK[0x388];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a51);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a51);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&STACK[0x3A0], STACK[0x3A8]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&STACK[0x3B8], STACK[0x3C0]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&STACK[0x3D0], STACK[0x3D8]);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

_anonymous_namespace_::UnionFind *anonymous namespace::UnionFind::UnionFind(_anonymous_namespace_::UnionFind *this, int a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v4 = a2;
  *this = 0u;
  std::vector<float>::resize(this, a2);
  __x = 0;
  std::vector<int>::resize(this + 1, v4, &__x);
  v6 = *this;
  v5 = *(this + 1);
  if (*this != v5)
  {
    v7 = 0;
    v8 = (v5 - v6 - 4) >> 2;
    v9 = vdupq_n_s64(v8);
    v10 = (v8 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v11 = (v6 + 8);
    do
    {
      v12 = vdupq_n_s64(v7);
      v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_25D277E60)));
      if (vuzp1_s16(v13, *v9.i8).u8[0])
      {
        *(v11 - 2) = v7;
      }

      if (vuzp1_s16(v13, *&v9).i8[2])
      {
        *(v11 - 1) = v7 + 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_25D277E50)))).i32[1])
      {
        *v11 = v7 + 2;
        v11[1] = v7 + 3;
      }

      v7 += 4;
      v11 += 4;
    }

    while (v10 != v7);
  }

  *(this + 12) = a2;
  return this;
}

void sub_25D218068(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *anonymous namespace::UnionFind::unite(uint64_t *this, uint64_t a2, uint64_t a3)
{
  v3 = *this;
  v4 = (this[1] - *this) >> 2;
  if (v4 > a2 && v4 > a3)
  {
    for (i = (v3 + 4 * a2); *i != a2; i = (v3 + 4 * a2))
    {
      a2 = *(v3 + 4 * *i);
      *i = a2;
    }

    for (j = (v3 + 4 * a3); *j != a3; j = (v3 + 4 * a3))
    {
      a3 = *(v3 + 4 * *j);
      *j = a3;
    }

    if (a2 != a3)
    {
      v7 = this[3];
      if (*(v7 + 4 * a2) >= *(v7 + 4 * a3))
      {
        *(v3 + 4 * a3) = a2;
        v8 = *(v7 + 4 * a2);
        if (v8 == *(v7 + 4 * a3))
        {
          *(v7 + 4 * a2) = v8 + 1;
        }
      }

      else
      {
        *(v3 + 4 * a2) = a3;
      }

      --*(this + 12);
    }
  }

  return this;
}

void sub_25D2182F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25D2195F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  STACK[0x270] = &a25;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);
  STACK[0x270] = &a28;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);
  STACK[0x320] = &a59;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&STACK[0x320]);
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(&a62, a63);
  STACK[0x320] = &a65;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x320]);
  _ZNSt3__15tupleIJNS_6vectorIDv4_hNS_9allocatorIS2_EEEENS1_IDv4_tNS3_IS6_EEEEEED2Ev(&a66);
  STACK[0x320] = &STACK[0x210];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x320]);
  v67 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v68;
    operator delete(v68);
  }

  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&STACK[0x258], STACK[0x260]);
  _Unwind_Resume(a1);
}

void std::vector<box3d>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = (v4 - *a1) >> 7;
    v14 = v13 + 1;
    if ((v13 + 1) >> 57)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v15 = v5 - *a1;
    if (v15 >> 6 > v14)
    {
      v14 = v15 >> 6;
    }

    if (v15 >= 0x7FFFFFFFFFFFFF80)
    {
      v16 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(a1, v16);
    }

    v17 = (v13 << 7);
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[3];
    v17[2] = a2[2];
    v17[3] = v20;
    *v17 = v18;
    v17[1] = v19;
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[7];
    v17[6] = a2[6];
    v17[7] = v23;
    v17[4] = v21;
    v17[5] = v22;
    v12 = (v13 << 7) + 128;
    v24 = *(a1 + 8) - *a1;
    v25 = v17 - v24;
    memcpy(v17 - v24, *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[7];
    v4[6] = a2[6];
    v4[7] = v11;
    v4[4] = v9;
    v4[5] = v10;
    v12 = (v4 + 8);
  }

  *(a1 + 8) = v12;
}

void anonymous namespace::mergeGivenBoxes(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, int **a4@<X3>, uint64_t *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v169 = *MEMORY[0x277D85DE8];
  v131 = a2;
  v14 = a4[1];
  if (*a4 == v14 || (v15 = a1[1], *a1 == v15) || (v16 = v14 - *a4, v16 > 0x6DB6DB6DB6DB6DB7 * ((v15 - *a1) >> 5)))
  {
    *(a7 + 128) = 0;
    *(a7 + 96) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 80) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  else
  {
    std::vector<float>::vector[abi:ne200100](&v158, v16);
    v17 = *a4;
    v18 = v158;
    v19 = a4[1] - *a4;
    if (v19)
    {
      v20 = v19 >> 2;
      v21 = (v19 >> 2) > 1;
      v22 = *a3;
      if (!v21)
      {
        v20 = 1;
      }

      v23 = *a4;
      v24 = v158;
      do
      {
        v25 = *v23;
        v23 += 4;
        *v24++ = *(*(v22 + 24 * v25) + 12) * *(*(v22 + 24 * v25) + 16);
        --v20;
      }

      while (v20);
    }

    v26 = v18 + 1;
    _ZF = v18 == v159 || v26 == v159;
    v28 = v18;
    if (!_ZF)
    {
      v29 = *v18;
      v28 = v18;
      v30 = v18 + 1;
      do
      {
        v31 = *v30++;
        v32 = v31;
        if (v29 < v31)
        {
          v29 = v32;
          v28 = v26;
        }

        v26 = v30;
      }

      while (v30 != v159);
    }

    v129 = a5;
    v33 = *(*(*a3 + 24 * *&v17[(v28 - v18) << 30 >> 30]) + 24);
    LODWORD(v161) = 0;
    std::vector<int>::vector[abi:ne200100](&v156, 0x18uLL, &v161);
    v34 = *a4;
    v35 = a4[1];
    if (*a4 != v35)
    {
      v36 = *a3;
      v37 = v156;
      HIDWORD(v7) = 0;
      do
      {
        v38 = *v34;
        v34 += 4;
        v39 = *(*(v36 + 24 * v38) + 24) + 12.5663706 - v33;
        v40 = fmod(v39, 3.14159265);
        v41 = vcvtmd_s64_f64((v40 + 3.14159265) / 0.261799395);
        ++v37[v41];
      }

      while (v34 != v35);
    }

    v161 = xmmword_25D278568;
    *&v162 = 0x1700000012;
    std::unordered_set<int>::unordered_set(v155, &v161, 6);
    LODWORD(v161) = 0;
    if (v157 == v156)
    {
      v130 = 0;
    }

    else
    {
      v42 = 0;
      do
      {
        v43 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v155, &v161);
        v44 = v161;
        if (!v43 && *(v156 + v161))
        {
          ++v42;
        }

        LODWORD(v161) = v161 + 1;
      }

      while (v44 + 1 < ((v157 - v156) >> 2));
      v130 = v42 > 3;
    }

    *v45.i64 = rotationZMatrix(v33);
    v133 = v46;
    v134 = v45;
    v132 = v47;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    std::vector<box3d>::vector[abi:ne200100](&v144, a4[1] - *a4);
    v48 = *a4;
    if (a4[1] == *a4)
    {
      v60 = 0;
      v51.i64[0] = 0x80000000800000;
      v51.i64[1] = 0x80000000800000;
      v52 = vnegq_f32(v51);
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v51.i64[0] = 0x80000000800000;
      v51.i64[1] = 0x80000000800000;
      v52 = vnegq_f32(v51);
      do
      {
        v53 = 224 * *&v48[4 * v50];
        v54 = 8;
        v7 = v49;
        do
        {
          v136 = v51;
          v138 = v52;
          *(v144 + v7) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(*(*a1 + v53))), v133, *(*a1 + v53), 1), v132, *(*a1 + v53), 2);
          v55 = v144;
          v135 = *(v144 + v7);
          LODWORD(v161) = v135.i32[0];
          std::vector<float>::push_back[abi:ne200100](&v152, &v161);
          v56 = &v55[v7];
          LODWORD(v161) = *(v56 + 1);
          std::vector<float>::push_back[abi:ne200100](&v149, &v161);
          LODWORD(v161) = *(v56 + 2);
          std::vector<float>::push_back[abi:ne200100](&v146, &v161);
          v58 = v136;
          v57 = v138;
          v57.i32[3] = 0;
          v59 = v135;
          v59.i32[3] = 0;
          v52 = vminnmq_f32(v57, v59);
          v58.i32[3] = 0;
          v51 = vmaxnmq_f32(v58, v59);
          v7 += 16;
          v53 += 16;
          --v54;
        }

        while (v54);
        ++v50;
        v48 = *a4;
        v60 = a4[1] - *a4;
        v49 += 128;
      }

      while (v60 > v50);
    }

    if (v60 >= 4 && @"Stairs" != v131)
    {
      std::__sort<std::__less<float,float> &,float *>();
      std::__sort<std::__less<float,float> &,float *>();
      std::__sort<std::__less<float,float> &,float *>();
      v52.f32[0] = ((v153 - v152) >> 2);
      v61 = (v52.f32[0] * 0.15);
      v62 = (v52.f32[0] * 0.85);
      v52.i32[0] = *(v152 + v61);
      v52.i32[1] = *(v149 + v61);
      v52.i32[2] = *(v146 + v61);
      v51.i32[0] = *(v152 + v62);
      v51.i32[1] = *(v149 + v62);
      v51.i32[2] = *(v146 + v62);
    }

    v137 = v51;
    v139 = v52;
    LODWORD(v161) = 0;
    std::vector<float>::vector[abi:ne200100](v143, 7uLL, &v161);
    v63 = vabdq_f32(v137, v139);
    v64.i64[0] = 0x3F0000003F000000;
    v64.i64[1] = 0x3F0000003F000000;
    v65 = vmulq_f32(vaddq_f32(v137, v139), v64);
    v66 = v143[0];
    v65.i32[3] = v63.i32[0];
    *v143[0] = v65;
    *(v66 + 2) = vextq_s8(v63, v63, 4uLL).u64[0];
    v66[6] = v33;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    centroidSizeAngleToBox3d(v143, 0, &v161);
    if (a6)
    {
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v67 = *(v143[0] + 4);
      LODWORD(a1) = vcvtps_s32_f32(*(v143[0] + 3) / 0.1);
      std::vector<std::vector<int>>::resize(&v140, a1);
      LODWORD(v7) = vcvtps_s32_f32(v67 / 0.1);
      if (a1 >= 1)
      {
        v68 = 0;
        do
        {
          std::vector<float>::resize(&v140[v68], v7);
          v68 += 3;
        }

        while (3 * a1 != v68);
      }

      if (a1 >= 1)
      {
        v69 = 0;
        v70 = *v143[0] - (*(v143[0] + 3) * 0.5);
        v71 = *(v143[0] + 1) - (*(v143[0] + 4) * 0.5);
        do
        {
          if (v7 >= 1)
          {
            v72 = 0;
            _S13 = v70 + (v69 * 0.1);
            do
            {
              v74 = v144;
              v75 = v145;
              if (v144 != v145)
              {
                v76 = v71 + (v72 * 0.1);
                do
                {
                  box3dToCentroidSizeAngle(__p, v74);
                  v77 = *(__p[0] + 3) * *(__p[0] + 4);
                  _Q3 = v74[1];
                  __asm { FMLA            S5, S13, V3.S[1] }

                  v83 = fabsf(_S5 - (v76 * _Q3.f32[0])) * 0.5;
                  if (v83 > v77)
                  {
                    goto LABEL_53;
                  }

                  _S6 = -_Q3.f32[0];
                  _Q3 = v74[2];
                  __asm
                  {
                    FMLA            S4, S6, V3.S[1]
                    FMLA            S4, S13, V3.S[1]
                  }

                  v88 = (v83 + 0.0) + (fabsf(_S4 - (v76 * _Q3.f32[0])) * 0.5);
                  if (v88 > v77)
                  {
                    goto LABEL_53;
                  }

                  _S6 = -_Q3.f32[0];
                  _Q3 = v74[3];
                  __asm
                  {
                    FMLA            S5, S6, V3.S[1]
                    FMLA            S5, S13, V3.S[1]
                  }

                  v93 = v88 + (fabsf(_S5 - (v76 * _Q3.f32[0])) * 0.5);
                  if (v93 <= v77)
                  {
                    v94 = (v93 + (fabsf((((((_Q3.f32[1] * -(v70 + (v69 * 0.1))) + (_Q3.f32[0] * v76)) + (COERCE_FLOAT(*v74) * _Q3.f32[1])) + (-_Q3.f32[0] * COERCE_FLOAT(HIDWORD(v74->i64[0])))) + (_S13 * COERCE_FLOAT(HIDWORD(v74->i64[0])))) + (-COERCE_FLOAT(*v74) * v76)) * 0.5)) <= v77;
                  }

                  else
                  {
LABEL_53:
                    v94 = 0;
                  }

                  __p[1] = __p[0];
                  operator delete(__p[0]);
                  v140[3 * v69][v72] += v94;
                  v74 += 8;
                }

                while (v74 != v75);
              }

              ++v72;
            }

            while (v72 != v7);
          }

          v69 = (v69 + 1);
        }

        while (v69 != a1);
      }

      if (v140 == v141)
      {
        v101 = 0.0;
        v102 = 0.0;
        v98 = v129;
      }

      else
      {
        v95 = 0;
        v96 = 0;
        v97 = v140;
        v98 = v129;
        do
        {
          for (i = *v97; i != v97[1]; ++i)
          {
            v100 = *i;
            v95 += v100;
            if (!v100)
            {
              ++v96;
            }
          }

          v97 += 3;
        }

        while (v97 != v141);
        v101 = v96;
        v102 = v95;
      }

      v105 = (0xAAAAAAAAAAAAAAABLL * (v141 - v140) * (v140[1] - *v140));
      v106 = v101 / v105;
      v107 = (v102 / ((v145 - v144) >> 7)) / v105;
      v108 = *a4;
      v109 = a4[1];
      v110 = v109 - *a4;
      if (v109 == *a4)
      {
        v124 = 1;
        v104 = v130;
      }

      else
      {
        v111 = 0;
        v112 = 0;
        v113 = v110 >> 2;
        v114 = *v98;
        v115 = v113 - 1;
        if (v113 <= 1)
        {
          v116 = 1;
        }

        else
        {
          v116 = v113;
        }

        v117 = (v108 + 4);
        v118 = 0.0;
        v104 = v130;
        do
        {
          v119 = v111 + 1;
          if (v113 > v111 + 1)
          {
            v120 = *(v114 + 24 * *&v108[4 * v111]);
            v121 = v115;
            v122 = v117;
            do
            {
              v123 = *v122++;
              v118 = v118 + *(v120 + 4 * v123);
              ++v112;
              --v121;
            }

            while (v121);
          }

          ++v117;
          --v115;
          v111 = v119;
        }

        while (v119 != v116);
        v124 = (v118 / v112) >= 0.5;
      }

      if (v107 >= 0.5)
      {
        v124 = 1;
      }

      v103 = v106 <= 0.07 || v124;
      __p[0] = &v140;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
    }

    else
    {
      v103 = 1;
      v104 = v130;
    }

    v125 = v166;
    *(a7 + 64) = v165;
    *(a7 + 80) = v125;
    v126 = v168;
    *(a7 + 96) = v167;
    *(a7 + 112) = v126;
    v127 = v162;
    *a7 = v161;
    *(a7 + 16) = v127;
    v128 = v164;
    *(a7 + 32) = v163;
    *(a7 + 48) = v128;
    *(a7 + 128) = v103;
    *(a7 + 129) = v104;
    if (v143[0])
    {
      v143[1] = v143[0];
      operator delete(v143[0]);
    }

    if (v144)
    {
      v145 = v144;
      operator delete(v144);
    }

    if (v146)
    {
      v147 = v146;
      operator delete(v146);
    }

    if (v149)
    {
      v150 = v149;
      operator delete(v149);
    }

    if (v152)
    {
      v153 = v152;
      operator delete(v152);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v155);
    if (v156)
    {
      v157 = v156;
      operator delete(v156);
    }

    if (v158)
    {
      v159 = v158;
      operator delete(v158);
    }
  }
}

void sub_25D21A354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char *a58)
{
  a58 = &a26;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a58);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a44);
  if (a49)
  {
    a50 = a49;
    operator delete(a49);
  }

  if (a52)
  {
    a53 = a52;
    operator delete(a52);
  }

  _Unwind_Resume(a1);
}

float **anonymous namespace::getMeanLogits@<X0>(uint64_t *a1@<X0>, int **a2@<X1>, uint64_t *a3@<X8>)
{
  result = std::vector<float>::vector[abi:ne200100](a3, (*(*a1 + 224 * **a2 + 168) - *(*a1 + 224 * **a2 + 160)) >> 2);
  v6 = *a2;
  v7 = a2[1];
  v8 = *result;
  v9 = result[1];
  v10 = v9 - *result;
  if (*a2 != v7)
  {
    v11 = *a1;
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9 - *result;
    }

    v13 = *a2;
    do
    {
      if (v9 != v8)
      {
        v14 = *(v11 + 224 * *v13 + 160);
        result = v12;
        v15 = v8;
        do
        {
          v16 = *v14++;
          *v15 = v16 + *v15;
          ++v15;
          result = (result - 1);
        }

        while (result);
      }

      ++v13;
    }

    while (v13 != v7);
  }

  if (v9 != v8)
  {
    v17 = (v7 - v6);
    if (v10 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v10;
    }

    do
    {
      *v8 = *v8 / v17;
      ++v8;
      --v18;
    }

    while (v18);
  }

  return result;
}

void RemoveFPCabinetFromRefridge(uint64_t *result, void *a2)
{
  if (a2)
  {
    v4 = *result;
    v5 = result[1];
    if (a2[1] == 0x6DB6DB6DB6DB6DB7 * ((v5 - *result) >> 5) && v5 != v4)
    {
      v7 = 0;
      do
      {
        if (((*(*a2 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          v8 = [*(v4 + 224 * v7 + 128) isEqualToString:@"Refrigerator"];
          v4 = *result;
          v5 = result[1];
          if (v8 && v5 != v4)
          {
            v10 = 0;
            v11 = 0;
            do
            {
              if ((*(*a2 + 8 * (v11 >> 6)) & (1 << v11)) == 0 && [*(v4 + v10 + 128) isEqualToString:@"Cabinet"])
              {
                box3dIou(&v13, (*result + 224 * v7), (*result + v10), 0, v12);
                if (v14 > 0.7)
                {
                  *(*a2 + 8 * (v11 >> 6)) |= 1 << v11;
                }
              }

              ++v11;
              v4 = *result;
              v5 = result[1];
              v10 += 224;
            }

            while (v11 < 0x6DB6DB6DB6DB6DB7 * ((v5 - *result) >> 5));
          }
        }

        ++v7;
      }

      while (v7 < 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 5));
    }
  }
}

void sub_25D21B628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char *a33, char *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  a33 = &a39;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a33);
  a33 = &a42;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a33);
  a33 = &a45;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a33);
  a33 = &a48;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

uint64_t *anonymous namespace::sortIndices@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  std::vector<unsigned long>::vector[abi:ne200100](a2, (a1[1] - *a1) >> 2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 0;
    v7 = (v5 - v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v7 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v10 = xmmword_25D277E60;
    v11 = vdupq_n_s64(2uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v8, v10));
      if (v12.i8[0])
      {
        v4[v6] = v6;
      }

      if (v12.i8[4])
      {
        v4[v6 + 1] = v6 + 1;
      }

      v6 += 2;
      v10 = vaddq_s64(v10, v11);
    }

    while (v9 != v6);
  }

  v13 = 126 - 2 * __clz((v5 - v4) >> 3);
  v16 = a1;
  if (v5 == v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }
}

void anonymous namespace::nonMaxSuppressBoxes(void ***a1, const OUBox3d **a2, int a3, uint64_t *a4, void *a5, void *a6, float a7)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a2) >> 5);
  if (v9 >= 2)
  {
    if (a6 && a6[1] == v9)
    {
      v36[0] = 0;
      v36[1] = 0;
      v35 = v36;
      v15 = *a1;
      v14 = a1[1];
      if (*a1 != v14)
      {
        do
        {
          std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__emplace_unique_key_args<NSString * {__strong},NSString * const {__strong}&>(&v35, v15, v15);
          ++v15;
        }

        while (v15 != v14);
        v8 = *a2;
        v7 = a2[1];
      }

      memset(v34, 0, sizeof(v34));
      for (; v8 != v7; v8 = (v8 + 224))
      {
        OUBox3d::OUBox3d(&v37, v8);
        LOBYTE(v33[0]) = v36 != std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(&v35, v38);
        std::vector<BOOL>::push_back(v34, v33);

        if (__p)
        {
          operator delete(__p);
        }

        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }
      }

      v31 = a2;
      v16 = *a4;
      v17 = a4[1];
      if (v17 != *a4)
      {
        v18 = 0;
        do
        {
          v19 = *(v16 + 8 * v18);
          if (((1 << v19) & *(*a6 + 8 * (v19 >> 6))) == 0 && (*(v34[0] + (v19 >> 6)) & (1 << v19)) != 0)
          {
            v20 = v18 + 1;
            if (v18 + 1 < (v17 - v16) >> 3)
            {
              do
              {
                v21 = *(v16 + 8 * v20);
                v22 = v21 >> 6;
                v23 = 1 << v21;
                if (((1 << v21) & *(*a6 + 8 * (v21 >> 6))) == 0 && (*(v34[0] + v22) & v23) != 0)
                {
                  v24 = *(&(*v31)[1].var5.var0 + 28 * v19);
                  v25 = *(&(*v31)[1].var5.var0 + 28 * v21);
                  if (a3)
                  {
                    if (([v24 isEqualToString:v25] & 1) == 0 && *(*(*a5 + 24 * v19) + 4 * v21) >= a7)
                    {
                      *(*a6 + 8 * v22) |= v23;
                    }
                  }

                  else if ([v24 isEqualToString:v25] && *(*(*a5 + 24 * v19) + 4 * v21) >= a7)
                  {
                    box3dToCentroidSizeAngle(&v37, *v31 + 14 * v19);
                    box3dToCentroidSizeAngle(v33, *v31 + 14 * v21);
                    v26 = v33[0];
                    v27 = v19 >> 6;
                    if (((*(v37.var1 + 4) * *(v37.var1 + 3)) * *(v37.var1 + 5)) <= ((*(v33[0] + 4) * *(v33[0] + 3)) * *(v33[0] + 5)))
                    {
                      v28 = 1 << v19;
                    }

                    else
                    {
                      v27 = v21 >> 6;
                      v28 = 1 << v21;
                    }

                    *(*a6 + 8 * v27) |= v28;
                    v33[1] = v26;
                    operator delete(v26);
                    if (v37.var1)
                    {
                      *&v37.var2 = v37.var1;
                      operator delete(v37.var1);
                    }
                  }
                }

                ++v20;
                v16 = *a4;
                v17 = a4[1];
              }

              while (v20 < (v17 - *a4) >> 3);
            }
          }

          ++v18;
        }

        while (v18 < (v17 - v16) >> 3);
      }

      if (v34[0])
      {
        operator delete(v34[0]);
      }

      std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&v35, v36[0]);
    }

    else
    {
      v29 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a1, a2);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
      }
    }
  }
}

void sub_25D21BF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&a20, a21);
  _Unwind_Resume(a1);
}

void anonymous namespace::SaveBoxes(OUVizTool *a1, void *a2, uint64_t a3)
{
  memset(v11, 0, sizeof(v11));
  v4 = *a1;
  v5 = *(a1 + 1);
  if (v5 != *a1)
  {
    v7 = a1;
    v8 = 0;
    v9 = 0;
    do
    {
      if (((*(*a2 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        a1 = std::vector<OUBox3d>::push_back[abi:ne200100](v11, (v4 + v8));
        v4 = *v7;
        v5 = *(v7 + 1);
      }

      ++v9;
      v8 += 224;
    }

    while (v9 < 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 5));
  }

  v10 = OUVizTool::Get(a1);
  OUVizTool::SaveBoxes(v10, a3, v11);
  v12 = v11;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void sub_25D21C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void anonymous namespace::zeroOutClassScores(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  std::vector<float>::vector[abi:ne200100](a3, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
  if (a3[1] != *a3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [*(*a1 + v5 + 128) isEqualToString:v11];
      v8 = 0;
      if ((v7 & 1) == 0)
      {
        v8 = *(*a1 + v5 + 136);
      }

      v9 = *a3;
      v10 = a3[1];
      *(*a3 + 4 * v6++) = v8;
      v5 += 224;
    }

    while (v6 < (v10 - v9) >> 2);
  }
}

uint64_t *std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_25D21C2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25D277E60)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25D277E50)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25D277E60)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25D277E50)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::vector<float>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::unordered_set<int>::unordered_set(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, a2, a2);
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::vector<box3d>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<box3d>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25D21C774(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<box3d>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::vector<int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

uint64_t *std::vector<std::vector<int>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

uint64_t std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d&>(uint64_t a1, const OUBox3d *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  OUBox3d::OUBox3d((224 * v2), a2);
  v15 = (224 * v2 + 224);
  v7 = *(a1 + 8);
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OUBox3d>::~__split_buffer(&v13);
  return v12;
}

void sub_25D21CBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<OUBox3d>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,false>(uint64_t *result, int64x2_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = (a2->i64 - v10) >> 3;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v90 = *v10;
                v91 = *(v10 + 8);
                v83 = **a3;
                v92 = *(v83 + 4 * v91);
                v93 = *(v83 + ((*v10 << 32) >> 30));
                v94 = a2[-1].i64[1];
                v95 = *(v83 + 4 * v94);
                if (v92 > v93)
                {
                  if (v95 <= v92)
                  {
                    *v10 = v91;
                    *(v10 + 8) = v90;
                    v145 = a2[-1].i64[1];
                    if (*(v83 + 4 * v145) <= v93)
                    {
                      return result;
                    }

                    *(v10 + 8) = v145;
                  }

                  else
                  {
                    *v10 = v94;
                  }

                  goto LABEL_170;
                }

                if (v95 <= v92)
                {
                  return result;
                }

                *(v10 + 8) = v94;
                a2[-1].i64[1] = v91;
                v88 = *v10;
                v84 = *(v10 + 8);
                v86 = *(v83 + 4 * v84);
LABEL_158:
                if (v86 > *(v83 + 4 * v88))
                {
                  *v10 = v84;
                  *(v10 + 8) = v88;
                }

                return result;
              case 4:

              case 5:
                v81 = a2[-1].i64[1];
                v82 = *(v10 + 24);
                v83 = **a3;
                if (*(v83 + 4 * v81) <= *(v83 + 4 * v82))
                {
                  return result;
                }

                *(v10 + 24) = v81;
                a2[-1].i64[1] = v82;
                v85 = *(v10 + 16);
                v84 = *(v10 + 24);
                v86 = *(v83 + 4 * v84);
                if (v86 <= *(v83 + 4 * v85))
                {
                  return result;
                }

                *(v10 + 16) = v84;
                *(v10 + 24) = v85;
                v87 = *(v10 + 8);
                if (v86 <= *(v83 + 4 * v87))
                {
                  return result;
                }

                *(v10 + 8) = v84;
                *(v10 + 16) = v87;
                v88 = *v10;
                goto LABEL_158;
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
              v89 = a2[-1].i64[1];
              v90 = *v10;
              if (*(**a3 + 4 * v89) <= *(**a3 + ((*v10 << 32) >> 30)))
              {
                return result;
              }

              *v10 = v89;
LABEL_170:
              a2[-1].i64[1] = v90;
              return result;
            }
          }

          if (v11 <= 23)
          {
            if (a5)
            {
              if (v10 != a2)
              {
                v96 = v10 + 8;
                if ((v10 + 8) != a2)
                {
                  v97 = 0;
                  v98 = **a3;
                  v99 = v10;
                  do
                  {
                    v101 = *v99;
                    v100 = *(v99 + 8);
                    v99 = v96;
                    v102 = *(v98 + 4 * v100);
                    if (v102 > *(v98 + 4 * v101))
                    {
                      v103 = v97;
                      while (1)
                      {
                        *(v10 + v103 + 8) = v101;
                        if (!v103)
                        {
                          break;
                        }

                        v101 = *(v10 + v103 - 8);
                        v103 -= 8;
                        if (v102 <= *(v98 + 4 * v101))
                        {
                          v104 = (v10 + v103 + 8);
                          goto LABEL_124;
                        }
                      }

                      v104 = v10;
LABEL_124:
                      *v104 = v100;
                    }

                    v96 = v99 + 8;
                    v97 += 8;
                  }

                  while ((v99 + 8) != a2);
                }
              }
            }

            else if (v10 != a2)
            {
              v140 = (v10 + 8);
              if ((v10 + 8) != a2)
              {
                v141 = **a3;
                do
                {
                  v143 = *v9;
                  v142 = v9[1];
                  v9 = v140;
                  v144 = *(v141 + 4 * v142);
                  if (v144 > *(v141 + 4 * v143))
                  {
                    do
                    {
                      *v140 = v143;
                      v143 = *(v140 - 2);
                      --v140;
                    }

                    while (v144 > *(v141 + 4 * v143));
                    *v140 = v142;
                  }

                  v140 = v9 + 1;
                }

                while (v9 + 1 != a2);
              }
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v105 = (v11 - 2) >> 1;
              v106 = *a3;
              v107 = v105;
              do
              {
                v108 = v107;
                if (v105 >= v107)
                {
                  v109 = (2 * v107) | 1;
                  v110 = (v10 + 8 * v109);
                  v111 = 2 * v107 + 2;
                  v112 = *v106;
                  if (v111 < v11)
                  {
                    v113 = vshrq_n_s64(vshlq_n_s64(*v110, 0x20uLL), 0x1EuLL);
                    if (*(v112 + v113.i64[0]) > *(v112 + v113.i64[1]))
                    {
                      v110 = (v110 + 8);
                      v109 = 2 * v108 + 2;
                    }
                  }

                  result = (v10 + 8 * v108);
                  v114 = v110->i64[0];
                  v115 = *result;
                  v116 = *(v112 + (*result << 32 >> 30));
                  if (*(v112 + (v110->i64[0] << 32 >> 30)) <= v116)
                  {
                    do
                    {
                      v117 = v110;
                      *result = v114;
                      if (v105 < v109)
                      {
                        break;
                      }

                      v118 = 2 * v109;
                      v109 = (2 * v109) | 1;
                      v110 = (v10 + 8 * v109);
                      v119 = v118 + 2;
                      if (v119 < v11)
                      {
                        v120 = vshrq_n_s64(vshlq_n_s64(*v110, 0x20uLL), 0x1EuLL);
                        if (*(v112 + v120.i64[0]) > *(v112 + v120.i64[1]))
                        {
                          v110 = (v110 + 8);
                          v109 = v119;
                        }
                      }

                      v114 = v110->i64[0];
                      result = v117;
                    }

                    while (*(v112 + (v110->i64[0] << 32 >> 30)) <= v116);
                    *v117 = v115;
                  }
                }

                v107 = v108 - 1;
              }

              while (v108);
              do
              {
                v121 = 0;
                v122 = *v10;
                v123 = *a3;
                v124 = v10;
                do
                {
                  v125 = v124;
                  v126 = &v124->i8[8 * v121];
                  v124 = (v126 + 8);
                  v127 = 2 * v121;
                  v121 = (2 * v121) | 1;
                  v128 = v127 + 2;
                  if (v128 < v11)
                  {
                    v129 = vshrq_n_s64(vshlq_n_s64(*v124, 0x20uLL), 0x1EuLL);
                    result = v129.i64[1];
                    if (*(*v123 + v129.i64[0]) > *(*v123 + v129.i64[1]))
                    {
                      v124 = (v126 + 16);
                      v121 = v128;
                    }
                  }

                  *v125 = v124->i64[0];
                }

                while (v121 <= ((v11 - 2) >> 1));
                a2 = (a2 - 8);
                if (v124 == a2)
                {
                  v124->i64[0] = v122;
                }

                else
                {
                  v124->i64[0] = a2->i64[0];
                  a2->i64[0] = v122;
                  v130 = (&v124->i64[1] - v10) >> 3;
                  v131 = v130 < 2;
                  v132 = v130 - 2;
                  if (!v131)
                  {
                    v133 = v132 >> 1;
                    v134 = (v10 + 8 * v133);
                    v135 = v134->i64[0];
                    v136 = v124->i64[0];
                    v137 = *v123;
                    v138 = *(v137 + (v124->i64[0] << 32 >> 30));
                    if (*(v137 + (v134->i64[0] << 32 >> 30)) > v138)
                    {
                      do
                      {
                        v139 = v134;
                        v124->i64[0] = v135;
                        if (!v133)
                        {
                          break;
                        }

                        v133 = (v133 - 1) >> 1;
                        v134 = (v10 + 8 * v133);
                        v135 = v134->i64[0];
                        v124 = v139;
                      }

                      while (*(v137 + (v134->i64[0] << 32 >> 30)) > v138);
                      v139->i64[0] = v136;
                    }
                  }
                }

                v131 = v11-- <= 2;
              }

              while (!v131);
            }

            return result;
          }

          v12 = (v10 + 8 * (v11 >> 1));
          v13 = v12;
          v14 = **a3;
          v15 = a2[-1].i64[1];
          v16 = *(v14 + 4 * v15);
          if (v11 >= 0x81)
          {
            v17 = *v12;
            v18 = *v10;
            v19 = *(v14 + (*v12 << 32 >> 30));
            v20 = *(v14 + ((*v10 << 32) >> 30));
            if (v19 <= v20)
            {
              if (v16 > v19)
              {
                *v12 = v15;
                a2[-1].i64[1] = v17;
                v25 = *v10;
                if (*(v14 + (*v12 << 32 >> 30)) > *(v14 + ((*v10 << 32) >> 30)))
                {
                  *v10 = *v12;
                  *v12 = v25;
                }
              }
            }

            else
            {
              if (v16 <= v19)
              {
                *v10 = v17;
                *v12 = v18;
                v27 = a2[-1].i64[1];
                if (*(v14 + 4 * v27) <= v20)
                {
                  goto LABEL_28;
                }

                *v12 = v27;
              }

              else
              {
                *v10 = v15;
              }

              a2[-1].i64[1] = v18;
            }

LABEL_28:
            v28 = v12 - 1;
            v29 = *(v12 - 1);
            v30 = *(v10 + 8);
            v31 = *(v14 + 4 * v29);
            v32 = *(v14 + 4 * v30);
            v33 = a2[-1].i64[0];
            v34 = *(v14 + 4 * v33);
            if (v31 <= v32)
            {
              if (v34 > v31)
              {
                *v28 = v33;
                a2[-1].i64[0] = v29;
                v35 = *(v10 + 8);
                if (*(v14 + (*v28 << 32 >> 30)) > *(v14 + 4 * v35))
                {
                  *(v10 + 8) = *v28;
                  *v28 = v35;
                }
              }
            }

            else
            {
              if (v34 <= v31)
              {
                *(v10 + 8) = v29;
                *v28 = v30;
                v37 = a2[-1].i64[0];
                if (*(v14 + 4 * v37) <= v32)
                {
                  goto LABEL_40;
                }

                *v28 = v37;
              }

              else
              {
                *(v10 + 8) = v33;
              }

              a2[-1].i64[0] = v30;
            }

LABEL_40:
            v40 = v12[1];
            v38 = v12 + 1;
            v39 = v40;
            v41 = *(v10 + 16);
            v42 = *(v14 + 4 * v40);
            v43 = *(v14 + 4 * v41);
            v44 = a2[-2].i64[1];
            v45 = *(v14 + 4 * v44);
            if (v42 <= v43)
            {
              if (v45 > v42)
              {
                *v38 = v44;
                a2[-2].i64[1] = v39;
                v46 = *(v10 + 16);
                if (*(v14 + (*v38 << 32 >> 30)) > *(v14 + 4 * v46))
                {
                  *(v10 + 16) = *v38;
                  *v38 = v46;
                }
              }
            }

            else
            {
              if (v45 <= v42)
              {
                *(v10 + 16) = v39;
                *v38 = v41;
                v47 = a2[-2].i64[1];
                if (*(v14 + 4 * v47) <= v43)
                {
                  goto LABEL_49;
                }

                *v38 = v47;
              }

              else
              {
                *(v10 + 16) = v44;
              }

              a2[-2].i64[1] = v41;
            }

LABEL_49:
            v48 = *v13;
            v49 = *v28;
            v50 = *(v14 + (*v13 << 32 >> 30));
            v51 = *(v14 + (*v28 << 32 >> 30));
            v52 = *v38;
            v53 = *(v14 + (*v38 << 32 >> 30));
            if (v50 <= v51)
            {
              if (v53 <= v50)
              {
                goto LABEL_56;
              }

              *v13 = v52;
              *v38 = v48;
              v38 = v13;
              v48 = v49;
              if (v53 <= v51)
              {
                v48 = v52;
                goto LABEL_56;
              }
            }

            else if (v53 <= v50)
            {
              *v28 = v48;
              *v13 = v49;
              v28 = v13;
              v48 = v52;
              if (v53 <= v51)
              {
                v48 = v49;
LABEL_56:
                v54 = *v10;
                *v10 = v48;
                *v13 = v54;
                goto LABEL_57;
              }
            }

            *v28 = v52;
            *v38 = v49;
            goto LABEL_56;
          }

          v21 = *v10;
          v22 = *v13;
          v23 = *(v14 + ((*v10 << 32) >> 30));
          v24 = *(v14 + (*v13 << 32 >> 30));
          if (v23 <= v24)
          {
            if (v16 > v23)
            {
              *v10 = v15;
              a2[-1].i64[1] = v21;
              v26 = *v13;
              if (*(v14 + ((*v10 << 32) >> 30)) > *(v14 + (*v13 << 32 >> 30)))
              {
                *v13 = *v10;
                *v10 = v26;
              }
            }
          }

          else
          {
            if (v16 > v23)
            {
              *v13 = v15;
LABEL_36:
              a2[-1].i64[1] = v22;
              goto LABEL_57;
            }

            *v13 = v21;
            *v10 = v22;
            v36 = a2[-1].i64[1];
            if (*(v14 + 4 * v36) > v24)
            {
              *v10 = v36;
              goto LABEL_36;
            }
          }

LABEL_57:
          --a4;
          v55 = *v10;
          v56 = (*v10 << 32) >> 30;
          if (a5)
          {
            break;
          }

          v57 = *(v14 + v56);
          if (*(v14 + ((*(v10 - 8) << 32) >> 30)) > v57)
          {
            break;
          }

          if (v57 <= *(v14 + (a2[-1].i64[1] << 32 >> 30)))
          {
            v73 = v10 + 8;
            do
            {
              v10 = v73;
              if (v73 >= a2)
              {
                break;
              }

              v73 += 8;
            }

            while (v57 <= *(v14 + ((*v10 << 32) >> 30)));
          }

          else
          {
            do
            {
              v72 = *(v10 + 8);
              v10 += 8;
            }

            while (v57 <= *(v14 + 4 * v72));
          }

          v74 = a2;
          if (v10 < a2)
          {
            v74 = a2;
            do
            {
              v75 = v74[-1].i64[1];
              v74 = (v74 - 8);
            }

            while (v57 > *(v14 + 4 * v75));
          }

          if (v10 < v74)
          {
            v76 = *v10;
            v77 = v74->i64[0];
            do
            {
              *v10 = v77;
              v74->i64[0] = v76;
              do
              {
                v78 = *(v10 + 8);
                v10 += 8;
                v76 = v78;
              }

              while (v57 <= *(v14 + 4 * v78));
              do
              {
                v79 = v74[-1].i64[1];
                v74 = (v74 - 8);
                v77 = v79;
              }

              while (v57 > *(v14 + 4 * v79));
            }

            while (v10 < v74);
          }

          v80 = (v10 - 8);
          if ((v10 - 8) != v9)
          {
            *v9 = *v80;
          }

          a5 = 0;
          *v80 = v55;
        }

        v58 = 0;
        v59 = *(v14 + v56);
        do
        {
          v60 = *(v10 + v58 + 8);
          v58 += 8;
        }

        while (*(v14 + 4 * v60) > v59);
        v61 = v10 + v58;
        v62 = a2;
        if (v58 == 8)
        {
          v62 = a2;
          do
          {
            if (v61 >= v62)
            {
              break;
            }

            v64 = v62[-1].i64[1];
            v62 = (v62 - 8);
          }

          while (*(v14 + 4 * v64) <= v59);
        }

        else
        {
          do
          {
            v63 = v62[-1].i64[1];
            v62 = (v62 - 8);
          }

          while (*(v14 + 4 * v63) <= v59);
        }

        if (v61 >= v62)
        {
          v70 = (v61 - 8);
        }

        else
        {
          v65 = v62->i64[0];
          v66 = (v10 + v58);
          v67 = v62;
          do
          {
            *v66 = v65;
            *v67 = v60;
            do
            {
              v68 = v66[1];
              ++v66;
              v60 = v68;
            }

            while (*(v14 + 4 * v68) > v59);
            do
            {
              v69 = *--v67;
              v65 = v69;
            }

            while (*(v14 + 4 * v69) <= v59);
          }

          while (v66 < v67);
          v70 = (v66 - 1);
        }

        if (v70 != v10)
        {
          *v10 = v70->i64[0];
        }

        v70->i64[0] = v55;
        if (v61 >= v62)
        {
          break;
        }

LABEL_80:
        a5 = 0;
        v10 = &v70->u64[1];
      }

      v10 = &v70->u64[1];
      if (result)
      {
        break;
      }

      if (!v71)
      {
        goto LABEL_80;
      }
    }

    a2 = v70;
    if (!v71)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a5;
  v8 = *a2 << 32 >> 30;
  v9 = *(v7 + v8);
  v10 = *result << 32 >> 30;
  v11 = *(v7 + v10);
  v12 = *a3;
  v13 = *(v7 + (*a3 << 32 >> 30));
  if (v9 <= v11)
  {
    if (v13 <= v9)
    {
      v10 = *a3 << 32 >> 30;
      v5 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v5;
      v14 = *result;
      v10 = v8;
      if (*(v7 + (*a2 << 32 >> 30)) > *(v7 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v14;
        v5 = *a3;
        v10 = *a3 << 32 >> 30;
      }
    }
  }

  else
  {
    if (v13 <= v9)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(v7 + (*a3 << 32 >> 30)) <= v11)
      {
        v10 = *a3 << 32 >> 30;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v12;
    }

    *a3 = v6;
    v5 = v6;
  }

LABEL_12:
  if (*(v7 + (*a4 << 32 >> 30)) > *(v7 + v10))
  {
    *a3 = *a4;
    *a4 = v5;
    v15 = *a2;
    if (*(v7 + (*a3 << 32 >> 30)) > *(v7 + (*a2 << 32 >> 30)))
    {
      *a2 = *a3;
      *a3 = v15;
      v16 = *result;
      if (*(v7 + (*a2 << 32 >> 30)) > *(v7 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v16;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::sortIndices(std::vector<float> const&)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v11 = **a3;
        v18 = *(v11 + 4 * v17);
        v19 = *(v11 + (*a1 << 32 >> 30));
        v20 = *(a2 - 1);
        v21 = *(v11 + 4 * v20);
        if (v18 > v19)
        {
          if (v21 > v18)
          {
            *a1 = v20;
            goto LABEL_41;
          }

          *a1 = v17;
          a1[1] = v8;
          v41 = *(a2 - 1);
          if (*(v11 + 4 * v41) > v19)
          {
            a1[1] = v41;
            goto LABEL_41;
          }

          return 1;
        }

        if (v21 <= v18)
        {
          return 1;
        }

        a1[1] = v20;
        *(a2 - 1) = v17;
        v16 = *a1;
        v12 = a1[1];
        v14 = *(v11 + 4 * v12);
        break;
      case 4:
        return 1;
      case 5:
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = **a3;
        if (*(v11 + 4 * v9) <= *(v11 + 4 * v10))
        {
          return 1;
        }

        a1[3] = v9;
        *(a2 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        v14 = *(v11 + 4 * v12);
        if (v14 <= *(v11 + 4 * v13))
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v15 = a1[1];
        if (v14 <= *(v11 + 4 * v15))
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v15;
        v16 = *a1;
        break;
      default:
        goto LABEL_16;
    }

    if (v14 > *(v11 + 4 * v16))
    {
      *a1 = v12;
      a1[1] = v16;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (*(**a3 + 4 * v7) > *(**a3 + (*a1 << 32 >> 30)))
    {
      *a1 = v7;
LABEL_41:
      *(a2 - 1) = v8;
      return 1;
    }

    return 1;
  }

LABEL_16:
  v23 = a1 + 2;
  v22 = a1[2];
  v24 = a1[1];
  v25 = *a1;
  v26 = **a3;
  v27 = *(v26 + 4 * v24);
  v28 = *(v26 + (*a1 << 32 >> 30));
  v29 = *(v26 + 4 * v22);
  if (v27 > v28)
  {
    v30 = a1;
    v31 = a1 + 2;
    if (v29 <= v27)
    {
      *a1 = v24;
      a1[1] = v25;
      v30 = a1 + 1;
      v31 = a1 + 2;
      if (v29 <= v28)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v30 = v22;
    *v31 = v25;
    goto LABEL_28;
  }

  if (v29 > v27)
  {
    a1[1] = v22;
    *v23 = v24;
    v30 = a1;
    v31 = a1 + 1;
    if (v29 > v28)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 24; ; i += 8)
  {
    v35 = *v32;
    v36 = *v23;
    v37 = *(v26 + (*v32 << 32 >> 30));
    if (v37 > *(v26 + 4 * v36))
    {
      v38 = i;
      while (1)
      {
        *(a1 + v38) = v36;
        v39 = v38 - 8;
        if (v38 == 8)
        {
          break;
        }

        v36 = *(a1 + v38 - 16);
        v38 -= 8;
        if (v37 <= *(v26 + 4 * v36))
        {
          v40 = (a1 + v39);
          goto LABEL_36;
        }
      }

      v40 = a1;
LABEL_36:
      *v40 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v23 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

void *std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__emplace_unique_key_args<NSString * {__strong},NSString * const {__strong}&>(uint64_t **a1, void **a2, id *a3)
{
  v3 = *std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__find_equal<NSString * {__strong}>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = CompareNSString::operator()(a1, *(v3 + 32), *a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || CompareNSString::operator()(a1, *a2, *(v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(result, v7);
    v4 = *(result + 8);
  }

  *(result + 8) = v4 + 1;
  v8 = *result;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25D21DD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void *OUVizTool::Get(OUVizTool *this)
{
  {
    OUVizTool::OUVizTool(&OUVizTool::Get(void)::viz_tool_singleton);
    __cxa_atexit(OUVizTool::~OUVizTool, &OUVizTool::Get(void)::viz_tool_singleton, &dword_25D1DB000);
  }

  return &OUVizTool::Get(void)::viz_tool_singleton;
}

void OUVizTool::~OUVizTool(id *this)
{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t **std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](uint64_t **a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__emplace_hint_unique_key_args<NSString * {__strong},NSString * const {__strong}&>(a1, v4, a2, a2);
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__emplace_hint_unique_key_args<NSString * {__strong},NSString * const {__strong}&>(uint64_t **a1, void *a2, void **a3, id *a4)
{
  v4 = *std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__find_equal<NSString * {__strong}>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void _GLOBAL__sub_I_OU3DObjectMerger_mm()
{
  v0 = objc_autoreleasePoolPush();
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];

  objc_autoreleasePoolPop(v0);
}

uint64_t OUCannyEdgeDetectorRGB::OUCannyEdgeDetectorRGB(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = OUCannyEdgeDetectorInterface::OUCannyEdgeDetectorInterface(a1, a2);
  *v4 = &unk_286EBBEC0;
  v4[18] = 0;
  v4[19] = 0;
  LODWORD(__p) = 1038323257;
  std::vector<float>::vector[abi:ne200100](v24, 9uLL, &__p);
  v5 = objc_alloc(MEMORY[0x277CD7500]);
  v6 = [v5 initWithDevice:*(a1 + 8) kernelWidth:3 kernelHeight:3 weights:v24[0]];
  v7 = *(a1 + 152);
  *(a1 + 152) = v6;

  v8 = OUCannyEdgeDetectorInterface::GenerateEmptyMTLTexture(a1, (a1 + 64), 80);
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  v10 = OUCannyEdgeDetectorInterface::GenerateEmptyMTLTexture(a1, (a1 + 72), [*(a1 + 40) pixelFormat]);
  v11 = *(a1 + 144);
  *(a1 + 144) = v10;

  if (*(a1 + 64) != *(a1 + 72))
  {
    v12 = OUCannyEdgeDetectorInterface::GenerateEmptyMTLTexture(a1, (a1 + 72), 80);
    v13 = *(a1 + 32);
    *(a1 + 32) = v12;
  }

  v25 = 0x3F1645A23E991687;
  v26 = 1038710997;
  v22 = 0;
  v23 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v25, &v27, 3uLL);
  v14 = objc_alloc(MEMORY[0x277CD74F0]);
  LODWORD(v15) = 1.0;
  v16 = [v14 initWithDevice:*(a1 + 8) linearToGrayScaleTransform:__p sigma:v15];
  v17 = *(a1 + 56);
  *(a1 + 56) = v16;

  LODWORD(v18) = *(a2 + 4);
  [*(a1 + 56) setHighThreshold:v18];
  LODWORD(v19) = *a2;
  [*(a1 + 56) setLowThreshold:v19];
  [*(a1 + 56) setUseFastMode:*(a2 + 8)];
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }

  return a1;
}

void sub_25D21E558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  OUCannyEdgeDetectorInterface::~OUCannyEdgeDetectorInterface(v14);
  _Unwind_Resume(a1);
}

void OUCannyEdgeDetectorRGB::GenerateSourceTexture(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 sceneColorBuffer];
  if (__PAIR128__(CVPixelBufferGetHeight(v3), CVPixelBufferGetWidth(v3)) != __PAIR128__(*(a1 + 68), *(a1 + 64)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] Edge detection image size doesn't match.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  IOSurface = CVPixelBufferGetIOSurface(v3);
  if (CVPixelBufferGetPixelFormatType(v3) == 2016686640)
  {
    v5 = 505;
  }

  else
  {
    v5 = 500;
  }

  v6 = MEMORY[0x277CD7058];
  Width = IOSurfaceGetWidth(IOSurface);
  v8 = [v6 texture2DDescriptorWithPixelFormat:v5 width:Width height:IOSurfaceGetHeight(IOSurface) mipmapped:0];
  [v8 setUsage:3];
  v9 = [*(a1 + 8) newTextureWithDescriptor:v8 iosurface:IOSurface plane:0];
  v10 = *(a1 + 24);
  *(a1 + 24) = v9;
}

void OUCannyEdgeDetectorRGB::PostProcess(id *this)
{
  v3 = [this[2] commandBuffer];
  [this[19] encodeToCommandBuffer:? sourceTexture:? destinationTexture:?];
  [v3 commit];
  [v3 waitUntilCompleted];
  v2 = this[5];
  this[5] = this[18];
  this[18] = v2;
}

void OUCannyEdgeDetectorRGB::~OUCannyEdgeDetectorRGB(id *this)
{
  OUCannyEdgeDetectorRGB::~OUCannyEdgeDetectorRGB(this);

  JUMPOUT(0x25F894DE0);
}

{

  OUCannyEdgeDetectorInterface::~OUCannyEdgeDetectorInterface(this);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D21E888(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL ou3dor::E5RTExecute(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  if (*a1)
  {
    last_error_message = e5rt_get_last_error_message();
    v4 = _OULoggingGetOSLogForCategoryObjectUnderstanding(last_error_message, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = last_error_message;
      _os_log_impl(&dword_25D1DB000, v4, OS_LOG_TYPE_INFO, "[3DOR] E5RT operation failed with message = %s", &v6, 0xCu);
    }
  }

  return v1 == 0;
}

uint64_t ou3dor::DescribeTensorDescriptor(uint64_t a1, float a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a1, a3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOR] Printing tensor information", buf, 2u);
  }

  e5rt_tensor_desc_retain_dtype();
  e5rt_tensor_desc_dtype_get_num_components();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v6) = 0;
    _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOR] Num components per element = %u \n", buf, 8u);
  }

  e5rt_tensor_desc_dtype_get_component_dtype();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOR] Component data type is UINT \n", buf, 2u);
  }

  e5rt_tensor_desc_dtype_get_component_size();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v6 = 0;
    _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOR] Component size is %zu bytes \n", buf, 0xCu);
  }

  e5rt_tensor_desc_dtype_get_element_size();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v6 = 0;
    _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOR] Element size is %zu bytes \n", buf, 0xCu);
  }

  e5rt_tensor_desc_get_rank();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v6 = 0;
    _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOR] Tensor rank is %zu \n", buf, 0xCu);
  }

  e5rt_tensor_desc_get_shape();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOR] Tensor shape is { ", buf, 2u);
  }

  e5rt_tensor_desc_get_strides();
  return e5rt_tensor_desc_dtype_release();
}

uint64_t ou3dor::OU3DOREspressoV2Interface::OU3DOREspressoV2Interface(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_286EBBF20;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 216) = a2[2];
  *(a1 + 200) = v4;
  *(a1 + 184) = v3;
  *(a1 + 232) = 0;
  Model = ou3dor::OU3DOREspressoV2Interface::LoadModel(a1);
  if (!Model)
  {
    v7 = _OULoggingGetOSLogForCategoryObjectUnderstanding(Model, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOREspressoV2Interface::OU3DOREspressoV2Interface(v7);
    }
  }

  return a1;
}

void sub_25D21EF20(_Unwind_Exception *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v4);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

BOOL ou3dor::OU3DOREspressoV2Interface::LoadModel(ou3dor::OU3DOREspressoV2Interface *this)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(this + 23)];
    v4 = [v2 pathForResource:v3 ofType:0];

    if (!v4)
    {
      v27 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v5, v6);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        std::string::basic_string<std::string_view,0>(&__p, this + 184);
        ou3dor::OU3DOREspressoV2Interface::LoadModel(&__p, v41, v27);
      }

      v26 = 0;
      goto LABEL_53;
    }

    std::string::basic_string[abi:ne200100]<0>(v41, [v4 UTF8String]);
    LODWORD(__p) = e5rt_execution_stream_operation_create_precompiled_compute_operation();
    if (!ou3dor::E5RTExecute(&__p) || (v35 = 0, LODWORD(__p) = e5rt_execution_stream_operation_get_num_inputs(), !ou3dor::E5RTExecute(&__p)))
    {
      v26 = 0;
LABEL_48:
      if (v42 < 0)
      {
        operator delete(*v41);
      }

LABEL_53:

      goto LABEL_54;
    }

    std::vector<char const*>::vector[abi:ne200100](&v33, v35);
    LODWORD(__p) = e5rt_execution_stream_operation_get_input_names();
    v7 = ou3dor::E5RTExecute(&__p);
    if (v7)
    {
      v10 = v33;
      v9 = v34;
      if (v33 == v34)
      {
LABEL_25:
        LODWORD(__p) = e5rt_execution_stream_operation_get_num_outputs();
        if (ou3dor::E5RTExecute(&__p))
        {
          std::vector<char const*>::vector[abi:ne200100](&buf, 0);
          LODWORD(__p) = e5rt_execution_stream_operation_get_output_names();
          v17 = ou3dor::E5RTExecute(&__p);
          if (!v17)
          {
            goto LABEL_55;
          }

          v19 = *(&buf + 1);
          v20 = buf;
          if (buf != *(&buf + 1))
          {
            v21 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v17, v18);
            do
            {
              v22 = *v20;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, v22);
                v23 = v31 >= 0 ? &__p : __p;
                *v37 = 136315138;
                *&v37[4] = v23;
                _os_log_impl(&dword_25D1DB000, v21, OS_LOG_TYPE_INFO, "[3DOR] Model output name: %s", v37, 0xCu);
                if (SHIBYTE(v31) < 0)
                {
                  operator delete(__p);
                }
              }

              LODWORD(__p) = e5rt_execution_stream_operation_retain_output_port();
              v24 = ou3dor::E5RTExecute(&__p);
              __p = 0;
              v30 = 0;
              v31 = 0;
              ou3dor::OU3DOREspressoV2Interface::GetTensorShapeFromPort(v24, 0, &__p);
              std::string::basic_string[abi:ne200100]<0>(v37, v22);
              v36 = v37;
              v25 = std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 8, v37, &std::piecewise_construct, &v36);
              if (v25 + 5 != &__p)
              {
                _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v25 + 5, __p, v30, (v30 - __p) >> 3);
              }

              v25[8] = v32;
              if (v38 < 0)
              {
                operator delete(*v37);
              }

              *v37 = e5rt_io_port_release();
              ou3dor::E5RTExecute(v37);
              std::string::basic_string[abi:ne200100]<0>(v37, v22);
              ou3dor::OU3DOREspressoV2Interface::CreateAndBindOutputPort(this, v37);
              if (v38 < 0)
              {
                operator delete(*v37);
              }

              if (__p)
              {
                v30 = __p;
                operator delete(__p);
              }

              ++v20;
            }

            while (v20 != v19);
          }

          LODWORD(__p) = e5rt_execution_stream_create();
          if (ou3dor::E5RTExecute(&__p))
          {
            LODWORD(__p) = e5rt_execution_stream_encode_operation();
            v26 = ou3dor::E5RTExecute(&__p);
          }

          else
          {
LABEL_55:
            v26 = 0;
          }

          if (buf)
          {
            *(&buf + 1) = buf;
            operator delete(buf);
          }

          goto LABEL_61;
        }
      }

      else
      {
        v11 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v7, v8);
        while (1)
        {
          v12 = *v10;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, v12);
            v13 = v31 >= 0 ? &__p : __p;
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v13;
            _os_log_impl(&dword_25D1DB000, v11, OS_LOG_TYPE_INFO, "[3DOR] Load model file: %s", &buf, 0xCu);
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p);
            }
          }

          v36 = 0;
          LODWORD(__p) = e5rt_execution_stream_operation_retain_input_port();
          v14 = ou3dor::E5RTExecute(&__p);
          if (!v14)
          {
            break;
          }

          __p = 0;
          v30 = 0;
          v31 = 0;
          ou3dor::OU3DOREspressoV2Interface::GetTensorShapeFromPort(v14, v36, &__p);
          std::string::basic_string[abi:ne200100]<0>(&buf, v12);
          *v37 = &buf;
          v15 = std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 3, &buf, &std::piecewise_construct, v37);
          if (v15 + 5 != &__p)
          {
            _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v15 + 5, __p, v30, (v30 - __p) >> 3);
          }

          v15[8] = v32;
          if (v40 < 0)
          {
            operator delete(buf);
          }

          LODWORD(buf) = e5rt_io_port_release();
          if (!ou3dor::E5RTExecute(&buf))
          {
            if (__p)
            {
              v30 = __p;
              operator delete(__p);
            }

            break;
          }

          std::string::basic_string[abi:ne200100]<0>(&buf, v12);
          ou3dor::OU3DOREspressoV2Interface::CreateAndBindInputPort(this, &buf, v16);
          if (v40 < 0)
          {
            operator delete(buf);
          }

          if (__p)
          {
            v30 = __p;
            operator delete(__p);
          }

          if (++v10 == v9)
          {
            goto LABEL_25;
          }
        }
      }
    }

    v26 = 0;
LABEL_61:
    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    goto LABEL_48;
  }

  v26 = 0;
LABEL_54:

  return v26;
}

void sub_25D21F528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  _Unwind_Resume(a1);
}

void ou3dor::OU3DOREspressoV2Interface::~OU3DOREspressoV2Interface(void **this)
{
  *this = &unk_286EBBF20;
  v5 = e5rt_execution_stream_operation_release();
  ou3dor::E5RTExecute(&v5);
  v4 = e5rt_execution_stream_release();
  ou3dor::E5RTExecute(&v4);
  std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::clear((this + 3));
  std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::clear((this + 8));
  for (i = this + 15; ; CVPixelBufferRelease(i[5]))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  for (j = this + 20; ; CVPixelBufferRelease(j[5]))
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 18);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 13);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table((this + 8));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table((this + 3));
}

{
  ou3dor::OU3DOREspressoV2Interface::~OU3DOREspressoV2Interface(this);

  JUMPOUT(0x25F894DE0);
}

BOOL ou3dor::OU3DOREspressoV2Interface::GetTensorShapeFromPort(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  LODWORD(v22) = e5rt_io_port_retain_tensor_desc();
  ou3dor::E5RTExecute(&v22);
  ou3dor::DescribeTensorDescriptor(v23, v5, v4);
  v21 = 0;
  v22 = 0;
  LODWORD(v20) = e5rt_tensor_desc_get_shape();
  ou3dor::E5RTExecute(&v20);
  if (v21)
  {
    v6 = 0;
    v7 = *(a3 + 8);
    do
    {
      v8 = *(a3 + 16);
      if (v7 >= v8)
      {
        v9 = *a3;
        v10 = v7 - *a3;
        v11 = (v10 >> 3) + 1;
        if (v11 >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v13);
        }

        v14 = (8 * (v10 >> 3));
        *v14 = *(v22 + 8 * v6);
        v7 = v14 + 1;
        memcpy(0, v9, v10);
        v15 = *a3;
        *a3 = 0;
        *(a3 + 8) = v7;
        *(a3 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7++ = *(v22 + 8 * v6);
      }

      *(a3 + 8) = v7;
      ++v6;
    }

    while (v6 < v21);
  }

  v20 = 0;
  v19 = e5rt_tensor_desc_retain_dtype();
  ou3dor::E5RTExecute(&v19);
  v19 = 0;
  component_dtype = e5rt_tensor_desc_dtype_get_component_dtype();
  ou3dor::E5RTExecute(&component_dtype);
  *(a3 + 24) = v19;
  component_dtype = 0;
  e5rt_tensor_desc_dtype_get_component_pack();
  *(a3 + 28) = component_dtype;
  v17 = e5rt_tensor_desc_dtype_release();
  ou3dor::E5RTExecute(&v17);
  v17 = e5rt_tensor_desc_release();
  return ou3dor::E5RTExecute(&v17);
}

BOOL ou3dor::OU3DOREspressoV2Interface::CreateAndBindInputPort(uint64_t a1, uint64_t *a2, float a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_25D1DB000, v5, OS_LOG_TYPE_INFO, "[3DOR] Model input name: %s", buf, 0xCu);
  }

  *buf = a2;
  v7 = std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 24), a2, &std::piecewise_construct, buf, &v20);
  v9 = v7;
  v10 = (v7 + 5);
  v11 = v7[5];
  for (i = v7[6]; v11 != i; ++v11)
  {
    v13 = *v11;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v13;
      _os_log_impl(&dword_25D1DB000, v5, OS_LOG_TYPE_INFO, "[3DOR] Model input shape: %zu", buf, 0xCu);
    }
  }

  v14 = 1278226534;
  v15 = *(v9 + 17);
  if (v15 == 3)
  {
    v14 = 1278226536;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v16 = "[3DOR] e5rt tensor format: float 16 type";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (v15 == 6)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v16 = "[3DOR] e5rt tensor format: float 32 type";
LABEL_16:
      _os_log_impl(&dword_25D1DB000, v5, OS_LOG_TYPE_INFO, v16, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

LABEL_18:
  PixelBuffer = ou3dor::OU3DOREspressoV2Interface::CreatePixelBuffer(v8, v7, v10, v14);
  *buf = a2;
  std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 104), a2, &std::piecewise_construct, buf, &v20)[5] = PixelBuffer;
  *buf = 0;
  LODWORD(v20) = e5rt_execution_stream_operation_retain_input_port();
  result = ou3dor::E5RTExecute(&v20);
  *(a1 + 233) = result && (CVPixelBufferGetIOSurface(PixelBuffer), v20 = 0, v19 = e5rt_buffer_object_create_from_iosurface(), result = ou3dor::E5RTExecute(&v19)) && (v19 = e5rt_io_port_bind_buffer_object(), result = ou3dor::E5RTExecute(&v19)) && (v19 = e5rt_buffer_object_release(), result = ou3dor::E5RTExecute(&v19)) && (v19 = e5rt_io_port_release(), result = ou3dor::E5RTExecute(&v19));
  return result;
}

BOOL ou3dor::OU3DOREspressoV2Interface::CreateAndBindOutputPort(uint64_t a1, uint64_t *a2)
{
  v4 = 1278226534;
  *buf = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 64), a2, &std::piecewise_construct, buf, &v15);
  v8 = v5;
  v9 = *(v5 + 17);
  if (v9 == 3)
  {
    v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v5, v6);
    v4 = 1278226536;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "[3DOR] e5rt tensor format: float 16 type";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v9 == 6)
  {
    v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "[3DOR] e5rt tensor format: float 32 type";
LABEL_7:
      _os_log_impl(&dword_25D1DB000, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  PixelBuffer = ou3dor::OU3DOREspressoV2Interface::CreatePixelBuffer(v7, v5, v8 + 5, v4);
  *buf = a2;
  std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 144), a2, &std::piecewise_construct, buf, &v15)[5] = PixelBuffer;
  *buf = 0;
  LODWORD(v15) = e5rt_execution_stream_operation_retain_output_port();
  result = ou3dor::E5RTExecute(&v15);
  *(a1 + 234) = result && (CVPixelBufferGetIOSurface(PixelBuffer), v15 = 0, v14 = e5rt_buffer_object_create_from_iosurface(), result = ou3dor::E5RTExecute(&v14)) && (v14 = e5rt_io_port_bind_buffer_object(), result = ou3dor::E5RTExecute(&v14)) && (v14 = e5rt_buffer_object_release(), result = ou3dor::E5RTExecute(&v14)) && (v14 = e5rt_io_port_release(), result = ou3dor::E5RTExecute(&v14));
  return result;
}

void ou3dor::OU3DOREspressoV2Interface::Inference(ou3dor::OU3DOREspressoV2Interface *this, float a2, uint64_t a3)
{
  if (*(this + 232))
  {
    kdebug_trace();
    ou3dor::OU3DOREspressoV2Interface::Eval(this);

    kdebug_trace();
  }

  else
  {
    v4 = _OULoggingGetOSLogForCategoryObjectUnderstanding(this, a3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOREspressoV2Interface::Inference(v4);
    }
  }
}

void ou3dor::OU3DOREspressoV2Interface::Eval(ou3dor::OU3DOREspressoV2Interface *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = e5rt_execution_stream_execute_sync();
  if (v2)
  {
    last_error_message = e5rt_get_last_error_message();
    v5 = _OULoggingGetOSLogForCategoryObjectUnderstanding(last_error_message, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = last_error_message;
      _os_log_impl(&dword_25D1DB000, v5, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &v6, 0xCu);
    }
  }

  *(this + 235) = v2 == 0;
}

uint64_t ou3dor::OU3DOREspressoV2Interface::CreatePixelBuffer(float a1, uint64_t a2, char **a3, OSType a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v7 = 1;
  if (*a3 != v6)
  {
    v8 = *a3;
    do
    {
      v9 = *v8;
      v8 += 8;
      v7 *= v9;
    }

    while (v8 != v6);
  }

  v10 = (v6 - v5) >> 3;
  if (v10 < 2)
  {
    v13 = 1;
  }

  else
  {
    v11 = (v10 - 1);
    v12 = 0x7FFFFFFF;
    v13 = 1;
    v14 = 1;
    do
    {
      v15 = *v5;
      v5 += 8;
      v14 *= v15;
      v16 = v7 / v14;
      v17 = v14 + 7;
      if (v14 >= 0)
      {
        v17 = v14;
      }

      v18 = (v17 & 0xFFFFFFF8) + 8;
      if ((v14 & 7) == 0)
      {
        v18 = v14;
      }

      v19 = v16 + 7;
      if (v16 >= 0)
      {
        v19 = v7 / v14;
      }

      v20 = (v19 & 0xFFFFFFF8) + 8;
      if ((v16 & 7) != 0)
      {
        v16 = v20;
      }

      v21 = v16 * v18;
      if (v21 < v12)
      {
        v12 = v21;
        v13 = v14;
      }

      --v11;
    }

    while (v11);
  }

  v22 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a2, a3);
  v23 = v7 / v13;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *&buf[4] = v13;
    v30 = 1024;
    v31 = v23;
    _os_log_impl(&dword_25D1DB000, v22, OS_LOG_TYPE_INFO, "[3DOD] Create CVPixelBuffer width %d height %d", buf, 0xEu);
  }

  *buf = 0;
  v27 = *MEMORY[0x277CC4DE8];
  v28 = MEMORY[0x277CBEC10];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v13, v23, a4, v24, buf);
  v25 = *buf;

  return v25;
}

void *std::string::basic_string<std::string_view,0>(void *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  *(__dst + v2) = 0;
  return __dst;
}

void std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

void sub_25D2204FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ou3dor::StaticDescripter>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ou3dor::StaticDescripter>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25D2207BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ou3dor::StaticDescripter>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25D220ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D220BA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

BOOL test_utils::Comparator::closeEnoughWPercent(test_utils::Comparator *this, float a2, float a3, float a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = fmaxf(a4, 0.0);
  v8 = vabds_f32(a2, a3);
  if (v8 < v7)
  {
    return 1;
  }

  v9 = fabsf(a2);
  v10 = fabsf(a3);
  if (v10 < v9)
  {
    v9 = v10;
  }

  if (v8 < (v9 * v7))
  {
    return 1;
  }

  OSLogForCategoryObjectUnderstanding = _OULoggingGetOSLogForCategoryObjectUnderstanding(this, a5);
  result = os_log_type_enabled(OSLogForCategoryObjectUnderstanding, OS_LOG_TYPE_INFO);
  if (result)
  {
    v13 = 134218240;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_25D1DB000, OSLogForCategoryObjectUnderstanding, OS_LOG_TYPE_INFO, "val1: %.9f, and val2: %.9f are not close enough!\n", &v13, 0x16u);
    return 0;
  }

  return result;
}

BOOL test_utils::Comparator::closeEnough(test_utils::Comparator *this, float a2, float a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a2 <= 0.001)
  {
    v6 = 0.000001;
  }

  else
  {
    v6 = a2 / 1000.0;
  }

  v7 = vabds_f32(a2, a3);
  if (v7 >= v6)
  {
    OSLogForCategoryObjectUnderstanding = _OULoggingGetOSLogForCategoryObjectUnderstanding(this, a4);
    if (os_log_type_enabled(OSLogForCategoryObjectUnderstanding, OS_LOG_TYPE_INFO))
    {
      v10 = 134218240;
      v11 = v5;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_25D1DB000, OSLogForCategoryObjectUnderstanding, OS_LOG_TYPE_INFO, "val1: %.7f, and val2: %.7f are not close enough!\n", &v10, 0x16u);
    }
  }

  return v7 < v6;
}

BOOL test_utils::Comparator::closeEnough(test_utils::Comparator *a1, float *a2)
{
  v4 = test_utils::Comparator::closeEnough(a1, *a1, *a2, a2);
  if (!v4)
  {
    return 0;
  }

  v6 = test_utils::Comparator::closeEnough(v4, *(a1 + 1), a2[1], v5);
  if (!v6)
  {
    return 0;
  }

  v8 = *(a1 + 2);
  v9 = a2[2];

  return test_utils::Comparator::closeEnough(v6, v8, v9, v7);
}

BOOL test_utils::Comparator::closeEnough(test_utils::Comparator *this, uint64_t a2, float a3)
{
  v3 = a2;
  v4 = this;
  v10 = *MEMORY[0x277D85DE8];
  if (this != a2)
  {
    OSLogForCategoryObjectUnderstanding = _OULoggingGetOSLogForCategoryObjectUnderstanding(this, a2);
    if (os_log_type_enabled(OSLogForCategoryObjectUnderstanding, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109376;
      v7[1] = v4;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_25D1DB000, OSLogForCategoryObjectUnderstanding, OS_LOG_TYPE_INFO, "val1: %d, and val2: %d are not close enough!\n", v7, 0xEu);
    }
  }

  return v4 == v3;
}

BOOL test_utils::Comparator::closeEnoughSoftmax(test_utils::Comparator *this, float a2, float a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = vabds_f32(a2, a3);
  if (v4 >= 0.01)
  {
    OSLogForCategoryObjectUnderstanding = _OULoggingGetOSLogForCategoryObjectUnderstanding(this, a4);
    if (os_log_type_enabled(OSLogForCategoryObjectUnderstanding, OS_LOG_TYPE_INFO))
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&dword_25D1DB000, OSLogForCategoryObjectUnderstanding, OS_LOG_TYPE_INFO, "val1: %.3f, and val2: %.3f are not close enough!\n", &v9, 0x16u);
    }
  }

  return v4 < 0.01;
}

void ou3dor::CadModelRetriever::CadModelRetriever(ou3dor::CadModelRetriever *this)
{
  *this = &unk_286EBBF50;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 36) = 1065353216;
  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [objc_claimAutoreleasedReturnValue() pathForResource:@"CadAssets" ofType:0];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  operator new();
}

void sub_25D22159C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t *a14, uint64_t a15, void **a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::~__hash_table((v23 + 112));
  v25 = *a16;
  if (*a16)
  {
    *(v23 + 32) = v25;
    operator delete(v25);
  }

  std::unique_ptr<OUDataLoader>::reset[abi:ne200100](a14, 0);
  _Unwind_Resume(a1);
}

const void *OUDataLoader::getDataSpan<float>(uint64_t a1, uint64_t *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 24), a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v3 = *(v2 + 63);
  if (v3 < 0)
  {
    if (v2[6] != 7)
    {
      goto LABEL_13;
    }

    v4 = v2[5];
  }

  else
  {
    v4 = (v2 + 5);
    if (v3 != 7)
    {
      goto LABEL_13;
    }
  }

  v5 = *v4;
  v6 = *(v4 + 3);
  if (v5 != 1634692198 || v6 != 842232929)
  {
LABEL_13:
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2 + 5, "float64");
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOU] Mismatching querying data type.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  return v2[12];
}

void std::vector<std::span<float,18446744073709551615ul>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::span<float,18446744073709551615ul>>>(a1, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

const void *OUDataLoader::getDataSpan<unsigned short>(uint64_t a1, uint64_t *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 24), a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v3 = (v2 + 5);
  v4 = *(v2 + 63);
  if (v4 < 0)
  {
    if (v2[6] != 6)
    {
      goto LABEL_13;
    }

    v5 = *v3;
  }

  else
  {
    v5 = v2 + 5;
    if (v4 != 6)
    {
      goto LABEL_13;
    }
  }

  v6 = *v5;
  v7 = *(v5 + 2);
  if (v6 != 1953393013 || v7 != 13873)
  {
LABEL_13:
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2 + 5, "uint32");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "uint64");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int8");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int16");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int32");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int64");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "float16");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "float32");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "float64");
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOU] Mismatching querying data type.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  return v2[12];
}

const void *OUDataLoader::getDataSpan<unsigned char>(uint64_t a1, uint64_t *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 24), a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v3 = (v2 + 5);
  v4 = *(v2 + 63);
  if (v4 < 0)
  {
    if (v2[6] != 5)
    {
      goto LABEL_13;
    }

    v5 = *v3;
  }

  else
  {
    v5 = v2 + 5;
    if (v4 != 5)
    {
      goto LABEL_13;
    }
  }

  v6 = *v5;
  v7 = *(v5 + 4);
  if (v6 != 1953393013 || v7 != 56)
  {
LABEL_13:
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2 + 5, "uint16");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "uint32");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "uint64");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int8");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int16");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int32");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int64");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "float16");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "float32");
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "float64");
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOU] Mismatching querying data type.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  return v2[12];
}

const void *OUDataLoader::getDataSpan<signed char>(uint64_t a1, uint64_t *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 24), a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v3 = v2 + 5;
  v4 = *(v2 + 63);
  if (v4 < 0)
  {
    if (v2[6] != 4)
    {
      goto LABEL_9;
    }

    v5 = *v3;
  }

  else
  {
    v5 = v2 + 5;
    if (v4 != 4)
    {
LABEL_9:
      std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2 + 5, "int16");
      std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int32");
      std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "int64");
      std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "float16");
      std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "float32");
      std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "float64");
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOU] Mismatching querying data type.");
      __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
    }
  }

  if (*v5 != 947154537)
  {
    goto LABEL_9;
  }

  return v2[12];
}

void ou3dor::CadModelRetriever::RetrieveCadModels(ou3dor::CadModelRetriever *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        CadModel = ou3dor::CadModelRetriever::RetrieveCadModel(a1, v7);
        if (CadModel != -1)
        {
          v9 = *(a1 + 2);
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", CadModel];
          v11 = [v9 objectForKeyedSubscript:v10];
          [(OU3DObject *)v7 setCadModelName:v11];

          v14 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [(OU3DObject *)v7 cadModelName];
            *buf = 136315394;
            v21 = "CadModelRetriever";
            v22 = 2112;
            v23 = v15;
            _os_log_impl(&dword_25D1DB000, v14, OS_LOG_TYPE_INFO, "[3DOR][%s] retrieved model: %@", buf, 0x16u);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }
}

uint64_t ou3dor::CadModelRetriever::RetrieveCadModel(ou3dor::CadModelRetriever *this, OU3DObject *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(OU3DObject *)v3 type];
  std::string::basic_string[abi:ne200100]<0>(buf, [v4 UTF8String]);
  v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(kObjectTypeToRetrievelClassIdx, buf);
  if (v63 < 0)
  {
    operator delete(*buf);
  }

  if (!v5)
  {
    v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      buf[0] = 136315138;
      *&buf[1] = "CadModelRetriever";
      _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[3DOR][%s] unsupported object type for retrieval.", buf, 0xCu);
    }

    goto LABEL_34;
  }

  v8 = [(OU3DObject *)v3 embedding3d];
  if (![v8 count])
  {
    v41 = _OULoggingGetOSLogForCategoryObjectUnderstanding(0, v9);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      buf[0] = 136315138;
      *&buf[1] = "CadModelRetriever";
      _os_log_impl(&dword_25D1DB000, v41, OS_LOG_TYPE_INFO, "[3DOR][%s] no object embedding for the current object; skipping.", buf, 0xCu);
    }

LABEL_34:
    v42 = 0xFFFFFFFFLL;
    goto LABEL_45;
  }

  v10 = [v8 count];
  v50 = v3;
  if (v10 != 256)
  {
    v48 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v10, v11);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      ou3dor::CadModelRetriever::RetrieveCadModel(v48);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F894AD0](exception, &unk_25D2878C2);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = 0;
  v13 = 0.0;
  do
  {
    v14 = [v8 objectAtIndexedSubscript:v12, v50];
    [v14 floatValue];
    v16 = v15;

    v13 = v16 * v16 + v13;
    ++v12;
  }

  while (v12 != 256);
  v17 = 0;
  v18 = sqrtf(v13);
  do
  {
    v19 = [v8 objectAtIndexedSubscript:v17];
    [v19 floatValue];
    *&buf[v17] = v20 / v18;

    ++v17;
  }

  while (v17 != 256);
  v21 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::find<unsigned char>(this + 14, v5 + 40);
  v22 = v21;
  if (!v21)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  ou3dor::CadModelRetriever::SortByDistance(this, v21 + 3, buf, &__p);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  memset(v52, 0, sizeof(v52));
  v53 = 1065353216;
  do
  {
    v51 = *(*(this + 10) + *(v22[3] + *(__p + v23)));
    v56[0].i64[0] = &v51;
    v26 = std::__hash_table<std::__hash_value_type<unsigned char,int>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,int>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,int>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,int>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v52, &v51, &std::piecewise_construct, v56);
    v23 += 4;
    v27 = *(v26 + 5);
    *(v26 + 5) = v27 + 1;
    if (v27 >= v25)
    {
      v25 = v27 + 1;
      v24 = v51;
    }
  }

  while (v23 != 40);
  v3 = v50;
  v28 = [(OU3DObject *)v50 boxesDict];
  v29 = [v28 objectForKey:@"rawdetection"];

  if (v29)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    memset(v56, 0, sizeof(v56));
    box3dFromNSArray(v29, v56);
    v32 = vsubq_f32(v56[0], v56[1]);
    v33 = vmulq_f32(v32, v32);
    v34 = vsubq_f32(v56[0], v57);
    v35 = vmulq_f32(v34, v34);
    *v35.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v33.i8, *v35.i8), vzip2_s32(*v33.i8, *v35.i8))));
    v40 = *v35.i32 < *&v35.i32[1];
    v36 = *&v35.i32[1] / *v35.i32;
    v37 = *v35.i32 / *&v35.i32[1];
    if (!v40)
    {
      v37 = v36;
    }

    v38 = v37;
    if (v38 <= 0.7 || v24 > 1u)
    {
      v40 = (v24 & 0xFE) == 0xE && v38 < 0.7;
      if (v40)
      {
        v24 -= 14;
      }
    }

    else
    {
      v24 |= 0xEu;
    }
  }

  v43 = __p;
  if (__p == v55)
  {
LABEL_39:
    v45 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v30, v31);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = *(v5 + 40);
      v56[0].i32[0] = 136315650;
      *(v56[0].i64 + 4) = "CadModelRetriever";
      v56[0].i16[6] = 1024;
      *(&v56[0].i32[3] + 2) = v46;
      v56[1].i16[1] = 1024;
      v56[1].i32[1] = v24;
      _os_log_impl(&dword_25D1DB000, v45, OS_LOG_TYPE_INFO, "[3DOR][%s] Could not find any CAD model for (class, subclass) = (%d, %d).", v56, 0x18u);
    }

    v42 = 0xFFFFFFFFLL;
  }

  else
  {
    while (1)
    {
      v44 = *(v22[3] + *v43);
      if (*(*(this + 12) + v44))
      {
        if (*(*(this + 10) + v44) == v24)
        {
          break;
        }
      }

      if (++v43 == v55)
      {
        goto LABEL_39;
      }
    }

    v42 = *(*(this + 6) + 2 * v44);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v52);
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

LABEL_45:

  return v42;
}

void sub_25D2223A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  __cxa_free_exception(v43);

  _Unwind_Resume(a1);
}

void ou3dor::CadModelRetriever::SortByDistance(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (a2[1] - *a2) >> 1;
  LODWORD(v31) = 0;
  std::vector<float>::vector[abi:ne200100](__p, v8, &v31);
  v9 = *a2;
  v10 = a2[1] - *a2;
  v11 = v10 >> 1;
  if (v10)
  {
    v12 = 0;
    v13 = __p[0];
    v14 = *(a1 + 24);
    if (v11 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v11;
    }

    do
    {
      v16 = 0;
      v13[v12] = 0;
      v17 = *(v14 + 16 * *(v9 + 2 * v12));
      v18 = 0.0;
      do
      {
        v18 = (*(a3 + v16) - *(v17 + v16)) * (*(a3 + v16) - *(v17 + v16)) + v18;
        *&v13[v12] = v18;
        v16 += 4;
      }

      while (v16 != 1024);
      ++v12;
    }

    while (v12 != v15);
  }

  std::vector<int>::vector[abi:ne200100](a4, v11);
  v19 = *a4;
  v20 = a4[1];
  if (*a4 != v20)
  {
    v21 = 0;
    v22 = (v20 - v19 - 4) >> 2;
    v23 = vdupq_n_s64(v22);
    v24 = (v22 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v25 = (v19 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_25D277E60)));
      if (vuzp1_s16(v27, *v23.i8).u8[0])
      {
        *(v25 - 2) = v21;
      }

      if (vuzp1_s16(v27, *&v23).i8[2])
      {
        *(v25 - 1) = v21 + 1;
      }

      if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_25D277E50)))).i32[1])
      {
        *v25 = v21 + 2;
        v25[1] = v21 + 3;
      }

      v21 += 4;
      v25 += 4;
    }

    while (v24 != v21);
  }

  v28 = 126 - 2 * __clz((v20 - v19) >> 2);
  v31 = __p;
  if (v20 == v19)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  std::__introsort<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *,false>(v19, v20, &v31, v29, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25D22263C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ou3dor::CadModelRetriever::~CadModelRetriever(ou3dor::CadModelRetriever *this)
{
  ou3dor::CadModelRetriever::~CadModelRetriever(this);

  JUMPOUT(0x25F894DE0);
}

{
  *this = &unk_286EBBF50;
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::~__hash_table(this + 14);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  std::unique_ptr<OUDataLoader>::reset[abi:ne200100](this + 1, 0);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::span<float,18446744073709551615ul>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25D222738(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *,false>(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v84 = *(a2 - 1);
        v85 = *v10;
        if (*(**a3 + 4 * v84) < *(**a3 + 4 * v85))
        {
          *v10 = v84;
          *(a2 - 1) = v85;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v93 = v10 + 1;
      v94 = v10[1];
      v95 = v10 + 2;
      v96 = v10[2];
      v97 = *v10;
      v98 = **a3;
      v99 = *(v98 + 4 * v94);
      v100 = *(v98 + 4 * *v10);
      v101 = v96;
      v102 = *(v98 + 4 * v96);
      if (v99 >= v100)
      {
        if (v102 < v99)
        {
          v103 = v94;
          *v93 = v96;
          *v95 = v94;
          v104 = v10;
          v105 = v10 + 1;
          v101 = v94;
          if (v102 < v100)
          {
            goto LABEL_174;
          }

LABEL_176:
          v157 = *(a2 - 1);
          if (*(v98 + 4 * v157) < *(v98 + 4 * v101))
          {
            *v95 = v157;
            *(a2 - 1) = v94;
            v158 = *v95;
            v159 = *v93;
            v160 = *(v98 + 4 * v158);
            if (v160 < *(v98 + 4 * v159))
            {
              v10[1] = v158;
              v10[2] = v159;
              v161 = *v10;
              if (v160 < *(v98 + 4 * v161))
              {
                *v10 = v158;
                v10[1] = v161;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v103 = v97;
        if (v102 < v99)
        {
          v104 = v10;
          v105 = v10 + 2;
          v94 = *v10;
          goto LABEL_174;
        }

        *v10 = v94;
        v10[1] = v97;
        v104 = v10 + 1;
        v105 = v10 + 2;
        v94 = v97;
        if (v102 < v100)
        {
LABEL_174:
          *v104 = v96;
          *v105 = v97;
          v101 = v103;
          goto LABEL_176;
        }
      }

      v94 = v96;
      goto LABEL_176;
    }

    if (v11 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v106 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v107 = 0;
            v108 = **a3;
            v109 = v10;
            do
            {
              v111 = *v109;
              v110 = v109[1];
              v109 = v106;
              v112 = *(v108 + 4 * v110);
              if (v112 < *(v108 + 4 * v111))
              {
                v113 = v107;
                while (1)
                {
                  *(v10 + v113 + 4) = v111;
                  if (!v113)
                  {
                    break;
                  }

                  v111 = *(v10 + v113 - 4);
                  v113 -= 4;
                  if (v112 >= *(v108 + 4 * v111))
                  {
                    v114 = (v10 + v113 + 4);
                    goto LABEL_124;
                  }
                }

                v114 = v10;
LABEL_124:
                *v114 = v110;
              }

              v106 = v109 + 1;
              v107 += 4;
            }

            while (v109 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v151 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v152 = **a3;
          do
          {
            v154 = *v9;
            v153 = v9[1];
            v9 = v151;
            v155 = *(v152 + 4 * v153);
            if (v155 < *(v152 + 4 * v154))
            {
              do
              {
                *v151 = v154;
                v154 = *(v151 - 2);
                --v151;
              }

              while (v155 < *(v152 + 4 * v154));
              *v151 = v153;
            }

            v151 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v115 = (v11 - 2) >> 1;
        v116 = *a3;
        v117 = v115;
        do
        {
          v118 = v117;
          if (v115 >= v117)
          {
            v119 = (2 * v117) | 1;
            v120 = &v10[v119];
            v121 = 2 * v117 + 2;
            v122 = *v116;
            if (v121 < v11 && *(v122 + 4 * *v120) < *(v122 + 4 * v120[1]))
            {
              ++v120;
              v119 = 2 * v118 + 2;
            }

            v123 = &v10[v118];
            result = *v120;
            v124 = *v123;
            v125 = *(v122 + 4 * v124);
            if (*(v122 + 4 * result) >= v125)
            {
              do
              {
                v126 = v120;
                *v123 = result;
                if (v115 < v119)
                {
                  break;
                }

                v127 = 2 * v119;
                v119 = (2 * v119) | 1;
                v120 = &v10[v119];
                v128 = v127 + 2;
                if (v128 < v11 && *(v122 + 4 * *v120) < *(v122 + 4 * v120[1]))
                {
                  ++v120;
                  v119 = v128;
                }

                result = *v120;
                v123 = v126;
              }

              while (*(v122 + 4 * result) >= v125);
              *v126 = v124;
            }
          }

          v117 = v118 - 1;
        }

        while (v118);
        do
        {
          v129 = 0;
          v130 = *v10;
          v131 = *a3;
          v132 = v10;
          do
          {
            v133 = v132;
            v134 = &v132[v129];
            v132 = v134 + 1;
            v135 = 2 * v129;
            v129 = (2 * v129) | 1;
            v136 = v135 + 2;
            if (v136 < v11)
            {
              v138 = v134[2];
              v137 = v134 + 2;
              result = *(v137 - 1);
              if (*(*v131 + 4 * result) < *(*v131 + 4 * v138))
              {
                v132 = v137;
                v129 = v136;
              }
            }

            *v133 = *v132;
          }

          while (v129 <= ((v11 - 2) >> 1));
          if (v132 == --a2)
          {
            *v132 = v130;
          }

          else
          {
            *v132 = *a2;
            *a2 = v130;
            v139 = (v132 - v10 + 4) >> 2;
            v140 = v139 < 2;
            v141 = v139 - 2;
            if (!v140)
            {
              v142 = v141 >> 1;
              v143 = &v10[v142];
              v144 = *v143;
              v145 = *v132;
              v146 = *v131;
              v147 = *(v146 + 4 * v145);
              if (*(v146 + 4 * v144) < v147)
              {
                do
                {
                  v148 = v143;
                  *v132 = v144;
                  if (!v142)
                  {
                    break;
                  }

                  v142 = (v142 - 1) >> 1;
                  v143 = &v10[v142];
                  v144 = *v143;
                  v132 = v148;
                }

                while (*(v146 + 4 * v144) < v147);
                *v148 = v145;
              }
            }
          }

          v140 = v11-- <= 2;
        }

        while (!v140);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 4 * v17);
      v20 = *(v14 + 4 * v18);
      if (v19 >= v20)
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(v14 + 4 * v25) < *(v14 + 4 * v26))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v29 = *(a2 - 1);
        if (*(v14 + 4 * v29) < v20)
        {
          *v12 = v29;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v30 = v12 - 1;
      v31 = *(v12 - 1);
      v32 = v10[1];
      v33 = *(v14 + 4 * v31);
      v34 = *(v14 + 4 * v32);
      v35 = *(a2 - 2);
      v36 = *(v14 + 4 * v35);
      if (v33 >= v34)
      {
        if (v36 < v33)
        {
          *v30 = v35;
          *(a2 - 2) = v31;
          v37 = *v30;
          v38 = v10[1];
          if (*(v14 + 4 * v37) < *(v14 + 4 * v38))
          {
            v10[1] = v37;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v36 < v33)
        {
          v10[1] = v35;
          goto LABEL_39;
        }

        v10[1] = v31;
        *v30 = v32;
        v40 = *(a2 - 2);
        if (*(v14 + 4 * v40) < v34)
        {
          *v30 = v40;
LABEL_39:
          *(a2 - 2) = v32;
        }
      }

      v43 = v12[1];
      v41 = v12 + 1;
      v42 = v43;
      v44 = v10[2];
      v45 = *(v14 + 4 * v43);
      v46 = *(v14 + 4 * v44);
      v47 = *(a2 - 3);
      v48 = *(v14 + 4 * v47);
      if (v45 >= v46)
      {
        if (v48 < v45)
        {
          *v41 = v47;
          *(a2 - 3) = v42;
          v49 = *v41;
          v50 = v10[2];
          if (*(v14 + 4 * v49) < *(v14 + 4 * v50))
          {
            v10[2] = v49;
            *v41 = v50;
          }
        }
      }

      else
      {
        if (v48 < v45)
        {
          v10[2] = v47;
          goto LABEL_48;
        }

        v10[2] = v42;
        *v41 = v44;
        v51 = *(a2 - 3);
        if (*(v14 + 4 * v51) < v46)
        {
          *v41 = v51;
LABEL_48:
          *(a2 - 3) = v44;
        }
      }

      v52 = *v13;
      v53 = *v30;
      v54 = *(v14 + 4 * v52);
      v55 = *(v14 + 4 * v53);
      v56 = *v41;
      v57 = *(v14 + 4 * v56);
      if (v54 >= v55)
      {
        if (v57 >= v54)
        {
          goto LABEL_56;
        }

        *v13 = v56;
        *v41 = v52;
        v41 = v13;
        LODWORD(v52) = v53;
        if (v57 >= v55)
        {
          LODWORD(v52) = v56;
          goto LABEL_56;
        }
      }

      else if (v57 >= v54)
      {
        *v30 = v52;
        *v13 = v53;
        v30 = v13;
        LODWORD(v52) = v56;
        if (v57 >= v55)
        {
          LODWORD(v52) = v53;
LABEL_56:
          v58 = *v10;
          *v10 = v52;
          *v13 = v58;
          goto LABEL_57;
        }
      }

      *v30 = v56;
      *v41 = v53;
      goto LABEL_56;
    }

    v21 = *v10;
    v22 = *v13;
    v23 = *(v14 + 4 * v21);
    v24 = *(v14 + 4 * v22);
    if (v23 >= v24)
    {
      if (v16 < v23)
      {
        *v10 = v15;
        *(a2 - 1) = v21;
        v27 = *v10;
        v28 = *v13;
        if (*(v14 + 4 * v27) < *(v14 + 4 * v28))
        {
          *v13 = v27;
          *v10 = v28;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v23)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v22;
      goto LABEL_57;
    }

    *v13 = v21;
    *v10 = v22;
    v39 = *(a2 - 1);
    if (*(v14 + 4 * v39) < v24)
    {
      *v10 = v39;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v59 = *v10;
    if (a5)
    {
      v60 = *(v14 + 4 * v59);
LABEL_60:
      v61 = 0;
      do
      {
        v62 = v10[++v61];
      }

      while (*(v14 + 4 * v62) < v60);
      v63 = &v10[v61];
      v64 = a2;
      if (v61 == 1)
      {
        v64 = a2;
        do
        {
          if (v63 >= v64)
          {
            break;
          }

          v66 = *--v64;
        }

        while (*(v14 + 4 * v66) >= v60);
      }

      else
      {
        do
        {
          v65 = *--v64;
        }

        while (*(v14 + 4 * v65) >= v60);
      }

      if (v63 >= v64)
      {
        v73 = v63 - 1;
      }

      else
      {
        v67 = *v64;
        v68 = v62;
        v69 = &v10[v61];
        v70 = v64;
        do
        {
          *v69 = v67;
          *v70 = v68;
          do
          {
            v71 = v69[1];
            ++v69;
            v68 = v71;
          }

          while (*(v14 + 4 * v71) < v60);
          do
          {
            v72 = *--v70;
            v67 = v72;
          }

          while (*(v14 + 4 * v72) >= v60);
        }

        while (v69 < v70);
        v73 = v69 - 1;
      }

      if (v73 != v10)
      {
        *v10 = *v73;
      }

      *v73 = v59;
      if (v63 < v64)
      {
        goto LABEL_81;
      }

      v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *>(v10, v73, a3);
      v10 = v73 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *>(v73 + 1, a2, a3);
      if (result)
      {
        a2 = v73;
        if (!v74)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v74)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *,false>(v9, v73, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v73 + 1;
      }
    }

    else
    {
      v60 = *(v14 + 4 * v59);
      if (*(v14 + 4 * *(v10 - 1)) < v60)
      {
        goto LABEL_60;
      }

      if (v60 >= *(v14 + 4 * *(a2 - 1)))
      {
        v76 = (v10 + 1);
        do
        {
          v10 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v76 += 4;
        }

        while (v60 >= *(v14 + 4 * *v10));
      }

      else
      {
        do
        {
          v75 = v10[1];
          ++v10;
        }

        while (v60 >= *(v14 + 4 * v75));
      }

      v77 = a2;
      if (v10 < a2)
      {
        v77 = a2;
        do
        {
          v78 = *--v77;
        }

        while (v60 < *(v14 + 4 * v78));
      }

      if (v10 < v77)
      {
        v79 = *v10;
        v80 = *v77;
        do
        {
          *v10 = v80;
          *v77 = v79;
          do
          {
            v81 = v10[1];
            ++v10;
            v79 = v81;
          }

          while (v60 >= *(v14 + 4 * v81));
          do
          {
            v82 = *--v77;
            v80 = v82;
          }

          while (v60 < *(v14 + 4 * v82));
        }

        while (v10 < v77);
      }

      v83 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v83;
      }

      a5 = 0;
      *v83 = v59;
    }
  }

  v86 = *v10;
  v87 = v10[1];
  v88 = **a3;
  v89 = *(v88 + 4 * v87);
  v90 = *(v88 + 4 * v86);
  v91 = *(a2 - 1);
  v92 = *(v88 + 4 * v91);
  if (v89 >= v90)
  {
    if (v92 < v89)
    {
      v10[1] = v91;
      *(a2 - 1) = v87;
      v150 = *v10;
      v149 = v10[1];
      if (*(v88 + 4 * v149) < *(v88 + 4 * v150))
      {
        *v10 = v149;
        v10[1] = v150;
      }
    }
  }

  else
  {
    if (v92 >= v89)
    {
      *v10 = v87;
      v10[1] = v86;
      v156 = *(a2 - 1);
      if (*(v88 + 4 * v156) >= v90)
      {
        return result;
      }

      v10[1] = v156;
    }

    else
    {
      *v10 = v91;
    }

    *(a2 - 1) = v86;
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t **a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = **a6;
  v9 = *(v8 + 4 * *a2);
  v10 = *(v8 + 4 * *result);
  v11 = *a3;
  v12 = *(v8 + 4 * *a3);
  if (v9 >= v10)
  {
    if (v12 >= v9)
    {
      v13 = v11;
      goto LABEL_13;
    }

    *a2 = v11;
    *a3 = v6;
    v14 = *a2;
    v15 = *result;
    if (*(v8 + 4 * v14) >= *(v8 + 4 * v15))
    {
      v13 = v6;
      v11 = v6;
      goto LABEL_13;
    }

    *result = v14;
    *a2 = v15;
    v11 = *a3;
    goto LABEL_11;
  }

  v13 = v7;
  if (v12 >= v9)
  {
    *result = v6;
    *a2 = v7;
    v11 = *a3;
    if (*(v8 + 4 * *a3) < v10)
    {
      *a2 = v11;
      goto LABEL_9;
    }

LABEL_11:
    v13 = v11;
    goto LABEL_13;
  }

  *result = v11;
LABEL_9:
  *a3 = v7;
  v11 = v7;
LABEL_13:
  v16 = *a4;
  if (*(v8 + 4 * v16) < *(v8 + 4 * v13))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 4 * v17) < *(v8 + 4 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 4 * v19) < *(v8 + 4 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 4 * v21) < *(v8 + 4 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 4 * v23) < *(v8 + 4 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 4 * v25) < *(v8 + 4 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 4 * v27) < *(v8 + 4 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *>(int *a1, int *a2, uint64_t **a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = **a3;
      v9 = *(v8 + 4 * v7);
      v10 = *(v8 + 4 * v6);
      v11 = *(a2 - 1);
      v12 = *(v8 + 4 * v11);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v37 = *a1;
          v36 = a1[1];
          if (*(v8 + 4 * v36) < *(v8 + 4 * v37))
          {
            *a1 = v36;
            a1[1] = v37;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v47 = *(a2 - 1);
        if (*(v8 + 4 * v47) >= v10)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = **a3;
    v29 = *(v28 + 4 * v24);
    v30 = *(v28 + 4 * *a1);
    v31 = v26;
    v32 = *(v28 + 4 * v26);
    if (v29 >= v30)
    {
      if (v32 < v29)
      {
        v33 = v24;
        *v23 = v26;
        *v25 = v24;
        v34 = a1;
        v35 = a1 + 1;
        v31 = v24;
        if (v32 >= v30)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v33 = v27;
      if (v32 < v29)
      {
        v34 = a1;
        v35 = a1 + 2;
        v24 = *a1;
LABEL_44:
        *v34 = v26;
        *v35 = v27;
        v31 = v33;
LABEL_46:
        v48 = *(a2 - 1);
        if (*(v28 + 4 * v48) < *(v28 + 4 * v31))
        {
          *v25 = v48;
          *(a2 - 1) = v24;
          v49 = *v25;
          v50 = *v23;
          v51 = *(v28 + 4 * v49);
          if (v51 < *(v28 + 4 * v50))
          {
            a1[1] = v49;
            a1[2] = v50;
            v52 = *a1;
            if (v51 < *(v28 + 4 * v52))
            {
              *a1 = v49;
              a1[1] = v52;
            }
          }
        }

        return 1;
      }

      *a1 = v24;
      a1[1] = v27;
      v34 = a1 + 1;
      v35 = a1 + 2;
      v24 = v27;
      if (v32 < v30)
      {
        goto LABEL_44;
      }
    }

    v24 = v26;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(**a3 + 4 * v4) < *(**a3 + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = **a3;
  v17 = *(v16 + 4 * v15);
  v18 = *a1;
  v19 = *(v16 + 4 * v18);
  v20 = *(v16 + 4 * v13);
  if (v17 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v17)
    {
      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v19)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v13;
    *v22 = v18;
    goto LABEL_26;
  }

  if (v20 < v17)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v19)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v38 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v39 = 0;
  for (i = 12; ; i += 4)
  {
    v41 = *v38;
    v42 = *v14;
    v43 = *(v16 + 4 * v41);
    if (v43 < *(v16 + 4 * v42))
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v42;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v42 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v43 >= *(v16 + 4 * v42))
        {
          v46 = (a1 + v45);
          goto LABEL_34;
        }
      }

      v46 = a1;
LABEL_34:
      *v46 = v41;
      if (++v39 == 8)
      {
        break;
      }
    }

    v14 = v38++;
    if (v38 == a2)
    {
      return 1;
    }
  }

  return v38 + 1 == a2;
}

uint64_t std::unordered_map<std::string,unsigned char>::unordered_map(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned char> const&>(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned char> const&>(void *a1, uint64_t *a2, uint64_t a3)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__construct_node_hash<std::pair<std::string const,unsigned char> const&>();
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

void sub_25D2238F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D2239C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<OUDataLoader>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::~__hash_table(v2 + 24);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x25F894DE0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,OUDataLoader::DataArray>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,OUDataLoader::DataArray>::~pair(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}