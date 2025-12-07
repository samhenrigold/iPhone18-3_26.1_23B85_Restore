const void **StringPool::cacheString@<X0>(float *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2, a2);
  if (result)
  {
    v5 = *(result + 39);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v6 = result[2];
      v5 = result[3];
    }

    else
    {
      v6 = result + 2;
    }

    *a3 = v6;
    *(a3 + 8) = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v7;
  return result;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(float *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = *(a1 + 2);
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

void sub_240F85BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_240F85D4C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CBFCE0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void StackshotAotImageDescription::StackshotAotImageDescription(StackshotAotImageDescription *this, user64_dyld_aot_info *a2)
{
  AOTImageDescription::AOTImageDescription(this, a2->x86LoadAddress, a2->aotLoadAddress, a2->aotImageSize, a2->aotImageKey);
}

{
  AOTImageDescription::AOTImageDescription(this, a2->x86LoadAddress, a2->aotLoadAddress, a2->aotImageSize, a2->aotImageKey);
}

void AOTImageDescription::AOTImageDescription(AOTImageDescription *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void AOTImageDescription::AOTImageDescription(AOTImageDescription *this, uint64_t a2, uint64_t a3, uint64_t a4, const unsigned __int8 *a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  v5 = *a5;
  *(this + 40) = *(a5 + 1);
  *(this + 24) = v5;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  v5 = *a5;
  *(this + 40) = *(a5 + 1);
  *(this + 24) = v5;
}

uint64_t ats_destroy_symbolication_config(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x245CD5830);
  }

  return result;
}

uint64_t AOTImage::AOTImage(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 64) = *(a2 + 6);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 16) = v3;
  *a1 = AOTImageDescription::aotAddress((a1 + 16));
  *(a1 + 8) = AOTImageDescription::aotSize((a1 + 16));
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 64) = *(a2 + 6);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 16) = v3;
  *a1 = AOTImageDescription::aotAddress((a1 + 16));
  *(a1 + 8) = AOTImageDescription::aotSize((a1 + 16));
  return a1;
}

__n128 AOTImage::aotImageInfo@<Q0>(AOTImage *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 2);
  *a2 = *(this + 1);
  *(a2 + 16) = v2;
  result = *(this + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = *(this + 8);
  return result;
}

uint64_t Process::Process(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = *a3;
  *(a1 + 24) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = 126 - 2 * __clz((v5 - v4) >> 5);
  *(a1 + 32) = 0;
  *(a1 + 104) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,false>(v4, v5, v9, v7, 1);
  return a1;
}

void sub_240F86888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(v3 + 136);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  Process::Process(v3, v4);
  std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Process::setSharedCache(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 136);
  *(result + 128) = v3;
  *(result + 136) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

__n128 Process::setAOTSharedCache(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 88) = *(a2 + 32);
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  *(a1 + 104) = 1;
  return result;
}

double Process::setAOTImages(uint64_t a1, __n128 *a2)
{
  v4 = a2->n128_u64[0];
  v5 = a2->n128_u64[1];
  v6 = 126 - 2 * __clz(0x8E38E38E38E38E39 * (&v5[-v4] >> 3));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,false>(v4, v5, &v9, v7, 1);
  *&result = std::vector<AOTImage>::__move_assign(a1 + 32, a2).n128_u64[0];
  return result;
}

void Process::setAOTSymbolicator(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 120);
  *(result + 112) = v3;
  *(result + 120) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

__n128 Process::aotSharedCache@<Q0>(Process *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 72);
  *a2 = *(this + 56);
  *(a2 + 16) = v2;
  result = *(this + 88);
  *(a2 + 32) = result;
  *(a2 + 48) = *(this + 13);
  return result;
}

ProcessLibrary *Process::addAddressAndTryTranslation(ProcessLibrary **this, unint64_t a2)
{
  result = Process::findRangeEntryForAddress<std::vector<ProcessLibrary>>(this, this + 1, a2);
  if (this[2] != result)
  {

    return ProcessLibrary::addAddress(result, a2);
  }

  return result;
}

ProcessLibrary *Process::addAddresses(ProcessLibrary *this, unint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = this;
    do
    {
      v5 = *v2++;
      this = Process::addAddressAndTryTranslation(v4, v5);
    }

    while (v2 != v3);
  }

  return this;
}

ProcessLibrary *Process::addAddressesAndTryTranslation(ProcessLibrary *this, unint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = this;
    do
    {
      v5 = *v2++;
      this = Process::addAddressAndTryTranslation(v4, v5);
    }

    while (v2 != v3);
  }

  return this;
}

void Process::addAOTImages(uint64_t result, __int128 **a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v5 = 0;
    do
    {
      v14 = *(v3 + 16);
      v15 = *(v3 + 32);
      v16 = *(v3 + 48);
      v17 = *(v3 + 64);
      v6 = *v3;
      v3 += 72;
      v13 = v6;
      v11[2] = v15;
      v11[3] = v16;
      v12 = v17;
      v11[0] = v6;
      v11[1] = v14;
      v5 |= Process::addRangeLibrary<std::vector<AOTImage>,AOTImage>(result, (result + 32), v11);
    }

    while (v3 != v2);
    if (v5)
    {
      v7 = *(result + 32);
      v8 = *(result + 40);
      v9 = 126 - 2 * __clz(0x8E38E38E38E38E39 * (&v8[-v7] >> 3));
      if (v8 == v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,false>(v7, v8, &v13, v10, 1);
    }
  }
}

uint64_t Process::addRangeLibrary<std::vector<AOTImage>,AOTImage>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = Process::findRangeEntryForAddress<std::vector<AOTImage>>(a1, a2, *a3);
  v6 = a2[1];
  if (v6 != v5)
  {
    v7 = v5;
    if (*v5 == *a3 && *(v5 + 1) == a3[1])
    {
      return 0;
    }

    v9 = v6 - (v5 + 72);
    if (v6 != v5 + 72)
    {
      memmove(v5, v5 + 72, v6 - (v5 + 72));
    }

    a2[1] = v7 + v9;
  }

  std::vector<AOTImage>::push_back[abi:ne200100](a2, a3);
  return 1;
}

void Process::addLibraries(uint64_t result, __int128 **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v5 = 0;
    do
    {
      v16 = *v3;
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = v16;
        v14 = v6;
        v15 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v13 = *v3;
        v14 = v6;
        v15 = 0;
      }

      v8 = Process::addRangeLibrary<std::vector<ProcessLibrary>,ProcessLibrary>(result, (result + 8), &v13);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 |= v8;
      v3 += 32;
    }

    while (v3 != v2);
    if (v5)
    {
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = 126 - 2 * __clz((v10 - v9) >> 5);
      if (v10 == v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,false>(v9, v10, &v16, v12, 1);
    }
  }
}

void sub_240F86D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Process::addRangeLibrary<std::vector<ProcessLibrary>,ProcessLibrary>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = Process::findRangeEntryForAddress<std::vector<ProcessLibrary>>(a1, a2, *a3);
  v6 = a2[1];
  if (v6 != v5)
  {
    if (*v5 == *a3 && v5[1] == a3[1])
    {
      return 0;
    }

    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ProcessLibrary *,ProcessLibrary *,ProcessLibrary *>(&v12, (v5 + 4), v6, v5);
    v9 = v8;
    v10 = a2[1];
    if (v10 != v8)
    {
      do
      {
        v11 = *(v10 - 8);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v10 -= 32;
      }

      while (v10 != v9);
    }

    a2[1] = v9;
  }

  std::vector<ProcessLibrary>::push_back[abi:ne200100](a2, a3);
  return 1;
}

void *Process::findRangeEntryForAddress<std::vector<ProcessLibrary>>(uint64_t a1, void *a2, unint64_t a3)
{
  result = a2[1];
  v4 = result;
  if (result != *a2)
  {
    v5 = (result - *a2) >> 5;
    v4 = *a2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[4 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 4;
      v5 += ~(v5 >> 1);
      if (v9 > a3)
      {
        v5 = v6;
      }

      else
      {
        v4 = v8;
      }
    }

    while (v5);
  }

  if (v4 != *a2)
  {
    v10 = *(v4 - 4);
    if (v10 <= a3 && *(v4 - 3) + v10 > a3)
    {
      return v4 - 4;
    }
  }

  return result;
}

uint64_t Process::createTransientProcessSymbolicatorFromDescriptions(Process *this)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *(this + 16);
  if (!v2)
  {
    return 0;
  }

  *uu = SharedCache::uuid(v2);
  v47 = v3;
  if (uuid_is_null(uu))
  {
    return 0;
  }

  __p = 0;
  v44 = 0;
  v45 = 0;
  std::vector<_CSBinaryImageInformation>::reserve(&__p, 0x64uLL);
  memset(v42, 0, sizeof(v42));
  v6 = *(this + 1);
  for (i = *(this + 2); v6 != i; v6 += 2)
  {
    v39 = *v6;
    v8 = *(v6 + 3);
    v40 = *(v6 + 2);
    v41 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((ProcessLibrary::isInSharedCacheCheckAfterPostprocessingDone(&v39) & 1) == 0)
    {
      ProcessLibrary::path(uu, &v39);
      if (v48 == 1)
      {
        *v53 = ProcessLibrary::uuid(&v39);
        v54 = v9;
        if (!uuid_is_null(v53))
        {
          ProcessLibrary::slide(&v39);
          if (v10)
          {
            v11 = ProcessLibrary::uuid(&v39);
            v13 = v12;
            ProcessLibrary::path(uu, &v39);
            if ((v48 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v14 = *uu;
            v15 = ProcessLibrary::architecture(&v39);
            if (ProcessLibrary::isPrimaryExecutableCheckAfterPostprocessingDone(&v39))
            {
              v16 = 16;
            }

            else
            {
              v16 = 0;
            }

            v17 = ProcessLibrary::slide(&v39);
            if ((v18 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v19 = v17;
            v35 = v13;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v20 = ProcessLibrary::segmentCountCheckAfterPostprocessingDone(&v39);
            if (v21)
            {
              std::vector<_CSBinaryRelocationInformation>::reserve(&v36, v20);
            }

            if (v40)
            {
              *v53 = 0;
              v54 = v53;
              v55 = 0x2000000000;
              v56 = 0;
              SharedLibrary::csSymbolOwner(v40);
              *uu = MEMORY[0x277D85DD0];
              v47 = 0x40000000;
              v48 = ___ZNK14ProcessLibrary14forEachSegmentIZN7Process50createTransientProcessSymbolicatorFromDescriptionsEvE3__0EEvT__block_invoke;
              v49 = &unk_278CBFCF8;
              v50 = v53;
              v51 = &v36;
              v52 = v19;
              CSSymbolOwnerForeachSegment();
              _Block_object_dispose(v53, 8);
            }

            v23 = v36;
            v22 = v37;
            std::vector<std::vector<_CSBinaryRelocationInformation>>::push_back[abi:ne200100](v42, &v36);
            v24 = -858993459 * ((v22 - v23) >> 3);
            v25 = v44;
            if (v44 >= v45)
            {
              v27 = (v44 - __p) >> 6;
              v28 = v27 + 1;
              if ((v27 + 1) >> 58)
              {
                std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
              }

              v29 = v45 - __p;
              if ((v45 - __p) >> 5 > v28)
              {
                v28 = v29 >> 5;
              }

              if (v29 >= 0x7FFFFFFFFFFFFFC0)
              {
                v30 = 0x3FFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v28;
              }

              if (v30)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryImageInformation>>(&__p, v30);
              }

              v31 = v27 << 6;
              *(v31 + 16) = v11;
              *(v31 + 24) = v35;
              *(v31 + 32) = v15;
              *(v31 + 40) = v14;
              *(v31 + 48) = v23;
              *(v31 + 56) = v24;
              *(v31 + 60) = v16;
              v26 = (v27 << 6) + 64;
              v32 = ((v27 << 6) - (v44 - __p));
              memcpy(v32, __p, v44 - __p);
              v33 = __p;
              __p = v32;
              v44 = v26;
              v45 = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *(v44 + 2) = v11;
              *(v25 + 3) = v35;
              *(v25 + 4) = v15;
              *(v25 + 5) = v14;
              *(v25 + 6) = v23;
              v26 = (v25 + 64);
              *(v25 + 14) = v24;
              *(v25 + 15) = v16;
            }

            v44 = v26;
            if (v36)
            {
              v37 = v36;
              operator delete(v36);
            }
          }
        }
      }
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }
  }

  *uu = SharedCache::uuid(*(this + 16));
  v47 = v34;
  SharedCache::loadAddress(*(this + 16));
  v4 = CSSymbolicatorCreateWithBinaryImageListPidAndSharedCacheUUID();
  *uu = v42;
  std::vector<std::vector<_CSBinaryRelocationInformation>>::__destroy_vector::operator()[abi:ne200100](uu);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  return v4;
}

void sub_240F872C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  *(v24 - 144) = &a20;
  std::vector<std::vector<_CSBinaryRelocationInformation>>::__destroy_vector::operator()[abi:ne200100]((v24 - 144));
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void std::vector<_CSBinaryImageInformation>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryImageInformation>>(a1, a2);
    }

    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<_CSBinaryRelocationInformation>::reserve(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>(a1, a2);
    }

    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }
}

const void **std::vector<std::vector<_CSBinaryRelocationInformation>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<_CSBinaryRelocationInformation>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<_CSBinaryRelocationInformation>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,false>(__int128 *result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v55 = a2;
  v56 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 5;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v47 = *(v7 - 4);
        v55 = v7 - 4;
        if (v47 < *v8)
        {
          v48 = &v56;
          v49 = &v55;
          goto LABEL_96;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v55 = v7 - 4;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(v8, v8 + 2, v8 + 4, v7 - 4);
      return;
    }

    if (v10 == 5)
    {
      v55 = v7 - 4;
      v60 = v8 + 2;
      *&v61 = v8;
      v58 = v8 + 6;
      v59 = v8 + 4;
      v57 = v7 - 4;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(v8, v8 + 2, v8 + 4, v8 + 12);
      if (*(v7 - 4) < *(v8 + 12))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v58, &v57);
        if (*v58 < *(v8 + 8))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v59, &v58);
          if (*v59 < *(v8 + 4))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
            v50 = v60;
            v51 = *v8;
            goto LABEL_94;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v8, v7);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v8, v7);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,ProcessLibrary *>(v8, v7, v7, a3);
      }

      return;
    }

    v11 = &v8[2 * (v10 >> 1)];
    v12 = v11;
    v13 = v7 - 4;
    if (v10 < 0x81)
    {
      v60 = v8;
      *&v61 = &v8[2 * (v10 >> 1)];
      v59 = (v7 - 4);
      v18 = *v8;
      v19 = *v13;
      if (*v8 >= *v11)
      {
        if (v19 < v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
          if (*v60 < *v61)
          {
            v20 = &v61;
            v21 = &v60;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v20 = &v61;
        if (v19 < v18)
        {
          goto LABEL_22;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 < *v60)
        {
          v20 = &v60;
LABEL_22:
          v21 = &v59;
LABEL_35:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v20, v21);
        }
      }

      if (a5)
      {
        goto LABEL_37;
      }

      goto LABEL_65;
    }

    v60 = &v8[2 * (v10 >> 1)];
    *&v61 = v8;
    v59 = (v7 - 4);
    v14 = *v11;
    v15 = *v13;
    if (*v11 < *v8)
    {
      v16 = &v61;
      if (v15 >= v14)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_27;
        }

        v16 = &v60;
      }

      v17 = &v59;
      goto LABEL_26;
    }

    if (v15 < v14)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v16 = &v61;
        v17 = &v60;
LABEL_26:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v16, v17);
      }
    }

LABEL_27:
    v23 = v11 - 2;
    v22 = *(v11 - 4);
    v24 = *(v8 + 4);
    v60 = v11 - 2;
    *&v61 = v8 + 2;
    v25 = *(v7 - 8);
    v59 = (v7 - 8);
    if (v22 < v24)
    {
      v26 = &v61;
      if (v25 >= v22)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_42;
        }

        v26 = &v60;
      }

      v27 = &v59;
      goto LABEL_41;
    }

    if (v25 < v22)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v26 = &v61;
        v27 = &v60;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v26, v27);
      }
    }

LABEL_42:
    v30 = *(v11 + 4);
    v29 = v11 + 2;
    v28 = v30;
    v31 = *(v8 + 8);
    v60 = v29;
    *&v61 = v8 + 4;
    v32 = *(v7 - 12);
    v59 = (v7 - 12);
    if (v30 < v31)
    {
      v33 = &v61;
      if (v32 >= v28)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_51;
        }

        v33 = &v60;
      }

      v34 = &v59;
      goto LABEL_50;
    }

    if (v32 < v28)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v33 = &v61;
        v34 = &v60;
LABEL_50:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v33, v34);
      }
    }

LABEL_51:
    v60 = v12;
    *&v61 = v23;
    v59 = v29;
    v35 = *v12;
    v36 = *v29;
    if (*v12 < *v23)
    {
      v37 = &v61;
      if (v36 >= v35)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_60;
        }

        v37 = &v60;
      }

      v38 = &v59;
      goto LABEL_59;
    }

    if (v36 < v35)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v37 = &v61;
        v38 = &v60;
LABEL_59:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v37, v38);
      }
    }

LABEL_60:
    v39 = v8[1];
    v61 = *v8;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    v40 = *v12;
    v41 = v12[1];
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    v42 = *(v8 + 3);
    *v8 = v40;
    v8[1] = v41;
    if (v42)
    {
      v54 = v39;
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      v39 = v54;
    }

    v43 = *(v12 + 3);
    *v12 = v61;
    v12[1] = v39;
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    v8 = v56;
    if (a5)
    {
LABEL_37:
      v7 = v55;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v55;
    if (*(v8 - 4) >= *v8)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ProcessLibrary *,std::__less<void,void> &>(v8, v55);
      goto LABEL_75;
    }

LABEL_66:
    v44 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ProcessLibrary *,std::__less<void,void> &>(v8, v7);
    if ((v45 & 1) == 0)
    {
      goto LABEL_73;
    }

    v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v8, v44);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v44 + 2, v7))
    {
      if (v46)
      {
        return;
      }

      v55 = v44;
      v7 = v44;
    }

    else
    {
      if (!v46)
      {
LABEL_73:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,false>(v8, v44, a3, -i, a5 & 1);
        v8 = v44 + 2;
LABEL_75:
        a5 = 0;
        v56 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v56 = (v44 + 2);
      v8 = v44 + 2;
    }
  }

  v52 = *(v8 + 4);
  v60 = v8 + 2;
  *&v61 = v8;
  v53 = *(v7 - 4);
  v59 = (v7 - 4);
  if (v52 < *v8)
  {
    v48 = &v61;
    if (v53 >= v52)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v61, &v60);
      if (*v59 >= *v60)
      {
        return;
      }

      v48 = &v60;
    }

    v49 = &v59;
    goto LABEL_96;
  }

  if (v53 < v52)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v60, &v59);
    v50 = v60;
    v51 = *v61;
LABEL_94:
    if (*v50 < v51)
    {
      v48 = &v61;
      v49 = &v60;
LABEL_96:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v48, v49);
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(__int128 **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1)[1];
  v9 = **a1;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *v2 = *v3;
  v5 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6 = *(v2 + 3);
  v2[1] = v5;
  if (v6)
  {
    v8 = v4;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v4 = v8;
  }

  v7 = *(v3 + 24);
  *v3 = v9;
  *(v3 + 16) = v4;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(__int128 *result, __int128 *a2, __int128 *a3, void *a4)
{
  v14 = a2;
  v15 = result;
  v12 = a4;
  v13 = a3;
  v18 = result;
  v16 = a3;
  v17 = a2;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *result)
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v17, &v16);
      if (*v17 < *v18)
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v10, v11);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v18, &v17);
    if (*v16 < *v17)
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v13, &v12);
    if (*v13 < *a2)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v14, &v13);
      if (*v14 < *result)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v15, &v14);
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v4 = result + 4;
    if (result + 4 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = v7[4];
        if (v8 < *v7)
        {
          v9 = v7[5];
          v10 = v7[6];
          v11 = v7[7];
          v12 = v5;
          v7[6] = 0;
          v7[7] = 0;
          while (1)
          {
            v13 = v12;
            v14 = result + v12;
            v15 = *v14;
            v16 = *(v14 + 1);
            *(v14 + 2) = 0;
            *(v14 + 3) = 0;
            v17 = *(v14 + 7);
            *(v14 + 2) = v15;
            *(v14 + 3) = v16;
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            if (!v13)
            {
              break;
            }

            v12 = v13 - 32;
            if (v8 >= *(result + v13 - 32))
            {
              v18 = (result + v13);
              goto LABEL_12;
            }
          }

          v18 = result;
LABEL_12:
          *v18 = v8;
          v18[1] = v9;
          *(result + v13 + 16) = v10;
          v19 = v18[3];
          v18[3] = v11;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }
        }

        v4 = v6 + 4;
        v5 += 32;
      }

      while (v6 + 4 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 32;
    if (result + 32 != a2)
    {
      v5 = (result + 56);
      do
      {
        v6 = v3;
        v3 = v4;
        v7 = *(v6 + 32);
        if (v7 < *v6)
        {
          v8 = *(v6 + 40);
          v14 = *(v6 + 48);
          v9 = v5;
          *(v6 + 48) = 0;
          *(v6 + 56) = 0;
          do
          {
            *(v9 - 3) = *(v9 - 7);
            v10 = *(v9 - 5);
            *(v9 - 5) = 0;
            *(v9 - 4) = 0;
            v11 = *v9;
            *(v9 - 1) = v10;
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            v12 = *(v9 - 11);
            v9 -= 4;
          }

          while (v7 < v12);
          *(v9 - 3) = v7;
          *(v9 - 2) = v8;
          v13 = *v9;
          *(v9 - 1) = v14;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }
        }

        v4 = v3 + 32;
        v5 += 4;
      }

      while (v3 + 32 != a2);
    }
  }
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ProcessLibrary *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v18 = a2;
  v16 = *a1;
  v3 = *a1;
  v17 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = v3;
  if (v3 >= *(a2 - 32))
  {
    v7 = a1 + 32;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 32;
    }

    while (v3 >= *v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = *(v5 + 4);
      v5 += 2;
    }

    while (v3 >= v6);
  }

  v19 = v5;
  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 32);
      a2 -= 32;
    }

    while (v3 < v8);
    v18 = a2;
  }

  if (v5 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v19, &v18);
      v5 = v19;
      do
      {
        v9 = *(v5 + 4);
        v5 += 2;
      }

      while (v4 >= v9);
      v19 = v5;
      v10 = v18;
      do
      {
        v11 = *(v10 - 32);
        v10 -= 32;
      }

      while (v4 < v11);
      v18 = v10;
    }

    while (v5 < v10);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 2);
    v12 = *(v5 - 1);
    *(v5 - 2) = 0;
    *(v5 - 1) = 0;
    v13 = *(a1 + 24);
    *(a1 + 16) = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = *(v5 - 1);
  *(v5 - 2) = v16;
  *(v5 - 1) = v17;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v19;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ProcessLibrary *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v19 = *a1;
  v5 = *a1;
  v20 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = v5;
  do
  {
    v7 = *(a1 + v4 + 32);
    v4 += 32;
  }

  while (v7 < v5);
  v8 = a1 + v4;
  v22 = (a1 + v4);
  if (v4 == 32)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v10 = *(a2 - 32);
      a2 -= 32;
    }

    while (v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 32);
      a2 -= 32;
    }

    while (v9 >= v5);
  }

  v21 = a2;
  v11 = (a1 + v4);
  if (v8 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v22, &v21);
      v11 = v22;
      do
      {
        v12 = *(v11 + 4);
        v11 += 2;
      }

      while (v12 < v6);
      v22 = v11;
      v13 = v21;
      do
      {
        v14 = *(v13 - 32);
        v13 -= 32;
      }

      while (v14 >= v6);
      v21 = v13;
    }

    while (v11 < v13);
  }

  if (v11 - 2 != a1)
  {
    *a1 = *(v11 - 2);
    v15 = *(v11 - 1);
    *(v11 - 2) = 0;
    *(v11 - 1) = 0;
    v16 = *(a1 + 24);
    *(a1 + 16) = v15;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  v17 = *(v11 - 1);
  *(v11 - 2) = v19;
  *(v11 - 1) = v20;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return v11 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(__int128 *a1, __int128 *a2)
{
  v37 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *(a1 + 4);
        v41 = a1 + 2;
        v42 = a1;
        v13 = *(a2 - 4);
        v40 = a2 - 2;
        if (v12 < *a1)
        {
          v6 = &v42;
          if (v13 >= v12)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v42, &v41);
            if (*v40 >= *v41)
            {
              return 1;
            }

            v6 = &v41;
          }

          v7 = &v40;
          goto LABEL_28;
        }

        if (v13 >= v12)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v41, &v40);
        v10 = v41;
        v11 = *v42;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(a1, a1 + 2, a1 + 4, a2 - 4);
        return 1;
      case 5:
        v8 = a1 + 2;
        v41 = a1 + 2;
        v42 = a1;
        v9 = a1 + 4;
        v39 = a1 + 6;
        v40 = a1 + 4;
        v38 = a2 - 2;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,0>(a1, a1 + 2, a1 + 4, a1 + 12);
        if (*(a2 - 4) >= *(a1 + 12))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v39, &v38);
        if (*v39 >= *v9)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v40, &v39);
        if (*v40 >= *v8)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v41, &v40);
        v10 = v41;
        v11 = *a1;
        break;
      default:
        goto LABEL_18;
    }

    if (*v10 < v11)
    {
      v6 = &v42;
      v7 = &v41;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 4);
    v36 = a2 - 2;
    if (v5 < *a1)
    {
      v6 = &v37;
      v7 = &v36;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v6, v7);
    }

    return 1;
  }

LABEL_18:
  v15 = a1 + 4;
  v14 = *(a1 + 8);
  v16 = *(a1 + 4);
  v41 = a1 + 2;
  v42 = a1;
  v40 = a1 + 4;
  if (v16 < *a1)
  {
    v17 = &v42;
    if (v14 >= v16)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v42, &v41);
      if (*v40 >= *v41)
      {
        goto LABEL_33;
      }

      v17 = &v41;
    }

    v18 = &v40;
    goto LABEL_32;
  }

  if (v14 < v16)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v41, &v40);
    if (*v41 < *v42)
    {
      v17 = &v42;
      v18 = &v41;
LABEL_32:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(v17, v18);
    }
  }

LABEL_33:
  v19 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = *v15;
    v23 = *v19;
    if (*v19 < v22)
    {
      v24 = *(v19 + 1);
      v25 = *(v19 + 2);
      v26 = *(v19 + 3);
      v27 = v20;
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      while (1)
      {
        v28 = v27;
        v29 = a1 + v27;
        v30 = *(v29 + 4);
        v31 = *(v29 + 5);
        *(v29 + 10) = 0;
        *(v29 + 11) = 0;
        v32 = *(v29 + 15);
        *(v29 + 6) = v30;
        *(v29 + 7) = v31;
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (v28 == -64)
        {
          break;
        }

        v27 = v28 - 32;
        if (v23 >= *(a1 + v28 + 32))
        {
          v33 = (a1 + v27 + 96);
          goto LABEL_43;
        }
      }

      v33 = a1;
LABEL_43:
      *v33 = v23;
      *(v33 + 1) = v24;
      *(a1 + v28 + 80) = v25;
      v34 = *(v33 + 3);
      *(v33 + 3) = v26;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (++v21 == 8)
      {
        return v19 + 2 == a2;
      }
    }

    v15 = v19;
    v20 += 32;
    v19 += 2;
    if (v19 == a2)
    {
      return 1;
    }
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *,ProcessLibrary *>(__int128 *a1, char *a2, __int128 *a3, uint64_t a4)
{
  v17 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v7, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v16 = v6;
    v12 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*v12 < *v17)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ProcessLibrary *&,ProcessLibrary *&>(&v16, &v17);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(v17, a4, v8, v17);
          v12 = v16;
        }

        v12 += 2;
        v16 = v12;
      }

      while (v12 != a3);
      v7 = v17;
      v8 = (v6 - v17) >> 5;
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,ProcessLibrary *>(v7, v6, a4, v8);
        v6 -= 2;
        v13 = v8 >= 2;
        v14 = v8-- == 2;
      }

      while (!v14 && v13);
      return v16;
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = a4 - a1;
    v8 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v10 = v7 >> 4;
      v11 = (v7 >> 4) + 1;
      v12 = a1 + 32 * v11;
      v13 = v10 + 2;
      if (v10 + 2 >= a3)
      {
        v14 = *v12;
      }

      else
      {
        v14 = *(v12 + 32);
        v15 = *v12 >= v14;
        if (*v12 > v14)
        {
          v14 = *v12;
        }

        if (!v15)
        {
          v12 += 32;
          v11 = v13;
        }
      }

      v16 = *a4;
      if (v14 >= *a4)
      {
        v17 = a4[1];
        v24 = *(a4 + 1);
        a4[2] = 0;
        a4[3] = 0;
        do
        {
          v18 = v5;
          v5 = v12;
          *v18 = *v12;
          v19 = *(v12 + 16);
          *(v12 + 16) = 0;
          *(v12 + 24) = 0;
          v20 = v18[3];
          *(v18 + 1) = v19;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v8 < v11)
          {
            break;
          }

          v12 = a1 + 32 * ((2 * v11) | 1);
          if (2 * v11 + 2 >= a3)
          {
            v21 = *v12;
            v11 = (2 * v11) | 1;
          }

          else
          {
            v21 = *(v12 + 32);
            v22 = *v12 >= v21;
            if (*v12 > v21)
            {
              v21 = *v12;
            }

            if (v22)
            {
              v11 = (2 * v11) | 1;
            }

            else
            {
              v12 += 32;
              v11 = 2 * v11 + 2;
            }
          }
        }

        while (v21 >= v16);
        *v5 = v16;
        v5[1] = v17;
        v23 = v5[3];
        *(v5 + 1) = v24;
        if (v23)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,ProcessLibrary *>(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v17 = *a1;
    v8 = *(a1 + 2);
    v7 = *(a1 + 3);
    a1[1] = 0uLL;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(a1, a3, a4);
    v10 = v9;
    v11 = (a2 - 32);
    if (v9 == a2 - 32)
    {
      *v9 = v17;
      v16 = *(v9 + 24);
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    else
    {
      *v9 = *v11;
      v12 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v13 = *(v9 + 24);
      *(v10 + 16) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = v10 + 32;
      *v11 = v17;
      v15 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(a1, v14, a3, (v14 - a1) >> 5);
    }
  }
}

void sub_240F88940(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = a1 + 32 * v4;
    v7 = v6 + 32;
    if (2 * v4 + 2 >= a3)
    {
      v4 = (2 * v4) | 1;
    }

    else
    {
      v9 = *(v6 + 64);
      v8 = v6 + 64;
      if (*(v8 - 32) >= v9)
      {
        v4 = (2 * v4) | 1;
      }

      else
      {
        v7 = v8;
        v4 = 2 * v4 + 2;
      }
    }

    *a1 = *v7;
    v10 = *(v7 + 16);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v11 = *(a1 + 24);
    *(a1 + 16) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ProcessLibrary *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 32 * (v4 >> 1);
    v8 = a2 - 32;
    v9 = *(a2 - 32);
    if (*v7 < v9)
    {
      v10 = *(a2 - 24);
      v15 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v11 = v8;
        v8 = v7;
        *v11 = *v7;
        v12 = *(v7 + 16);
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        v13 = *(v11 + 24);
        *(v11 + 16) = v12;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 32 * v6;
      }

      while (*v7 < v9);
      *v8 = v9;
      *(v8 + 8) = v10;
      v14 = *(v8 + 24);
      *(v8 + 16) = v15;
      if (v14)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }
}

void std::vector<ProcessLibrary>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ProcessLibrary>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ProcessLibrary>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,false>(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 72;
  v9 = a2 - 144;
  v10 = a2 - 216;
  v11 = result;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    result = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0x8E38E38E38E38E39 * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        v121 = *(a2 - 9);
        v114 = a2 - 72;
        if (v121 >= *v11)
        {
          return;
        }

        goto LABEL_75;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v111 = v11 + 72;
      v125 = *(v11 + 9);
      v126 = v11 + 9;
      v127 = *(v11 + 18);
      if (v125 >= *v11)
      {
        if (v127 < v125)
        {
          v254 = *(v11 + 104);
          v289 = *(v11 + 120);
          v324 = *(v11 + 17);
          v184 = *v111;
          v219 = *(v11 + 88);
          v133 = v11[12];
          *(v11 + 104) = v11[11];
          *(v11 + 120) = v133;
          *(v11 + 17) = *(v11 + 26);
          v134 = v11[10];
          *v111 = *v126;
          *(v11 + 88) = v134;
          *(v11 + 26) = v324;
          v11[11] = v254;
          v11[12] = v289;
          *v126 = v184;
          v11[10] = v219;
          if (*(v11 + 9) < *v11)
          {
            v185 = *v11;
            v325 = *(v11 + 8);
            v255 = v11[2];
            v290 = v11[3];
            v220 = v11[1];
            *(v11 + 8) = *(v11 + 17);
            v135 = *(v11 + 120);
            v11[2] = *(v11 + 104);
            v11[3] = v135;
            v136 = *(v11 + 88);
            *v11 = *v111;
            v11[1] = v136;
            *(v11 + 17) = v325;
            *(v11 + 104) = v255;
            *(v11 + 120) = v290;
            *v111 = v185;
            *(v11 + 88) = v220;
          }
        }
      }

      else
      {
        if (v127 < v125)
        {
          v182 = *v11;
          v322 = *(v11 + 8);
          v252 = v11[2];
          v287 = v11[3];
          v217 = v11[1];
          *(v11 + 8) = *(v11 + 26);
          v128 = v11[12];
          v11[2] = v11[11];
          v11[3] = v128;
          v129 = v11[10];
          *v11 = *v126;
          v11[1] = v129;
          goto LABEL_102;
        }

        v187 = *v11;
        v326 = *(v11 + 8);
        v257 = v11[2];
        v292 = v11[3];
        v222 = v11[1];
        *(v11 + 8) = *(v11 + 17);
        v144 = *(v11 + 120);
        v11[2] = *(v11 + 104);
        v11[3] = v144;
        v145 = *(v11 + 88);
        *v11 = *v111;
        v11[1] = v145;
        *(v11 + 17) = v326;
        *(v11 + 104) = v257;
        *(v11 + 120) = v292;
        *v111 = v187;
        *(v11 + 88) = v222;
        if (v127 < *(v11 + 9))
        {
          v252 = *(v11 + 104);
          v287 = *(v11 + 120);
          v322 = *(v11 + 17);
          v182 = *v111;
          v217 = *(v11 + 88);
          v146 = v11[12];
          *(v11 + 104) = v11[11];
          *(v11 + 120) = v146;
          *(v11 + 17) = *(v11 + 26);
          v147 = v11[10];
          *v111 = *v126;
          *(v11 + 88) = v147;
LABEL_102:
          *(v11 + 26) = v322;
          v11[11] = v252;
          v11[12] = v287;
          *v126 = v182;
          v11[10] = v217;
        }
      }

      if (*v8 >= *v126)
      {
        return;
      }

      v258 = v11[11];
      v293 = v11[12];
      v327 = *(v11 + 26);
      v188 = *v126;
      v223 = v11[10];
      *v126 = *v8;
      v149 = *(a2 - 40);
      v148 = *(a2 - 24);
      v150 = *(a2 - 56);
      *(v11 + 26) = *(a2 - 1);
      v11[11] = v149;
      v11[12] = v148;
      v11[10] = v150;
      *v8 = v188;
      *(a2 - 1) = v327;
      *(a2 - 24) = v293;
      *(a2 - 40) = v258;
      *(a2 - 56) = v223;
      if (*v126 >= *v111)
      {
        return;
      }

      v259 = *(v11 + 104);
      v294 = *(v11 + 120);
      v328 = *(v11 + 17);
      v189 = *v111;
      v224 = *(v11 + 88);
      v151 = v11[12];
      *(v11 + 104) = v11[11];
      *(v11 + 120) = v151;
      *(v11 + 17) = *(v11 + 26);
      v152 = v11[10];
      *v111 = *v126;
      *(v11 + 88) = v152;
      *(v11 + 26) = v328;
      v11[11] = v259;
      v11[12] = v294;
      *v126 = v189;
      v11[10] = v224;
LABEL_106:
      if (*(v11 + 9) < *v11)
      {
        v190 = *v11;
        v329 = *(v11 + 8);
        v260 = v11[2];
        v295 = v11[3];
        v225 = v11[1];
        *(v11 + 8) = *(v111 + 8);
        v153 = *(v111 + 3);
        v11[2] = *(v111 + 2);
        v11[3] = v153;
        v154 = *(v111 + 1);
        *v11 = *v111;
        v11[1] = v154;
        *(v111 + 8) = v329;
        *(v111 + 2) = v260;
        *(v111 + 3) = v295;
        *v111 = v190;
        *(v111 + 1) = v225;
      }

      return;
    }

    if (v15 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,0>(v11, v11 + 9, v11 + 18, v11 + 216, (a2 - 72));
      return;
    }

LABEL_10:
    if (v14 <= 1727)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(v11, a2);
      }

      else if (v11 != a2)
      {
        v137 = v11 + 72;
        while (v137 != a2)
        {
          v138 = v137;
          v139 = *(result + 72);
          if (v139 < *result)
          {
            v186 = *(result + 80);
            v221 = *(result + 96);
            v256 = *(result + 112);
            v291 = *(result + 128);
            v140 = v138;
            do
            {
              v141 = *(v140 - 56);
              v142 = *(v140 - 24);
              *(v140 + 32) = *(v140 - 40);
              *(v140 + 48) = v142;
              *(v140 + 64) = *(v140 - 8);
              *v140 = *(v140 - 72);
              *(v140 + 16) = v141;
              v143 = *(v140 - 144);
              v140 -= 72;
            }

            while (v139 < v143);
            *v140 = v139;
            *(v140 + 56) = v291;
            *(v140 + 40) = v256;
            *(v140 + 24) = v221;
            *(v140 + 8) = v186;
          }

          v137 = (v138 + 72);
          result = v138;
        }
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,AOTImage *>(v11, a2, a2, a3);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = v11 + 72 * (v15 >> 1);
    v18 = *v8;
    if (v14 >= 0x2401)
    {
      v19 = *v17;
      if (*v17 >= *v11)
      {
        if (v18 < v19)
        {
          v158 = *v17;
          v298 = *(v17 + 8);
          v228 = *(v17 + 2);
          v263 = *(v17 + 3);
          v193 = *(v17 + 1);
          v28 = *(a2 - 40);
          v27 = *(a2 - 24);
          v29 = *(a2 - 56);
          *(v17 + 8) = *(a2 - 1);
          *(v17 + 2) = v28;
          *(v17 + 3) = v27;
          *(v17 + 1) = v29;
          *v17 = *v8;
          *(a2 - 56) = v193;
          *(a2 - 40) = v228;
          *(a2 - 24) = v263;
          *(a2 - 1) = v298;
          *v8 = v158;
          if (*v17 < *v11)
          {
            v159 = *v11;
            v299 = *(v11 + 8);
            v229 = v11[2];
            v264 = v11[3];
            v194 = v11[1];
            v31 = *(v17 + 2);
            v30 = *(v17 + 3);
            v32 = *(v17 + 1);
            *(v11 + 8) = *(v17 + 8);
            v11[2] = v31;
            v11[3] = v30;
            v11[1] = v32;
            *v11 = *v17;
            *(v17 + 8) = v299;
            *(v17 + 2) = v229;
            *(v17 + 3) = v264;
            *(v17 + 1) = v194;
            *v17 = v159;
          }
        }
      }

      else
      {
        if (v18 < v19)
        {
          v156 = *v11;
          v296 = *(v11 + 8);
          v226 = v11[2];
          v261 = v11[3];
          v191 = v11[1];
          v21 = *(a2 - 40);
          v20 = *(a2 - 24);
          v22 = *(a2 - 56);
          *(v11 + 8) = *(a2 - 1);
          v11[2] = v21;
          v11[3] = v20;
          v11[1] = v22;
          *v11 = *v8;
          goto LABEL_27;
        }

        v162 = *v11;
        v302 = *(v11 + 8);
        v232 = v11[2];
        v267 = v11[3];
        v197 = v11[1];
        v40 = *(v17 + 2);
        v39 = *(v17 + 3);
        v41 = *(v17 + 1);
        *(v11 + 8) = *(v17 + 8);
        v11[2] = v40;
        v11[3] = v39;
        v11[1] = v41;
        *v11 = *v17;
        *(v17 + 8) = v302;
        *(v17 + 2) = v232;
        *(v17 + 3) = v267;
        *(v17 + 1) = v197;
        *v17 = v162;
        if (*v8 < *v17)
        {
          v156 = *v17;
          v296 = *(v17 + 8);
          v226 = *(v17 + 2);
          v261 = *(v17 + 3);
          v191 = *(v17 + 1);
          v43 = *(a2 - 40);
          v42 = *(a2 - 24);
          v44 = *(a2 - 56);
          *(v17 + 8) = *(a2 - 1);
          *(v17 + 2) = v43;
          *(v17 + 3) = v42;
          *(v17 + 1) = v44;
          *v17 = *v8;
LABEL_27:
          *(a2 - 56) = v191;
          *(a2 - 40) = v226;
          *(a2 - 24) = v261;
          *(a2 - 1) = v296;
          *v8 = v156;
        }
      }

      v45 = (v11 + 72);
      v46 = v11 + 72 * v16;
      v49 = *(v46 - 9);
      v47 = v46 - 72;
      v48 = v49;
      v50 = *v9;
      if (v49 >= *(v11 + 9))
      {
        if (v50 < v48)
        {
          v164 = *v47;
          v304 = *(v47 + 8);
          v234 = *(v47 + 2);
          v269 = *(v47 + 3);
          v199 = *(v47 + 1);
          v55 = *(a2 - 7);
          v54 = *(a2 - 6);
          v56 = *(a2 - 8);
          *(v47 + 8) = *(a2 - 10);
          *(v47 + 2) = v55;
          *(v47 + 3) = v54;
          *(v47 + 1) = v56;
          *v47 = *v9;
          *(a2 - 8) = v199;
          *(a2 - 7) = v234;
          *(a2 - 6) = v269;
          *(a2 - 10) = v304;
          *v9 = v164;
          if (*v47 < *v45)
          {
            v235 = *(v11 + 104);
            v270 = *(v11 + 120);
            v305 = *(v11 + 17);
            v165 = *v45;
            v200 = *(v11 + 88);
            v58 = *(v47 + 2);
            v57 = *(v47 + 3);
            v59 = *(v47 + 1);
            *(v11 + 17) = *(v47 + 8);
            *(v11 + 104) = v58;
            *(v11 + 120) = v57;
            *(v11 + 88) = v59;
            *v45 = *v47;
            *v47 = v165;
            *(v47 + 8) = v305;
            *(v47 + 2) = v235;
            *(v47 + 3) = v270;
            *(v47 + 1) = v200;
          }
        }
      }

      else if (v50 >= v48)
      {
        v237 = *(v11 + 104);
        v272 = *(v11 + 120);
        v307 = *(v11 + 17);
        v167 = *v45;
        v202 = *(v11 + 88);
        v67 = *(v47 + 2);
        v66 = *(v47 + 3);
        v68 = *(v47 + 1);
        *(v11 + 17) = *(v47 + 8);
        *(v11 + 104) = v67;
        *(v11 + 120) = v66;
        *(v11 + 88) = v68;
        *v45 = *v47;
        *v47 = v167;
        *(v47 + 8) = v307;
        *(v47 + 2) = v237;
        *(v47 + 3) = v272;
        *(v47 + 1) = v202;
        if (*v9 < *v47)
        {
          v168 = *v47;
          v308 = *(v47 + 8);
          v238 = *(v47 + 2);
          v273 = *(v47 + 3);
          v203 = *(v47 + 1);
          v70 = *(a2 - 7);
          v69 = *(a2 - 6);
          v71 = *(a2 - 8);
          *(v47 + 8) = *(a2 - 10);
          *(v47 + 2) = v70;
          *(v47 + 3) = v69;
          *(v47 + 1) = v71;
          *v47 = *v9;
          *(a2 - 8) = v203;
          *(a2 - 7) = v238;
          *(a2 - 6) = v273;
          *(a2 - 10) = v308;
          *v9 = v168;
        }
      }

      else
      {
        v233 = *(v11 + 104);
        v268 = *(v11 + 120);
        v303 = *(v11 + 17);
        v163 = *v45;
        v198 = *(v11 + 88);
        *v45 = *v9;
        v52 = *(a2 - 7);
        v51 = *(a2 - 6);
        v53 = *(a2 - 8);
        *(v11 + 17) = *(a2 - 10);
        *(v11 + 104) = v52;
        *(v11 + 120) = v51;
        *(v11 + 88) = v53;
        *v9 = v163;
        *(a2 - 10) = v303;
        *(a2 - 6) = v268;
        *(a2 - 7) = v233;
        *(a2 - 8) = v198;
      }

      v72 = v11 + 9;
      v73 = v11 + 72 * v16;
      v76 = *(v73 + 9);
      v74 = v73 + 72;
      v75 = v76;
      v77 = *v10;
      if (v76 >= *(v11 + 18))
      {
        if (v77 < v75)
        {
          v170 = *v74;
          v310 = *(v74 + 8);
          v240 = *(v74 + 2);
          v275 = *(v74 + 3);
          v205 = *(v74 + 1);
          v82 = *(a2 - 184);
          v81 = *(a2 - 168);
          v83 = *(a2 - 200);
          *(v74 + 8) = *(a2 - 19);
          *(v74 + 2) = v82;
          *(v74 + 3) = v81;
          *(v74 + 1) = v83;
          *v74 = *v10;
          *(a2 - 200) = v205;
          *(a2 - 184) = v240;
          *(a2 - 168) = v275;
          *(a2 - 19) = v310;
          *v10 = v170;
          if (*v74 < *v72)
          {
            v241 = v11[11];
            v276 = v11[12];
            v311 = *(v11 + 26);
            v171 = *v72;
            v206 = v11[10];
            v85 = *(v74 + 2);
            v84 = *(v74 + 3);
            v86 = *(v74 + 1);
            *(v11 + 26) = *(v74 + 8);
            v11[11] = v85;
            v11[12] = v84;
            v11[10] = v86;
            *v72 = *v74;
            *v74 = v171;
            *(v74 + 8) = v311;
            *(v74 + 2) = v241;
            *(v74 + 3) = v276;
            *(v74 + 1) = v206;
          }
        }
      }

      else if (v77 >= v75)
      {
        v242 = v11[11];
        v277 = v11[12];
        v312 = *(v11 + 26);
        v172 = *v72;
        v207 = v11[10];
        v88 = *(v74 + 2);
        v87 = *(v74 + 3);
        v89 = *(v74 + 1);
        *(v11 + 26) = *(v74 + 8);
        v11[11] = v88;
        v11[12] = v87;
        v11[10] = v89;
        *v72 = *v74;
        *v74 = v172;
        *(v74 + 8) = v312;
        *(v74 + 2) = v242;
        *(v74 + 3) = v277;
        *(v74 + 1) = v207;
        if (*v10 < *v74)
        {
          v173 = *v74;
          v313 = *(v74 + 8);
          v243 = *(v74 + 2);
          v278 = *(v74 + 3);
          v208 = *(v74 + 1);
          v91 = *(a2 - 184);
          v90 = *(a2 - 168);
          v92 = *(a2 - 200);
          *(v74 + 8) = *(a2 - 19);
          *(v74 + 2) = v91;
          *(v74 + 3) = v90;
          *(v74 + 1) = v92;
          *v74 = *v10;
          *(a2 - 200) = v208;
          *(a2 - 184) = v243;
          *(a2 - 168) = v278;
          *(a2 - 19) = v313;
          *v10 = v173;
        }
      }

      else
      {
        v239 = v11[11];
        v274 = v11[12];
        v309 = *(v11 + 26);
        v169 = *v72;
        v204 = v11[10];
        *v72 = *v10;
        v79 = *(a2 - 184);
        v78 = *(a2 - 168);
        v80 = *(a2 - 200);
        *(v11 + 26) = *(a2 - 19);
        v11[11] = v79;
        v11[12] = v78;
        v11[10] = v80;
        *v10 = v169;
        *(a2 - 19) = v309;
        *(a2 - 168) = v274;
        *(a2 - 184) = v239;
        *(a2 - 200) = v204;
      }

      v93 = *v17;
      v94 = *v74;
      if (*v17 >= *v47)
      {
        if (v94 < v93)
        {
          v175 = *v17;
          v315 = *(v17 + 8);
          v245 = *(v17 + 2);
          v280 = *(v17 + 3);
          v210 = *(v17 + 1);
          *(v17 + 8) = *(v74 + 8);
          v97 = *(v74 + 3);
          *(v17 + 2) = *(v74 + 2);
          *(v17 + 3) = v97;
          v98 = *(v74 + 1);
          *v17 = *v74;
          *(v17 + 1) = v98;
          *v74 = v175;
          *(v74 + 8) = v315;
          *(v74 + 2) = v245;
          *(v74 + 3) = v280;
          *(v74 + 1) = v210;
          if (*v17 < *v47)
          {
            v176 = *v47;
            v316 = *(v47 + 8);
            v246 = *(v47 + 2);
            v281 = *(v47 + 3);
            v211 = *(v47 + 1);
            *(v47 + 8) = *(v17 + 8);
            v99 = *(v17 + 3);
            *(v47 + 2) = *(v17 + 2);
            *(v47 + 3) = v99;
            v100 = *(v17 + 1);
            *v47 = *v17;
            *(v47 + 1) = v100;
            *v17 = v176;
            *(v17 + 8) = v316;
            *(v17 + 2) = v246;
            *(v17 + 3) = v281;
            *(v17 + 1) = v211;
          }
        }
      }

      else
      {
        if (v94 < v93)
        {
          v174 = *v47;
          v314 = *(v47 + 8);
          v244 = *(v47 + 2);
          v279 = *(v47 + 3);
          v209 = *(v47 + 1);
          *(v47 + 8) = *(v74 + 8);
          v95 = *(v74 + 3);
          *(v47 + 2) = *(v74 + 2);
          *(v47 + 3) = v95;
          v96 = *(v74 + 1);
          *v47 = *v74;
          *(v47 + 1) = v96;
          goto LABEL_55;
        }

        v177 = *v47;
        v317 = *(v47 + 8);
        v247 = *(v47 + 2);
        v282 = *(v47 + 3);
        v212 = *(v47 + 1);
        *(v47 + 8) = *(v17 + 8);
        v101 = *(v17 + 3);
        *(v47 + 2) = *(v17 + 2);
        *(v47 + 3) = v101;
        v102 = *(v17 + 1);
        *v47 = *v17;
        *(v47 + 1) = v102;
        *v17 = v177;
        *(v17 + 8) = v317;
        *(v17 + 2) = v247;
        *(v17 + 3) = v282;
        *(v17 + 1) = v212;
        if (*v74 < *v17)
        {
          v174 = *v17;
          v314 = *(v17 + 8);
          v244 = *(v17 + 2);
          v279 = *(v17 + 3);
          v209 = *(v17 + 1);
          *(v17 + 8) = *(v74 + 8);
          v103 = *(v74 + 3);
          *(v17 + 2) = *(v74 + 2);
          *(v17 + 3) = v103;
          v104 = *(v74 + 1);
          *v17 = *v74;
          *(v17 + 1) = v104;
LABEL_55:
          *v74 = v174;
          *(v74 + 8) = v314;
          *(v74 + 2) = v244;
          *(v74 + 3) = v279;
          *(v74 + 1) = v209;
        }
      }

      v178 = *v11;
      v318 = *(v11 + 8);
      v248 = v11[2];
      v283 = v11[3];
      v213 = v11[1];
      v106 = *(v17 + 2);
      v105 = *(v17 + 3);
      v107 = *(v17 + 1);
      *(v11 + 8) = *(v17 + 8);
      v11[2] = v106;
      v11[3] = v105;
      v11[1] = v107;
      *v11 = *v17;
      *(v17 + 8) = v318;
      *(v17 + 2) = v248;
      *(v17 + 3) = v283;
      *(v17 + 1) = v213;
      *v17 = v178;
      goto LABEL_57;
    }

    v23 = *v11;
    if (*v11 >= *v17)
    {
      if (v18 < v23)
      {
        v160 = *v11;
        v300 = *(v11 + 8);
        v230 = v11[2];
        v265 = v11[3];
        v195 = v11[1];
        v34 = *(a2 - 40);
        v33 = *(a2 - 24);
        v35 = *(a2 - 56);
        *(v11 + 8) = *(a2 - 1);
        v11[2] = v34;
        v11[3] = v33;
        v11[1] = v35;
        *v11 = *v8;
        *(a2 - 56) = v195;
        *(a2 - 40) = v230;
        *(a2 - 24) = v265;
        *(a2 - 1) = v300;
        *v8 = v160;
        if (*v11 < *v17)
        {
          v161 = *v17;
          v301 = *(v17 + 8);
          v231 = *(v17 + 2);
          v266 = *(v17 + 3);
          v196 = *(v17 + 1);
          v37 = v11[2];
          v36 = v11[3];
          v38 = v11[1];
          *(v17 + 8) = *(v11 + 8);
          *(v17 + 2) = v37;
          *(v17 + 3) = v36;
          *(v17 + 1) = v38;
          *v17 = *v11;
          *(v11 + 8) = v301;
          v11[2] = v231;
          v11[3] = v266;
          v11[1] = v196;
          *v11 = v161;
        }
      }
    }

    else
    {
      if (v18 < v23)
      {
        v157 = *v17;
        v297 = *(v17 + 8);
        v227 = *(v17 + 2);
        v262 = *(v17 + 3);
        v192 = *(v17 + 1);
        v25 = *(a2 - 40);
        v24 = *(a2 - 24);
        v26 = *(a2 - 56);
        *(v17 + 8) = *(a2 - 1);
        *(v17 + 2) = v25;
        *(v17 + 3) = v24;
        *(v17 + 1) = v26;
        *v17 = *v8;
LABEL_36:
        *(a2 - 56) = v192;
        *(a2 - 40) = v227;
        *(a2 - 24) = v262;
        *(a2 - 1) = v297;
        *v8 = v157;
        goto LABEL_57;
      }

      v166 = *v17;
      v306 = *(v17 + 8);
      v236 = *(v17 + 2);
      v271 = *(v17 + 3);
      v201 = *(v17 + 1);
      v61 = v11[2];
      v60 = v11[3];
      v62 = v11[1];
      *(v17 + 8) = *(v11 + 8);
      *(v17 + 2) = v61;
      *(v17 + 3) = v60;
      *(v17 + 1) = v62;
      *v17 = *v11;
      *(v11 + 8) = v306;
      v11[2] = v236;
      v11[3] = v271;
      v11[1] = v201;
      *v11 = v166;
      if (*v8 < *v11)
      {
        v157 = *v11;
        v297 = *(v11 + 8);
        v227 = v11[2];
        v262 = v11[3];
        v192 = v11[1];
        v64 = *(a2 - 40);
        v63 = *(a2 - 24);
        v65 = *(a2 - 56);
        *(v11 + 8) = *(a2 - 1);
        v11[2] = v64;
        v11[3] = v63;
        v11[1] = v65;
        *v11 = *v8;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *(v11 - 9) >= *v11)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AOTImage *,std::__less<void,void> &>(v11, a2);
      goto LABEL_64;
    }

    v108 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AOTImage *,std::__less<void,void> &>(v11, a2);
    if ((v109 & 1) == 0)
    {
      goto LABEL_62;
    }

    v110 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(v11, v108);
    v11 = (v108 + 9);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>((v108 + 9), a2))
    {
      a4 = -v13;
      a2 = v108;
      if (v110)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v110)
    {
LABEL_62:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,false>(result, v108, a3, -v13, a5 & 1);
      v11 = (v108 + 9);
LABEL_64:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  v111 = v11 + 72;
  v112 = *(v11 + 9);
  v115 = *(a2 - 9);
  v114 = a2 - 72;
  v113 = v115;
  if (v112 >= *v11)
  {
    if (v113 >= v112)
    {
      return;
    }

    v253 = *(v11 + 104);
    v288 = *(v11 + 120);
    v323 = *(v11 + 17);
    v183 = *v111;
    v218 = *(v11 + 88);
    *v111 = *v114;
    v131 = *(v114 + 2);
    v130 = *(v114 + 3);
    v132 = *(v114 + 1);
    *(v11 + 17) = *(v114 + 8);
    *(v11 + 104) = v131;
    *(v11 + 120) = v130;
    *(v11 + 88) = v132;
    *v114 = v183;
    *(v114 + 8) = v323;
    *(v114 + 3) = v288;
    *(v114 + 2) = v253;
    *(v114 + 1) = v218;
    goto LABEL_106;
  }

  if (v113 < v112)
  {
LABEL_75:
    v181 = *v11;
    v321 = *(v11 + 8);
    v251 = v11[2];
    v286 = v11[3];
    v216 = v11[1];
    v123 = *(v114 + 2);
    v122 = *(v114 + 3);
    v124 = *(v114 + 1);
    *(v11 + 8) = *(v114 + 8);
    v11[2] = v123;
    v11[3] = v122;
    v11[1] = v124;
    *v11 = *v114;
    *(v114 + 1) = v216;
    *(v114 + 2) = v251;
    *(v114 + 3) = v286;
    *(v114 + 8) = v321;
    *v114 = v181;
    return;
  }

  v179 = *v11;
  v319 = *(v11 + 8);
  v249 = v11[2];
  v284 = v11[3];
  v214 = v11[1];
  *(v11 + 8) = *(v11 + 17);
  v116 = *(v11 + 120);
  v11[2] = *(v11 + 104);
  v11[3] = v116;
  v117 = *(v11 + 88);
  *v11 = *v111;
  v11[1] = v117;
  *(v11 + 17) = v319;
  *(v11 + 104) = v249;
  *(v11 + 120) = v284;
  *v111 = v179;
  *(v11 + 88) = v214;
  if (*v114 < *(v11 + 9))
  {
    v250 = *(v11 + 104);
    v285 = *(v11 + 120);
    v320 = *(v11 + 17);
    v180 = *v111;
    v215 = *(v11 + 88);
    *v111 = *v114;
    v119 = *(v114 + 2);
    v118 = *(v114 + 3);
    v120 = *(v114 + 1);
    *(v11 + 17) = *(v114 + 8);
    *(v11 + 104) = v119;
    *(v11 + 120) = v118;
    *(v11 + 88) = v120;
    *v114 = v180;
    *(v114 + 8) = v320;
    *(v114 + 3) = v285;
    *(v114 + 2) = v250;
    *(v114 + 1) = v215;
  }
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,0>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *a1)
  {
    if (v6 < v5)
    {
      v67 = *(a2 + 2);
      v78 = *(a2 + 3);
      v89 = a2[8];
      v45 = *a2;
      v56 = *(a2 + 1);
      *a2 = *a3;
      v11 = *(a3 + 2);
      v10 = *(a3 + 3);
      v12 = *(a3 + 1);
      a2[8] = a3[8];
      *(a2 + 2) = v11;
      *(a2 + 3) = v10;
      *(a2 + 1) = v12;
      a3[8] = v89;
      *(a3 + 2) = v67;
      *(a3 + 3) = v78;
      result = v45;
      *a3 = v45;
      *(a3 + 1) = v56;
      if (*a2 < *a1)
      {
        v68 = *(a1 + 32);
        v79 = *(a1 + 48);
        v90 = *(a1 + 64);
        v46 = *a1;
        v57 = *(a1 + 16);
        *a1 = *a2;
        v15 = *(a2 + 2);
        v14 = *(a2 + 3);
        v16 = *(a2 + 1);
        *(a1 + 64) = a2[8];
        *(a1 + 32) = v15;
        *(a1 + 48) = v14;
        *(a1 + 16) = v16;
        a2[8] = v90;
        *(a2 + 2) = v68;
        *(a2 + 3) = v79;
        result = v46;
        *a2 = v46;
        *(a2 + 1) = v57;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v66 = *(a1 + 32);
      v77 = *(a1 + 48);
      v88 = *(a1 + 64);
      v44 = *a1;
      v55 = *(a1 + 16);
      *a1 = *a3;
      v8 = *(a3 + 2);
      v7 = *(a3 + 3);
      v9 = *(a3 + 1);
      *(a1 + 64) = a3[8];
      *(a1 + 32) = v8;
      *(a1 + 48) = v7;
      *(a1 + 16) = v9;
LABEL_9:
      a3[8] = v88;
      *(a3 + 2) = v66;
      *(a3 + 3) = v77;
      result = v44;
      *a3 = v44;
      *(a3 + 1) = v55;
      goto LABEL_10;
    }

    v69 = *(a1 + 32);
    v80 = *(a1 + 48);
    v91 = *(a1 + 64);
    v47 = *a1;
    v58 = *(a1 + 16);
    *a1 = *a2;
    v18 = *(a2 + 2);
    v17 = *(a2 + 3);
    v19 = *(a2 + 1);
    *(a1 + 64) = a2[8];
    *(a1 + 32) = v18;
    *(a1 + 48) = v17;
    *(a1 + 16) = v19;
    a2[8] = v91;
    *(a2 + 2) = v69;
    *(a2 + 3) = v80;
    result = v47;
    *a2 = v47;
    *(a2 + 1) = v58;
    if (*a3 < *a2)
    {
      v66 = *(a2 + 2);
      v77 = *(a2 + 3);
      v88 = a2[8];
      v44 = *a2;
      v55 = *(a2 + 1);
      *a2 = *a3;
      v21 = *(a3 + 2);
      v20 = *(a3 + 3);
      v22 = *(a3 + 1);
      a2[8] = a3[8];
      *(a2 + 2) = v21;
      *(a2 + 3) = v20;
      *(a2 + 1) = v22;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v70 = *(a3 + 2);
    v81 = *(a3 + 3);
    v92 = a3[8];
    v48 = *a3;
    v59 = *(a3 + 1);
    *a3 = *a4;
    v24 = *(a4 + 32);
    v23 = *(a4 + 48);
    v25 = *(a4 + 16);
    a3[8] = *(a4 + 64);
    *(a3 + 2) = v24;
    *(a3 + 3) = v23;
    *(a3 + 1) = v25;
    *(a4 + 64) = v92;
    *(a4 + 32) = v70;
    *(a4 + 48) = v81;
    result = v48;
    *a4 = v48;
    *(a4 + 16) = v59;
    if (*a3 < *a2)
    {
      v71 = *(a2 + 2);
      v82 = *(a2 + 3);
      v93 = a2[8];
      v49 = *a2;
      v60 = *(a2 + 1);
      *a2 = *a3;
      v27 = *(a3 + 2);
      v26 = *(a3 + 3);
      v28 = *(a3 + 1);
      a2[8] = a3[8];
      *(a2 + 2) = v27;
      *(a2 + 3) = v26;
      *(a2 + 1) = v28;
      a3[8] = v93;
      *(a3 + 2) = v71;
      *(a3 + 3) = v82;
      result = v49;
      *a3 = v49;
      *(a3 + 1) = v60;
      if (*a2 < *a1)
      {
        v72 = *(a1 + 32);
        v83 = *(a1 + 48);
        v94 = *(a1 + 64);
        v50 = *a1;
        v61 = *(a1 + 16);
        *a1 = *a2;
        v30 = *(a2 + 2);
        v29 = *(a2 + 3);
        v31 = *(a2 + 1);
        *(a1 + 64) = a2[8];
        *(a1 + 32) = v30;
        *(a1 + 48) = v29;
        *(a1 + 16) = v31;
        a2[8] = v94;
        *(a2 + 2) = v72;
        *(a2 + 3) = v83;
        result = v50;
        *a2 = v50;
        *(a2 + 1) = v61;
      }
    }
  }

  if (*a5 < *a4)
  {
    v73 = *(a4 + 32);
    v84 = *(a4 + 48);
    v95 = *(a4 + 64);
    v51 = *a4;
    v62 = *(a4 + 16);
    *a4 = *a5;
    v33 = *(a5 + 32);
    v32 = *(a5 + 48);
    v34 = *(a5 + 16);
    *(a4 + 64) = *(a5 + 64);
    *(a4 + 32) = v33;
    *(a4 + 48) = v32;
    *(a4 + 16) = v34;
    *(a5 + 64) = v95;
    *(a5 + 32) = v73;
    *(a5 + 48) = v84;
    result = v51;
    *a5 = v51;
    *(a5 + 16) = v62;
    if (*a4 < *a3)
    {
      v74 = *(a3 + 2);
      v85 = *(a3 + 3);
      v96 = a3[8];
      v52 = *a3;
      v63 = *(a3 + 1);
      *a3 = *a4;
      v36 = *(a4 + 32);
      v35 = *(a4 + 48);
      v37 = *(a4 + 16);
      a3[8] = *(a4 + 64);
      *(a3 + 2) = v36;
      *(a3 + 3) = v35;
      *(a3 + 1) = v37;
      *(a4 + 64) = v96;
      *(a4 + 32) = v74;
      *(a4 + 48) = v85;
      result = v52;
      *a4 = v52;
      *(a4 + 16) = v63;
      if (*a3 < *a2)
      {
        v75 = *(a2 + 2);
        v86 = *(a2 + 3);
        v97 = a2[8];
        v53 = *a2;
        v64 = *(a2 + 1);
        *a2 = *a3;
        v39 = *(a3 + 2);
        v38 = *(a3 + 3);
        v40 = *(a3 + 1);
        a2[8] = a3[8];
        *(a2 + 2) = v39;
        *(a2 + 3) = v38;
        *(a2 + 1) = v40;
        a3[8] = v97;
        *(a3 + 2) = v75;
        *(a3 + 3) = v86;
        result = v53;
        *a3 = v53;
        *(a3 + 1) = v64;
        if (*a2 < *a1)
        {
          v76 = *(a1 + 32);
          v87 = *(a1 + 48);
          v98 = *(a1 + 64);
          v54 = *a1;
          v65 = *(a1 + 16);
          *a1 = *a2;
          v42 = *(a2 + 2);
          v41 = *(a2 + 3);
          v43 = *(a2 + 1);
          *(a1 + 64) = a2[8];
          *(a1 + 32) = v42;
          *(a1 + 48) = v41;
          *(a1 + 16) = v43;
          a2[8] = v98;
          *(a2 + 2) = v76;
          *(a2 + 3) = v87;
          result = v54;
          *a2 = v54;
          *(a2 + 1) = v65;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 72;
    if (result + 72 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 72);
        if (v6 < *v4)
        {
          v12 = *(v4 + 80);
          v13 = *(v4 + 96);
          v14 = *(v4 + 112);
          v15 = *(v4 + 128);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7);
            *(v8 + 88) = *(result + v7 + 16);
            v10 = *(result + v7 + 48);
            *(v8 + 104) = *(result + v7 + 32);
            *(v8 + 120) = v10;
            *(v8 + 136) = *(result + v7 + 64);
            *(v8 + 72) = v9;
            if (!v7)
            {
              break;
            }

            v7 -= 72;
            if (v6 >= *(v8 - 72))
            {
              v11 = result + v7 + 72;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v6;
          *(v11 + 8) = v12;
          *(v11 + 24) = v13;
          *(v11 + 40) = v14;
          *(v11 + 56) = v15;
        }

        v2 = v5 + 72;
        v3 += 72;
        v4 = v5;
      }

      while (v5 + 72 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AOTImage *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v16 = *(a1 + 1);
  v17 = *(a1 + 3);
  v18 = *(a1 + 5);
  v19 = *(a1 + 7);
  if (*a1 >= *(a2 - 72))
  {
    v5 = a1 + 9;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 9;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[9];
      v3 += 9;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 72);
      a2 -= 72;
    }

    while (v2 < v6);
  }

  while (v3 < a2)
  {
    v20 = *v3;
    v24 = v3[8];
    v22 = *(v3 + 2);
    v23 = *(v3 + 3);
    v21 = *(v3 + 1);
    v8 = *(a2 + 32);
    v7 = *(a2 + 48);
    v9 = *(a2 + 16);
    v3[8] = *(a2 + 64);
    *(v3 + 2) = v8;
    *(v3 + 3) = v7;
    *(v3 + 1) = v9;
    *v3 = *a2;
    *(a2 + 64) = v24;
    *(a2 + 32) = v22;
    *(a2 + 48) = v23;
    *(a2 + 16) = v21;
    *a2 = v20;
    do
    {
      v10 = v3[9];
      v3 += 9;
    }

    while (v2 >= v10);
    do
    {
      v11 = *(a2 - 72);
      a2 -= 72;
    }

    while (v2 < v11);
  }

  if (v3 - 9 != a1)
  {
    *a1 = *(v3 - 9);
    v12 = *(v3 - 7);
    v13 = *(v3 - 5);
    v14 = *(v3 - 3);
    a1[8] = *(v3 - 1);
    *(a1 + 2) = v13;
    *(a1 + 3) = v14;
    *(a1 + 1) = v12;
  }

  *(v3 - 9) = v2;
  *(v3 - 2) = v18;
  *(v3 - 1) = v19;
  *(v3 - 4) = v16;
  *(v3 - 3) = v17;
  return v3;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AOTImage *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v19 = *(a1 + 1);
  v20 = *(a1 + 3);
  v21 = *(a1 + 5);
  v22 = *(a1 + 7);
  do
  {
    v4 = a1[v2 + 9];
    v2 += 9;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 9)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 72);
      a2 -= 72;
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v6 = *(a2 - 72);
      a2 -= 72;
    }

    while (v6 >= v3);
  }

  v8 = &a1[v2];
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v25 = *(v8 + 2);
      v26 = *(v8 + 3);
      v27 = v8[8];
      v23 = *v8;
      v24 = *(v8 + 1);
      v11 = *(v9 + 32);
      v10 = *(v9 + 48);
      v12 = *(v9 + 16);
      v8[8] = *(v9 + 64);
      *(v8 + 2) = v11;
      *(v8 + 3) = v10;
      *(v8 + 1) = v12;
      *v8 = *v9;
      *v9 = v23;
      *(v9 + 64) = v27;
      *(v9 + 32) = v25;
      *(v9 + 48) = v26;
      *(v9 + 16) = v24;
      do
      {
        v13 = v8[9];
        v8 += 9;
      }

      while (v13 < v3);
      do
      {
        v14 = *(v9 - 72);
        v9 -= 72;
      }

      while (v14 >= v3);
    }

    while (v8 < v9);
  }

  if (v8 - 9 != a1)
  {
    *a1 = *(v8 - 9);
    v15 = *(v8 - 7);
    v16 = *(v8 - 5);
    v17 = *(v8 - 3);
    a1[8] = *(v8 - 1);
    *(a1 + 2) = v16;
    *(a1 + 3) = v17;
    *(a1 + 1) = v15;
  }

  *(v8 - 9) = v3;
  *(v8 - 2) = v21;
  *(v8 - 1) = v22;
  *(v8 - 4) = v19;
  *(v8 - 3) = v20;
  return v8 - 9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(__int128 *a1, char *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = (a1 + 72);
      v6 = *(a1 + 9);
      v8 = *(a2 - 9);
      v3 = a2 - 72;
      v7 = v8;
      if (v6 < *a1)
      {
        if (v7 < v6)
        {
LABEL_12:
          v98 = a1[2];
          v113 = a1[3];
          v128 = *(a1 + 8);
          v68 = *a1;
          v83 = a1[1];
          *a1 = *v3;
          v10 = *(v3 + 2);
          v9 = *(v3 + 3);
          v11 = *(v3 + 1);
          *(a1 + 8) = *(v3 + 8);
          a1[2] = v10;
          a1[3] = v9;
          a1[1] = v11;
LABEL_13:
          *(v3 + 8) = v128;
          *(v3 + 2) = v98;
          *(v3 + 3) = v113;
          result = 1;
          *v3 = v68;
          *(v3 + 1) = v83;
          return result;
        }

        v106 = a1[2];
        v121 = a1[3];
        v136 = *(a1 + 8);
        v76 = *a1;
        v91 = a1[1];
        v38 = *(a1 + 120);
        a1[2] = *(a1 + 104);
        a1[3] = v38;
        *(a1 + 8) = *(a1 + 17);
        v39 = *(a1 + 88);
        *a1 = *v5;
        a1[1] = v39;
        *(a1 + 17) = v136;
        *(a1 + 104) = v106;
        *(a1 + 120) = v121;
        *v5 = v76;
        *(a1 + 88) = v91;
        if (*v3 < *(a1 + 9))
        {
          v98 = *(a1 + 104);
          v113 = *(a1 + 120);
          v128 = *(a1 + 17);
          v68 = *v5;
          v83 = *(a1 + 88);
          *v5 = *v3;
          v41 = *(v3 + 2);
          v40 = *(v3 + 3);
          v42 = *(v3 + 1);
          *(a1 + 17) = *(v3 + 8);
          *(a1 + 104) = v41;
          *(a1 + 120) = v40;
          *(a1 + 88) = v42;
          goto LABEL_13;
        }

        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v101 = *(a1 + 104);
      v116 = *(a1 + 120);
      v131 = *(a1 + 17);
      v71 = *v5;
      v86 = *(a1 + 88);
      *v5 = *v3;
      v28 = *(v3 + 2);
      v27 = *(v3 + 3);
      v29 = *(v3 + 1);
      *(a1 + 17) = *(v3 + 8);
      *(a1 + 104) = v28;
      *(a1 + 120) = v27;
      *(a1 + 88) = v29;
      *(v3 + 8) = v131;
      *(v3 + 2) = v101;
      *(v3 + 3) = v116;
      *v3 = v71;
      *(v3 + 1) = v86;
LABEL_50:
      if (*(a1 + 9) < *a1)
      {
        v112 = a1[2];
        v127 = a1[3];
        v141 = *(a1 + 8);
        v82 = *a1;
        v97 = a1[1];
        v66 = v5[3];
        a1[2] = v5[2];
        a1[3] = v66;
        *(a1 + 8) = *(v5 + 8);
        v67 = v5[1];
        *a1 = *v5;
        a1[1] = v67;
        *(v5 + 8) = v141;
        v5[2] = v112;
        v5[3] = v127;
        result = 1;
        *v5 = v82;
        v5[1] = v97;
        return result;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,0>(a1, a1 + 9, a1 + 18, a1 + 216, (a2 - 72));
      return 1;
    }

    v5 = (a1 + 72);
    v20 = *(a1 + 9);
    v21 = a1 + 9;
    v22 = *(a1 + 18);
    v23 = a2 - 72;
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v104 = *(a1 + 104);
        v119 = *(a1 + 120);
        v134 = *(a1 + 17);
        v74 = *v5;
        v89 = *(a1 + 88);
        v34 = a1[12];
        *(a1 + 104) = a1[11];
        *(a1 + 120) = v34;
        *(a1 + 17) = *(a1 + 26);
        v35 = a1[10];
        *v5 = *v21;
        *(a1 + 88) = v35;
        *(a1 + 26) = v134;
        a1[11] = v104;
        a1[12] = v119;
        *v21 = v74;
        a1[10] = v89;
        if (*v5 < v24)
        {
          v105 = a1[2];
          v120 = a1[3];
          v135 = *(a1 + 8);
          v75 = *a1;
          v90 = a1[1];
          v36 = *(a1 + 120);
          a1[2] = *(a1 + 104);
          a1[3] = v36;
          *(a1 + 8) = *(a1 + 17);
          v37 = *(a1 + 88);
          *a1 = *v5;
          a1[1] = v37;
          *(a1 + 17) = v135;
          *(a1 + 104) = v105;
          *(a1 + 120) = v120;
          *v5 = v75;
          *(a1 + 88) = v90;
        }
      }

      goto LABEL_47;
    }

    if (v22 >= v20)
    {
      v109 = a1[2];
      v124 = a1[3];
      v138 = *(a1 + 8);
      v79 = *a1;
      v94 = a1[1];
      v57 = *(a1 + 120);
      a1[2] = *(a1 + 104);
      a1[3] = v57;
      *(a1 + 8) = *(a1 + 17);
      v58 = *(a1 + 88);
      *a1 = *v5;
      a1[1] = v58;
      *(a1 + 17) = v138;
      *(a1 + 104) = v109;
      *(a1 + 120) = v124;
      *v5 = v79;
      *(a1 + 88) = v94;
      if (v22 >= *(a1 + 9))
      {
        goto LABEL_47;
      }

      v100 = *(a1 + 104);
      v115 = *(a1 + 120);
      v130 = *(a1 + 17);
      v70 = *v5;
      v85 = *(a1 + 88);
      v59 = a1[12];
      *(a1 + 104) = a1[11];
      *(a1 + 120) = v59;
      *(a1 + 17) = *(a1 + 26);
      v60 = a1[10];
      *v5 = *v21;
      *(a1 + 88) = v60;
    }

    else
    {
      v100 = a1[2];
      v115 = a1[3];
      v130 = *(a1 + 8);
      v70 = *a1;
      v85 = a1[1];
      v25 = a1[12];
      a1[2] = a1[11];
      a1[3] = v25;
      *(a1 + 8) = *(a1 + 26);
      v26 = a1[10];
      *a1 = *v21;
      a1[1] = v26;
    }

    *(a1 + 26) = v130;
    a1[11] = v100;
    a1[12] = v115;
    *v21 = v70;
    a1[10] = v85;
LABEL_47:
    if (*v23 >= *v21)
    {
      return 1;
    }

    v110 = a1[11];
    v125 = a1[12];
    v139 = *(a1 + 26);
    v80 = *v21;
    v95 = a1[10];
    *v21 = *v23;
    v62 = *(a2 - 40);
    v61 = *(a2 - 24);
    v63 = *(a2 - 56);
    *(a1 + 26) = *(a2 - 1);
    a1[11] = v62;
    a1[12] = v61;
    a1[10] = v63;
    *(a2 - 1) = v139;
    *(a2 - 40) = v110;
    *(a2 - 24) = v125;
    *v23 = v80;
    *(a2 - 56) = v95;
    if (*v21 >= *v5)
    {
      return 1;
    }

    v111 = *(a1 + 104);
    v126 = *(a1 + 120);
    v140 = *(a1 + 17);
    v81 = *v5;
    v96 = *(a1 + 88);
    v64 = a1[12];
    *(a1 + 104) = a1[11];
    *(a1 + 120) = v64;
    *(a1 + 17) = *(a1 + 26);
    v65 = a1[10];
    *v5 = *v21;
    *(a1 + 88) = v65;
    *(a1 + 26) = v140;
    a1[11] = v111;
    a1[12] = v126;
    *v21 = v81;
    a1[10] = v96;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 9);
    v3 = a2 - 72;
    if (v4 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = a1 + 9;
  v14 = *(a1 + 18);
  v15 = (a1 + 72);
  v16 = *(a1 + 9);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v102 = *(a1 + 104);
      v117 = *(a1 + 120);
      v132 = *(a1 + 17);
      v72 = *v15;
      v87 = *(a1 + 88);
      v30 = a1[12];
      *(a1 + 104) = a1[11];
      *(a1 + 120) = v30;
      *(a1 + 17) = *(a1 + 26);
      v31 = a1[10];
      *v15 = *v13;
      *(a1 + 88) = v31;
      *(a1 + 26) = v132;
      a1[11] = v102;
      a1[12] = v117;
      *v13 = v72;
      a1[10] = v87;
      if (*v15 < v17)
      {
        v103 = a1[2];
        v118 = a1[3];
        v133 = *(a1 + 8);
        v73 = *a1;
        v88 = a1[1];
        v32 = *(a1 + 120);
        a1[2] = *(a1 + 104);
        a1[3] = v32;
        *(a1 + 8) = *(a1 + 17);
        v33 = *(a1 + 88);
        *a1 = *v15;
        a1[1] = v33;
        *(a1 + 17) = v133;
        *(a1 + 104) = v103;
        *(a1 + 120) = v118;
        *v15 = v73;
        *(a1 + 88) = v88;
      }
    }
  }

  else
  {
    if (v14 >= v16)
    {
      v107 = a1[2];
      v122 = a1[3];
      v137 = *(a1 + 8);
      v77 = *a1;
      v92 = a1[1];
      v43 = *(a1 + 120);
      a1[2] = *(a1 + 104);
      a1[3] = v43;
      *(a1 + 8) = *(a1 + 17);
      v44 = *(a1 + 88);
      *a1 = *v15;
      a1[1] = v44;
      *(a1 + 17) = v137;
      *(a1 + 104) = v107;
      *(a1 + 120) = v122;
      *v15 = v77;
      *(a1 + 88) = v92;
      if (v14 >= *(a1 + 9))
      {
        goto LABEL_33;
      }

      v99 = *(a1 + 104);
      v114 = *(a1 + 120);
      v129 = *(a1 + 17);
      v69 = *v15;
      v84 = *(a1 + 88);
      v45 = a1[12];
      *(a1 + 104) = a1[11];
      *(a1 + 120) = v45;
      *(a1 + 17) = *(a1 + 26);
      v46 = a1[10];
      *v15 = *v13;
      *(a1 + 88) = v46;
    }

    else
    {
      v99 = a1[2];
      v114 = a1[3];
      v129 = *(a1 + 8);
      v69 = *a1;
      v84 = a1[1];
      v18 = a1[12];
      a1[2] = a1[11];
      a1[3] = v18;
      *(a1 + 8) = *(a1 + 26);
      v19 = a1[10];
      *a1 = *v13;
      a1[1] = v19;
    }

    *(a1 + 26) = v129;
    a1[11] = v99;
    a1[12] = v114;
    *v13 = v69;
    a1[10] = v84;
  }

LABEL_33:
  v47 = (a1 + 216);
  if (a1 + 216 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v13;
    v51 = *v47;
    if (*v47 < v50)
    {
      v78 = *(v47 + 8);
      v93 = *(v47 + 24);
      v108 = *(v47 + 40);
      v123 = *(v47 + 56);
      v52 = v48;
      while (1)
      {
        v53 = a1 + v52;
        v54 = *(a1 + v52 + 144);
        *(v53 + 232) = *(a1 + v52 + 160);
        v55 = *(a1 + v52 + 192);
        *(v53 + 248) = *(a1 + v52 + 176);
        *(a1 + v52 + 264) = v55;
        *(v53 + 280) = *(a1 + v52 + 208);
        *(v53 + 216) = v54;
        if (v52 == -144)
        {
          break;
        }

        v52 -= 72;
        if (v51 >= *(v53 + 72))
        {
          v56 = a1 + v52 + 216;
          goto LABEL_41;
        }
      }

      v56 = a1;
LABEL_41:
      *v56 = v51;
      *(v56 + 8) = v78;
      *(v56 + 24) = v93;
      *(v56 + 40) = v108;
      *(v56 + 56) = v123;
      if (++v49 == 8)
      {
        return v47 + 72 == a2;
      }
    }

    v13 = v47;
    v48 += 72;
    v47 = (v47 + 72);
    if (v47 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *,AOTImage *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 73)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[72 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(a1, a4, v9, v12);
        v12 -= 9;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1)
        {
          v37 = *(v13 + 2);
          v39 = *(v13 + 3);
          v41 = *(v13 + 8);
          v33 = *v13;
          v35 = *(v13 + 1);
          *v13 = *a1;
          v15 = *(a1 + 2);
          v14 = *(a1 + 3);
          v16 = *(a1 + 1);
          *(v13 + 8) = *(a1 + 8);
          *(v13 + 2) = v15;
          *(v13 + 3) = v14;
          *(v13 + 1) = v16;
          *(a1 + 8) = v41;
          *(a1 + 2) = v37;
          *(a1 + 3) = v39;
          *a1 = v33;
          *(a1 + 1) = v35;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(a1, a4, v9, a1);
        }

        v13 += 72;
      }

      while (v13 != a3);
    }

    if (v8 >= 73)
    {
      v17 = 0x8E38E38E38E38E39 * (v8 >> 3);
      do
      {
        v18 = 0;
        v38 = *(a1 + 2);
        v40 = *(a1 + 3);
        v42 = *(a1 + 8);
        v34 = *a1;
        v36 = *(a1 + 1);
        v19 = a1;
        do
        {
          v20 = &v19[72 * v18];
          v21 = v20 + 72;
          v22 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 >= v17)
          {
            v18 = v22;
          }

          else
          {
            v24 = *(v20 + 18);
            v23 = v20 + 144;
            if (*(v23 - 9) >= v24)
            {
              v18 = v22;
            }

            else
            {
              v21 = v23;
            }
          }

          *v19 = *v21;
          v25 = *(v21 + 1);
          v26 = *(v21 + 2);
          v27 = *(v21 + 3);
          *(v19 + 8) = *(v21 + 8);
          *(v19 + 2) = v26;
          *(v19 + 3) = v27;
          *(v19 + 1) = v25;
          v19 = v21;
        }

        while (v18 <= ((v17 - 2) >> 1));
        v6 -= 72;
        if (v21 == v6)
        {
          *v21 = v34;
          *(v21 + 8) = v42;
          *(v21 + 2) = v38;
          *(v21 + 3) = v40;
          *(v21 + 1) = v36;
        }

        else
        {
          *v21 = *v6;
          v28 = *(v6 + 1);
          v29 = *(v6 + 2);
          v30 = *(v6 + 3);
          *(v21 + 8) = *(v6 + 8);
          *(v21 + 2) = v29;
          *(v21 + 3) = v30;
          *(v21 + 1) = v28;
          *(v6 + 2) = v38;
          *(v6 + 3) = v40;
          *(v6 + 8) = v42;
          *v6 = v34;
          *(v6 + 1) = v36;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(a1, (v21 + 72), a4, 0x8E38E38E38E38E39 * ((v21 + 72 - a1) >> 3));
        }
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0x8E38E38E38E38E39 * ((a4 - a1) >> 3)))
    {
      v5 = (0x1C71C71C71C71C72 * ((a4 - a1) >> 3)) | 1;
      v6 = a1 + 72 * v5;
      if (0x1C71C71C71C71C72 * ((a4 - a1) >> 3) + 2 >= a3)
      {
        v7 = *v6;
      }

      else
      {
        v7 = *(v6 + 72);
        v8 = *v6 >= v7;
        if (*v6 > v7)
        {
          v7 = *v6;
        }

        if (!v8)
        {
          v6 += 72;
          v5 = 0x1C71C71C71C71C72 * ((a4 - a1) >> 3) + 2;
        }
      }

      v9 = *a4;
      if (v7 >= *a4)
      {
        v18 = *(a4 + 1);
        v19 = *(a4 + 3);
        v20 = *(a4 + 5);
        v21 = *(a4 + 7);
        do
        {
          v10 = a4;
          a4 = v6;
          *v10 = *v6;
          v11 = *(v6 + 16);
          v12 = *(v6 + 32);
          v13 = *(v6 + 48);
          v10[8] = *(v6 + 64);
          *(v10 + 2) = v12;
          *(v10 + 3) = v13;
          *(v10 + 1) = v11;
          if (v4 < v5)
          {
            break;
          }

          v14 = (2 * v5) | 1;
          v6 = a1 + 72 * v14;
          v5 = 2 * v5 + 2;
          if (v5 >= a3)
          {
            v15 = *v6;
            v5 = v14;
          }

          else
          {
            v15 = *(v6 + 72);
            v16 = *v6 >= v15;
            if (*v6 > v15)
            {
              v15 = *v6;
            }

            if (v16)
            {
              v5 = v14;
            }

            else
            {
              v6 += 72;
            }
          }
        }

        while (v15 >= v9);
        *a4 = v9;
        result = v18;
        *(a4 + 7) = v21;
        *(a4 + 5) = v20;
        *(a4 + 3) = v19;
        *(a4 + 1) = v18;
      }
    }
  }

  return result;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AOTImage *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = a1 + 72 * (v4 >> 1);
    v7 = a2 - 72;
    v8 = *(a2 - 72);
    if (*v6 < v8)
    {
      v14 = *(a2 - 64);
      v15 = *(a2 - 48);
      v16 = *(a2 - 32);
      v17 = *(a2 - 16);
      do
      {
        v9 = v7;
        v7 = v6;
        *v9 = *v6;
        v10 = *(v6 + 16);
        v11 = *(v6 + 32);
        v12 = *(v6 + 48);
        *(v9 + 64) = *(v6 + 64);
        *(v9 + 32) = v11;
        *(v9 + 48) = v12;
        *(v9 + 16) = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 72 * v5;
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 8) = v14;
      *(v7 + 24) = v15;
      result = v16;
      *(v7 + 40) = v16;
      *(v7 + 56) = v17;
    }
  }

  return result;
}

__n128 std::vector<AOTImage>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryImageInformation>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<_CSBinaryRelocationInformation>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<_CSBinaryRelocationInformation>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<_CSBinaryRelocationInformation>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<_CSBinaryRelocationInformation>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<std::vector<_CSBinaryRelocationInformation>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<_CSBinaryRelocationInformation>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<_CSBinaryRelocationInformation>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *Process::findRangeEntryForAddress<std::vector<AOTImage>>(uint64_t a1, void *a2, unint64_t a3)
{
  result = a2[1];
  v4 = result;
  if (result != *a2)
  {
    v5 = 0x8E38E38E38E38E39 * ((result - *a2) >> 3);
    v4 = *a2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[9 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 9;
      v5 += ~(v5 >> 1);
      if (v9 > a3)
      {
        v5 = v6;
      }

      else
      {
        v4 = v8;
      }
    }

    while (v5);
  }

  if (v4 != *a2)
  {
    v10 = *(v4 - 9);
    if (v10 <= a3 && *(v4 - 8) + v10 > a3)
    {
      return v4 - 9;
    }
  }

  return result;
}

void std::vector<AOTImage>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AOTImage>>(a1, v13);
    }

    v14 = 72 * v10;
    *v14 = *a2;
    v15 = *(a2 + 16);
    v16 = *(a2 + 32);
    v17 = *(a2 + 48);
    *(v14 + 64) = *(a2 + 64);
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    v9 = 72 * v10 + 72;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v6;
    v9 = v4 + 72;
  }

  *(a1 + 8) = v9;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AOTImage>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_OWORD *std::vector<ProcessLibrary>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ProcessLibrary>::__emplace_back_slow_path<ProcessLibrary>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v3 + 2;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<ProcessLibrary>::__emplace_back_slow_path<ProcessLibrary>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ProcessLibrary>>(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  v8[1] = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = (32 * v2 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ProcessLibrary>,ProcessLibrary*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ProcessLibrary>::~__split_buffer(&v15);
  return v14;
}

void sub_240F8BA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ProcessLibrary>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ProcessLibrary>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ProcessLibrary>,ProcessLibrary*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[1] = *(v6 + 16);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 2;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 24);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ProcessLibrary>,ProcessLibrary*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ProcessLibrary>,ProcessLibrary*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ProcessLibrary>,ProcessLibrary*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ProcessLibrary>,ProcessLibrary*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 32;
  }
}

void **std::__split_buffer<ProcessLibrary>::~__split_buffer(void **a1)
{
  std::__split_buffer<ProcessLibrary>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ProcessLibrary>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ProcessLibrary *,ProcessLibrary *,ProcessLibrary *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v8 = *(a4 + 24);
      *(a4 + 16) = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void ___ZNK14ProcessLibrary14forEachSegmentIZN7Process50createTransientProcessSymbolicatorFromDescriptionsEvE3__0EEvT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    Range = CSRegionGetRange();
    v6 = v5;
    Name = CSRegionGetName();
    if (strncmp(Name, "__PAGEZERO", 0xAuLL))
    {
      Range += a1[6];
    }

    *&v35 = Range;
    *(&v35 + 1) = Range + v6;
    v8 = strlen(Name);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v8)
    {
      memmove(&__dst, Name, v8);
    }

    __dst.__r_.__value_.__s.__data_[v9] = 0;
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v11 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v12 = __dst.__r_.__value_.__r.__words[0];
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size >= 8)
    {
      v14 = p_dst + size;
      v15 = p_dst;
      do
      {
        v16 = memchr(v15, 32, size - 7);
        if (!v16)
        {
          break;
        }

        if (*v16 == 0x544E454D47455320)
        {
          if (v16 != v14 && v16 - p_dst != -1)
          {
            std::string::erase(&__dst, v16 - p_dst, 8uLL);
            v11 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            v12 = __dst.__r_.__value_.__r.__words[0];
          }

          break;
        }

        v15 = (v16 + 1);
        size = v14 - v15;
      }

      while (v14 - v15 >= 8);
    }

    if (v11 >= 0)
    {
      v17 = &__dst;
    }

    else
    {
      v17 = v12;
    }

    strncpy(&v36, v17, 0x11uLL);
    v18 = a1[5];
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    if (v19 >= v20)
    {
      v24 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - *v18) >> 3);
      v25 = v24 + 1;
      if (v24 + 1 > 0x666666666666666)
      {
        std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
      }

      v26 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - *v18) >> 3);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x333333333333333)
      {
        v27 = 0x666666666666666;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>(v18, v27);
      }

      v28 = 40 * v24;
      v29 = v35;
      v30 = v36;
      *(v28 + 32) = v37;
      *v28 = v29;
      *(v28 + 16) = v30;
      v23 = 40 * v24 + 40;
      v31 = *(v18 + 8) - *v18;
      v32 = 40 * v24 - v31;
      memcpy((v28 - v31), *v18, v31);
      v33 = *v18;
      *v18 = v32;
      *(v18 + 8) = v23;
      *(v18 + 16) = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      v21 = v35;
      v22 = v36;
      *(v19 + 32) = v37;
      *v19 = v21;
      *(v19 + 16) = v22;
      v23 = v19 + 40;
    }

    *(v18 + 8) = v23;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void sub_240F8BF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProcessLibrary::ProcessLibrary(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *result = a2;
  v3 = *(result + 16);
  if (v3)
  {
    *(result + 8) = *(v3 + 8);
  }

  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *result = a2;
  v3 = *(result + 16);
  if (v3)
  {
    *(result + 8) = *(v3 + 8);
  }

  return result;
}

SharedLibrary *ProcessLibrary::slide(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    v3 = *this;
    return (v3 - SharedLibrary::baseAddress(result));
  }

  return result;
}

SharedLibrary *ProcessLibrary::architecture(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    return SharedLibrary::architecture(result);
  }

  return result;
}

SharedLibrary *ProcessLibrary::path@<X0>(uint64_t *__return_ptr a1@<X8>, ProcessLibrary *this@<X0>)
{
  result = *(this + 2);
  if (result)
  {
    return SharedLibrary::path(a1, result);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  return result;
}

SharedLibrary *ProcessLibrary::addAddress(ProcessLibrary *this, uint64_t a2)
{
  result = *(this + 2);
  if (result)
  {
    v4 = *this;
    v5 = a2 - v4 + SharedLibrary::baseAddress(result);
    v6 = *(this + 2);

    return SharedLibrary::addAddress(v6, v5);
  }

  return result;
}

SharedLibrary *ProcessLibrary::uuid(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    return SharedLibrary::uuid(result);
  }

  return result;
}

SharedLibrary *ProcessLibrary::isInSharedCacheCheckAfterPostprocessingDone(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    SharedLibrary::csSymbolOwner(result);
    return CSSymbolOwnerIsDyldSharedCache();
  }

  return result;
}

SharedLibrary *ProcessLibrary::isPrimaryExecutableCheckAfterPostprocessingDone(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    SharedLibrary::csSymbolOwner(result);
    return CSSymbolOwnerIsAOut();
  }

  return result;
}

SharedLibrary *ProcessLibrary::segmentCountCheckAfterPostprocessingDone(ProcessLibrary *this)
{
  result = *(this + 2);
  if (result)
  {
    SharedLibrary::csSymbolOwner(result);
    return CSSymbolOwnerForeachSegment();
  }

  return result;
}

double MergedLibrary::mergeWith(MergedLibrary *this, const LibraryDescription *a2)
{
  v4 = *(this + 2);
  v5 = *(this + 6);
  LibraryDescription::libraryRange(a2);
  if ((v5 & 1) == 0 || (v4 <= 1 ? (v7 = v6 >= 2) : (v7 = 0), v7))
  {
    *(this + 2) = v6;
    *(this + 24) = 1;
  }

  v8 = *(this + 48);
  LibraryDescription::path(&v10, a2);
  if ((v8 & 1) == 0 && v11 == 1)
  {
    result = *&v10;
    *(this + 2) = v10;
    *(this + 48) = v11;
  }

  return result;
}

__n128 MergedLibrary::path@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[2];
  *a2 = result;
  a2[1].n128_u64[0] = this[3].n128_u64[0];
  return result;
}

uint64_t Segment::initializeWithCSSegment(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = CSRegionGetRange();
  a1[1] = v4;
  Name = CSRegionGetName();
  if (Name)
  {
    v6 = Name;
  }

  else
  {
    v6 = &unk_240FA3A2E;
  }

  v7 = strlen(v6);
  a1[2] = v6;
  a1[3] = v7;
  CSSegmentForeachSection();
  return CSRegionForeachSymbol();
}

void ___ZN7Segment23initializeWithCSSegmentE10_CSTypeRef_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = v4[5];
  v5 = v4[6];
  if (v6 >= v5)
  {
    v8 = v4[4];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 4);
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Section>>((v4 + 4), v12);
    }

    v13 = Section::Section(48 * v9, a2, a3);
    v7 = v13 + 48;
    v14 = v4[4];
    v15 = v4[5] - v14;
    v16 = v13 - v15;
    memcpy((v13 - v15), v14, v15);
    v17 = v4[4];
    v4[4] = v16;
    v4[5] = v7;
    v4[6] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    Section::Section(v4[5], a2, a3);
    v7 = v6 + 48;
    v4[5] = v6 + 48;
  }

  v4[5] = v7;
}

void sub_240F8C538(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN7Segment23initializeWithCSSegmentE10_CSTypeRef_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = v3[8];
  if (v4 >= v3[9])
  {
    result = std::vector<Symbol>::__emplace_back_slow_path<_CSTypeRef &>(v3 + 7, v6);
  }

  else
  {
    Symbol::Symbol(v3[8], a2, a3);
    result = v4 + 128;
    v3[8] = v4 + 128;
  }

  v3[8] = result;
  return result;
}

uint64_t Segment::debug(Segment *this)
{
  printf("Segment @ 0x%llx - 0x%llx: ", *this, *(this + 1) + *this);
  if (*(this + 3))
  {
    v2 = *(this + 2);
  }

  else
  {
    v2 = "<null>";
  }

  result = puts(v2);
  v4 = *(this + 4);
  v5 = *(this + 5);
  while (v4 != v5)
  {
    result = Section::debug(v4);
    v4 = (v4 + 48);
  }

  v7 = *(this + 7);
  v6 = *(this + 8);
  while (v7 != v6)
  {
    result = Symbol::debug(v7);
    v7 = (v7 + 128);
  }

  return result;
}

uint64_t Segment::Segment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  Segment::initializeWithCSSegment(a1, a2, a3);
  return a1;
}

void sub_240F8C69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v10 + 56;
  std::vector<Symbol>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 + 32);
  if (v12)
  {
    *(v10 + 40) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Section>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<Symbol>::__emplace_back_slow_path<_CSTypeRef &>(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Symbol>>(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 7;
  v16 = (v2 << 7);
  Symbol::Symbol(v2 << 7, *a2, a2[1]);
  *&v16 = (v2 << 7) + 128;
  v8 = a1[1];
  v9 = (v2 << 7) + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Symbol>,Symbol*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Symbol>::~__split_buffer(&v14);
  return v13;
}

void sub_240F8C820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<Symbol>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Symbol>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Symbol>,Symbol*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 120) = *(v6 + 120);
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      v6 += 128;
      a4 += 128;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<Symbol,0>(v5);
      v5 += 128;
    }
  }
}

void std::__destroy_at[abi:ne200100]<Symbol,0>(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 80);
  std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 160;
        v7 = (v4 - 80);
        std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<Symbol>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    std::__destroy_at[abi:ne200100]<Symbol,0>(i - 128);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Symbol>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 128;
        std::__destroy_at[abi:ne200100]<Symbol,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t InlineSymbol::asmName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 40);
  if (v2)
  {
    *a2 = *(this + 32);
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 16) = v2;
  return this;
}

uint64_t InlineSymbol::name@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 24))
  {
    v2 = *(this + 16);
  }

  else
  {
    v3 = *(this + 40);
    if (!v3)
    {
      *a2 = 0;
      goto LABEL_6;
    }

    v2 = *(this + 32);
  }

  *a2 = v2;
  LOBYTE(v3) = 1;
LABEL_6:
  a2[16] = v3;
  return this;
}

uint64_t InlineSymbol::initializeWithCSSymbolAndCSSourceInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = CSSymbolGetRange();
  *(a1 + 8) = v8;
  MangledName = CSSymbolGetMangledName();
  if (MangledName)
  {
    v10 = MangledName;
  }

  else
  {
    v10 = &unk_240FA3A2E;
  }

  v11 = strlen(v10);
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  Name = CSSymbolGetName();
  if (Name)
  {
    v13 = Name;
  }

  else
  {
    v13 = &unk_240FA3A2E;
  }

  v14 = strlen(v13);
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 64) = CSSymbolGetFlags();
  SourceInfo::SourceInfo(v17, a4, a5);
  v15 = v17[1];
  *(a1 + 104) = v17[0];
  *(a1 + 120) = v15;
  *(a1 + 136) = v17[2];
  *(a1 + 152) = v18;
  return CSSymbolForeachInlineRangeAtDepth();
}

uint64_t ___ZN12InlineSymbol37initializeWithCSSymbolAndCSSourceInfoE10_CSTypeRefS0__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = *(result + 32);
    v7 = 16 * a6 - 16;
    v8 = *(a4 + v7);
    v10 = *(a5 + v7);
    v11 = v8;
    v9 = v6[11];
    if (v9 >= v6[12])
    {
      result = std::vector<InlineSymbol>::__emplace_back_slow_path<_CSTypeRef &,_CSTypeRef &>(v6 + 10, &v11, &v10);
    }

    else
    {
      InlineSymbol::InlineSymbol(v6[11], v11, *(&v11 + 1), v10, *(&v10 + 1));
      result = v9 + 160;
      v6[11] = v9 + 160;
    }

    v6[11] = result;
  }

  return result;
}

uint64_t InlineSymbol::debug(InlineSymbol *this)
{
  printf("\t\tInline Symbol @ 0x%llx - 0x%llx: ", *this, *(this + 1) + *this);
  if (*(this + 3))
  {
    v2 = *(this + 2);
    if (!*(this + 5))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 5))
  {
    v2 = *(this + 4);
LABEL_6:
    v3 = *(this + 4);
    printf("%s | ", v2);
    v2 = v3;
LABEL_7:
    printf("%s | ", v2);
  }

  putchar(10);
  result = SourceInfo::debug((this + 104));
  v6 = *(this + 10);
  v5 = *(this + 11);
  while (v6 != v5)
  {
    result = InlineSymbol::debug(v6);
    v6 = (v6 + 160);
  }

  return result;
}

uint64_t InlineSymbol::InlineSymbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  InlineSymbol::initializeWithCSSymbolAndCSSourceInfo(a1, a2, a3, a4, a5);
  return a1;
}

void sub_240F8CE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<InlineSymbol>::__emplace_back_slow_path<_CSTypeRef &,_CSTypeRef &>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v4 = v3 + 1;
  if (v3 + 1 > 0x199999999999999)
  {
    std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v7 = 0x199999999999999;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<InlineSymbol>>(a1, v7);
  }

  v14 = 0;
  v15 = 160 * v3;
  v16 = 160 * v3;
  InlineSymbol::InlineSymbol(160 * v3, *a2, a2[1], *a3, a3[1]);
  *&v16 = 160 * v3 + 160;
  v8 = a1[1];
  v9 = 160 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<InlineSymbol>,InlineSymbol*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<InlineSymbol>::~__split_buffer(&v14);
  return v13;
}

void sub_240F8CF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<InlineSymbol>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<InlineSymbol>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<InlineSymbol>,InlineSymbol*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v16 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  if (a2 == a3)
  {
    v15 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      v10 = *(v6 + 104);
      v11 = *(v6 + 120);
      v12 = *(v6 + 136);
      *(a4 + 152) = *(v6 + 152);
      *(a4 + 136) = v12;
      *(a4 + 120) = v11;
      *(a4 + 104) = v10;
      v6 += 160;
      a4 += 160;
    }

    while (v6 != a3);
    v17 = a4;
    v15 = 1;
    while (v5 != a3)
    {
      v18 = (v5 + 80);
      std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v18);
      v5 += 160;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<InlineSymbol>,InlineSymbol*>>::~__exception_guard_exceptions[abi:ne200100](v14);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<InlineSymbol>,InlineSymbol*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<InlineSymbol>,InlineSymbol*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<InlineSymbol>,InlineSymbol*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 160;
      v4 = (v1 - 80);
      std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<InlineSymbol>::~__split_buffer(void **a1)
{
  std::__split_buffer<InlineSymbol>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<InlineSymbol>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    v4 = (i - 80);
    std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

__n128 DyldKdebugAOTImageDescription::consumeTracepointA(__n128 *a1, uint64_t a2)
{
  result = *(a2 + 8);
  *a1 = result;
  a1[1].n128_u64[0] = *(a2 + 24);
  return result;
}

void *DyldKdebugAOTImageDescription::consumeTracepointB(void *result, void *a2)
{
  result[3] = a2[1];
  result[4] = a2[2];
  result[5] = a2[3];
  result[6] = a2[4];
  return result;
}

uint64_t *KernelSymbolicator::kernelSymbolicatorPtr(KernelSymbolicator *this)
{
  if ((atomic_load_explicit(byte_27E51E2D8, memory_order_acquire) & 1) == 0)
  {
    KernelSymbolicator::kernelSymbolicatorPtr();
  }

  if (atomic_load_explicit(&KernelSymbolicator::kernelSymbolicatorPtr(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&KernelSymbolicator::kernelSymbolicatorPtr(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<KernelSymbolicator::kernelSymbolicatorPtr(void)::$_0 &&>>);
  }

  return &_MergedGlobals;
}

uint64_t KernelSymbolicator::sharedKernelSymbolicator(KernelSymbolicator *this)
{
  KernelSymbolicator::kernelSymbolicatorPtr(this);
  if (_MergedGlobals)
  {
    return *_MergedGlobals;
  }

  else
  {
    return 0;
  }
}

void *std::unique_ptr<ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>::~ScopeGuard(result);

    JUMPOUT(0x245CD5830);
  }

  return result;
}

void *ScopeGuard<_CSTypeRef,ScopeGuardPolicy<_CSTypeRef>>::~ScopeGuard(void *a1)
{
  if ((CSIsNull() & 1) == 0)
  {
    CSRelease();
  }

  return a1;
}

BOOL should_prewarm_symbolicators(uint64_t a1, uint64_t a2)
{
  if (should_prewarm_symbolicators(void)::onceToken != -1)
  {
    should_prewarm_symbolicators();
  }

  return (should_prewarm_symbolicators(void)::should_prewarm & 1) == 0;
}

uint64_t ___Z28should_prewarm_symbolicatorsv_block_invoke()
{
  v2 = 8;
  v3 = 0;
  result = sysctlbyname("hw.memsize_physical", &v3, &v2, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = HIDWORD(v3) == 0;
  }

  if (!v1)
  {
    should_prewarm_symbolicators(void)::should_prewarm = 1;
  }

  return result;
}

void ats_will_start_tracing(SharedCacheSymbolicators *result, uint64_t a2)
{
  if (should_prewarm_symbolicators(void)::onceToken != -1)
  {
    should_prewarm_symbolicators();
  }

  if ((should_prewarm_symbolicators(void)::should_prewarm & 1) == 0)
  {
    v2 = SharedCacheSymbolicators::initializeSharedCacheSymbolicators(result);

    KernelSymbolicator::initializeKernelSymbolicator(v2);
  }
}

SharedCacheSymbolicators *ats_configure_postprocessing_with_config(SharedCacheSymbolicators *result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!a2)
  {
    result = get_symbolication_session(0);
    if (!get_symbolication_session(ats_symbolication_config *)::session)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (*(a2 + 8) == 1)
  {
    ktrace_set_execnames_enabled();
  }

  result = get_symbolication_session(a2);
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {
    if (*(a2 + 8) == 1)
    {
LABEL_13:
      SymbolicationSession::setKtraceSession(get_symbolication_session(ats_symbolication_config *)::session, v3);
      v5 = get_symbolication_session(ats_symbolication_config *)::session;

      return SymbolicationSession::registerKtraceCallbacks(v5);
    }

LABEL_9:
    if (should_prewarm_symbolicators(void)::onceToken != -1)
    {
      should_prewarm_symbolicators();
    }

    if (should_prewarm_symbolicators(void)::should_prewarm == 1)
    {
      v4 = SharedCacheSymbolicators::initializeSharedCacheSymbolicators(result);
      KernelSymbolicator::initializeKernelSymbolicator(v4);
    }

    goto LABEL_13;
  }

  return result;
}

SymbolicationSession *ats_symbolication_enabled()
{
  get_symbolication_session(0);
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {

    return SymbolicationSession::isConfiguredToSaveSymbols(result);
  }

  return result;
}

SymbolicationSession *ats_configure_postprocessing_with_additional_address(int a1, unint64_t a2)
{
  get_symbolication_session(0);
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {

    return SymbolicationSession::learnAddressForPid(result, a1, a2);
  }

  return result;
}

uint64_t get_symbolication_session(uint64_t a1)
{
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (!get_symbolication_session(ats_symbolication_config *)::session)
  {
    operator new();
  }

  if (a1)
  {

    return SymbolicationSession::updateConfig(result, a1);
  }

  return result;
}

uint64_t ats_postprocessing_complete(uint64_t a1)
{
  get_symbolication_session(0);
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {
    SymbolicationSession::writeSymbolDataToKtraceFile(get_symbolication_session(ats_symbolication_config *)::session, a1);
  }

  return destroy_symbolication_session();
}

uint64_t destroy_symbolication_session(void)
{
  get_symbolication_session(0);
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {
    SymbolicationSession::~SymbolicationSession(get_symbolication_session(ats_symbolication_config *)::session);
    result = MEMORY[0x245CD5830]();
    get_symbolication_session(ats_symbolication_config *)::session = 0;
  }

  return result;
}

uint64_t ats_postprocessing_complete_write_processmaps(uint64_t a1)
{
  get_symbolication_session(0);
  result = get_symbolication_session(ats_symbolication_config *)::session;
  if (get_symbolication_session(ats_symbolication_config *)::session)
  {
    SymbolicationSession::writeProcessMapsToKtraceFile(get_symbolication_session(ats_symbolication_config *)::session, a1);
    result = SymbolicationSession::isConfiguredToSaveSymbols(get_symbolication_session(ats_symbolication_config *)::session);
    if ((result & 1) == 0)
    {

      return destroy_symbolication_session();
    }
  }

  return result;
}

uint64_t ats_should_amend_with_file(uint64_t a1, uint64_t a2)
{
  get_symbolication_session(a2);
  v3 = get_symbolication_session(ats_symbolication_config *)::session;
  if (!get_symbolication_session(ats_symbolication_config *)::session)
  {
    return 1;
  }

  return SymbolicationSession::extractSymbolicationChunksFromFile(v3, a1);
}

uint64_t DyldKdebugSharedCacheDescription::consumeTracepointA(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 8);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  *(a1 + 16) = v4;
  DyldKdebugFilesystemInfo::setFsid((a1 + 40), v3);
  result = SharedCacheDescription::baseAddressForSharedCacheWithUUID(a1, *a1, *(a1 + 8));
  *(a1 + 24) = result;
  *(a1 + 32) = v6;
  return result;
}

int32x4_t DyldKdebugSharedCacheDescription::consumeTracepoint32A(int32x4_t *a1, uint64_t a2)
{
  result = vuzp1q_s32(*(a2 + 8), *(a2 + 24));
  *a1 = result;
  return result;
}

uint64_t DyldKdebugSharedCacheDescription::consumeTracepoint32B(uint64_t a1, void *a2)
{
  v4 = a2[2];
  *(a1 + 16) = a2[1];
  DyldKdebugFilesystemInfo::setFsid((a1 + 40), v4 | (a2[3] << 32));
  v5 = a2[4];

  return DyldKdebugFilesystemInfo::setFsobjId(a1 + 40, v5);
}

uint64_t DyldKdebugSharedCacheDescription::consumeTracepoint32C(uint64_t a1, uint64_t a2)
{
  v4 = DyldKdebugFilesystemInfo::fsobjId((a1 + 40));
  DyldKdebugFilesystemInfo::setFsid((a1 + 40), v4 | (*(a2 + 8) << 32));
  result = SharedCacheDescription::baseAddressForSharedCacheWithUUID(a1, *a1, *(a1 + 8));
  *(a1 + 24) = result;
  *(a1 + 32) = v6;
  return result;
}

void *DyldKdebugLibraryDescription::consumeTracepointA(_OWORD *a1, uint64_t a2)
{
  a1[1] = *(a2 + 8);
  LibraryDescription::setLocation(a1, *(a2 + 24));
  v4 = *(a2 + 32);

  return DyldKdebugFilesystemInfo::setFsid(a1 + 6, v4);
}

int32x4_t DyldKdebugLibraryDescription::consumeTracepoint32A(int32x4_t *a1, uint64_t a2)
{
  result = vuzp1q_s32(*(a2 + 8), *(a2 + 24));
  a1[1] = result;
  return result;
}

uint64_t DyldKdebugLibraryDescription::consumeTracepoint32B(void *a1, unint64_t *a2)
{
  LibraryDescription::setLocation(a1, a2[1]);
  DyldKdebugFilesystemInfo::setFsid(a1 + 6, a2[2] | (a2[3] << 32));
  v4 = a2[4];

  return DyldKdebugFilesystemInfo::setFsobjId((a1 + 6), v4);
}

uint64_t DyldKdebugLibraryDescription::consumeTracepoint32C(uint64_t a1, uint64_t a2)
{
  v3 = DyldKdebugFilesystemInfo::fsobjId((a1 + 48)) | (*(a2 + 8) << 32);

  return DyldKdebugFilesystemInfo::setFsobjId(a1 + 48, v3);
}

uint64_t Symbol::asmName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 40);
  if (v2)
  {
    *a2 = *(this + 32);
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 16) = v2;
  return this;
}

uint64_t Symbol::name@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 24))
  {
    v2 = *(this + 16);
  }

  else
  {
    v3 = *(this + 40);
    if (!v3)
    {
      *a2 = 0;
      goto LABEL_6;
    }

    v2 = *(this + 32);
  }

  *a2 = v2;
  LOBYTE(v3) = 1;
LABEL_6:
  a2[16] = v3;
  return this;
}

uint64_t Symbol::initializeWithCSSymbol(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = CSSymbolGetRange();
  a1[1] = v4;
  MangledName = CSSymbolGetMangledName();
  if (MangledName)
  {
    v6 = MangledName;
  }

  else
  {
    v6 = &unk_240FA3A2E;
  }

  v7 = strlen(v6);
  a1[4] = v6;
  a1[5] = v7;
  Name = CSSymbolGetName();
  if (Name)
  {
    v9 = Name;
  }

  else
  {
    v9 = &unk_240FA3A2E;
  }

  v10 = strlen(v9);
  a1[2] = v9;
  a1[3] = v10;
  a1[8] = CSSymbolGetFlags();
  CSSymbolForeachSourceInfo();
  return CSSymbolForeachInlineRangeAtDepth();
}

void ___ZN6Symbol22initializeWithCSSymbolE10_CSTypeRef_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = v4[14];
  v5 = v4[15];
  if (v6 >= v5)
  {
    v8 = v4[13];
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v8) >> 3);
    if ((v9 + 1) > 0x492492492492492)
    {
      std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v8) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x249249249249249)
    {
      v12 = 0x492492492492492;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SourceInfo>>((v4 + 13), v12);
    }

    v13 = SourceInfo::SourceInfo((56 * v9), a2, a3);
    v7 = v13 + 56;
    v14 = v4[13];
    v15 = v4[14] - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = v4[13];
    v4[13] = v16;
    v4[14] = v7;
    v4[15] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    SourceInfo::SourceInfo(v4[14], a2, a3);
    v7 = (v6 + 56);
    v4[14] = v6 + 56;
  }

  v4[14] = v7;
}

void sub_240F8DDB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6Symbol22initializeWithCSSymbolE10_CSTypeRef_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = *(result + 32);
    v7 = 16 * a6 - 16;
    v8 = *(a4 + v7);
    v10 = *(a5 + v7);
    v11 = v8;
    v9 = v6[11];
    if (v9 >= v6[12])
    {
      result = std::vector<InlineSymbol>::__emplace_back_slow_path<_CSTypeRef &,_CSTypeRef &>(v6 + 10, &v11, &v10);
    }

    else
    {
      InlineSymbol::InlineSymbol(v6[11], v11, *(&v11 + 1), v10, *(&v10 + 1));
      result = v9 + 160;
      v6[11] = v9 + 160;
    }

    v6[11] = result;
  }

  return result;
}

uint64_t Symbol::debug(Symbol *this)
{
  printf("\tSymbol @ 0x%llx - 0x%llx: ", *this, *(this + 1) + *this);
  if (*(this + 3))
  {
    v2 = *(this + 2);
    if (!*(this + 5))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 5))
  {
    v2 = *(this + 4);
LABEL_6:
    v3 = *(this + 4);
    printf("%s | ", v2);
    v2 = v3;
LABEL_7:
    printf("%s | ", v2);
  }

  result = putchar(10);
  v5 = *(this + 13);
  v6 = *(this + 14);
  while (v5 != v6)
  {
    result = SourceInfo::debug(v5);
    v5 = (v5 + 56);
  }

  v8 = *(this + 10);
  v7 = *(this + 11);
  while (v8 != v7)
  {
    result = InlineSymbol::debug(v8);
    v8 = (v8 + 160);
  }

  return result;
}

uint64_t Symbol::Symbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  Symbol::initializeWithCSSymbol(a1, a2, a3);
  return a1;
}

void sub_240F8DF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 104);
  if (v5)
  {
    *(v3 + 112) = v5;
    operator delete(v5);
  }

  std::vector<InlineSymbol>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SourceInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void StackshotLibraryDescription::StackshotLibraryDescription(LibraryDescription *a1, uint64_t a2)
{
  LibraryDescription::LibraryDescription(a1, *a2, *(a2 + 8), *(a2 + 16));
}

{
  LibraryDescription::LibraryDescription(a1, *a2, *(a2 + 8), *(a2 + 16));
}

void StackshotLibraryDescription::StackshotLibraryDescription(LibraryDescription *a1, unsigned int *a2)
{
  LibraryDescription::LibraryDescription(a1, *a2, *(a2 + 1), *(a2 + 3));
}

{
  LibraryDescription::LibraryDescription(a1, *a2, *(a2 + 1), *(a2 + 3));
}

kcdata_item_t Stackshot::consumeTaskContainer(Stackshot *this, kcdata_iter a2)
{
  item = a2.item;
  v117 = *MEMORY[0x277D85DE8];
  if (a2.item->type != 19 || a2.item[1].type != 2307)
  {
    return item;
  }

  v3 = this;
  v4 = 0;
  flags = a2.item->flags;
  v105 = -1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v97 = -1;
  __p = 0;
  v100 = 0;
  v101 = 0;
  LOBYTE(v111) = 0;
  v114 = 0;
  LOBYTE(v107) = 0;
  v110 = 0;
  while (1)
  {
    v5 = (item + item->size);
    type = v5[1].type;
    item = v5 + 1;
    v6 = type;
    v8 = (type & 0xFFFFFFF0) == 0x20 ? 17 : v6;
    if (v8 <= 2308)
    {
      break;
    }

    if (v8 != 2309)
    {
      if (v8 == 2312)
      {
        size = item->size;
        if (size != 32 || (item->flags & 0x8F) != 0)
        {
          v16 = item->flags & 0xF;
          v17 = size >= v16;
          v18 = size - v16;
          if (!v17)
          {
            v18 = 0;
          }

          if (v18 >= 0x20)
          {
            if (v114 == 1)
            {
              v114 = 0;
            }

            StackshotSharedCacheDescription::StackshotSharedCacheDescription(&v111, &item[1]);
            v114 = 1;
            *uu = SharedCacheDescription::uuid(v19);
            v116 = v20;
            p_Address = uu;
            v21 = std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(v3 + 20, uu, &std::piecewise_construct, &p_Address);
            Address = SharedCacheDescription::loadAddress(&v111);
            p_Address = &Address;
            v22 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v21 + 4, &Address);
            v23 = v113;
            v24 = v112;
            *(v22 + 3) = v111;
            *(v22 + 5) = v24;
            v22[7] = v23;
          }
        }
      }

      else if (v8 == 2351)
      {
        if (v110 == 1)
        {
          v110 = 0;
        }

        StackshotAOTSharedCacheDescription::StackshotAOTSharedCacheDescription(&v107, &item[1]);
        v110 = 1;
        *uu = AOTSharedCacheDescription::aotUuid(&v107);
        v116 = v9;
        p_Address = uu;
        v10 = std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(v3 + 25, uu, &std::piecewise_construct, &p_Address);
        Address = AOTSharedCacheDescription::x86LoadAddress(&v107);
        p_Address = &Address;
        v11 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v10 + 4, &Address);
        v12 = v109;
        v13 = v108;
        *(v11 + 3) = v107;
        *(v11 + 5) = v13;
        *(v11 + 7) = v12;
      }

      goto LABEL_79;
    }

    v105 = item[6].size;
    if ((v105 & 0x80000000) == 0)
    {
      v97 = *&item[1].type;
      if (v97 != -1)
      {
        v4 = item[1].flags;
        goto LABEL_79;
      }
    }

    v4 = 0;
    v105 = -1;
    v97 = -1;
LABEL_134:
    if (v8 == -242132755)
    {
      goto LABEL_135;
    }
  }

  if (v8 == 17)
  {
    v25 = item->flags;
    v26 = v25;
    if (!v25)
    {
      goto LABEL_78;
    }

    v95 = v4;
    v27 = &item[1];
    v28 = HIDWORD(v25);
    p_type = &item[1].type;
    v30 = &item[1];
    v96 = item;
    while (v28 != 48)
    {
      if (v28 == 57)
      {
        v32 = v100;
        if (v100 >= v101)
        {
          v35 = 0x6DB6DB6DB6DB6DB7 * ((v100 - __p) >> 3) + 1;
          if (v35 > 0x492492492492492)
          {
            std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v101 - __p) >> 3) > v35)
          {
            v35 = 0xDB6DB6DB6DB6DB6ELL * ((v101 - __p) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v101 - __p) >> 3)) >= 0x249249249249249)
          {
            v36 = 0x492492492492492;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAotImageDescription>>(&__p, v36);
          }

          StackshotAotImageDescription::StackshotAotImageDescription((8 * ((v100 - __p) >> 3)), v30);
          v33 = (v41 + 56);
          v42 = (v41 - (v100 - __p));
          memcpy(v42, __p, v100 - __p);
          v43 = __p;
          __p = v42;
          v100 = v33;
          v101 = 0;
          if (v43)
          {
            operator delete(v43);
          }

          item = v96;
        }

        else
        {
          StackshotAotImageDescription::StackshotAotImageDescription(v100, v30);
          v33 = (v32 + 56);
        }

        v100 = v33;
        goto LABEL_76;
      }

      if (v28 == 49)
      {
        v31 = v103;
        if (v103 < v104)
        {
          StackshotLibraryDescription::StackshotLibraryDescription(v103, v27);
          goto LABEL_42;
        }

        v39 = 0xAAAAAAAAAAAAAAABLL * ((v103 - v102) >> 4) + 1;
        if (v39 > 0x555555555555555)
        {
          std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v104 - v102) >> 4) > v39)
        {
          v39 = 0x5555555555555556 * ((v104 - v102) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v104 - v102) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v40 = 0x555555555555555;
        }

        else
        {
          v40 = v39;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotLibraryDescription>>(&v102, v40);
        }

        StackshotLibraryDescription::StackshotLibraryDescription((16 * ((v103 - v102) >> 4)), v27);
LABEL_73:
        v34 = (v44 + 48);
        v45 = (v44 - (v103 - v102));
        memcpy(v45, v102, v103 - v102);
        v46 = v102;
        v102 = v45;
        v103 = v34;
        v104 = 0;
        if (v46)
        {
          operator delete(v46);
        }

        goto LABEL_75;
      }

LABEL_76:
      ++v30;
      p_type += 5;
      v27 += 24;
      if (!--v26)
      {
        v3 = this;
        v4 = v95;
LABEL_78:
        v8 = 17;
LABEL_79:
        if (v97 != -1 && (v105 & 0x80000000) == 0)
        {
          v48 = v102;
          v47 = v103;
          if (v102 != v103)
          {
            while (1)
            {
              *uu = LibraryDescription::uuid(v48);
              v116 = v49;
              if (uuid_is_null(uu))
              {
                break;
              }

              v48 = (v48 + 48);
              if (v48 == v47)
              {
                v48 = v47;
                goto LABEL_91;
              }
            }

            if (v48 != v47)
            {
              for (i = (v48 + 48); i != v47; i = (i + 48))
              {
                *uu = LibraryDescription::uuid(i);
                v116 = v51;
                if (!uuid_is_null(uu))
                {
                  v52 = *i;
                  v53 = *(i + 2);
                  *(v48 + 1) = *(i + 1);
                  *(v48 + 2) = v53;
                  *v48 = v52;
                  v48 = (v48 + 48);
                }
              }
            }

LABEL_91:
            if (v48 != v103)
            {
              v103 = v48;
            }

            std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__emplace_unique_key_args<int,int &,std::vector<StackshotLibraryDescription>>(v3, &v105, &v105, &v102);
            v103 = v102;
          }

          if (__p != v100)
          {
            std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__emplace_unique_key_args<int,int &,std::vector<StackshotLibraryDescription>>(v3 + 5, &v105, &v105, &__p);
            v100 = __p;
          }

          if ((v4 & 0x80000000) != 0 && v114 == 1)
          {
            *uu = &v105;
            v54 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v3 + 10, &v105, &std::piecewise_construct, uu);
            if ((v114 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v55 = v54;
            v56 = v54[4];
            v57 = v54[5];
            if (v56 >= v57)
            {
              v61 = v54[3];
              v62 = 0xCCCCCCCCCCCCCCCDLL * ((v56 - v61) >> 3);
              v63 = v62 + 1;
              if (v62 + 1 > 0x666666666666666)
              {
                std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
              }

              v64 = 0xCCCCCCCCCCCCCCCDLL * ((v57 - v61) >> 3);
              if (2 * v64 > v63)
              {
                v63 = 2 * v64;
              }

              if (v64 >= 0x333333333333333)
              {
                v65 = 0x666666666666666;
              }

              else
              {
                v65 = v63;
              }

              if (v65)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>((v54 + 3), v65);
              }

              v66 = 40 * v62;
              v67 = v111;
              v68 = v112;
              *(v66 + 32) = v113;
              *v66 = v67;
              *(v66 + 16) = v68;
              v60 = 40 * v62 + 40;
              v69 = v54[3];
              v70 = v54[4] - v69;
              v71 = v66 - v70;
              memcpy((v66 - v70), v69, v70);
              v72 = v55[3];
              v55[3] = v71;
              v55[4] = v60;
              v55[5] = 0;
              if (v72)
              {
                operator delete(v72);
              }
            }

            else
            {
              v58 = v111;
              v59 = v112;
              *(v56 + 32) = v113;
              *v56 = v58;
              *(v56 + 16) = v59;
              v60 = v56 + 40;
            }

            v55[4] = v60;
            if (v114 == 1)
            {
              v114 = 0;
            }
          }

          if ((v4 & 0x10000000) != 0 && v110 == 1)
          {
            *uu = &v105;
            v73 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v3 + 15, &v105, &std::piecewise_construct, uu);
            if ((v110 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v74 = v73;
            v75 = v73[4];
            v76 = v73[5];
            if (v75 >= v76)
            {
              v80 = v73[3];
              v81 = 0xAAAAAAAAAAAAAAABLL * ((v75 - v80) >> 4);
              v82 = v81 + 1;
              if (v81 + 1 > 0x555555555555555)
              {
                std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
              }

              v83 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v80) >> 4);
              if (2 * v83 > v82)
              {
                v82 = 2 * v83;
              }

              if (v83 >= 0x2AAAAAAAAAAAAAALL)
              {
                v84 = 0x555555555555555;
              }

              else
              {
                v84 = v82;
              }

              if (v84)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAOTSharedCacheDescription>>((v73 + 3), v84);
              }

              v85 = 48 * v81;
              v86 = v107;
              v87 = v109;
              *(v85 + 16) = v108;
              *(v85 + 32) = v87;
              *v85 = v86;
              v79 = 48 * v81 + 48;
              v88 = v73[3];
              v89 = v73[4] - v88;
              v90 = v85 - v89;
              memcpy((v85 - v89), v88, v89);
              v91 = v74[3];
              v74[3] = v90;
              v74[4] = v79;
              v74[5] = 0;
              if (v91)
              {
                operator delete(v91);
              }
            }

            else
            {
              v77 = v107;
              v78 = v109;
              v75[1] = v108;
              v75[2] = v78;
              *v75 = v77;
              v79 = (v75 + 3);
            }

            v74[4] = v79;
            if (v110 == 1)
            {
              v110 = 0;
            }
          }

          if ((v4 & 0x40000000) != 0)
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v3 + 48, &v105, &v105);
          }

          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v3 + 43, &v105, &v105);
        }

        goto LABEL_134;
      }
    }

    v31 = v103;
    if (v103 >= v104)
    {
      v37 = 0xAAAAAAAAAAAAAAABLL * ((v103 - v102) >> 4) + 1;
      if (v37 > 0x555555555555555)
      {
        std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v104 - v102) >> 4) > v37)
      {
        v37 = 0x5555555555555556 * ((v104 - v102) >> 4);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v104 - v102) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v38 = 0x555555555555555;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotLibraryDescription>>(&v102, v38);
      }

      StackshotLibraryDescription::StackshotLibraryDescription((16 * ((v103 - v102) >> 4)), p_type);
      goto LABEL_73;
    }

    StackshotLibraryDescription::StackshotLibraryDescription(v103, p_type);
LABEL_42:
    v34 = (v31 + 48);
LABEL_75:
    v103 = v34;
    goto LABEL_76;
  }

  if (v8 != 20 || item->flags != flags)
  {
    goto LABEL_79;
  }

LABEL_135:
  if (__p)
  {
    v100 = __p;
    operator delete(__p);
  }

  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }

  return item;
}

void sub_240F8EA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void Stackshot::consumeStackshot(Stackshot *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(this + 30);
  v3 = *(this + 31);
  v4 = (this + 296);
  do
  {
    v5 = (v2 + v2->size);
    type = v5[1].type;
    v2 = v5 + 1;
    v6 = type;
    if ((type & 0xFFFFFFF0) == 0x20)
    {
      v8 = 17;
    }

    else
    {
      v8 = v6;
    }

    if (v8 == 2351)
    {
      StackshotAOTSharedCacheDescription::StackshotAOTSharedCacheDescription(&v47, &v2[1]);
      v50 = AOTSharedCacheDescription::aotUuid(&v47);
      v51 = v17;
      p_Address = &v50;
      v18 = std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(this + 25, &v50, &std::piecewise_construct, &p_Address);
      Address = AOTSharedCacheDescription::aotLoadAddress(&v47);
      p_Address = &Address;
      v19 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v18 + 4, &Address);
      v20 = v49;
      v21 = v48;
      v22 = v47;
      *(v19 + 3) = v47;
      *(v19 + 5) = v21;
      *(v19 + 7) = v20;
      v23 = v48;
      v24 = v49;
      *v4 = v22;
      v4[1] = v23;
      v4[2] = v24;
    }

    else if (v8 == 2312)
    {
      StackshotSharedCacheDescription::StackshotSharedCacheDescription(&v47, &v2[1]);
      v50 = SharedCacheDescription::uuid(&v47);
      v51 = v10;
      p_Address = &v50;
      v11 = std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(this + 20, &v50, &std::piecewise_construct, &p_Address);
      Address = SharedCacheDescription::loadAddress(&v47);
      p_Address = &Address;
      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v11 + 4, &Address);
      v13 = v49;
      v14 = v48;
      v15 = v47;
      *(v12 + 3) = v47;
      *(v12 + 5) = v14;
      v12[7] = v13;
      v16 = v48;
      *(this + 16) = v15;
      *(this + 17) = v16;
      *(this + 36) = v49;
    }

    else if (v8 == 19 && v2[1].type == 2307)
    {
      v53.item = v2;
      v53.end = v3;
      v2 = Stackshot::consumeTaskContainer(this, v53);
      v3 = v9;
    }
  }

  while (v8 != -242132755);
  for (i = *(this + 50); i; i = *i)
  {
    LODWORD(v50) = *(i + 4);
    *&v47 = &v50;
    v26 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 10, &v50, &std::piecewise_construct, &v47);
    v27 = v26;
    v28 = v26[4];
    v29 = v26[5];
    if (v28 >= v29)
    {
      v33 = v26[3];
      v34 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - v33) >> 3);
      v35 = v34 + 1;
      if (v34 + 1 > 0x666666666666666)
      {
        std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
      }

      v36 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v33) >> 3);
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x333333333333333)
      {
        v37 = 0x666666666666666;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>((v26 + 3), v37);
      }

      v38 = 40 * v34;
      v39 = *(this + 16);
      v40 = *(this + 17);
      *(v38 + 32) = *(this + 36);
      *v38 = v39;
      *(v38 + 16) = v40;
      v32 = 40 * v34 + 40;
      v41 = v26[3];
      v42 = v26[4] - v41;
      v43 = 40 * v34 - v42;
      memcpy((v38 - v42), v41, v42);
      v44 = v27[3];
      v27[3] = v43;
      v27[4] = v32;
      v27[5] = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      v30 = *(this + 16);
      v31 = *(this + 17);
      *(v28 + 32) = *(this + 36);
      *v28 = v30;
      *(v28 + 16) = v31;
      v32 = v28 + 40;
    }

    v27[4] = v32;
  }
}

uint64_t *Stackshot::libraryDescriptionsForPid@<X0>(Stackshot *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<StackshotLibraryDescription>::__init_with_size[abi:ne200100]<StackshotLibraryDescription*,StackshotLibraryDescription*>(a3, result[3], result[4], 0xAAAAAAAAAAAAAAABLL * ((result[4] - result[3]) >> 4));
  }

  return result;
}

uint64_t *Stackshot::aotImageDescriptionsForPid@<X0>(Stackshot *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 5, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<StackshotAotImageDescription>::__init_with_size[abi:ne200100]<StackshotAotImageDescription*,StackshotAotImageDescription*>(a3, result[3], result[4], 0x6DB6DB6DB6DB6DB7 * ((result[4] - result[3]) >> 3));
  }

  return result;
}

uint64_t *Stackshot::sharedCacheDescriptionsForPid@<X0>(Stackshot *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 10, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<StackshotSharedCacheDescription>::__init_with_size[abi:ne200100]<StackshotSharedCacheDescription*,StackshotSharedCacheDescription*>(a3, result[3], result[4], 0xCCCCCCCCCCCCCCCDLL * ((result[4] - result[3]) >> 3));
  }

  return result;
}

uint64_t *Stackshot::aotSharedCacheDescriptionsForPid@<X0>(Stackshot *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 15, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<StackshotAOTSharedCacheDescription>::__init_with_size[abi:ne200100]<StackshotAOTSharedCacheDescription*,StackshotAOTSharedCacheDescription*>(a3, result[3], result[4], 0xAAAAAAAAAAAAAAABLL * ((result[4] - result[3]) >> 4));
  }

  return result;
}

__n128 Stackshot::defaultAOTSharedCacheDescription@<Q0>(Stackshot *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 312);
  *a2 = *(this + 296);
  *(a2 + 16) = v2;
  result = *(this + 328);
  *(a2 + 32) = result;
  return result;
}

__n128 Stackshot::defaultSharedCacheDescription@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[16];
  v3 = this[17];
  *a2 = result;
  a2[1] = v3;
  a2[2].n128_u64[0] = this[18].n128_u64[0];
  return result;
}

void Stackshot::Stackshot(Stackshot *this, kcdata_iter a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  *(this + 15) = a2;
  SharedCacheDescription::SharedCacheDescription((this + 256));
  AOTSharedCacheDescription::AOTSharedCacheDescription((this + 296));
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 1065353216;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 104) = 1065353216;
}

void sub_240F8F124(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(v6);
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(v5);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotLibraryDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAotImageDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAOTSharedCacheDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<StackshotLibraryDescription>::__init_with_size[abi:ne200100]<StackshotLibraryDescription*,StackshotLibraryDescription*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotLibraryDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F8F2D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<StackshotLibraryDescription>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotLibraryDescription>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<StackshotAotImageDescription>::__init_with_size[abi:ne200100]<StackshotAotImageDescription*,StackshotAotImageDescription*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotAotImageDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F8F398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<StackshotAotImageDescription>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAotImageDescription>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<StackshotSharedCacheDescription>::__init_with_size[abi:ne200100]<StackshotSharedCacheDescription*,StackshotSharedCacheDescription*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotSharedCacheDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F8F464(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<StackshotSharedCacheDescription>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_CSBinaryRelocationInformation>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<StackshotAOTSharedCacheDescription>::__init_with_size[abi:ne200100]<StackshotAOTSharedCacheDescription*,StackshotAOTSharedCacheDescription*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<StackshotAOTSharedCacheDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F8F52C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<StackshotAOTSharedCacheDescription>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<StackshotAOTSharedCacheDescription>>(a1, a2);
  }

  std::vector<_CSBinaryImageInformation>::__throw_length_error[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID&&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1] ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2[1] ^ *a2;
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
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_240F8F7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_240F8FAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F8FB54(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotAOTSharedCacheDescription>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_240F8FD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F8FE1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__emplace_unique_key_args<int,int &,std::vector<StackshotLibraryDescription>>(void *a1, int *a2, _DWORD *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotSharedCacheDescription>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void **std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::__deallocate_node(int a1, void *__p)
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

uint64_t std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::unordered_map<unsigned long long,StackshotSharedCacheDescription>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StackshotSharedCacheDescription>>>::~__hash_table((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

double SymbolicationSession::updateBestKnownLibraryDescriptions(SymbolicationSession *this, const LibraryDescription *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = LibraryDescription::uuid(a2);
  v8[1] = v4;
  v7 = v8;
  v5 = std::__hash_table<std::__hash_value_type<UUID,MergedLibrary>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,MergedLibrary>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,MergedLibrary>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,MergedLibrary>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(this + 1675, v8, &std::piecewise_construct, &v7);
  return MergedLibrary::mergeWith((v5 + 4), a2);
}

double SymbolicationSession::learnPidLibrary(SymbolicationSession *a1, int a2, LibraryDescription *this, void *a4)
{
  std::__hash_table<LibraryDescription,std::hash<LibraryDescription>,std::equal_to<LibraryDescription>,std::allocator<LibraryDescription>>::__emplace_unique_key_args<LibraryDescription,LibraryDescription const&>(a4, this, this);

  return SymbolicationSession::updateBestKnownLibraryDescriptions(a1, this);
}

uint64_t *SymbolicationSession::learnAddressForPid(SymbolicationSession *this, int a2, unint64_t a3)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 39, &v5);
  if (result)
  {
    result = result[3];
    if (result)
    {
      return Process::addAddress(result, a3);
    }
  }

  return result;
}

uint64_t *SymbolicationSession::processPointerForPid(SymbolicationSession *this, int a2)
{
  v3 = a2;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(this + 39, &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

void SymbolicationSession::sharedCacheWithDescription(uint64_t a1@<X0>, SharedCacheDescription *a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::__unordered_map_hasher<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::hash<SharedCacheDescription>,std::equal_to<SharedCacheDescription>,true>,std::__unordered_map_equal<SharedCacheDescription,std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>,std::equal_to<SharedCacheDescription>,std::hash<SharedCacheDescription>,true>,std::allocator<std::__hash_value_type<SharedCacheDescription,std::shared_ptr<SharedCache>>>>::find<SharedCacheDescription>((a1 + 16), a2);
  if (!v4)
  {
    std::allocate_shared[abi:ne200100]<SharedCache,std::allocator<SharedCache>,SharedCacheDescription &,std::shared_ptr<StringPool> &,0>();
  }

  v5 = v4[8];
  *a3 = v4[7];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_240F909F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN20SymbolicationSession26sharedCacheWithDescriptionE22SharedCacheDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SymbolicationSession::sharedLibraryWithCSSymbolOwner(*(a1 + 32), a2, a3, &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void SymbolicationSession::sharedLibraryWithCSSymbolOwner(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    *v11 = *CFUUIDBytes;
    v7 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>((a1 + 56), v11);
    if (!v7)
    {
      std::allocate_shared[abi:ne200100]<SharedLibrary,std::allocator<SharedLibrary>,_CSTypeRef &,std::shared_ptr<StringPool> &,0>();
    }

    v8 = v7[5];
    *a4 = v7[4];
    a4[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_240F90BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SymbolicationSession::sharedLibraryWithUUIDAndPath(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *uu = a2;
  v14 = a3;
  v11 = a4;
  v12 = a5;
  if (uuid_is_null(uu) || !a5)
  {
    *a6 = 0;
    a6[1] = 0;
  }

  else
  {
    v9 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::hash<UUID>,std::equal_to<UUID>,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>,std::equal_to<UUID>,std::hash<UUID>,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<SharedLibrary>>>>::find<UUID>((a1 + 56), uu);
    if (!v9)
    {
      std::allocate_shared[abi:ne200100]<SharedLibrary,std::allocator<SharedLibrary>,UUID &,std::string_view &,std::shared_ptr<StringPool> &,0>();
    }

    v10 = v9[5];
    *a6 = v9[4];
    a6[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_240F90DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UUID::uuidString@<X0>(uint64_t *__return_ptr a1@<X8>, UUID *this@<X0>)
{
  v7 = *MEMORY[0x277D85DE8];
  result = uuid_is_null(this);
  if (result)
  {
    v5 = 0;
    *a1 = 0;
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    uuid_unparse(this, v6);
    result = std::string::basic_string[abi:ne200100]<0>(a1, v6);
    v5 = 1;
  }

  *(a1 + 24) = v5;
  return result;
}

void sub_240F90EDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SymbolicationSession::parseStackshot(SymbolicationSession *this, kcdata_iter a2)
{
  v6 = a2;
  v3 = *(this + 34);
  if (v3 >= *(this + 35))
  {
    v4 = std::vector<Stackshot>::__emplace_back_slow_path<kcdata_iter &>(this + 33, &v6);
  }

  else
  {
    Stackshot::Stackshot(*(this + 34), a2);
    v4 = v3 + 424;
    *(this + 34) = v3 + 424;
  }

  *(this + 34) = v4;
  v5 = (v4 - 424);
  Stackshot::consumeStackshot((v4 - 424));
  SymbolicationSession::updateProcessView<Stackshot>(this, v5);
}

void SymbolicationSession::updateProcessView<Stackshot>(SymbolicationSession *result, Stackshot *this)
{
  if (*(*(result + 1674) + 8) != 1)
  {
    for (i = *(Stackshot::allPids(this) + 16); i; i = *i)
    {
      v5 = *(i + 4);
      if (std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 44, &v5))
      {
        SymbolicationSession::updateProcessWithDataProvider<Stackshot>(result, v5, this);
      }

      else
      {
        SymbolicationSession::addNewProcessWithDataProvider<Stackshot>(result, v5, this);
      }
    }
  }
}

uint64_t SymbolicationSession::parseDyldKdebugEntries(SymbolicationSession *this, __n128 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    DyldKdebugHandler::consumeTracepoint((this + 416), v3);
    v3 += 6;
  }

  return SymbolicationSession::updateKdebugLibraryView(this);
}

uint64_t SymbolicationSession::updateKdebugLibraryView(SymbolicationSession *this)
{
  result = DyldKdebugHandler::shouldResetLibraryState((this + 416));
  if ((result & 1) == 0)
  {
    SymbolicationSession::updateProcessView<DyldKdebugHandler>(this, (this + 416));

    return DyldKdebugHandler::toggleResetLibraryState(this + 416);
  }

  return result;
}

void SymbolicationSession::collectLiveLibraryDescriptionsForPid(std::once_flag::_State_type *a1, uint64_t a2)
{
  v2 = a2;
  a1[1680] = KernelSymbolicator::sharedKernelSymbolicator(a1);
  a1[1681] = v4;
  v6 = a1;
  if (atomic_load_explicit(a1 + 17, memory_order_acquire) != -1)
  {
    v8 = &v6;
    v7 = &v8;
    std::__call_once(a1 + 17, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<SymbolicationSession::collectLiveLibraryDescriptionsForPid(int,std::unordered_set<LibraryDescription> &)::$_0 &&>>);
  }

  if (v2)
  {
    CSSymbolicatorCreateWithPid();
  }

  else
  {
    CSRetain();
  }

  if (CSIsNull())
  {
    ats_symbolication_log_init();
    v5 = ats_symbolication_log;
    if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_DEBUG))
    {
      SymbolicationSession::collectLiveLibraryDescriptionsForPid(v2, v5);
    }
  }

  else
  {
    CSSymbolicatorIsKernelSymbolicator();
    CSSymbolicatorForeachSymbolOwnerAtTime();
    CSRelease();
  }
}

double ___ZN20SymbolicationSession36collectLiveLibraryDescriptionsForPidEiRNSt3__113unordered_setI18LibraryDescriptionNS0_4hashIS2_EENS0_8equal_toIS2_EENS0_9allocatorIS2_EEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if ((CSSymbolOwnerIsDyldSharedCache() & 1) == 0)
  {
    BaseAddress = CSSymbolOwnerGetBaseAddress();
    if (*(a1 + 52) == 1)
    {
      KernelLibraryBaseAddress = findKernelLibraryBaseAddress(a2);
      if (v9)
      {
        BaseAddress = KernelLibraryBaseAddress;
      }
    }

    CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
    if (CFUUIDBytes)
    {
      LibraryDescription::LibraryDescription(v17, BaseAddress, *CFUUIDBytes, *(CFUUIDBytes + 8));
      Path = CSSymbolOwnerGetPath();
      if (Path)
      {
        v12 = *v5;
        std::string::basic_string[abi:ne200100]<0>(__p, Path);
        StringPool::cacheString(v12, __p, &v15);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

        if (v16 == 1)
        {
          v17[2] = v15;
        }
      }

      std::__hash_table<LibraryDescription,std::hash<LibraryDescription>,std::equal_to<LibraryDescription>,std::allocator<LibraryDescription>>::__emplace_unique_key_args<LibraryDescription,LibraryDescription const&>(*(a1 + 40), v17, v17);
      return SymbolicationSession::updateBestKnownLibraryDescriptions(v5, v17);
    }
  }

  return result;
}

void sub_240F91354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t findKernelLibraryBaseAddress(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3802000000;
  v6 = __Block_byref_object_copy__40;
  v7 = __Block_byref_object_dispose__41;
  v8 = 0;
  v9 = 0;
  CSSymbolOwnerForeachSegment();
  v1 = v4[5];
  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_240F9144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t SymbolicationSession::registerKtraceCallbacks(SymbolicationSession *this)
{
  result = *(this + 49);
  if (result)
  {
    if (*(this + 13384) & 1) != 0 || (ktrace_stackshot(), result = ktrace_events_range(), (*(this + 13384)))
    {
      v3 = *(this + 1674);
    }

    else
    {
      v3 = *(this + 1674);
      if (*(v3 + 8) != 1)
      {
LABEL_8:
        *(this + 13384) = 1;
        return result;
      }
    }

    if (*(v3 + 24) == 1)
    {
      ktrace_events_single();
      ktrace_events_single();
      ktrace_events_single();
      ktrace_events_range();
      ktrace_events_single();
      result = ktrace_events_single();
    }

    goto LABEL_8;
  }

  return result;
}

void ___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke(uint64_t a1, kcdata_iter a2)
{
  v6 = a2;
  v2 = *(a1 + 32);
  v3 = v2[34];
  if (v3 >= v2[35])
  {
    v4 = std::vector<Stackshot>::__emplace_back_slow_path<kcdata_iter &>(v2 + 33, &v6);
  }

  else
  {
    Stackshot::Stackshot(v2[34], a2);
    v4 = v3 + 424;
    v2[34] = v3 + 424;
  }

  v2[34] = v4;
  v5 = (v4 - 424);
  Stackshot::consumeStackshot((v4 - 424));
  SymbolicationSession::updateProcessView<Stackshot>(v2, v5);
}

void ___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_2(uint64_t result, __n128 *a2)
{
  v2 = *(result + 32);
  if (*(*(v2 + 13392) + 8) != 1)
  {
    DyldKdebugHandler::consumeTracepoint((v2 + 416), a2);
  }
}

uint64_t ___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleKernelStack(v3, a2);
}

uint64_t SymbolicationSession::handleKernelStack(uint64_t a1, uint64_t a2)
{
  v4 = SymbolicationSession::handleKernelStack(trace_point const*)::kernelProc;
  if (!SymbolicationSession::handleKernelStack(trace_point const*)::kernelProc)
  {
    v7 = 0;
    v5 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>((a1 + 312), &v7);
    if (v5)
    {
      v4 = v5[3];
    }

    else
    {
      v4 = 0;
    }

    SymbolicationSession::handleKernelStack(trace_point const*)::kernelProc = v4;
  }

  return SymbolicationSession::handleKernelStack(a1, v4, a2);
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleInterrupt(v3, a2);
}

uint64_t *SymbolicationSession::handleInterrupt(uint64_t a1, uint64_t a2)
{
  result = SymbolicationSession::handleInterrupt(trace_point const*)::kernelProc;
  if (SymbolicationSession::handleInterrupt(trace_point const*)::kernelProc)
  {
    goto LABEL_2;
  }

  v5 = 0;
  result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>((a1 + 312), &v5);
  if (!result)
  {
    SymbolicationSession::handleInterrupt(trace_point const*)::kernelProc = 0;
    return result;
  }

  result = result[3];
  SymbolicationSession::handleInterrupt(trace_point const*)::kernelProc = result;
  if (result)
  {
LABEL_2:
    if (*(*(a1 + 13392) + 24) == 1)
    {
      return Process::addAddress(result, *(a2 + 16));
    }
  }

  return result;
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleUserStack(v3, a2);
}

uint64_t *SymbolicationSession::handleUserStack(uint64_t *result, uint64_t a2)
{
  if (*(result[1674] + 24) == 1)
  {
    v7 = *(a2 + 88);
    result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 39, &v7);
    if (result)
    {
      v3 = result[3];
      if (v3)
      {
        v4 = 0;
        v5 = a2 + 8;
        do
        {
          v6 = *(v5 + v4);
          if (v6)
          {
            result = Process::addAddress(v3, v6);
          }

          v4 += 8;
        }

        while (v4 != 32);
      }
    }
  }

  return result;
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleRealFault(v3, a2);
}

uint64_t *SymbolicationSession::handleRealFault(uint64_t *result, uint64_t a2)
{
  if (*(result[1674] + 24) == 1)
  {
    HIDWORD(v2) = *(a2 + 48) - 20054024;
    LODWORD(v2) = HIDWORD(v2);
    if ((v2 >> 2) <= 3)
    {
      v3 = *(a2 + 8);
      v4 = *(a2 + 88);
      result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 39, &v4);
      if (result)
      {
        result = result[3];
        if (result)
        {
          return Process::addAddress(result, v3);
        }
      }
    }
  }

  return result;
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleKPCHandler(v3, a2);
}

uint64_t *SymbolicationSession::handleKPCHandler(uint64_t *result, uint64_t a2)
{
  if (*(result[1674] + 24) == 1)
  {
    v2 = *(a2 + 24);
    v3 = *(a2 + 88);
    result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 39, &v3);
    if (result)
    {
      result = result[3];
      if (result)
      {
        return Process::addAddress(result, v2);
      }
    }
  }

  return result;
}

uint64_t *___ZN20SymbolicationSession23registerKtraceCallbacksEv_block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  SymbolicationSession::updateKdebugLibraryView(v3);

  return SymbolicationSession::handleDTraceProbe(v3, a2);
}

uint64_t *SymbolicationSession::handleDTraceProbe(uint64_t *result, uint64_t a2)
{
  if (*(result[1674] + 24) == 1)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 24);
    result = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 39, &v3);
    if (result)
    {
      result = result[3];
      if (result)
      {
        return Process::addAddress(result, v2);
      }
    }
  }

  return result;
}

void SymbolicationSession::updateProcessView<DyldKdebugHandler>(SymbolicationSession *result, DyldKdebugHandler *this)
{
  if (*(*(result + 1674) + 8) != 1)
  {
    for (i = *(DyldKdebugHandler::allPids(this) + 16); i; i = *i)
    {
      v5 = *(i + 4);
      if (std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(result + 44, &v5))
      {
        SymbolicationSession::updateProcessWithDataProvider<DyldKdebugHandler>(result, v5, this);
      }

      else
      {
        SymbolicationSession::addNewProcessWithDataProvider<DyldKdebugHandler>(result, v5, this);
      }
    }
  }
}

uint64_t SymbolicationSession::handleKernelStack(uint64_t result, Process *this, uint64_t a3)
{
  if (this && *(*(result + 13392) + 24) == 1)
  {
    v4 = 0;
    v5 = a3 + 8;
    do
    {
      v6 = *(v5 + v4);
      if (v6)
      {
        result = Process::addAddress(this, v6);
      }

      v4 += 8;
    }

    while (v4 != 32);
  }

  return result;
}

uint64_t SymbolicationSession::handleInterrupt(uint64_t result, Process *this, uint64_t a3)
{
  if (this)
  {
    if (*(*(result + 13392) + 24) == 1)
    {
      return Process::addAddress(this, *(a3 + 16));
    }
  }

  return result;
}

void SymbolicationSession::addNeededAddresses(uint64_t *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((DyldKdebugHandler::shouldResetLibraryState((a1 + 52)) & 1) == 0)
  {
    SymbolicationSession::updateProcessView<DyldKdebugHandler>(a1, (a1 + 52));
    DyldKdebugHandler::toggleResetLibraryState((a1 + 52));
  }

  *buf = 0;
  v4 = std::__hash_table<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<StackshotLibraryDescription>>>>::find<int>(a1 + 39, buf);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = *(v6 + 48);
      if (v8 > 620888075)
      {
        if (v8 > 721486252)
        {
          if ((v8 - 721486253) >= 2)
          {
            goto LABEL_32;
          }

          SymbolicationSession::handleDTraceProbe(a1, v6);
        }

        else
        {
          switch(v8)
          {
            case 620888076:
              if (v5 && *(a1[1674] + 24) == 1)
              {
                for (i = 8; i != 40; i += 8)
                {
                  v11 = *(v6 + i);
                  if (v11)
                  {
                    Process::addAddress(v5, v11);
                  }
                }
              }

              break;
            case 620888080:
              SymbolicationSession::handleUserStack(a1, v6);
              break;
            case 621150209:
              SymbolicationSession::handleKPCHandler(a1, v6);
              break;
            default:
              goto LABEL_32;
          }
        }
      }

      else if ((v8 - 20054024) > 0xC || ((1 << (v8 - 8)) & 0x1111) == 0)
      {
        if (v8 != 83886085)
        {
LABEL_32:
          ats_symbolication_log_init();
          v12 = ats_symbolication_log;
          if (os_log_type_enabled(ats_symbolication_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v14 = v8;
            _os_log_error_impl(&dword_240F85000, v12, OS_LOG_TYPE_ERROR, "Unhandled tracepoint with debugid %u", buf, 8u);
          }

          goto LABEL_34;
        }

        if (v5)
        {
          if (*(a1[1674] + 24) == 1)
          {
            Process::addAddress(v5, *(v6 + 16));
          }
        }
      }

      else
      {
        SymbolicationSession::handleRealFault(a1, v6);
      }

LABEL_34:
      v6 += 96;
    }

    while (v6 != v7);
  }
}

const void **SymbolicationSession::forEachSymbolChunk(const void **result, uint64_t a2)
{
  v2 = result[9];
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = v4[1674];
      v6 = v2[4];
      if (v5)
      {
        FBSSignatureWithConfig = SharedLibrary::generateFBSSignatureWithConfig(v6, *v5);
      }

      else
      {
        FBSSignatureWithConfig = SharedLibrary::generateFBSSignature(v6);
      }

      v8 = FBSSignatureWithConfig;
      v9 = 0;
      std::function<void ()(__CFData const*)>::operator()(a2, FBSSignatureWithConfig);
      result = ScopeGuard<void const*,ScopeGuardPolicy<void const*>>::~ScopeGuard(&v8);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}