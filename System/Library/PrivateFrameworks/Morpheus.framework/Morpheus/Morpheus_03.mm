__n128 std::__function::__func<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0>,void ()(mlx::core::array const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE59E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0>,void ()(mlx::core::array const&)>::operator()(uint64_t a1, __int128 *a2)
{
  v22 = *a2;
  if (!std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(*(a1 + 8), &v22))
  {
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(*(a1 + 8), &v22, &v22);
    v4 = *a2;
    v5 = *(*a2 + 200);
    v6 = *(*a2 + 208);
    if (v5 != v6)
    {
      do
      {
        v7 = *(a1 + 8);
        v8 = *v5;
        v5 += 2;
        v21[0] = v8;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v7, v21, v21);
      }

      while (v5 != v6);
      v4 = *a2;
    }

    v9 = *(v4 + 176);
    v10 = *(v4 + 184);
    if (v9 != v10)
    {
      do
      {
        v11 = *(*(a1 + 16) + 24);
        if (!v11)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v11 + 48))(v11, v9);
        v9 += 2;
      }

      while (v9 != v10);
      v9 = *(*a2 + 176);
      v10 = *(*a2 + 184);
    }

    while (v9 != v10)
    {
      v12 = *(a1 + 24);
      v21[0] = *v9;
      if (std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v12, v21))
      {
        std::vector<mlx::core::array>::push_back[abi:ne200100](*(a1 + 32), a2);
        *(*(*(*(a1 + 32) + 8) - 16) + 128) = 0;
        v13 = *(a1 + 24);
        v21[0] = *a2;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v13, v21, v21);
        v14 = *a2;
        v15 = *(*a2 + 200);
        for (i = *(v14 + 208); v15 != i; v15 += 2)
        {
          v17 = *v15;
          v18 = v15[1];
          v21[0] = *v15;
          v21[1] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          }

          v19 = *(a1 + 24);
          v20 = v17;
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v19, &v20, &v20);
          *(v21[0] + 128) = 0;
          mlx::core::array::~array(v21);
        }

        return;
      }

      v9 += 2;
    }
  }
}

void sub_25A27FD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0>,void ()(mlx::core::array const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(mlx::core::array const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_25A280014(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5A70;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5A70;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void sub_25A2801C0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286BE5A70;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 5, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 2);
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 8, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 2);
}

void sub_25A280290(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
}

void std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(std::vector<int> *this, uint64_t *a2)
{
  p_end_cap = &this[1].__end_cap_;
  p_end = &this->__end_;
  if (this[2].__begin_ == this[1].__end_cap_.__value_)
  {
    v7 = (a2[1] - *a2) >> 4;
    LODWORD(__x.__r_.__value_.__l.__data_) = 0;
    std::vector<int>::resize((this + 40), v7, &__x);
  }

  mlx::core::detail::vmap_trace(p_end, a2, p_end_cap, &__x);
  value = this[2].__end_cap_.__value_;
  begin = this[3].__begin_;
  v10 = (this + 64);
  if (begin == value)
  {
    v13[0] = 0;
    std::vector<int>::resize(v10, (v12[1] - v12[0]) >> 4, v13);
  }

  mlx::core::detail::vmap_replace(a2, &__x, v12, p_end_cap, v10);
}

void sub_25A28045C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
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
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25A99B0D0)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25A99B0C0)))).i32[1])
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
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
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25A99B0D0)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25A99B0C0)))).i32[1])
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

uint64_t std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5AF0;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5AF0;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE5AF0;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::__value_func[abi:ne200100](a2 + 24, a1 + 24);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__value_func[abi:ne200100](a1 + 24);

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a2, v4, &v5, 1uLL);
  mlx::core::array::~array(v4);
}

void sub_25A280A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5B70;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5B70;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::operator()(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v14[0] = *a2;
  v14[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v14[2] = *a3;
  v14[3] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v11, 0, sizeof(v11));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v11, v14, &v15, 2uLL);
  v8 = *(a1 + 32);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v12);
  v9 = *(v12[0] + 8);
  *a4 = *v12[0];
  a4[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v13);
  v13 = v11;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v13);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v14[i]);
  }
}

void sub_25A280D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((&a16 + i));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5C00;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5C00;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286BE5C00;
  a2[1] = *(a1 + 8);
  return std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a2, v4, &v5, 1uLL);
  mlx::core::array::~array(v4);
}

void sub_25A281050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5C80;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5C80;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::operator()(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v8, 0, sizeof(v8));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v8, v11, &v12, 1uLL);
  v6 = *(a1 + 32);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v9);
  v7 = *(v9[0] + 8);
  *a3 = *v9[0];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = v8;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v10);
  mlx::core::array::~array(v11);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BE5D10;
  if (*(a1 + 152) == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1 + 120);
  }

  if (*(a1 + 112) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 40);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

void std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BE5D10;
  if (*(a1 + 152) == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1 + 120);
  }

  if (*(a1 + 112) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 40);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  JUMPOUT(0x25F851760);
}

void sub_25A281610(_Unwind_Exception *a1)
{
  if (v1[112] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((v1 + 80));
  }

  if (v1[72] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((v1 + 40));
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

_BYTE *std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286BE5D10;
  v4 = a2 + 5;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
  std::__optional_copy_base<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,false>::__optional_copy_base[abi:ne200100](v4, a1 + 40);
  std::__optional_copy_base<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,false>::__optional_copy_base[abi:ne200100](a2 + 80, a1 + 80);
  return std::__optional_copy_base<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,false>::__optional_copy_base[abi:ne200100](a2 + 120, a1 + 120);
}

void sub_25A2816E8(_Unwind_Exception *a1)
{
  if (*(v1 + 112) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v1 + 80);
  }

  if (*(v1 + 72) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy(_BYTE *a1)
{
  if (a1[152] == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 120));
  }

  if (a1[112] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 80));
  }

  if (a1[72] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 40));
  }

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 8));
}

void std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(_BYTE *a1)
{
  if (a1[152] == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 120));
  }

  if (a1[112] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 80));
  }

  if (a1[72] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 40));
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1, void **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(*v4 + 48))(&v34);
    if (v34 != v35)
    {
      mlx::core::stop_gradient(v34, v6, 0);
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(&v31, *a2, a2[1], (a2[1] - *a2) >> 4);
    v7 = std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array*>,std::__wrap_iter<mlx::core::array*>>(&v31, v32, v34, v35, (v35 - v34) >> 4);
    v8 = v34;
    v9 = *(*v34 + 64);
    if (v9)
    {
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
    }

    else
    {
      v12 = mlx::core::default_device(v7);
      v10 = mlx::core::default_stream(*v12);
      v11 = v13;
      v8 = v34;
    }

    v30 = 0;
    v29 = 0u;
    v28 = 0;
    *__p = 0u;
    for (i = v35; v8 != i; v8 += 2)
    {
      v15 = *v8;
      v16 = *(&v29 + 1);
      if (*(&v29 + 1) >= v30)
      {
        v17 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(&v29, v15);
      }

      else
      {
        **(&v29 + 1) = 0;
        v16[1] = 0;
        v16[2] = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v16, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 2);
        v17 = v16 + 3;
      }

      *(&v29 + 1) = v17;
      v18 = *(*v8 + 56);
      v19 = __p[1];
      if (__p[1] >= v28)
      {
        v21 = (__p[1] - __p[0]) >> 3;
        if ((v21 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v22 = (v28 - __p[0]) >> 2;
        if (v22 <= v21 + 1)
        {
          v22 = v21 + 1;
        }

        if (v28 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>(__p, v23);
        }

        v24 = (8 * v21);
        *v24 = v18 & 0xFFFFFFFFFFLL;
        v20 = (8 * v21 + 8);
        v25 = v24 - (__p[1] - __p[0]);
        memcpy(v25, __p[0], __p[1] - __p[0]);
        v26 = __p[0];
        __p[0] = v25;
        __p[1] = v20;
        v28 = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *__p[1] = v18 & 0xFFFFFFFFFFLL;
        v20 = v19 + 8;
      }

      __p[1] = v20;
    }

    v30 = 0;
    v29 = 0uLL;
    mlx::core::to_stream(v10, v11 | 0x100000000);
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v43, a1 + 8);
    if (*(a1 + 72) == 1)
    {
      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v44, a1 + 40);
      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v40, a1 + 8);
      if (*(a1 + 112) == 1)
      {
        std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v41, a1 + 80);
        std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v36, a1 + 8);
        v37 = (v35 - v34) >> 4;
        if (*(a1 + 152) == 1)
        {
          std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v38, a1 + 120);
          std::allocate_shared[abi:ne200100]<mlx::core::CustomTransforms,std::allocator<mlx::core::CustomTransforms>,mlx::core::Stream,unsigned long,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,0>();
        }

        std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v46, v36);
        v47 = v37;
        v39 = 0;
        operator new();
      }

      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v46, v40);
      v42 = 0;
      operator new();
    }

    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v46, v43);
    v45 = 0;
    operator new();
  }

  std::__throw_bad_function_call[abi:ne200100]();
}

void sub_25A281D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v40 - 144);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a32);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v40 - 240);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v40 - 176);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v40 - 208);
  a32 = &a17;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a32);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  a32 = &a23;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a32);
  a32 = &a26;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a32);
  a32 = &a29;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *std::__optional_copy_base<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_25A281F50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_25A281FB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_25A2820B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

mlx::core::array *std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array*>,std::__wrap_iter<mlx::core::array*>>(uint64_t *a1, mlx::core::array *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if (a5 <= (v8 - v9) >> 4)
    {
      v16 = (v9 - a2) >> 4;
      if (v16 >= a5)
      {
        std::vector<mlx::core::array>::__move_range(a1, a2, a1[1], a2 + 16 * a5);
        v23 = &v7[2 * a5];
        v24 = v5;
        do
        {
          mlx::core::array::operator=(v24, v7);
          v7 += 2;
          v24 = (v24 + 16);
        }

        while (v7 != v23);
      }

      else
      {
        v17 = (a3 + v9 - a2);
        v18 = a1[1];
        if (v17 != a4)
        {
          v18 = a1[1];
          v19 = (a3 + v9 - a2);
          v20 = v18;
          do
          {
            v21 = v19[1];
            *v20 = *v19;
            v20[1] = v21;
            if (v21)
            {
              atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            }

            v19 += 2;
            v20 += 2;
            v18 += 16;
          }

          while (v19 != a4);
        }

        a1[1] = v18;
        if (v16 >= 1)
        {
          std::vector<mlx::core::array>::__move_range(a1, a2, v9, a2 + 16 * a5);
          if (v9 != v5)
          {
            v22 = v5;
            do
            {
              mlx::core::array::operator=(v22, v7);
              v7 += 2;
              v22 = (v22 + 16);
            }

            while (v7 != v17);
          }
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + ((v9 - *a1) >> 4);
      if (v11 >> 60)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = a2 - v10;
      v13 = v8 - v10;
      if (v13 >> 3 > v11)
      {
        v11 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      v15 = v12 >> 4;
      v28[4] = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v14);
      }

      v25 = (16 * v15);
      v28[0] = 0;
      v28[1] = 16 * v15;
      v28[3] = 0;
      do
      {
        v26 = v7[1];
        *v25 = *v7;
        v25[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v25 += 2;
        v7 += 2;
      }

      while (v25 != (16 * v15 + 16 * a5));
      v28[2] = 16 * v15 + 16 * a5;
      v5 = std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, v28, v5);
      std::__split_buffer<mlx::core::array>::~__split_buffer(v28);
    }
  }

  return v5;
}

void sub_25A282364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<mlx::core::CustomTransforms>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,unsigned long,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::allocator<mlx::core::CustomTransforms>,0>(void *a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE5D80;
  std::construct_at[abi:ne200100]<mlx::core::CustomTransforms,mlx::core::Stream,unsigned long,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,mlx::core::CustomTransforms*>((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::CustomTransforms>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::CustomTransforms,mlx::core::Stream,unsigned long,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,mlx::core::CustomTransforms*>(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = *a3;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v15, a4);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v14, a5);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v13, a6);
  mlx::core::CustomTransforms::CustomTransforms(a1, v9, v10, v11, v15, v14, v13);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v15);
  return a1;
}

uint64_t mlx::core::CustomTransforms::CustomTransforms(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *a1 = &unk_286BF7BA8;
  *(a1 + 8) = a2;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](a1 + 24, a5);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](a1 + 56, a6);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](a1 + 88, a7);
  return a1;
}

void *_ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_ED1Ev(void *a1)
{
  *a1 = &unk_286BE5DD0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_ED0Ev(void *a1)
{
  *a1 = &unk_286BE5DD0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_E18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_EclESB_SB_SB_(uint64_t a1, void **a2, void **a3, void **a4)
{
  memset(v10, 0, sizeof(v10));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v10, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v9, 0, sizeof(v9));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v9, *a3, a3[1], (a3[1] - *a3) >> 4);
  memset(v8, 0, sizeof(v8));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v8, *a4, a4[1], (a4[1] - *a4) >> 4);
  mlx::core::vjp(a1 + 8, v10, v9);
}

void sub_25A282900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18)
{
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(&a18);
  *(v18 - 40) = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  *(v18 - 40) = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  *(v18 - 40) = &a15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN3mlx4core15custom_functionENSt3__18functionIFNS1_6vectorINS0_5arrayENS1_9allocatorIS4_EEEERKS7_EEENS1_8optionalINS2_IFS7_S9_S9_S9_EEEEENSC_INS2_IFS7_S9_S9_RKNS3_IiNS5_IiEEEEEEEEENSC_INS2_IFNS1_4pairIS7_SH_EES9_SJ_EEEEEENK3__0clES9_EUlT_T0_T1_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_ED1Ev(void *a1)
{
  *a1 = &unk_286BE5E60;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_ED0Ev(void *a1)
{
  *a1 = &unk_286BE5E60;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_E18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_EclESB_SB_SL_(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v27 = 0;
  v28 = 0;
  v26 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(&v26, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v25, 0, sizeof(v25));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v25, *a3, a3[1], (a3[1] - *a3) >> 4);
  __p = 0;
  v23 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v9 = v26;
  if (v27 != v26)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v12 >= ((v23 - __p) >> 2) || v11 != *(__p + v12))
      {
        mlx::core::zeros_like(&v9[v10], v8, a4);
      }

      v13 = v31;
      if (v31 >= v32)
      {
        v16 = (v31 - v30) >> 4;
        v17 = v16 + 1;
        if ((v16 + 1) >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v32 - v30;
        if ((v32 - v30) >> 3 > v17)
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

        v29[4] = &v30;
        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(&v30, v19);
        }

        v20 = (16 * v16);
        v29[0] = 0;
        v29[1] = v20;
        v29[3] = 0;
        v21 = *(v25[0] + 16 * v12);
        *v20 = v21;
        if (*(&v21 + 1))
        {
          atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v29[2] = v20 + 1;
        std::vector<mlx::core::array>::__swap_out_circular_buffer(&v30, v29);
        v15 = v31;
        std::__split_buffer<mlx::core::array>::~__split_buffer(v29);
      }

      else
      {
        v14 = *(v25[0] + 16 * v12);
        *v31 = v14;
        if (*(&v14 + 1))
        {
          atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v15 = v13 + 1;
      }

      ++v12;
      v31 = v15;
      ++v11;
      v9 = v26;
      v10 += 16;
    }

    while (v11 < (v27 - v26) >> 4);
  }

  mlx::core::jvp(a1 + 8, &v26, &v30);
}

void sub_25A282E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(&a21);
  *(v21 - 128) = v21 - 112;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 128));
  if (__p)
  {
    operator delete(__p);
  }

  *(v21 - 112) = &a15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 112));
  *(v21 - 112) = &a18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 112));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN3mlx4core15custom_functionENSt3__18functionIFNS1_6vectorINS0_5arrayENS1_9allocatorIS4_EEEERKS7_EEENS1_8optionalINS2_IFS7_S9_S9_S9_EEEEENSC_INS2_IFS7_S9_S9_RKNS3_IiNS5_IiEEEEEEEEENSC_INS2_IFNS1_4pairIS7_SH_EES9_SJ_EEEEEENK3__0clES9_EUlT_T0_T1_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_ED1Ev(void *a1)
{
  *a1 = &unk_286BE5EF0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_ED0Ev(void *a1)
{
  *a1 = &unk_286BE5EF0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_E7__cloneEPNS0_6__baseISR_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_286BE5EF0;
  result = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_E18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_EclESB_SL_(uint64_t a1, void **a2, uint64_t a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v8, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v7, 0, sizeof(v7));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v7, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v6 = *(a1 + 40);
  v9[0] = 0;
  std::vector<int>::vector[abi:ne200100](&__p, v6, v9);
  mlx::core::vmap(a1 + 8, v7, &__p, v11);
}

void sub_25A283298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v20 - 72);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  *(v20 - 72) = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 72));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN3mlx4core15custom_functionENSt3__18functionIFNS1_6vectorINS0_5arrayENS1_9allocatorIS4_EEEERKS7_EEENS1_8optionalINS2_IFS7_S9_S9_S9_EEEEENSC_INS2_IFS7_S9_S9_RKNS3_IiNS5_IiEEEEEEEEENSC_INS2_IFNS1_4pairIS7_SH_EES9_SJ_EEEEEENK3__0clES9_EUlT_T0_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<std::vector<mlx::core::array>,std::vector<int>&,0>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  v4 = a1 + 3;
  v4[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  return a1;
}

void sub_25A2833C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0,std::allocator<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5F90;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0,std::allocator<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5F90;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0,std::allocator<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void sub_25A28361C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0,std::allocator<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::array::array(uint64_t *a1, void **a2, uint64_t a3)
{
  v5 = 0;
  v6 = a3;
  __p = 0;
  v4 = 0;
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype &,0>();
}

void sub_25A283700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A283888(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::make_arrays(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, void **a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = *a2;
    if (a5[2])
    {
      std::construct_at[abi:ne200100]<mlx::core::array,std::vector<int>,mlx::core::Dtype const&,std::shared_ptr<mlx::core::Primitive> const&,std::vector<mlx::core::array> const&,mlx::core::array*>(0, v6, v7, a3, a4);
    }

    v8 = -*a5 >> 4;
    if (!((v8 + 1) >> 60))
    {
      v9 = -*a5;
      v10 = v9 >> 3;
      if (v9 >> 3 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a5, v11);
      }

      std::construct_at[abi:ne200100]<mlx::core::array,std::vector<int>,mlx::core::Dtype const&,std::shared_ptr<mlx::core::Primitive> const&,std::vector<mlx::core::array> const&,mlx::core::array*>(16 * v8, v6, v7, a3, a4);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25A283B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::array::unsafe_weak_copy(mlx::core::array *this@<X0>, uint64_t a2@<X8>)
{
  __p[8] = *MEMORY[0x277D85DE8];
  v4 = *this;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 2);
  v5 = *(*this + 56);
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  mlx::core::array::array(a2, __p, v5 & 0xFFFFFFFFFFLL);
}

void sub_25A283CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v20 - 72);
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(v19);
  _Unwind_Resume(a1);
}

void mlx::core::array::array(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v3, __p, 1uLL);
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype const&,0>();
}

void sub_25A283E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<float const*>(int ***a1, float *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = mlx::core::allocator::malloc((*(*a1 + 60) * (*a1)[6]));
  v4[0] = &unk_286BE3468;
  v4[1] = mlx::core::allocator::free;
  v4[3] = v4;
  mlx::core::array::set_data(a1, v3, v4);
}

void sub_25A2841D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::array::array(void *a1, uint64_t a2, int a3, void *a4)
{
  __p[3] = a4;
  v4 = a3;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v4, __p, 1uLL);
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype &,0>();
}

void sub_25A2842A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<int const*>(int ***a1, int *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = mlx::core::allocator::malloc((*(*a1 + 60) * (*a1)[6]));
  v4[0] = &unk_286BE3468;
  v4[1] = mlx::core::allocator::free;
  v4[3] = v4;
  mlx::core::array::set_data(a1, v3, v4);
}

void sub_25A2845C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A2846C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  v9 = *(v7 + 8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void mlx::core::array::detach(mlx::core::array *this)
{
  v2 = *this;
  v3 = *(*this + 72);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *this;
  v5 = *(*this + 200);
  v6 = *(*this + 208);
  if (v5 != v6)
  {
    do
    {
      v7 = *v5;
      v8 = *(*v5 + 72);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
    }

    while (v5 != v6);
    v4 = *this;
    v5 = *(*this + 200);
    v6 = *(*this + 208);
  }

  if (v5 != v6)
  {
    do
    {
      v9 = *v5;
      v11 = *(*v5 + 176);
      v10 = *(*v5 + 184);
      v12 = *v5;
      if (v10 != v11)
      {
        do
        {
          mlx::core::array::~array((v10 - 16));
        }

        while (v10 != v11);
        v12 = *v5;
      }

      *(v9 + 184) = v11;
      v14 = *(v12 + 200);
      v13 = *(v12 + 208);
      v15 = v12;
      if (v13 != v14)
      {
        do
        {
          mlx::core::array::~array((v13 - 16));
        }

        while (v13 != v14);
        v15 = *v5;
      }

      *(v12 + 208) = v14;
      *(v15 + 224) = 0;
      v5 += 2;
    }

    while (v5 != v6);
    v4 = *this;
  }

  v17 = *(v4 + 176);
  v16 = *(v4 + 184);
  v18 = v4;
  if (v16 != v17)
  {
    do
    {
      mlx::core::array::~array((v16 - 16));
    }

    while (v16 != v17);
    v18 = *this;
  }

  *(v4 + 184) = v17;
  v20 = *(v18 + 200);
  v19 = *(v18 + 208);
  v21 = v18;
  if (v19 != v20)
  {
    do
    {
      mlx::core::array::~array((v19 - 16));
    }

    while (v19 != v20);
    v21 = *this;
  }

  *(v18 + 208) = v20;
  *(v21 + 224) = 0;
}

BOOL mlx::core::array::is_available(mlx::core::array *this)
{
  v1 = *this;
  v2 = *(*this + 80);
  if (v2 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    if (*(v1 + 104))
    {
      result = mlx::core::Event::is_signaled((v1 + 88));
      if (!result)
      {
        return result;
      }

      v1 = *this;
    }

    *(v1 + 80) = 2;
    return 1;
  }

  return 0;
}

void mlx::core::array::wait(mlx::core::array *this)
{
  if (!mlx::core::array::is_available(this))
  {
    v2 = *this;
    if (*(*this + 104))
    {
      mlx::core::Event::wait((v2 + 88));
      v3 = *this;
      *(v3 + 88) = 0;
      *(v3 + 92) = 0;
      v4 = *(v3 + 112);
      *(v3 + 104) = 0;
      *(v3 + 112) = 0;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      *(v3 + 120) = 0;
      v2 = *this;
    }

    *(v2 + 80) = 2;
  }
}

void mlx::core::array::eval(mlx::core::array *this)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(*this + 80))
  {

    mlx::core::array::wait(this);
  }

  else
  {
    v1 = *(this + 1);
    v4[0] = *this;
    v4[1] = v1;
    if (v1)
    {
      atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v2, 0, sizeof(v2));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v2, v4, &v5, 1uLL);
    mlx::core::eval(v2);
    v3 = v2;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
    mlx::core::array::~array(v4);
  }
}

void sub_25A284AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  va_copy(v8, va);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

BOOL mlx::core::array::is_tracer(mlx::core::array *this)
{
  if (*(*this + 128) != 1)
  {
    return mlx::core::detail::RetainGraph::tracing_counter > 0;
  }

  v1 = mlx::core::detail::InTracing::trace_stack(this);
  return *v1 != v1[1] || mlx::core::detail::RetainGraph::tracing_counter > 0;
}

uint64_t *mlx::core::array::copy_shared_buffer(uint64_t *a1, uint64_t a2, char **a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v14 = *(*a2 + 136);
  v13 = *(*a2 + 144);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(v12 + 144);
  *(v12 + 136) = v14;
  *(v12 + 144) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *a1;
  result = (*a1 + 24);
  if (result != a3)
  {
    result = std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(result, *a3, a3[1], (a3[1] - *a3) >> 3);
    v16 = *a1;
  }

  *(v16 + 168) = a4;
  v18 = *a1;
  *(v18 + 152) = *(*a2 + 152) + *(*a1 + 60) * a6;
  *(v18 + 160) = a5;
  return result;
}

void mlx::core::array::~array(mlx::core::array *this)
{
  v2 = *this;
  if (*this)
  {
    if (v2[8])
    {
      v4 = v2[25];
      v3 = v2[26];
      if (v3 != v4)
      {
        v5 = (v3 - v4) >> 4;
        v6 = *(this + 1);
        if (v6)
        {
          v6 = *(v6 + 8) + 1;
        }

        v7 = v6 == v5 + 1;
        v8 = v4;
        while (1)
        {
          v9 = v8[1];
          if (v9)
          {
            v9 = *(v9 + 8) + 1;
          }

          if (!v7 || v9 != v5)
          {
            break;
          }

          v8 += 2;
          v7 = 1;
          if (v8 == v3)
          {
            do
            {
              v10 = *v4;
              v12 = *(*v4 + 200);
              v11 = *(*v4 + 208);
              if (v12 != v11)
              {
                do
                {
                  v13 = *(v12 + 1);
                  *v12 = 0;
                  *(v12 + 1) = 0;
                  if (v13)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
                  }

                  v12 = (v12 + 16);
                }

                while (v12 != v11);
                v10 = *v4;
                v12 = *(*v4 + 200);
                v11 = *(*v4 + 208);
              }

              while (v11 != v12)
              {
                v11 = (v11 - 16);
                mlx::core::array::~array(v11);
              }

              *(v10 + 208) = v12;
              v4 += 2;
            }

            while (v4 != v3);
            break;
          }
        }
      }
    }
  }

  v14 = *(this + 1);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void mlx::core::array::ArrayDesc::init(mlx::core::array::ArrayDesc *this)
{
  std::vector<long long>::resize(this + 3, (*(this + 1) - *this) >> 2);
  *(this + 6) = 1;
  v3 = *this;
  v4 = ((*(this + 1) - *this) >> 2) - 1;
  if (v4 >= 0)
  {
    v5 = *(this + 3);
    v6 = 1;
    do
    {
      *(v5 + 8 * v4) = v6;
      v6 *= *(v3 + 4 * v4--);
    }

    while (v4 != -1);
    *(this + 6) = v6;
  }

  v7 = *(this + 22);
  for (i = *(this + 23); v7 != i; v7 += 16)
  {
    v9 = *(*v7 + 128) == 1 && (v2 = mlx::core::detail::InTracing::trace_stack(v2), *v2 != v2[1]) || mlx::core::detail::RetainGraph::tracing_counter > 0;
    *(this + 128) |= v9;
  }
}

void std::vector<long long>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<long long>::__append(result, a2 - v2);
  }
}

uint64_t mlx::core::array::ArrayDesc::ArrayDesc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = a3;
  *(a1 + 80) = 2;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  mlx::core::array::ArrayDesc::init(a1);
  return a1;
}

void sub_25A284F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v13;
  a10 = (v10 + 200);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = *(v10 + 144);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  mlx::core::array::ArrayDesc::ArrayDesc(v10, v12, v11);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::array::ArrayDesc::ArrayDesc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 176) = *a5;
  *(a1 + 192) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  mlx::core::array::ArrayDesc::init(a1);
  return a1;
}

void sub_25A285028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = *(v10 + 144);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  mlx::core::array::ArrayDesc::ArrayDesc(v10, (v10 + 72), v12, v11);
  _Unwind_Resume(a1);
}

void mlx::core::array::ArrayDesc::~ArrayDesc(std::__shared_weak_count **this)
{
  v2 = (this + 22);
  if (this[22] != this[23])
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = &v16;
    mlx::core::array::ArrayDesc::~ArrayDesc()::$_0::operator()(&v19, this);
    while (1)
    {
      v3 = v17;
      if (v16 == v17)
      {
        break;
      }

      v5 = *(v17 - 2);
      v4 = *(v17 - 1);
      *(v17 - 2) = 0;
      *(v3 - 1) = 0;
      v6 = v17;
      v7 = *(v17 - 1);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v17 = v6 - 2;
      mlx::core::array::ArrayDesc::~ArrayDesc()::$_0::operator()(&v19, v5);
      v9 = *(v5 + 200);
      v8 = *(v5 + 208);
      if (v9 != v8)
      {
        do
        {
          v10 = *(v9 + 1);
          *v9 = 0;
          *(v9 + 1) = 0;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          v9 = (v9 + 16);
        }

        while (v9 != v8);
        v9 = *(v5 + 200);
        v8 = *(v5 + 208);
      }

      while (v8 != v9)
      {
        v8 = (v8 - 16);
        mlx::core::array::~array(v8);
      }

      *(v5 + 208) = v9;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }

    v19 = &v16;
    std::vector<std::shared_ptr<mlx::core::array::ArrayDesc>>::__destroy_vector::operator()[abi:ne200100](&v19);
  }

  v16 = (this + 25);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = v2;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v16);
  v11 = this[18];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[14];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[9];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = this[3];
  if (v14)
  {
    this[4] = v14;
    operator delete(v14);
  }

  v15 = *this;
  if (*this)
  {
    this[1] = v15;
    operator delete(v15);
  }
}

uint64_t mlx::core::array::ArrayDesc::~ArrayDesc()::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 1065353216;
  v5 = *(a2 + 176);
  v4 = *(a2 + 184);
  if (v5 != v4)
  {
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v38 = *v5;
        v39 = v6;
        v7 = *(v5 + 1);
        v40 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
        }

        std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(&v35, &v38, &v38);
        mlx::core::array::~array(&v39);
        v8 = *(*v5 + 200);
        v9 = *(*v5 + 208);
        while (v8 != v9)
        {
          v38 = *v8;
          v39 = v38;
          v10 = *(v8 + 8);
          v40 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
          }

          std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(&v35, &v38, &v38);
          mlx::core::array::~array(&v39);
          v8 += 16;
        }
      }

      v5 = (v5 + 16);
    }

    while (v5 != v4);
    v5 = *(a2 + 176);
    v4 = *(a2 + 184);
  }

  while (v4 != v5)
  {
    v4 = (v4 - 16);
    mlx::core::array::~array(v4);
  }

  *(a2 + 184) = v5;
  for (i = v36; i; i = *i)
  {
    v12 = i[4];
    if (v12)
    {
      v13 = *(v12 + 8) + 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = i[3];
    v16 = *(v14 + 200);
    v15 = *(v14 + 208);
    v17 = v13 <= ((v15 - v16) >> 4) + 1;
    if (v15 == v16)
    {
LABEL_26:
      if (v17)
      {
        v22 = *a1;
        v23 = *(*a1 + 8);
        v24 = *(*a1 + 16);
        if (v23 >= v24)
        {
          v26 = (v23 - *v22) >> 4;
          v27 = v26 + 1;
          if ((v26 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v28 = v24 - *v22;
          if (v28 >> 3 > v27)
          {
            v27 = v28 >> 3;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          v42 = *a1;
          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(v22, v29);
          }

          *(16 * v26) = *(i + 3);
          v25 = 16 * v26 + 16;
          i[3] = 0;
          i[4] = 0;
          v30 = *(v22 + 8) - *v22;
          v31 = (16 * v26 - v30);
          memcpy(v31, *v22, v30);
          v32 = *v22;
          *v22 = v31;
          v38 = v32;
          v39 = v32;
          *(v22 + 8) = v25;
          v40 = v32;
          v33 = *(v22 + 16);
          *(v22 + 16) = 0;
          v41 = v33;
          std::__split_buffer<std::shared_ptr<mlx::core::array::ArrayDesc>>::~__split_buffer(&v38);
        }

        else
        {
          *v23 = v14;
          v23[1] = i[4];
          i[3] = 0;
          i[4] = 0;
          v25 = (v23 + 2);
        }

        *(v22 + 8) = v25;
      }
    }

    else
    {
      while (v17)
      {
        v38 = *v16;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(&v35, &v38);
        v19 = *(v16 + 8);
        if (v19)
        {
          v20 = *(v19 + 8) + 1;
        }

        else
        {
          v20 = 0;
        }

        v14 = i[3];
        v21 = (*(v14 + 208) - *(v14 + 200)) >> 4;
        if (v18)
        {
          ++v21;
        }

        v17 = v20 <= v21;
        v16 += 16;
        if (v16 == v15)
        {
          goto LABEL_26;
        }
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::~__hash_table(&v35);
}

uint64_t mlx::core::array::ArrayIterator::ArrayIterator(uint64_t this, const mlx::core::array *a2, int a3)
{
  *this = a2;
  *(this + 8) = a3;
  if (*(*a2 + 8) == **a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Cannot iterate over 0-d array.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  return this;
}

void mlx::core::array::ArrayIterator::operator*(uint64_t **a1@<X0>, const void ***a2@<X8>)
{
  v4 = (*(**a1 + 8) - ***a1) >> 2;
  LODWORD(v27) = 0;
  std::vector<int>::vector[abi:ne200100](&v30, v4, &v27);
  v5 = **a1;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v27, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
  v6 = **a1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
  v7 = v24;
  v8 = v25 - (v24 + 4);
  if (v25 != v24 + 4)
  {
    memmove(v24, v24 + 4, v25 - (v24 + 4));
  }

  v25 = &v7[v8];
  v9 = *(a1 + 2);
  v10 = v30;
  *v30 = v9;
  *v27 = v9 + 1;
  v11 = *a1;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, v10, v31, (v31 - v10) >> 2);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v17, v27, v28, (v28 - v27) >> 2);
  mlx::core::slice(v11, &v20, &v17, v12, 0, v23);
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v24, v25, (v25 - v24) >> 2);
  mlx::core::reshape(v23, &__p, v13, 0, a2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(v23);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_25A285704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a18);
  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  v23 = *(v21 - 80);
  if (v23)
  {
    *(v21 - 72) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 56);
  if (v24)
  {
    *(v21 - 48) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void std::construct_at[abi:ne200100]<mlx::core::array,std::vector<int>,mlx::core::Dtype const&,std::shared_ptr<mlx::core::Primitive> const&,std::vector<mlx::core::array> const&,mlx::core::array*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void **a5)
{
  *__p = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a3;
  v7 = a4[1];
  v8[3] = *a4;
  v8[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v8, 0, 24);
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v8, *a5, a5[1], (a5[1] - *a5) >> 4);
  mlx::core::array::array(a1, __p, v6);
}

void sub_25A285870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 40) = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
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

uint64_t *std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A285910(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<long long>::__move_assign(uint64_t a1, __n128 *a2)
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

uint64_t *std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void **std::__split_buffer<std::shared_ptr<mlx::core::array::ArrayDesc>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<mlx::core::array::ArrayDesc>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<mlx::core::array::ArrayDesc>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<mlx::core::array::ArrayDesc>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<mlx::core::array::ArrayDesc>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<mlx::core::array::ArrayDesc>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__shared_ptr_emplace<mlx::core::array::ArrayDesc>::__shared_ptr_emplace[abi:ne200100]<std::vector<int>,mlx::core::Dtype &,std::shared_ptr<mlx::core::Primitive>,std::vector<mlx::core::array>,std::allocator<mlx::core::array::ArrayDesc>,0>(void *a1, __int128 *a2, uint64_t *a3, __int128 *a4, __int128 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3418;
  std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype &,std::shared_ptr<mlx::core::Primitive>,std::vector<mlx::core::array>,mlx::core::array::ArrayDesc*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype &,std::shared_ptr<mlx::core::Primitive>,std::vector<mlx::core::array>,mlx::core::array::ArrayDesc*>(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4, __int128 *a5)
{
  v6 = *a2;
  v13 = *(a2 + 2);
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v7 = *a3;
  v11 = *a4;
  *__p = v6;
  *a4 = 0uLL;
  v9 = *a5;
  v10 = *(a5 + 2);
  *(a5 + 8) = 0uLL;
  *a5 = 0;
  mlx::core::array::ArrayDesc::ArrayDesc(a1, __p, v7, &v11, &v9);
  v14 = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_25A285F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p)
{
  *(v16 - 24) = v15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v16 - 24));
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

uint64_t std::__function::__func<mlx::core::array::unsafe_weak_copy(mlx::core::array const&)::$_0,std::allocator<mlx::core::array::unsafe_weak_copy(mlx::core::array const&)::$_0>,void ()(mlx::core::allocator::Buffer)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<mlx::core::array::ArrayDesc>::__shared_ptr_emplace[abi:ne200100]<std::vector<int>,mlx::core::Dtype const&,std::allocator<mlx::core::array::ArrayDesc>,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3418;
  std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype const&,mlx::core::array::ArrayDesc*>((a1 + 3), a2, a3);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype const&,mlx::core::array::ArrayDesc*>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  mlx::core::array::ArrayDesc::ArrayDesc(a1, __p, *a3);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_25A286158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<mlx::core::array::Data>::__shared_ptr_emplace[abi:ne200100]<mlx::core::allocator::Buffer &,std::function<void ()(mlx::core::allocator::Buffer)> &,std::allocator<mlx::core::array::Data>,0>(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE6090;
  std::construct_at[abi:ne200100]<mlx::core::array::Data,mlx::core::allocator::Buffer &,std::function<void ()(mlx::core::allocator::Buffer)> &,mlx::core::array::Data*>(a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::array::Data>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE6090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::construct_at[abi:ne200100]<mlx::core::array::Data,mlx::core::allocator::Buffer &,std::function<void ()(mlx::core::allocator::Buffer)> &,mlx::core::array::Data*>(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v6, a3);
  *a1 = v4;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100]((a1 + 1), v6);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v6);
  return a1;
}

void sub_25A286340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::array::Data::~Data(mlx::core::array::Data *this)
{
  v1 = this + 8;
  std::function<void ()(mlx::core::allocator::Buffer)>::operator()(this + 8, *this);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v1);
}

uint64_t std::function<void ()(mlx::core::allocator::Buffer)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t mlx::core::serialize(uint64_t a1, int *a2)
{
  v5 = *a2;
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = a2[1];
  (*(*a1 + 32))(a1, &v6, 4);
  v7 = a2[2];
  return (*(*a1 + 32))(a1, &v7, 4);
}

{
  v5 = *a2;
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = *(a2 + 4);
  return (*(*a1 + 32))(a1, &v6, 1);
}

unint64_t mlx::core::deserialize<mlx::core::Stream>(uint64_t a1)
{
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  v2 = v5;
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  v3 = v5;
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  return __PAIR64__(v3, v2);
}

unint64_t mlx::core::deserialize<mlx::core::Dtype>(uint64_t a1)
{
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 4);
  v2 = v4;
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 1);
  return v2 | (v5 << 32);
}

uint64_t mlx::core::serialize(mlx::core *this, mlx::core::io::FileWriter *a2, const mlx::core::array *a3)
{
  v5 = *a2;
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
  mlx::core::serialize<std::vector<int>>(this, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v6 = *(*a2 + 56);
  v11 = v6;
  (*(*this + 32))(this, &v11, 4);
  LOBYTE(v11) = BYTE4(v6);
  return (*(*this + 32))(this, &v11, 1);
}

void sub_25A2867B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize<std::vector<int>>(uint64_t a1, int **a2)
{
  v8 = a2[1] - *a2;
  result = (*(*a1 + 32))(a1, &v8, 8);
  v6 = *a2;
  v5 = a2[1];
  while (v6 != v5)
  {
    v7 = *v6++;
    v9 = v7;
    result = (*(*a1 + 32))(a1, &v9, 4);
  }

  return result;
}

void mlx::core::deserialize<mlx::core::array>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlx::core::deserialize<std::vector<int>>(a1, &v8);
  v4 = mlx::core::deserialize<mlx::core::Dtype>(a1);
  __p = v8;
  memset(&v8, 0, sizeof(v8));
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  mlx::core::array::array(a2, &__p, v4 & 0xFFFFFFFFFFLL);
  v9 = v5;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v8.__begin_)
  {
    v8.__end_ = v8.__begin_;
    operator delete(v8.__begin_);
  }
}

void sub_25A286940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 24) = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v17 - 24));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 48);
  if (v19)
  {
    *(v17 - 40) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void mlx::core::deserialize<std::vector<int>>(uint64_t a1@<X0>, std::vector<int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  __n = 0;
  (*(*a1 + 32))(a1, &__n, 8);
  v4 = __n;
  std::vector<int>::reserve(a2, __n);
  for (; v4; --v4)
  {
    v16 = 0;
    (*(*a1 + 32))(a1, &v16, 4);
    end = a2->__end_;
    value = a2->__end_cap_.__value_;
    if (end >= value)
    {
      begin = a2->__begin_;
      v9 = end - a2->__begin_;
      v10 = v9 >> 2;
      v11 = (v9 >> 2) + 1;
      if (v11 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = value - begin;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v13);
      }

      *(4 * v10) = v16;
      v7 = (4 * v10 + 4);
      memcpy(0, begin, v9);
      v14 = a2->__begin_;
      a2->__begin_ = 0;
      a2->__end_ = v7;
      a2->__end_cap_.__value_ = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *end = v16;
      v7 = end + 1;
    }

    a2->__end_ = v7;
  }
}

void sub_25A286B14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::write_header(mlx::core *this, mlx::core::io::FileWriter *a2, char a3)
{
  v4 = a2;
  mlx::core::version(__p);
  mlx::core::serialize<std::string>(this, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v4;
  (*(*this + 32))(this, &v9, 4);
  LOBYTE(v9) = a3;
  return (*(*this + 32))(this, &v9, 1);
}

void sub_25A286BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v4 = *(a2 + 8);
  }

  v9 = v4;
  result = (*(*a1 + 32))(a1, &v9, 8);
  v6 = v2[23];
  if (v6 < 0)
  {
    v7 = v2;
    v2 = *v2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *v2++;
    v10 = v8;
    result = (*(*a1 + 32))(a1, &v10, 1);
  }

  return result;
}

uint64_t mlx::core::FunctionTable::match(char *a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v8 = *a4;
  v9 = a4[1];
  while (v8 != v9)
  {
    if (!std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::find<std::string>(a3, v8))
    {
      return 0;
    }

    v8 += 3;
  }

  v10 = *a1;
  v12 = a2;
  v11 = *a2;
  v13 = v12[1] - v11;
  if (v13)
  {
    v14 = v13 >> 4;
    v15 = a4[3];
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    v17 = v16;
    while (1)
    {
      v18 = *v11;
      v19 = *v15;
      if (*(*v11 + 56) != *(*v15 + 56))
      {
        return 0;
      }

      if ((v10 & 1) == 0)
      {
        v20 = *(v18 + 8) - *v18;
        if (v20 != *(v19 + 8) - *v19 || memcmp(*v18, *v19, v20))
        {
          return 0;
        }
      }

      v15 += 16;
      v11 += 2;
      if (!--v17)
      {
        v21 = v16;
        goto LABEL_18;
      }
    }
  }

  v21 = 0;
LABEL_18:
  std::map<std::string,mlx::core::array>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *> *>>>(&v32, *(a3 + 16), 0);
  v23 = v32;
  if (v32 == v33)
  {
LABEL_30:
    v22 = 1;
  }

  else
  {
    v24 = a4[3];
    while (1)
    {
      v25 = v23[7];
      v26 = *(v24 + 16 * v21);
      if (*(v25 + 56) != *(v26 + 56))
      {
        break;
      }

      if ((v10 & 1) == 0)
      {
        v27 = *(v25 + 8) - *v25;
        if (v27 != *(v26 + 8) - *v26 || memcmp(*v25, *v26, v27))
        {
          break;
        }
      }

      v28 = v23[1];
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
          v29 = v23[2];
          v30 = *v29 == v23;
          v23 = v29;
        }

        while (!v30);
      }

      ++v21;
      v23 = v29;
      if (v29 == v33)
      {
        goto LABEL_30;
      }
    }

    v22 = 0;
  }

  std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::destroy(&v32, v33[0]);
  return v22;
}

void mlx::core::FunctionTable::emplace(char *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 24) + ((a2[1] - *a2) >> 4);
  memset(v3, 0, sizeof(v3));
  std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::__emplace_unique_impl<unsigned long,std::vector<mlx::core::FunctionTable::Function>>((a1 + 8), &v4, v3);
}

void sub_25A286F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<mlx::core::FunctionTable::Function>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **mlx::core::FunctionTable::find(char *a1, void *a2, uint64_t a3)
{
  v10 = ((a2[1] - *a2) >> 4) + *(a3 + 24);
  v6 = std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::find<int>(a1 + 1, &v10);
  if (v6)
  {
    v7 = v6[3];
    v8 = v6[4];
    while (v7 != v8)
    {
      if (mlx::core::FunctionTable::match(a1, a2, a3, v7))
      {
        return v7;
      }

      v7 += 12;
    }
  }

  return 0;
}

void mlx::core::FunctionExporter::FunctionExporter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  *a1 = &unk_286BE60E0;
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v7;
  }

  else
  {
    v6 = v7.__r_.__value_.__r.__words[0];
  }

  *(a1 + 8) = open(v6, 1537, a3, a4, 420);
  *(a1 + 16) = v7;
  memset(&v7, 0, sizeof(v7));
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](a1 + 40, a3);
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  operator new();
}

void sub_25A287204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      v20 = *(v15 + 112);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      std::__tree<int>::destroy(v16, *(v15 + 80));
      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](v15 + 40);
      mlx::core::io::FileWriter::~FileWriter(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void sub_25A287274(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x25A28726CLL);
}

void mlx::core::FunctionExporter::export_function(uint64_t a1, void **a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a1 + 100) != 1)
  {
    mlx::core::FunctionTable::emplace(*(a1 + 104), a2, a3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[export_function] Attempting to write after exporting is closed.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void mlx::core::serialize<std::vector<std::string>>(uint64_t a1, char **a2)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  (*(*a1 + 32))(a1, &v8, 8);
  v5 = *a2;
  v4 = a2[1];
  while (v5 != v4)
  {
    if (v5[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
    }

    else
    {
      v6 = *v5;
      __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    mlx::core::serialize<std::string>(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 += 24;
  }
}

void sub_25A287FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize<std::vector<unsigned long long>>(uint64_t a1, uint64_t **a2)
{
  v8 = a2[1] - *a2;
  result = (*(*a1 + 32))(a1, &v8, 8);
  v6 = *a2;
  v5 = a2[1];
  while (v6 != v5)
  {
    v7 = *v6++;
    v8 = v7;
    result = (*(*a1 + 32))(a1, &v8, 8);
  }

  return result;
}

uint64_t mlx::core::serialize<std::vector<mlx::core::array>>(mlx::core *a1, mlx::core::io::FileWriter **a2)
{
  v8 = (a2[1] - *a2) >> 4;
  result = (*(*a1 + 32))(a1, &v8, 8);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    result = mlx::core::serialize(a1, v6, v5);
    v6 = (v6 + 16);
  }

  return result;
}

uint64_t mlx::core::PrimitiveFactory::save(void *a1, uint64_t a2, void *a3)
{
  mlx::core::serialize(a2, (*a3 + 8));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  (*(**a3 + 40))(*a3, &v21);
  if ((v28 & 0x10) != 0)
  {
    v7 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v7 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v6 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_14;
    }

    locale = v23[1].__locale_;
    v7 = v23[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v7 - locale;
  if (v6)
  {
    memmove(&__dst, locale, v6);
  }

LABEL_14:
  __dst.__r_.__value_.__s.__data_[v6] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    v11 = memchr(p_dst, 32, size);
    if (v11)
    {
      v12 = v11 - p_dst;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = -1;
  }

  std::string::basic_string(&v19, &__dst, 0, v12, &v30);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  __dst = v19;
  v13 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 5, &__dst);
  if (v13)
  {
    std::string::operator=(&__dst, (v13 + 5));
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  mlx::core::serialize<std::string>(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1, &__dst);
  if (!v14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::logic_error::logic_error(exception, &v19);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v15 = v14[8];
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v15 + 48))(v15, a2, *a3);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D82828];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x277D82828] + 24);
  v22 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x25F8516C0](&v29);
}

void sub_25A288530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a28);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<mlx::core::Dtype>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void mlx::core::serialize<std::vector<std::vector<int>>>(uint64_t a1, uint64_t *a2)
{
  v9 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  (*(*a1 + 32))(a1, &v9, 8);
  v5 = *a2;
  v4 = a2[1];
  while (v5 != v4)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
    mlx::core::serialize<std::vector<int>>(a1, &__p);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    v5 += 24;
  }
}

void sub_25A288794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize<std::vector<mlx::core::Dtype>>(uint64_t a1, char **a2)
{
  v7 = (a2[1] - *a2) >> 3;
  result = (*(*a1 + 32))(a1, &v7, 8);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    result = mlx::core::serialize(a1, v5);
    v5 += 8;
  }

  return result;
}

ssize_t mlx::core::io::FileWriter::write(ssize_t this, const char *__buf, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = this;
    do
    {
      if (v3 >= 0x7FFFFFFF)
      {
        v6 = 0x7FFFFFFFLL;
      }

      else
      {
        v6 = v3;
      }

      this = write(*(v5 + 8), __buf, v6);
      if (this <= 0)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v11);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[write] Unable to write ", 24);
        v8 = MEMORY[0x25F851380](v7, v3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " bytes to file.", 15);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v11, v10);
        MEMORY[0x25F851100](exception, v10);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      __buf += this;
      v3 -= this;
    }

    while (v3);
  }

  return this;
}

void sub_25A288934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void **std::pair<std::vector<mlx::core::array>,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>::~pair(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::~__hash_table((a1 + 3));
  v3 = a1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void mlx::core::FunctionExporter::operator()(uint64_t a1, void **a2)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  mlx::core::FunctionExporter::export_function(a1, a2, v2);
}

void sub_25A288A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void mlx::core::exporter(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v4, a2);
  v5 = 0;
  operator new();
}

void sub_25A288B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::exporter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](v3, a2);
  v4 = 0;
  operator new();
}

void sub_25A288C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::exporter(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X1>)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](v7, a4);
  mlx::core::FunctionExporter::FunctionExporter(a3, a1, v7, a2);
}

void sub_25A288D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::FunctionExporter::~FunctionExporter(mlx::core::FunctionExporter *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<int>::destroy(this + 72, *(this + 10));
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](this + 40);

  mlx::core::io::FileWriter::~FileWriter(this);
}

void mlx::core::ImportedFunction::operator()(char **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memset(v3, 0, sizeof(v3));
  mlx::core::ImportedFunction::operator()(a1, v3, a2, a3);
  v4 = v3;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void sub_25A289008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void mlx::core::ImportedFunction::operator()(char **a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = mlx::core::FunctionTable::find(*a1, a2, a3);
  if (!v8)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v39);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "[import_function::call] No imported function found which matches ", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "the given positional and keyword arguments. Possible functions include:\n", 72);
    mlx::core::FunctionTable::print_functions(*a1, v39);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\nCalled with ", 13);
    v13 = MEMORY[0x25F851380](v12, (a2[1] - *a2) >> 4);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " positional inputs and ", 23);
    v15 = MEMORY[0x25F851380](v14, *(a3 + 24));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " keyword inputs:\n", 17);
    v16 = *a2;
    if (a2[1] != *a2)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "  ", 2);
        v22 = MEMORY[0x25F851360](v21, ++v20);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": ", 2);
        v24 = mlx::core::operator<<(v23, *(v16 + v19));
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ", 1);
        v26 = *(*(v16 + v19) + 56);
        LODWORD(v38.__r_.__value_.__l.__data_) = v26;
        v38.__r_.__value_.__s.__data_[4] = BYTE4(v26);
        v27 = mlx::core::operator<<(v25, &v38);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
        v16 = *a2;
        v19 += 16;
      }

      while (v20 < (a2[1] - *a2) >> 4);
    }

    for (i = *(a3 + 16); i; i = *i)
    {
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "  ", 3);
      v29 = *(i + 39);
      if (v29 >= 0)
      {
        v30 = (i + 2);
      }

      else
      {
        v30 = i[2];
      }

      if (v29 >= 0)
      {
        v31 = *(i + 39);
      }

      else
      {
        v31 = i[3];
      }

      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 3);
      v34 = mlx::core::operator<<(v33, i[5]);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 1);
      v36 = i[5][7];
      LODWORD(v38.__r_.__value_.__l.__data_) = v36;
      v38.__r_.__value_.__s.__data_[4] = BYTE4(v36);
      v37 = mlx::core::operator<<(v35, &v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "\n", 1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v39, &v38);
    std::logic_error::logic_error(exception, &v38);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v9 = v8;
  memset(v39, 0, 24);
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v39, *a2, a2[1], (a2[1] - *a2) >> 4);
  for (j = (a3 + 16); ; std::vector<mlx::core::array>::push_back[abi:ne200100](v39, (j + 5)))
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  mlx::core::detail::compile_replace(v9 + 9, v9 + 3, (v9 + 6), v39, **a1, a4);
  v38.__r_.__value_.__r.__words[0] = v39;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v38);
}

uint64_t mlx::core::ImportedFunction::operator()@<X0>(char **a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  mlx::core::ImportedFunction::operator()(a1, a2, v4, a3);
  return std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(v4);
}

void *mlx::core::FunctionTable::print_functions(void *result, void *a2)
{
  v2 = result[3];
  if (v2)
  {
    v4 = 1;
    do
    {
      v30 = v2;
      v6 = v2[3];
      v5 = v2[4];
      v31 = v5;
      while (v6 != v5)
      {
        v7 = 0x5555555555555555 * ((v6[1] - *v6) >> 3) + ((v6[4] - v6[3]) >> 4);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
        v9 = MEMORY[0x25F851360](v8, v4);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ". Function with ", 16);
        v11 = MEMORY[0x25F851380](v10, v7);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " positional inputs and ", 23);
        v13 = MEMORY[0x25F851380](v12, 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
        result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " keyword inputs:\n", 17);
        v14 = v6[3];
        if (v6[4] != v14)
        {
          v15 = 0;
          do
          {
            if (v15 >= v7)
            {
              v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "   ", 4);
              v20 = *v6 + 24 * (v15 - v7);
              v21 = *(v20 + 23);
              if (v21 >= 0)
              {
                v22 = *v6 + 24 * (v15 - v7);
              }

              else
              {
                v22 = *v20;
              }

              if (v21 >= 0)
              {
                v23 = *(v20 + 23);
              }

              else
              {
                v23 = *(v20 + 8);
              }

              v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v22, v23);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 3);
              v17 = v15 + 1;
            }

            else
            {
              v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "   ", 3);
              v17 = v15 + 1;
              v18 = MEMORY[0x25F851360](v16, v15 + 1);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
            }

            v25 = (v14 + 16 * v15);
            v26 = mlx::core::operator<<(a2, *v25);
            v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " ", 1);
            v28 = (*v25)[7];
            LODWORD(v32) = v28;
            BYTE4(v32) = BYTE4(v28);
            v29 = mlx::core::operator<<(v27, &v32);
            result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\n", 1);
            v14 = v6[3];
            v15 = v17;
          }

          while (v17 < (v6[4] - v14) >> 4);
        }

        v4 = (v4 + 1);
        v6 += 12;
        v5 = v31;
      }

      v2 = *v30;
    }

    while (*v30);
  }

  return result;
}

void sub_25A28A0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
    if ((v60 & 1) == 0)
    {
LABEL_6:
      if (a21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a21);
      }

      v63 = *(a10 + 8);
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v60)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v61);
  goto LABEL_6;
}

void mlx::core::deserialize<std::string>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  __requested_capacity = 0;
  (*(*a1 + 32))(a1, &__requested_capacity, 8);
  v4 = __requested_capacity;
  std::string::reserve(a2, __requested_capacity);
  for (; v4; --v4)
  {
    __c = 0;
    (*(*a1 + 32))(a1, &__c, 1);
    std::string::push_back(a2, __c);
  }
}

void sub_25A28A4A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mlx::core::FunctionTable::Function>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<mlx::core::FunctionTable::Function>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<mlx::core::FunctionTable::Function>::__base_destruct_at_end[abi:ne200100](uint64_t result, void **a2)
{
  for (i = *(result + 8); i != a2; std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(result, i))
  {
    i -= 12;
  }

  *(result + 8) = a2;
}

void std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(uint64_t a1, void **a2)
{
  v3 = a2 + 9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a2 + 6;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a2 + 3;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::vector<mlx::core::FunctionTable::Function>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v4 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>>(a1, v4);
  }

  v5 = 96 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *&v14 = 96 * v1 + 96;
  v6 = a1[1];
  v7 = 96 * v1 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>(a1, *a1, v6, (v5 + *a1 - v6));
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<mlx::core::FunctionTable::Function>::~__split_buffer(&v12);
  return v11;
}

void sub_25A28A6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<mlx::core::FunctionTable::Function>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      mlx::core::FunctionTable::Function::Function(a4, v7);
      v7 += 12;
      a4 = v12 + 12;
      v12 += 12;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(a1, v5);
      v5 += 12;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

__n128 mlx::core::FunctionTable::Function::Function(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  result = *(a2 + 72);
  *(a1 + 9) = result;
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 12;
      std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<mlx::core::FunctionTable::Function>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<mlx::core::FunctionTable::Function>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<mlx::core::FunctionTable::Function>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  while (1)
  {
    v4 = *(result + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(result + 32);
    *(result + 16) = v4 - 96;
    std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(v5, (v4 - 96));
  }
}

void mlx::core::io::FileWriter::~FileWriter(mlx::core::io::FileWriter *this)
{
  mlx::core::io::FileWriter::~FileWriter(this);

  JUMPOUT(0x25F851760);
}

{
  *this = &unk_286BE60E0;
  v2 = *(this + 2);
  if (v2)
  {
    close(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A28AD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

uint64_t *std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A28B0F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t mlx::core::PrimitiveFactory::PrimitiveFactory(mlx::core::PrimitiveFactory *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v1248[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v453, "Abs");
  v1133[0] = &unk_286BE6158;
  v1133[1] = mlx::core::serialize_primitive<mlx::core::Abs>;
  v1133[3] = v1133;
  v1132[0] = &unk_286BE6208;
  v1132[1] = mlx::core::deserialize_primitive<mlx::core::Abs>;
  v1132[3] = v1132;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1134, v1133);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1135, v1132);
  v1136 = 0uLL;
  v1137 = 0;
  v452 = 0;
  v451 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1138, v453, v1134);
  std::string::basic_string[abi:ne200100]<0>(v449, "Add");
  v1127[0] = &unk_286BE6158;
  v1127[1] = mlx::core::serialize_primitive<mlx::core::Add>;
  v1127[3] = v1127;
  v1126[0] = &unk_286BE62B8;
  v1126[1] = mlx::core::deserialize_primitive<mlx::core::Add>;
  v1126[3] = v1126;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1128, v1127);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1129, v1126);
  v1130 = 0uLL;
  v1131 = 0;
  v448 = 0;
  v447 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1139, v449, v1128);
  std::string::basic_string[abi:ne200100]<0>(v445, "AddMM");
  v1121[0] = &unk_286BE6158;
  v1121[1] = mlx::core::serialize_primitive<mlx::core::AddMM>;
  v1121[3] = v1121;
  v1120[0] = &unk_286BE6358;
  v1120[1] = mlx::core::deserialize_primitive<mlx::core::AddMM>;
  v1120[3] = v1120;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1122, v1121);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1123, v1120);
  v1124 = 0uLL;
  v1125 = 0;
  v444 = 0;
  v443 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1140, v445, v1122);
  std::string::basic_string[abi:ne200100]<0>(v441, "Arange");
  v1115[0] = &unk_286BE6158;
  v1115[1] = mlx::core::serialize_primitive<mlx::core::Arange>;
  v1115[3] = v1115;
  v1114[0] = &unk_286BE63F8;
  v1114[1] = mlx::core::deserialize_primitive<mlx::core::Arange>;
  v1114[3] = v1114;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1116, v1115);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1117, v1114);
  v1118 = 0uLL;
  v1119 = 0;
  v440 = 0;
  v439 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1141, v441, v1116);
  std::string::basic_string[abi:ne200100]<0>(v437, "ArcCos");
  v1109[0] = &unk_286BE6158;
  v1109[1] = mlx::core::serialize_primitive<mlx::core::ArcCos>;
  v1109[3] = v1109;
  v1108[0] = &unk_286BE6498;
  v1108[1] = mlx::core::deserialize_primitive<mlx::core::ArcCos>;
  v1108[3] = v1108;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1110, v1109);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1111, v1108);
  v1112 = 0uLL;
  v1113 = 0;
  v436 = 0;
  v435 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1142, v437, v1110);
  std::string::basic_string[abi:ne200100]<0>(v433, "ArcCosh");
  v1103[0] = &unk_286BE6158;
  v1103[1] = mlx::core::serialize_primitive<mlx::core::ArcCosh>;
  v1103[3] = v1103;
  v1102[0] = &unk_286BE6538;
  v1102[1] = mlx::core::deserialize_primitive<mlx::core::ArcCosh>;
  v1102[3] = v1102;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1104, v1103);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1105, v1102);
  v1106 = 0uLL;
  v1107 = 0;
  v432 = 0;
  v431 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1143, v433, v1104);
  std::string::basic_string[abi:ne200100]<0>(v429, "ArcSin");
  v1097[0] = &unk_286BE6158;
  v1097[1] = mlx::core::serialize_primitive<mlx::core::ArcSin>;
  v1097[3] = v1097;
  v1096[0] = &unk_286BE65D8;
  v1096[1] = mlx::core::deserialize_primitive<mlx::core::ArcSin>;
  v1096[3] = v1096;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1098, v1097);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1099, v1096);
  v1100 = 0uLL;
  v1101 = 0;
  v428 = 0;
  v427 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1144, v429, v1098);
  std::string::basic_string[abi:ne200100]<0>(v425, "ArcSinh");
  v1091[0] = &unk_286BE6158;
  v1091[1] = mlx::core::serialize_primitive<mlx::core::ArcSinh>;
  v1091[3] = v1091;
  v1090[0] = &unk_286BE6678;
  v1090[1] = mlx::core::deserialize_primitive<mlx::core::ArcSinh>;
  v1090[3] = v1090;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1092, v1091);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1093, v1090);
  v1094 = 0uLL;
  v1095 = 0;
  v424 = 0;
  v423 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1145, v425, v1092);
  std::string::basic_string[abi:ne200100]<0>(v421, "ArcTan");
  v1085[0] = &unk_286BE6158;
  v1085[1] = mlx::core::serialize_primitive<mlx::core::ArcTan>;
  v1085[3] = v1085;
  v1084[0] = &unk_286BE6718;
  v1084[1] = mlx::core::deserialize_primitive<mlx::core::ArcTan>;
  v1084[3] = v1084;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1086, v1085);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1087, v1084);
  v1088 = 0uLL;
  v1089 = 0;
  v420 = 0;
  v419 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1146, v421, v1086);
  std::string::basic_string[abi:ne200100]<0>(v417, "ArcTan2");
  v1079[0] = &unk_286BE6158;
  v1079[1] = mlx::core::serialize_primitive<mlx::core::ArcTan2>;
  v1079[3] = v1079;
  v1078[0] = &unk_286BE67B8;
  v1078[1] = mlx::core::deserialize_primitive<mlx::core::ArcTan2>;
  v1078[3] = v1078;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1080, v1079);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1081, v1078);
  v1082 = 0uLL;
  v1083 = 0;
  v416 = 0;
  v415 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1147, v417, v1080);
  std::string::basic_string[abi:ne200100]<0>(v413, "ArcTanh");
  v1073[0] = &unk_286BE6158;
  v1073[1] = mlx::core::serialize_primitive<mlx::core::ArcTanh>;
  v1073[3] = v1073;
  v1072[0] = &unk_286BE6858;
  v1072[1] = mlx::core::deserialize_primitive<mlx::core::ArcTanh>;
  v1072[3] = v1072;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1074, v1073);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1075, v1072);
  v1076 = 0uLL;
  v1077 = 0;
  v412 = 0;
  v411 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1148, v413, v1074);
  std::string::basic_string[abi:ne200100]<0>(v409, "ArgPartition");
  v1067[0] = &unk_286BE6158;
  v1067[1] = mlx::core::serialize_primitive<mlx::core::ArgPartition>;
  v1067[3] = v1067;
  v1066[0] = &unk_286BE68F8;
  v1066[1] = mlx::core::deserialize_primitive<mlx::core::ArgPartition>;
  v1066[3] = v1066;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1068, v1067);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1069, v1066);
  v1070 = 0uLL;
  v1071 = 0;
  v408 = 0;
  v407 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1149, v409, v1068);
  std::string::basic_string[abi:ne200100]<0>(v405, "ArgReduce");
  v1061[0] = &unk_286BE6158;
  v1061[1] = mlx::core::serialize_primitive<mlx::core::ArgReduce>;
  v1061[3] = v1061;
  v1060[0] = &unk_286BE6998;
  v1060[1] = mlx::core::deserialize_primitive<mlx::core::ArgReduce>;
  v1060[3] = v1060;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1062, v1061);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1063, v1060);
  v1064 = 0uLL;
  v1065 = 0;
  v404 = 0;
  v403 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1150, v405, v1062);
  std::string::basic_string[abi:ne200100]<0>(v401, "ArgSort");
  v1055[0] = &unk_286BE6158;
  v1055[1] = mlx::core::serialize_primitive<mlx::core::ArgSort>;
  v1055[3] = v1055;
  v1054[0] = &unk_286BE6A38;
  v1054[1] = mlx::core::deserialize_primitive<mlx::core::ArgSort>;
  v1054[3] = v1054;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1056, v1055);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1057, v1054);
  v1058 = 0uLL;
  v1059 = 0;
  v400 = 0;
  v399 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1151, v401, v1056);
  std::string::basic_string[abi:ne200100]<0>(v397, "AsType");
  v1049[0] = &unk_286BE6158;
  v1049[1] = mlx::core::serialize_primitive<mlx::core::AsType>;
  v1049[3] = v1049;
  v1048[0] = &unk_286BE6AD8;
  v1048[1] = mlx::core::deserialize_primitive<mlx::core::AsType>;
  v1048[3] = v1048;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1050, v1049);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1051, v1048);
  v1052 = 0uLL;
  v1053 = 0;
  v396 = 0;
  v395 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1152, v397, v1050);
  std::string::basic_string[abi:ne200100]<0>(v393, "AsStrided");
  v1043[0] = &unk_286BE6158;
  v1043[1] = mlx::core::serialize_primitive<mlx::core::AsStrided>;
  v1043[3] = v1043;
  v1042[0] = &unk_286BE6B78;
  v1042[1] = mlx::core::deserialize_primitive<mlx::core::AsStrided>;
  v1042[3] = v1042;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1044, v1043);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1045, v1042);
  v1046 = 0uLL;
  v1047 = 0;
  v392 = 0;
  v391 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1153, v393, v1044);
  std::string::basic_string[abi:ne200100]<0>(v389, "BitwiseBinary");
  v1037[0] = &unk_286BE6158;
  v1037[1] = mlx::core::serialize_primitive<mlx::core::BitwiseBinary>;
  v1037[3] = v1037;
  v1036[0] = &unk_286BE6C18;
  v1036[1] = mlx::core::deserialize_primitive<mlx::core::BitwiseBinary>;
  v1036[3] = v1036;
  std::string::basic_string[abi:ne200100]<0>(v1031, "BitwiseAnd");
  std::string::basic_string[abi:ne200100]<0>(v1032, "BitwiseOr");
  std::string::basic_string[abi:ne200100]<0>(v1033, "BitwiseXor");
  std::string::basic_string[abi:ne200100]<0>(v1034, "LeftShift");
  std::string::basic_string[abi:ne200100]<0>(v1035, "RightShift");
  v387 = 0uLL;
  v388 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v387, v1031, v1036, 5uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1038, v1037);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1039, v1036);
  v1040 = v387;
  v1041 = v388;
  v388 = 0;
  v387 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1154, v389, v1038);
  std::string::basic_string[abi:ne200100]<0>(v385, "BlockMaskedMM");
  v1026[0] = &unk_286BE6158;
  v1026[1] = mlx::core::serialize_primitive<mlx::core::BlockMaskedMM>;
  v1026[3] = v1026;
  v1025[0] = &unk_286BE6CB8;
  v1025[1] = mlx::core::deserialize_primitive<mlx::core::BlockMaskedMM>;
  v1025[3] = v1025;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1027, v1026);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1028, v1025);
  v1029 = 0uLL;
  v1030 = 0;
  v384 = 0;
  v383 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1155, v385, v1027);
  std::string::basic_string[abi:ne200100]<0>(v381, "Broadcast");
  v1020[0] = &unk_286BE6158;
  v1020[1] = mlx::core::serialize_primitive<mlx::core::Broadcast>;
  v1020[3] = v1020;
  v1019[0] = &unk_286BE6D58;
  v1019[1] = mlx::core::deserialize_primitive<mlx::core::Broadcast>;
  v1019[3] = v1019;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1021, v1020);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1022, v1019);
  v1023 = 0uLL;
  v1024 = 0;
  v380 = 0;
  v379 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1156, v381, v1021);
  std::string::basic_string[abi:ne200100]<0>(v377, "BroadcastAxes");
  v1014[0] = &unk_286BE6158;
  v1014[1] = mlx::core::serialize_primitive<mlx::core::BroadcastAxes>;
  v1014[3] = v1014;
  v1013[0] = &unk_286BE6DF8;
  v1013[1] = mlx::core::deserialize_primitive<mlx::core::BroadcastAxes>;
  v1013[3] = v1013;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1015, v1014);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1016, v1013);
  v1017 = 0uLL;
  v1018 = 0;
  v376 = 0;
  v375 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1157, v377, v1015);
  std::string::basic_string[abi:ne200100]<0>(v373, "Ceil");
  v1008[0] = &unk_286BE6158;
  v1008[1] = mlx::core::serialize_primitive<mlx::core::Ceil>;
  v1008[3] = v1008;
  v1007[0] = &unk_286BE6E98;
  v1007[1] = mlx::core::deserialize_primitive<mlx::core::Ceil>;
  v1007[3] = v1007;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1009, v1008);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1010, v1007);
  v1011 = 0uLL;
  v1012 = 0;
  v372 = 0;
  v371 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1158, v373, v1009);
  std::string::basic_string[abi:ne200100]<0>(v369, "Concatenate");
  v1002[0] = &unk_286BE6158;
  v1002[1] = mlx::core::serialize_primitive<mlx::core::Concatenate>;
  v1002[3] = v1002;
  v1001[0] = &unk_286BE6F38;
  v1001[1] = mlx::core::deserialize_primitive<mlx::core::Concatenate>;
  v1001[3] = v1001;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1003, v1002);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1004, v1001);
  v1005 = 0uLL;
  v1006 = 0;
  v368 = 0;
  v367 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1159, v369, v1003);
  std::string::basic_string[abi:ne200100]<0>(v365, "Conjugate");
  v996[0] = &unk_286BE6158;
  v996[1] = mlx::core::serialize_primitive<mlx::core::Conjugate>;
  v996[3] = v996;
  v995[0] = &unk_286BE6FD8;
  v995[1] = mlx::core::deserialize_primitive<mlx::core::Conjugate>;
  v995[3] = v995;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v997, v996);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v998, v995);
  v999 = 0uLL;
  v1000 = 0;
  v364 = 0;
  v363 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1160, v365, v997);
  std::string::basic_string[abi:ne200100]<0>(v361, "Convolution");
  v990[0] = &unk_286BE6158;
  v990[1] = mlx::core::serialize_primitive<mlx::core::Convolution>;
  v990[3] = v990;
  v989[0] = &unk_286BE7078;
  v989[1] = mlx::core::deserialize_primitive<mlx::core::Convolution>;
  v989[3] = v989;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v991, v990);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v992, v989);
  v993 = 0uLL;
  v994 = 0;
  v360 = 0;
  v359 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1161, v361, v991);
  std::string::basic_string[abi:ne200100]<0>(v357, "Copy");
  v984[0] = &unk_286BE6158;
  v984[1] = mlx::core::serialize_primitive<mlx::core::Copy>;
  v984[3] = v984;
  v983[0] = &unk_286BE7118;
  v983[1] = mlx::core::deserialize_primitive<mlx::core::Copy>;
  v983[3] = v983;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v985, v984);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v986, v983);
  v987 = 0uLL;
  v988 = 0;
  v356 = 0;
  v355 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1162, v357, v985);
  std::string::basic_string[abi:ne200100]<0>(v353, "Cos");
  v978[0] = &unk_286BE6158;
  v978[1] = mlx::core::serialize_primitive<mlx::core::Cos>;
  v978[3] = v978;
  v977[0] = &unk_286BE71B8;
  v977[1] = mlx::core::deserialize_primitive<mlx::core::Cos>;
  v977[3] = v977;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v979, v978);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v980, v977);
  v981 = 0uLL;
  v982 = 0;
  v352 = 0;
  v351 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1163, v353, v979);
  std::string::basic_string[abi:ne200100]<0>(v349, "Cosh");
  v972[0] = &unk_286BE6158;
  v972[1] = mlx::core::serialize_primitive<mlx::core::Cosh>;
  v972[3] = v972;
  v971[0] = &unk_286BE7258;
  v971[1] = mlx::core::deserialize_primitive<mlx::core::Cosh>;
  v971[3] = v971;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v973, v972);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v974, v971);
  v975 = 0uLL;
  v976 = 0;
  v348 = 0;
  v347 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1164, v349, v973);
  std::string::basic_string[abi:ne200100]<0>(v345, "Depends");
  v966[0] = &unk_286BE6158;
  v966[1] = mlx::core::serialize_primitive<mlx::core::Depends>;
  v966[3] = v966;
  v965[0] = &unk_286BE72F8;
  v965[1] = mlx::core::deserialize_primitive<mlx::core::Depends>;
  v965[3] = v965;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v967, v966);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v968, v965);
  v969 = 0uLL;
  v970 = 0;
  v344 = 0;
  v343 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1165, v345, v967);
  std::string::basic_string[abi:ne200100]<0>(v341, "Divide");
  v960[0] = &unk_286BE6158;
  v960[1] = mlx::core::serialize_primitive<mlx::core::Divide>;
  v960[3] = v960;
  v959[0] = &unk_286BE7398;
  v959[1] = mlx::core::deserialize_primitive<mlx::core::Divide>;
  v959[3] = v959;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v961, v960);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v962, v959);
  v963 = 0uLL;
  v964 = 0;
  v340 = 0;
  v339 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1166, v341, v961);
  std::string::basic_string[abi:ne200100]<0>(v337, "DivMod");
  v954[0] = &unk_286BE6158;
  v954[1] = mlx::core::serialize_primitive<mlx::core::DivMod>;
  v954[3] = v954;
  v953[0] = &unk_286BE7438;
  v953[1] = mlx::core::deserialize_primitive<mlx::core::DivMod>;
  v953[3] = v953;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v955, v954);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v956, v953);
  v957 = 0uLL;
  v958 = 0;
  v336 = 0;
  v335 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1167, v337, v955);
  std::string::basic_string[abi:ne200100]<0>(v333, "DynamicSlice");
  v948[0] = &unk_286BE6158;
  v948[1] = mlx::core::serialize_primitive<mlx::core::DynamicSlice>;
  v948[3] = v948;
  v947[0] = &unk_286BE74D8;
  v947[1] = mlx::core::deserialize_primitive<mlx::core::DynamicSlice>;
  v947[3] = v947;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v949, v948);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v950, v947);
  v951 = 0uLL;
  v952 = 0;
  v332 = 0;
  v331 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1168, v333, v949);
  std::string::basic_string[abi:ne200100]<0>(v329, "DynamicSliceUpdate");
  v942[0] = &unk_286BE6158;
  v942[1] = mlx::core::serialize_primitive<mlx::core::DynamicSliceUpdate>;
  v942[3] = v942;
  v941[0] = &unk_286BE7578;
  v941[1] = mlx::core::deserialize_primitive<mlx::core::DynamicSliceUpdate>;
  v941[3] = v941;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v943, v942);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v944, v941);
  v945 = 0uLL;
  v946 = 0;
  v328 = 0;
  v327 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1169, v329, v943);
  std::string::basic_string[abi:ne200100]<0>(v325, "Equal");
  v936[0] = &unk_286BE6158;
  v936[1] = mlx::core::serialize_primitive<mlx::core::Equal>;
  v936[3] = v936;
  v935[0] = &unk_286BE7618;
  v935[1] = mlx::core::deserialize_primitive<mlx::core::Equal>;
  v935[3] = v935;
  std::string::basic_string[abi:ne200100]<0>(v933, "NaNEqual");
  v323 = 0uLL;
  v324 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v323, v933, v935, 1uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v937, v936);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v938, v935);
  v939 = v323;
  v940 = v324;
  v324 = 0;
  v323 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1170, v325, v937);
  std::string::basic_string[abi:ne200100]<0>(v321, "Erf");
  v928[0] = &unk_286BE6158;
  v928[1] = mlx::core::serialize_primitive<mlx::core::Erf>;
  v928[3] = v928;
  v927[0] = &unk_286BE76B8;
  v927[1] = mlx::core::deserialize_primitive<mlx::core::Erf>;
  v927[3] = v927;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v929, v928);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v930, v927);
  v931 = 0uLL;
  v932 = 0;
  v320 = 0;
  v319 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1171, v321, v929);
  std::string::basic_string[abi:ne200100]<0>(v317, "ErfInv");
  v922[0] = &unk_286BE6158;
  v922[1] = mlx::core::serialize_primitive<mlx::core::ErfInv>;
  v922[3] = v922;
  v921[0] = &unk_286BE7758;
  v921[1] = mlx::core::deserialize_primitive<mlx::core::ErfInv>;
  v921[3] = v921;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v923, v922);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v924, v921);
  v925 = 0uLL;
  v926 = 0;
  v316 = 0;
  v315 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1172, v317, v923);
  std::string::basic_string[abi:ne200100]<0>(v313, "Exp");
  v916[0] = &unk_286BE6158;
  v916[1] = mlx::core::serialize_primitive<mlx::core::Exp>;
  v916[3] = v916;
  v915[0] = &unk_286BE77F8;
  v915[1] = mlx::core::deserialize_primitive<mlx::core::Exp>;
  v915[3] = v915;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v917, v916);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v918, v915);
  v919 = 0uLL;
  v920 = 0;
  v312 = 0;
  v311 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1173, v313, v917);
  std::string::basic_string[abi:ne200100]<0>(v309, "Expm1");
  v910[0] = &unk_286BE6158;
  v910[1] = mlx::core::serialize_primitive<mlx::core::Expm1>;
  v910[3] = v910;
  v909[0] = &unk_286BE7898;
  v909[1] = mlx::core::deserialize_primitive<mlx::core::Expm1>;
  v909[3] = v909;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v911, v910);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v912, v909);
  v913 = 0uLL;
  v914 = 0;
  v308 = 0;
  v307 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1174, v309, v911);
  std::string::basic_string[abi:ne200100]<0>(v305, "ExpandDims");
  v904[0] = &unk_286BE6158;
  v904[1] = mlx::core::serialize_primitive<mlx::core::ExpandDims>;
  v904[3] = v904;
  v903[0] = &unk_286BE7938;
  v903[1] = mlx::core::deserialize_primitive<mlx::core::ExpandDims>;
  v903[3] = v903;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v905, v904);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v906, v903);
  v907 = 0uLL;
  v908 = 0;
  v304 = 0;
  v303 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1175, v305, v905);
  std::string::basic_string[abi:ne200100]<0>(v301, "FFT");
  v898[0] = &unk_286BE6158;
  v898[1] = mlx::core::serialize_primitive<mlx::core::FFT>;
  v898[3] = v898;
  v897[0] = &unk_286BE7A28;
  v897[1] = mlx::core::deserialize_primitive<mlx::core::FFT>;
  v897[3] = v897;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v899, v898);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v900, v897);
  v901 = 0uLL;
  v902 = 0;
  v300 = 0;
  v299 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1176, v301, v899);
  std::string::basic_string[abi:ne200100]<0>(v297, "Flatten");
  v892[0] = &unk_286BE6158;
  v892[1] = mlx::core::serialize_primitive<mlx::core::Flatten>;
  v892[3] = v892;
  v891[0] = &unk_286BE7AC8;
  v891[1] = mlx::core::deserialize_primitive<mlx::core::Flatten>;
  v891[3] = v891;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v893, v892);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v894, v891);
  v895 = 0uLL;
  v896 = 0;
  v296 = 0;
  v295 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1177, v297, v893);
  std::string::basic_string[abi:ne200100]<0>(v293, "Floor");
  v886[0] = &unk_286BE6158;
  v886[1] = mlx::core::serialize_primitive<mlx::core::Floor>;
  v886[3] = v886;
  v885[0] = &unk_286BE7B68;
  v885[1] = mlx::core::deserialize_primitive<mlx::core::Floor>;
  v885[3] = v885;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v887, v886);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v888, v885);
  v889 = 0uLL;
  v890 = 0;
  v292 = 0;
  v291 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1178, v293, v887);
  std::string::basic_string[abi:ne200100]<0>(v289, "Full");
  v880[0] = &unk_286BE6158;
  v880[1] = mlx::core::serialize_primitive<mlx::core::Full>;
  v880[3] = v880;
  v879[0] = &unk_286BE7C08;
  v879[1] = mlx::core::deserialize_primitive<mlx::core::Full>;
  v879[3] = v879;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v881, v880);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v882, v879);
  v883 = 0uLL;
  v884 = 0;
  v288 = 0;
  v287 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1179, v289, v881);
  std::string::basic_string[abi:ne200100]<0>(v285, "Gather");
  v874[0] = &unk_286BE6158;
  v874[1] = mlx::core::serialize_primitive<mlx::core::Gather>;
  v874[3] = v874;
  v873[0] = &unk_286BE7CA8;
  v873[1] = mlx::core::deserialize_primitive<mlx::core::Gather>;
  v873[3] = v873;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v875, v874);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v876, v873);
  v877 = 0uLL;
  v878 = 0;
  v284 = 0;
  v283 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1180, v285, v875);
  std::string::basic_string[abi:ne200100]<0>(v281, "GatherMM");
  v868[0] = &unk_286BE6158;
  v868[1] = mlx::core::serialize_primitive<mlx::core::GatherMM>;
  v868[3] = v868;
  v867[0] = &unk_286BE7D48;
  v867[1] = mlx::core::deserialize_primitive<mlx::core::GatherMM>;
  v867[3] = v867;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v869, v868);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v870, v867);
  v871 = 0uLL;
  v872 = 0;
  v280 = 0;
  v279 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1181, v281, v869);
  std::string::basic_string[abi:ne200100]<0>(v277, "Greater");
  v862[0] = &unk_286BE6158;
  v862[1] = mlx::core::serialize_primitive<mlx::core::Greater>;
  v862[3] = v862;
  v861[0] = &unk_286BE7DE8;
  v861[1] = mlx::core::deserialize_primitive<mlx::core::Greater>;
  v861[3] = v861;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v863, v862);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v864, v861);
  v865 = 0uLL;
  v866 = 0;
  v276 = 0;
  v275 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1182, v277, v863);
  std::string::basic_string[abi:ne200100]<0>(v273, "GreaterEqual");
  v856[0] = &unk_286BE6158;
  v856[1] = mlx::core::serialize_primitive<mlx::core::GreaterEqual>;
  v856[3] = v856;
  v855[0] = &unk_286BE7E88;
  v855[1] = mlx::core::deserialize_primitive<mlx::core::GreaterEqual>;
  v855[3] = v855;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v857, v856);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v858, v855);
  v859 = 0uLL;
  v860 = 0;
  v272 = 0;
  v271 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1183, v273, v857);
  std::string::basic_string[abi:ne200100]<0>(v269, "Hadamard");
  v850[0] = &unk_286BE6158;
  v850[1] = mlx::core::serialize_primitive<mlx::core::Hadamard>;
  v850[3] = v850;
  v849[0] = &unk_286BE7F28;
  v849[1] = mlx::core::deserialize_primitive<mlx::core::Hadamard>;
  v849[3] = v849;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v851, v850);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v852, v849);
  v853 = 0uLL;
  v854 = 0;
  v268 = 0;
  v267 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1184, v269, v851);
  std::string::basic_string[abi:ne200100]<0>(v265, "Imag");
  v844[0] = &unk_286BE6158;
  v844[1] = mlx::core::serialize_primitive<mlx::core::Imag>;
  v844[3] = v844;
  v843[0] = &unk_286BE7FC8;
  v843[1] = mlx::core::deserialize_primitive<mlx::core::Imag>;
  v843[3] = v843;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v845, v844);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v846, v843);
  v847 = 0uLL;
  v848 = 0;
  v264 = 0;
  v263 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1185, v265, v845);
  std::string::basic_string[abi:ne200100]<0>(v261, "Less");
  v838[0] = &unk_286BE6158;
  v838[1] = mlx::core::serialize_primitive<mlx::core::Less>;
  v838[3] = v838;
  v837[0] = &unk_286BE8068;
  v837[1] = mlx::core::deserialize_primitive<mlx::core::Less>;
  v837[3] = v837;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v839, v838);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v840, v837);
  v841 = 0uLL;
  v842 = 0;
  v260 = 0;
  v259 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1186, v261, v839);
  std::string::basic_string[abi:ne200100]<0>(v257, "LessEqual");
  v832[0] = &unk_286BE6158;
  v832[1] = mlx::core::serialize_primitive<mlx::core::LessEqual>;
  v832[3] = v832;
  v831[0] = &unk_286BE8108;
  v831[1] = mlx::core::deserialize_primitive<mlx::core::LessEqual>;
  v831[3] = v831;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v833, v832);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v834, v831);
  v835 = 0uLL;
  v836 = 0;
  v256 = 0;
  v255 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1187, v257, v833);
  std::string::basic_string[abi:ne200100]<0>(v253, "Log");
  v826[0] = &unk_286BE6158;
  v826[1] = mlx::core::serialize_primitive<mlx::core::Log>;
  v826[3] = v826;
  v825[0] = &unk_286BE81A8;
  v825[1] = mlx::core::deserialize_primitive<mlx::core::Log>;
  v825[3] = v825;
  std::string::basic_string[abi:ne200100]<0>(v823, "Log2");
  std::string::basic_string[abi:ne200100]<0>(v824, "Log10");
  v251 = 0uLL;
  v252 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v251, v823, v825, 2uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v827, v826);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v828, v825);
  v829 = v251;
  v830 = v252;
  v252 = 0;
  v251 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1188, v253, v827);
  std::string::basic_string[abi:ne200100]<0>(v249, "Log1p");
  v818[0] = &unk_286BE6158;
  v818[1] = mlx::core::serialize_primitive<mlx::core::Log1p>;
  v818[3] = v818;
  v817[0] = &unk_286BE8248;
  v817[1] = mlx::core::deserialize_primitive<mlx::core::Log1p>;
  v817[3] = v817;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v819, v818);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v820, v817);
  v821 = 0uLL;
  v822 = 0;
  v248 = 0;
  v247 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1189, v249, v819);
  std::string::basic_string[abi:ne200100]<0>(v245, "LogicalNot");
  v812[0] = &unk_286BE6158;
  v812[1] = mlx::core::serialize_primitive<mlx::core::LogicalNot>;
  v812[3] = v812;
  v811[0] = &unk_286BE82E8;
  v811[1] = mlx::core::deserialize_primitive<mlx::core::LogicalNot>;
  v811[3] = v811;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v813, v812);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v814, v811);
  v815 = 0uLL;
  v816 = 0;
  v244 = 0;
  v243 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1190, v245, v813);
  std::string::basic_string[abi:ne200100]<0>(v241, "LogicalAnd");
  v806[0] = &unk_286BE6158;
  v806[1] = mlx::core::serialize_primitive<mlx::core::LogicalAnd>;
  v806[3] = v806;
  v805[0] = &unk_286BE8388;
  v805[1] = mlx::core::deserialize_primitive<mlx::core::LogicalAnd>;
  v805[3] = v805;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v807, v806);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v808, v805);
  v809 = 0uLL;
  v810 = 0;
  v240 = 0;
  v239 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1191, v241, v807);
  std::string::basic_string[abi:ne200100]<0>(v237, "LogicalOr");
  v800[0] = &unk_286BE6158;
  v800[1] = mlx::core::serialize_primitive<mlx::core::LogicalOr>;
  v800[3] = v800;
  v799[0] = &unk_286BE8428;
  v799[1] = mlx::core::deserialize_primitive<mlx::core::LogicalOr>;
  v799[3] = v799;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v801, v800);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v802, v799);
  v803 = 0uLL;
  v804 = 0;
  v236 = 0;
  v235 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1192, v237, v801);
  std::string::basic_string[abi:ne200100]<0>(v233, "LogAddExp");
  v794[0] = &unk_286BE6158;
  v794[1] = mlx::core::serialize_primitive<mlx::core::LogAddExp>;
  v794[3] = v794;
  v793[0] = &unk_286BE84C8;
  v793[1] = mlx::core::deserialize_primitive<mlx::core::LogAddExp>;
  v793[3] = v793;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v795, v794);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v796, v793);
  v797 = 0uLL;
  v798 = 0;
  v232 = 0;
  v231 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1193, v233, v795);
  std::string::basic_string[abi:ne200100]<0>(v229, "LogSumExp");
  v788[0] = &unk_286BE6158;
  v788[1] = mlx::core::serialize_primitive<mlx::core::LogSumExp>;
  v788[3] = v788;
  v787[0] = &unk_286BE8568;
  v787[1] = mlx::core::deserialize_primitive<mlx::core::LogSumExp>;
  v787[3] = v787;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v789, v788);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v790, v787);
  v791 = 0uLL;
  v792 = 0;
  v228 = 0;
  v227 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1194, v229, v789);
  std::string::basic_string[abi:ne200100]<0>(v225, "Matmul");
  v782[0] = &unk_286BE6158;
  v782[1] = mlx::core::serialize_primitive<mlx::core::Matmul>;
  v782[3] = v782;
  v781[0] = &unk_286BE8608;
  v781[1] = mlx::core::deserialize_primitive<mlx::core::Matmul>;
  v781[3] = v781;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v783, v782);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v784, v781);
  v785 = 0uLL;
  v786 = 0;
  v224 = 0;
  v223 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1195, v225, v783);
  std::string::basic_string[abi:ne200100]<0>(v221, "Maximum");
  v776[0] = &unk_286BE6158;
  v776[1] = mlx::core::serialize_primitive<mlx::core::Maximum>;
  v776[3] = v776;
  v775[0] = &unk_286BE86A8;
  v775[1] = mlx::core::deserialize_primitive<mlx::core::Maximum>;
  v775[3] = v775;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v777, v776);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v778, v775);
  v779 = 0uLL;
  v780 = 0;
  v220 = 0;
  v219 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1196, v221, v777);
  std::string::basic_string[abi:ne200100]<0>(v217, "Minimum");
  v770[0] = &unk_286BE6158;
  v770[1] = mlx::core::serialize_primitive<mlx::core::Minimum>;
  v770[3] = v770;
  v769[0] = &unk_286BE8748;
  v769[1] = mlx::core::deserialize_primitive<mlx::core::Minimum>;
  v769[3] = v769;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v771, v770);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v772, v769);
  v773 = 0uLL;
  v774 = 0;
  v216 = 0;
  v215 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1197, v217, v771);
  std::string::basic_string[abi:ne200100]<0>(v213, "Multiply");
  v764[0] = &unk_286BE6158;
  v764[1] = mlx::core::serialize_primitive<mlx::core::Multiply>;
  v764[3] = v764;
  v763[0] = &unk_286BE87E8;
  v763[1] = mlx::core::deserialize_primitive<mlx::core::Multiply>;
  v763[3] = v763;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v765, v764);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v766, v763);
  v767 = 0uLL;
  v768 = 0;
  v212 = 0;
  v211 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1198, v213, v765);
  std::string::basic_string[abi:ne200100]<0>(v209, "Negative");
  v758[0] = &unk_286BE6158;
  v758[1] = mlx::core::serialize_primitive<mlx::core::Negative>;
  v758[3] = v758;
  v757[0] = &unk_286BE8888;
  v757[1] = mlx::core::deserialize_primitive<mlx::core::Negative>;
  v757[3] = v757;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v759, v758);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v760, v757);
  v761 = 0uLL;
  v762 = 0;
  v208 = 0;
  v207 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1199, v209, v759);
  std::string::basic_string[abi:ne200100]<0>(v205, "NotEqual");
  v752[0] = &unk_286BE6158;
  v752[1] = mlx::core::serialize_primitive<mlx::core::NotEqual>;
  v752[3] = v752;
  v751[0] = &unk_286BE8928;
  v751[1] = mlx::core::deserialize_primitive<mlx::core::NotEqual>;
  v751[3] = v751;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v753, v752);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v754, v751);
  v755 = 0uLL;
  v756 = 0;
  v204 = 0;
  v203 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1200, v205, v753);
  std::string::basic_string[abi:ne200100]<0>(v201, "Reshape");
  v746[0] = &unk_286BE6158;
  v746[1] = mlx::core::serialize_primitive<mlx::core::Reshape>;
  v746[3] = v746;
  v745[0] = &unk_286BE89C8;
  v745[1] = mlx::core::deserialize_primitive<mlx::core::Reshape>;
  v745[3] = v745;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v747, v746);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v748, v745);
  v749 = 0uLL;
  v750 = 0;
  v200 = 0;
  v199 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1201, v201, v747);
  std::string::basic_string[abi:ne200100]<0>(v197, "NumberOfElements");
  v740[0] = &unk_286BE6158;
  v740[1] = mlx::core::serialize_primitive<mlx::core::NumberOfElements>;
  v740[3] = v740;
  v739[0] = &unk_286BE8A68;
  v739[1] = mlx::core::deserialize_primitive<mlx::core::NumberOfElements>;
  v739[3] = v739;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v741, v740);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v742, v739);
  v743 = 0uLL;
  v744 = 0;
  v196 = 0;
  v195 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1202, v197, v741);
  std::string::basic_string[abi:ne200100]<0>(v193, "Pad");
  v734[0] = &unk_286BE6158;
  v734[1] = mlx::core::serialize_primitive<mlx::core::Pad>;
  v734[3] = v734;
  v733[0] = &unk_286BE8B08;
  v733[1] = mlx::core::deserialize_primitive<mlx::core::Pad>;
  v733[3] = v733;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v735, v734);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v736, v733);
  v737 = 0uLL;
  v738 = 0;
  v192 = 0;
  v191 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1203, v193, v735);
  std::string::basic_string[abi:ne200100]<0>(v189, "Partition");
  v728[0] = &unk_286BE6158;
  v728[1] = mlx::core::serialize_primitive<mlx::core::Partition>;
  v728[3] = v728;
  v727[0] = &unk_286BE8BA8;
  v727[1] = mlx::core::deserialize_primitive<mlx::core::Partition>;
  v727[3] = v727;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v729, v728);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v730, v727);
  v731 = 0uLL;
  v732 = 0;
  v188 = 0;
  v187 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1204, v189, v729);
  std::string::basic_string[abi:ne200100]<0>(v185, "Power");
  v722[0] = &unk_286BE6158;
  v722[1] = mlx::core::serialize_primitive<mlx::core::Power>;
  v722[3] = v722;
  v721[0] = &unk_286BE8C48;
  v721[1] = mlx::core::deserialize_primitive<mlx::core::Power>;
  v721[3] = v721;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v723, v722);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v724, v721);
  v725 = 0uLL;
  v726 = 0;
  v184 = 0;
  v183 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1205, v185, v723);
  std::string::basic_string[abi:ne200100]<0>(v181, "QuantizedMatmul");
  v716[0] = &unk_286BE6158;
  v716[1] = mlx::core::serialize_primitive<mlx::core::QuantizedMatmul>;
  v716[3] = v716;
  v715[0] = &unk_286BE8CE8;
  v715[1] = mlx::core::deserialize_primitive<mlx::core::QuantizedMatmul>;
  v715[3] = v715;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v717, v716);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v718, v715);
  v719 = 0uLL;
  v720 = 0;
  v180 = 0;
  v179 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1206, v181, v717);
  std::string::basic_string[abi:ne200100]<0>(v177, "GatherQMM");
  v710[0] = &unk_286BE6158;
  v710[1] = mlx::core::serialize_primitive<mlx::core::GatherQMM>;
  v710[3] = v710;
  v709[0] = &unk_286BE8D88;
  v709[1] = mlx::core::deserialize_primitive<mlx::core::GatherQMM>;
  v709[3] = v709;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v711, v710);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v712, v709);
  v713 = 0uLL;
  v714 = 0;
  v176 = 0;
  v175 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1207, v177, v711);
  std::string::basic_string[abi:ne200100]<0>(v173, "RandomBits");
  v704[0] = &unk_286BE6158;
  v704[1] = mlx::core::serialize_primitive<mlx::core::RandomBits>;
  v704[3] = v704;
  v703[0] = &unk_286BE8E78;
  v703[1] = mlx::core::deserialize_primitive<mlx::core::RandomBits>;
  v703[3] = v703;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v705, v704);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v706, v703);
  v707 = 0uLL;
  v708 = 0;
  v172 = 0;
  v171 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1208, v173, v705);
  std::string::basic_string[abi:ne200100]<0>(v169, "Real");
  v698[0] = &unk_286BE6158;
  v698[1] = mlx::core::serialize_primitive<mlx::core::Real>;
  v698[3] = v698;
  v697[0] = &unk_286BE8F18;
  v697[1] = mlx::core::deserialize_primitive<mlx::core::Real>;
  v697[3] = v697;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v699, v698);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v700, v697);
  v701 = 0uLL;
  v702 = 0;
  v168 = 0;
  v167 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1209, v169, v699);
  std::string::basic_string[abi:ne200100]<0>(v165, "Remainder");
  v692[0] = &unk_286BE6158;
  v692[1] = mlx::core::serialize_primitive<mlx::core::Remainder>;
  v692[3] = v692;
  v691[0] = &unk_286BE8FB8;
  v691[1] = mlx::core::deserialize_primitive<mlx::core::Remainder>;
  v691[3] = v691;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v693, v692);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v694, v691);
  v695 = 0uLL;
  v696 = 0;
  v164 = 0;
  v163 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1210, v165, v693);
  std::string::basic_string[abi:ne200100]<0>(v161, "Reshape");
  v686[0] = &unk_286BE6158;
  v686[1] = mlx::core::serialize_primitive<mlx::core::Reshape>;
  v686[3] = v686;
  v685[0] = &unk_286BE89C8;
  v685[1] = mlx::core::deserialize_primitive<mlx::core::Reshape>;
  v685[3] = v685;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v687, v686);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v688, v685);
  v689 = 0uLL;
  v690 = 0;
  v160 = 0;
  v159 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1211, v161, v687);
  std::string::basic_string[abi:ne200100]<0>(v157, "Reduce");
  v680[0] = &unk_286BE6158;
  v680[1] = mlx::core::serialize_primitive<mlx::core::Reduce>;
  v680[3] = v680;
  v679[0] = &unk_286BE9058;
  v679[1] = mlx::core::deserialize_primitive<mlx::core::Reduce>;
  v679[3] = v679;
  std::string::basic_string[abi:ne200100]<0>(v673, "And");
  std::string::basic_string[abi:ne200100]<0>(v674, "Or");
  std::string::basic_string[abi:ne200100]<0>(v675, "Sum");
  std::string::basic_string[abi:ne200100]<0>(v676, "Prod");
  std::string::basic_string[abi:ne200100]<0>(v677, "Min");
  std::string::basic_string[abi:ne200100]<0>(v678, "Max");
  v155 = 0uLL;
  v156 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v155, v673, v679, 6uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v681, v680);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v682, v679);
  v683 = v155;
  v684 = v156;
  v156 = 0;
  v155 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1212, v157, v681);
  std::string::basic_string[abi:ne200100]<0>(v153, "Round");
  v668[0] = &unk_286BE6158;
  v668[1] = mlx::core::serialize_primitive<mlx::core::Round>;
  v668[3] = v668;
  v667[0] = &unk_286BE90F8;
  v667[1] = mlx::core::deserialize_primitive<mlx::core::Round>;
  v667[3] = v667;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v669, v668);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v670, v667);
  v671 = 0uLL;
  v672 = 0;
  v152 = 0;
  v151 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1213, v153, v669);
  std::string::basic_string[abi:ne200100]<0>(v149, "Scan");
  v662[0] = &unk_286BE6158;
  v662[1] = mlx::core::serialize_primitive<mlx::core::Scan>;
  v662[3] = v662;
  v661[0] = &unk_286BE9198;
  v661[1] = mlx::core::deserialize_primitive<mlx::core::Scan>;
  v661[3] = v661;
  std::string::basic_string[abi:ne200100]<0>(v656, "CumSum");
  std::string::basic_string[abi:ne200100]<0>(v657, "CumProd");
  std::string::basic_string[abi:ne200100]<0>(v658, "CumMin");
  std::string::basic_string[abi:ne200100]<0>(v659, "CumMax");
  std::string::basic_string[abi:ne200100]<0>(v660, "CumLogaddexp");
  v147 = 0uLL;
  v148 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v147, v656, v661, 5uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v663, v662);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v664, v661);
  v665 = v147;
  v666 = v148;
  v148 = 0;
  v147 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1214, v149, v663);
  std::string::basic_string[abi:ne200100]<0>(v145, "Scatter");
  v651[0] = &unk_286BE6158;
  v651[1] = mlx::core::serialize_primitive<mlx::core::Scatter>;
  v651[3] = v651;
  v650[0] = &unk_286BE9238;
  v650[1] = mlx::core::deserialize_primitive<mlx::core::Scatter>;
  v650[3] = v650;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v652, v651);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v653, v650);
  v654 = 0uLL;
  v655 = 0;
  v144 = 0;
  v143 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1215, v145, v652);
  std::string::basic_string[abi:ne200100]<0>(v141, "Select");
  v645[0] = &unk_286BE6158;
  v645[1] = mlx::core::serialize_primitive<mlx::core::Select>;
  v645[3] = v645;
  v644[0] = &unk_286BE92D8;
  v644[1] = mlx::core::deserialize_primitive<mlx::core::Select>;
  v644[3] = v644;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v646, v645);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v647, v644);
  v648 = 0uLL;
  v649 = 0;
  v140 = 0;
  v139 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1216, v141, v646);
  std::string::basic_string[abi:ne200100]<0>(v137, "Sigmoid");
  v639[0] = &unk_286BE6158;
  v639[1] = mlx::core::serialize_primitive<mlx::core::Sigmoid>;
  v639[3] = v639;
  v638[0] = &unk_286BE9378;
  v638[1] = mlx::core::deserialize_primitive<mlx::core::Sigmoid>;
  v638[3] = v638;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v640, v639);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v641, v638);
  v642 = 0uLL;
  v643 = 0;
  v136 = 0;
  v135 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1217, v137, v640);
  std::string::basic_string[abi:ne200100]<0>(v133, "Sign");
  v633[0] = &unk_286BE6158;
  v633[1] = mlx::core::serialize_primitive<mlx::core::Sign>;
  v633[3] = v633;
  v632[0] = &unk_286BE9418;
  v632[1] = mlx::core::deserialize_primitive<mlx::core::Sign>;
  v632[3] = v632;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v634, v633);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v635, v632);
  v636 = 0uLL;
  v637 = 0;
  v132 = 0;
  v131 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1218, v133, v634);
  std::string::basic_string[abi:ne200100]<0>(v129, "Sin");
  v627[0] = &unk_286BE6158;
  v627[1] = mlx::core::serialize_primitive<mlx::core::Sin>;
  v627[3] = v627;
  v626[0] = &unk_286BE94B8;
  v626[1] = mlx::core::deserialize_primitive<mlx::core::Sin>;
  v626[3] = v626;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v628, v627);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v629, v626);
  v630 = 0uLL;
  v631 = 0;
  v128 = 0;
  v127 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1219, v129, v628);
  std::string::basic_string[abi:ne200100]<0>(v125, "Sinh");
  v621[0] = &unk_286BE6158;
  v621[1] = mlx::core::serialize_primitive<mlx::core::Sinh>;
  v621[3] = v621;
  v620[0] = &unk_286BE9558;
  v620[1] = mlx::core::deserialize_primitive<mlx::core::Sinh>;
  v620[3] = v620;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v622, v621);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v623, v620);
  v624 = 0uLL;
  v625 = 0;
  v124 = 0;
  v123 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1220, v125, v622);
  std::string::basic_string[abi:ne200100]<0>(v121, "Slice");
  v615[0] = &unk_286BE6158;
  v615[1] = mlx::core::serialize_primitive<mlx::core::Slice>;
  v615[3] = v615;
  v614[0] = &unk_286BE95F8;
  v614[1] = mlx::core::deserialize_primitive<mlx::core::Slice>;
  v614[3] = v614;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v616, v615);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v617, v614);
  v618 = 0uLL;
  v619 = 0;
  v120 = 0;
  v119 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1221, v121, v616);
  std::string::basic_string[abi:ne200100]<0>(v117, "SliceUpdate");
  v609[0] = &unk_286BE6158;
  v609[1] = mlx::core::serialize_primitive<mlx::core::SliceUpdate>;
  v609[3] = v609;
  v608[0] = &unk_286BE9698;
  v608[1] = mlx::core::deserialize_primitive<mlx::core::SliceUpdate>;
  v608[3] = v608;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v610, v609);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v611, v608);
  v612 = 0uLL;
  v613 = 0;
  v116 = 0;
  v115 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1222, v117, v610);
  std::string::basic_string[abi:ne200100]<0>(v113, "Softmax");
  v603[0] = &unk_286BE6158;
  v603[1] = mlx::core::serialize_primitive<mlx::core::Softmax>;
  v603[3] = v603;
  v602[0] = &unk_286BE9738;
  v602[1] = mlx::core::deserialize_primitive<mlx::core::Softmax>;
  v602[3] = v602;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v604, v603);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v605, v602);
  v606 = 0uLL;
  v607 = 0;
  v112 = 0;
  v111 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1223, v113, v604);
  std::string::basic_string[abi:ne200100]<0>(v109, "Sort");
  v597[0] = &unk_286BE6158;
  v597[1] = mlx::core::serialize_primitive<mlx::core::Sort>;
  v597[3] = v597;
  v596[0] = &unk_286BE97D8;
  v596[1] = mlx::core::deserialize_primitive<mlx::core::Sort>;
  v596[3] = v596;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v598, v597);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v599, v596);
  v600 = 0uLL;
  v601 = 0;
  v108 = 0;
  v107 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1224, v109, v598);
  std::string::basic_string[abi:ne200100]<0>(v105, "Split");
  v591[0] = &unk_286BE6158;
  v591[1] = mlx::core::serialize_primitive<mlx::core::Split>;
  v591[3] = v591;
  v590[0] = &unk_286BE9878;
  v590[1] = mlx::core::deserialize_primitive<mlx::core::Split>;
  v590[3] = v590;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v592, v591);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v593, v590);
  v594 = 0uLL;
  v595 = 0;
  v104 = 0;
  v103 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1225, v105, v592);
  std::string::basic_string[abi:ne200100]<0>(v101, "Square");
  v585[0] = &unk_286BE6158;
  v585[1] = mlx::core::serialize_primitive<mlx::core::Square>;
  v585[3] = v585;
  v584[0] = &unk_286BE9918;
  v584[1] = mlx::core::deserialize_primitive<mlx::core::Square>;
  v584[3] = v584;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v586, v585);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v587, v584);
  v588 = 0uLL;
  v589 = 0;
  v100 = 0;
  v99 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1226, v101, v586);
  std::string::basic_string[abi:ne200100]<0>(v97, "Squeeze");
  v579[0] = &unk_286BE6158;
  v579[1] = mlx::core::serialize_primitive<mlx::core::Squeeze>;
  v579[3] = v579;
  v578[0] = &unk_286BE99B8;
  v578[1] = mlx::core::deserialize_primitive<mlx::core::Squeeze>;
  v578[3] = v578;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v580, v579);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v581, v578);
  v582 = 0uLL;
  v583 = 0;
  v96 = 0;
  v95 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1227, v97, v580);
  std::string::basic_string[abi:ne200100]<0>(v93, "Sqrt");
  v573[0] = &unk_286BE6158;
  v573[1] = mlx::core::serialize_primitive<mlx::core::Sqrt>;
  v573[3] = v573;
  v572[0] = &unk_286BE9A58;
  v572[1] = mlx::core::deserialize_primitive<mlx::core::Sqrt>;
  v572[3] = v572;
  std::string::basic_string[abi:ne200100]<0>(v570, "Rsqrt");
  std::string::basic_string[abi:ne200100]<0>(v571, "Sqrt");
  v91 = 0uLL;
  v92 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v91, v570, v572, 2uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v574, v573);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v575, v572);
  v576 = v91;
  v577 = v92;
  v92 = 0;
  v91 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1228, v93, v574);
  std::string::basic_string[abi:ne200100]<0>(v89, "StopGradient");
  v565[0] = &unk_286BE6158;
  v565[1] = mlx::core::serialize_primitive<mlx::core::StopGradient>;
  v565[3] = v565;
  v564[0] = &unk_286BE9AF8;
  v564[1] = mlx::core::deserialize_primitive<mlx::core::StopGradient>;
  v564[3] = v564;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v566, v565);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v567, v564);
  v568 = 0uLL;
  v569 = 0;
  v88 = 0;
  v87 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1229, v89, v566);
  std::string::basic_string[abi:ne200100]<0>(v85, "Subtract");
  v559[0] = &unk_286BE6158;
  v559[1] = mlx::core::serialize_primitive<mlx::core::Subtract>;
  v559[3] = v559;
  v558[0] = &unk_286BE9B98;
  v558[1] = mlx::core::deserialize_primitive<mlx::core::Subtract>;
  v558[3] = v558;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v560, v559);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v561, v558);
  v562 = 0uLL;
  v563 = 0;
  v84 = 0;
  v83 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1230, v85, v560);
  std::string::basic_string[abi:ne200100]<0>(v81, "Tan");
  v553[0] = &unk_286BE6158;
  v553[1] = mlx::core::serialize_primitive<mlx::core::Tan>;
  v553[3] = v553;
  v552[0] = &unk_286BE9C38;
  v552[1] = mlx::core::deserialize_primitive<mlx::core::Tan>;
  v552[3] = v552;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v554, v553);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v555, v552);
  v556 = 0uLL;
  v557 = 0;
  v80 = 0;
  v79 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1231, v81, v554);
  std::string::basic_string[abi:ne200100]<0>(v77, "Tanh");
  v547[0] = &unk_286BE6158;
  v547[1] = mlx::core::serialize_primitive<mlx::core::Tanh>;
  v547[3] = v547;
  v546[0] = &unk_286BE9CD8;
  v546[1] = mlx::core::deserialize_primitive<mlx::core::Tanh>;
  v546[3] = v546;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v548, v547);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v549, v546);
  v550 = 0uLL;
  v551 = 0;
  v76 = 0;
  v75 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1232, v77, v548);
  std::string::basic_string[abi:ne200100]<0>(v73, "View");
  v541[0] = &unk_286BE6158;
  v541[1] = mlx::core::serialize_primitive<mlx::core::View>;
  v541[3] = v541;
  v540[0] = &unk_286BE9D78;
  v540[1] = mlx::core::deserialize_primitive<mlx::core::View>;
  v540[3] = v540;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v542, v541);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v543, v540);
  v544 = 0uLL;
  v545 = 0;
  v72 = 0;
  v71 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1233, v73, v542);
  std::string::basic_string[abi:ne200100]<0>(v69, "Transpose");
  v535[0] = &unk_286BE6158;
  v535[1] = mlx::core::serialize_primitive<mlx::core::Transpose>;
  v535[3] = v535;
  v534[0] = &unk_286BE9E18;
  v534[1] = mlx::core::deserialize_primitive<mlx::core::Transpose>;
  v534[3] = v534;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v536, v535);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v537, v534);
  v538 = 0uLL;
  v539 = 0;
  v68 = 0;
  v67 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1234, v69, v536);
  std::string::basic_string[abi:ne200100]<0>(v65, "Unflatten");
  v529[0] = &unk_286BE6158;
  v529[1] = mlx::core::serialize_primitive<mlx::core::Unflatten>;
  v529[3] = v529;
  v528[0] = &unk_286BE9EB8;
  v528[1] = mlx::core::deserialize_primitive<mlx::core::Unflatten>;
  v528[3] = v528;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v530, v529);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v531, v528);
  v532 = 0uLL;
  v533 = 0;
  v64 = 0;
  v63 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1235, v65, v530);
  std::string::basic_string[abi:ne200100]<0>(v61, "QRF");
  v523[0] = &unk_286BE6158;
  v523[1] = mlx::core::serialize_primitive<mlx::core::QRF>;
  v523[3] = v523;
  v522[0] = &unk_286BE9F58;
  v522[1] = mlx::core::deserialize_primitive<mlx::core::QRF>;
  v522[3] = v522;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v524, v523);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v525, v522);
  v526 = 0uLL;
  v527 = 0;
  v60 = 0;
  v59 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1236, v61, v524);
  std::string::basic_string[abi:ne200100]<0>(v57, "SVD");
  v517[0] = &unk_286BE6158;
  v517[1] = mlx::core::serialize_primitive<mlx::core::SVD>;
  v517[3] = v517;
  v516[0] = &unk_286BE9FF8;
  v516[1] = mlx::core::deserialize_primitive<mlx::core::SVD>;
  v516[3] = v516;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v518, v517);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v519, v516);
  v520 = 0uLL;
  v521 = 0;
  v56 = 0;
  v55 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1237, v57, v518);
  std::string::basic_string[abi:ne200100]<0>(v53, "Inverse");
  v511[0] = &unk_286BE6158;
  v511[1] = mlx::core::serialize_primitive<mlx::core::Inverse>;
  v511[3] = v511;
  v510[0] = &unk_286BEA098;
  v510[1] = mlx::core::deserialize_primitive<mlx::core::Inverse>;
  v510[3] = v510;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v512, v511);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v513, v510);
  v514 = 0uLL;
  v515 = 0;
  v52 = 0;
  v51 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1238, v53, v512);
  std::string::basic_string[abi:ne200100]<0>(v49, "Cholesky");
  v505[0] = &unk_286BE6158;
  v505[1] = mlx::core::serialize_primitive<mlx::core::Cholesky>;
  v505[3] = v505;
  v504[0] = &unk_286BEA138;
  v504[1] = mlx::core::deserialize_primitive<mlx::core::Cholesky>;
  v504[3] = v504;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v506, v505);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v507, v504);
  v508 = 0uLL;
  v509 = 0;
  v48 = 0;
  v47 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1239, v49, v506);
  std::string::basic_string[abi:ne200100]<0>(v45, "Eigh");
  v499[0] = &unk_286BE6158;
  v499[1] = mlx::core::serialize_primitive<mlx::core::Eigh>;
  v499[3] = v499;
  v498[0] = &unk_286BEA1D8;
  v498[1] = mlx::core::deserialize_primitive<mlx::core::Eigh>;
  v498[3] = v498;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v500, v499);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v501, v498);
  v502 = 0uLL;
  v503 = 0;
  v44 = 0;
  v43 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1240, v45, v500);
  std::string::basic_string[abi:ne200100]<0>(v41, "AffineQuantize");
  v493[0] = &unk_286BE6158;
  v493[1] = mlx::core::serialize_primitive<mlx::core::fast::AffineQuantize>;
  v493[3] = v493;
  v492[0] = &unk_286BEA2C8;
  v492[1] = mlx::core::deserialize_primitive<mlx::core::fast::AffineQuantize>;
  v492[3] = v492;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v494, v493);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v495, v492);
  v496 = 0uLL;
  v497 = 0;
  v40 = 0;
  v39 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1241, v41, v494);
  std::string::basic_string[abi:ne200100]<0>(v37, "RMSNorm");
  v487[0] = &unk_286BE6158;
  v487[1] = mlx::core::serialize_primitive<mlx::core::fast::RMSNorm>;
  v487[3] = v487;
  v486[0] = &unk_286BEA3B8;
  v486[1] = mlx::core::deserialize_primitive<mlx::core::fast::RMSNorm>;
  v486[3] = v486;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v488, v487);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v489, v486);
  v490 = 0uLL;
  v491 = 0;
  v36 = 0;
  v35 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1242, v37, v488);
  std::string::basic_string[abi:ne200100]<0>(v33, "RMSNormVJP");
  v481[0] = &unk_286BE6158;
  v481[1] = mlx::core::serialize_primitive<mlx::core::fast::RMSNormVJP>;
  v481[3] = v481;
  v480[0] = &unk_286BEA4A8;
  v480[1] = mlx::core::deserialize_primitive<mlx::core::fast::RMSNormVJP>;
  v480[3] = v480;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v482, v481);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v483, v480);
  v484 = 0uLL;
  v485 = 0;
  v32 = 0;
  v31 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1243, v33, v482);
  std::string::basic_string[abi:ne200100]<0>(v29, "LayerNorm");
  v475[0] = &unk_286BE6158;
  v475[1] = mlx::core::serialize_primitive<mlx::core::fast::LayerNorm>;
  v475[3] = v475;
  v474[0] = &unk_286BEA598;
  v474[1] = mlx::core::deserialize_primitive<mlx::core::fast::LayerNorm>;
  v474[3] = v474;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v476, v475);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v477, v474);
  v478 = 0uLL;
  v479 = 0;
  v28 = 0;
  v27 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1244, v29, v476);
  std::string::basic_string[abi:ne200100]<0>(v25, "LayerNormVJP");
  v469[0] = &unk_286BE6158;
  v469[1] = mlx::core::serialize_primitive<mlx::core::fast::LayerNormVJP>;
  v469[3] = v469;
  v468[0] = &unk_286BEA688;
  v468[1] = mlx::core::deserialize_primitive<mlx::core::fast::LayerNormVJP>;
  v468[3] = v468;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v470, v469);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v471, v468);
  v472 = 0uLL;
  v473 = 0;
  v24 = 0;
  v23 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1245, v25, v470);
  std::string::basic_string[abi:ne200100]<0>(v21, "RoPE");
  v463[0] = &unk_286BE6158;
  v463[1] = mlx::core::serialize_primitive<mlx::core::fast::RoPE>;
  v463[3] = v463;
  v462[0] = &unk_286BEA778;
  v462[1] = mlx::core::deserialize_primitive<mlx::core::fast::RoPE>;
  v462[3] = v462;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v464, v463);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v465, v462);
  v466 = 0uLL;
  v467 = 0;
  v20 = 0;
  v19 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1246, v21, v464);
  std::string::basic_string[abi:ne200100]<0>(__p, "ScaledDotProductAttention");
  v457[0] = &unk_286BE6158;
  v457[1] = mlx::core::serialize_primitive<mlx::core::fast::ScaledDotProductAttention>;
  v457[3] = v457;
  v456[0] = &unk_286BEA868;
  v456[1] = mlx::core::deserialize_primitive<mlx::core::fast::ScaledDotProductAttention>;
  v456[3] = v456;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v458, v457);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v459, v456);
  v460 = 0uLL;
  v461 = 0;
  v16 = 0;
  v15 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1247, __p, v458);
  v14 = v1;
  std::unordered_map<std::string,mlx::core::PrimitiveSerializer>::unordered_map(v1, v1138, 110);
  v2 = v1248;
  v3 = -12320;
  do
  {
    v455 = v2;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v455);
    std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100]((v2 - 4));
    std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100]((v2 - 8));
    if (*(v2 - 65) < 0)
    {
      operator delete(*(v2 - 11));
    }

    v2 -= 14;
    v3 += 112;
  }

  while (v3);
  v455 = &v460;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v455);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v459);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v458);
  v455 = &v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v455);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v456);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v457);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v458[0] = &v466;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v458);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v465);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v464);
  v458[0] = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v458);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v462);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v463);
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v464[0] = &v472;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v464);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v471);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v470);
  v464[0] = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v464);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v468);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v469);
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v470[0] = &v478;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v470);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v477);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v476);
  v470[0] = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v470);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v474);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v475);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v476[0] = &v484;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v476);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v483);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v482);
  v476[0] = &v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v476);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v480);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v481);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v482[0] = &v490;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v482);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v489);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v488);
  v482[0] = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v482);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v486);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v487);
  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v488[0] = &v496;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v488);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v495);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v494);
  v488[0] = &v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v488);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v492);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v493);
  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  v494[0] = &v502;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v494);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v501);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v500);
  v494[0] = &v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v494);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v498);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v499);
  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  v500[0] = &v508;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v500);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v507);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v506);
  v500[0] = &v47;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v500);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v504);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v505);
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  v506[0] = &v514;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v506);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v513);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v512);
  v506[0] = &v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v506);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v510);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v511);
  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  v512[0] = &v520;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v512);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v519);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v518);
  v512[0] = &v55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v512);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v516);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v517);
  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  v518[0] = &v526;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v518);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v525);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v524);
  v518[0] = &v59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v518);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v522);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v523);
  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  v524[0] = &v532;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v524);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v531);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v530);
  v524[0] = &v63;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v524);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v528);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v529);
  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  v530[0] = &v538;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v530);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v537);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v536);
  v530[0] = &v67;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v530);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v534);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v535);
  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  v536[0] = &v544;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v536);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v543);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v542);
  v536[0] = &v71;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v536);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v540);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v541);
  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  v542[0] = &v550;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v542);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v549);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v548);
  v542[0] = &v75;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v542);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v546);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v547);
  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  v548[0] = &v556;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v548);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v555);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v554);
  v548[0] = &v79;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v548);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v552);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v553);
  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  v554[0] = &v562;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v554);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v561);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v560);
  v554[0] = &v83;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v554);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v558);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v559);
  if (v86 < 0)
  {
    operator delete(v85[0]);
  }

  v560[0] = &v568;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v560);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v567);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v566);
  v560[0] = &v87;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v560);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v564);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v565);
  if (v90 < 0)
  {
    operator delete(v89[0]);
  }

  v566[0] = &v576;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v566);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v575);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v574);
  v566[0] = &v91;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v566);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v571[i + 2]) < 0)
    {
      operator delete(v570[i + 3]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v572);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v573);
  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v574[0] = &v582;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v574);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v581);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v580);
  v574[0] = &v95;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v574);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v578);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v579);
  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  v580[0] = &v588;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v580);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v587);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v586);
  v580[0] = &v99;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v580);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v584);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v585);
  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  v586[0] = &v594;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v586);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v593);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v592);
  v586[0] = &v103;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v586);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v590);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v591);
  if (v106 < 0)
  {
    operator delete(v105[0]);
  }

  v592[0] = &v600;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v592);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v599);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v598);
  v592[0] = &v107;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v592);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v596);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v597);
  if (v110 < 0)
  {
    operator delete(v109[0]);
  }

  v598[0] = &v606;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v598);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v605);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v604);
  v598[0] = &v111;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v598);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v602);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v603);
  if (v114 < 0)
  {
    operator delete(v113[0]);
  }

  v604[0] = &v612;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v604);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v611);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v610);
  v604[0] = &v115;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v604);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v608);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v609);
  if (v118 < 0)
  {
    operator delete(v117[0]);
  }

  v610[0] = &v618;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v610);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v617);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v616);
  v610[0] = &v119;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v610);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v614);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v615);
  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  v616[0] = &v624;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v616);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v623);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v622);
  v616[0] = &v123;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v616);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v620);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v621);
  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  v622[0] = &v630;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v622);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v629);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v628);
  v622[0] = &v127;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v622);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v626);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v627);
  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  v628[0] = &v636;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v628);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v635);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v634);
  v628[0] = &v131;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v628);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v632);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v633);
  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  v634[0] = &v642;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v634);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v641);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v640);
  v634[0] = &v135;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v634);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v638);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v639);
  if (v138 < 0)
  {
    operator delete(v137[0]);
  }

  v640[0] = &v648;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v640);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v647);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v646);
  v640[0] = &v139;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v640);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v644);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v645);
  if (v142 < 0)
  {
    operator delete(v141[0]);
  }

  v646[0] = &v654;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v646);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v653);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v652);
  v646[0] = &v143;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v646);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v650);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v651);
  if (v146 < 0)
  {
    operator delete(v145[0]);
  }

  v652[0] = &v665;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v652);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v664);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v663);
  v652[0] = &v147;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v652);
  for (j = 0; j != -15; j -= 3)
  {
    if (SHIBYTE(v660[j + 2]) < 0)
    {
      operator delete(v660[j]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v661);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v662);
  if (v150 < 0)
  {
    operator delete(v149[0]);
  }

  v656[0] = &v671;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v656);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v670);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v669);
  v656[0] = &v151;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v656);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v667);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v668);
  if (v154 < 0)
  {
    operator delete(v153[0]);
  }

  v656[0] = &v683;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v656);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v682);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v681);
  v656[0] = &v155;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v656);
  for (k = 0; k != -18; k -= 3)
  {
    if (SHIBYTE(v678[k + 2]) < 0)
    {
      operator delete(v678[k]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v679);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v680);
  if (v158 < 0)
  {
    operator delete(v157[0]);
  }

  v673[0] = &v689;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v688);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v687);
  v673[0] = &v159;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v685);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v686);
  if (v162 < 0)
  {
    operator delete(v161[0]);
  }

  v673[0] = &v695;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v694);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v693);
  v673[0] = &v163;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v691);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v692);
  if (v166 < 0)
  {
    operator delete(v165[0]);
  }

  v673[0] = &v701;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v700);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v699);
  v673[0] = &v167;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v697);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v698);
  if (v170 < 0)
  {
    operator delete(v169[0]);
  }

  v673[0] = &v707;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v706);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v705);
  v673[0] = &v171;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v703);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v704);
  if (v174 < 0)
  {
    operator delete(v173[0]);
  }

  v673[0] = &v713;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v712);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v711);
  v673[0] = &v175;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v709);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v710);
  if (v178 < 0)
  {
    operator delete(v177[0]);
  }

  v673[0] = &v719;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v718);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v717);
  v673[0] = &v179;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v715);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v716);
  if (v182 < 0)
  {
    operator delete(v181[0]);
  }

  v673[0] = &v725;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v724);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v723);
  v673[0] = &v183;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v721);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v722);
  if (v186 < 0)
  {
    operator delete(v185[0]);
  }

  v673[0] = &v731;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v730);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v729);
  v673[0] = &v187;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v727);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v728);
  if (v190 < 0)
  {
    operator delete(v189[0]);
  }

  v673[0] = &v737;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v736);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v735);
  v673[0] = &v191;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v733);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v734);
  if (v194 < 0)
  {
    operator delete(v193[0]);
  }

  v673[0] = &v743;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v742);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v741);
  v673[0] = &v195;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v739);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v740);
  if (v198 < 0)
  {
    operator delete(v197[0]);
  }

  v673[0] = &v749;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v748);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v747);
  v673[0] = &v199;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v745);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v746);
  if (v202 < 0)
  {
    operator delete(v201[0]);
  }

  v673[0] = &v755;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v754);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v753);
  v673[0] = &v203;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v751);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v752);
  if (v206 < 0)
  {
    operator delete(v205[0]);
  }

  v673[0] = &v761;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v760);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v759);
  v673[0] = &v207;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v757);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v758);
  if (v210 < 0)
  {
    operator delete(v209[0]);
  }

  v673[0] = &v767;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v766);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v765);
  v673[0] = &v211;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v763);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v764);
  if (v214 < 0)
  {
    operator delete(v213[0]);
  }

  v673[0] = &v773;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v772);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v771);
  v673[0] = &v215;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v769);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v770);
  if (v218 < 0)
  {
    operator delete(v217[0]);
  }

  v673[0] = &v779;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v778);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v777);
  v673[0] = &v219;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v775);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v776);
  if (v222 < 0)
  {
    operator delete(v221[0]);
  }

  v673[0] = &v785;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v784);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v783);
  v673[0] = &v223;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v781);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v782);
  if (v226 < 0)
  {
    operator delete(v225[0]);
  }

  v673[0] = &v791;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v790);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v789);
  v673[0] = &v227;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v787);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v788);
  if (v230 < 0)
  {
    operator delete(v229[0]);
  }

  v673[0] = &v797;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v796);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v795);
  v673[0] = &v231;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v793);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v794);
  if (v234 < 0)
  {
    operator delete(v233[0]);
  }

  v673[0] = &v803;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v802);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v801);
  v673[0] = &v235;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v799);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v800);
  if (v238 < 0)
  {
    operator delete(v237[0]);
  }

  v673[0] = &v809;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v808);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v807);
  v673[0] = &v239;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v805);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v806);
  if (v242 < 0)
  {
    operator delete(v241[0]);
  }

  v673[0] = &v815;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v814);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v813);
  v673[0] = &v243;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v811);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v812);
  if (v246 < 0)
  {
    operator delete(v245[0]);
  }

  v673[0] = &v821;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v820);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v819);
  v673[0] = &v247;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v817);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v818);
  if (v250 < 0)
  {
    operator delete(v249[0]);
  }

  v673[0] = &v829;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v828);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v827);
  v673[0] = &v251;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  for (m = 0; m != -6; m -= 3)
  {
    if (SHIBYTE(v824[m + 2]) < 0)
    {
      operator delete(v823[m + 3]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v825);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v826);
  if (v254 < 0)
  {
    operator delete(v253[0]);
  }

  v673[0] = &v835;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v834);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v833);
  v673[0] = &v255;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v831);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v832);
  if (v258 < 0)
  {
    operator delete(v257[0]);
  }

  v673[0] = &v841;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v840);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v839);
  v673[0] = &v259;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v837);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v838);
  if (v262 < 0)
  {
    operator delete(v261[0]);
  }

  v673[0] = &v847;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v846);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v845);
  v673[0] = &v263;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v843);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v844);
  if (v266 < 0)
  {
    operator delete(v265[0]);
  }

  v673[0] = &v853;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v852);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v851);
  v673[0] = &v267;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v849);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v850);
  if (v270 < 0)
  {
    operator delete(v269[0]);
  }

  v673[0] = &v859;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v858);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v857);
  v673[0] = &v271;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v855);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v856);
  if (v274 < 0)
  {
    operator delete(v273[0]);
  }

  v673[0] = &v865;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v864);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v863);
  v673[0] = &v275;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v861);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v862);
  if (v278 < 0)
  {
    operator delete(v277[0]);
  }

  v673[0] = &v871;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v870);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v869);
  v673[0] = &v279;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v867);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v868);
  if (v282 < 0)
  {
    operator delete(v281[0]);
  }

  v673[0] = &v877;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v876);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v875);
  v673[0] = &v283;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v873);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v874);
  if (v286 < 0)
  {
    operator delete(v285[0]);
  }

  v673[0] = &v883;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v882);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v881);
  v673[0] = &v287;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v879);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v880);
  if (v290 < 0)
  {
    operator delete(v289[0]);
  }

  v673[0] = &v889;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v888);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v887);
  v673[0] = &v291;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v885);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v886);
  if (v294 < 0)
  {
    operator delete(v293[0]);
  }

  v673[0] = &v895;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v894);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v893);
  v673[0] = &v295;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v891);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v892);
  if (v298 < 0)
  {
    operator delete(v297[0]);
  }

  v673[0] = &v901;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v900);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v899);
  v673[0] = &v299;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v897);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v898);
  if (v302 < 0)
  {
    operator delete(v301[0]);
  }

  v673[0] = &v907;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v906);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v905);
  v673[0] = &v303;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v903);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v904);
  if (v306 < 0)
  {
    operator delete(v305[0]);
  }

  v673[0] = &v913;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v912);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v911);
  v673[0] = &v307;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v909);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v910);
  if (v310 < 0)
  {
    operator delete(v309[0]);
  }

  v673[0] = &v919;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v918);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v917);
  v673[0] = &v311;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v915);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v916);
  if (v314 < 0)
  {
    operator delete(v313[0]);
  }

  v673[0] = &v925;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v924);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v923);
  v673[0] = &v315;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v921);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v922);
  if (v318 < 0)
  {
    operator delete(v317[0]);
  }

  v673[0] = &v931;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v930);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v929);
  v673[0] = &v319;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v927);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v928);
  if (v322 < 0)
  {
    operator delete(v321[0]);
  }

  v673[0] = &v939;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v938);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v937);
  v673[0] = &v323;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  if (v934 < 0)
  {
    operator delete(v933[0]);
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v935);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v936);
  if (v326 < 0)
  {
    operator delete(v325[0]);
  }

  v673[0] = &v945;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v944);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v943);
  v673[0] = &v327;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v941);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v942);
  if (v330 < 0)
  {
    operator delete(v329[0]);
  }

  v673[0] = &v951;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v950);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v949);
  v673[0] = &v331;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v947);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v948);
  if (v334 < 0)
  {
    operator delete(v333[0]);
  }

  v673[0] = &v957;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v956);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v955);
  v673[0] = &v335;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v953);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v954);
  if (v338 < 0)
  {
    operator delete(v337[0]);
  }

  v673[0] = &v963;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v962);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v961);
  v673[0] = &v339;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v959);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v960);
  if (v342 < 0)
  {
    operator delete(v341[0]);
  }

  v673[0] = &v969;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v968);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v967);
  v673[0] = &v343;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v965);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v966);
  if (v346 < 0)
  {
    operator delete(v345[0]);
  }

  v673[0] = &v975;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v974);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v973);
  v673[0] = &v347;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v971);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v972);
  if (v350 < 0)
  {
    operator delete(v349[0]);
  }

  v673[0] = &v981;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v980);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v979);
  v673[0] = &v351;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v977);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v978);
  if (v354 < 0)
  {
    operator delete(v353[0]);
  }

  v673[0] = &v987;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v986);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v985);
  v673[0] = &v355;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v983);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v984);
  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  v673[0] = &v993;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v992);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v991);
  v673[0] = &v359;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v989);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v990);
  if (v362 < 0)
  {
    operator delete(v361[0]);
  }

  v673[0] = &v999;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v998);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v997);
  v673[0] = &v363;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v995);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v996);
  if (v366 < 0)
  {
    operator delete(v365[0]);
  }

  v673[0] = &v1005;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1004);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1003);
  v673[0] = &v367;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1001);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1002);
  if (v370 < 0)
  {
    operator delete(v369[0]);
  }

  v673[0] = &v1011;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1010);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1009);
  v673[0] = &v371;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1007);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1008);
  if (v374 < 0)
  {
    operator delete(v373[0]);
  }

  v673[0] = &v1017;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1016);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1015);
  v673[0] = &v375;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1013);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1014);
  if (v378 < 0)
  {
    operator delete(v377[0]);
  }

  v673[0] = &v1023;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1022);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1021);
  v673[0] = &v379;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1019);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1020);
  if (v382 < 0)
  {
    operator delete(v381[0]);
  }

  v673[0] = &v1029;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1028);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1027);
  v673[0] = &v383;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1025);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1026);
  if (v386 < 0)
  {
    operator delete(v385[0]);
  }

  v673[0] = &v1040;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1039);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1038);
  v673[0] = &v387;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  for (n = 0; n != -15; n -= 3)
  {
    if (SHIBYTE(v1035[n + 2]) < 0)
    {
      operator delete(v1035[n]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1036);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1037);
  if (v390 < 0)
  {
    operator delete(v389[0]);
  }

  v673[0] = &v1046;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1045);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1044);
  v673[0] = &v391;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1042);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1043);
  if (v394 < 0)
  {
    operator delete(v393[0]);
  }

  v673[0] = &v1052;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1051);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1050);
  v673[0] = &v395;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1048);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1049);
  if (v398 < 0)
  {
    operator delete(v397[0]);
  }

  v673[0] = &v1058;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1057);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1056);
  v673[0] = &v399;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1054);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1055);
  if (v402 < 0)
  {
    operator delete(v401[0]);
  }

  v673[0] = &v1064;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1063);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1062);
  v673[0] = &v403;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1060);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1061);
  if (v406 < 0)
  {
    operator delete(v405[0]);
  }

  v673[0] = &v1070;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1069);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1068);
  v673[0] = &v407;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1066);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1067);
  if (v410 < 0)
  {
    operator delete(v409[0]);
  }

  v673[0] = &v1076;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1075);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1074);
  v673[0] = &v411;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1072);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1073);
  if (v414 < 0)
  {
    operator delete(v413[0]);
  }

  v673[0] = &v1082;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1081);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1080);
  v673[0] = &v415;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1078);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1079);
  if (v418 < 0)
  {
    operator delete(v417[0]);
  }

  v673[0] = &v1088;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1087);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1086);
  v673[0] = &v419;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1084);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1085);
  if (v422 < 0)
  {
    operator delete(v421[0]);
  }

  v673[0] = &v1094;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1093);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1092);
  v673[0] = &v423;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1090);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1091);
  if (v426 < 0)
  {
    operator delete(v425[0]);
  }

  v673[0] = &v1100;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1099);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1098);
  v673[0] = &v427;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1096);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1097);
  if (v430 < 0)
  {
    operator delete(v429[0]);
  }

  v673[0] = &v1106;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1105);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1104);
  v673[0] = &v431;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1102);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1103);
  if (v434 < 0)
  {
    operator delete(v433[0]);
  }

  v673[0] = &v1112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1111);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1110);
  v673[0] = &v435;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1108);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1109);
  if (v438 < 0)
  {
    operator delete(v437[0]);
  }

  v673[0] = &v1118;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1117);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1116);
  v673[0] = &v439;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1114);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1115);
  if (v442 < 0)
  {
    operator delete(v441[0]);
  }

  v673[0] = &v1124;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1123);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1122);
  v673[0] = &v443;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1120);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1121);
  if (v446 < 0)
  {
    operator delete(v445[0]);
  }

  v673[0] = &v1130;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1129);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1128);
  v673[0] = &v447;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1126);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1127);
  if (v450 < 0)
  {
    operator delete(v449[0]);
  }

  v673[0] = &v1136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1135);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1134);
  v673[0] = &v451;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v673);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1132);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1133);
  if (v454 < 0)
  {
    operator delete(v453[0]);
  }

  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 1065353216;
  for (ii = *(v1 + 16); ii; ii = *ii)
  {
    v10 = ii[13];
    v11 = ii[14];
    while (v10 != v11)
    {
      v1138[0].__r_.__value_.__r.__words[0] = v10;
      v12 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v14 + 40), v10, &std::piecewise_construct, v1138, v673);
      std::string::operator=((v12 + 5), (ii + 2));
      v10 += 3;
    }
  }

  return v14;
}

void sub_25A295718(_Unwind_Exception *a1)
{
  v3 = -12320;
  v4 = v1;
  do
  {
    v4 = std::pair<std::string const,mlx::core::PrimitiveSerializer>::~pair(v4) - 112;
    v3 += 112;
  }

  while (v3);
  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1830]);
  STACK[0x17E8] = &STACK[0x340];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x17E8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x17F0]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1810]);
  if (SLOBYTE(STACK[0x36F]) < 0)
  {
    operator delete(STACK[0x358]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x18C8]);
  STACK[0x1830] = &STACK[0x370];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1830]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1888]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x18A8]);
  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1960]);
  STACK[0x18C8] = &STACK[0x3A0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x18C8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1920]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1940]);
  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x19F8]);
  STACK[0x1960] = &STACK[0x3D0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1960]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x19B8]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x19D8]);
  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1A90]);
  STACK[0x19F8] = &STACK[0x400];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x19F8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1A50]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1A70]);
  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1B28]);
  STACK[0x1A90] = &STACK[0x430];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1A90]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1AE8]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1B08]);
  if (SLOBYTE(STACK[0x45F]) < 0)
  {
    operator delete(STACK[0x448]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1BC0]);
  STACK[0x1B28] = &STACK[0x460];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1B28]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1B80]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1BA0]);
  if (SLOBYTE(STACK[0x48F]) < 0)
  {
    operator delete(STACK[0x478]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1C58]);
  STACK[0x1BC0] = &STACK[0x490];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1BC0]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1C18]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1C38]);
  if (SLOBYTE(STACK[0x4BF]) < 0)
  {
    operator delete(STACK[0x4A8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1CF0]);
  STACK[0x1C58] = &STACK[0x4C0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1C58]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1CB0]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1CD0]);
  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1D88]);
  STACK[0x1CF0] = &STACK[0x4F0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1CF0]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1D48]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1D68]);
  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1E20]);
  STACK[0x1D88] = &STACK[0x520];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1D88]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1DE0]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1E00]);
  if (SLOBYTE(STACK[0x54F]) < 0)
  {
    operator delete(STACK[0x538]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1EB8]);
  STACK[0x1E20] = &STACK[0x550];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1E20]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1E78]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1E98]);
  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(STACK[0x568]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1F50]);
  STACK[0x1EB8] = &STACK[0x580];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1EB8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1F10]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1F30]);
  if (SLOBYTE(STACK[0x5AF]) < 0)
  {
    operator delete(STACK[0x598]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1FE8]);
  STACK[0x1F50] = &STACK[0x5B0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1F50]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1FA8]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1FC8]);
  if (SLOBYTE(STACK[0x5DF]) < 0)
  {
    operator delete(STACK[0x5C8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2080]);
  STACK[0x1FE8] = &STACK[0x5E0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1FE8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2040]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2060]);
  if (SLOBYTE(STACK[0x60F]) < 0)
  {
    operator delete(STACK[0x5F8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2118]);
  STACK[0x2080] = &STACK[0x610];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2080]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x20D8]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x20F8]);
  if (SLOBYTE(STACK[0x63F]) < 0)
  {
    operator delete(STACK[0x628]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x21B0]);
  STACK[0x2118] = &STACK[0x640];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2118]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2170]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2190]);
  if (SLOBYTE(STACK[0x66F]) < 0)
  {
    operator delete(STACK[0x658]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2248]);
  STACK[0x21B0] = &STACK[0x670];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x21B0]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2208]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2228]);
  if (SLOBYTE(STACK[0x69F]) < 0)
  {
    operator delete(STACK[0x688]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x22E0]);
  STACK[0x2248] = &STACK[0x6A0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2248]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x22A0]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x22C0]);
  if (SLOBYTE(STACK[0x6CF]) < 0)
  {
    operator delete(STACK[0x6B8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x23A8]);
  STACK[0x22E0] = &STACK[0x6D0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x22E0]);
  v5 = &STACK[0x2367];
  v6 = -48;
  v7 = &STACK[0x2367];
  while (1)
  {
    v8 = *v7;
    v7 -= 3;
    if (v8 < 0)
    {
      operator delete(*(v5 - 23));
    }

    v5 = v7;
    v6 += 24;
    if (!v6)
    {
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2368]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2388]);
      if (SLOBYTE(STACK[0x6FF]) < 0)
      {
        operator delete(STACK[0x6E8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2440]);
      STACK[0x23A8] = &STACK[0x700];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x23A8]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2400]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2420]);
      if (SLOBYTE(STACK[0x72F]) < 0)
      {
        operator delete(STACK[0x718]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x24D8]);
      STACK[0x2440] = &STACK[0x730];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2440]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2498]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x24B8]);
      if (SLOBYTE(STACK[0x75F]) < 0)
      {
        operator delete(STACK[0x748]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2570]);
      STACK[0x24D8] = &STACK[0x760];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x24D8]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2530]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2550]);
      if (SLOBYTE(STACK[0x78F]) < 0)
      {
        operator delete(STACK[0x778]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2608]);
      STACK[0x2570] = &STACK[0x790];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2570]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x25C8]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x25E8]);
      if (SLOBYTE(STACK[0x7BF]) < 0)
      {
        operator delete(STACK[0x7A8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x26A0]);
      STACK[0x2608] = &STACK[0x7C0];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2608]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2660]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2680]);
      if (SLOBYTE(STACK[0x7EF]) < 0)
      {
        operator delete(STACK[0x7D8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2738]);
      STACK[0x26A0] = &STACK[0x7F0];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x26A0]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x26F8]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2718]);
      if (SLOBYTE(STACK[0x81F]) < 0)
      {
        operator delete(STACK[0x808]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x27D0]);
      STACK[0x2738] = &STACK[0x820];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2738]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2790]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x27B0]);
      if (SLOBYTE(STACK[0x84F]) < 0)
      {
        operator delete(STACK[0x838]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2868]);
      STACK[0x27D0] = &STACK[0x850];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x27D0]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2828]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2848]);
      if (SLOBYTE(STACK[0x87F]) < 0)
      {
        operator delete(STACK[0x868]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2900]);
      STACK[0x2868] = &STACK[0x880];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2868]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x28C0]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x28E0]);
      if (SLOBYTE(STACK[0x8AF]) < 0)
      {
        operator delete(STACK[0x898]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2998]);
      STACK[0x2900] = &STACK[0x8B0];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2900]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2958]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2978]);
      if (SLOBYTE(STACK[0x8DF]) < 0)
      {
        operator delete(STACK[0x8C8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2A30]);
      STACK[0x2998] = &STACK[0x8E0];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2998]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x29F0]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2A10]);
      if (SLOBYTE(STACK[0x90F]) < 0)
      {
        operator delete(STACK[0x8F8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2AC8]);
      STACK[0x2A30] = &STACK[0x910];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2A30]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2A88]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2AA8]);
      if (SLOBYTE(STACK[0x93F]) < 0)
      {
        operator delete(STACK[0x928]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2B60]);
      STACK[0x2AC8] = &STACK[0x940];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2AC8]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2B20]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2B40]);
      if (SLOBYTE(STACK[0x96F]) < 0)
      {
        operator delete(STACK[0x958]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2C70]);
      STACK[0x2B60] = &STACK[0x970];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2B60]);
      v9 = &STACK[0x2C2F];
      v10 = -120;
      v11 = &STACK[0x2C2F];
      while (1)
      {
        v12 = *v11;
        v11 -= 3;
        if (v12 < 0)
        {
          operator delete(*(v9 - 23));
        }

        v9 = v11;
        v10 += 24;
        if (!v10)
        {
          std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2C30]);
          std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2C50]);
          if (SLOBYTE(STACK[0x99F]) < 0)
          {
            operator delete(STACK[0x988]);
          }

          mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2D08]);
          STACK[0x2BB8] = &STACK[0x9A0];
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2BB8]);
          std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2CC8]);
          std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2CE8]);
          if (SLOBYTE(STACK[0x9CF]) < 0)
          {
            operator delete(STACK[0x9B8]);
          }

          mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2E30]);
          STACK[0x2BB8] = &STACK[0x9D0];
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2BB8]);
          v13 = &STACK[0x2DEF];
          v14 = -144;
          v15 = &STACK[0x2DEF];
          while (1)
          {
            v16 = *v15;
            v15 -= 3;
            if (v16 < 0)
            {
              operator delete(*(v13 - 23));
            }

            v13 = v15;
            v14 += 24;
            if (!v14)
            {
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2DF0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2E10]);
              if (SLOBYTE(STACK[0x9FF]) < 0)
              {
                operator delete(STACK[0x9E8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2EC8]);
              STACK[0x2D60] = &STACK[0xA00];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2E88]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2EA8]);
              if (SLOBYTE(STACK[0xA2F]) < 0)
              {
                operator delete(STACK[0xA18]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2F60]);
              STACK[0x2D60] = &STACK[0xA30];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2F20]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2F40]);
              if (SLOBYTE(STACK[0xA5F]) < 0)
              {
                operator delete(STACK[0xA48]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2FF8]);
              STACK[0x2D60] = &STACK[0xA60];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2FB8]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2FD8]);
              if (SLOBYTE(STACK[0xA8F]) < 0)
              {
                operator delete(STACK[0xA78]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3090]);
              STACK[0x2D60] = &STACK[0xA90];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3050]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3070]);
              if (SLOBYTE(STACK[0xABF]) < 0)
              {
                operator delete(STACK[0xAA8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3128]);
              STACK[0x2D60] = &STACK[0xAC0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x30E8]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3108]);
              if (SLOBYTE(STACK[0xAEF]) < 0)
              {
                operator delete(STACK[0xAD8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x31C0]);
              STACK[0x2D60] = &STACK[0xAF0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3180]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x31A0]);
              if (SLOBYTE(STACK[0xB1F]) < 0)
              {
                operator delete(STACK[0xB08]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3258]);
              STACK[0x2D60] = &STACK[0xB20];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3218]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3238]);
              if (SLOBYTE(STACK[0xB4F]) < 0)
              {
                operator delete(STACK[0xB38]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x32F0]);
              STACK[0x2D60] = &STACK[0xB50];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x32B0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x32D0]);
              if (SLOBYTE(STACK[0xB7F]) < 0)
              {
                operator delete(STACK[0xB68]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3388]);
              STACK[0x2D60] = &STACK[0xB80];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3348]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3368]);
              if (SLOBYTE(STACK[0xBAF]) < 0)
              {
                operator delete(STACK[0xB98]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3420]);
              STACK[0x2D60] = &STACK[0xBB0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x33E0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3400]);
              if (SLOBYTE(STACK[0xBDF]) < 0)
              {
                operator delete(STACK[0xBC8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x34B8]);
              STACK[0x2D60] = &STACK[0xBE0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3478]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3498]);
              if (SLOBYTE(STACK[0xC0F]) < 0)
              {
                operator delete(STACK[0xBF8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3550]);
              STACK[0x2D60] = &STACK[0xC10];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3510]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3530]);
              if (SLOBYTE(STACK[0xC3F]) < 0)
              {
                operator delete(STACK[0xC28]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x35E8]);
              STACK[0x2D60] = &STACK[0xC40];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x35A8]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x35C8]);
              if (SLOBYTE(STACK[0xC6F]) < 0)
              {
                operator delete(STACK[0xC58]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3680]);
              STACK[0x2D60] = &STACK[0xC70];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3640]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3660]);
              if (SLOBYTE(STACK[0xC9F]) < 0)
              {
                operator delete(STACK[0xC88]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3718]);
              STACK[0x2D60] = &STACK[0xCA0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x36D8]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x36F8]);
              if (SLOBYTE(STACK[0xCCF]) < 0)
              {
                operator delete(STACK[0xCB8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x37B0]);
              STACK[0x2D60] = &STACK[0xCD0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3770]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3790]);
              if (SLOBYTE(STACK[0xCFF]) < 0)
              {
                operator delete(STACK[0xCE8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3848]);
              STACK[0x2D60] = &STACK[0xD00];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3808]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3828]);
              if (SLOBYTE(STACK[0xD2F]) < 0)
              {
                operator delete(STACK[0xD18]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x38E0]);
              STACK[0x2D60] = &STACK[0xD30];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x38A0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x38C0]);
              if (SLOBYTE(STACK[0xD5F]) < 0)
              {
                operator delete(STACK[0xD48]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3978]);
              STACK[0x2D60] = &STACK[0xD60];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3938]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3958]);
              if (SLOBYTE(STACK[0xD8F]) < 0)
              {
                operator delete(STACK[0xD78]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3A10]);
              STACK[0x2D60] = &STACK[0xD90];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x39D0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x39F0]);
              if (SLOBYTE(STACK[0xDBF]) < 0)
              {
                operator delete(STACK[0xDA8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3AA8]);
              STACK[0x2D60] = &STACK[0xDC0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3A68]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3A88]);
              if (SLOBYTE(STACK[0xDEF]) < 0)
              {
                operator delete(STACK[0xDD8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3B40]);
              STACK[0x2D60] = &STACK[0xDF0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3B00]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3B20]);
              if (SLOBYTE(STACK[0xE1F]) < 0)
              {
                operator delete(STACK[0xE08]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3BD8]);
              STACK[0x2D60] = &STACK[0xE20];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3B98]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3BB8]);
              if (SLOBYTE(STACK[0xE4F]) < 0)
              {
                operator delete(STACK[0xE38]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3CA0]);
              STACK[0x2D60] = &STACK[0xE50];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              v17 = &STACK[0x3C5F];
              v18 = -48;
              v19 = &STACK[0x3C5F];
              while (1)
              {
                v20 = *v19;
                v19 -= 3;
                if (v20 < 0)
                {
                  operator delete(*(v17 - 23));
                }

                v17 = v19;
                v18 += 24;
                if (!v18)
                {
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3C60]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3C80]);
                  if (SLOBYTE(STACK[0xE7F]) < 0)
                  {
                    operator delete(STACK[0xE68]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3D38]);
                  STACK[0x2D60] = &STACK[0xE80];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3CF8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3D18]);
                  if (SLOBYTE(STACK[0xEAF]) < 0)
                  {
                    operator delete(STACK[0xE98]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3DD0]);
                  STACK[0x2D60] = &STACK[0xEB0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3D90]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3DB0]);
                  if (SLOBYTE(STACK[0xEDF]) < 0)
                  {
                    operator delete(STACK[0xEC8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3E68]);
                  STACK[0x2D60] = &STACK[0xEE0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3E28]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3E48]);
                  if (SLOBYTE(STACK[0xF0F]) < 0)
                  {
                    operator delete(STACK[0xEF8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3F00]);
                  STACK[0x2D60] = &STACK[0xF10];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3EC0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3EE0]);
                  if (SLOBYTE(STACK[0xF3F]) < 0)
                  {
                    operator delete(STACK[0xF28]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3F98]);
                  STACK[0x2D60] = &STACK[0xF40];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3F58]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3F78]);
                  if (SLOBYTE(STACK[0xF6F]) < 0)
                  {
                    operator delete(STACK[0xF58]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4030]);
                  STACK[0x2D60] = &STACK[0xF70];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3FF0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4010]);
                  if (SLOBYTE(STACK[0xF9F]) < 0)
                  {
                    operator delete(STACK[0xF88]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x40C8]);
                  STACK[0x2D60] = &STACK[0xFA0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4088]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x40A8]);
                  if (SLOBYTE(STACK[0xFCF]) < 0)
                  {
                    operator delete(STACK[0xFB8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4160]);
                  STACK[0x2D60] = &STACK[0xFD0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4120]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4140]);
                  if (SLOBYTE(STACK[0xFFF]) < 0)
                  {
                    operator delete(STACK[0xFE8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x41F8]);
                  STACK[0x2D60] = &STACK[0x1000];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x41B8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x41D8]);
                  if (SLOBYTE(STACK[0x102F]) < 0)
                  {
                    operator delete(STACK[0x1018]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4290]);
                  STACK[0x2D60] = &STACK[0x1030];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4250]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4270]);
                  if (SLOBYTE(STACK[0x105F]) < 0)
                  {
                    operator delete(STACK[0x1048]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4328]);
                  STACK[0x2D60] = &STACK[0x1060];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x42E8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4308]);
                  if (SLOBYTE(STACK[0x108F]) < 0)
                  {
                    operator delete(STACK[0x1078]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x43C0]);
                  STACK[0x2D60] = &STACK[0x1090];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4380]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x43A0]);
                  if (SLOBYTE(STACK[0x10BF]) < 0)
                  {
                    operator delete(STACK[0x10A8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4458]);
                  STACK[0x2D60] = &STACK[0x10C0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4418]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4438]);
                  if (SLOBYTE(STACK[0x10EF]) < 0)
                  {
                    operator delete(STACK[0x10D8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x44F0]);
                  STACK[0x2D60] = &STACK[0x10F0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x44B0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x44D0]);
                  if (SLOBYTE(STACK[0x111F]) < 0)
                  {
                    operator delete(STACK[0x1108]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4588]);
                  STACK[0x2D60] = &STACK[0x1120];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4548]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4568]);
                  if (SLOBYTE(STACK[0x114F]) < 0)
                  {
                    operator delete(STACK[0x1138]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4620]);
                  STACK[0x2D60] = &STACK[0x1150];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x45E0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4600]);
                  if (SLOBYTE(STACK[0x117F]) < 0)
                  {
                    operator delete(STACK[0x1168]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x46B8]);
                  STACK[0x2D60] = &STACK[0x1180];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4678]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4698]);
                  if (SLOBYTE(STACK[0x11AF]) < 0)
                  {
                    operator delete(STACK[0x1198]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4768]);
                  STACK[0x2D60] = &STACK[0x11B0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  if (SLOBYTE(STACK[0x4727]) < 0)
                  {
                    operator delete(STACK[0x4710]);
                  }

                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4728]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4748]);
                  if (SLOBYTE(STACK[0x11DF]) < 0)
                  {
                    operator delete(STACK[0x11C8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4800]);
                  STACK[0x2D60] = &STACK[0x11E0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x47C0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x47E0]);
                  if (SLOBYTE(STACK[0x120F]) < 0)
                  {
                    operator delete(STACK[0x11F8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4898]);
                  STACK[0x2D60] = &STACK[0x1210];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4858]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4878]);
                  if (SLOBYTE(STACK[0x123F]) < 0)
                  {
                    operator delete(STACK[0x1228]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4930]);
                  STACK[0x2D60] = &STACK[0x1240];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x48F0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4910]);
                  if (SLOBYTE(STACK[0x126F]) < 0)
                  {
                    operator delete(STACK[0x1258]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x49C8]);
                  STACK[0x2D60] = &STACK[0x1270];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4988]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x49A8]);
                  if (SLOBYTE(STACK[0x129F]) < 0)
                  {
                    operator delete(STACK[0x1288]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4A60]);
                  STACK[0x2D60] = &STACK[0x12A0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4A20]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4A40]);
                  if (SLOBYTE(STACK[0x12CF]) < 0)
                  {
                    operator delete(STACK[0x12B8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4AF8]);
                  STACK[0x2D60] = &STACK[0x12D0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4AB8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4AD8]);
                  if (SLOBYTE(STACK[0x12FF]) < 0)
                  {
                    operator delete(STACK[0x12E8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4B90]);
                  STACK[0x2D60] = &STACK[0x1300];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4B50]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4B70]);
                  if (SLOBYTE(STACK[0x132F]) < 0)
                  {
                    operator delete(STACK[0x1318]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4C28]);
                  STACK[0x2D60] = &STACK[0x1330];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4BE8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4C08]);
                  if (SLOBYTE(STACK[0x135F]) < 0)
                  {
                    operator delete(STACK[0x1348]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4CC0]);
                  STACK[0x2D60] = &STACK[0x1360];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4C80]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4CA0]);
                  if (SLOBYTE(STACK[0x138F]) < 0)
                  {
                    operator delete(STACK[0x1378]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4D58]);
                  STACK[0x2D60] = &STACK[0x1390];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4D18]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4D38]);
                  if (SLOBYTE(STACK[0x13BF]) < 0)
                  {
                    operator delete(STACK[0x13A8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4DF0]);
                  STACK[0x2D60] = &STACK[0x13C0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4DB0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4DD0]);
                  if (SLOBYTE(STACK[0x13EF]) < 0)
                  {
                    operator delete(STACK[0x13D8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4E88]);
                  STACK[0x2D60] = &STACK[0x13F0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4E48]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4E68]);
                  if (SLOBYTE(STACK[0x141F]) < 0)
                  {
                    operator delete(STACK[0x1408]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4F20]);
                  STACK[0x2D60] = &STACK[0x1420];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4EE0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4F00]);
                  if (SLOBYTE(STACK[0x144F]) < 0)
                  {
                    operator delete(STACK[0x1438]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4FB8]);
                  STACK[0x2D60] = &STACK[0x1450];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4F78]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4F98]);
                  if (SLOBYTE(STACK[0x147F]) < 0)
                  {
                    operator delete(STACK[0x1468]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5050]);
                  STACK[0x2D60] = &STACK[0x1480];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5010]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5030]);
                  if (SLOBYTE(STACK[0x14AF]) < 0)
                  {
                    operator delete(STACK[0x1498]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5160]);
                  STACK[0x2D60] = &STACK[0x14B0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  v21 = &STACK[0x511F];
                  v22 = -120;
                  v23 = &STACK[0x511F];
                  while (1)
                  {
                    v24 = *v23;
                    v23 -= 3;
                    if (v24 < 0)
                    {
                      operator delete(*(v21 - 23));
                    }

                    v21 = v23;
                    v22 += 24;
                    if (!v22)
                    {
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5120]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5140]);
                      if (SLOBYTE(STACK[0x14DF]) < 0)
                      {
                        operator delete(STACK[0x14C8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x51F8]);
                      STACK[0x2D60] = &STACK[0x14E0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x51B8]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x51D8]);
                      if (SLOBYTE(STACK[0x150F]) < 0)
                      {
                        operator delete(STACK[0x14F8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5290]);
                      STACK[0x2D60] = &STACK[0x1510];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5250]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5270]);
                      if (SLOBYTE(STACK[0x153F]) < 0)
                      {
                        operator delete(STACK[0x1528]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5328]);
                      STACK[0x2D60] = &STACK[0x1540];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x52E8]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5308]);
                      if (SLOBYTE(STACK[0x156F]) < 0)
                      {
                        operator delete(STACK[0x1558]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x53C0]);
                      STACK[0x2D60] = &STACK[0x1570];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5380]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x53A0]);
                      if (SLOBYTE(STACK[0x159F]) < 0)
                      {
                        operator delete(STACK[0x1588]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5458]);
                      STACK[0x2D60] = &STACK[0x15A0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5418]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5438]);
                      if (SLOBYTE(STACK[0x15CF]) < 0)
                      {
                        operator delete(STACK[0x15B8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x54F0]);
                      STACK[0x2D60] = &STACK[0x15D0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x54B0]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x54D0]);
                      if (SLOBYTE(STACK[0x15FF]) < 0)
                      {
                        operator delete(STACK[0x15E8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5588]);
                      STACK[0x2D60] = &STACK[0x1600];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5548]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5568]);
                      if (SLOBYTE(STACK[0x162F]) < 0)
                      {
                        operator delete(STACK[0x1618]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5620]);
                      STACK[0x2D60] = &STACK[0x1630];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x55E0]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5600]);
                      if (SLOBYTE(STACK[0x165F]) < 0)
                      {
                        operator delete(STACK[0x1648]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x56B8]);
                      STACK[0x2D60] = &STACK[0x1660];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5678]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5698]);
                      if (SLOBYTE(STACK[0x168F]) < 0)
                      {
                        operator delete(STACK[0x1678]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5750]);
                      STACK[0x2D60] = &STACK[0x1690];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5710]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5730]);
                      if (SLOBYTE(STACK[0x16BF]) < 0)
                      {
                        operator delete(STACK[0x16A8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x57E8]);
                      STACK[0x2D60] = &STACK[0x16C0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x57A8]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x57C8]);
                      if (SLOBYTE(STACK[0x16EF]) < 0)
                      {
                        operator delete(STACK[0x16D8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5880]);
                      STACK[0x2D60] = &STACK[0x16F0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5840]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5860]);
                      if (SLOBYTE(STACK[0x171F]) < 0)
                      {
                        operator delete(STACK[0x1708]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5918]);
                      STACK[0x2D60] = &STACK[0x1720];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x58D8]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x58F8]);
                      if (SLOBYTE(STACK[0x174F]) < 0)
                      {
                        operator delete(STACK[0x1738]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x59B0]);
                      STACK[0x2D60] = &STACK[0x1750];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5970]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5990]);
                      if (SLOBYTE(STACK[0x177F]) < 0)
                      {
                        operator delete(STACK[0x1768]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5A48]);
                      STACK[0x2D60] = &STACK[0x1780];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5A08]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5A28]);
                      if (SLOBYTE(STACK[0x17AF]) < 0)
                      {
                        operator delete(STACK[0x1798]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5AE0]);
                      STACK[0x2D60] = &STACK[0x17B0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5AA0]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5AC0]);
                      if (SLOBYTE(STACK[0x17E7]) < 0)
                      {
                        operator delete(STACK[0x17D0]);
                      }

                      _Unwind_Resume(a1);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t mlx::core::serialize_primitive<mlx::core::AddMM>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 4);
}

uint64_t mlx::core::serialize_primitive<mlx::core::Arange>(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[3];
  (*(*a1 + 32))(a1, &v6, 8);
  v6 = v3;
  (*(*a1 + 32))(a1, &v6, 8);
  v6 = v4;
  return (*(*a1 + 32))(a1, &v6, 8);
}

uint64_t mlx::core::serialize_primitive<mlx::core::ArgPartition>(uint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(*(a2 + 20));
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 4);
}

uint64_t mlx::core::serialize_primitive<mlx::core::ArgReduce>(uint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(*(a2 + 20));
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 4);
}

void mlx::core::deserialize_primitive<mlx::core::ArgSort>(uint64_t a1)
{
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 4);
  operator new();
}

uint64_t mlx::core::serialize_primitive<mlx::core::AsType>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v5 = v3;
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = BYTE4(v3);
  return (*(*a1 + 32))(a1, &v6, 1);
}

void mlx::core::serialize_primitive<mlx::core::AsStrided>(uint64_t a1, uint64_t a2)
{
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIiNS_9allocatorIiEEEENS3_IxNS4_IxEEEEmEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S8_mEJEJEJRKS6_RKS8_RKmEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(v3, a2 + 24, a2 + 48, (a2 + 72));
  v6 = a1;
  mlx::core::serialize<std::tuple<std::vector<int>,std::vector<long long>,unsigned long>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<long long>,unsigned long>)::{lambda(std::tuple<std::vector<int>,std::vector<long long>,unsigned long> &)#1}::operator()<std::vector<int>,std::vector<long long>,unsigned long>(&v6, v3, __p, &v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A298EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::deserialize_primitive<mlx::core::BitwiseBinary>(uint64_t a1)
{
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 4);
  operator new();
}

void mlx::core::deserialize_primitive<mlx::core::BlockMaskedMM>(uint64_t a1)
{
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 4);
  operator new();
}

void mlx::core::serialize_primitive<mlx::core::Broadcast>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A299150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize_primitive<mlx::core::Broadcast>(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a3;
  mlx::core::deserialize<std::vector<int>>(a1, &__p);
  std::allocate_shared[abi:ne200100]<mlx::core::Broadcast,std::allocator<mlx::core::Broadcast>,mlx::core::Stream &,std::vector<int>,0>();
}

void sub_25A2991C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::BroadcastAxes>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A299248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A299314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize_primitive<mlx::core::Concatenate>(uint64_t a1)
{
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 4);
  operator new();
}

void mlx::core::serialize_primitive<mlx::core::Convolution>(uint64_t a1, uint64_t a2)
{
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJNS_6vectorIiNS_9allocatorIiEEEES6_S6_S6_ibEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJS6_S6_S6_S6_ibEJEJEJRKS6_SA_SA_SA_RKiRKbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(v3, a2 + 24, a2 + 48, a2 + 72, a2 + 96, (a2 + 120), (a2 + 124));
  v9 = a1;
  mlx::core::serialize<std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>)::{lambda(std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL> &)#1}::operator()<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>(&v9, v3, v4, v5, __p, &v7, v8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A2996F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::serialize_primitive<mlx::core::DynamicSlice>(uint64_t a1, uint64_t a2)
{
  std::pair<std::vector<int>,std::vector<int>>::pair[abi:ne200100]<true,0>(v3, a2 + 24, a2 + 48);
  v5 = a1;
  mlx::core::serialize<std::pair<std::vector<int>,std::vector<int>>>(mlx::core::io::FileWriter &,std::pair<std::vector<int>,std::vector<int>>)::{lambda(std::pair<std::vector<int>,std::vector<int>> &)#1}::operator()<std::vector<int>,std::vector<int>>(&v5, v3, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A299AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

void sub_25A299B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::serialize_primitive<mlx::core::DynamicSliceUpdate>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A299C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A299CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize_primitive<mlx::core::Equal>(uint64_t a1)
{
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 1);
  operator new();
}

void mlx::core::serialize_primitive<mlx::core::ExpandDims>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A29A0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::FFT>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  v7 = *(a2 + 48);
  __p = 0;
  v9 = 0;
  v10 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, v4, v5, (v5 - v4) >> 3);
  mlx::core::serialize<std::vector<unsigned long long>>(a1, &__p);
  v11 = v7;
  (*(*a1 + 32))(a1, &v11, 1);
  v11 = HIBYTE(v7);
  (*(*a1 + 32))(a1, &v11, 1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}