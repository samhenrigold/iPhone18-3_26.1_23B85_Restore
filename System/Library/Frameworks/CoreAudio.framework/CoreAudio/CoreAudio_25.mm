void sub_1DE3C5D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  *(v56 + 8) = v55;
  std::pair<std::vector<AMCP::Node_Description>,std::shared_ptr<AMCP::IO_Core::Device_Node_State>>::~pair(a10);
  STACK[0x530] = &a41;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&STACK[0x530]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  v58 = 0;
  while (1)
  {
    v59 = *(&a52 + v58);
    if (v59)
    {
      *(&a53 + v58) = v59;
      operator delete(v59);
    }

    v58 -= 24;
    if (v58 == -48)
    {
      for (i = 24; i != -24; i -= 24)
      {
        STACK[0x530] = (&a55 + i);
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&STACK[0x530]);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::vector<AMCP::Terminal_Description>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v15 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    if ((v15 + 1) > 0x276276276276276)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x13B13B13B13B13BLL)
    {
      v18 = 0x276276276276276;
    }

    else
    {
      v18 = v17;
    }

    v35 = a1;
    if (v18)
    {
      std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](v18);
    }

    v19 = 0;
    v20 = 0;
    v21 = 104 * v15;
    v32 = 0;
    v33 = v21;
    v34 = (104 * v15);
    v22 = *a2;
    v23 = a2[1];
    *(v21 + 32) = *(a2 + 4);
    *v21 = v22;
    *(v21 + 16) = v23;
    do
    {
      v24 = v19;
      v25 = (v21 + 24 * v20);
      v25[5] = 0;
      v25[6] = 0;
      v25 += 5;
      v25[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v25, *(a2 + 3 * v20 + 5), *(a2 + 3 * v20 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3 * v20 + 6) - *(a2 + 3 * v20 + 5)) >> 3));
      v19 = 1;
      v20 = 1;
    }

    while ((v24 & 1) == 0);
    v26 = *(a2 + 11);
    *(104 * v15 + 0x60) = *(a2 + 96);
    *(104 * v15 + 0x58) = v26;
    *&v34 = v34 + 104;
    v27 = a1[1];
    v28 = v33 + *a1 - v27;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>(a1, *a1, v27, v28);
    v29 = *a1;
    *a1 = v28;
    v30 = a1[2];
    v31 = v34;
    *(a1 + 1) = v34;
    *&v34 = v29;
    *(&v34 + 1) = v30;
    v32 = v29;
    v33 = v29;
    result = std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(&v32);
    v14 = v31;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = *a2;
    v9 = a2[1];
    *(v5 + 32) = *(a2 + 4);
    *v5 = v8;
    *(v5 + 16) = v9;
    do
    {
      v10 = v6;
      v11 = (v5 + 24 * v7);
      v11[5] = 0;
      v11[6] = 0;
      v11 += 5;
      v11[2] = 0;
      result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v11, *(a2 + 3 * v7 + 5), *(a2 + 3 * v7 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3 * v7 + 6) - *(a2 + 3 * v7 + 5)) >> 3));
      v6 = 1;
      v7 = 1;
    }

    while ((v10 & 1) == 0);
    v13 = *(a2 + 11);
    *(v5 + 96) = *(a2 + 96);
    *(v5 + 88) = v13;
    v14 = v5 + 104;
    a1[1] = v5 + 104;
  }

  a1[1] = v14;
  return result;
}

void std::vector<AMCP::Node_Description>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v1; std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(i))
    {
      i -= 120;
    }

    a1[1] = v1;
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

AMCP::Node_Description *std::vector<AMCP::Node_Description>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AMCP::Node_Description*>,std::__wrap_iter<AMCP::Node_Description*>>(AMCP::Node_Description *result, uint64_t a2, const AMCP::Node_Description *a3, AMCP::Node_Description *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = *(result + 1);
    v9 = *(result + 2);
    if ((0xEEEEEEEEEEEEEEEFLL * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xEEEEEEEEEEEEEEEFLL * ((v10 - a2) >> 3)) >= a5)
      {
        v17 = 120 * a5;
        std::vector<AMCP::Node_Description>::__move_range(result, a2, *(result + 1), a2 + 120 * a5);
        v16 = v6 + v17;
      }

      else
      {
        result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*,AMCP::Node_Description*,AMCP::Node_Description*>(result, (a3 + v15), a4, *(result + 1));
        v8[1] = result;
        if (v15 < 1)
        {
          return result;
        }

        std::vector<AMCP::Node_Description>::__move_range(v8, a2, v10, a2 + 120 * a5);
        v16 = v6 + v15;
      }

      return std::__copy_impl::operator()[abi:ne200100]<AMCP::Node_Description *,AMCP::Node_Description *,AMCP::Node_Description *>(v6, v16, a2);
    }

    else
    {
      v11 = *result;
      v12 = a5 - 0x1111111111111111 * ((v10 - *result) >> 3);
      if (v12 > 0x222222222222222)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x111111111111111)
      {
        v14 = 0x222222222222222;
      }

      else
      {
        v14 = v12;
      }

      v29 = v8;
      if (v14)
      {
        std::allocator<AMCP::Node_Description>::allocate_at_least[abi:ne200100](v14);
      }

      v18 = (8 * ((a2 - v11) >> 3));
      v26 = 0;
      v27 = v18;
      v28 = v18;
      v19 = 120 * a5;
      v20 = v18 + 120 * a5;
      do
      {
        AMCP::Node_Description::Node_Description(v18, v6);
        v18 = (v18 + 120);
        v6 = (v6 + 120);
        v19 -= 120;
      }

      while (v19);
      *&v28 = v20;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*>(v8, a2, v8[1], v20);
      v21 = *v8;
      v22 = v27;
      *&v28 = v20 + v8[1] - a2;
      v8[1] = a2;
      v23 = v22 + v21 - a2;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*>(v8, v21, a2, v23);
      v24 = *v8;
      *v8 = v23;
      v25 = v8[2];
      *(v8 + 1) = v28;
      *&v28 = v24;
      *(&v28 + 1) = v25;
      v26 = v24;
      v27 = v24;
      return std::__split_buffer<AMCP::Node_Description>::~__split_buffer(&v26);
    }
  }

  return result;
}

uint64_t std::pair<std::vector<AMCP::Node_Description>,std::shared_ptr<AMCP::IO_Core::Device_Node_State>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = a1;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

AMCP::Node_Description *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*,AMCP::Node_Description*,AMCP::Node_Description*>(int a1, AMCP::Node_Description *a2, AMCP::Node_Description *a3, AMCP::Node_Description *this)
{
  if (a2 == a3)
  {
    return this;
  }

  v5 = a2;
  v6 = 0;
  v7 = this;
  do
  {
    AMCP::Node_Description::Node_Description(v7, v5);
    v5 = (v5 + 120);
    v7 = (v7 + 120);
    v6 -= 120;
  }

  while (v5 != a3);
  return v7;
}

void std::vector<AMCP::Node_Description>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = a2 + v7 - a4;
  v9 = v7;
  if (v8 < a3)
  {
    v11 = a2 + v7 - a4;
    v9 = v7;
    do
    {
      std::construct_at[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description,AMCP::Node_Description*>(v9, v11);
      v11 += 120;
      v9 = v12 + 120;
    }

    while (v11 < a3);
  }

  *(a1 + 8) = v9;
  if (v7 != a4)
  {
    v13 = v8;
    v14 = v7;
    do
    {
      v15 = *(v13 - 120);
      v13 -= 120;
      *(v14 - 120) = v15;
      v14 -= 120;
      if (*(v14 + 31) < 0)
      {
        operator delete(*(v14 + 8));
      }

      v16 = *(v13 + 8);
      *(v14 + 24) = *(v13 + 24);
      *(v14 + 8) = v16;
      *(v8 - 89) = 0;
      *(v8 - 112) = 0;
      *(v7 - 88) = *(v8 - 88);
      v17 = (v7 - 80);
      if (*(v7 - 57) < 0)
      {
        operator delete(*v17);
      }

      v18 = 0;
      v19 = *(v8 - 80);
      *(v7 - 64) = *(v8 - 64);
      *v17 = v19;
      *(v8 - 57) = 0;
      *(v8 - 80) = 0;
      *(v7 - 56) = *(v8 - 56);
      do
      {
        v20 = v7 + v18;
        v21 = v8 + v18;
        std::vector<AMCP::Terminal_Description>::__vdeallocate((v7 + v18 - 48));
        *(v20 - 48) = *(v8 + v18 - 48);
        *(v20 - 32) = *(v8 + v18 - 32);
        *(v21 - 48) = 0;
        *(v21 - 40) = 0;
        *(v21 - 32) = 0;
        v18 += 24;
      }

      while (v18 != 48);
      v7 = v14;
      v8 = v13;
    }

    while (v13 != a2);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<AMCP::Node_Description *,AMCP::Node_Description *,AMCP::Node_Description *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      *a3 = *v4;
      std::string::operator=((a3 + 8), (v4 + 8));
      *(a3 + 32) = *(v4 + 32);
      std::string::operator=((a3 + 40), (v4 + 40));
      v6 = 0;
      v7 = 0;
      *(a3 + 64) = *(v4 + 64);
      do
      {
        v8 = v6;
        if (a3 != v4)
        {
          std::vector<AMCP::Terminal_Description>::__assign_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>((a3 + 72 + 24 * v7), *(v4 + 72 + 24 * v7), *(v4 + 72 + 24 * v7 + 8), 0x4EC4EC4EC4EC4EC5 * ((*(v4 + 72 + 24 * v7 + 8) - *(v4 + 72 + 24 * v7)) >> 3));
        }

        v6 = 1;
        v7 = 1;
      }

      while ((v8 & 1) == 0);
      v4 += 120;
      a3 += 120;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::allocator<AMCP::Node_Description>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<AMCP::Node_Description>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 120;
    std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(v3 - 120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(uint64_t a1)
{
  v2 = (a1 + 96);
  v3 = -48;
  do
  {
    v5 = v2;
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v5);
    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);

    operator delete(v4);
  }
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::construct_at[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description,AMCP::Node_Description*>(a4, v7);
      v7 += 120;
      a4 = v8 + 120;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(v6);
      v6 += 120;
    }

    while (v6 != a3);
  }
}

__n128 std::construct_at[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description,AMCP::Node_Description*>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  do
  {
    v5 = (a1 + v2);
    v6 = (a2 + v2);
    v5[9] = 0;
    v5[10] = 0;
    v5[11] = 0;
    result = *(a2 + v2 + 72);
    *(v5 + 9) = result;
    v5[11] = *(a2 + v2 + 88);
    v6[9] = 0;
    v6[10] = 0;
    v6[11] = 0;
    v2 += 24;
  }

  while (v2 != 48);
  return result;
}

void std::vector<AMCP::Terminal_Description>::__assign_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v7 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<AMCP::Terminal_Description>::__vdeallocate(a1);
    if (a4 <= 0x276276276276276)
    {
      v8 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v9 = 0x276276276276276;
      }

      else
      {
        v9 = v8;
      }

      std::vector<AMCP::Terminal_Description>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1] - v7;
  if (0x4EC4EC4EC4EC4EC5 * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<AMCP::Terminal_Description *,AMCP::Terminal_Description *,AMCP::Terminal_Description *>(a2, a3, v7);

    std::vector<AMCP::Terminal_Description>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<AMCP::Terminal_Description *,AMCP::Terminal_Description *,AMCP::Terminal_Description *>(a2, (a2 + v10), v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*,AMCP::Terminal_Description*,AMCP::Terminal_Description*>(a1, v11, a3, a1[1]);
  }
}

__int128 *std::__copy_impl::operator()[abi:ne200100]<AMCP::Terminal_Description *,AMCP::Terminal_Description *,AMCP::Terminal_Description *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = 0;
      v7 = 0;
      v8 = *v4;
      v9 = v4[1];
      *(a3 + 32) = *(v4 + 4);
      *a3 = v8;
      *(a3 + 16) = v9;
      do
      {
        v10 = v6;
        if (a3 != v4)
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a3 + 40 + 24 * v7), *(v4 + 3 * v7 + 5), *(v4 + 3 * v7 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 3 * v7 + 6) - *(v4 + 3 * v7 + 5)) >> 3));
        }

        v6 = 1;
        v7 = 1;
      }

      while ((v10 & 1) == 0);
      v11 = *(v4 + 11);
      *(a3 + 96) = *(v4 + 96);
      *(a3 + 88) = v11;
      v4 = (v4 + 104);
      a3 += 104;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::vector<AMCP::Terminal_Description>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<AMCP::Terminal_Description>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *this, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(this);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](this, v10);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = this->__end_;
    }

    while (end != begin)
    {
      v14 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v14 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = begin;
  }

  else
  {
    if (end == begin)
    {
      v13 = __str;
    }

    else
    {
      v13 = (__str + v12);
      do
      {
        std::string::operator=(begin++, v6++);
        v12 -= 24;
      }

      while (v12);
      end = this->__end_;
    }

    this->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(this, v13, a3, end);
  }
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

uint64_t std::vector<AMCP::Node_Description>::push_back[abi:ne200100](uint64_t *a1, const AMCP::Node_Description *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<AMCP::Node_Description>::__emplace_back_slow_path<AMCP::Node_Description const&>(a1, a2);
  }

  else
  {
    AMCP::Node_Description::Node_Description(a1[1], a2);
    result = v3 + 120;
    a1[1] = v3 + 120;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<AMCP::Node_Description>::__emplace_back_slow_path<AMCP::Node_Description const&>(uint64_t *a1, const AMCP::Node_Description *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v5 = 0x222222222222222;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::allocator<AMCP::Node_Description>::allocate_at_least[abi:ne200100](v5);
  }

  v12 = 0;
  v13 = 120 * v2;
  AMCP::Node_Description::Node_Description((120 * v2), a2);
  v14 = 120 * v2 + 120;
  v6 = a1[1];
  v7 = 120 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*>(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<AMCP::Node_Description>::~__split_buffer(&v12);
  return v11;
}

void sub_1DE3C76D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<AMCP::Node_Description>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

BOOL std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>>::__emplace_unique_key_args<AMCP::Terminal_Identifier,std::pair<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>(float *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::hash<AMCP::Terminal_Identifier>::operator()(a2);
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

  v16[0] = v12 + 2;
  v16[1] = v12 + 5;
  v16[2] = v12 + 6;
  v15[0] = a2;
  v15[1] = a2 + 24;
  v15[2] = a2 + 32;
  result = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v16, v15);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1DE3C7B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Stream_Connection::~Stream_Connection(OpaqueAudioConverter **this)
{
  std::unique_ptr<OpaqueAudioConverter,AMCP::IO_Core::Stream_Connection::AudioConverter_Deleter>::reset[abi:ne200100](this + 43, 0);
  v2 = this[42];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[35];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 264) == 1)
  {
    v4 = this[32];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v5 = this[27];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[25];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = this[18];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = this[13];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::pair<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>::~pair(uint64_t a1)
{
  AMCP::IO_Core::Stream_Connection::~Stream_Connection((a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

OpaqueAudioConverter *std::unique_ptr<OpaqueAudioConverter,AMCP::IO_Core::Stream_Connection::AudioConverter_Deleter>::reset[abi:ne200100](OpaqueAudioConverter **a1, OpaqueAudioConverter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return AudioConverterDispose(result);
  }

  return result;
}

__n128 AMCP::IO_Core::Stream_Connection::Stream_Connection(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v5;
  *(a1 + 96) = a2[6];
  a2[6] = 0uLL;
  v6 = a2[7];
  *(a1 + 128) = *(a2 + 16);
  *(a1 + 112) = v6;
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = 0uLL;
  v7 = *(a2 + 152);
  v8 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v8;
  *(a1 + 152) = v7;
  *(a1 + 192) = a2[12];
  a2[12] = 0uLL;
  *(a1 + 208) = a2[13];
  a2[13] = 0uLL;
  *(a1 + 224) = 0;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    v9 = a2[14];
    *(a1 + 240) = *(a2 + 30);
    *(a1 + 224) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a2 + 248) = 0uLL;
    *(a1 + 264) = 1;
  }

  *(a1 + 272) = a2[17];
  a2[17] = 0uLL;
  result = a2[18];
  v11 = a2[19];
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 288) = result;
  *(a1 + 304) = v11;
  v12 = *(a2 + 42);
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 336) = v12;
  *(a2 + 328) = 0uLL;
  v13 = *(a2 + 43);
  *(a2 + 43) = 0;
  *(a1 + 344) = v13;
  return result;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,AMCP::IO_Core::Stream_Connection>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,AMCP::IO_Core::Stream_Connection>,0>(uint64_t a1)
{
  AMCP::IO_Core::Stream_Connection::~Stream_Connection((a1 + 40));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<AMCP::Node_Description>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    std::allocator<AMCP::Node_Description>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = 0;
      v8 = *v6;
      v9 = v6[1];
      *(a4 + 32) = *(v6 + 4);
      *a4 = v8;
      *(a4 + 16) = v9;
      do
      {
        v10 = (a4 + v7);
        v11 = (v6 + v7);
        v10[5] = 0;
        v10[6] = 0;
        v10[7] = 0;
        *(v10 + 5) = *(v6 + v7 + 40);
        v10[7] = *(v6 + v7 + 56);
        v11[5] = 0;
        v11[6] = 0;
        v11[7] = 0;
        v7 += 24;
      }

      while (v7 != 48);
      v12 = *(v6 + 11);
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 88) = v12;
      v6 = (v6 + 104);
      a4 = v18 + 104;
      v18 += 104;
    }

    while (v6 != a3);
    v16 = 1;
    do
    {
      for (i = 64; i != 16; i -= 24)
      {
        v19 = (v5 + i);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
      }

      v5 = (v5 + 104);
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    v4 = (i - 40);
    v5 = -48;
    do
    {
      v7 = v4;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
      v4 -= 3;
      v5 += 24;
    }

    while (v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void HALS_IOUARegistrar::~HALS_IOUARegistrar(HALS_IOUARegistrar *this)
{
  HALS_IOUARegistrar::~HALS_IOUARegistrar(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596BBD0;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 46));
  std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100](this + 44, 0);
  std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100](this + 43, 0);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 8));
}

uint64_t std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_1,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_1>,void ()(applesauce::iokit::io_object_holder)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_IOUARegistrar10InitializeEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_1,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_1>,void ()(applesauce::iokit::io_object_holder)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, io_object_t *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 1);
  if (v2)
  {
    v4 = IOObjectRetain(v2);
    if (v4)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v30 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v4, v30, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v5 = *(v3 + 360);
    v34 = v2;
    a1 = IOObjectRetain(v2);
    v6 = a1;
    if (a1)
    {
      v31 = __cxa_allocate_exception(0x20uLL);
      v32 = std::system_category();
      MEMORY[0x1E12C10C0](v31, v6, v32, "Error on Retain");
      __cxa_throw(v31, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v7 = (v3 + 360);
    v8 = v2;
  }

  else
  {
    v8 = 0;
    v7 = (v3 + 360);
    v5 = *(v3 + 360);
    v34 = 0;
  }

  v9 = (v3 + 368);
  if (v5 != (v3 + 368))
  {
    while (1)
    {
      v10 = v5[4];
      if (v10)
      {
        break;
      }

LABEL_23:
      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v14 = *v17 == v5;
          v5 = v17;
        }

        while (!v14);
      }

      v5 = v17;
      if (v17 == v9)
      {
        v5 = v9;
        goto LABEL_30;
      }
    }

    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *v11;
    if (*v11)
    {
      a1 = IOObjectRetain(*v11);
      if (a1)
      {
        v26 = a1;
        v27 = __cxa_allocate_exception(0x20uLL);
        v28 = std::system_category();
        MEMORY[0x1E12C10C0](v27, v26, v28, "Error on Retain");
        __cxa_throw(v27, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v13)
    {
      v14 = v2 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = v2 == 0;
      if (!v13)
      {
        goto LABEL_22;
      }

      v15 = 0;
    }

    else
    {
      v15 = IOObjectIsEqualTo(v13, v8) != 0;
    }

    a1 = IOObjectRelease(v13);
LABEL_22:
    if (v15)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

LABEL_30:
  if (v2)
  {
    a1 = IOObjectRelease(v8);
  }

  if (v5 == v9)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *block = 136315394;
      *&block[4] = "HALS_IOUARegistrar.cpp";
      *&block[12] = 1024;
      *&block[14] = 128;
      _os_log_debug_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEBUG, "%32s:%-5d Unknown io service termination", block, 0x12u);
      if (!v2)
      {
        return;
      }
    }

    else if (!v2)
    {
      return;
    }

LABEL_46:
    IOObjectRelease(v2);
    IOObjectRelease(v2);
    return;
  }

  v18 = v5[4];
  v33[0] = 0;
  v33[1] = 0;
  HALS_System::GetInstance(block, 0, v33);
  HALS_System::DeviceManagerDestroyed(*block, v18);
  if (*&block[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&block[8]);
  }

  v19 = (*(*v18 + 72))(v18);
  *block = MEMORY[0x1E69E9820];
  *&block[8] = 0x40000000;
  *&block[16] = ___ZN15HALS_IOUADriver25RemoveAllDevicesAndNotifyEv_block_invoke;
  v36 = &__block_descriptor_tmp_3757;
  v37 = v18;
  v20 = atomic_load((v19 + 32));
  if (v20)
  {
    atomic_store(1u, (v19 + 33));
  }

  dispatch_sync(*v19, block);
  HALS_ObjectMap::ReleaseObject(v18, v21);
  std::__tree<HALS_IOUADriver *>::__remove_node_pointer(v7, v5);
  operator delete(v5);
  if (v2)
  {
    goto LABEL_46;
  }
}

void sub_1DE3C8530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, io_object_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    __cxa_free_exception(v16);
    applesauce::iokit::io_object_holder::~io_object_holder(&a10);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    if (!a9)
    {
      JUMPOUT(0x1DE3C83B8);
    }

    JUMPOUT(0x1DE3C83B0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<HALS_IOUADriver *>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
}

io_object_t *HALS_IOUARegistrar::_HandleServiceTerminated(applesauce::iokit::io_object_holder)::$_0::~$_0(io_object_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_1,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_1>,void ()(applesauce::iokit::io_object_holder)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596BC80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_0,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_IOUARegistrar10InitializeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_0,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::operator()(uint64_t a1, io_object_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  if (v2)
  {
    v3 = IOObjectRetain(v2);
    if (v3)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v5 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v3, v5, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  operator new();
}

void sub_1DE3C9130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, io_object_t a12, io_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, io_object_t a29)
{
  if (a2)
  {
    __cxa_free_exception(v32);
    applesauce::iokit::io_object_holder::~io_object_holder(&a29);
    std::__shared_weak_count::~__shared_weak_count(v31);
    operator delete(v34);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v29 + 50));
    v36 = v29[49];
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    HALS_IOUAObject::~HALS_IOUAObject(v30, v35);
    HALS_DeviceManager::~HALS_DeviceManager(v29);
    applesauce::iokit::io_object_holder::~io_object_holder(&a13);
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }

    MEMORY[0x1E12C1730](v29, 0x10E3C4037FBDF48);
    applesauce::iokit::io_object_holder::~io_object_holder(&a12);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    if (!a11)
    {
      JUMPOUT(0x1DE3C9010);
    }

    JUMPOUT(0x1DE3C9008);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOUARegistrar::_HandleServiceMatch(applesauce::iokit::io_object_holder)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 16);
    (*(***(a1 + 8) + 8))(**(a1 + 8));
    v3 = *(v2 + 368);
    if (v3)
    {
      v4 = **(a1 + 8);
      v5 = (v2 + 368);
      do
      {
        v6 = v3[4];
        v7 = v6 >= v4;
        v8 = v6 < v4;
        if (v7)
        {
          v5 = v3;
        }

        v3 = v3[v8];
      }

      while (v3);
      if (v5 != (v2 + 368) && v4 >= v5[4])
      {
        std::__tree<HALS_IOUADriver *>::__remove_node_pointer((v2 + 360), v5);
        operator delete(v5);
      }
    }
  }

  return a1;
}

uint64_t std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_0,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596BC00;
  a2[1] = v2;
  return result;
}

void ADS::BooleanControl::AbortConfigChange(ADS::BooleanControl *this, unint64_t a2, ADS::BaseObject *a3)
{
  if (*a3 == 1650685548)
  {
    (*(*a3 + 8))(a3);
  }

  else
  {
    ADS::BaseObject::AbortConfigChange(this, a2, a3);
  }
}

void ADS::BooleanControl::PerformConfigChange(ADS::BooleanControl *this, unint64_t a2, char *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a3 + 3) == 1650685548)
  {
    v4 = this + 120;
    v5 = (*(*(this + 15) + 16))(this + 120, a2);
    std::__function::__value_func<int ()(void)>::__value_func[abi:ne200100](v13, (a3 + 24));
    if (v14)
    {
      v6 = (*(*v14 + 48))(v14);
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v8 = "ADS_BooleanControl.cpp";
          v9 = 1024;
          v10 = 193;
          v11 = 1024;
          v12 = v6;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::BooleanControl::PerformConfigChange: Error %d in 'bcvl' config change", buf, 0x18u);
        }
      }
    }

    (*(*a3 + 8))(a3);
    std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](v13);
    if (v5)
    {
      (*(*v4 + 24))(v4);
    }
  }

  else
  {

    ADS::BaseObject::PerformConfigChange(this, a2, a3);
  }
}

void sub_1DE3C9718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ADS::BooleanControl::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, _DWORD *a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = a7;
  v25 = *MEMORY[0x1E69E9840];
  if (*a4 == 1650685548)
  {
    v14 = a1 + 120;
    v15 = (*(*(a1 + 120) + 16))(a1 + 120, a2, a3);
    if (v12 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "ADS_BooleanControl.cpp";
        v23 = 1024;
        v24 = 133;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::BooleanControl::SetPropertyData: not enough space in given data to set kAudioBooleanControlPropertyValue", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    v16 = *a8;
    if (*(a1 + 12) == 1702259059)
    {
      v17 = *(a1 + 20);
      if (ADS::ObjectManager::CopyObjectByObjectID(v17))
      {
        v20[0] = &unk_1F596BD80;
        v20[1] = a1;
        v20[2] = v16 | (v17 << 32);
        v20[3] = v20;
        operator new();
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "ADS_BooleanControl.cpp";
        v23 = 1024;
        v24 = 141;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::BooleanControl::SetPropertyData: unknown device", buf, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = off_1F5991DD8;
      v19[2] = 560947818;
    }

    *(a1 + 208) = v16;
    if (v15)
    {
      (*(*v14 + 24))(v14);
    }
  }

  else
  {

    ADS::BaseObject::SetPropertyData(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_1DE3C9B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ADS::Simulator::Host_RequestDeviceConfigurationChange(uint64_t result, uint64_t a2)
{
  if (ADS::Simulator::sHost)
  {
    v3 = result;
    v6 = *(ADS::Simulator::sHost + 32);
    pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
    v4 = ADS::Simulator::sHost;

    return v6(v4, v3, 0, a2);
  }

  else if (a2)
  {
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

void ADS::ChangeInfoData<unsigned int>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<unsigned int>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::ChangeInfo::~ChangeInfo(ADS::ChangeInfo *this)
{
  *this = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](this + 24);
}

uint64_t std::__function::__func<ADS::BooleanControl::SetPropertyData(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,unsigned int &,std::vector<AudioObjectPropertyAddress> &,ADS::SettabilityPolicy)::$_0,std::allocator<ADS::BooleanControl::SetPropertyData(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,unsigned int &,std::vector<AudioObjectPropertyAddress> &,ADS::SettabilityPolicy)::$_0>,int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN3ADS14BooleanControl15SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ADS::BooleanControl::SetPropertyData(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,unsigned int &,std::vector<AudioObjectPropertyAddress> &,ADS::SettabilityPolicy)::$_0,std::allocator<ADS::BooleanControl::SetPropertyData(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,unsigned int &,std::vector<AudioObjectPropertyAddress> &,ADS::SettabilityPolicy)::$_0>,int ()(void)>::operator()(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ADS::ObjectManager::CopyObjectByObjectID(*(a1 + 20));
  v5 = v3;
  v6 = *(a1 + 16);
  *(v2 + 208) = v6;
  if (v3 && v6 != *(v3 + 928))
  {
    *(v3 + 928) = v6 != 0;
    if (v6)
    {
      v7 = *(v3 + 456);
      if (*(v3 + 448) != v7)
      {
        v8 = ADS::ObjectManager::CopyObjectByObjectID(*(v7 - 4));
        LODWORD(v27[0]) = ADS::ObjectManager::GetNextObjectID(v8);
        std::set<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::set[abi:ne200100](&v26, (v8 + 168), v9);
        *v28 = *(v8 + 120);
        *&v28[12] = *(v8 + 132);
        operator new();
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      HIDWORD(v27[0]) = 136315394;
      v27[1] = "ADS_Device.cpp";
      LOWORD(v27[2]) = 1024;
      *(&v27[2] + 2) = 3863;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  ADS::Device::EnableReferenceStream: no output stream to reference";
LABEL_31:
      _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, v24, v27 + 4, 0x12u);
      goto LABEL_32;
    }

    v10 = *(v3 + 424);
    v11 = *(v3 + 432);
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      while (1)
      {
        v13 = *v10;
        v14 = ADS::ObjectManager::CopyObjectByObjectID(v13);
        *v28 = 0;
        LODWORD(v26) = 0;
        strcpy(v27 + 4, "spatbolg");
        BYTE5(v27[1]) = 0;
        HIWORD(v27[1]) = 0;
        (*(*v14 + 56))(v14, v13, 0, v27 + 4, 0, 0, 4, &v26, v28);
        v16 = *v28;
        if (*v28)
        {
          (*(*v14 + 8))(v14);
          v12 = 1;
        }

        ADS::ObjectManager::ReleaseObject(v14, v15);
        if (v16)
        {
          break;
        }

        if (++v10 == v11)
        {
          goto LABEL_22;
        }
      }

      if (v10 == v11)
      {
LABEL_22:
        v10 = v11;
        goto LABEL_23;
      }

      for (i = v10 + 1; i != v11; ++i)
      {
        v18 = *i;
        v19 = ADS::ObjectManager::CopyObjectByObjectID(v18);
        *v28 = 0;
        LODWORD(v26) = 0;
        strcpy(v27 + 4, "spatbolg");
        BYTE5(v27[1]) = 0;
        HIWORD(v27[1]) = 0;
        (*(*v19 + 56))(v19, v18, 0, v27 + 4, 0, 0, 4, &v26, v28);
        v21 = *v28;
        if (*v28)
        {
          (*(*v19 + 8))(v19);
          v12 = 1;
        }

        ADS::ObjectManager::ReleaseObject(v19, v20);
        if (!v21)
        {
          *v10++ = *i;
        }
      }
    }

LABEL_23:
    if (v10 != *(v5 + 54))
    {
      v4 = *(v5 + 54);
      *(v5 + 54) = v10;
    }

    if ((v12 & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      HIDWORD(v27[0]) = 136315394;
      v27[1] = "ADS_Device.cpp";
      LOWORD(v27[2]) = 1024;
      *(&v27[2] + 2) = 3883;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  ADS::Device::EnableReferenceStream: reference stream is missing";
      goto LABEL_31;
    }
  }

  ADS::ObjectManager::ReleaseObject(v5, v4);
  return 0;
}

void sub_1DE3CA310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 std::__function::__func<ADS::BooleanControl::SetPropertyData(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,unsigned int &,std::vector<AudioObjectPropertyAddress> &,ADS::SettabilityPolicy)::$_0,std::allocator<ADS::BooleanControl::SetPropertyData(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,unsigned int &,std::vector<AudioObjectPropertyAddress> &,ADS::SettabilityPolicy)::$_0>,int ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596BD80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ADS::BooleanControl::GetPropertyData(ADS::BooleanControl *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int *a8, char *a9)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4->mSelector == 1650685548)
  {
    if (a7 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "ADS_BooleanControl.cpp";
        v15 = 1024;
        v16 = 111;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::BooleanControl::GetPropertyData: not enough space for the return value of kAudioBooleanControlPropertyValue", &v13, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    v10 = (this + 120);
    v11 = (*(*(this + 15) + 16))(this + 120, a2, a3);
    *a9 = v10[22];
    *a8 = 4;
    if (v11)
    {
      (*(*v10 + 24))(v10);
    }
  }

  else
  {

    ADS::Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void sub_1DE3CA6D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ADS::BooleanControl::GetPropertyDataSize(ADS::BooleanControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  mSelector = a4->mSelector;
  if (a4->mSelector == 1650685548 || mSelector == 1667591277 || mSelector == 1668506480)
  {
    return 4;
  }

  else
  {
    return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }
}

uint64_t ADS::BooleanControl::IsPropertySettable(ADS::BooleanControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector == 1650685548)
  {
    return 1;
  }

  if (mSelector == 1667591277 || mSelector == 1668506480)
  {
    return 0;
  }

  else
  {
    return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
  }
}

void ADS::BooleanControl::~BooleanControl(ADS::BooleanControl *this)
{
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));
  ADS::BaseObject::~BaseObject(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

uint64_t HALS_PDPDevice::_CopyControlByDescription(HALS_PDPDevice *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v5 = std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::find<std::tuple<unsigned int,unsigned int,unsigned int>>(this + 1456, v8);
  if ((this + 1464) == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[10];
  }

  return HALS_ObjectMap::CopyObjectByObjectID(v6);
}

uint64_t std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::find<std::tuple<unsigned int,unsigned int,unsigned int>>(uint64_t a1, unsigned int *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,0ul,1ul,2ul>((v3 + 28), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,0ul,1ul,2ul>(a2, (v5 + 28)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,0ul,1ul,2ul>(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  if (*a1 < *a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6 ? 0xFFFFFFFFLL : 1;
    if (v5 == v6)
    {
      v7 = a1[2];
      v8 = a2[2];
      v9 = v7 == v8;
      if (v7 < v8)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

HALS_ObjectMap *HALS_PDPDevice::_CopyControlByIndex(HALS_PDPDevice *this, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_PDPDevice::_CopyControlList(this, &v10);
  v4 = a2;
  v5 = v10;
  v6 = v11;
  if (v4 >= v11 - v10)
  {
    v7 = 0;
  }

  else
  {
    v7 = v10[v4];
    HALS_ObjectMap::RetainObject(v7, v3);
  }

  if (v5 != v6)
  {
    v8 = v5;
    do
    {
      HALS_ObjectMap::ReleaseObject(*v8++, v3);
    }

    while (v8 != v6);
  }

  if (v5)
  {
    operator delete(v5);
  }

  return v7;
}

void sub_1DE3CAA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PDPDevice::_CopyControlList(uint64_t result, HALS_ObjectMap ***a2)
{
  a2[1] = *a2;
  v2 = *(result + 1456);
  v3 = (result + 1464);
  if (v2 != (result + 1464))
  {
    do
    {
      v5 = HALS_ObjectMap::CopyObjectByObjectID(*(v2 + 10));
      v7 = v5;
      if (v5)
      {
        HALS_ObjectMap::RetainObject(v5, v6);
        v9 = a2[1];
        v8 = a2[2];
        if (v9 >= v8)
        {
          v11 = *a2;
          v12 = v9 - *a2;
          v13 = v12 >> 3;
          v14 = (v12 >> 3) + 1;
          if (v14 >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v15 = v8 - v11;
          if (v15 >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (!(v16 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v13) = v7;
          v10 = (8 * v13 + 8);
          memcpy(0, v11, v12);
          *a2 = 0;
          a2[1] = v10;
          a2[2] = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v9 = v7;
          v10 = v9 + 1;
        }

        a2[1] = v10;
      }

      HALS_ObjectMap::ReleaseObject(v7, v6);
      v17 = v2[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v2[2];
          v19 = *v18 == v2;
          v2 = v18;
        }

        while (!v19);
      }

      v2 = v18;
    }

    while (v18 != v3);
  }
}

unint64_t HALS_PDPDevice::_GetNumberControls(HALS_PDPDevice *this)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  HALS_PDPDevice::_CopyControlList(this, &v6);
  v2 = v6;
  v3 = v7;
  if (v6 != v7)
  {
    v4 = v6;
    do
    {
      HALS_ObjectMap::ReleaseObject(*v4++, v1);
    }

    while (v4 != v3);
  }

  if (v2)
  {
    operator delete(v2);
  }

  return (v3 - v2) >> 3;
}

void sub_1DE3CAC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PDPDevice::_CopyControls(uint64_t this, HALS_Device::BasicControlList *a2)
{
  v2 = *(this + 1456);
  v3 = (this + 1464);
  if (v2 != (this + 1464))
  {
    do
    {
      v5 = HALS_ObjectMap::CopyObjectByObjectID(*(v2 + 10));
      v7 = v5;
      if (v5)
      {
        HALS_ObjectMap::RetainObject(v5, v6);
        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8)
        {
          v11 = (v9 - *a2) >> 3;
          if ((v11 + 1) >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v12 = v8 - *a2;
          v13 = v12 >> 2;
          if (v12 >> 2 <= (v11 + 1))
          {
            v13 = v11 + 1;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v14);
          }

          *(8 * v11) = v7;
          v10 = 8 * v11 + 8;
          v15 = *(a2 + 1) - *a2;
          v16 = (8 * v11 - v15);
          memcpy(v16, *a2, v15);
          v17 = *a2;
          *a2 = v16;
          *(a2 + 1) = v10;
          *(a2 + 2) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v9 = v7;
          v10 = (v9 + 1);
        }

        *(a2 + 1) = v10;
      }

      HALS_ObjectMap::ReleaseObject(v7, v6);
      v18 = v2[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v2[2];
          v20 = *v19 == v2;
          v2 = v19;
        }

        while (!v20);
      }

      v2 = v19;
    }

    while (v19 != v3);
  }
}

void HALS_PDPDevice::_CopyStreamList(uint64_t a1, int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  *&v25.mSelector = 0x6F75747073746D23;
  v25.mElement = 0;
  if (a2)
  {
    v25.mScope = 1768845428;
  }

  PropertyDataSize = HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(*(*(a1 + 1488) + 64), *(a1 + 16), &v25, 0, 0);
  v24 = PropertyDataSize;
  if (PropertyDataSize >= 4)
  {
    v21 = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&v22, PropertyDataSize >> 2, &v21);
    HALS_PDPUCPlugIn::ObjectGetPropertyData(*(*(a1 + 1488) + 72), *(a1 + 16), &v25, 0, 0, &v24, v22);
    v6 = v22;
    v7 = v23;
    if (v22 != v23)
    {
      do
      {
        v8 = HALS_ObjectMap::CopyObjectByObjectID(*v6);
        v9 = v8;
        if (v8)
        {
          v11 = *(a3 + 8);
          v10 = *(a3 + 16);
          if (v11 >= v10)
          {
            v13 = (v11 - *a3) >> 3;
            if ((v13 + 1) >> 61)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v14 = v10 - *a3;
            v15 = v14 >> 2;
            if (v14 >> 2 <= (v13 + 1))
            {
              v15 = v13 + 1;
            }

            if (v14 >= 0x7FFFFFFFFFFFFFF8)
            {
              v16 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v16 = v15;
            }

            if (v16)
            {
              std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v16);
            }

            v17 = (8 * v13);
            *v17 = v9;
            v12 = 8 * v13 + 8;
            v18 = *(a3 + 8) - *a3;
            v19 = v17 - v18;
            memcpy(v17 - v18, *a3, v18);
            v20 = *a3;
            *a3 = v19;
            *(a3 + 8) = v12;
            *(a3 + 16) = 0;
            if (v20)
            {
              operator delete(v20);
            }
          }

          else
          {
            *v11 = v8;
            v12 = (v11 + 1);
          }

          *(a3 + 8) = v12;
        }

        ++v6;
      }

      while (v6 != v7);
      v6 = v22;
    }

    if (v6)
    {
      v23 = v6;
      operator delete(v6);
    }
  }
}

void sub_1DE3CAFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PDPDevice::_GetTotalNumberChannels(HALS_PDPDevice *this, uint64_t a2)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  (*(*this + 568))(this, a2, &__p);
  v2 = __p;
  v3 = v11;
  if (__p == v11)
  {
    v4 = 0;
    if (!__p)
    {
      return v4;
    }

    goto LABEL_5;
  }

  LODWORD(v4) = 0;
  do
  {
    v5 = *v2;
    v6 = *(*v2 + 4);
    v15 = 0x676C6F6270667420;
    v16 = 0;
    (*(*v5 + 120))(v5, v6, &v15, 40, &v16 + 4, v13, 0, 0, 0);
    v7 = v14;
    HALS_ObjectMap::ReleaseObject(*v2, v8);
    v4 = (v7 + v4);
    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_5:
    v11 = v2;
    operator delete(v2);
  }

  return v4;
}

void sub_1DE3CB0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

HALS_ObjectMap *HALS_PDPDevice::_CopyStreamByIndex(HALS_PDPDevice *this, uint64_t a2, unsigned int a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  (*(*this + 568))(this, a2, &v10);
  v5 = a3;
  v6 = v10;
  v7 = v11;
  if (a3 >= (v11 - v10))
  {
    v8 = 0;
  }

  else
  {
    v8 = v10[a3];
    HALS_ObjectMap::RetainObject(v10[v5], v4);
    v6 = v10;
    v7 = v11;
  }

  if (v6 != v7)
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v6++, v4);
    }

    while (v6 != v7);
    v6 = v10;
  }

  if (v6)
  {
    v11 = v6;
    operator delete(v6);
  }

  return v8;
}

void sub_1DE3CB1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t HALS_PDPDevice::_GetNumberStreams(HALS_PDPDevice *this, uint64_t a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 568))(this, a2, &__p);
  v4 = __p;
  v3 = v9;
  if (__p == v9)
  {
    v6 = __p;
    if (!__p)
    {
      return (v3 - v4) >> 3;
    }

    goto LABEL_5;
  }

  v5 = __p;
  do
  {
    HALS_ObjectMap::ReleaseObject(*v5++, v2);
  }

  while (v5 != v3);
  v6 = __p;
  if (__p)
  {
LABEL_5:
    v9 = v6;
    operator delete(v6);
  }

  return (v3 - v4) >> 3;
}

void sub_1DE3CB2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PDPDevice::OwnedObjectsPublishedAndDied(HALS_PDPDevice *this, unsigned int a2, const unsigned int *a3, unsigned int a4, const unsigned int *a5)
{
  v32 = 0;
  v33 = 0;
  v31 = &v32;
  if (a2)
  {
    for (i = a2; i; --i)
    {
      v10 = HALS_ObjectMap::CopyObjectByObjectID(*a3);
      v12 = v10;
      if (v10)
      {
        v13 = *(v10 + 20);
        IsSubClass = HALB_Info::IsSubClass(v13, 1633907820);
        v15 = *(v12 + 24);
        if (v13 == v15 || IsSubClass)
        {
          if (v13 != v15)
          {
            IsSubClass = 1;
          }

          if (!IsSubClass)
          {
            goto LABEL_12;
          }
        }

        else if (!HALB_Info::IsSubClass(v15, 1633907820))
        {
          goto LABEL_12;
        }

        LODWORD(v29) = v13;
        *(&v29 + 4) = *(v12 + 48);
        HIDWORD(v29) = *a3;
        std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::__emplace_unique_key_args<std::tuple<unsigned int,unsigned int,unsigned int>,std::pair<std::tuple<unsigned int,unsigned int,unsigned int> const,unsigned int>>(&v31, &v29, &v29);
      }

LABEL_12:
      HALS_ObjectMap::ReleaseObject(v12, v11);
      ++a3;
    }
  }

  *(&v29 + 1) = 0;
  v30 = 0;
  *&v29 = &v29 + 8;
  if (!a4)
  {
    v23 = 1;
    goto LABEL_27;
  }

  v16 = a4;
  do
  {
    v17 = HALS_ObjectMap::CopyObjectByObjectID(*a5);
    v19 = v17;
    if (!v17)
    {
      goto LABEL_24;
    }

    v20 = *(v17 + 20);
    v21 = HALB_Info::IsSubClass(v20, 1633907820);
    v22 = *(v19 + 24);
    if (v20 == v22 || v21)
    {
      if (v20 != v22)
      {
        v21 = 1;
      }

      if (v21)
      {
LABEL_23:
        LODWORD(v28) = v20;
        *(&v28 + 4) = *(v19 + 48);
        HIDWORD(v28) = *a5;
        std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::__emplace_unique_key_args<std::tuple<unsigned int,unsigned int,unsigned int>,std::pair<std::tuple<unsigned int,unsigned int,unsigned int> const,unsigned int>>(&v29, &v28, &v28);
      }
    }

    else if (HALB_Info::IsSubClass(v22, 1633907820))
    {
      goto LABEL_23;
    }

LABEL_24:
    HALS_ObjectMap::ReleaseObject(v19, v18);
    ++a5;
    --v16;
  }

  while (v16);
  v23 = v30 == 0;
LABEL_27:
  if (v33 || !v23)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1174405120;
    v25[2] = ___ZN14HALS_PDPDevice28OwnedObjectsPublishedAndDiedEjPKjjS1__block_invoke;
    v25[3] = &__block_descriptor_tmp_9_4691;
    v25[4] = this;
    std::map<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>::map[abi:ne200100](v26, &v29);
    std::map<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>::map[abi:ne200100](v27, &v31);
    v24 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v24, v25);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v27[1]);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v26[1]);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(&v29 + 1));
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v32);
}

void sub_1DE3CB564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a16);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a24);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v24 - 80));
  _Unwind_Resume(a1);
}

unsigned int *std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::__emplace_unique_key_args<std::tuple<unsigned int,unsigned int,unsigned int>,std::pair<std::tuple<unsigned int,unsigned int,unsigned int> const,unsigned int>>(uint64_t **a1, unsigned int *a2, _OWORD *a3)
{
  result = std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::__find_equal<std::tuple<unsigned int,unsigned int,unsigned int>>(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void ___ZN14HALS_PDPDevice28OwnedObjectsPublishedAndDiedEjPKjjS1__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = (a1 + 6);
  if (v3 != (a1 + 6))
  {
    v5 = (v2 + 1464);
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = (v2 + 1464);
        v8 = *v5;
        do
        {
          v9 = std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,0ul,1ul,2ul>(v8 + 7, v3 + 7);
          if ((v9 & 0x80u) == 0)
          {
            v7 = v8;
          }

          v8 = *(v8 + ((v9 >> 4) & 8));
        }

        while (v8);
        if (v7 != v5 && (std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,0ul,1ul,2ul>(v3 + 7, v7 + 7) & 0x80) == 0)
        {
          v10 = v7[1];
          v11 = v7;
          if (v10)
          {
            do
            {
              v12 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              v12 = v11[2];
              v13 = *v12 == v11;
              v11 = v12;
            }

            while (!v13);
          }

          if (*(v2 + 1456) == v7)
          {
            *(v2 + 1456) = v12;
          }

          --*(v2 + 1472);
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, v7);
          operator delete(v7);
        }
      }

      v14 = *(v3 + 1);
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
          v15 = *(v3 + 2);
          v13 = *v15 == v3;
          v3 = v15;
        }

        while (!v13);
      }

      v3 = v15;
    }

    while (v15 != v4);
  }

  v16 = a1[8];
  if (v16 != (a1 + 9))
  {
    do
    {
      if (!*std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::__find_equal<std::tuple<unsigned int,unsigned int,unsigned int>>(v2 + 1456, &v19, v16 + 7))
      {
        operator new();
      }

      v17 = *(v16 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v16 + 2);
          v13 = *v18 == v16;
          v16 = v18;
        }

        while (!v13);
      }

      v16 = v18;
    }

    while (v18 != (a1 + 9));
  }
}

void *std::map<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = a1[1];
      v7 = v3;
      if (*a1 == v3)
      {
        goto LABEL_9;
      }

      v8 = a1[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = *(v8 + 8);
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = *(v9 + 2);
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if ((std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,0ul,1ul,2ul>(v7 + 7, v5 + 7) & 0x80) != 0)
      {
LABEL_9:
        if (!v6)
        {
          v15 = v3;
LABEL_14:
          operator new();
        }

        v15 = v7;
        v11 = v7 + 2;
      }

      else
      {
        v11 = std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::__find_equal<std::tuple<unsigned int,unsigned int,unsigned int>>(a1, &v15, v5 + 7);
      }

      if (!*v11)
      {
        goto LABEL_14;
      }

      v12 = *(v5 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v5 + 2);
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  return a1;
}

unsigned int *std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::__find_equal<std::tuple<unsigned int,unsigned int,unsigned int>>(uint64_t a1, unsigned int **a2, unsigned int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,0ul,1ul,2ul>(a3, v4 + 7) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::__tuple_compare_three_way[abi:ne200100]<unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,0ul,1ul,2ul>(v7 + 7, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 2;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void __destroy_helper_block_e8_40c82_ZTSNSt3__13mapINS_5tupleIJjjjEEEjNS_4lessIS2_EENS_9allocatorINS_4pairIKS2_jEEEEEE64c82_ZTSNSt3__13mapINS_5tupleIJjjjEEEjNS_4lessIS2_EENS_9allocatorINS_4pairIKS2_jEEEEEE(uint64_t a1)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(a1 + 72));
  v2 = *(a1 + 48);

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v2);
}

uint64_t HALS_PDPDevice::SetPropertyData(HALS_PDPDevice *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v26 = 2003332927;
LABEL_21:
    exception[2] = v26;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v16))
  {
    v18 = atomic_load(this + 40);
    if (a8)
    {
      v19 = *(a8 + 60);
    }

    else
    {
      v19 = getpid();
    }

    if (v18 != -1 && v18 != v19)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v26 = 560492391;
      goto LABEL_21;
    }

    mSelector = a3->mSelector;
  }

  v21 = *(this + 186);
  if (mSelector == 1869180523)
  {
    v22 = 0x676C6F626F696E6BLL;
    goto LABEL_16;
  }

  if (mSelector == 1919512167)
  {
    v22 = 0x676C6F626673697ALL;
LABEL_16:
    *&v27.mSelector = v22;
    v27.mElement = 0;
    return HALS_PDPUCPlugIn::ObjectSetPropertyData(*(v21 + 80), a2, &v27, 0, 0, a4, a5);
  }

  v24 = *(v21 + 80);

  return HALS_PDPUCPlugIn::ObjectSetPropertyData(v24, a2, a3, a6, a7, a4, a5);
}

void HALS_PDPDevice::GetPropertyData(HALS_PDPDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, uint64_t a7, void *a8, AudioObjectPropertyAddress *a9)
{
  v41 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0 && (a3->mSelector == 1751737454 || a3->mSelector == 1751412337))
  {
    *a5 = a4;
    return;
  }

  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v34 = 2003332927;
    goto LABEL_41;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    if (mSelector <= 1919512166)
    {
      if (mSelector == 1869638759)
      {
        goto LABEL_24;
      }

      v21 = 1870098020;
      goto LABEL_23;
    }

    if (mSelector == 1919512167)
    {
      *a5 = a4;
      v19 = *(this + 186);
      v20 = 0x676C6F626673697ALL;
      goto LABEL_28;
    }

    if (mSelector != 1936482681)
    {
      v21 = 1937007734;
      goto LABEL_23;
    }

    mScope = a3->mScope;
    if (mScope == 1768845428)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2 * (mScope != 1869968496);
    }

    NumberStreams = HALS_IODevice::GetNumberStreams(this, v28 != 0);
    v30 = (16 * NumberStreams) | 8;
    if (v30 <= a4)
    {
      *a5 = v30;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 0x40000000;
      v35[2] = ___ZNK14HALS_PDPDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v35[3] = &__block_descriptor_tmp_4696;
      v35[4] = this;
      v35[5] = a6;
      v36 = NumberStreams;
      v37 = v28;
      v31 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v31, v35);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "HALS_PDPDevice.cpp";
      v39 = 1024;
      v40 = 401;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPDevice::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamConfiguration", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v34 = 561211770;
LABEL_41:
    exception[2] = v34;
  }

  if (mSelector > 1768907635)
  {
    if (mSelector != 1768907636)
    {
      if (mSelector == 1851878764)
      {
        *a5 = a4;
        v26 = *(this + 186);
        strcpy(&buf, "manlbolg");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        v22 = *(v26 + 72);
        v23 = a2;
        v24 = a7;
        v25 = a8;
        goto LABEL_30;
      }

      if (mSelector == 1869180523)
      {
        *a5 = a4;
        v19 = *(this + 186);
        v20 = 0x676C6F626F696E6BLL;
LABEL_28:
        *&buf.mSelector = v20;
        buf.mElement = 0;
        v22 = *(v19 + 72);
        v23 = a2;
        v24 = 0;
        v25 = 0;
LABEL_30:
        HALS_PDPUCPlugIn::ObjectGetPropertyData(v22, v23, &buf, v24, v25, a5, a6);
        return;
      }

      goto LABEL_37;
    }

    goto LABEL_24;
  }

  if (mSelector == 1650682995)
  {
    goto LABEL_24;
  }

  v21 = 1668047219;
LABEL_23:
  if (mSelector != v21)
  {
LABEL_37:
    *a5 = a4;
    v32 = *(*(this + 186) + 72);

    HALS_PDPUCPlugIn::ObjectGetPropertyData(v32, a2, a3, a7, a8, a5, a6);
    return;
  }

LABEL_24:

  HALS_Device::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ___ZNK14HALS_PDPDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  **(result + 40) = v1;
  if (v1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(*v2 + 400))(v2, *(result + 52) != 0, v5);
      v8 = v6;
      if (v6)
      {
        HALS_Stream::GetCurrentVirtualFormat(v6, &v11);
        v9 = *(result + 40) + v4;
        *(v9 + 8) = v11.mChannelsPerFrame;
        *(v9 + 16) = 0;
      }

      else
      {
        v10 = *(result + 40) + v4;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
      ++v5;
      v4 += 16;
    }

    while (v5 < *(result + 48));
  }
}

void sub_1DE3CC298(void *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v2, a2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3CC280);
}

uint64_t HALS_PDPDevice::GetPropertyDataSize(HALS_PDPDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, _DWORD *a5, AudioObjectPropertyAddress *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    if (mSelector > 1919512166)
    {
      if (mSelector == 1919512167)
      {
        v14 = *(this + 186);
        v15 = 0x676C6F626673697ALL;
        goto LABEL_26;
      }

      if (mSelector == 1936482681)
      {
        return (16 * HALS_IODevice::GetNumberStreams(this, a3->mScope == 1768845428)) | 8;
      }

      if (mSelector != 1937007734)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

    v18 = mSelector == 1869638759;
    v19 = 1870098020;
  }

  else
  {
    if (mSelector > 1768907635)
    {
      if (mSelector != 1768907636)
      {
        if (mSelector == 1851878764)
        {
          v25 = *(this + 186);
          *&v27.mSelector = 0x676C6F626C6E616DLL;
          v27.mElement = 0;
          v21 = *(v25 + 64);
          v22 = a2;
          v23 = a4;
          v24 = a5;
          return HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(v21, v22, &v27, v23, v24);
        }

        if (mSelector == 1869180523)
        {
          v14 = *(this + 186);
          v15 = 0x676C6F626F696E6BLL;
LABEL_26:
          *&v27.mSelector = v15;
          v27.mElement = 0;
          v21 = *(v14 + 64);
          v22 = a2;
          v23 = 0;
          v24 = 0;
          return HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(v21, v22, &v27, v23, v24);
        }

        goto LABEL_12;
      }

      goto LABEL_22;
    }

    v18 = mSelector == 1650682995;
    v19 = 1668047219;
  }

  if (!v18 && mSelector != v19)
  {
LABEL_12:
    v16 = *(*(this + 186) + 64);

    return HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(v16, a2, a3, a4, a5);
  }

LABEL_22:

  return HALS_Device::GetPropertyDataSize(this, v12, a3, a4, a5, a6);
}

uint64_t HALS_PDPDevice::IsPropertySettable(HALS_PDPDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, const AudioObjectPropertyAddress *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  result = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    if (mSelector > 1919512166)
    {
      if (mSelector == 1919512167)
      {
        v11 = *(this + 186);
        v12 = 0x676C6F626673697ALL;
        goto LABEL_26;
      }

      if (mSelector == 1936482681)
      {
        return result;
      }

      if (mSelector != 1937007734)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

    v14 = mSelector == 1869638759;
    v15 = 1870098020;
  }

  else
  {
    if (mSelector > 1768907635)
    {
      if (mSelector != 1768907636)
      {
        if (mSelector == 1851878764)
        {
          return result;
        }

        if (mSelector == 1869180523)
        {
          v11 = *(this + 186);
          v12 = 0x676C6F626F696E6BLL;
LABEL_26:
          *&v18.mSelector = v12;
          v18.mElement = 0;
          return HALS_PDPUCPlugIn::ObjectIsPropertySettable(*(v11 + 56), a2, &v18);
        }

        goto LABEL_12;
      }

      goto LABEL_22;
    }

    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  if (!v14 && mSelector != v15)
  {
LABEL_12:
    v13 = *(*(this + 186) + 56);

    return HALS_PDPUCPlugIn::ObjectIsPropertySettable(v13, a2, a3);
  }

LABEL_22:

  return HALS_Device::IsPropertySettable(this, v8, a3, a4);
}

uint64_t HALS_PDPDevice::HasProperty(HALS_PDPDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  result = (*(*this + 184))(this, a3, a4);
  if (!result)
  {
    return result;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1869638758)
  {
    if (mSelector > 1768907635)
    {
      if (mSelector != 1768907636)
      {
        if (mSelector == 1851878764)
        {
          v11 = *(this + 186);
          v12 = 0x676C6F626C6E616DLL;
          goto LABEL_25;
        }

        if (mSelector == 1869180523)
        {
          v11 = *(this + 186);
          v12 = 0x676C6F626F696E6BLL;
LABEL_25:
          v19 = v12;
          v20 = 0;
          v13 = (*(v11 + 48))(a2, &v19);
          return v13 != 0;
        }

LABEL_12:
        v13 = (*(*(this + 186) + 48))(a2, a3);
        return v13 != 0;
      }

      goto LABEL_20;
    }

    v14 = mSelector == 1650682995;
    v15 = 1668047219;
    goto LABEL_15;
  }

  if (mSelector <= 1919512166)
  {
    v14 = mSelector == 1869638759;
    v15 = 1870098020;
LABEL_15:
    if (!v14 && mSelector != v15)
    {
      goto LABEL_12;
    }

LABEL_20:

    return HALS_Device::HasProperty(this, v9, a3, a4);
  }

  if (mSelector == 1919512167)
  {
    v11 = *(this + 186);
    v12 = 0x676C6F626673697ALL;
    goto LABEL_25;
  }

  if (mSelector != 1936482681)
  {
    if (mSelector != 1937007734)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  mScope = a3->mScope;
  return mScope == 1768845428 || mScope == 1869968496;
}

void HALS_PDPDevice::~HALS_PDPDevice(HALS_PDPDevice *this)
{
  HALS_PDPDevice::~HALS_PDPDevice(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596BE00;
  v2 = *(this + 185);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    HALS_ObjectMap::ObjectIsDead(*(this + 185), v3);
    *(this + 185) = 0;
  }

  v4[0] = 0;
  v4[1] = 0;
  HALS_System::GetInstance(&v5, 0, v4);
  HALS_IOContext_Manager::destroy_engine_for_device(*(v5 + 1744), this);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 1496));
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 183));

  HALS_Device::~HALS_Device(this);
}

void HALS_PDPDevice::Activate(const __CFString **this)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = *" diubolg";
  v12 = 0;
  v2 = *(this + 4);
  *buf = 0;
  LODWORD(v7) = 0;
  ((*this)[3].length)(this, v2, &v11, 8, &v7, buf, 0, 0, 0);
  v9 = *buf;
  v10 = 1;
  if (*buf)
  {
    CACFString::operator=((this + 13), &v9);
    *buf = CFStringCreateWithFormat(0, 0, @"device.%@", v9);
    buf[8] = 1;
    CACFString::operator=((this + 15), buf);
    v4 = this[13];
    if (v4)
    {
      v5 = CFStringGetLength(v4) + 1;
      v4 = this[13];
    }

    else
    {
      v5 = 1;
    }

    *v8 = v5;
    CACFString::GetCString(v4, (this + 164), v8, v3);
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "HALS_PDPDevice.cpp";
    v14 = 1024;
    v15 = 63;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPDevice::Activate: no UID", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE3CCD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  CACFString::~CACFString((v16 - 64));
  CACFString::~CACFString(va);
  _Unwind_Resume(a1);
}

uint64_t CACFString::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 != *a1)
  {
    if (*a1 && (*(a1 + 8) & 1) != 0)
    {
      CFRelease(*a1);
      v3 = *a2;
    }

    *a1 = v3;
    v5 = *(a2 + 8);
    *(a1 + 8) = v5;
    if (v5 == 1 && v3 != 0)
    {
      CFRetain(v3);
    }
  }

  return a1;
}

void ___ZN14HALS_PDPDevice32HandlePlugIn_RequestConfigChangeEPv_block_invoke(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v42 = 0u;
  v43 = 0u;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  __p = 0;
  v37 = 0;
  v38 = 0;
  v3 = *(v2 + 1480);
  if (v3)
  {
    (*(*v3 + 224))(v3, &__p);
  }

  v35[0] = 0;
  v35[1] = 0;
  HALS_System::GetInstance(&v48, 0, v35);
  HALS_IOContext_Manager::pause_contexts_for_device(v48[218], v2);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  HALS_DeviceState::HALS_DeviceState(&v48);
  HALS_DeviceState::Capture(v4, v2, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
  kdebug_trace();
  v5 = (*(*(v2 + 1488) + 40))(*(v2 + 16), a1[6]);
  v6 = v5;
  if (v5)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "HALS_PDPUCPlugIn.cpp";
      v46 = 1024;
      v47 = 124;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_PDPUCPlugIn::PerformDeviceConfigChange: got an error from the plug-in", buf, 0x12u);
    }
  }

  *(*(a1[4] + 8) + 24) = v6;
  kdebug_trace();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v34[2] = ___ZN14HALS_PDPDevice32HandlePlugIn_RequestConfigChangeEPv_block_invoke_2;
  v34[3] = &__block_descriptor_tmp_7_4707;
  v34[4] = v2;
  v11 = (*(*v2 + 64))(v2);
  HALB_CommandGate::ExecuteCommand(v11, v34);
  HALS_DeviceState::HALS_DeviceState(buf);
  HALS_DeviceState::Capture(buf, v2, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
  HALS_DeviceState::Compare(&v48, buf, &v42, &v39);
  *&v33.mSelector = 0x676C6F6200000000;
  if (v42 == *(&v42 + 1))
  {
    v13 = v39;
    while (v13 != v40)
    {
      v14 = *v13;
      v15 = *(v13 + 1);
      v13 = (v13 + 32);
      if (v14 != v15)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v33.mSelector = 1684629094;
    v33.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(&v42, &v33, v12);
  }

  v16 = *(v2 + 1480);
  if (v16)
  {
    (*(*v16 + 960))(v16);
  }

  HALS_DeviceState::~HALS_DeviceState(buf);
  HALS_DeviceState::~HALS_DeviceState(&v48);
  v32[0] = 0;
  v32[1] = 0;
  HALS_System::GetInstance(&v48, 0, v32);
  HALS_IOContext_Manager::rebuild_engine_for_device(v48[218], v2);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v17 = *(v2 + 1480);
  if (v17)
  {
    (*(*v17 + 248))(v17, &v42);
  }

  kdebug_trace();
  if (v42 != *(&v42 + 1))
  {
    HALS_Object::PropertiesChanged_Sync(v2, *(v2 + 16), 0, -1431655765 * ((*(&v42 + 1) - v42) >> 2), v42);
  }

  v19 = v39;
  v18 = v40;
  v20 = v40 - v39;
  if (((v40 - v39) & 0x1FFFFFFFE0) != 0)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      if (v22 >= v20 >> 5)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v23 = v19 + v21;
      if (*(v19 + v21) != *(v19 + v21 + 8))
      {
        v24 = *(v23 + 6);
        v26 = HALS_ObjectMap::CopyObjectByObjectID(v24);
        if (v26)
        {
          HALS_Object::PropertiesChanged_Sync(v2, v24, 0, -1431655765 * ((*(v23 + 1) - *v23) >> 2), *v23);
        }

        HALS_ObjectMap::ReleaseObject(v26, v25);
        v19 = v39;
        v18 = v40;
      }

      ++v22;
      v20 = v18 - v19;
      v21 += 32;
    }

    while (v22 < ((v18 - v19) >> 5));
  }

  kdebug_trace();
  v27 = *(v2 + 1480);
  if (v27)
  {
    (*(*v27 + 240))(v27);
    (*(**(v2 + 1480) + 232))(*(v2 + 1480), &__p);
  }

  v31[0] = 0;
  v31[1] = 0;
  HALS_System::GetInstance(&v48, 0, v31);
  v28 = v48[218];
  os_unfair_lock_lock(v28 + 4);
  os_unfair_lock_unlock(v28 + 4);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v30[0] = 0;
  v30[1] = 0;
  HALS_System::GetInstance(&v48, 0, v30);
  HALS_IOContext_Manager::resume_contexts_for_device(v48[218], v2);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v29[0] = 0;
  v29[1] = 0;
  HALS_System::GetInstance(&v48, 0, v29);
  HALS_System::CheckForDefaultDeviceChanges(v48);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  v48 = &v39;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&v48);
  if (v42)
  {
    *(&v42 + 1) = v42;
    operator delete(v42);
  }
}

void sub_1DE3CD3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    v39 = *(v37 - 152);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (__p)
    {
      operator delete(__p);
    }

    *(v37 - 160) = &a30;
    std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100]((v37 - 160));
    if (a33)
    {
      a34 = a33;
      operator delete(a33);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3CD340);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_PDPDevice32HandlePlugIn_RequestConfigChangeEPv_block_invoke_2(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  v3 = 1;
  do
  {
    v4 = v3;
    result = (*(*v2 + 392))(v2, v1 & 1);
    if (result)
    {
      v6 = 0;
      do
      {
        v7 = (*(*v2 + 400))(v2, v1 & 1, v6);
        v9 = v7;
        if (v7)
        {
          v10 = HALS_ObjectMap::CopyObjectByObjectID(*(v7 + 16));
          v12 = v10;
          if (v10)
          {
            HALS_PDPStream::BuildFormatList(v10);
          }

          HALS_ObjectMap::ReleaseObject(v12, v11);
        }

        HALS_ObjectMap::ReleaseObject(v9, v8);
        v6 = (v6 + 1);
        result = (*(*v2 + 392))(v2, v1 & 1);
      }

      while (v6 < result);
    }

    v3 = 0;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
  return result;
}

void sub_1DE3CD604(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

void HALS_PlugInBox::HandlePlugIn_PropertiesChanged(HALS_PlugInBox *this, uint64_t a2, AudioObjectPropertyAddress *a3)
{
  if (a2)
  {
    v6 = 0;
    v7 = a3;
    v8 = a2;
    do
    {
      mSelector = v7->mSelector;
      ++v7;
      v6 |= mSelector == 1668575852;
      --v8;
    }

    while (v8);
    if (v6)
    {
      HALS_PlugInBox::CreateControls(this);
    }
  }

  v10 = *(this + 4);

  HALS_Object::PropertiesChanged(this, v10, 0, a2, a3);
}

void HALS_PlugInBox::CreateControls(HALS_PlugInBox *this)
{
  LODWORD(v35) = 0;
  v34 = *"lrtcbolg";
  v2 = *(this + 44);
  v3 = *(v2 + 416);
  v4 = *(v2 + 424);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*v3 + 544))(v3, *(this + 91), 0, &v34);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v5)
  {
    v6 = *(this + 44);
    v7 = *(v6 + 416);
    v8 = *(v6 + 424);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(this + 91);
    v34 = 0x676C6F626374726CLL;
    LODWORD(v35) = 0;
    v43 = (*(*v7 + 560))(v7, v9, 0, &v34, 0, 0) >> 2;
    memset(&v42, 0, sizeof(v42));
    std::vector<unsigned int>::resize(&v42, v43);
    v10 = v43;
    if (v43)
    {
      v11 = *(this + 44);
      v12 = *(v11 + 416);
      v13 = *(v11 + 424);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(this + 91);
      v44 = 0x676C6F626374726CLL;
      v45 = 0;
      (*(*v12 + 568))(v12, v14, 0, &v44, 0, 0, 4 * v10, &v43, v42.__begin_);
      v43 >>= 2;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      std::vector<unsigned int>::resize(&v42, v43);
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x4002000000;
    v37 = __Block_byref_object_copy__4728;
    v38 = __Block_byref_object_dispose__4729;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x4002000000;
    v29 = __Block_byref_object_copy__4728;
    v30 = __Block_byref_object_dispose__4729;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1174405120;
    v22[2] = ___ZN14HALS_PlugInBox14CreateControlsEv_block_invoke;
    v22[3] = &unk_1F596C380;
    v22[6] = this;
    __p = 0;
    v24 = 0;
    v25 = 0;
    begin = v42.__begin_;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v42.__begin_, v42.__end_, v42.__end_ - v42.__begin_);
    v22[4] = &v34;
    v22[5] = &v26;
    v16 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v16, v22);
    v18 = v35[5];
    v19 = v35[6];
    while (v18 != v19)
    {
      (***v18++)();
    }

    v20 = v27[5];
    v21 = v27[6];
    while (v20 != v21)
    {
      HALS_ObjectMap::ReleaseObject(*v20++, v17);
    }

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v26, 8);
    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    _Block_object_dispose(&v34, 8);
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (begin)
    {
      operator delete(begin);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1DE3CDA74(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3CD87CLL);
}

void sub_1DE3CDA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a29, 8);
  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  if (v36)
  {
    operator delete(v36);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4728(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__4729(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN14HALS_PlugInBox14CreateControlsEv_block_invoke(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = *(a1[4] + 8);
  v4 = *(v2 + 384);
  v5 = *(v2 + 392);
  if (v4 != v5)
  {
    v6 = *(v2 + 384);
    do
    {
      v7 = *v6++;
      *(v7 + 13) = 0;
    }

    while (v6 != v5);
  }

  v8 = (v2 + 384);
  v10 = a1[7];
  v9 = a1[8];
  if (v10 != v9)
  {
    do
    {
      v11 = *v10;
      v12 = *(v2 + 384);
      v13 = *(v2 + 392) - v12;
      if (!v13)
      {
LABEL_9:
        v15 = *(v2 + 352);
        v16 = *(v15 + 416);
        v17 = *(v15 + 424);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_UCPlugInBase::Object_GetClass(v16, v11);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v18 = *(v2 + 352);
        v19 = *(v18 + 416);
        v20 = *(v18 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_UCPlugInBase::Object_GetBaseClass(v19, v11);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        operator new();
      }

      v14 = v13 >> 3;
      while (*(*v12 + 92) != v11)
      {
        v12 += 8;
        if (!--v14)
        {
          goto LABEL_9;
        }
      }

      *(*v12 + 13) = 1;
      ++v10;
    }

    while (v10 != v9);
    v4 = *(v2 + 384);
    v5 = *(v2 + 392);
  }

  if (v5 != v4)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = v4[v21];
      if (*(v23 + 13))
      {
        ++v22;
      }

      else
      {
        (*(*v23 + 8))(v23);
        HALS_ObjectMap::ObjectIsDead(v23, v24);
        v4 = *(v2 + 384);
        v25 = *(v2 + 392);
        v26 = &v4[v21];
        a2 = v26 + 1;
        v27 = v25 - (v26 + 1);
        if (v25 != (v26 + 1))
        {
          memmove(v26, a2, v25 - (v26 + 1));
          v4 = *v8;
        }

        v5 = (v26 + v27);
        *(v2 + 392) = v26 + v27;
      }

      v21 = v22;
    }

    while (v22 < (v5 - v4));
  }

  v29 = *(v3 + 40);
  v28 = *(v3 + 48);
  while (v29 != v28)
  {
    v30 = *v29++;
    v36 = v30;
    std::vector<HALS_Device *>::push_back[abi:ne200100](v2 + 384, &v36);
  }

  v31 = *(a1[5] + 8);
  if (v8 != (v31 + 40))
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v31 + 40), *(v2 + 384), *(v2 + 392), (*(v2 + 392) - *(v2 + 384)) >> 3);
  }

  v32 = *(v31 + 40);
  v33 = *(v31 + 48);
  while (v32 != v33)
  {
    v34 = *v32++;
    HALS_ObjectMap::RetainObject(v34, a2);
  }
}

void __destroy_helper_block_e8_56c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

uint64_t *__copy_helper_block_e8_56c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = (a1 + 56);
  v2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
}

void non-virtual thunk toHALS_PlugInBox::~HALS_PlugInBox(HALS_PlugInBox *this, unsigned int a2)
{
  HALS_PlugInBox::~HALS_PlugInBox((this - 344), a2);

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugInBox::~HALS_PlugInBox((this - 344), a2);
}

void HALS_PlugInBox::~HALS_PlugInBox(HALS_PlugInBox *this, unsigned int a2)
{
  *this = &unk_1F596C248;
  v3 = (this + 344);
  *(this + 43) = &unk_1F596C350;
  v4 = *(this + 48);
  if (v4)
  {
    *(this + 49) = v4;
    operator delete(v4);
  }

  HALS_PlugInObject::~HALS_PlugInObject(v3, a2);

  HALS_Box::~HALS_Box(this);
}

{
  HALS_PlugInBox::~HALS_PlugInBox(this, a2);

  JUMPOUT(0x1E12C1730);
}

HALS_ObjectMap *HALS_PlugInBox::_CopyControlByDescription(HALS_PlugInBox *this, HALS_Object *a2, int a3, int a4)
{
  for (i = *(this + 48); i != *(this + 49); ++i)
  {
    v5 = *i;
    if (*(*i + 5) == a2 && *(v5 + 12) == a3 && *(v5 + 13) == a4)
    {
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:
  HALS_ObjectMap::RetainObject(v5, a2);
  return v5;
}

HALS_ObjectMap *HALS_PlugInBox::_CopyControlByIndex(HALS_PlugInBox *this, HALS_Object *a2)
{
  v2 = *(this + 48);
  if (a2 >= ((*(this + 49) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_PlugInBox::_CopyControls(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 384);
  for (i = *(a1 + 392); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_PlugInBox::SetPropertyData(uint64_t a1, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  mSelector = a3->mSelector;
  switch(mSelector)
  {
    case 0x62786F6E:
      v22 = *(a1 + 352);
      v23 = *(v22 + 416);
      v15 = *(v22 + 424);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(a1 + 364);
      if (a8)
      {
        v25 = a8[60];
      }

      else
      {
        v25 = 0;
      }

      v38 = 0x676C6F6262786F6ELL;
      v39 = 0;
      (*(*v23 + 576))(v23, v24, v25, &v38, 0, 0, a4, a5);
      goto LABEL_30;
    case 0x6964656E:
      v18 = *(a1 + 352);
      v19 = *(v18 + 416);
      v15 = *(v18 + 424);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(a1 + 364);
      if (a8)
      {
        v21 = a8[60];
      }

      else
      {
        v21 = 0;
      }

      v38 = 0x676C6F626964656ELL;
      v39 = 0;
      (*(*v19 + 576))(v19, v20, v21, &v38, 0, 0, a4, a5);
      goto LABEL_30;
    case 0x6C6E616D:
      v13 = *(a1 + 352);
      v14 = *(v13 + 416);
      v15 = *(v13 + 424);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *(a1 + 364);
      if (a8)
      {
        v17 = a8[60];
      }

      else
      {
        v17 = 0;
      }

      v38 = 0x676C6F626C6E616DLL;
      v39 = 0;
      (*(*v14 + 576))(v14, v16, v17, &v38, 0, 0, a4, a5);
LABEL_30:
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      return;
  }

  if (HALS_Box::HasProperty(a1, a2, a3))
  {
    if (HALS_Box::IsPropertySettable(a1, a2, a3))
    {
      HALS_Object::SetPropertyData(a1, a2, a3, v30, v31, v32, v33, a8);
    }

    mSelector = a3->mSelector;
  }

  if ((*(*(a1 + 344) + 24))(a1 + 344, mSelector))
  {
    v34 = *(a1 + 352);
    v35 = *(v34 + 416);
    v36 = *(v34 + 424);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a8)
    {
      v37 = a8[60];
    }

    else
    {
      v37 = 0;
    }

    (*(*v35 + 576))(v35, *(a1 + 364), v37, a3, a6, a7, a4, a5);
    if (v36)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }
  }
}

void sub_1DE3CE414(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInBox::GetPropertyData(HALS_PlugInBox *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, char *a6, uint64_t a7, uint64_t *a8, HALS_Client *a9)
{
  v11 = a6;
  v94 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (mSelector > 1668641651)
  {
    if (mSelector <= 1819111267)
    {
      if (mSelector > 1768187245)
      {
        if (mSelector == 1768187246)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInBox.cpp";
              v92 = 1024;
              v93 = 265;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioObjectPropertyIdentify", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 561211770;
          }

          v46 = *(this + 44);
          v47 = *(v46 + 416);
          v20 = *(v46 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(buf, "nedibolg");
          buf[9] = 0;
          *&buf[10] = 0;
          (*(*v47 + 568))(v47);
          goto LABEL_124;
        }

        if (mSelector != 1819107691)
        {
          goto LABEL_95;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInBox.cpp";
            v92 = 1024;
            v93 = 257;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
          }

          v79 = __cxa_allocate_exception(0x10uLL);
          *v79 = off_1F5991DD8;
          v79[2] = 561211770;
        }

        v31 = *(this + 44);
        v32 = *(v31 + 416);
        v28 = *(v31 + 424);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "kamlbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*v32 + 568))(v32);
        goto LABEL_127;
      }

      if (mSelector == 1668641652)
      {
        v39 = a4 / 0xC;
        if (*(this + 94) < a4 / 0xC)
        {
          v39 = *(this + 94);
        }

        if (v39)
        {
          v40 = 0;
          v41 = 0;
          do
          {
            if (v41 < *(this + 94))
            {
              v42 = &a6[v40];
              v43 = (*(this + 46) + v40);
              v44 = *v43;
              *(v42 + 2) = *(v43 + 2);
              *v42 = v44;
            }

            ++v41;
            v40 += 12;
          }

          while (12 * v39 != v40);
        }

        v45 = 12 * v39;
        goto LABEL_130;
      }

      if (mSelector == 1719105134)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInBox.cpp";
            v92 = 1024;
            v93 = 281;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioObjectPropertyFirmwareVersion", buf, 0x12u);
          }

          v78 = __cxa_allocate_exception(0x10uLL);
          *v78 = off_1F5991DD8;
          v78[2] = 561211770;
        }

        v26 = *(this + 44);
        v27 = *(v26 + 416);
        v28 = *(v26 + 424);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "nvwfbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*v27 + 568))(v27);
        goto LABEL_127;
      }
    }

    else
    {
      if (mSelector > 1920168546)
      {
        if (mSelector == 1920168547)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInBox.cpp";
              v92 = 1024;
              v93 = 391;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioObjectPropertyResourceBundle", buf, 0x12u);
            }

            v84 = __cxa_allocate_exception(0x10uLL);
            *v84 = off_1F5991DD8;
            v84[2] = 561211770;
          }

          *a6 = HALS_PlugInObject::CopyResourceBundlePath(this + 344, a9);
          goto LABEL_129;
        }

        if (mSelector != 1936618861)
        {
          if (mSelector == 1953653102)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInBox.cpp";
                v92 = 1024;
                v93 = 289;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioBoxPropertyTransportType", buf, 0x12u);
              }

              v86 = __cxa_allocate_exception(0x10uLL);
              *v86 = off_1F5991DD8;
              v86[2] = 561211770;
            }

            v18 = *(this + 44);
            v19 = *(v18 + 416);
            v20 = *(v18 + 424);
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            strcpy(buf, "nartbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            (*(*v19 + 568))(v19);
LABEL_124:
            *v11 = 0;
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            v45 = 4;
            goto LABEL_130;
          }

          goto LABEL_95;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInBox.cpp";
            v92 = 1024;
            v93 = 273;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioObjectPropertySerialNumber", buf, 0x12u);
          }

          v80 = __cxa_allocate_exception(0x10uLL);
          *v80 = off_1F5991DD8;
          v80[2] = 561211770;
        }

        v48 = *(this + 44);
        v49 = *(v48 + 416);
        v28 = *(v48 + 424);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "munsbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*v49 + 568))(v49);
LABEL_127:
        *v11 = 0;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

LABEL_129:
        v45 = 8;
LABEL_130:
        *a5 = v45;
        return;
      }

      if (mSelector == 1819111268)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInBox.cpp";
            v92 = 1024;
            v93 = 249;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioObjectPropertyModelName", buf, 0x12u);
          }

          v85 = __cxa_allocate_exception(0x10uLL);
          *v85 = off_1F5991DD8;
          v85[2] = 561211770;
        }

        v61 = *(this + 44);
        v62 = *(v61 + 416);
        v28 = *(v61 + 424);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "domlbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*v62 + 568))(v62);
        goto LABEL_127;
      }

      if (mSelector == 1819173229)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInBox.cpp";
            v92 = 1024;
            v93 = 241;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
          }

          v90 = __cxa_allocate_exception(0x10uLL);
          *v90 = off_1F5991DD8;
          v90[2] = 561211770;
        }

        v37 = *(this + 44);
        v38 = *(v37 + 416);
        v28 = *(v37 + 424);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "manlbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*v38 + 568))(v38);
        goto LABEL_127;
      }
    }

LABEL_95:
    if (HALS_Box::HasProperty(this, a2, a3))
    {

      HALS_Box::GetPropertyData(this, a2, a3, a4, a5, v11, a7, a8, a9);
    }

    else if ((*(*(this + 43) + 24))(this + 344, mSelector))
    {
      v63 = *(this + 44);
      v64 = *(v63 + 416);
      v65 = *(v63 + 424);
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v66 = *(a9 + 60);
      }

      else
      {
        v66 = 0;
      }

      (*(*v64 + 568))(v64, *(this + 91), v66, a3, a7, a8, a4, a5, v11);
      if (v65)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }
    }

    return;
  }

  if (mSelector > 1651013224)
  {
    if (mSelector > 1652060005)
    {
      if (mSelector == 1652060006)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInBox.cpp";
            v92 = 1024;
            v93 = 337;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioBoxPropertyAcquisitionFailed", buf, 0x12u);
          }

          v83 = __cxa_allocate_exception(0x10uLL);
          *v83 = off_1F5991DD8;
          v83[2] = 561211770;
        }

        v59 = *(this + 44);
        v60 = *(v59 + 416);
        v20 = *(v59 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "foxbbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*v60 + 568))(v60);
        goto LABEL_124;
      }

      if (mSelector == 1652060014)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInBox.cpp";
            v92 = 1024;
            v93 = 329;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioBoxPropertyAcquired", buf, 0x12u);
          }

          v89 = __cxa_allocate_exception(0x10uLL);
          *v89 = off_1F5991DD8;
          v89[2] = 561211770;
        }

        v35 = *(this + 44);
        v36 = *(v35 + 416);
        v20 = *(v35 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "noxbbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*v36 + 568))(v36);
        goto LABEL_124;
      }
    }

    else
    {
      if (mSelector == 1651013225)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInBox.cpp";
            v92 = 1024;
            v93 = 305;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioBoxPropertyHasVideo", buf, 0x12u);
          }

          v81 = __cxa_allocate_exception(0x10uLL);
          *v81 = off_1F5991DD8;
          v81[2] = 561211770;
        }

        v55 = *(this + 44);
        v56 = *(v55 + 416);
        v20 = *(v55 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "ivhbbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*v56 + 568))(v56);
        goto LABEL_124;
      }

      if (mSelector == 1651536495)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInBox.cpp";
            v92 = 1024;
            v93 = 321;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioBoxPropertyIsProtected", buf, 0x12u);
          }

          v87 = __cxa_allocate_exception(0x10uLL);
          *v87 = off_1F5991DD8;
          v87[2] = 561211770;
        }

        v29 = *(this + 44);
        v30 = *(v29 + 416);
        v20 = *(v29 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "orpbbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        (*(*v30 + 568))(v30);
        goto LABEL_124;
      }
    }

    goto LABEL_95;
  }

  if (mSelector > 1651007860)
  {
    if (mSelector == 1651007861)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInBox.cpp";
          v92 = 1024;
          v93 = 297;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioBoxPropertyHasAudio", buf, 0x12u);
        }

        v82 = __cxa_allocate_exception(0x10uLL);
        *v82 = off_1F5991DD8;
        v82[2] = 561211770;
      }

      v57 = *(this + 44);
      v58 = *(v57 + 416);
      v20 = *(v57 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(buf, "uahbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*v58 + 568))(v58);
      goto LABEL_124;
    }

    if (mSelector == 1651010921)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInBox.cpp";
          v92 = 1024;
          v93 = 313;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInBox::GetPropertyData: bad property data size for kAudioBoxPropertyHasMIDI", buf, 0x12u);
        }

        v88 = __cxa_allocate_exception(0x10uLL);
        *v88 = off_1F5991DD8;
        v88[2] = 561211770;
      }

      v33 = *(this + 44);
      v34 = *(v33 + 416);
      v20 = *(v33 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(buf, "imhbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*v34 + 568))(v34);
      goto LABEL_124;
    }

    goto LABEL_95;
  }

  if (mSelector == 1650682915)
  {
    v50 = *(this + 44);
    v51 = *(v50 + 416);
    v52 = *(v50 + 424);
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v53 = *(this + 91);
    if (a9)
    {
      v54 = *(a9 + 60);
    }

    else
    {
      v54 = 0;
    }

    strcpy(buf, "#lcbbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*v51 + 568))(v51, v53, v54, buf, 0, 0, a4, a5, a6);
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    v67 = *a5;
    if (v67 >= 4)
    {
      v68 = v67 >> 2;
      do
      {
        v69 = HALS_PlugIn::CopyClockDeviceByUCID(*(this + 44), *v11);
        if (v69)
        {
          v71 = *(v69 + 4);
        }

        else
        {
          v71 = 0;
        }

        *v11 = v71;
        HALS_ObjectMap::ReleaseObject(v69, v70);
        v11 = (v11 + 4);
        --v68;
      }

      while (v68);
    }
  }

  else
  {
    if (mSelector != 1650751011)
    {
      goto LABEL_95;
    }

    v21 = *(this + 44);
    v22 = *(v21 + 416);
    v23 = *(v21 + 424);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(this + 91);
    if (a9)
    {
      v25 = *(a9 + 60);
    }

    else
    {
      v25 = 0;
    }

    strcpy(buf, "#vdbbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*v22 + 568))(v22, v24, v25, buf, 0, 0, a4, a5, a6);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v72 = *a5;
    if (v72 >= 4)
    {
      v73 = v72 >> 2;
      do
      {
        v74 = HALS_PlugIn::CopyDeviceByUCID(*(this + 44), *v11);
        if (v74)
        {
          v76 = *(v74 + 4);
        }

        else
        {
          v76 = 0;
        }

        *v11 = v76;
        HALS_ObjectMap::ReleaseObject(v74, v75);
        v11 = (v11 + 4);
        --v73;
      }

      while (v73);
    }
  }
}

void sub_1DE3CFC5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInBox::GetPropertyDataSize(HALS_PlugInBox *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  if (mSelector <= 1819173228)
  {
    switch(mSelector)
    {
      case 0x62636C23:
        v16 = *(this + 44);
        v17 = *(v16 + 416);
        v18 = *(v16 + 424);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = *(this + 91);
        if (a6)
        {
          v20 = *(a6 + 60);
        }

        else
        {
          v20 = 0;
        }

        v32 = 0x676C6F6262636C23;
        v33 = 0;
        v30 = (*(*v17 + 560))(v17, v19, v20, &v32, 0, 0);
        break;
      case 0x62647623:
        v22 = *(this + 44);
        v23 = *(v22 + 416);
        v18 = *(v22 + 424);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 91);
        if (a6)
        {
          v25 = *(a6 + 60);
        }

        else
        {
          v25 = 0;
        }

        v32 = 0x676C6F6262647623;
        v33 = 0;
        v30 = (*(*v23 + 560))(v23, v24, v25, &v32, 0, 0);
        break;
      case 0x63757374:
        return (12 * *(this + 94));
      default:
        goto LABEL_19;
    }

    v13 = v30;
    if (!v18)
    {
      return v13;
    }

    v31 = v18;
LABEL_38:
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    return v13;
  }

  if (mSelector == 1819173229 || mSelector == 1851878764 || mSelector == 1920168547)
  {
    return 8;
  }

LABEL_19:
  if (!HALS_Box::HasProperty(this, a2, a3))
  {
    if (!(*(*(this + 43) + 24))(this + 344, mSelector))
    {
      return 0;
    }

    v26 = *(this + 44);
    v27 = *(v26 + 416);
    v28 = *(v26 + 424);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
      v29 = *(a6 + 60);
    }

    else
    {
      v29 = 0;
    }

    v13 = (*(*v27 + 560))(v27, *(this + 91), v29, a3, a4, a5);
    if (!v28)
    {
      return v13;
    }

    v31 = v28;
    goto LABEL_38;
  }

  return HALS_Box::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

void sub_1DE3CFFC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInBox::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v8 = 0;
  v9 = *a3;
  if (v9 <= 1768187245)
  {
    if (v9 != 1652060014)
    {
      if (v9 == 1668641652)
      {
        return v8;
      }

      goto LABEL_11;
    }

    v20 = *(a1 + 352);
    v21 = *(v20 + 416);
    v12 = *(v20 + 424);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 364);
    if (a4)
    {
      v23 = *(a4 + 240);
    }

    else
    {
      v23 = 0;
    }

    v30 = 0x676C6F6262786F6ELL;
    v31 = 0;
    v28 = (*(*v21 + 552))(v21, v22, v23, &v30);
LABEL_34:
    v8 = v28;
    if (v12)
    {
      v29 = v12;
LABEL_36:
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    return v8;
  }

  switch(v9)
  {
    case 0x6964656E:
      v16 = *(a1 + 352);
      v17 = *(v16 + 416);
      v12 = *(v16 + 424);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = *(a1 + 364);
      if (a4)
      {
        v19 = *(a4 + 240);
      }

      else
      {
        v19 = 0;
      }

      v30 = 0x676C6F626964656ELL;
      v31 = 0;
      v28 = (*(*v17 + 552))(v17, v18, v19, &v30);
      goto LABEL_34;
    case 0x72737263:
      return v8;
    case 0x6C6E616D:
      v10 = *(a1 + 352);
      v11 = *(v10 + 416);
      v12 = *(v10 + 424);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(a1 + 364);
      if (a4)
      {
        v14 = *(a4 + 240);
      }

      else
      {
        v14 = 0;
      }

      v30 = 0x676C6F626C6E616DLL;
      v31 = 0;
      v28 = (*(*v11 + 552))(v11, v13, v14, &v30);
      goto LABEL_34;
  }

LABEL_11:
  if (!HALS_Box::HasProperty(a1, a2, a3))
  {
    if (!(*(*(a1 + 344) + 24))(a1 + 344, v9))
    {
      return 0;
    }

    v24 = *(a1 + 352);
    v25 = *(v24 + 416);
    v26 = *(v24 + 424);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      v27 = *(a4 + 240);
    }

    else
    {
      v27 = 0;
    }

    v8 = (*(*v25 + 552))(v25, *(a1 + 364), v27, a3);
    if (!v26)
    {
      return v8;
    }

    v29 = v26;
    goto LABEL_36;
  }

  return HALS_Box::IsPropertySettable(a1, a2, a3);
}

void sub_1DE3D02F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInBox::HasProperty(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *a3;
  if (v7 <= 1819111267)
  {
    if (v7 <= 1768187245)
    {
      if (v7 == 1668641652)
      {
        return *(a1 + 376) != 0;
      }

      if (v7 == 1719105134)
      {
        v8 = *(a1 + 352);
        v9 = *(v8 + 416);
        v10 = *(v8 + 424);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = *(a1 + 364);
        if (a4)
        {
          v12 = *(a4 + 240);
        }

        else
        {
          v12 = 0;
        }

        v42 = 0x676C6F626677766ELL;
        v43 = 0;
        v40 = (*(*v9 + 544))(v9, v11, v12, &v42);
        goto LABEL_59;
      }

LABEL_40:
      if ((HALS_Box::HasProperty(a1, a2, a3) & 1) == 0)
      {
        if (!(*(*(a1 + 344) + 24))(a1 + 344, v7))
        {
          return 0;
        }

        v36 = *(a1 + 352);
        v37 = *(v36 + 416);
        v38 = *(v36 + 424);
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (a4)
        {
          v39 = *(a4 + 240);
        }

        else
        {
          v39 = 0;
        }

        v25 = (*(*v37 + 544))(v37, *(a1 + 364), v39, a3);
        if (!v38)
        {
          return v25;
        }

        v41 = v38;
        goto LABEL_61;
      }

      return 1;
    }

    if (v7 == 1768187246)
    {
      v30 = *(a1 + 352);
      v31 = *(v30 + 416);
      v10 = *(v30 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = *(a1 + 364);
      if (a4)
      {
        v33 = *(a4 + 240);
      }

      else
      {
        v33 = 0;
      }

      v42 = 0x676C6F626964656ELL;
      v43 = 0;
      v40 = (*(*v31 + 544))(v31, v32, v33, &v42);
    }

    else
    {
      if (v7 != 1819107691)
      {
        goto LABEL_40;
      }

      v17 = *(a1 + 352);
      v18 = *(v17 + 416);
      v10 = *(v17 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(a1 + 364);
      if (a4)
      {
        v20 = *(a4 + 240);
      }

      else
      {
        v20 = 0;
      }

      v42 = 0x676C6F626C6D616BLL;
      v43 = 0;
      v40 = (*(*v18 + 544))(v18, v19, v20, &v42);
    }

LABEL_59:
    v25 = v40;
    if (v10)
    {
      v41 = v10;
LABEL_61:
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      return v25;
    }

    return v25;
  }

  if (v7 <= 1920168546)
  {
    if (v7 == 1819111268)
    {
      v26 = *(a1 + 352);
      v27 = *(v26 + 416);
      v10 = *(v26 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *(a1 + 364);
      if (a4)
      {
        v29 = *(a4 + 240);
      }

      else
      {
        v29 = 0;
      }

      v42 = 0x676C6F626C6D6F64;
      v43 = 0;
      v40 = (*(*v27 + 544))(v27, v28, v29, &v42);
    }

    else
    {
      if (v7 != 1819173229)
      {
        goto LABEL_40;
      }

      v13 = *(a1 + 352);
      v14 = *(v13 + 416);
      v10 = *(v13 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 364);
      if (a4)
      {
        v16 = *(a4 + 240);
      }

      else
      {
        v16 = 0;
      }

      v42 = 0x676C6F626C6E616DLL;
      v43 = 0;
      v40 = (*(*v14 + 544))(v14, v15, v16, &v42);
    }

    goto LABEL_59;
  }

  if (v7 != 1920168547)
  {
    if (v7 != 1936618861)
    {
      goto LABEL_40;
    }

    v21 = *(a1 + 352);
    v22 = *(v21 + 416);
    v10 = *(v21 + 424);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(a1 + 364);
    if (a4)
    {
      v24 = *(a4 + 240);
    }

    else
    {
      v24 = 0;
    }

    v42 = 0x676C6F62736E756DLL;
    v43 = 0;
    v40 = (*(*v22 + 544))(v22, v23, v24, &v42);
    goto LABEL_59;
  }

  v34 = a1 + 344;

  return HALS_PlugInObject::HasResourceBundle(v34, a4);
}

void sub_1DE3D07B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInBox::Activate(HALS_PlugInBox *this, HALS_Object *a2)
{
  HALS_Object::Activate(this, a2);
  (*(*(this + 43) + 32))();

  HALS_PlugInBox::CreateControls(this);
}

void *mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::PlugInRef_Traits>::BasicRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFBundleGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return a1;
}

void sub_1DE3D0918(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFBundle *>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *mcp_applesauce::CF::PlugInRef_proxy::find_factories_for_type(void *this, const __CFUUID *a2, const __CFUUID *a3)
{
  v3 = this;
  if (a2)
  {
    this = CFPlugInFindFactoriesForPlugInTypeInPlugIn(a3, a2);
    *v3 = this;
    if (this)
    {
      v4 = CFGetTypeID(this);
      this = CFArrayGetTypeID();
      if (v4 != this)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE3D09D0(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

const void **mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::PlugInRef_Traits>::~BasicRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Sandbox_Extensions::cache_iokit_registry_token(Sandbox_Extensions *this, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = sandbox_extension_issue_iokit_registry_entry_class();
  if (v7)
  {
    std::vector<char *>::push_back[abi:ne200100](this, &v7);
  }

  else
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v9 = "Audio_Server_PlugIn_Utilities.cpp";
      v10 = 1024;
      v11 = 100;
      _os_log_debug_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEBUG, "%32s:%-5d sandbox_extension_issue_iokit_registry_entry_class not granted.", buf, 0x12u);
    }
  }
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

CFTypeID applesauce::CF::details::at_to<applesauce::CF::StringRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(ValueAtIndex);
  *a1 = v7;
  v8 = CFGetTypeID(v7);
  result = CFStringGetTypeID();
  if (v8 != result)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1DE3D0D38(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void AMCP::Core::Core::call_operation_function<void,AMCP::Pause_Behavior>(AMCP::Address *a1, unsigned int *a2, int a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 198;
      v46 = 2080;
      v47 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v31, a1, a2);
  v7 = v31;
  if (!v31)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v34, "Operation does not have requested function", v29);
    std::runtime_error::runtime_error(&v35, &v34);
    std::runtime_error::runtime_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v48 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Pause_Behavior>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v50 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v8 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Pause_Behavior)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v34, "Operation does not have requested function", v30);
    std::runtime_error::runtime_error(&v35, &v34);
    std::runtime_error::runtime_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Pause_Behavior>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Pause_Behavior)>>(), (v9 = (*(v10 + 7))(4, v10 + 24, 0, buf)) == 0))
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v34, "Invalid cast", v28);
    std::runtime_error::runtime_error(&v35, &v34);
    std::runtime_error::runtime_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Pause_Behavior>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  *buf = a3;
  v11 = *(v9 + 3);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v11, buf);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

void sub_1DE3D14F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1DE3D21A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, void *a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, char *p_p)
{
  p_p = &__p;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  p_p = &a10;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v47 - 224));
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(&a13);
  p_p = &a18;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Graph_Manager::modify_graph(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[24] = 0;
  operator new();
}

void sub_1DE3D25A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4 - 88);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va1);
  if (*(v3 + 24))
  {
    v6 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v6;
      operator delete(v6);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core13Graph_Manager12modify_graphERKNS_17Graph_DescriptionERKNS_25Modify_Graph_Destroy_ListEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (is_valid)
  {
    AMCP::IO_Core::Graph_Manager::modify_graph_internal(__p, v2, *(a1 + 56), *(a1 + 64));
  }

  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __p[0] = 136315650;
    *&__p[1] = "Graph_Manager.cpp";
    v9 = 1024;
    v10 = 73;
    v11 = 2080;
    v12 = "expiration_check.is_valid()";
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", __p, 0x1Cu);
  }

  abort();
}

void sub_1DE3D5D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  std::unique_ptr<AMCP::Graph::Graph_State_Data>::~unique_ptr[abi:ne200100](va);
  JUMPOUT(0x1DE3D5D58);
}

__n128 std::__optional_storage_base<std::vector<unsigned int>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned int>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      v4 = *a1;
      if (*a1)
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
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void AMCP::IO_Core::Graph_Manager::insert_graph_components(AMCP::IO_Core::Graph_Manager *this, const AMCP::Graph_Description *a2)
{
  v2 = this;
  v125[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v96 = this;
  if (*a2 != *(a2 + 1))
  {
    v94 = this + 8;
    v4 = (*(*this + 16))(&v100, this);
    if (*v3 == 2)
    {
      v5 = *(v3 + 96);
      if (*(v3 + 104) - v5 != 104 || (v6 = *(v3 + 72), *(v3 + 80) - v6 != 104))
      {
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
        }

        v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          v21 = *v20;
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        else
        {
          v21 = *v20;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = v3 + 8;
          if (*(v3 + 31) < 0)
          {
            v22 = *(v3 + 8);
          }

          *buf = 136315650;
          *&buf[4] = "Graph.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 66;
          *&buf[18] = 2080;
          *&buf[20] = v22;
          v23 = v21;
          v24 = "%32s:%-5d Bad format for Reflector description %s: Reflector nodes must have one terminal for input and one for output";
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      if (*v5 != *v6 || *(v5 + 8) != *(v6 + 8) || *(v5 + 12) != *(v6 + 12) || *(v5 + 16) != *(v6 + 16) || *(v5 + 20) != *(v6 + 20) || *(v5 + 24) != *(v6 + 24) || *(v5 + 28) != *(v6 + 28) || *(v5 + 32) != *(v6 + 32))
      {
        v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v25 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v4);
        }

        v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v27;
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        else
        {
          v28 = *v27;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = v3 + 8;
          if (*(v3 + 31) < 0)
          {
            v29 = *(v3 + 8);
          }

          *buf = 136315650;
          *&buf[4] = "Graph.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 72;
          *&buf[18] = 2080;
          *&buf[20] = v29;
          v23 = v28;
          v24 = "%32s:%-5d Bad format for Reflector description %s: terminal stream formats do not match";
          goto LABEL_51;
        }

LABEL_52:
        imp = v100.__imp_.__imp_;
        if (v100.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v100.__imp_.__imp_);
        }

        v70 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v70 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(imp);
        }

        v72 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v71 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v71)
        {
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          v73 = *v72;
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }

        else
        {
          v73 = *v72;
        }

        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v86 = (v3 + 8);
          if (*(v3 + 31) < 0)
          {
            v86 = *v86;
          }

          *buf = 136315906;
          *&buf[4] = "Graph_Manager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 216;
          *&buf[18] = 2080;
          *&buf[20] = "not (added)";
          *&buf[28] = 2080;
          *&buf[30] = v86;
          _os_log_error_impl(&dword_1DE1F9000, v73, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Error adding node %s to graph", buf, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v98);
        __cxa_allocate_exception(0x40uLL);
        v88 = (v3 + 8);
        if (*(v3 + 31) < 0)
        {
          v88 = *v88;
        }

        caulk::make_string(&v101, "Error adding node %s to graph", v87, v88);
        std::logic_error::logic_error(&v100, &v101);
        v100.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v107, &v100);
        v109 = 0;
        v110 = 0;
        v111.__r_.__value_.__r.__words[0] = 0;
        LODWORD(v111.__r_.__value_.__r.__words[1]) = -1;
        v107.__vftable = &unk_1F5991430;
        v108 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
        *&buf[32] = "void AMCP::IO_Core::Graph_Manager::insert_graph_components(const Graph_Description &)";
        v115.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Graph_Manager.cpp";
        LODWORD(v115.__r_.__value_.__r.__words[1]) = 216;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v99);
      }

      v7 = *(v3 + 64);
      if (v7 != 2)
      {
        if (v7 != 1)
        {
          goto LABEL_28;
        }

        v8 = *(v3 + 63);
        if (v8 >= 0)
        {
          v9 = *(v3 + 63);
        }

        else
        {
          v9 = *(v3 + 48);
        }

        v10 = *(v3 + 31);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v3 + 16);
        }

        if (v9 != v10 || (v8 >= 0 ? (v12 = (v3 + 40)) : (v12 = *(v3 + 40)), v11 >= 0 ? (v13 = (v3 + 8)) : (v13 = *(v3 + 8)), v4 = memcmp(v12, v13, v9), v4))
        {
LABEL_28:
          v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v14 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v4);
          }

          v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            v17 = *v16;
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          else
          {
            v17 = *v16;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v31 = v3 + 8;
            if (*(v3 + 31) < 0)
            {
              v31 = *(v3 + 8);
            }

            *buf = 136315650;
            *&buf[4] = "Graph.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 81;
            *&buf[18] = 2080;
            *&buf[20] = v31;
            v23 = v17;
            v24 = "%32s:%-5d Bad format for Reflector description %s: Reflector must be its own clock source";
LABEL_51:
            _os_log_debug_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0x1Cu);
            goto LABEL_52;
          }

          goto LABEL_52;
        }
      }
    }

    (*(*v94 + 16))(buf);
    operator new();
  }

  v32 = *(a2 + 3);
  v97 = *(a2 + 4);
  if (v32 == v97)
  {
    return;
  }

  do
  {
    if (*(v32 + 32))
    {
      v74 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v74 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v76 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v75 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
        v77 = *v76;
        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
      }

      else
      {
        v77 = *v76;
      }

      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Graph.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 310;
        *&buf[18] = 2080;
        *&buf[20] = "not (wire.mSource.m_wire_direction == Direction::output)";
        _os_log_error_impl(&dword_1DE1F9000, v77, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Graph:: Wire source is not an OutWire", buf, 0x1Cu);
      }

      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v101, "Graph:: Wire source is not an OutWire", v89);
      std::logic_error::logic_error(&v100, &v101);
      v100.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v107, &v100);
      v109 = 0;
      v110 = 0;
      v111.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v111.__r_.__value_.__r.__words[1]) = -1;
      v107.__vftable = &unk_1F5991430;
      v108 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
      *&buf[32] = "void AMCP::Graph::Graph::add_wire(const Wire_Description &)";
      v115.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
      LODWORD(v115.__r_.__value_.__r.__words[1]) = 310;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v99);
    }

    if (*(v32 + 72) != 1)
    {
      v78 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v78 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v80 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v79 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v79)
      {
        atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
        v81 = *v80;
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      else
      {
        v81 = *v80;
      }

      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Graph.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 311;
        *&buf[18] = 2080;
        *&buf[20] = "not (wire.mDestination.m_wire_direction == Direction::input)";
        _os_log_error_impl(&dword_1DE1F9000, v81, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Graph:: Wire destination is not an InWire", buf, 0x1Cu);
      }

      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v101, "Graph:: Wire destination is not an InWire", v90);
      std::logic_error::logic_error(&v100, &v101);
      v100.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v107, &v100);
      v109 = 0;
      v110 = 0;
      v111.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v111.__r_.__value_.__r.__words[1]) = -1;
      v107.__vftable = &unk_1F5991430;
      v108 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
      *&buf[32] = "void AMCP::Graph::Graph::add_wire(const Wire_Description &)";
      v115.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
      LODWORD(v115.__r_.__value_.__r.__words[1]) = 311;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v99);
    }

    v33 = *(v32 + 23);
    v34 = *(v32 + 8);
    if (v33 >= 0)
    {
      v35 = *(v32 + 23);
    }

    else
    {
      v35 = *(v32 + 8);
    }

    v36 = *(v32 + 63);
    v37 = v36;
    if ((v36 & 0x80u) != 0)
    {
      v36 = *(v32 + 48);
    }

    if (v35 == v36)
    {
      v38 = v33 >= 0 ? v32 : *v32;
      v39 = v37 >= 0 ? (v32 + 40) : *(v32 + 40);
      v40 = memcmp(v38, v39, v35);
      if (!v40)
      {
        v82 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v82 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v40);
        }

        v84 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v83 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          v85 = *v84;
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        else
        {
          v85 = *v84;
        }

        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          if (*(v32 + 23) >= 0)
          {
            v91 = v32;
          }

          else
          {
            v91 = *v32;
          }

          *buf = 136315906;
          *&buf[4] = "Graph.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 312;
          *&buf[18] = 2080;
          *&buf[20] = "not (wire.mSource.m_node != wire.mDestination.m_node)";
          *&buf[28] = 2080;
          *&buf[30] = v91;
          _os_log_error_impl(&dword_1DE1F9000, v85, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Node %s: nodes cannot connect to themselves", buf, 0x26u);
        }

        __cxa_allocate_exception(0x40uLL);
        if (*(v32 + 23) >= 0)
        {
          v93 = v32;
        }

        else
        {
          v93 = *v32;
        }

        caulk::make_string(&v101, "Node %s: nodes cannot connect to themselves", v92, v93);
        std::logic_error::logic_error(&v100, &v101);
        v100.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v107, &v100);
        v109 = 0;
        v110 = 0;
        v111.__r_.__value_.__r.__words[0] = 0;
        LODWORD(v111.__r_.__value_.__r.__words[1]) = -1;
        v107.__vftable = &unk_1F5991430;
        v108 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v107);
        *&buf[32] = "void AMCP::Graph::Graph::add_wire(const Wire_Description &)";
        v115.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
        LODWORD(v115.__r_.__value_.__r.__words[1]) = 312;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v99);
      }
    }

    if (v33 < 0)
    {
      std::string::__init_copy_ctor_external(&v104, *v32, v34);
      LOBYTE(v37) = *(v32 + 63);
    }

    else
    {
      v104 = *v32;
    }

    v105 = *(v32 + 24);
    v106 = *(v32 + 32);
    if ((v37 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v101, *(v32 + 40), *(v32 + 48));
    }

    else
    {
      v101 = *(v32 + 40);
    }

    v102 = *(v32 + 64);
    v103 = *(v32 + 72);
    v107 = *&v104.__r_.__value_.__l.__data_;
    v108 = v104.__r_.__value_.__r.__words[2];
    memset(&v104, 0, sizeof(v104));
    v109 = v105;
    LODWORD(v110) = v106;
    *&v111.__r_.__value_.__l.__data_ = *&v101.__r_.__value_.__l.__data_;
    v41 = *(v32 + 64);
    v113 = *(v32 + 72);
    v42 = v101.__r_.__value_.__r.__words[2];
    memset(&v101, 0, sizeof(v101));
    v111.__r_.__value_.__r.__words[2] = v42;
    v112 = v41;
    if (std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(v2 + 13, &v107))
    {
      goto LABEL_117;
    }

    AMCP::Graph::Wire_Index::add_to_index(v2 + 8, v32, &v107);
    AMCP::Graph::Wire_Index::add_to_index(v2 + 8, v32 + 40, &v107);
    if (*(v32 + 160) != 1)
    {
      goto LABEL_117;
    }

    v43 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(v2 + 18, &v107);
    if (v43)
    {
      v45 = v43[12];
      v44 = v43[13];
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (v45)
      {
        goto LABEL_117;
      }
    }

    v46 = operator new(0x200uLL, 0x40uLL);
    v47 = v46;
    v48 = 0;
    v46->__shared_owners_ = 0;
    v46->__shared_weak_owners_ = 0;
    v46->__vftable = &unk_1F596A550;
    *&v46[2].__shared_weak_owners_ = 0u;
    *&v46[3].__shared_owners_ = 0u;
    v46[4].std::__shared_count = 0u;
    *&v46[4].__shared_weak_owners_ = 0u;
    *&v46[5].__shared_owners_ = 0u;
    v46[6].std::__shared_count = 0u;
    *&v46[6].__shared_weak_owners_ = 0u;
    *&v46[7].__shared_owners_ = 0u;
    v46[8].std::__shared_count = 0u;
    *&v46[8].__shared_weak_owners_ = 0u;
    *&v46[9].__shared_owners_ = 0u;
    v46[10].std::__shared_count = 0u;
    *&v46[10].__shared_weak_owners_ = 0u;
    *&v46[11].__shared_owners_ = 0u;
    v46[12].std::__shared_count = 0u;
    *&v46[12].__shared_weak_owners_ = 0u;
    *&v46[13].__shared_owners_ = 0u;
    v46[14].std::__shared_count = 0u;
    *&v46[14].__shared_weak_owners_ = 0u;
    *&v46[15].__shared_owners_ = 0u;
    v46[16].std::__shared_count = 0u;
    *&v46[16].__shared_weak_owners_ = 0u;
    *&v46[17].__shared_owners_ = 0u;
    v46[18].std::__shared_count = 0u;
    *&v46[18].__shared_weak_owners_ = 0u;
    *&v46[19].__shared_owners_ = 0u;
    v46[20].std::__shared_count = 0u;
    *&v46[20].__shared_weak_owners_ = 0u;
    do
    {
      v49 = &v46[v48];
      LODWORD(v49[5].__shared_owners_) = 1;
      LODWORD(v49[5].__shared_weak_owners_) = 1065353216;
      v49[6].std::__shared_count = 0uLL;
      *&v49[6].__shared_weak_owners_ = 0uLL;
      *&v49[7].__shared_owners_ = 0uLL;
      v49[8].__vftable = 0;
      LODWORD(v49[8].__shared_owners_) = 1;
      *(&v49[8].__shared_owners_ + 4) = 0uLL;
      *(&v49[9].std::__shared_count + 4) = 0uLL;
      *(&v49[9].__shared_weak_owners_ + 4) = 0uLL;
      *&v49[10].__shared_owners_ = 0uLL;
      LODWORD(v49[11].__vftable) = 1;
      v50 = (&v46[v48 + 11].__vftable + 4);
      *(&v46[v48 + 11].__shared_owners_ + 4) = 0;
      *v50 = 0;
      v48 += 8;
      *(v50 + 13) = 0;
    }

    while (v48 != 16);
    *&v51 = v46 + 64;
    *(&v51 + 1) = v46;
    v95 = v51;
    if (SHIBYTE(v108) < 0)
    {
      std::string::__init_copy_ctor_external(buf, v107.__vftable, v107.__imp_.__imp_);
    }

    else
    {
      *buf = v107;
      *&buf[16] = v108;
    }

    *&buf[24] = v109;
    *&buf[32] = v110;
    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v115, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
    }

    else
    {
      v115 = v111;
    }

    v116 = v112;
    v117 = v113;
    *&v118.__r_.__value_.__l.__data_ = v95;
    v52 = std::hash<AMCP::Wire_Identifier>::operator()(buf);
    v53 = *(v2 + 152);
    if (!*&v53)
    {
      goto LABEL_112;
    }

    v54 = vcnt_s8(v53);
    v54.i16[0] = vaddlv_u8(v54);
    v55 = v54.u32[0];
    if (v54.u32[0] > 1uLL)
    {
      v56 = v52;
      if (v52 >= *&v53)
      {
        v56 = v52 % *&v53;
      }
    }

    else
    {
      v56 = (*&v53 - 1) & v52;
    }

    v57 = *(*(v2 + 18) + 8 * v56);
    if (!v57 || (v58 = v52, (v59 = *v57) == 0))
    {
LABEL_112:
      operator new();
    }

    while (1)
    {
      v60 = v59[1];
      if (v60 == v58)
      {
        break;
      }

      if (v55 > 1)
      {
        if (v60 >= *&v53)
        {
          v60 %= *&v53;
        }
      }

      else
      {
        v60 &= *&v53 - 1;
      }

      if (v60 != v56)
      {
        goto LABEL_112;
      }

LABEL_111:
      v59 = *v59;
      if (!v59)
      {
        goto LABEL_112;
      }
    }

    if (!std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>::operator()[abi:ne200100](v59 + 2, buf))
    {
      goto LABEL_111;
    }

    v2 = v96;
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

LABEL_117:
    if (SHIBYTE(v108) < 0)
    {
      std::string::__init_copy_ctor_external(buf, v107.__vftable, v107.__imp_.__imp_);
    }

    else
    {
      *buf = v107;
      *&buf[16] = v108;
    }

    *&buf[24] = v109;
    *&buf[32] = v110;
    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v115, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
    }

    else
    {
      v115 = v111;
    }

    v116 = v112;
    v117 = v113;
    AMCP::Wire_Description::Wire_Description(&v118, v32);
    v61 = std::hash<AMCP::Wire_Identifier>::operator()(buf);
    v62 = v61;
    v63 = *(v2 + 112);
    if (!*&v63)
    {
      goto LABEL_139;
    }

    v64 = vcnt_s8(v63);
    v64.i16[0] = vaddlv_u8(v64);
    v65 = v64.u32[0];
    if (v64.u32[0] > 1uLL)
    {
      v66 = v61;
      if (v61 >= *&v63)
      {
        v66 = v61 % *&v63;
      }
    }

    else
    {
      v66 = (*&v63 - 1) & v61;
    }

    v67 = *(*(v2 + 13) + 8 * v66);
    if (!v67 || (v68 = *v67) == 0)
    {
LABEL_139:
      operator new();
    }

    while (2)
    {
      v69 = v68[1];
      if (v69 != v62)
      {
        if (v65 > 1)
        {
          if (v69 >= *&v63)
          {
            v69 %= *&v63;
          }
        }

        else
        {
          v69 &= *&v63 - 1;
        }

        if (v69 != v66)
        {
          goto LABEL_139;
        }

LABEL_138:
        v68 = *v68;
        if (!v68)
        {
          goto LABEL_139;
        }

        continue;
      }

      break;
    }

    if (!std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>::operator()[abi:ne200100](v68 + 2, buf))
    {
      goto LABEL_138;
    }

    v99.__vftable = v125;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v99);
    if (v123)
    {
      v124 = v123;
      operator delete(v123);
    }

    this = v121;
    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }

    if (v120 < 0)
    {
      operator delete(v119);
    }

    v2 = v96;
    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v118.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v111.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v108) < 0)
    {
      operator delete(v107.__vftable);
    }

    v32 += 192;
  }

  while (v32 != v97);
}

void sub_1DE3D8F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54)
{
  if (a54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a54);
  }

  _Unwind_Resume(a1);
}

void sub_1DE3D8F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,void *>>>::operator()[abi:ne200100](1, v65);
  std::pair<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>::~pair(&STACK[0x2C0]);
  AMCP::Wire_Identifier::~Wire_Identifier(&a65);
  _Unwind_Resume(a1);
}

void sub_1DE3D90B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  *(v65 + 48) = v66;
  v70 = *(v65 + 56);
  if (v70)
  {
    *(v65 + 64) = v70;
    operator delete(v70);
  }

  if (__p)
  {
    a53 = __p;
    operator delete(__p);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&STACK[0x2C0]);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a65);
  MEMORY[0x1E12C0F00](&a56);
  if (a63 < 0)
  {
    operator delete(*v65);
  }

  if (v67)
  {
    __cxa_free_exception(v68);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a41);
  _Unwind_Resume(a1);
}

uint64_t AMCP::IO_Core::Graph_Manager::update_iocontext(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((a1 + 184), a2);
    if (v7)
    {
      v8 = v7[6];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }
    }

    *buf = &unk_1F596C4C8;
    v14 = a1;
    v15 = buf;
    AMCP::Graph::Graph::update_context((a1 + 8), a2, buf, a3);
  }

  return 0;
}

void sub_1DE3D9A84(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  *(v2 - 160) = &v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1DE3D9ABC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE3D9AB4);
}

uint64_t *std::unique_ptr<AMCP::Graph::Graph_State_Data>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(*(v2 + 232));
    std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(*(v2 + 208));
    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table((v2 + 160));
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(v2 + 120);
    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table(v2);
    MEMORY[0x1E12C1730](v3, 0x10A0C40975F6949);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void **std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 47) < 0)
      {
        operator delete(v1[3]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::Graph_Manager::update_iocontext(std::string const&,AMCP::Graph::Graph::Resource_Counts &)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_iocontext(std::string const&,AMCP::Graph::Graph::Resource_Counts &)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core13Graph_Manager16update_iocontextERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERNS_5Graph5Graph15Resource_CountsEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::update_iocontext(std::string const&,AMCP::Graph::Graph::Resource_Counts &)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_iocontext(std::string const&,AMCP::Graph::Graph::Resource_Counts &)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)>::operator()(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(*(a1 + 8) + 400);
  v5[0] = 0;
  v5[1] = 0;
  AMCP::IO_Core::Device_Timebase_Factory::demand_timebase_for_device(a3, v4, v5, a2);
}

uint64_t std::__function::__func<AMCP::IO_Core::Graph_Manager::update_iocontext(std::string const&,AMCP::Graph::Graph::Resource_Counts &)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_iocontext(std::string const&,AMCP::Graph::Graph::Resource_Counts &)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596C4C8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596C448;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596C448;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::modify_graph(AMCP::Graph_Description const&,AMCP::Modify_Graph_Destroy_List const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596C448;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, void *a2, uint64_t a3)
{
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void AMCP::IO_Core::Graph_Manager::prepare_graph_for_config_change(uint64_t *a1, void *a2, char a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v30 = a4;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(a2[50] + 40);
  if (a3)
  {
    v28 = 0;
    v29 = 0;
    v27 = &v28;
    (*(*a2 + 16))(&__p, a2);
    v12 = (*(*__p + 16))(__p);
    AMCP::Core::Broker::fetch_core(&v25, v12, a4);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    v13 = v25;
    if (v25)
    {
      simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v25);
      if (simple_required == 1634757735)
      {
        AMCP::Core::Core::get_simple_required_property<1684370979u>(&__p, v13);
        v15 = __p;
        v16 = v24;
        if (__p != v24)
        {
          v17 = __p;
          do
          {
            std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(&v27, &v28, *v17, v17);
            ++v17;
          }

          while (v17 != v16);
        }

        if (v15)
        {
          operator delete(v15);
        }
      }

      else if (simple_required == 1633969526)
      {
        std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v27, a4, &v30);
      }
    }

    v18 = v27;
    if (v27 != &v28)
    {
      do
      {
        AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(&__p, a2, *(v18 + 7));
        AMCP::IO_Core::Graph_Manager::pause_iocontexts_for_timebases(a2, &__p, a6);
        std::vector<std::shared_ptr<AMCP::Graph::Timebase>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<AMCP::Graph::Timebase>*>,std::__wrap_iter<std::shared_ptr<AMCP::Graph::Timebase>*>>(a5, *(a5 + 8), __p, v24, (v24 - __p) >> 4);
        p_p = &__p;
        std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&p_p);
        v19 = v18[1];
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
            v20 = v18[2];
            v21 = *v20 == v18;
            v18 = v20;
          }

          while (!v21);
        }

        v18 = v20;
      }

      while (v20 != &v28);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v28);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  for (i = a2[25]; i; i = *i)
  {
    if (*(*(i + 5) + 16) == 3)
    {
      std::vector<std::string>::push_back[abi:ne200100](&v27, i + 1);
    }
  }

  (*(*a2 + 48))(&__p, a2);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, __p, v24, (v24 - __p) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 3, v27, v28, 0xAAAAAAAAAAAAAAABLL * (v28 - v27));
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  __p = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1DE3DA584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a15);
  _Unwind_Resume(a1);
}

void AMCP::Core::Core::get_simple_required_property<1684370979u>(uint64_t *a1, AMCP::Core::Core *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  strcpy(buf, "#vedbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v11, a2, buf);
  if ((v13 & 1) == 0)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 4;
      strcpy(__p, "dev#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v15 = 1024;
      v16 = 391;
      v17 = 2080;
      v18 = "optional_value.operator BOOL() == true";
      v19 = 2080;
      v20 = __p;
      v21 = 1024;
      v22 = 1735159650;
      v23 = 1024;
      v24 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = v11;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, v11, v12, (v12 - v11) >> 2);
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1DE3DA7FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(AMCP::IO_Core::Graph_Manager *this, void *a2, unsigned int a3)
{
  v62 = *MEMORY[0x1E69E9840];
  *buf = a3;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(&v41, v42, a3, buf);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  (*(*a2 + 16))(buf, a2);
  v6 = (*(**buf + 16))(*buf);
  AMCP::Core::Broker::fetch_core(&v40, v6, a3);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v7 = v40;
  if (v40)
  {
    if (AMCP::Core::Core::get_simple_required_property<1650682995u>(v40) == 1633773415)
    {
      v36 = 0x676C6F6261677270;
      v37 = 0;
      operation = AMCP::Core::Core::find_operation(&v55, v7, &v36);
      if (!v55)
      {
        v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v29 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          v32 = *v31;
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        else
        {
          v32 = *v31;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          *&buf[12] = 1024;
          *&buf[14] = 202;
          _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v54);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v46, "Operation does not have requested function", v33);
        std::runtime_error::runtime_error(&v47, &v46);
        std::runtime_error::runtime_error(&v48, &v47);
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = -1;
        v48.__vftable = &unk_1F5992170;
        v49 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v48);
        v59 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::vector<unsigned int>, Argument_Types = <>]";
        v60 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v61 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
      }

      AMCP::Core::Operation::call_function<std::vector<unsigned int>>(&v38, v55);
      v9 = this;
      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      v11 = v38;
      v10 = v39;
      if (v38 != v39)
      {
        do
        {
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(&v41, v42, *v11, v11);
          ++v11;
        }

        while (v11 != v10);
        v11 = v38;
      }

      this = v9;
      if (v11)
      {
        v39 = v11;
        operator delete(v11);
      }
    }

    v12 = v41;
    if (v41 != v42)
    {
      v13 = *(&v40 + 1);
      v34 = this;
      do
      {
        v14 = *(v12 + 7);
        (*(*a2 + 16))(&v48, a2);
        v15 = (*(v48.~runtime_error + 2))(v48.__vftable);
        AMCP::Core::Broker::fetch_core(buf, v15, v14);
        v35 = *buf;
        v40 = *buf;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v48.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48.__imp_.__imp_);
        }

        v13 = *(&v35 + 1);
        if (v35)
        {
          strcpy(buf, " diubolg");
          buf[9] = 0;
          *&buf[10] = 0;
          AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&v46, v35, buf);
          if (v46.__r_.__value_.__s.__data_[8] == 1)
          {
            v16 = v46.__r_.__value_.__r.__words[0];
            if (!v46.__r_.__value_.__r.__words[0])
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v17 = a2[50];
            applesauce::CF::convert_to<std::string,0>(__p, v46.__r_.__value_.__l.__data_);
            v48.__vftable = 0;
            v48.__imp_.__imp_ = 0;
            v49 = 0;
            for (i = *(v17 + 16); i; i = *i)
            {
              (*(*i[5] + 24))(buf);
              v19 = v58;
              if ((v58 & 0x80u) == 0)
              {
                v20 = v58;
              }

              else
              {
                v20 = *&buf[8];
              }

              v21 = v45;
              if ((v45 & 0x80u) != 0)
              {
                v21 = __p[1];
              }

              if (v20 == v21)
              {
                if ((v58 & 0x80u) == 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                if ((v45 & 0x80u) == 0)
                {
                  v23 = __p;
                }

                else
                {
                  v23 = __p[0];
                }

                v24 = memcmp(v22, v23, v20) == 0;
                if ((v19 & 0x80000000) == 0)
                {
LABEL_36:
                  if (v24)
                  {
                    goto LABEL_40;
                  }

                  continue;
                }
              }

              else
              {
                v24 = 0;
                if ((v58 & 0x80000000) == 0)
                {
                  goto LABEL_36;
                }
              }

              operator delete(*buf);
              if (v24)
              {
LABEL_40:
                std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](&v48.__vftable, (i + 5));
              }
            }

            if (v45 < 0)
            {
              operator delete(__p[0]);
            }

            std::vector<std::shared_ptr<AMCP::Graph::Timebase>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<AMCP::Graph::Timebase>*>,std::__wrap_iter<std::shared_ptr<AMCP::Graph::Timebase>*>>(v34, *(v34 + 1), v48.__vftable, v48.__imp_.__imp_, (v48.__imp_.__imp_ - v48.__vftable) >> 4);
            *buf = &v48;
            std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
            CFRelease(v16);
          }
        }

        v25 = v12[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v12[2];
            v27 = *v26 == v12;
            v12 = v26;
          }

          while (!v27);
        }

        v12 = v26;
      }

      while (v26 != v42);
    }
  }

  if (*(&v40 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v42[0]);
}

void sub_1DE3DAE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, std::runtime_error a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v42 - 192);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a39);
  std::runtime_error::~runtime_error(&a38);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (v40)
  {
    __cxa_free_exception(v39);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v42 - 209));
  v44 = *(v42 - 200);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  *(v42 - 192) = v41;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v42 - 192));
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a23);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Graph_Manager::pause_iocontexts_for_timebases(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  AMCP::Graph::Graph::get_nodes(&v45, a1[25]);
  v7 = v45;
  v6 = v46;
  if (v45 != v46)
  {
    while (1)
    {
      (*(*a1 + 16))(buf, a1);
      v8 = (*(**buf + 16))(*buf);
      v9 = *(*v7 + 176);
      if (v9)
      {
        v10 = *(v9 + 8);
      }

      else
      {
        v10 = 0;
      }

      AMCP::Core::Broker::fetch_core(&v43, v8, v10);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      v11 = v43;
      if (!v43)
      {
        goto LABEL_57;
      }

      strcpy(buf, "btuibolg");
      buf[9] = 0;
      *&buf[10] = 0;
      if (!AMCP::Core::Core::call_operation_function<BOOL,std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&>(v43, buf, a2))
      {
        goto LABEL_57;
      }

      strcpy(buf, "diunbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::call_operation_function<applesauce::CF::StringRef>(&cf, v11, buf);
      strcpy(buf, "rsoibolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v12 = AMCP::Core::Core::call_operation_function<BOOL>(v11, buf);
      v13 = *(*v7 + 176);
      v14 = v13 ? *(v13 + 8) : 0;
      *buf = v14;
      if (std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(a3, v14, buf))
      {
        break;
      }

LABEL_55:
      if (cf)
      {
        CFRelease(cf);
      }

LABEL_57:
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      v7 += 16;
      if (v7 == v6)
      {
        goto LABEL_60;
      }
    }

    strcpy(buf, "suapbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    AMCP::Core::Core::call_operation_function<void,AMCP::Pause_Behavior>(v11, buf, v12 ^ 1);
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      v15 = AMCP::Log::AMCP_Scope_Registry::initialize(v15);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = *(v17 + 16);
    switch(v19)
    {
      case 1:
        v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v28 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v15);
        }

        v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v31 = *v30;
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        else
        {
          v31 = *v30;
        }

        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, cf);
        v33 = __p;
        if (v41 < 0)
        {
          v33 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "Graph_Manager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 689;
        v48 = 2080;
        v49 = v33;
        v34 = v31;
        v35 = OS_LOG_TYPE_DEFAULT;
        break;
      case 2:
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v15);
        }

        v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v27 = *v26;
        }

        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_53;
        }

        if (!cf)
        {
          v37 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v37, "Could not construct");
          __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, cf);
        v32 = __p;
        if (v41 < 0)
        {
          v32 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "Graph_Manager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 689;
        v48 = 2080;
        v49 = v32;
        _os_log_debug_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_DEBUG, "%32s:%-5d Paused IOContext %s", buf, 0x1Cu);
        goto LABEL_51;
      case 3:
        v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v20 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v15);
        }

        v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = *v22;
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        else
        {
          v23 = *v22;
        }

        if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          goto LABEL_53;
        }

        if (!cf)
        {
          v38 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v38, "Could not construct");
          __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, cf);
        v36 = __p;
        if (v41 < 0)
        {
          v36 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "Graph_Manager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 689;
        v48 = 2080;
        v49 = v36;
        v34 = v23;
        v35 = OS_LOG_TYPE_INFO;
        break;
      default:
        goto LABEL_53;
    }

    _os_log_impl(&dword_1DE1F9000, v34, v35, "%32s:%-5d Paused IOContext %s", buf, 0x1Cu);
LABEL_51:
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_53:
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    goto LABEL_55;
  }

LABEL_60:
  *buf = &v45;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_1DE3DB52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, void **a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  applesauce::CF::StringRef::~StringRef(&a15);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  a21 = &a18;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<AMCP::Graph::Timebase>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<AMCP::Graph::Timebase>*>,std::__wrap_iter<std::shared_ptr<AMCP::Graph::Timebase>*>>(void *result, char *a2, uint64_t *a3, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v9 = result[1];
  v10 = result[2];
  if (a5 > (v10 - v9) >> 4)
  {
    v11 = *result;
    v12 = a5 + ((v9 - *result) >> 4);
    if (v12 >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v10 - v11;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v34 = result;
    if (v14)
    {
      std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v14);
    }

    v22 = 16 * (&a2[-v11] >> 4);
    v33 = 0;
    v23 = (v22 + 16 * a5);
    v24 = v22;
    do
    {
      v25 = a3[1];
      *v24 = *a3;
      *(v24 + 1) = v25;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      v24 += 16;
      a3 += 2;
    }

    while (v24 != v23);
    memcpy(v23, a2, result[1] - a2);
    v26 = *result;
    v27 = &v23[result[1] - a2];
    result[1] = a2;
    v28 = (a2 - v26);
    v29 = (v22 - (a2 - v26));
    memcpy(v29, v26, v28);
    v30 = *result;
    *result = v29;
    result[1] = v27;
    v31 = result[2];
    result[2] = v33;
    v32[2] = v30;
    v33 = v31;
    v32[0] = v30;
    v32[1] = v30;
    std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(v32);
    return;
  }

  v15 = (v9 - a2) >> 4;
  if (v15 >= a5)
  {
    std::vector<std::shared_ptr<AMCP::Graph::Timebase>>::__move_range(result, a2, v9, &a2[16 * a5]);
    v21 = &a3[2 * a5];
    v20 = a3;
    goto LABEL_20;
  }

  v16 = a3 + v9 - a2;
  v17 = result[1];
  if (v16 != a4)
  {
    v17 = result[1];
    v18 = a3 + v9 - a2;
    do
    {
      v19 = *(v18 + 1);
      *v17 = *v18;
      v17[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v18 += 16;
      v17 += 2;
    }

    while (v18 != a4);
  }

  result[1] = v17;
  if (v15 >= 1)
  {
    std::vector<std::shared_ptr<AMCP::Graph::Timebase>>::__move_range(result, a2, v9, &a2[16 * a5]);
    v20 = a3;
    v21 = v16;
LABEL_20:

    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<AMCP::Graph::Timebase> *,std::shared_ptr<AMCP::Graph::Timebase> *,std::shared_ptr<AMCP::Graph::Timebase> *>(v20, v21, a2);
  }
}

void std::vector<std::shared_ptr<AMCP::Graph::Timebase>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = a2 + v4 - a4;
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 16;
    *v6 = 0;
    *(v6 + 8) = 0;
    v6 += 16;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 16;
    do
    {
      v10 = (v9 + v5);
      v11 = *(v9 + v5);
      *v10 = 0;
      v10[1] = 0;
      v12 = *v8;
      *(v8 - 1) = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v8 -= 2;
      v5 -= 16;
    }

    while (v5);
  }
}

void std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<AMCP::Graph::Timebase> *,std::shared_ptr<AMCP::Graph::Timebase> *,std::shared_ptr<AMCP::Graph::Timebase> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }
}

uint64_t AMCP::Core::Core::call_operation_function<BOOL,std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&>(AMCP::Address *a1, unsigned int *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 198;
      v48 = 2080;
      v49 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v33, a1, a2);
  v7 = v33;
  if (!v33)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "Operation does not have requested function", v31);
    std::runtime_error::runtime_error(&v37, &v36);
    std::runtime_error::runtime_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5992170;
    v39 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
    v50 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = BOOL, Argument_Types = <const std::vector<std::shared_ptr<AMCP::Graph::Timebase>> &>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v52 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v8 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "Operation does not have requested function", v32);
    std::runtime_error::runtime_error(&v37, &v36);
    std::runtime_error::runtime_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5992170;
    v39 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <const std::vector<std::shared_ptr<AMCP::Graph::Timebase>> &>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>>(), (v9 = (*(v10 + 7))(4, v10 + 24, 0, buf)) == 0))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "Invalid cast", v30);
    std::runtime_error::runtime_error(&v37, &v36);
    std::runtime_error::runtime_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5992170;
    v39 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <const std::vector<std::shared_ptr<AMCP::Graph::Timebase>> &>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v11 = *(v9 + 3);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v12 = (*(*v11 + 48))(v11, a3);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  return v12;
}

void sub_1DE3DC044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Device_Node_State>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 184;
  do
  {
    v4 = *(v3 + v2);
    if (v4)
    {
      operator delete(v4);
    }

    v2 -= 24;
  }

  while (v2 != -48);
  v5 = *(a1 + 144);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = a1 + 24;
  v8 = 88;
  do
  {
    v9 = *(a1 + v8);
    if (v9)
    {
      do
      {
        v10 = *v9;
        std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,AMCP::IO_Core::Stream_Connection>,0>((v9 + 2));
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v8 -= 40;
    v11 = *(v7 + v8);
    *(v7 + v8) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  while (v8 != 8);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Device_Node_State>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598DBF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>>>::erase(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != a2);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v8 = *(*a2 + 8);
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

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= *&v2 - 1;
    }

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *a2;
    }
  }

  *v6 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, a2);
}

void AMCP::IO_Core::Graph_Manager::update_graph_after_config_change(uint64_t *a1, unsigned int a2, void *a3, char a4, uint64_t a5)
{
  v126 = *MEMORY[0x1E69E9840];
  v106 = 0u;
  v107 = 0u;
  *v105 = 0u;
  (*(*a1 + 16))(buf);
  v9 = a1[38];
  v8 = a1[39];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v104[0] = *buf;
  v104[1] = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  v104[2] = v9;
  v104[3] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  (*(*a1 + 56))(&v102, a1);
  v101[0] = 0;
  v101[1] = 0;
  v100 = v101;
  v10 = *a3;
  v90 = a3 + 1;
  if (*a3 == a3 + 1)
  {
LABEL_140:
    v124 = 0u;
    memset(buf, 0, sizeof(buf));
    AMCP::IO_Core::Graph_Manager::modify_graph_internal(&v95, a1, v105, buf);
  }

LABEL_10:
  v12 = v102;
  v11 = v103;
  for (i = v103; ; v11 = i)
  {
    if (v12 == v11)
    {
      v65 = v10[1];
      if (v65)
      {
        do
        {
          v66 = v65;
          v65 = *v65;
        }

        while (v65);
      }

      else
      {
        do
        {
          v66 = v10[2];
          v67 = *v66 == v10;
          v10 = v66;
        }

        while (!v67);
      }

      v10 = v66;
      if (v66 == v90)
      {
        goto LABEL_140;
      }

      goto LABEL_10;
    }

    if (*v12 == *(v10 + 7))
    {
      v13 = 1;
    }

    else
    {
      v14 = *a5;
      v15 = *(a5 + 8);
      if (*a5 != v15)
      {
        do
        {
          if (*v14 == *v12)
          {
            goto LABEL_18;
          }

          ++v14;
        }

        while (v14 != v15);
        v14 = *(a5 + 8);
      }

LABEL_18:
      v13 = v14 == v15;
    }

    (*(*a1 + 16))(buf, a1);
    v16 = (*(**buf + 16))(*buf);
    AMCP::Core::Broker::fetch_core(&v111, v16, *v12);
    v17 = *&buf[8];
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v18 = v111;
    if (!v111)
    {
      v68 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v68 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v17);
      }

      v70 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v69 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v69)
      {
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        v71 = *v70;
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

      else
      {
        v71 = *v70;
      }

      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Graph_Manager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 447;
        *&buf[18] = 2080;
        *&buf[20] = "not (clock_core != nullptr)";
        _os_log_error_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v114);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(v122, "", v72);
      std::logic_error::logic_error(&v95, v122);
      v95.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&__p, &v95);
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = -1;
      __p.__vftable = &unk_1F5991430;
      v117 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
      *&v124 = "void AMCP::IO_Core::Graph_Manager::update_graph_after_config_change(Object_ID, std::set<Object_ID>, Config_Change_Flag, const Previous_Devices &)";
      *(&v124 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Graph_Manager.cpp";
      v125 = 447;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v113);
    }

    AMCP::Core::Core::get_simple_required_property<1969841184u>(&v99, v111);
    simple_required = AMCP::Core::Core::get_simple_required_property<1668047219u>(v18);
    v115.__vftable = 0;
    v115.__imp_.__imp_ = 0;
    if (!v13)
    {
      v93 = 0;
      goto LABEL_62;
    }

    __p.__vftable = 0x676C6F62656E676ELL;
    LODWORD(__p.__imp_.__imp_) = 0;
    AMCP::Core::Core::find_operation(buf, v18, &__p);
    v20 = *buf;
    if (*buf)
    {
      v21 = AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>();
      v22 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v20, v21) != 0;
    }

    else
    {
      v22 = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v93 = 0;
    if (v22)
    {
      v23 = *v12;
      v24 = v112;
      if (v112)
      {
        atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v108 = 0x676C6F62656E676ELL;
      v109 = 0;
      operation = AMCP::Core::Core::find_operation(&v114, v18, &v108);
      v26 = v114.__r_.__value_.__r.__words[0];
      if (!v114.__r_.__value_.__r.__words[0])
      {
        v82 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v82 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v84 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v83 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          v85 = *v84;
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        else
        {
          v85 = *v84;
        }

        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          *&buf[12] = 1024;
          *&buf[14] = 202;
          _os_log_error_impl(&dword_1DE1F9000, v85, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v110);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(v122, "Operation does not have requested function", v88);
        std::runtime_error::runtime_error(&v95, v122);
        std::runtime_error::runtime_error(&__p, &v95);
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = -1;
        __p.__vftable = &unk_1F5992170;
        v117 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
        *&v124 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::shared_ptr<AMCP::Core::Engine>, Argument_Types = <>]";
        *(&v124 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v125 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v113);
      }

      v27 = AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>();
      v28 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v26, v27);
      if (!v28)
      {
        v78 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v78 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v80 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v79 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          v81 = *v80;
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }

        else
        {
          v81 = *v80;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          *&buf[12] = 1024;
          *&buf[14] = 154;
          _os_log_error_impl(&dword_1DE1F9000, v81, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v110);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(v122, "Operation does not have requested function", v87);
        std::runtime_error::runtime_error(&v95, v122);
        std::runtime_error::runtime_error(&__p, &v95);
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = -1;
        __p.__vftable = &unk_1F5992170;
        v117 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
        *&v124 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::shared_ptr<AMCP::Core::Engine>, Argument_Types = <>]";
        *(&v124 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v125 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v113);
      }

      v29 = v28;
      if (!*(v28 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>(), (v28 = (*(v29 + 7))(4, v29 + 24, 0, buf)) == 0))
      {
        v74 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v74 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v28);
        }

        v76 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v75 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          v77 = *v76;
          std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        }

        else
        {
          v77 = *v76;
        }

        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          *&buf[12] = 1024;
          *&buf[14] = 161;
          _os_log_error_impl(&dword_1DE1F9000, v77, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v110);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(v122, "Invalid cast", v86);
        std::runtime_error::runtime_error(&v95, v122);
        std::runtime_error::runtime_error(&__p, &v95);
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = -1;
        __p.__vftable = &unk_1F5992170;
        v117 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
        *&v124 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::shared_ptr<AMCP::Core::Engine>, Argument_Types = <>]";
        *(&v124 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v125 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v113);
      }

      v30 = *(v28 + 3);
      if (!v30)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v30 + 48))(&v98);
      v91 = v24;
      v31 = a5;
      if (v114.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v114.__r_.__value_.__l.__size_);
      }

      v32 = a1[46];
      if (!*&v32)
      {
        goto LABEL_55;
      }

      v33 = vcnt_s8(v32);
      v33.i16[0] = vaddlv_u8(v33);
      if (v33.u32[0] > 1uLL)
      {
        v34 = v23;
        if (*&v32 <= v23)
        {
          v34 = v23 % v32.i32[0];
        }
      }

      else
      {
        v34 = (v32.i32[0] - 1) & v23;
      }

      v35 = *(a1[45] + 8 * v34);
      if (!v35 || (v36 = *v35) == 0)
      {
LABEL_55:
        operator new();
      }

      while (1)
      {
        v37 = v36[1];
        if (v37 == v23)
        {
          if (*(v36 + 4) == v23)
          {
            a5 = v31;
            v39 = v98.__vftable;
            imp = v98.__imp_.__imp_;
            if (v98.__imp_.__imp_)
            {
              atomic_fetch_add_explicit(v98.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
            }

            v40 = v36[4];
            v36[3] = v39;
            v36[4] = imp;
            if (v40)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            }

            v41 = v98;
            v98.__vftable = 0;
            v98.__imp_.__imp_ = 0;
            v93 = v41;
            v115 = v41;
            if (v91)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v91);
            }

            break;
          }
        }

        else
        {
          if (v33.u32[0] > 1uLL)
          {
            if (v37 >= *&v32)
            {
              v37 %= *&v32;
            }
          }

          else
          {
            v37 &= *&v32 - 1;
          }

          if (v37 != v34)
          {
            goto LABEL_55;
          }
        }

        v36 = *v36;
        if (!v36)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_62:
    v42 = v99;
    if (!v99)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v43 = a1[50];
    applesauce::CF::convert_to<std::string,0>(buf, v99);
    AMCP::IO_Core::Device_Timebase_Factory::demand_timebase_for_device(v96, v43, &v115, buf);
    if (v97)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v97);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v44 = v93.__imp_.__imp_;
    if (simple_required != 1633969526)
    {
      goto LABEL_127;
    }

    if (!v13)
    {
      goto LABEL_120;
    }

    v45 = *v12;
    if (v93.__imp_.__imp_)
    {
      atomic_fetch_add_explicit(v93.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
    }

    v46 = a1[41];
    if (!*&v46)
    {
      goto LABEL_87;
    }

    v47 = vcnt_s8(v46);
    v47.i16[0] = vaddlv_u8(v47);
    if (v47.u32[0] > 1uLL)
    {
      v48 = v45;
      if (*&v46 <= v45)
      {
        v48 = v45 % v46.i32[0];
      }
    }

    else
    {
      v48 = (v46.i32[0] - 1) & v45;
    }

    v49 = *(a1[40] + 8 * v48);
    if (!v49 || (v50 = *v49) == 0)
    {
LABEL_87:
      operator new();
    }

    while (1)
    {
      v51 = v50[1];
      if (v51 == v45)
      {
        break;
      }

      if (v47.u32[0] > 1uLL)
      {
        if (v51 >= *&v46)
        {
          v51 %= *&v46;
        }
      }

      else
      {
        v51 &= *&v46 - 1;
      }

      if (v51 != v48)
      {
        goto LABEL_87;
      }

LABEL_86:
      v50 = *v50;
      if (!v50)
      {
        goto LABEL_87;
      }
    }

    if (*(v50 + 4) != v45)
    {
      goto LABEL_86;
    }

    if (a4)
    {
      goto LABEL_87;
    }

    v59 = v50[4];
    v94[0] = v50[3];
    v94[1] = v59;
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v93.__imp_.__imp_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v93.__imp_.__imp_);
    }

    if (v93.__vftable)
    {
      AMCP::IO_Core::Device_Node_Factory::create_node_descriptions_from_device(buf, v104, a1 + 50, *v12, v94);
      v52 = *v12;
      v53 = a1[41];
      if (!*&v53)
      {
        goto LABEL_107;
      }

      v54 = vcnt_s8(v53);
      v54.i16[0] = vaddlv_u8(v54);
      if (v54.u32[0] > 1uLL)
      {
        v55 = *v12;
        if (*&v53 <= v52)
        {
          v55 = v52 % v53.i32[0];
        }
      }

      else
      {
        v55 = (v53.i32[0] - 1) & v52;
      }

      v56 = *(a1[40] + 8 * v55);
      if (!v56 || (v57 = *v56) == 0)
      {
LABEL_107:
        operator new();
      }

      while (1)
      {
        v58 = v57[1];
        if (v58 == v52)
        {
          if (*(v57 + 4) == v52)
          {
            v61 = *&buf[24];
            v60 = v124;
            if (v124)
            {
              atomic_fetch_add_explicit((v124 + 8), 1uLL, memory_order_relaxed);
            }

            v62 = v57[4];
            v57[3] = v61;
            v57[4] = v60;
            if (v62)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v62);
            }

            __p.__vftable = 0;
            __p.__imp_.__imp_ = 0;
            v117 = 0;
            std::vector<AMCP::Node_Description>::__init_with_size[abi:ne200100]<AMCP::Node_Description*,AMCP::Node_Description*>(&__p, *buf, *&buf[8], 0xEEEEEEEEEEEEEEEFLL * ((*&buf[8] - *buf) >> 3));
            std::vector<AMCP::Node_Description>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AMCP::Node_Description*>,std::__wrap_iter<AMCP::Node_Description*>>(v105, *v105, __p.__vftable, __p.__imp_.__imp_, 0xEEEEEEEEEEEEEEEFLL * ((__p.__imp_.__imp_ - __p.__vftable) >> 3));
            *v122 = &__p;
            std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](v122);
            if (v124)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v124);
            }

            __p.__vftable = buf;
            std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&__p);
            break;
          }
        }

        else
        {
          if (v54.u32[0] > 1uLL)
          {
            if (v58 >= *&v53)
            {
              v58 %= *&v53;
            }
          }

          else
          {
            v58 &= *&v53 - 1;
          }

          if (v58 != v55)
          {
            goto LABEL_107;
          }
        }

        v57 = *v57;
        if (!v57)
        {
          goto LABEL_107;
        }
      }
    }

    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v59);
    }

LABEL_120:
    v63 = 0;
    do
    {
      v64 = v63;
      AMCP::create_device_node_uid_from_device_uid_and_direction(&v99, v63, buf);
      AMCP::IO_Core::Device_Timebase_Factory::demand_timebase_for_device(&__p, a1[50], &v115, buf);
      if (__p.__imp_.__imp_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__imp_.__imp_);
      }

      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v100, buf, buf);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v63 = 1;
    }

    while ((v64 & 1) == 0);
    v44 = v115.__imp_.__imp_;
LABEL_127:
    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      v42 = v99;
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (v112)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v112);
    }

    ++v12;
  }
}