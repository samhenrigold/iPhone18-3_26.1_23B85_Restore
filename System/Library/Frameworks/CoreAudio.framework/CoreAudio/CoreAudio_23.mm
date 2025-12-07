void std::vector<AMCP::Wire_Identifier>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 80;
        std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<AMCP::Wire_Identifier>::__emplace_back_slow_path<AMCP::Wire_Identifier const&>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](v6);
  }

  v7 = 80 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 24) = v9;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v10 = *(a2 + 40);
    *(v7 + 56) = *(a2 + 7);
    *(v7 + 40) = v10;
  }

  v11 = *(a2 + 8);
  *(v7 + 72) = *(a2 + 18);
  *(v7 + 64) = v11;
  *&v20 = v20 + 80;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(*a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(&v18);
  return v17;
}

void sub_1DE3A18F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 0;
      v7 = *(v5 + 24);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 24) = v7;
      v8 = *(v5 + 40);
      *(a3 + 56) = *(v5 + 56);
      *(a3 + 40) = v8;
      *(v5 + 48) = 0;
      *(v5 + 56) = 0;
      *(v5 + 40) = 0;
      v9 = *(v5 + 64);
      *(a3 + 72) = *(v5 + 72);
      *(a3 + 64) = v9;
      v5 += 80;
      a3 += 80;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v4);
      v4 += 80;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::vector<AMCP::Wire_Identifier>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::vector<AMCP::Wire_Identifier>>,0>(uint64_t a1)
{
  v3 = (a1 + 40);
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void AMCP::Graph::Wire_Index::remove_from_index(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a1, a2);
  if (!v14)
  {
    return;
  }

  v5 = v14[7];
  v4 = v14[8];
  if (v5 == v4)
  {
    v7 = v14[7];
LABEL_9:
    if (v7 != v4)
    {
      while (v4 != v7)
      {
        v4 -= 80;
        std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v4);
      }

      v14[8] = v7;
    }

    return;
  }

  v6 = 0;
  while (1)
  {
    v7 = &v5[v6];
    v18 = &v5[v6];
    v19 = &v5[v6 + 24];
    v20 = &v5[v6 + 32];
    v15 = a3;
    v16 = a3 + 24;
    v17 = a3 + 32;
    if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v18, &v15))
    {
      v18 = (v7 + 5);
      v19 = (v7 + 8);
      v20 = (v7 + 9);
      v15 = a3 + 40;
      v16 = a3 + 64;
      v17 = a3 + 72;
      if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v18, &v15))
      {
        break;
      }
    }

    v6 += 80;
    if (&v5[v6] == v4)
    {
      return;
    }
  }

  if (v7 != v4)
  {
    if (v7 + 10 != v4)
    {
      v8 = &v5[v6 + 152];
      do
      {
        v18 = (v8 - 72);
        v19 = (v8 - 48);
        v20 = (v8 - 40);
        v15 = a3;
        v16 = a3 + 24;
        v17 = a3 + 32;
        if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v18, &v15) || (v18 = (v8 - 32), v19 = (v8 - 8), v20 = v8, v15 = a3 + 40, v16 = a3 + 64, v17 = a3 + 72, !std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v18, &v15)))
        {
          if (*(v7 + 23) < 0)
          {
            operator delete(*v7);
          }

          v9 = *(v8 - 72);
          v7[2] = *(v8 - 7);
          *v7 = v9;
          *(v8 - 49) = 0;
          *(v8 - 72) = 0;
          v10 = *(v8 - 10);
          v7[3] = *(v8 - 6);
          *(v7 + 8) = v10;
          if (*(v7 + 63) < 0)
          {
            operator delete(v7[5]);
          }

          v11 = *(v8 - 2);
          v7[7] = *(v8 - 2);
          *(v7 + 5) = v11;
          *(v8 - 9) = 0;
          *(v8 - 32) = 0;
          v12 = *(v8 - 1);
          *(v7 + 18) = *v8;
          v7[8] = v12;
          v7 += 10;
        }

        v13 = v8 + 8;
        v8 += 80;
      }

      while (v13 != v4);
      v4 = v14[8];
    }

    goto LABEL_9;
  }
}

void AMCP::Graph::Wire_Index::get_wires_for_terminal(void **a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a2, a3);
  if (v5)
  {
    v6 = v5[7];
    v7 = v5[8];
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        v9 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 5, v6);
        if (v9)
        {
          v10 = v9 + 12;
          v11 = a1[2];
          if (v8 >= v11)
          {
            v12 = *a1;
            v13 = v8 - *a1;
            v14 = (v13 >> 3) + 1;
            if (v14 >> 61)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v15 = v11 - v12;
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
              std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v16);
            }

            v17 = (8 * (v13 >> 3));
            *v17 = v10;
            v8 = (v17 + 1);
            memcpy(0, v12, v13);
            *a1 = 0;
            a1[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          else
          {
            *v8 = v10;
            v8 += 8;
          }

          a1[1] = v8;
        }

        v6 += 80;
      }

      while (v6 != v7);
    }
  }
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a2, a3);
  if (v5)
  {
    v6 = v5[7];
    v7 = v5[8];
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        v9 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 5, v6);
        if (v9)
        {
          v10 = v9 + 12;
          v11 = a1[2];
          if (v8 >= v11)
          {
            v12 = *a1;
            v13 = v8 - *a1;
            v14 = (v13 >> 3) + 1;
            if (v14 >> 61)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v15 = v11 - v12;
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

            v17 = (8 * (v13 >> 3));
            *v17 = v10;
            v8 = (v17 + 1);
            memcpy(0, v12, v13);
            *a1 = 0;
            a1[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          else
          {
            *v8 = v10;
            v8 += 8;
          }

          a1[1] = v8;
        }

        v6 += 80;
      }

      while (v6 != v7);
    }
  }
}

void sub_1DE3A1F24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3A22BC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__deallocate_node(char *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = *(v1 + 13);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      if (v1[79] < 0)
      {
        operator delete(*(v1 + 7));
      }

      if (v1[39] < 0)
      {
        operator delete(*(v1 + 2));
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__deallocate_node(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      AMCP::Graph::Graph_Wire::~Graph_Wire((v1 + 12));
      if (*(v1 + 79) < 0)
      {
        operator delete(v1[7]);
      }

      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::vector<AMCP::Wire_Identifier>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void AMCP::Graph::Wire_Index::get_wires(AMCP::Graph::Wire_Index *this, uint64_t a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[7];
    v6 = i[8];
    while (v5 != v6)
    {
      v7 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>((a2 + 40), v5);
      if (v7)
      {
        AMCP::Graph::Graph_Wire::get_description(v8, (v7 + 12));
        std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__emplace_unique_key_args<AMCP::Wire_Description,AMCP::Wire_Description>(this, v8, v8);
        v17 = &v16;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }

        if (v12)
        {
          v13 = v12;
          operator delete(v12);
        }

        if (v11 < 0)
        {
          operator delete(v10);
        }

        if (v9 < 0)
        {
          operator delete(v8[0]);
        }
      }

      v5 += 80;
    }
  }
}

uint64_t *std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__emplace_unique_key_args<AMCP::Wire_Description,AMCP::Wire_Description>(float *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::hash<AMCP::Terminal_Identifier>::operator()(a2);
  v6 = std::hash<AMCP::Terminal_Identifier>::operator()(a2 + 40);
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  if (v7 == v8)
  {
    v11 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v7++;
      v9 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v10) ^ ((0xC6A4A7935BD1E995 * v10) >> 47))) ^ v9);
    }

    while (v7 != v8);
    v11 = 0xC6A4A7935BD1E995 * v9;
  }

  v12 = *(a2 + 128);
  v47 = *(a2 + 132);
  v46 = *(a2 + 136);
  v43 = *(a2 + 140);
  v41 = *(a2 + 148);
  v42 = *(a2 + 144);
  v44 = *(a2 + 156);
  v45 = *(a2 + 152);
  v40 = *(a2 + 160);
  v13 = 3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))) ^ (3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47)) + 3864292196u))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v12) ^ ((0xC6A4A7935BD1E995 * v12) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v47) ^ ((0xC6A4A7935BD1E995 * v47) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v46) ^ ((0xC6A4A7935BD1E995 * v46) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v43) ^ ((0xC6A4A7935BD1E995 * v43) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v42) ^ ((0xC6A4A7935BD1E995 * v42) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v41) ^ ((0xC6A4A7935BD1E995 * v41) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v45) ^ ((0xC6A4A7935BD1E995 * v45) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v44) ^ ((0xC6A4A7935BD1E995 * v44) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v40) ^ ((0xC6A4A7935BD1E995 * v40) >> 47))));
  v14 = *(a2 + 168);
  v15 = *(a2 + 176);
  v49 = v14;
  if (v14 == v15)
  {
    v18 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = std::__string_hash<char>::operator()[abi:ne200100](v14);
      v16 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v17) ^ ((0xC6A4A7935BD1E995 * v17) >> 47))) ^ v16);
      v14 += 24;
    }

    while (v14 != v15);
    v18 = 0xC6A4A7935BD1E995 * v16;
  }

  v19 = 3864292196u - 0x395B586CA42E166BLL * (v13 ^ (0xC6A4A7935BD1E995 * (v18 ^ (v18 >> 47))));
  v20 = *(a1 + 2);
  if (!*&v20)
  {
    goto LABEL_49;
  }

  v39 = v12;
  v21 = vcnt_s8(v20);
  v21.i16[0] = vaddlv_u8(v21);
  v22 = v21.u32[0];
  if (v21.u32[0] > 1uLL)
  {
    v23 = v19;
    if (v19 >= *&v20)
    {
      v23 = v19 % *&v20;
    }
  }

  else
  {
    v23 = (*&v20 - 1) & v19;
  }

  v24 = *(*a1 + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_49:
    operator new();
  }

  __s2 = *(a2 + 80);
  __n = *(a2 + 88) - __s2;
  v36 = *(a2 + 104);
  v37 = *(a2 + 112) - v36;
  v35 = v15 - v49;
  while (1)
  {
    v26 = v25[1];
    if (v26 == v19)
    {
      break;
    }

    if (v22 > 1)
    {
      if (v26 >= *&v20)
      {
        v26 %= *&v20;
      }
    }

    else
    {
      v26 &= *&v20 - 1;
    }

    if (v26 != v23)
    {
      goto LABEL_49;
    }

LABEL_48:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_49;
    }
  }

  v53 = (v25 + 2);
  v54 = v25 + 5;
  v55 = v25 + 6;
  v50 = a2;
  v51 = a2 + 24;
  v52 = a2 + 32;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v53, &v50))
  {
    goto LABEL_48;
  }

  v53 = (v25 + 7);
  v54 = v25 + 10;
  v55 = v25 + 11;
  v50 = a2 + 40;
  v51 = a2 + 64;
  v52 = a2 + 72;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v53, &v50))
  {
    goto LABEL_48;
  }

  v27 = v25[12];
  if (v25[13] - v27 != __n)
  {
    goto LABEL_48;
  }

  if (memcmp(v27, __s2, __n))
  {
    goto LABEL_48;
  }

  v28 = v25[15];
  if (v25[16] - v28 != v37)
  {
    goto LABEL_48;
  }

  if (memcmp(v28, v36, v37))
  {
    goto LABEL_48;
  }

  if (*(v25 + 36) != v39)
  {
    goto LABEL_48;
  }

  if (*(v25 + 37) != v47)
  {
    goto LABEL_48;
  }

  if (*(v25 + 38) != v46)
  {
    goto LABEL_48;
  }

  if (*(v25 + 42) != v45)
  {
    goto LABEL_48;
  }

  if (*(v25 + 43) != v44)
  {
    goto LABEL_48;
  }

  if (*(v25 + 39) != v43)
  {
    goto LABEL_48;
  }

  if (*(v25 + 40) != v42)
  {
    goto LABEL_48;
  }

  if (*(v25 + 41) != v41)
  {
    goto LABEL_48;
  }

  if (*(v25 + 176) != v40)
  {
    goto LABEL_48;
  }

  v29 = v25[23];
  v33 = v25[24];
  if (v33 - v29 != v35)
  {
    goto LABEL_48;
  }

  if (v29 != v33)
  {
    v30 = v49;
    do
    {
      v34 = v29;
      v31 = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v29, v30);
      if (!v31)
      {
        break;
      }

      v29 = v34 + 24;
      v30 += 3;
    }

    while (v34 + 24 != v33);
    if (!v31)
    {
      goto LABEL_48;
    }
  }

  return v25;
}

uint64_t std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = (v1 + 184);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
      v3 = *(v1 + 15);
      if (v3)
      {
        *(v1 + 16) = v3;
        operator delete(v3);
      }

      v4 = *(v1 + 12);
      if (v4)
      {
        *(v1 + 13) = v4;
        operator delete(v4);
      }

      if (v1[79] < 0)
      {
        operator delete(*(v1 + 7));
      }

      if (v1[39] < 0)
      {
        operator delete(*(v1 + 2));
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<AMCP::Wire_Description,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v5 = (__p + 184);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(__p + 15);
    if (v3)
    {
      *(__p + 16) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 12);
    if (v4)
    {
      *(__p + 13) = v4;
      operator delete(v4);
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[39] < 0)
    {
      operator delete(*(__p + 2));
    }
  }

  operator delete(__p);
}

void AMCP::Graph::Wire_Index::get_wires_for_node(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *a3, *(a3 + 8));
      }

      else
      {
        v21 = *a3;
      }

      *__p = *&v21.__r_.__value_.__l.__data_;
      v11 = v21.__r_.__value_.__r.__words[2];
      memset(&v21, 0, sizeof(v21));
      v26 = v11;
      v27 = i;
      v28 = 1;
      AMCP::Graph::Wire_Index::get_wires_for_terminal(&v19, a2, __p);
      v12 = v19;
      std::__copy_impl::operator()[abi:ne200100]<std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::back_insert_iterator<std::vector<std::reference_wrapper<AMCP::Graph::Graph_Wire const>>>>(v19, v20, &v22);
      if (v12)
      {
        operator delete(v12);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (a5)
  {
    v13 = 0;
    do
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *a3, *(a3 + 8));
      }

      else
      {
        v18 = *a3;
      }

      *__p = *&v18.__r_.__value_.__l.__data_;
      v14 = v18.__r_.__value_.__r.__words[2];
      memset(&v18, 0, sizeof(v18));
      v26 = v14;
      v27 = v13;
      v28 = 0;
      AMCP::Graph::Wire_Index::get_wires_for_terminal(&v19, a2, __p);
      v15 = v19;
      std::__copy_impl::operator()[abi:ne200100]<std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::back_insert_iterator<std::vector<std::reference_wrapper<AMCP::Graph::Graph_Wire const>>>>(v19, v20, &v22);
      if (v15)
      {
        operator delete(v15);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      ++v13;
    }

    while (a5 != v13);
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v16 = v22;
  v17 = v23;
  if (v22 != v23)
  {
    do
    {
      AMCP::Graph::Graph_Wire::get_description(__p, *v16);
      std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__emplace_unique_key_args<AMCP::Wire_Description,AMCP::Wire_Description>(a1, __p, __p);
      v19 = &v35;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      ++v16;
    }

    while (v16 != v17);
    v16 = v22;
  }

  if (v16)
  {
    v23 = v16;
    operator delete(v16);
  }
}

void sub_1DE3A3110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__copy_impl::operator()[abi:ne200100]<std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::reference_wrapper<AMCP::Graph::Graph_Wire const> *,std::back_insert_iterator<std::vector<std::reference_wrapper<AMCP::Graph::Graph_Wire const>>>>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(a3 + 16);
      if (v6 >= v7)
      {
        v8 = (v6 - *a3) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v9 = v7 - *a3;
        v10 = v9 >> 2;
        if (v9 >> 2 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v11);
        }

        *(8 * v8) = *v5;
        v6 = (8 * v8 + 8);
        v12 = *(a3 + 8) - *a3;
        v13 = (8 * v8 - v12);
        memcpy(v13, *a3, v12);
        v14 = *a3;
        *a3 = v13;
        *(a3 + 8) = v6;
        *(a3 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6++ = *v5;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void AMCP::Graph::Wire_Index::get_tgid_for_wire(AMCP::Graph::Wire_Index *this, const AMCP::Wire_Identifier *a2, uint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 5, a3);
  if (v4 && (v4[63] & 1) != 0)
  {
    AMCP::Graph::Graph_Wire::Connection::Connection(&v6, (v4 + 36));
    *this = *v9;
    v5 = __p;
    *(this + 2) = v10;
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    if (v5)
    {
      v15 = v5;
      operator delete(v5);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    if (v8 < 0)
    {
      operator delete(v7);
    }

    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void AMCP::Graph::Wire_Index::update_tgid_for_connections(uint64_t *a1, const void **a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 504) == 1)
      {
        AMCP::Graph::Graph_Wire::Connection::Connection(buf, (v5 + 36));
        if ((v39 & 0x80u) == 0)
        {
          v6 = v39;
        }

        else
        {
          v6 = v38[1];
        }

        v7 = *(a2 + 23);
        v8 = v7;
        if (v7 < 0)
        {
          v7 = a2[1];
        }

        if (v6 == v7)
        {
          if ((v39 & 0x80u) == 0)
          {
            v9 = v38;
          }

          else
          {
            v9 = v38[0];
          }

          if (v8 >= 0)
          {
            v10 = a2;
          }

          else
          {
            v10 = *a2;
          }

          v11 = memcmp(v9, v10, v6) == 0;
        }

        else
        {
          v11 = 0;
        }

        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }

        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        v12 = v40;
        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (v39 < 0)
        {
          operator delete(v38[0]);
        }

        if (v37 < 0)
        {
          operator delete(v35);
        }

        if (SBYTE3(v33) < 0)
        {
          operator delete(*buf);
          if (v11)
          {
LABEL_32:
            if (*(a3 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v18, *a3, *(a3 + 8));
            }

            else
            {
              v18 = *a3;
            }

            if ((v5[63] & 1) == 0)
            {
              v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v13 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v12);
              }

              v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v14)
              {
                atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
                v16 = *v15;
                std::__shared_weak_count::__release_shared[abi:ne200100](v14);
              }

              else
              {
                v16 = *v15;
              }

              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "Graph_Wire.cpp";
                v30 = 1024;
                v31 = 98;
                v32 = 2080;
                v33 = "not (m_connection.has_value())";
                _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot update a connection that does not exist", buf, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string(&v20, "Cannot update a connection that does not exist", v17);
              std::logic_error::logic_error(&v21, &v20);
              v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v22, &v21);
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = -1;
              v22.__vftable = &unk_1F5991430;
              v23 = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
              v34 = "void AMCP::Graph::Graph_Wire::update_tgid(Thread_Group_ID)";
              v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
              v36 = 98;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
            }

            if (*(v5 + 391) < 0)
            {
              operator delete(v5[46]);
            }

            *(v5 + 46) = v18;
            *(&v18.__r_.__value_.__s + 23) = 0;
            v18.__r_.__value_.__s.__data_[0] = 0;
          }
        }

        else if (v11)
        {
          goto LABEL_32;
        }
      }

      v5 = *v5;
    }

    while (v5);
  }
}

void HALB_FormatList::~HALB_FormatList(HALB_FormatList *this)
{
  HALB_FormatList::~HALB_FormatList(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596A5A0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void HALB_FormatList::GetFormatListWithUpdatedSampleRate(const HALB_FormatList *this, const HALB_FormatList *a2, AudioStreamRangedDescription *a3, Float64 a4)
{
  if (this != a2)
  {
    v14 = v7;
    v15 = v6;
    v16 = v4;
    v17 = v5;
    v11 = this;
    do
    {
      v12 = *(v11 + 1);
      *&v13.mFormat.mSampleRate = *v11;
      *&v13.mFormat.mBytesPerPacket = v12;
      *&v13.mFormat.mBitsPerChannel = *(v11 + 4);
      v13.mFormat.mSampleRate = a4;
      v13.mSampleRateRange.mMinimum = a4;
      v13.mSampleRateRange.mMaximum = a4;
      HALB_FormatList::AddPhysicalFormat(a3, &v13, a3);
      v11 = (v11 + 56);
    }

    while (v11 != a2);
  }
}

void HALB_FormatList::AddPhysicalFormat(void *this, const AudioStreamRangedDescription *a2, const AudioStreamRangedDescription *a3)
{
  v7 = this[4];
  v6 = this[5];
  v5 = (this + 4);
  v8 = *&a2->mFormat.mBytesPerPacket;
  *&v24.mFormat.mSampleRate = *&a2->mFormat.mSampleRate;
  *&v24.mFormat.mBytesPerPacket = v8;
  *&v24.mFormat.mBitsPerChannel = *&a2->mFormat.mBitsPerChannel;
  v24.mSampleRateRange.mMaximum = a2->mSampleRateRange.mMaximum;
  v9 = v7;
  if (v7 != v6)
  {
    v9 = v7;
    while (!CAStreamRangedDescription::IsExactlyEqual(v9, &v24, a3))
    {
      v9 = (v9 + 56);
      if (v9 == v6)
      {
        goto LABEL_7;
      }
    }
  }

  if (v9 == v6)
  {
LABEL_7:
    if (v7 != v6)
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3);
      do
      {
        v11 = (v7 + 56 * (v10 >> 1));
        v12 = CAStreamRangedDescription::Sorter(v11, a2, a3);
        if (v12)
        {
          v10 += ~(v10 >> 1);
        }

        else
        {
          v10 >>= 1;
        }

        if (v12)
        {
          v7 = (v11 + 56);
        }
      }

      while (v10);
      v6 = v7;
    }

    v13 = *&a2->mFormat.mBytesPerPacket;
    *&v24.mFormat.mSampleRate = *&a2->mFormat.mSampleRate;
    *&v24.mFormat.mBytesPerPacket = v13;
    *&v24.mFormat.mBitsPerChannel = *&a2->mFormat.mBitsPerChannel;
    v24.mSampleRateRange = a2->mSampleRateRange;
    std::vector<CAStreamRangedDescription>::insert(v5, v6, &v24);
    v15 = *&a2->mFormat.mBytesPerPacket;
    *&v23.mFormat.mSampleRate = *&a2->mFormat.mSampleRate;
    *&v23.mFormat.mBytesPerPacket = v15;
    *&v23.mFormat.mBitsPerChannel = *&a2->mFormat.mBitsPerChannel;
    v23.mSampleRateRange.mMaximum = a2->mSampleRateRange.mMaximum;
    if (v23.mFormat.mFormatID == 1819304813 && (v23.mFormat.mFormatFlags & 0x40) == 0)
    {
      v23.mFormat.mFormatFlags = 9;
      v23.mFormat.mBytesPerPacket = 4 * v23.mFormat.mChannelsPerFrame;
      v23.mFormat.mFramesPerPacket = 1;
      v23.mFormat.mBytesPerFrame = 4 * v23.mFormat.mChannelsPerFrame;
      v23.mFormat.mBitsPerChannel = 32;
    }

    v18 = this[1];
    v17 = this[2];
    v16 = (this + 1);
    v19 = v18;
    if (v18 != v17)
    {
      v19 = v18;
      while (!CAStreamRangedDescription::IsExactlyEqual(v19, &v23, v14))
      {
        v19 = (v19 + 56);
        if (v19 == v17)
        {
          goto LABEL_25;
        }
      }
    }

    if (v19 == v17)
    {
LABEL_25:
      if (v18 != v17)
      {
        v20 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v18) >> 3);
        do
        {
          v21 = (v18 + 56 * (v20 >> 1));
          v22 = CAStreamRangedDescription::Sorter(v21, &v23, v14);
          if (v22)
          {
            v20 += ~(v20 >> 1);
          }

          else
          {
            v20 >>= 1;
          }

          if (v22)
          {
            v18 = (v21 + 56);
          }
        }

        while (v20);
        v17 = v18;
      }

      *&v24.mFormat.mSampleRate = *&v23.mFormat.mSampleRate;
      *&v24.mFormat.mBytesPerPacket = *&v23.mFormat.mBytesPerPacket;
      *&v24.mFormat.mBitsPerChannel = *&v23.mFormat.mBitsPerChannel;
      v24.mSampleRateRange = a2->mSampleRateRange;
      std::vector<CAStreamRangedDescription>::insert(v16, v17, &v24);
    }
  }
}

BOOL CAStreamRangedDescription::IsExactlyEqual(CAStreamRangedDescription *this, const AudioStreamRangedDescription *a2, const AudioStreamRangedDescription *a3)
{
  if (*this != a2->mFormat.mSampleRate)
  {
    return 0;
  }

  if (*(this + 2) != a2->mFormat.mFormatID)
  {
    return 0;
  }

  if (*(this + 3) != a2->mFormat.mFormatFlags)
  {
    return 0;
  }

  if (*(this + 4) != a2->mFormat.mBytesPerPacket)
  {
    return 0;
  }

  if (*(this + 5) != a2->mFormat.mFramesPerPacket)
  {
    return 0;
  }

  if (*(this + 6) != a2->mFormat.mBytesPerFrame)
  {
    return 0;
  }

  if (*(this + 7) != a2->mFormat.mChannelsPerFrame)
  {
    return 0;
  }

  if (*(this + 8) != a2->mFormat.mBitsPerChannel)
  {
    return 0;
  }

  v3 = *(this + 6);
  mMinimum = a2->mSampleRateRange.mMinimum;
  if (v3 < mMinimum)
  {
    return 0;
  }

  v5 = *(this + 5);
  mMaximum = a2->mSampleRateRange.mMaximum;
  if (v5 < mMinimum && v3 <= mMaximum)
  {
    return 0;
  }

  if (v5 < mMinimum && v3 > mMaximum)
  {
    return 0;
  }

  if (v3 == mMaximum)
  {
    return v5 == mMinimum;
  }

  return 0;
}

void std::vector<CAStreamRangedDescription>::insert(char **a1, char *a2, __int128 *a3)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v11 = *a1;
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3) + 1;
    if (v12 > 0x492492492492492)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x249249249249249)
    {
      v15 = 0x492492492492492;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v15);
    }

    v18 = 8 * (v13 >> 3);
    if (!(0x6DB6DB6DB6DB6DB7 * (v13 >> 3)))
    {
      if (v13 < 1)
      {
        if (v11 == a2)
        {
          v25 = 1;
        }

        else
        {
          v25 = 0xDB6DB6DB6DB6DB6ELL * (v13 >> 3);
        }

        std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v25);
      }

      v18 = 8 * (v13 >> 3) - 56 * ((0x6DB6DB6DB6DB6DB7 * ((8 * (v13 >> 3)) >> 3) + 1 + ((0x6DB6DB6DB6DB6DB7 * ((8 * (v13 >> 3)) >> 3) + 1) >> 63)) >> 1);
    }

    v26 = *a3;
    v27 = a3[1];
    *(v18 + 32) = *(a3 + 4);
    *v18 = v26;
    *(v18 + 16) = v27;
    *(v18 + 40) = *(a3 + 40);
    v28 = a1[1];
    v29 = a2;
    if (v28 != a2)
    {
      v30 = a2;
      v31 = v18 + 56;
      do
      {
        v32 = *v30;
        v33 = *(v30 + 1);
        *(v31 + 32) = *(v30 + 4);
        *v31 = v32;
        *(v31 + 16) = v33;
        *(v31 + 40) = *(v30 + 40);
        v30 += 56;
        v31 += 56;
      }

      while (v30 != v28);
      v29 = a1[1];
    }

    v34 = v18 + 56 + v29 - a2;
    a1[1] = a2;
    v35 = *a1;
    v36 = v18 + *a1 - a2;
    if (*a1 != a2)
    {
      v37 = v18 + *a1 - a2;
      do
      {
        v38 = *v35;
        v39 = *(v35 + 1);
        *(v37 + 32) = *(v35 + 4);
        *v37 = v38;
        *(v37 + 16) = v39;
        *(v37 + 40) = *(v35 + 40);
        v35 += 56;
        v37 += 56;
      }

      while (v35 != a2);
      v35 = *a1;
    }

    *a1 = v36;
    a1[1] = v34;
    a1[2] = 0;
    if (v35)
    {

      operator delete(v35);
    }
  }

  else
  {
    v6 = &a2[-v4];
    if (a2 == v4)
    {
      v16 = *a3;
      v17 = a3[1];
      *(v4 + 32) = *(a3 + 4);
      *v4 = v16;
      *(v4 + 16) = v17;
      *(v4 + 40) = *(a3 + 40);
      a1[1] = (v4 + 56);
    }

    else
    {
      v7 = v4 - 56;
      if (v4 < 0x38)
      {
        v8 = a1[1];
      }

      else
      {
        v8 = v4 + 56;
        v9 = *v7;
        v10 = *(v4 - 40);
        *(v4 + 32) = *(v4 - 24);
        *v4 = v9;
        *(v4 + 16) = v10;
        *(v4 + 40) = *(v4 - 16);
      }

      a1[1] = v8;
      if (v4 != a2 + 56)
      {
        v19 = v4 - 112;
        v20 = v6 + 56;
        do
        {
          v21 = *v19;
          v22 = *(v19 + 16);
          *(v7 + 32) = *(v19 + 32);
          *v7 = v21;
          *(v7 + 16) = v22;
          *(v7 + 40) = *(v19 + 40);
          v19 -= 56;
          v7 -= 56;
          v20 += 56;
        }

        while (v20);
      }

      v23 = *a3;
      v24 = a3[1];
      *(a2 + 4) = *(a3 + 4);
      *a2 = v23;
      *(a2 + 1) = v24;
      *(a2 + 40) = *(a3 + 40);
    }
  }
}

void sub_1DE3A3F00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALB_FormatList::IsVirtualFormatSupported(AudioStreamBasicDescription *this, AudioStreamBasicDescription *a2, uint64_t a3, BOOL a4, BOOL a5)
{
  v6 = this;
  v7 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v7;
  v12 = *(a3 + 32);
  v13 = 3;
  if (this != a2)
  {
    v8 = *v11;
    while (!CA::StreamDescription::IsEquivalent(v11, v6, 3u, a4, a5) || v6[1].mSampleRate > v8 || *&v6[1].mFormatID < v8)
    {
      v6 = (v6 + 56);
      if (v6 == a2)
      {
        v6 = a2;
        return v6 != a2;
      }
    }
  }

  return v6 != a2;
}

void HALB_FormatList::BestMatchForVirtualFormat(_BOOL8 this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, AudioStreamBasicDescription *a4, BOOL a5, double a6)
{
  v7 = this;
  mSampleRate = a2->mSampleRate;
  mFormatID = a2->mFormatID;
  if (a2->mSampleRate != 0.0)
  {
    a6 = a2->mSampleRate;
  }

  v11 = *(this + 8);
  v12 = *(this + 16);
  v26 = a6;
  v27 = mFormatID;
  *v28 = *&a2->mFormatFlags;
  *&v28[12] = *&a2->mBytesPerFrame;
  v29 = 3;
  v13 = v11;
  if (v11 != v12)
  {
    v13 = v11;
    while (1)
    {
      this = CA::StreamDescription::IsEquivalent(&v26, v13, 3u, a4, a5);
      if (this && *(v13 + 5) <= a6 && *(v13 + 6) >= a6)
      {
        break;
      }

      v13 = (v13 + 56);
      if (v13 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  if (v13 == v12)
  {
LABEL_16:
    if (v11 == v12)
    {
      goto LABEL_30;
    }

    v17 = v11;
    do
    {
      if (*(v17 + 2) == mFormatID && (*(v17 + 6) == mSampleRate || *v17 == mSampleRate))
      {
        v22 = *v17;
        v23 = v17[1];
        *&a3->mBitsPerChannel = *(v17 + 4);
        *&a3->mSampleRate = v22;
        *&a3->mBytesPerPacket = v23;
        a6 = *v17;
        goto LABEL_34;
      }

      v17 = (v17 + 56);
    }

    while (v17 != v12);
    if (v11 == v12)
    {
      goto LABEL_30;
    }

    v19 = v11;
    do
    {
      if (*(v19 + 2) == mFormatID)
      {
        v24 = *v19;
        v25 = v19[1];
        *&a3->mBitsPerChannel = *(v19 + 4);
        *&a3->mSampleRate = v24;
        *&a3->mBytesPerPacket = v25;
        goto LABEL_33;
      }

      v19 = (v19 + 56);
    }

    while (v19 != v12);
    if (v12 == v11 || (v20 = *v11, v21 = v11[1], *&a3->mBitsPerChannel = *(v11 + 4), *&a3->mSampleRate = v20, *&a3->mBytesPerPacket = v21, v19 = *(v7 + 8), *(v7 + 16) == v19))
    {
LABEL_30:
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_33:
    a6 = HALB_FormatList::GetCommonSampleRateInRangeByIndex(this, *(v19 + 5), *(v19 + 6));
  }

  else
  {
    v15 = *v13;
    v16 = v13[1];
    *&a3->mBitsPerChannel = *(v13 + 4);
    *&a3->mSampleRate = v15;
    *&a3->mBytesPerPacket = v16;
  }

LABEL_34:
  a3->mSampleRate = a6;
}

double HALB_FormatList::GetCommonSampleRateInRangeByIndex(HALB_FormatList *this, double a2, double a3)
{
  v3 = 0;
  while (HALB_FormatList::sCommonSampleRates[v3] < a2)
  {
    if (++v3 == 15)
    {
      LODWORD(i) = 15;
      goto LABEL_11;
    }
  }

  if (v3 > 0xE)
  {
    LODWORD(i) = v3;
  }

  else
  {
    for (i = v3; i != 15; ++i)
    {
      if (HALB_FormatList::sCommonSampleRates[i] >= a3)
      {
        break;
      }
    }
  }

LABEL_11:
  v5 = 0;
  do
  {
    v6 = HALB_FormatList::sCommonSampleRates[v5];
    if (v5 > 0xD)
    {
      break;
    }

    ++v5;
  }

  while (v6 != a2);
  v7 = i - v3;
  if (v6 == a2)
  {
    goto LABEL_19;
  }

  v8 = 0;
  do
  {
    v9 = HALB_FormatList::sCommonSampleRates[v8];
    if (v8 > 0xD)
    {
      break;
    }

    ++v8;
  }

  while (v9 != a3);
  if (v9 == a3)
  {
LABEL_19:
    ++v7;
  }

  if (v7)
  {
    return HALB_FormatList::sCommonSampleRates[v3];
  }

  else
  {
    return 0.0;
  }
}

uint64_t HALB_FormatList::GetVirtualFormats(uint64_t this, char a2, unint64_t a3, unint64_t *a4, AudioStreamRangedDescription *a5)
{
  *a4 = 0;
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = *(this + 8);
      if (++v7 >= (0x6DB6DB6DB6DB6DB7 * ((*(this + 16) - v8) >> 3)))
      {
        break;
      }

      v9 = (v8 + v5);
      v10 = &a5[v6];
      v11 = *v9;
      v12 = *(v9 + 1);
      v13 = *(v9 + 2);
      v10->mSampleRateRange.mMaximum = v9[6];
      *&v10->mFormat.mBytesPerPacket = v12;
      *&v10->mFormat.mBitsPerChannel = v13;
      *&v10->mFormat.mSampleRate = v11;
      v14 = *a4;
      if ((a2 & 1) == 0)
      {
        a5[v14].mFormat.mFormatFlags |= 2u;
      }

      v5 += 56;
      v6 = v14 + 1;
      *a4 = v6;
    }

    while (v6 < a3);
  }

  return this;
}

uint64_t HALB_FormatList::GetVirtualFormats(uint64_t this, char a2, unint64_t a3, unint64_t *a4, AudioStreamBasicDescription *a5)
{
  *a4 = 0;
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(this + 8);
    v8 = *(this + 16);
    v9 = -1;
    do
    {
      if (++v9 >= 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3))
      {
        break;
      }

      v10 = (v7 + v5);
      v11 = &a5[v6];
      v12 = *v10;
      v13 = v10[1];
      *&v11->mBitsPerChannel = *(v10 + 4);
      *&v11->mSampleRate = v12;
      *&v11->mBytesPerPacket = v13;
      v7 = *(this + 8);
      v8 = *(this + 16);
      if (0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3) <= v9)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = *(v7 + v5 + 40);
      if (v14 != *(v7 + v5 + 48))
      {
        v14 = 0.0;
      }

      v15 = *a4;
      a5[*a4].mSampleRate = v14;
      if ((a2 & 1) == 0)
      {
        a5[v15].mFormatFlags |= 2u;
      }

      v5 += 56;
      v6 = v15 + 1;
      *a4 = v6;
    }

    while (v6 < a3);
  }

  return this;
}

void HALB_FormatList::BestMatchForPhysicalFormat(_BOOL8 this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, AudioStreamBasicDescription *a4, BOOL a5, double mSampleRate)
{
  v7 = this;
  mFormatID = a2->mFormatID;
  if (a2->mSampleRate != 0.0)
  {
    mSampleRate = a2->mSampleRate;
  }

  v10 = *(this + 32);
  v11 = *(this + 40);
  v25 = mSampleRate;
  v26 = mFormatID;
  *v27 = *&a2->mFormatFlags;
  *&v27[12] = *&a2->mBytesPerFrame;
  v28 = 3;
  v12 = v10;
  if (v10 != v11)
  {
    v12 = v10;
    while (1)
    {
      this = CA::StreamDescription::IsEquivalent(&v25, v12, 3u, a4, a5);
      if (this && *(v12 + 5) <= mSampleRate && *(v12 + 6) >= mSampleRate)
      {
        break;
      }

      v12 = (v12 + 56);
      if (v12 == v11)
      {
        goto LABEL_16;
      }
    }
  }

  if (v12 == v11)
  {
LABEL_16:
    if (v10 == v11)
    {
      goto LABEL_30;
    }

    v16 = v10;
    do
    {
      if (*(v16 + 2) == mFormatID && (*(v16 + 6) == mSampleRate || *v16 == mSampleRate))
      {
        v21 = *v16;
        v22 = v16[1];
        *&a3->mBitsPerChannel = *(v16 + 4);
        *&a3->mSampleRate = v21;
        *&a3->mBytesPerPacket = v22;
        mSampleRate = *v16;
        goto LABEL_34;
      }

      v16 = (v16 + 56);
    }

    while (v16 != v11);
    if (v10 == v11)
    {
      goto LABEL_30;
    }

    v18 = v10;
    do
    {
      if (*(v18 + 2) == mFormatID)
      {
        v23 = *v18;
        v24 = v18[1];
        *&a3->mBitsPerChannel = *(v18 + 4);
        *&a3->mSampleRate = v23;
        *&a3->mBytesPerPacket = v24;
        goto LABEL_33;
      }

      v18 = (v18 + 56);
    }

    while (v18 != v11);
    if (v11 == v10 || (v19 = *v10, v20 = v10[1], *&a3->mBitsPerChannel = *(v10 + 4), *&a3->mSampleRate = v19, *&a3->mBytesPerPacket = v20, v18 = *(v7 + 32), *(v7 + 40) == v18))
    {
LABEL_30:
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_33:
    mSampleRate = HALB_FormatList::GetCommonSampleRateInRangeByIndex(this, *(v18 + 5), *(v18 + 6));
  }

  else
  {
    v14 = *v12;
    v15 = v12[1];
    *&a3->mBitsPerChannel = *(v12 + 4);
    *&a3->mSampleRate = v14;
    *&a3->mBytesPerPacket = v15;
  }

LABEL_34:
  a3->mSampleRate = mSampleRate;
}

uint64_t HALB_FormatList::GetPhysicalFormats(uint64_t this, unint64_t a2, unint64_t *a3, AudioStreamBasicDescription *a4)
{
  *a3 = 0;
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 32);
    v7 = *(this + 40);
    v8 = -1;
    do
    {
      if (++v8 >= 0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 3))
      {
        break;
      }

      v9 = (v6 + v4);
      v10 = &a4[v5];
      v11 = *v9;
      v12 = v9[1];
      *&v10->mBitsPerChannel = *(v9 + 4);
      *&v10->mSampleRate = v11;
      *&v10->mBytesPerPacket = v12;
      v6 = *(this + 32);
      v7 = *(this + 40);
      if (0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 3) <= v8)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = v6 + v4;
      v4 += 56;
      v14 = *(v13 + 40);
      if (v14 != *(v13 + 48))
      {
        v14 = 0.0;
      }

      v15 = *a3;
      a4[*a3].mSampleRate = v14;
      v5 = v15 + 1;
      *a3 = v5;
    }

    while (v5 < a2);
  }

  return this;
}

void sub_1DE3A490C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3A498C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1},std::default_delete<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1DE3A4A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1DE3A4B20(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c77_ZTSKZ64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint__E3__6(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

id __copy_helper_block_ea8_32c77_ZTSKZ64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint__E3__5(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  result = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN10applesauce8dispatch2v19sync_implIZ56__Core_Audio_Driver_Service_Client_get_lazy_connection__E3__4EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*v1 connection_to_driver_service];

  if (!v2)
  {
    v3 = *v1;
    v4 = *(v1 + 16);
    v5 = *(v1 + 8);
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v3 connect_to_driver_service:&v5];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1DE3A5164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3A5418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  JUMPOUT(0x1DE3A5410);
}

void ___ZZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__ENK3__2cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  NSLog(&cfstr_ConnectionToDr.isa);
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_driver_service_undertaker(v2);
    v3 = v7;
    if (v7)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        objc_msgSend_queue(v4);
        v3 = v7;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        objc_msgSend_driver_file(v5, v3);
      }

      v6 = v9;
      operator new();
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1DE3A55C8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(va);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__ENK3__3cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  NSLog(&cfstr_ConnectionToDr_0.isa);
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

id __copy_helper_block_ea8_32c75_ZTSKZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__E3__3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id __copy_helper_block_ea8_32c75_ZTSKZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__E3__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_1DE3A57AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1DE3A5A94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = Core_Audio_Driver_Service_Client;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1DE3A5B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void AMCP::Portal::IPC::IO_Sender::~IO_Sender(AMCP::Portal::IPC::IO_Sender *this)
{
  AMCP::Portal::IPC::IO_Sender::~IO_Sender(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596A7C0;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    MEMORY[0x1E12C1730](v2, 0x1020C401EC519C5);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::semaphore_sender>::__on_zero_shared(uint64_t a1)
{
  MEMORY[0x1E12C0DE0](a1 + 80);
  MEMORY[0x1E12C0DE0](a1 + 72);
  caulk::ipc::mapped_memory::reset((a1 + 48));

  return caulk::ipc::mapped_memory::reset((a1 + 24));
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::semaphore_sender>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596A840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::eventlink_sender>::__on_zero_shared(caulk::mach::details **a1, void *a2)
{
  caulk::mach::details::release_os_object(a1[9], a2);
  caulk::ipc::mapped_memory::reset((a1 + 6));

  return caulk::ipc::mapped_memory::reset((a1 + 3));
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::eventlink_sender>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596A7F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(uint64_t a1, const BOOL *a2, _OWORD *a3, double *a4)
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = 1768911973;
  v5 = atomic_load((a1 + 65));
  if (v5)
  {
    return v4;
  }

  v11 = AMCP::Feature_Flags::access_event_link_oop_io(0, a2);
  if (v11)
  {
    v12 = *(a1 + 8);
    v13 = v12[1];
    if (!v13)
    {
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
        v82 = "IO_Sender.cpp";
        v83 = 1024;
        v84 = 157;
        v85 = 2080;
        v86 = "payload_data.empty()";
        _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get io sender payload", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v73, "Failed to get io sender payload");
      std::runtime_error::runtime_error(&v74, &v73);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = -1;
      v74.__vftable = &unk_1F5992170;
      v75 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v74);
      v87 = "OSStatus AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(const sender_data_t &, receiver_data_t &, const double &)";
      v88 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/IO_Sender.cpp";
      v89 = 157;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
    }
  }

  else
  {
    v12 = *(a1 + 24);
    v13 = v12[1];
    if (!v13)
    {
      goto LABEL_83;
    }
  }

  if (v13 <= 0x13F)
  {
    v11 = CAAssertRtn();
LABEL_83:
    v68 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v68 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      v82 = "IO_Sender.cpp";
      v83 = 1024;
      v84 = 163;
      v85 = 2080;
      v86 = "payload_data.empty()";
      _os_log_error_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get io sender payload", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v73, "Failed to get io sender payload");
    std::runtime_error::runtime_error(&v74, &v73);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = -1;
    v74.__vftable = &unk_1F5992170;
    v75 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v74);
    v87 = "OSStatus AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(const sender_data_t &, receiver_data_t &, const double &)";
    v88 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/IO_Sender.cpp";
    v89 = 163;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
  }

  v18 = *v12;
  memcpy(*v12, a2, 0x110uLL);
  if (*a2 == 6)
  {
    v20 = *(a2 + 2);
    if (v20 == 1919513701 || v20 == 1919246692 || v20 == 1835628655)
    {
      kdebug_trace();
    }
  }

  v22 = 0;
  if (AMCP::Feature_Flags::access_collect_io_perfdata(0, v19))
  {
    v22 = mach_absolute_time();
  }

  v23 = AMCP::Feature_Flags::access_event_link_oop_io(0, v21);
  v24 = *a4;
  if (v23)
  {
    v25 = caulk::ipc::synchronous_messenger::eventlink_sender::send(*(a1 + 8), v24);
  }

  else
  {
    v25 = caulk::ipc::synchronous_messenger::semaphore_sender::send(*(a1 + 24), v24);
  }

  v27 = v25;
  if (*a2 == 6)
  {
    v28 = *(a2 + 2);
    if (v28 == 1919513701 || v28 == 1919246692 || v28 == 1835628655)
    {
      kdebug_trace();
    }
  }

  if (v27 & 0x100000000) != 0 && (v27)
  {
    goto LABEL_69;
  }

  v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_95;
  }

  v32 = *(v29 + 8);
  v33 = *a2;
  v34 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v34 + 16) = 0;
  *(v34 + 20) = 16;
  *(v34 + 24) = "IO_Sender.cpp";
  *(v34 + 32) = 188;
  *(v34 + 40) = v33;
  *v34 = &unk_1F596A890;
  *(v34 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v32, v34);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v36 = 0;
  while (1)
  {
    v37 = atomic_load((a1 + 65));
    if (v37)
    {
      break;
    }

    v38 = v35 & 0xFFFFFF00;
    if (AMCP::Feature_Flags::access_event_link_oop_io(0, v26))
    {
      v39 = caulk::ipc::synchronous_messenger::eventlink_sender::resynch(*(a1 + 8), 1.0);
      v40 = (v39 & 0x100000000uLL) >> 32;
      v35 = v38 | v39;
      if ((v39 & 0x100000000) == 0)
      {
        v35 = v39;
      }

      v41 = *(a1 + 8);
      if (v41[1] && v41[4])
      {
        v42 = v41[6] == 0;
LABEL_47:
        v44 = !v42;
        if ((v39 & 0x100000000) == 0)
        {
LABEL_74:
          v64 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v64 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v39);
          }

          v66 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
            v67 = *v66;
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          else
          {
            v67 = *v66;
          }

          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v82 = "IO_Sender.cpp";
            v83 = 1024;
            v84 = 215;
            v85 = 2080;
            v86 = "resynch_result.has_value() != true";
            _os_log_error_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to resynch io sender/receiver after message failed to send", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
          __cxa_allocate_exception(0x40uLL);
          std::runtime_error::runtime_error(&v73, "Failed to resynch io sender/receiver after message failed to send");
          std::runtime_error::runtime_error(&v74, &v73);
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = -1;
          v74.__vftable = &unk_1F5992170;
          v75 = &unk_1F5992198;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v74);
          v87 = "OSStatus AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(const sender_data_t &, receiver_data_t &, const double &)";
          v88 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/IO_Sender.cpp";
          v89 = 215;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v72);
        }

        if (v35)
        {
          goto LABEL_63;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v39 = caulk::ipc::synchronous_messenger::semaphore_sender::resynch(*(a1 + 24), 1.0);
      v40 = (v39 & 0x100000000uLL) >> 32;
      v35 = v38 | v39;
      if ((v39 & 0x100000000) == 0)
      {
        v35 = v39;
      }

      v43 = *(a1 + 24);
      if (*(v43 + 8) && *(v43 + 32) && *(v43 + 48))
      {
        v42 = *(v43 + 56) == 0;
        goto LABEL_47;
      }
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_74;
    }

    v44 = 0;
    if (v35)
    {
LABEL_63:
      v52 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*v31)
      {
        v48 = *(v52 + 8);
        v49 = caulk::rt_safe_memory_resource::rt_allocate(*v31);
        v50 = v49;
        *(v49 + 8) = 0;
        *(v49 + 16) = 0;
        *(v49 + 20) = 16;
        *(v49 + 24) = "IO_Sender.cpp";
        *(v49 + 32) = 218;
        v51 = &unk_1F596A940;
        goto LABEL_67;
      }

LABEL_95:
      __break(1u);
    }

LABEL_55:
    if (v36++ >= 4)
    {
      v44 = 0;
    }

    if ((v44 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  v46 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*v31)
  {
    goto LABEL_95;
  }

  v48 = *(v46 + 8);
  v49 = caulk::rt_safe_memory_resource::rt_allocate(*v31);
  v50 = v49;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0;
  *(v49 + 20) = 2;
  *(v49 + 24) = "IO_Sender.cpp";
  *(v49 + 32) = 200;
  v51 = &unk_1F596A8E8;
LABEL_67:
  *v49 = v51;
  caulk::concurrent::messenger::enqueue(v48, v50);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

LABEL_69:
  v53 = *(v18 + 17);
  v54 = *(v18 + 19);
  a3[1] = *(v18 + 18);
  a3[2] = v54;
  *a3 = v53;
  v4 = v18[68];
  if (AMCP::Feature_Flags::access_collect_io_perfdata(0, v26))
  {
    if (*a2 == 6)
    {
      v55 = *(v18 + 39);
      v56 = v55 - v22;
      if (v55 > v22)
      {
        v57 = *(a1 + 40);
        v58 = v18[60];
        v59 = (v57 + 16);
        v60 = atomic_load((v57 + 16));
        if (v60 <= 0xFFF)
        {
          v61 = v56 * 0.0000000416666667;
          v62 = atomic_load(v59);
          *(v57 + 8 * v62 + 24) = v61;
          v63 = atomic_load(v59);
          *(v57 + 4 * v63 + 32792) = v58;
          atomic_fetch_add(v59, 1uLL);
        }
      }
    }
  }

  return v4;
}

void sub_1DE3A6B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE3A6118);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_2,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Successfully resynched io sender/receiver", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_2,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Connection was invalidated, cannot resynch!", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_0,std::tuple<char const*,int,unsigned long long>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to send io sender message id %llu, need to resynch", &v10, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(AMCP::Portal::IPC::sender_data_t const&,AMCP::Portal::IPC::receiver_data_t &,double const&)::$_0,std::tuple<char const*,int,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Portal::IPC::IO_Sender::will_do_io_operation(AMCP::Portal::IPC::IO_Sender *this, AudioServerPlugInIOOperation a2, BOOL *a3, BOOL *a4)
{
  v4 = atomic_load(this + 65);
  if (v4)
  {
    return 1768911973;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = 4;
  v13 = a2;
  *(&v29 + 4) = *(this + 6);
  *(&v8 + 1) = 0;
  v9 = 0;
  v11 = 0;
  v10 = 0;
  result = AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(this, &v12, &v8, &AMCP::Portal::IPC::k_default_timeout);
  *a3 = v11 != 0;
  *a4 = HIBYTE(v11) != 0;
  return result;
}

void sub_1DE3A713C(void *a1)
{
  __cxa_begin_catch(a1);
  *v2 = 0;
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1DE3A7128);
}

uint64_t AMCP::Portal::IPC::IO_Sender::begin_io_operation(AMCP::Portal::IPC::IO_Sender *this, int a2, AMCP::Portal::IPC::IO_Sender *a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v4 = atomic_load(this + 65);
  if (v4)
  {
    return 1768911973;
  }

  v16 = 0;
  v17 = 0;
  v10 = 5;
  v11 = a2;
  AMCP::Portal::IPC::IO_Sender::translate_to_driver_IO_cycle_info(a3, &v12, a3);
  v7 = *(this + 7);
  v14 = *(this + 6);
  v15 = 0;
  v13 = 0;
  v8 = 0.0 / v7;
  return AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(this, &v10, &v9, &v8);
}

void sub_1DE3A71EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3A71DCLL);
}

Float64 AMCP::Portal::IPC::IO_Sender::translate_to_driver_IO_cycle_info(AMCP::Portal::IPC::IO_Sender *this, const AudioServerPlugInIOCycleInfo *a2, AudioServerPlugInIOCycleInfo *a3)
{
  a2->mIOCycleCounter = *this;
  a2->mNominalIOBufferFrameSize = *(this + 2);
  a2->mCurrentTime.mSampleTime = *(this + 2);
  a2->mCurrentTime.mHostTime = *(this + 3);
  a2->mCurrentTime.mRateScalar = *(this + 4);
  a2->mCurrentTime.mWordClockTime = *(this + 5);
  v3 = *(this + 3);
  *&a2->mCurrentTime.mSMPTETime.mHours = *(this + 8);
  *&a2->mCurrentTime.mSMPTETime.mSubframes = v3;
  a2->mCurrentTime.mFlags = *(this + 18);
  a2->mInputTime.mSampleTime = *(this + 10);
  a2->mInputTime.mHostTime = *(this + 11);
  a2->mInputTime.mRateScalar = *(this + 12);
  a2->mInputTime.mWordClockTime = *(this + 13);
  v4 = *(this + 7);
  *&a2->mInputTime.mSMPTETime.mHours = *(this + 16);
  *&a2->mInputTime.mSMPTETime.mSubframes = v4;
  a2->mInputTime.mFlags = *(this + 34);
  a2->mOutputTime.mSampleTime = *(this + 18);
  a2->mOutputTime.mHostTime = *(this + 19);
  a2->mOutputTime.mRateScalar = *(this + 20);
  a2->mOutputTime.mWordClockTime = *(this + 21);
  v5 = *(this + 11);
  *&a2->mOutputTime.mSMPTETime.mHours = *(this + 24);
  *&a2->mOutputTime.mSMPTETime.mSubframes = v5;
  a2->mOutputTime.mFlags = *(this + 50);
  a2->mMainHostTicksPerFrame = *(this + 26) * 24000000.0 / 24000000.0;
  result = *(this + 27) * 24000000.0 / 24000000.0;
  a2->mDeviceHostTicksPerFrame = result;
  return result;
}

uint64_t AMCP::Portal::IPC::IO_Sender::do_io_operation(uint64_t a1, int a2, AudioServerPlugInIOCycleInfo *a3, AMCP::Portal::IPC::IO_Sender *this, unsigned int a5, int a6, int a7, int a8, int a9)
{
  v9 = atomic_load((a1 + 65));
  if (v9)
  {
    return 1768911973;
  }

  v20 = 6;
  v21 = a3;
  AMCP::Portal::IPC::IO_Sender::translate_to_driver_IO_cycle_info(this, &v22, a3);
  v17 = *(a1 + 56);
  v24 = *(a1 + 48);
  v23 = a5;
  v25 = a2;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v18 = a5 / v17;
  return AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(a1, &v20, &v19, &v18);
}

void sub_1DE3A73B4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3A7398);
}

uint64_t AMCP::Portal::IPC::IO_Sender::end_io_operation(AMCP::Portal::IPC::IO_Sender *this, int a2, AMCP::Portal::IPC::IO_Sender *a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v4 = atomic_load(this + 65);
  if (v4)
  {
    return 1768911973;
  }

  v16 = 0;
  v17 = 0;
  v10 = 7;
  v11 = a2;
  AMCP::Portal::IPC::IO_Sender::translate_to_driver_IO_cycle_info(a3, &v12, a3);
  v7 = *(this + 7);
  v14 = *(this + 6);
  v15 = 0;
  v13 = 0;
  v8 = 0.0 / v7;
  return AMCP::Portal::IPC::IO_Sender::send_and_receive_io_message(this, &v10, &v9, &v8);
}

void sub_1DE3A745C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3A744CLL);
}

uint64_t *std::unordered_map<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>::insert_or_assign[abi:ne200100]<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>(float *a1, _DWORD *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a1 + 2);
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
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
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

  *(v8 + 6) = *a3;
  v11 = v8[4];
  v8[4] = *(a3 + 8);
  *(a3 + 8) = v11;
  v12 = v8[5];
  v8[5] = *(a3 + 16);
  *(a3 + 16) = v12;
  v13 = v8[6];
  v8[6] = *(a3 + 24);
  *(a3 + 24) = v13;
  v14 = v8[8];
  v8[8] = *(a3 + 40);
  *(a3 + 40) = v14;
  v15 = v8[9];
  v8[9] = *(a3 + 48);
  *(a3 + 48) = v15;
  v16 = v8[10];
  v8[10] = *(a3 + 56);
  *(a3 + 56) = v16;
  return v8;
}

void sub_1DE3A7944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::__wrap_iter<unsigned int *>::iterator_type AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique(std::vector<unsigned int> *a1, const std::vector<unsigned int>::value_type *a2)
{
  v4 = *a2;
  result = AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::find(a1->__begin_, a1->__end_, *a2);
  if (result)
  {
    *v6.__i_ = v4;
  }

  else
  {

    return std::vector<unsigned int>::insert(a1, v6, a2).__i_;
  }

  return result;
}

BOOL AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::find(_DWORD *a1, _DWORD *a2, unsigned int a3)
{
  if (a2 == a1)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
    v4 = a2 - a1;
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[v4 >> 1];
      v8 = *v6;
      v7 = v6 + 1;
      v4 += ~(v4 >> 1);
      if (v8 < a3)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  return v3 != a2 && *v3 == a3;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void *AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::erase(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  result = AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::find(*a1, v4, a2);
  if (result)
  {
    v7 = v6;
    v8 = (v6 + 1);
    while (v8 != v4)
    {
      v9 = *v8;
      v8 += 4;
      if (v9 != a2)
      {
        v10 = v8 - 4;
        goto LABEL_7;
      }
    }

    v10 = v4;
LABEL_7:
    if (v6 != v10)
    {
      v11 = v10 - v6;
      v12 = v6 + v11;
      v13 = v4 - &v7[v11];
      if (v13)
      {
        result = memmove(v7, v12, v13);
      }

      *(a1 + 8) = &v7[v13];
    }
  }

  return result;
}

void AMCP::Core::Broker::gather_directly_owned_objects(std::vector<unsigned int> *a1, std::__shared_mutex_base *this, unsigned int **a3)
{
  std::__shared_mutex_base::lock_shared(this);
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::reserve(a1, *&this[2].__gate1_.__cv_.__opaque[24]);
  v7 = *a3;
  v6 = a3[1];
  while (v7 != v6)
  {
    v8 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this[2].__gate1_.__cv_.__opaque, *v7);
    if (v8)
    {
      AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(a1, v8[4], v8[5]);
    }

    ++v7;
  }

  std::__shared_mutex_base::unlock_shared(this);
}

std::__wrap_iter<unsigned int *>::iterator_type AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(std::__wrap_iter<unsigned int *>::iterator_type result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v4;
      result = AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::find(v5->__begin_, v5->__end_, *v4);
      if (result)
      {
        *v7.__i_ = v6;
      }

      else
      {
        result = std::vector<unsigned int>::insert(v5, v7, v4).__i_;
      }

      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

void AMCP::Core::Broker::fetch_core(AMCP::Core::Broker *this, std::__shared_mutex_base *a2, unsigned int a3)
{
  std::__shared_mutex_base::lock_shared(a2);
  v6 = *a2[1].__mut_.__m_.__opaque;
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a3;
    if (v6 <= a3)
    {
      v8 = a3 % v6;
    }
  }

  else
  {
    v8 = (v6 - 1) & a3;
  }

  v9 = *(a2[1].__mut_.__m_.__sig + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_17:
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == a3)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (*(v10 + 4) != a3)
  {
    goto LABEL_16;
  }

  v12 = v10[4];
  *this = v10[3];
  *(this + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_18:
  std::__shared_mutex_base::unlock_shared(a2);
}

void AMCP::Core::Broker::fetch_cores_if (void *a1, std::__shared_mutex_base *this, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::__shared_mutex_base::lock_shared(this);
  for (i = *&this[1].__mut_.__m_.__opaque[8]; i; i = *i)
  {
    v7 = *(a3 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v7 + 48))(v7, i + 3))
    {
      std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](a1, (i + 3));
    }
  }

  std::__shared_mutex_base::unlock_shared(this);
}

void AMCP::Core::Broker::fetch_object_ids_if (std::vector<unsigned int> *a1, std::__shared_mutex_base *a2, uint64_t a3)
{
  AMCP::Core::Broker::fetch_cores_if (&v6, a2, a3);
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  v5 = v6;
  v4 = v7;
  std::vector<unsigned int>::reserve(a1, (v7 - v6) >> 4);
  while (v5 != v4)
  {
    LODWORD(v8) = **v5;
    std::vector<unsigned int>::push_back[abi:ne200100](a1, &v8);
    v5 += 2;
  }

  v8 = &v6;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void AMCP::Core::Broker::fetch_first_core_if (void *a1, std::__shared_mutex_base *this, uint64_t a3)
{
  std::__shared_mutex_base::lock_shared(this);
  v6 = &this[1].__mut_.__m_.__opaque[8];
  do
  {
    v6 = *v6;
    if (!v6)
    {
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_8;
    }

    v7 = *(a3 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  while (!(*(*v7 + 48))(v7, v6 + 3));
  v8 = *(v6 + 4);
  *a1 = *(v6 + 3);
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_8:
  std::__shared_mutex_base::unlock_shared(this);
}

uint64_t AMCP::Core::Broker::fetch_first_object_id_if (std::__shared_mutex_base *this, uint64_t a2)
{
  AMCP::Core::Broker::fetch_first_core_if (&v4, this, a2);
  if (v4)
  {
    v2 = *v4;
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void AMCP::Core::Broker::fetch_owned_object_ids_if (void *a1, std::__shared_mutex_base *a2, int a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, &v11, &__p, 1uLL);
  AMCP::Core::Broker::gather_directly_owned_objects(&v15, a2, &__p);
  if (__p)
  {
    operator delete(__p);
  }

  begin = v15.__begin_;
  end = v15.__end_;
  if (v15.__begin_ != v15.__end_)
  {
    v9 = v15.__begin_;
    do
    {
      AMCP::Core::Broker::fetch_core(&__p, a2, *v9);
      if (__p)
      {
        v10 = *(a4 + 24);
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v10 + 48))(v10, &__p))
        {
          v11 = *__p;
          std::vector<unsigned int>::push_back[abi:ne200100](a1, &v11);
        }
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      ++v9;
    }

    while (v9 != end);
  }

  if (begin)
  {
    operator delete(begin);
  }
}

void sub_1DE3A80C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Core::Broker::make_snapshot(uint64_t a1, std::__shared_mutex_base *this, unsigned int **a3, char a4)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(&v29, 0, sizeof(v29));
  if (a4)
  {
    AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(&v29, *a3, a3[1]);
    if ((a4 & 2) != 0)
    {
LABEL_10:
      AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique(&v29, &AMCP::k_object_id_system);
    }
  }

  else
  {
    std::__shared_mutex_base::lock_shared(this);
    memset(&v30, 0, sizeof(v30));
    std::vector<unsigned int>::reserve(&v30, *&this[2].__gate1_.__cv_.__opaque[24]);
    AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(&v30, *a3, a3[1]);
    v9 = *a3;
    v8 = a3[1];
    while (v9 != v8)
    {
      v10 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this[2].__gate1_.__cv_.__opaque, *v9);
      if (v10)
      {
        AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::insert_unique<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(&v30, v10[8], v10[9]);
      }

      ++v9;
    }

    std::__shared_mutex_base::unlock_shared(this);
    v29 = v30;
    if ((a4 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v11 = *&v29.__begin_;
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, (v29.__end_ - v29.__begin_));
  if ((a4 & 4) != 0)
  {
    if (v11 != *(&v11 + 1))
    {
      v14 = v11;
      do
      {
        v28 = *v14;
        AMCP::Core::Broker::fetch_core(&v26, this, v28);
        v15 = v26;
        if (v26)
        {
          caulk::concurrent::shared_spin_lock::lock_shared((v26 + 48));
          *__p = 0u;
          *v24 = 0u;
          v25 = 1065353216;
          std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(__p, *(v15 + 32));
          for (i = *(v15 + 24); i; i = *i)
          {
            v17 = i[4];
            v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v17, v18))
            {
              if ((AMCP::is_invariant_property_selector(*(i + 4)) & 1) == 0)
              {
                v19 = i[4];
                Has_Property = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>();
                if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v19, Has_Property) || AMCP::Core::Operation::call_function<BOOL,AMCP::Core::Has_Property_Function>(i[4]))
                {
                  v21 = i[4];
                  AMCP::Core::Operation::call_function<AMCP::Thing>(&v30, v21);
                  std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::insert_or_assign[abi:ne200100]<AMCP::Thing>(__p, v21 + 10, &v30);
                  if (v31)
                  {
                    v31(0, &v30, 0, 0);
                  }
                }
              }
            }
          }

          caulk::concurrent::shared_spin_lock::unlock_shared((v15 + 48));
          std::unordered_map<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>::insert_or_assign[abi:ne200100]<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>(a1, &v28, __p);
          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v24[0]);
          v22 = __p[0];
          __p[0] = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        ++v14;
      }

      while (v14 != *(&v11 + 1));
    }
  }

  else if (v11 != *(&v11 + 1))
  {
    v12 = v11;
    do
    {
      LODWORD(v26) = *v12;
      AMCP::Core::Broker::fetch_core(__p, this, v26);
      if (__p[0])
      {
        AMCP::Core::Core::make_snapshot(&v30, __p[0]);
        std::unordered_map<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>::insert_or_assign[abi:ne200100]<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>(a1, &v26, &v30);
        std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v30.__end_cap_.__value_);
        begin = v30.__begin_;
        v30.__begin_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }

      ++v12;
    }

    while (v12 != *(&v11 + 1));
  }

  if (v11)
  {
    operator delete(v11);
  }
}

void sub_1DE3A83D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::unordered_map<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>::insert_or_assign[abi:ne200100]<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>(void *a1, _DWORD *a2, uint64_t *a3)
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
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
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

  if (v9[6])
  {
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v9[5]);
    v9[5] = 0;
    v11 = v9[4];
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        *(v9[3] + 8 * i) = 0;
      }
    }

    v9[6] = 0;
  }

  v13 = *a3;
  *a3 = 0;
  v14 = v9[3];
  v9[3] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v17 = a3[2];
  v16 = a3 + 2;
  v15 = v17;
  v18 = *(v16 - 1);
  v9[5] = v17;
  v9[4] = v18;
  *(v16 - 1) = 0;
  v19 = v16[1];
  v9[6] = v19;
  *(v9 + 14) = *(v16 + 4);
  if (v19)
  {
    v20 = *(v15 + 8);
    v21 = v9[4];
    if ((v21 & (v21 - 1)) != 0)
    {
      if (v20 >= v21)
      {
        v20 %= v21;
      }
    }

    else
    {
      v20 &= v21 - 1;
    }

    *(v9[3] + 8 * v20) = v9 + 5;
    *v16 = 0;
    v16[1] = 0;
  }
}

void sub_1DE3A8724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unsigned int *AMCP::Core::Core::make_snapshot(AMCP::Core::Core *this, uint64_t a2)
{
  caulk::concurrent::shared_spin_lock::lock_shared((a2 + 48));
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(this, *(a2 + 32));
  for (i = *(a2 + 24); i; i = *i)
  {
    v5 = i[4];
    v6 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      v7 = i[4];
      Has_Property = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>();
      if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, Has_Property) || AMCP::Core::Operation::call_function<BOOL,AMCP::Core::Has_Property_Function>(i[4]))
      {
        v9 = i[4];
        AMCP::Core::Operation::call_function<AMCP::Thing>(v11, v9);
        std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::insert_or_assign[abi:ne200100]<AMCP::Thing>(this, (v9 + 40), v11);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }
      }
    }
  }

  return caulk::concurrent::shared_spin_lock::unlock_shared((a2 + 48));
}

void std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::insert_or_assign[abi:ne200100]<AMCP::Thing>(void *a1, unsigned int *a2, AMCP *this)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (v11[2] != __PAIR64__(v4, v3) || *(v11 + 6) != v5)
  {
    goto LABEL_18;
  }

  AMCP::swap(this, (v11 + 4), this);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t AMCP::Core::Broker::reserve_id(AMCP::Core::Broker *this)
{
  std::__shared_mutex_base::lock(this);
  v2 = *(this + 27);
  v3 = *(this + 52);
  *(this + 52) = v3 + 1;
  __x = v3;
  v4.__i_ = *(this + 28);
  if (v4.__i_ != v2)
  {
    v5 = v4.__i_ - v2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v2[v5 >> 1];
      v9 = *v7;
      v8 = v7 + 1;
      v5 += ~(v5 >> 1);
      if (v9 < v3)
      {
        v2 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
    v4.__i_ = v2;
  }

  std::vector<unsigned int>::insert(this + 9, v4, &__x);
  std::__shared_mutex_base::unlock(this);
  return v3;
}

void AMCP::Core::Broker::make_core(void *a1, std::__shared_mutex_base *this, uint64_t a3, unsigned int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  std::__shared_mutex_base::lock(this);
  if (!a4)
  {
    ++*&this[1].__mut_.__m_.__opaque[32];
    goto LABEL_6;
  }

  v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[1].__mut_.__m_.__sig, a4);
  if (!v7)
  {
    v10 = *&this[1].__mut_.__m_.__opaque[40];
    v9 = *&this[1].__mut_.__m_.__opaque[48];
    if (v9 == v10)
    {
      v10 = *&this[1].__mut_.__m_.__opaque[48];
    }

    else
    {
      v11 = (v9 - v10) >> 2;
      do
      {
        v12 = v11 >> 1;
        v13 = &v10[4 * (v11 >> 1)];
        v15 = *v13;
        v14 = (v13 + 1);
        v11 += ~(v11 >> 1);
        if (v15 < a4)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
    }

    if (v9 == v10 && a4 > 0xF)
    {
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_24;
    }

    if (v9 != v10)
    {
      v17 = v9 - (v10 + 4);
      if (v9 != v10 + 4)
      {
        memmove(v10, v10 + 4, v9 - (v10 + 4));
      }

      *&this[1].__mut_.__m_.__opaque[48] = &v10[v17];
    }

LABEL_6:
    operator new();
  }

  v8 = v7[4];
  *a1 = v7[3];
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_24:
  std::__shared_mutex_base::unlock(this);
}

void sub_1DE3A9544(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::__shared_ptr_emplace<AMCP::Core::Core>::__on_zero_shared(uint64_t a1)
{
  caulk::concurrent::shared_spin_lock::~shared_spin_lock((a1 + 72));

  return std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table((a1 + 32));
}

void std::__shared_ptr_emplace<AMCP::Core::Core>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596A998;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Core::Broker::destroy_core(std::__shared_mutex_base *this, unsigned int a2)
{
  if (a2)
  {
    std::__shared_mutex_base::lock(this);
    v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[1].__mut_.__m_.__sig, a2);
    if (v4)
    {
      v5 = *this[1].__mut_.__m_.__opaque;
      v6 = v4[1];
      v7 = vcnt_s8(v5);
      v7.i16[0] = vaddlv_u8(v7);
      if (v7.u32[0] > 1uLL)
      {
        if (v6 >= *&v5)
        {
          v6 %= *&v5;
        }
      }

      else
      {
        v6 &= *&v5 - 1;
      }

      sig = this[1].__mut_.__m_.__sig;
      v9 = *(sig + 8 * v6);
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9 != v4);
      if (v10 == &this[1].__mut_.__m_.__opaque[8])
      {
        goto LABEL_20;
      }

      v11 = v10[1];
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_20:
        if (!*v4)
        {
          goto LABEL_21;
        }

        v12 = *(*v4 + 8);
        if (v7.u32[0] > 1uLL)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v6)
        {
LABEL_21:
          *(sig + 8 * v6) = 0;
        }
      }

      v13 = *v4;
      if (*v4)
      {
        v14 = *(v13 + 8);
        if (v7.u32[0] > 1uLL)
        {
          if (v14 >= *&v5)
          {
            v14 %= *&v5;
          }
        }

        else
        {
          v14 &= *&v5 - 1;
        }

        if (v14 != v6)
        {
          *(this[1].__mut_.__m_.__sig + 8 * v14) = v10;
          v13 = *v4;
        }
      }

      *v10 = v13;
      *v4 = 0;
      --*&this[1].__mut_.__m_.__opaque[16];
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v4);
    }

    std::__shared_mutex_base::unlock(this);
    std::__shared_mutex_base::lock(this);
    opaque = this[2].__gate1_.__cv_.__opaque;
    v16 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this[2].__gate1_.__cv_.__opaque, a2);
    if (v16)
    {
      v17 = v16;
      for (i = *(v16 + 6); i; i = *(v20 + 6))
      {
        v19 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this[2].__gate1_.__cv_.__opaque, i);
        if (!v19)
        {
          break;
        }

        v20 = v19;
        AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::erase((v19 + 4), a2);
        AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>::erase((v20 + 8), a2);
      }

      v21 = *&this[2].__gate1_.__cv_.__opaque[8];
      v22 = v17[1];
      v23 = vcnt_s8(v21);
      v23.i16[0] = vaddlv_u8(v23);
      if (v23.u32[0] > 1uLL)
      {
        if (v22 >= *&v21)
        {
          v22 %= *&v21;
        }
      }

      else
      {
        v22 &= *&v21 - 1;
      }

      v24 = *(*opaque + 8 * v22);
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24 != v17);
      if (v25 == &this[2].__gate1_.__cv_.__opaque[16])
      {
        goto LABEL_51;
      }

      v26 = v25[1];
      if (v23.u32[0] > 1uLL)
      {
        if (v26 >= *&v21)
        {
          v26 %= *&v21;
        }
      }

      else
      {
        v26 &= *&v21 - 1;
      }

      if (v26 != v22)
      {
LABEL_51:
        if (!*v17)
        {
          goto LABEL_52;
        }

        v27 = *(*v17 + 8);
        if (v23.u32[0] > 1uLL)
        {
          if (v27 >= *&v21)
          {
            v27 %= *&v21;
          }
        }

        else
        {
          v27 &= *&v21 - 1;
        }

        if (v27 != v22)
        {
LABEL_52:
          *(*opaque + 8 * v22) = 0;
        }
      }

      v28 = *v17;
      if (*v17)
      {
        v29 = *(v28 + 8);
        if (v23.u32[0] > 1uLL)
        {
          if (v29 >= *&v21)
          {
            v29 %= *&v21;
          }
        }

        else
        {
          v29 &= *&v21 - 1;
        }

        if (v29 != v22)
        {
          *(*opaque + 8 * v29) = v25;
          v28 = *v17;
        }
      }

      *v25 = v28;
      *v17 = 0;
      --*&this[2].__gate1_.__cv_.__opaque[24];
      v30[0] = v17;
      v30[1] = this + 408;
      v31 = 1;
      memset(v32, 0, sizeof(v32));
      std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<unsigned int,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>,AMCP::Utility::Sorted_Vector<unsigned int,AMCP::Utility::Extract_Key_Self<unsigned int>,std::less<unsigned int>,std::allocator<unsigned int>>>>,void *>>>>::~unique_ptr[abi:ne200100](v30);
    }

    std::__shared_mutex_base::unlock(this);
  }
}

uint64_t std::__function::__func<AMCP::Core::Broker::destroy_all_cores(void)::$_1,std::allocator<AMCP::Core::Broker::destroy_all_cores(void)::$_1>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core6Broker17destroy_all_coresEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Core::Broker::destroy_all_cores(void)::$_0,std::allocator<AMCP::Core::Broker::destroy_all_cores(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core6Broker17destroy_all_coresEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void AMCP::IO_Core::Reflector::~Reflector(AMCP::IO_Core::Reflector *this)
{
  *this = &unk_1F596AAE8;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  AMCP::IO_Core::Node::~Node(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596AAE8;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  AMCP::IO_Core::Node::~Node(this);
}

void *std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
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

void sub_1DE3A9EB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
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

void sub_1DE3AA118(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core9Reflector18install_node_procsERKN2CA17StreamDescriptionEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

AMCP::Log::AMCP_Scope_Registry *std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::operator()@<X0>(AMCP::Log::AMCP_Scope_Registry *result@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      *buf = 136315650;
      v20 = "Reflector.cpp";
      v21 = 1024;
      v22 = 91;
      v23 = 2080;
      v24 = "not (index == 0)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Reflector nodes only support one terminal in and one terminal out", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "Reflector nodes only support one terminal in and one terminal out", v8);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "auto AMCP::IO_Core::Reflector::install_node_procs(const CA::StreamDescription &)::(anonymous class)::operator()(Direction, size_t) const";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Reflector.cpp";
    v27 = 91;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v3 = *(result + 2);
  *a3 = *(result + 1);
  a3[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DE3AA480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596AC10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_1F596AC10;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_1F596AC10;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core9Reflector18install_node_procsERKN2CA17StreamDescriptionEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596AB90;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596AB90;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0,std::allocator<AMCP::IO_Core::Reflector::install_node_procs(CA::StreamDescription const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596AB90;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::DAL::Multi_Reader_Synchronized_Mixer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596AB40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_emplace<AMCP::DAL::Synchronizer>::__on_zero_shared(uint64_t a1)
{
  v6 = (a1 + 168);
  std::vector<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::~__hash_table(a1 + 32);
}

void std::__shared_ptr_emplace<AMCP::DAL::Synchronizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5978838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<int (*)(unsigned long long),std::allocator<int (*)(unsigned long long)>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001DE767634))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<int (*)(unsigned long long),std::allocator<int (*)(unsigned long long)>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596ACA8;
  a2[1] = v2;
  return result;
}

void AMCP::Graph::Manifest_Queue::flush(AMCP::Graph::Manifest_Queue *this)
{
  v52 = *MEMORY[0x1E69E9840];
  std::condition_variable::notify_all((this + 264));
  v2 = *(this + 70);
  if (v2)
  {
    AMCP::Graph::Manifest::end_processing(v2, *this, (this + 312));
    AMCP::Graph::Manifest::teardown_processing(*(this + 70));
    v3 = *(this + 71);
    *(this + 35) = 0u;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  std::mutex::lock((this + 112));
  *(this + 176) = 1;
  std::mutex::unlock((this + 112));
  AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue_with_lock(v35, this + 16);
  if (v51 == 1)
  {
    do
    {
      if (v35[0])
      {
        AMCP::Graph::Manifest::end_processing(v35[0], *this, &v41);
        AMCP::Graph::Manifest::teardown_processing(v35[0]);
      }

      AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue_with_lock(&v16, this + 16);
      if (v51 == v34)
      {
        if (v51)
        {
          v5 = v16;
          v16 = 0uLL;
          v6 = v35[1];
          *v35 = v5;
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v36 = v17;
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          __p = *v18;
          v38 = v19;
          v18[1] = 0;
          v19 = 0;
          v18[0] = 0;
          v39 = v20;
          v40 = v21;
          v41 = v22;
          v42 = v23;
          v7 = v24;
          v24 = 0uLL;
          v8 = *(&v43 + 1);
          v43 = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          v44 = v25;
          v9 = v46;
          v46 = v27;
          v27 = v9;
          caulk::mach::details::release_os_object(0, v4);
          v10 = *&v48[16];
          v12 = v47;
          v11 = *v48;
          v47 = v28;
          *v48 = v29;
          *&v48[16] = v30;
          v28 = v12;
          v29 = v11;
          v30 = v10;
          LOBYTE(v10) = v48[24];
          v48[24] = v31;
          v31 = v10;
          LOBYTE(v10) = v49;
          v49 = v32;
          v32 = v10;
          v50 = v33;
        }
      }

      else if (v51)
      {
        caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v45);
        if (*(&v43 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (v35[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35[1]);
        }

        v51 = 0;
      }

      else
      {
        *v35 = v16;
        v16 = 0uLL;
        __p = *v18;
        v36 = v17;
        v38 = v19;
        v18[1] = 0;
        v19 = 0;
        v18[0] = 0;
        v39 = v20;
        v40 = v21;
        v42 = v23;
        v41 = v22;
        v43 = v24;
        v24 = 0uLL;
        v44 = v25;
        v47 = 0u;
        memset(v48, 0, sizeof(v48));
        v49 = 0;
        v45 = MEMORY[0x1E69E3C20] + 16;
        v46 = v27;
        v27 = 0;
        caulk::mach::details::release_os_object(0, v4);
        v13 = *&v48[16];
        v15 = v47;
        v14 = *v48;
        v47 = v28;
        *v48 = v29;
        *&v48[16] = v30;
        v28 = v15;
        v29 = v14;
        v30 = v13;
        LOBYTE(v13) = v48[24];
        v48[24] = v31;
        v31 = v13;
        LOBYTE(v13) = v49;
        v49 = v32;
        v32 = v13;
        v50 = v33;
        v51 = 1;
      }

      if (v34 == 1)
      {
        caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v26);
        if (*(&v24 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
        }

        if (v18[0])
        {
          v18[1] = v18[0];
          operator delete(v18[0]);
        }

        if (*(&v16 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
        }
      }
    }

    while ((v51 & 1) != 0);
  }

  std::mutex::lock((this + 112));
  *(this + 176) = 0;
  std::mutex::unlock((this + 112));
  std::condition_variable::notify_all((this + 264));
  if (v51 == 1)
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v45);
    if (*(&v43 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v35[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35[1]);
    }
  }
}

void sub_1DE3AAF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  std::optional<AMCP::Graph::Manifest_Queue::Incoming_Payload>::~optional(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t caulk::concurrent::stack<AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::Message,caulk::concurrent::intrusive_single_link_member<AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::Message,&AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::Message::m_next_free_message>>::pop()
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if (result)
  {
    v7 = result;
    do
    {
      _X6 = atomic_load((result + 200));
      _X5 = 0;
      __asm { CASPAL          X4, X5, X6, X7, [X8] }

      if (_X4 == v7)
      {
        break;
      }

      result = _X4;
      v7 = _X4;
    }

    while (_X4);
  }

  return result;
}

void AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue_with_lock(unint64_t a1, uint64_t a2)
{
  std::mutex::lock((a2 + 96));
  AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue(a1, a2);

  std::mutex::unlock((a2 + 96));
}

uint64_t std::optional<AMCP::Graph::Manifest_Queue::Incoming_Payload>::~optional(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 128));
    v2 = *(a1 + 112);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return a1;
}

__n128 caulk::mach::os_workgroup_interval_managed::swap(__n128 *this, __n128 *a2)
{
  v4 = this->n128_u64[1];
  this->n128_u64[1] = 0;
  this->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[1] = v4;
  caulk::mach::details::release_os_object(0, a2);
  result = this[1];
  v6 = this[2];
  v7 = this[3].n128_u64[0];
  v8 = a2[3].n128_u64[0];
  v9 = a2[2];
  this[1] = a2[1];
  this[2] = v9;
  this[3].n128_u64[0] = v8;
  a2[3].n128_u64[0] = v7;
  a2[1] = result;
  a2[2] = v6;
  LOBYTE(v7) = this[3].n128_u8[8];
  this[3].n128_u8[8] = a2[3].n128_u8[8];
  a2[3].n128_u8[8] = v7;
  LOBYTE(v7) = this[3].n128_u8[9];
  this[3].n128_u8[9] = a2[3].n128_u8[9];
  a2[3].n128_u8[9] = v7;
  return result;
}

unint64_t AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue(unint64_t result, atomic_ullong *a2)
{
  v2 = result;
  v41 = *MEMORY[0x1E69E9840];
  _X22 = a2[8];
  if (!_X22)
  {
    v4 = atomic_exchange_explicit(a2, 0, memory_order_acquire);
    if (!v4)
    {
      *result = 0;
      *(result + 200) = 0;
      return result;
    }

    _X22 = 0;
    do
    {
      v5 = _X22;
      _X22 = v4;
      v6 = (v4 + 200);
      v4 = atomic_load((v4 + 200));
      atomic_store(v5, v6);
    }

    while (v4);
    a2[8] = _X22;
  }

  v7 = atomic_load((_X22 + 200));
  a2[8] = v7;
  v8 = *(_X22 + 8);
  *result = *_X22;
  *(result + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(_X22 + 16);
  *(result + 24) = 0;
  *(result + 16) = v9;
  *(result + 32) = 0;
  *(result + 40) = 0;
  std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>((result + 24), *(_X22 + 24), *(_X22 + 32), (*(_X22 + 32) - *(_X22 + 24)) >> 2);
  v11 = *(_X22 + 64);
  *(v2 + 48) = *(_X22 + 48);
  *(v2 + 64) = v11;
  v12 = *(_X22 + 80);
  *(v2 + 96) = *(_X22 + 96);
  *(v2 + 80) = v12;
  v13 = *(_X22 + 112);
  *(v2 + 104) = *(_X22 + 104);
  *(v2 + 112) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(v2 + 120) = *(_X22 + 120);
  *(v2 + 128) = MEMORY[0x1E69E3C18] + 16;
  *(v2 + 136) = caulk::mach::details::retain_os_object(*(_X22 + 136), v10);
  v15 = *(_X22 + 169);
  v16 = *(_X22 + 160);
  *(v2 + 144) = *(_X22 + 144);
  *(v2 + 160) = v16;
  *(v2 + 169) = v15;
  *(v2 + 128) = MEMORY[0x1E69E3C20] + 16;
  *(v2 + 185) = *(_X22 + 185);
  *(v2 + 192) = *(_X22 + 192);
  *(v2 + 200) = 1;
  v40 = 0;
  memset(&__p[10], 0, 24);
  memset(__p, 0, 24);
  memset(v39 + 8, 0, 56);
  *&v39[0] = MEMORY[0x1E69E3C20] + 16;
  v17 = *(_X22 + 8);
  *_X22 = 0;
  *(_X22 + 8) = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    v18 = __p[0];
  }

  else
  {
    v18 = 0;
  }

  *(_X22 + 16) = v18;
  v19 = *(_X22 + 24);
  if (v19)
  {
    *(_X22 + 32) = v19;
    operator delete(v19);
    *(_X22 + 24) = 0;
    *(_X22 + 32) = 0;
    *(_X22 + 40) = 0;
  }

  *(_X22 + 24) = *&__p[1];
  *(_X22 + 40) = 0;
  *(_X22 + 48) = 0u;
  *(_X22 + 64) = 0u;
  *(_X22 + 80) = 0u;
  *(_X22 + 96) = __p[10];
  v20 = *(_X22 + 112);
  *(_X22 + 104) = *&__p[11];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  *(_X22 + 120) = 1065353216;
  v21 = *(_X22 + 136);
  *(_X22 + 136) = *(&v39[0] + 1);
  *(&v39[0] + 1) = v21;
  caulk::mach::details::release_os_object(0, v14);
  v22 = *(_X22 + 144);
  v23 = *(_X22 + 160);
  v24 = *(_X22 + 176);
  v25 = *&v39[3];
  v26 = v39[2];
  *(_X22 + 144) = v39[1];
  *(_X22 + 160) = v26;
  *(_X22 + 176) = v25;
  *&v39[3] = v24;
  v39[2] = v23;
  v39[1] = v22;
  LOBYTE(v24) = *(_X22 + 184);
  *(_X22 + 184) = BYTE8(v39[3]);
  BYTE8(v39[3]) = v24;
  LOBYTE(v24) = *(_X22 + 185);
  *(_X22 + 185) = BYTE9(v39[3]);
  BYTE9(v39[3]) = v24;
  *(_X22 + 192) = v40;
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v39);
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  atomic_store(_X2, (_X22 + 200));
  _X4 = _X22;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X4, X5, [X8] }

  if (result != _X2)
  {
    do
    {
      atomic_store(result, (_X22 + 200));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X22, X23, [X8] }

      _ZF = _X2 == result;
      result = _X2;
    }

    while (!_ZF);
  }

  return result;
}

void sub_1DE3AB518(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(AMCP::Graph::Manifest_Queue *this)
{
  v2 = (this + 312);
  v182 = *MEMORY[0x1E69E9840];
  v119 = (this + 200);
  v120 = (this + 376);
  v121 = (this + 264);
  v118 = (this + 312);
  do
  {
    AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::dequeue(&v162, this + 2);
    if (v180 != 1)
    {
      break;
    }

    v151 = *v2;
    v5 = *(this + 42);
    v4 = *(this + 43);
    v152 = *(v2 + 2);
    v153 = v5;
    v154 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v155 = *(this + 88);
    v156 = MEMORY[0x1E69E3C18] + 16;
    v157 = caulk::mach::details::retain_os_object(*(this + 46), v3);
    v7 = v120[1];
    v158 = *v120;
    *v159 = v7;
    *&v159[9] = *(v120 + 25);
    v156 = MEMORY[0x1E69E3C20] + 16;
    v160 = *(this + 417);
    v161 = *(this + 212);
    v8 = *(this + 42);
    v9 = *(this + 43);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v8)
    {
      v22 = 1;
      if (v9)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v10 = *(this + 42);
    v11 = *(this + 43);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v171;
    v13 = v172;
    if (v172)
    {
      atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10 && v12)
    {
      v14 = (*(*v10 + 16))(v10);
      v15 = (*(*v12 + 16))(v12);
      v16 = *(v14 + 23);
      if (v16 >= 0)
      {
        v17 = *(v14 + 23);
      }

      else
      {
        v17 = *(v14 + 8);
      }

      v18 = *(v15 + 23);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v15 + 8);
      }

      if (v17 != v18)
      {
        v22 = 1;
        v2 = v118;
        if (v13)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      if (v16 >= 0)
      {
        v20 = v14;
      }

      else
      {
        v20 = *v14;
      }

      if (v19 >= 0)
      {
        v21 = v15;
      }

      else
      {
        v21 = *v15;
      }

      v2 = v118;
      if (memcmp(v20, v21, v17))
      {
LABEL_27:
        v22 = 1;
        if (!v13)
        {
          goto LABEL_29;
        }

LABEL_28:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        goto LABEL_29;
      }
    }

    else if (v10 | v12)
    {
      goto LABEL_27;
    }

    if (*(this + 88) == v173 && *(this + 46) == v175 && *(this + 416) == v177[24] && *(this + 417) == v178)
    {
      v26 = AMCP::DAL::DAL_Time_Delta::operator==(v2, &v169);
      v2 = v118;
    }

    else
    {
      v26 = 0;
    }

    v22 = !v26;
    if (v13)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v9)
    {
LABEL_32:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

LABEL_33:
    if (!v22)
    {
      goto LABEL_65;
    }

    v24 = *(this + 42);
    v23 = *(this + 43);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v24)
      {
        v25 = v162;
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        if (!v25)
        {
          goto LABEL_51;
        }
      }

      else
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }

    else if (v24 && !v162)
    {
LABEL_51:
      *&v181.st_dev = v169;
      *&v181.st_uid = v170;
      *&v181.st_rdev = v171;
      v181.st_atimespec.tv_sec = v172;
      if (v172)
      {
        atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *&v181.st_atimespec.tv_nsec = v173;
      v181.st_mtimespec.tv_sec = MEMORY[0x1E69E3C18] + 16;
      v181.st_mtimespec.tv_nsec = caulk::mach::details::retain_os_object(v175, v6);
      v181.st_ctimespec = v176;
      v181.st_birthtimespec = *v177;
      *(&v181.st_birthtimespec.tv_nsec + 1) = *&v177[9];
      v181.st_mtimespec.tv_sec = MEMORY[0x1E69E3C20] + 16;
      BYTE1(v181.st_blocks) = v178;
      LOWORD(v181.st_blksize) = v179;
      LOBYTE(v181.st_gen) = 1;
      std::__optional_storage_base<AMCP::Graph::Manifest_Execution_Context,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AMCP::Graph::Manifest_Execution_Context,false>>(this + 432, &v181.st_dev);
      if (LOBYTE(v181.st_gen) == 1)
      {
        caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v181.st_mtimespec);
        tv_sec = v181.st_atimespec.tv_sec;
        if (v181.st_atimespec.tv_sec)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_65;
    }

    updated = AMCP::Graph::Manifest_Queue::update_execution_context(this, &v169);
    if (round(updated) != 0.0)
    {
      v29 = *(this + 70);
      v30 = *(v29 + 72);
      v31 = *(v29 + 80);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::Graph::Manifest_Counter::adjust_cycle_anchor_for_buffer_size_change(*(v30 + 64), 0.0 - updated);
      if (v31)
      {
        tv_sec = v31;
LABEL_64:
        std::__shared_weak_count::__release_shared[abi:ne200100](tv_sec);
      }
    }

LABEL_65:
    v32 = v162;
    if (v162)
    {
      if (!*(this + 70))
      {
        v37 = *(&v162 + 1);
        if (*(&v162 + 1))
        {
          atomic_fetch_add_explicit((*(&v162 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        *(this + 70) = v32;
        v38 = *(this + 71);
        *(this + 71) = v37;
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          v32 = *(this + 70);
        }

        AMCP::Graph::Manifest::get_iocontext_uid(&__str, v32);
        std::string::basic_string(&v181, &__str, 0, 0x3FuLL, &__p);
        if ((v181.st_gid & 0x80000000) == 0)
        {
          v39 = &v181;
        }

        else
        {
          v39 = *&v181.st_dev;
        }

        v40 = pthread_setname_np(v39);
        v41 = v40;
        if (SHIBYTE(v181.st_gid) < 0)
        {
          operator delete(*&v181.st_dev);
        }

        if (!v41)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          AMCP::Graph::Manifest::setup_processing(*(this + 70), v2, v163, this + 704);
        }

        v108 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v108 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v40);
        }

        v110 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v109 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v109)
        {
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
          v111 = *v110;
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }

        else
        {
          v111 = *v110;
        }

        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          v181.st_dev = 136315906;
          *&v181.st_mode = "Manifest_Queue.cpp";
          WORD2(v181.st_ino) = 1024;
          *(&v181.st_ino + 6) = 261;
          HIWORD(v181.st_uid) = 2080;
          *&v181.st_gid = "not (error == 0)";
          *(&v181.st_rdev + 2) = 1024;
          *(&v181.st_rdev + 6) = v41;
          _os_log_error_impl(&dword_1DE1F9000, v111, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s pthread_setname_np failed: %d", &v181, 0x22u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v124);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v127, "pthread_setname_np failed: %d", v116, v41);
        std::logic_error::logic_error(&v123, &v127);
        v123.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&__p, &v123);
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = -1;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v181, &__p);
        v181.st_atimespec.tv_sec = "void AMCP::Graph::set_thread_name_from_manifest_name(const std::string &)";
        v181.st_atimespec.tv_nsec = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
        LODWORD(v181.st_mtimespec.tv_sec) = 261;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v125);
      }

      v34 = *(v162 + 96);
      v33 = *(v162 + 104);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        if (v34)
        {
          v32 = v162;
          v34 = *(v162 + 96);
          v35 = *(v162 + 104);
          if (v35)
          {
            v36 = 0;
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            goto LABEL_87;
          }

LABEL_86:
          v36 = 1;
LABEL_87:
          AMCP::Graph::Manifest::get_iocontext_uid(&v181, v32);
          if ((v181.st_gid & 0x80000000) == 0)
          {
            v42 = &v181;
          }

          else
          {
            v42 = *&v181.st_dev;
          }

          AMCP::Graph::Manifest_Log::add_message(v34, 5, "Manifest: %s from %p to %p", v42, *(this + 70), v162);
          if (SHIBYTE(v181.st_gid) < 0)
          {
            operator delete(*&v181.st_dev);
            if ((v36 & 1) == 0)
            {
LABEL_92:
              std::__shared_weak_count::__release_shared[abi:ne200100](v35);
            }
          }

          else if ((v36 & 1) == 0)
          {
            goto LABEL_92;
          }
        }
      }

      else if (v34)
      {
        v35 = 0;
        goto LABEL_86;
      }

      v43 = v162;
      v44 = *(this + 35);
      *(this + 35) = v162;
      v162 = v44;
      v45 = *(v43 + 72);
      v46 = *(v43 + 80);
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = *(v45 + 64);
      v49 = *(v44 + 72);
      v48 = *(v44 + 80);
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = *(v49 + 64);
      *(v47 + 8) = *(v50 + 8);
      *(v47 + 16) = *(v50 + 16);
      *(v47 + 40) = *(v50 + 40);
      *v47 = *v50;
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      v51 = *(this + 24);
      v52 = *this;
      v128 = v151;
      v129 = v152;
      v130 = v153;
      v131 = v154;
      if (v154)
      {
        atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v132 = v155;
      v133 = MEMORY[0x1E69E3C18] + 16;
      v53 = caulk::mach::details::retain_os_object(v157, v32);
      v135 = v158;
      *v136 = *v159;
      *&v136[9] = *&v159[9];
      v133 = MEMORY[0x1E69E3C20] + 16;
      v134 = v53;
      v137 = v160;
      v138 = v161;
      LODWORD(__p.__r_.__value_.__l.__data_) = v52;
      *&__p.__r_.__value_.__r.__words[1] = v128;
      v140 = v129;
      v141 = v130;
      v142 = v131;
      if (v131)
      {
        atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
        v53 = v134;
      }

      v143 = v132;
      v144 = MEMORY[0x1E69E3C18] + 16;
      v55 = caulk::mach::details::retain_os_object(v53, v54);
      v146 = v135;
      *v147 = *v136;
      *&v147[9] = *&v136[9];
      v144 = MEMORY[0x1E69E3C20] + 16;
      v145 = v55;
      v148 = v137;
      v149 = v138;
      v150 = v162;
      if (*(&v162 + 1))
      {
        atomic_fetch_add_explicit((*(&v162 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
      }

      v56 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v56 + 16) = 0;
      *v56 = &unk_1F596AE20;
      *(v56 + 8) = 0;
      *(v56 + 24) = v119;
      *(v56 + 32) = v121;
      AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::Manifest_Disposal_Payload(&v181, &__p);
      AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::Manifest_Disposal_Payload(v56 + 40, &v181);
      AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload(&v181);
      *v56 = &unk_1F596ADC8;
      caulk::concurrent::messenger::enqueue(v51, v56);
      AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload(&__p);
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v133);
      if (v131)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v131);
      }

      v57 = *(this + 70);
      v58 = *(v57 + 72);
      v59 = *(v57 + 80);
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = *(v58 + 96);
      v61 = *(v58 + 104);
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v60 + 32))(&v181);
      v62 = *&v181.st_uid;
      *(this + 40) = *&v181.st_dev;
      *(this + 41) = v62;
      st_mtimespec = v181.st_mtimespec;
      *(this + 42) = v181.st_atimespec;
      *(this + 43) = st_mtimespec;
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      v64 = *(this + 79);
      if (v64)
      {
        v64 = (*(*v64 + 48))(v64);
      }

      v65 = *(this + 70);
      v66 = *this;
      AMCP::Graph::File_Capture_Settings::instance(v64);
      if (byte_1ECDAB0CC == 1)
      {
        get_temporary_folder(&v181);
        v68 = std::string::append(&v181, "Graphs/", 7uLL);
        v69 = *&v68->__r_.__value_.__l.__data_;
        v127.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
        *&v127.__r_.__value_.__l.__data_ = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v181.st_gid) < 0)
        {
          operator delete(*&v181.st_dev);
        }

        if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v127;
        }

        else
        {
          v70 = v127.__r_.__value_.__r.__words[0];
        }

        if (stat(v70, &v181) == -1)
        {
          if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = &v127;
          }

          else
          {
            v71 = v127.__r_.__value_.__r.__words[0];
          }

          mkdir(v71, 0x1FDu);
        }

        AMCP::Graph::Manifest::get_iocontext_uid(&v181, v65);
        if ((v181.st_gid & 0x80000000) == 0)
        {
          v72 = &v181;
        }

        else
        {
          v72 = *&v181.st_dev;
        }

        if ((v181.st_gid & 0x80000000) == 0)
        {
          st_gid_high = HIBYTE(v181.st_gid);
        }

        else
        {
          st_gid_high = v181.st_ino;
        }

        v74 = std::string::append(&v127, v72, st_gid_high);
        v75 = *&v74->__r_.__value_.__l.__data_;
        v126.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
        *&v126.__r_.__value_.__l.__data_ = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        v76 = std::string::append(&v126, "-Manifest-XXXXXX.dot", 0x14uLL);
        v77 = *&v76->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v126.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v181.st_gid) < 0)
        {
          operator delete(*&v181.st_dev);
        }

        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v79 = mkstemps(p_p, 4);
        if (v79 != -1)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v126, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v126 = __p;
          }

          AMCP::Graph::Manifest::write_to_dot_file(v65, &v126);
        }

        v80 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v80 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v79);
        }

        v82 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v81 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v81)
        {
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          v83 = *v82;
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }

        else
        {
          v83 = *v82;
        }

        v67 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
        if (v67)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = &__p;
          }

          else
          {
            v84 = __p.__r_.__value_.__r.__words[0];
          }

          v85 = __error();
          v86 = strerror(*v85);
          v181.st_dev = 136315906;
          *&v181.st_mode = "Manifest.cpp";
          WORD2(v181.st_ino) = 1024;
          *(&v181.st_ino + 6) = 972;
          HIWORD(v181.st_uid) = 2080;
          *&v181.st_gid = v84;
          *(&v181.st_rdev + 2) = 2080;
          *(&v181.st_rdev + 6) = v86;
          _os_log_error_impl(&dword_1DE1F9000, v83, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to make a manifest file for template %s - %s", &v181, 0x26u);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v87 = *(v65 + 96);
      if (v87)
      {
        AMCP::Graph::Manifest::get_iocontext_uid(&v181, v65);
        v88 = (v181.st_gid & 0x80000000) == 0 ? &v181 : *&v181.st_dev;
        AMCP::Graph::Manifest_Log::add_message(v87, 0, "Manifest: %s Begin Processing  %p", v88, v65);
        if (SHIBYTE(v181.st_gid) < 0)
        {
          operator delete(*&v181.st_dev);
        }
      }

      if (*v65 != 1)
      {
        v112 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v112 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v67);
        }

        v114 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v113 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v113)
        {
          atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
          v115 = *v114;
          std::__shared_weak_count::__release_shared[abi:ne200100](v113);
        }

        else
        {
          v115 = *v114;
        }

        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          v181.st_dev = 136315650;
          *&v181.st_mode = "Manifest.cpp";
          WORD2(v181.st_ino) = 1024;
          *(&v181.st_ino + 6) = 555;
          HIWORD(v181.st_uid) = 2080;
          *&v181.st_gid = "not (m_processing_state == Processing_State::Configured)";
          _os_log_error_impl(&dword_1DE1F9000, v115, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", &v181, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v123);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v127, "", v117);
        std::logic_error::logic_error(&__str, &v127);
        __str.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&__p, &__str);
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = -1;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v181, &__p);
        v181.st_atimespec.tv_sec = "void AMCP::Graph::Manifest::begin_processing(Object_ID, const Manifest_Execution_Context &, const Manifest_Start_State &)";
        v181.st_atimespec.tv_nsec = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
        LODWORD(v181.st_mtimespec.tv_sec) = 555;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v125);
      }

      v89 = *(*(v65 + 72) + 24);
      if (v163[1] == 2)
      {
        AMCP::Graph::Manifest_Inventory::begin_processing(v89, v66);
        AMCP::Graph::Manifest::calculate_anchor_time(&v181, v65, v2, v166, v167, v168);
        AMCP::Graph::Manifest_Inventory::anchor_time(*(v65 + 72), v66, v2, &v181);
        AMCP::Graph::Manifest::calculate_all_required_input_samples(v65, v2);
        v90 = *(v65 + 8);
        v91 = *(v65 + 16);
        while (v90 != v91)
        {
          v92 = *v90;
          v94 = **v90;
          v93 = (*v90)[1];
          while (v94 != v93)
          {
            v96 = *v94;
            v95 = v94[1];
            while (v96 != v95)
            {
              AMCP::Graph::Manifest_Inventory::cross_check_buffer(*(v65 + 72), *v96);
              v96 += 2;
            }

            v94 += 5;
          }

          v98 = v92[3];
          v97 = v92[4];
          while (v98 != v97)
          {
            v100 = *v98;
            v99 = v98[1];
            while (v100 != v99)
            {
              AMCP::Graph::Manifest_Inventory::cross_check_buffer(*(v65 + 72), *v100);
              v100 += 2;
            }

            v98 += 5;
          }

          v101 = *v90;
          *(v101 + 22) = 3;
          v102 = v101[6][23];
          if (v102)
          {
            std::function<void ()>::operator()(v102, v66);
          }

          v90 += 2;
        }

        *v65 = 3;
        if (v181.st_atimespec.tv_sec)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v181.st_atimespec.tv_sec);
        }

        v2 = v118;
      }

      else
      {
        AMCP::Graph::Manifest_Inventory::begin_processing(v89, v66);
        AMCP::Graph::Manifest::calculate_anchor_time(&v181, v65, v2, v166, v167, v168);
        v103 = *(v65 + 72);
        if (*(v103 + 32))
        {
          std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__deallocate_node(*(v103 + 24));
          *(v103 + 24) = 0;
          v104 = *(v103 + 16);
          if (v104)
          {
            for (i = 0; i != v104; ++i)
            {
              *(*(v103 + 8) + 8 * i) = 0;
            }
          }

          *(v103 + 32) = 0;
        }

        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((v103 + 112));
        AMCP::Graph::Manifest_Inventory::anchor_time(*(v65 + 72), v66, v2, &v181);
        *v65 = 2;
        if (v181.st_atimespec.tv_sec)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v181.st_atimespec.tv_sec);
        }
      }

      if (v162 && **(this + 70) == 2 && *v162 == 3)
      {
        AMCP::Graph::finish_manifest(&v162, *this, &v151);
      }

      std::mutex::lock(v119);
      std::condition_variable::notify_all(v121);
      v106 = *(&v162 + 1);
      v162 = 0uLL;
      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v106);
      }

      std::mutex::unlock(v119);
    }

    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v156);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }

    if (v180)
    {
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v174);
      if (v172)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v172);
      }

      if (v164)
      {
        v165 = v164;
        operator delete(v164);
      }

      if (*(&v162 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v162 + 1));
      }
    }
  }

  while (!*(this + 70));
  return 0;
}

void sub_1DE3AC8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  AMCP::Graph::Manifest_Execution_Context::~Manifest_Execution_Context(&STACK[0x210]);
  std::optional<AMCP::Graph::Manifest_Queue::Incoming_Payload>::~optional(&STACK[0x290]);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(AMCP::Graph::Manifest_Queue *this)
{
  v1 = *(this + 70);
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(v14, *(v3 + 64));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AMCP::Graph::Manifest::get_master_timebase(&v7, *(*(this + 70) + 72), *(*(this + 70) + 80));
  v8 = 2;
  v9 = 0x3FF0000000000000;
  v10 = 0;
  v11 = v7;
  boost::operators_impl::operator-(v12, v14, &v8);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  host_time = AMCP::DAL::DAL_Time::get_host_time(v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return host_time;
}

void sub_1DE3ACC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v23 = *(v21 - 24);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3ACC6C()
{
  if (!v0)
  {
    JUMPOUT(0x1DE3ACC64);
  }

  JUMPOUT(0x1DE3ACC60);
}

uint64_t AMCP::Graph::Manifest_Queue::wait_for_next_cycle(AMCP::Graph::Manifest_Queue *this)
{
  result = AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(this);
  if (result)
  {
    v4 = result;
    v3 = *(this + 75);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v3 + 48))(v3, &v4);
  }

  return result;
}

double AMCP::Graph::Manifest_Queue::update_execution_context(AMCP::Graph::Manifest_Queue *this, const AMCP::Graph::Manifest_Execution_Context *a2)
{
  if (*(this + 46))
  {
    caulk::mach::os_workgroup_interval_managed::finish((this + 360));
    if (*(this + 46))
    {
      caulk::mach::os_workgroup_managed::leave((this + 360));
    }
  }

  v4 = 0.0;
  if (*(this + 70))
  {
    v5 = *(a2 + 4);
    v20[0] = *(a2 + 3);
    v20[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::DAL_Time_Delta::translate_time_delta(v21, (this + 312), v20);
    v6 = AMCP::DAL::DAL_Time_Delta::operator==(v21, a2);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (!v6)
    {
      v7 = *(this + 70);
      v9 = *(v7 + 72);
      v8 = *(v7 + 80);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(this + 312) & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate((this + 312));
      }

      v10 = *(this + 40);
      if ((*a2 & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(a2);
      }

      v11 = *(a2 + 1);
      AMCP::Graph::Manifest_Inventory::set_nominal_buffer_size(*(v9 + 24), *this, a2);
      cycle_size_in_host_ticks = AMCP::Graph::Manifest_Queue::get_cycle_size_in_host_ticks(this);
      v13 = pthread_self();
      AMCP::Utility::configure_thread_for_realtime(v13, cycle_size_in_host_ticks, 0);
      v4 = v10 - v11;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  *(this + 78) = *a2;
  *(this + 40) = *(a2 + 1);
  v14 = *(a2 + 3);
  *(this + 41) = *(a2 + 2);
  v15 = *(a2 + 4);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(this + 43);
  *(this + 42) = v14;
  *(this + 43) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  *(this + 88) = *(a2 + 10);
  if ((this + 312) != a2)
  {
    caulk::mach::details::holder::operator=(this + 46, a2 + 7);
    v17 = *(a2 + 4);
    v18 = *(a2 + 5);
    *(this + 401) = *(a2 + 89);
    *(this + 376) = v17;
    *(this + 392) = v18;
    *(this + 417) = *(a2 + 105);
  }

  *(this + 212) = *(a2 + 56);
  AMCP::Graph::Manifest_Queue::join_workgroup_interval(this);
  AMCP::Graph::Manifest_Queue::start_workgroup_interval(this);
  return v4;
}

void sub_1DE3ACEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<AMCP::Graph::Manifest_Execution_Context,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AMCP::Graph::Manifest_Execution_Context,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 120) == *(a2 + 120))
  {
    if (*(a1 + 120))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      v5 = *(a2 + 24);
      *(a2 + 24) = 0uLL;
      v6 = *(a1 + 32);
      *(a1 + 24) = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      *(a1 + 40) = *(a2 + 10);
      caulk::mach::os_workgroup_interval_managed::swap((a1 + 48), a2 + 3);
      *(a1 + 112) = *(a2 + 56);
    }
  }

  else if (*(a1 + 120))
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 48));
    v7 = *(a1 + 32);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    *(a1 + 120) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0uLL;
    *(a1 + 40) = *(a2 + 10);
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0;
    *(a1 + 48) = MEMORY[0x1E69E3C20] + 16;
    caulk::mach::os_workgroup_interval_managed::swap((a1 + 48), a2 + 3);
    *(a1 + 112) = *(a2 + 56);
    *(a1 + 120) = 1;
  }
}

uint64_t AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::Manifest_Disposal_Payload(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = MEMORY[0x1E69E3C18] + 16;
  *(a1 + 64) = caulk::mach::details::retain_os_object(*(a2 + 64), a2);
  v6 = *(a2 + 72);
  v7 = *(a2 + 97);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 97) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = MEMORY[0x1E69E3C20] + 16;
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  v8 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload(AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((this + 56));
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void AMCP::Graph::finish_manifest(uint64_t ***a1, int a2, const AMCP::Graph::Manifest_Execution_Context *a3)
{
  v4 = *a1;
  if ((*v4 & 0xFFFFFFFE) == 2)
  {
    AMCP::Graph::Manifest::end_processing(v4, a2, a3);
    v5 = *a1;

    AMCP::Graph::Manifest::teardown_processing(v5);
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::perform(uint64_t a1)
{
  v2 = a1;
  caulk::concurrent::details::message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::perform(a1);
  return caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_1DE3AD1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

void caulk::concurrent::details::message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::perform(uint64_t a1)
{
  v4.__m_ = *(a1 + 24);
  v4.__owns_ = 1;
  std::mutex::lock(v4.__m_);
  std::condition_variable::wait(*(a1 + 32), &v4);
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v5[0] = v2;
  v5[1] = v3;
  AMCP::Graph::finish_manifest(v5, *(a1 + 40), (a1 + 48));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v4.__owns_)
  {
    std::mutex::unlock(v4.__m_);
  }
}

void sub_1DE3AD254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::rt_cleanup::~rt_cleanup(uint64_t *a1)
{
  v2 = *a1;
  *v2 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((v2 + 40));
  caulk::concurrent::message::~message(v2);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::~rt_message_call(uint64_t a1)
{
  *a1 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((a1 + 40));
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((a1 + 40));

  caulk::concurrent::message::~message(a1);
}

void caulk::concurrent::details::message_call<AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(void)::$_0,AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload>::~message_call(uint64_t a1)
{
  *a1 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((a1 + 40));
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F596AE20;
  AMCP::Graph::Manifest_Queue::Manifest_Disposal_Payload::~Manifest_Disposal_Payload((a1 + 40));

  caulk::concurrent::message::~message(a1);
}

unint64_t AMCP::Graph::Manifest_Queue::get_cycle_size_in_host_ticks(AMCP::Graph::Manifest_Queue *this)
{
  sample_rate = AMCP::Graph::Manifest_Queue::get_sample_rate(*(this + 70));
  v3 = *(this + 70);
  if (v3)
  {
    AMCP::Graph::Manifest::get_master_timebase(&v7, *(v3 + 72), *(v3 + 80));
    v4 = (*(*v7 + 72))(v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if ((*(this + 312) & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate((this + 312));
    }

    v5 = floor(*(this + 40));
  }

  else
  {
    v5 = 1024.0;
    v4 = 24000000.0 / sample_rate;
  }

  return (v5 * v4);
}

void sub_1DE3AD534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Queue::join_workgroup_interval(AMCP::Graph::Manifest_Queue *this)
{
  if (*(this + 46))
  {
    v1 = caulk::mach::os_workgroup_managed::join((this + 360));
    if (v1)
    {
      v2 = v1;
      v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = *(v3 + 8);
      v6 = __error();
      v7 = strerror(*v6);
      if (*MEMORY[0x1E69E3C08])
      {
        v8 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v8 + 16) = 0;
        *(v8 + 20) = 16;
        *(v8 + 24) = "Manifest_Queue.cpp";
        *(v8 + 32) = 643;
        *(v8 + 36) = v2;
        *(v8 + 40) = v7;
        *v8 = &unk_1F596AEF8;
        *(v8 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v5, v8);
        if (v4)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1DE3AD650(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Queue::start_workgroup_interval(AMCP::Graph::Manifest_Queue *this)
{
  if (!*(this + 46))
  {
    return;
  }

  v2 = *(this + 70);
  v3 = v2 ? AMCP::Graph::Manifest::get_overload_time_in_host_time(v2, (this + 312)) : -1;
  wake_time_in_host_time = AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(this);
  v5 = caulk::mach::os_workgroup_interval_managed::start((this + 360));
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(v7 + 8);
  v10 = strerror(v5);
  v11 = MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_20;
  }

  v12 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v12 + 16) = 0;
  *(v12 + 20) = 16;
  *(v12 + 24) = "Manifest_Queue.cpp";
  *(v12 + 32) = 675;
  *(v12 + 36) = v6;
  *(v12 + 40) = v10;
  *v12 = &unk_1F596AF50;
  *(v12 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v9, v12);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6 == 22)
  {
    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*v11)
    {
      v15 = *(v13 + 8);
      v16 = caulk::rt_safe_memory_resource::rt_allocate(*v11);
      *(v16 + 16) = 0;
      *(v16 + 20) = 2;
      *(v16 + 24) = "Manifest_Queue.cpp";
      *(v16 + 32) = 678;
      *(v16 + 40) = wake_time_in_host_time;
      *(v16 + 48) = v3;
      *v16 = &unk_1F596AFA8;
      *(v16 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v15, v16);
      if (v14)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      return;
    }

LABEL_20:
    __break(1u);
  }
}

void sub_1DE3AD84C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::start_workgroup_interval(void)::$_1,std::tuple<char const*,int,unsigned long long,unsigned long long>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Args: Start - %llu, Deadline - %llu", &v11, 0x26u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::start_workgroup_interval(void)::$_1,std::tuple<char const*,int,unsigned long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::start_workgroup_interval(void)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Starting the workgroup interval in start_workgroup_interval resulted in error: %d (%s)", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::start_workgroup_interval(void)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::join_workgroup_interval(void)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to join the workgroup with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::join_workgroup_interval(void)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

double AMCP::Graph::Manifest_Queue::get_sample_rate(AMCP::Graph::Manifest_Queue *this)
{
  if (!this)
  {
    return 44100.0;
  }

  AMCP::Graph::Manifest::get_master_timebase(&v3, *(this + 9), *(this + 10));
  v1 = (*(*v3 + 152))(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

void sub_1DE3ADD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Manifest_Queue::timebases_are_valid(AMCP::Graph::Manifest_Queue *this)
{
  if (!this)
  {
    return 1;
  }

  v1 = *(this + 9);
  v2 = *(this + 10);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    do
    {
      v6 = v5[2];
      v7 = v5[3];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(*v6 + 168))(v6);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (!v8)
      {
        break;
      }

      v5 = *v5;
    }

    while (v5);
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = 1;
  if (v4)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_15:
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v8;
}

void sub_1DE3ADE1C(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  goto LABEL_5;
}

void AMCP::Graph::Manifest_Queue::enqueue_manifest(AMCP::Logging_Settings *a1, void *a2, unsigned int a3, unsigned int a4, uint64_t a5, __int128 *a6, int a7, uint64_t a8, __int128 a9)
{
  v155 = *MEMORY[0x1E69E9840];
  AMCP::Logging_Settings::instance(a1);
  if (HIBYTE(AMCP::Logging_Settings::instance(void)::s_instance) == 1)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v71 = *a1;
      v21 = *a2;
      v75 = a4;
      if (*a2)
      {
        v22 = v89;
        AMCP::Graph::Manifest::get_iocontext_uid(v89, v21);
        if (v90 < 0)
        {
          v22 = v89[0];
        }

        if (*a2)
        {
          v23 = (*(*a2 + 16) - *(*a2 + 8)) >> 4;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
        v22 = "";
      }

      v73 = v21;
      v76 = a7;
      std::string::basic_string[abi:ne200100]<0>(&__p, off_1E8678810[a3]);
      v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v25 = __p.__r_.__value_.__r.__words[0];
      std::string::basic_string[abi:ne200100]<0>(v153, off_1E8678810[v75]);
      p_p = &__p;
      if (v24 < 0)
      {
        p_p = v25;
      }

      if (v154 >= 0)
      {
        v27 = v153;
      }

      else
      {
        v27 = v153[0];
      }

      v28 = (*(a5 + 8) - *a5) >> 2;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316930;
      *(buf.__r_.__value_.__r.__words + 4) = "Manifest_Queue.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 156;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v71;
      *v138 = 2080;
      *&v138[2] = v22;
      *&v138[10] = 2048;
      *&v138[12] = v23;
      *&v138[20] = 2080;
      *&v138[22] = p_p;
      *&v138[30] = 2080;
      v139 = v27;
      LOWORD(v140) = 2048;
      *(&v140 + 2) = v28;
      _os_log_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_INFO, "%32s:%-5d Manifest_Queue(%u|%s)::enqueue_manifest: size(%zu)  %s -> %s  (snapshot: %zu)", &buf, 0x4Au);
      if (v154 < 0)
      {
        operator delete(v153[0]);
      }

      a7 = v76;
      a4 = v75;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v73 && v90 < 0)
      {
        operator delete(v89[0]);
      }
    }
  }

  v29 = *(a1 + 70);
  if (v29)
  {
    v30 = *a2;
    if (!*a2)
    {
      goto LABEL_62;
    }

    v31 = *(v29 + 96);
    v32 = *(v29 + 104);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = *(v30 + 104);
    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }
  }

  v34 = *a2;
  if (!*a2)
  {
LABEL_62:
    if (!*(a1 + 24))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "manifest queue outbox");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __p;
      }

      v138[0] = 1;
      *&v138[8] = 0x100000037;
      *&v138[24] = 2;
      v138[28] = 1;
      LOBYTE(v139) = 0;
      BYTE4(v139) = 0;
      operator new();
    }

    v86 = 0;
    __p.__r_.__value_.__r.__words[0] = __PAIR64__(a4, a3);
    v83 = 0;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(&__p.__r_.__value_.__l.__size_, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
    LODWORD(v84) = a7;
    *(&v84 + 1) = 0x40B0000000000000;
    v85 = a9;
    v46 = a2[1];
    buf.__r_.__value_.__r.__words[0] = *a2;
    buf.__r_.__value_.__l.__size_ = v46;
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(buf.__r_.__value_.__r.__words[2]) = *a1;
    *v138 = *a6;
    v47 = *(a6 + 3);
    *&v138[16] = *(a6 + 2);
    *&v138[24] = v47;
    v48 = *(a6 + 4);
    v139 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v140) = *(a6 + 10);
    *(&v140 + 1) = MEMORY[0x1E69E3C18] + 16;
    v49 = caulk::mach::details::retain_os_object(*(a6 + 7), v45);
    v50 = a6[5];
    v142 = a6[4];
    v141 = v49;
    *v143 = v50;
    *&v143[9] = *(a6 + 89);
    *(&v140 + 1) = MEMORY[0x1E69E3C20] + 16;
    v144 = *(a6 + 105);
    v145 = *(a6 + 56);
    v51 = *&__p.__r_.__value_.__l.__data_;
    v146 = __p.__r_.__value_.__r.__words[0];
    v147 = 0;
    v149 = 0;
    v148 = 0;
    v52 = __p.__r_.__value_.__r.__words[2];
    v53 = (__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__l.__size_) >> 2;
    std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(&v147, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2], v53);
    v150 = v84;
    v151 = v85;
    *&v152 = a1 + 704;
    *(&v152 + 1) = &v86;
    v54 = *a2;
    v55 = a2[1];
    if (v55)
    {
      atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
    }

    v78[0] = 0;
    v78[1] = 0;
    v79 = 0;
    std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(v78, *(&v51 + 1), v52, v53);
    v80 = v84;
    v81 = v85;
    v110 = *a6;
    v57 = *(a6 + 3);
    v111 = *(a6 + 2);
    *&v112 = v57;
    v58 = *(a6 + 4);
    *(&v112 + 1) = v58;
    if (v58)
    {
      atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
    }

    v113 = *(a6 + 10);
    v114 = MEMORY[0x1E69E3C18] + 16;
    v59 = caulk::mach::details::retain_os_object(*(a6 + 7), v56);
    v60 = a6[5];
    v116 = a6[4];
    *v117 = v60;
    *&v117[9] = *(a6 + 89);
    v114 = MEMORY[0x1E69E3C20] + 16;
    v118 = *(a6 + 105);
    v119 = *(a6 + 56);
    v120 = v54;
    v121 = v55;
    __src = *v78;
    v122 = v51;
    v124 = v79;
    v78[0] = 0;
    v78[1] = 0;
    v79 = 0;
    v125 = v84;
    v126 = v85;
    v127 = v110;
    v128 = v111;
    v129 = v112;
    v112 = 0uLL;
    v130 = v113;
    memset(v134, 0, sizeof(v134));
    v133 = 0u;
    v135 = 0;
    v131 = MEMORY[0x1E69E3C20] + 16;
    v132 = v59;
    v115 = 0;
    caulk::mach::details::release_os_object(0, v61);
    v63 = *v134;
    v64 = v133;
    v65 = *&v134[16];
    v133 = v116;
    *v134 = *v117;
    *&v134[16] = *&v117[16];
    *&v117[16] = v65;
    v116 = v64;
    *v117 = v63;
    LOBYTE(v65) = v134[24];
    v134[24] = v117[24];
    v117[24] = v65;
    LOBYTE(v65) = v135;
    v135 = v118;
    v118 = v65;
    v136 = v119;
    v91 = *&buf.__r_.__value_.__l.__data_;
    if (buf.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v92 = buf.__r_.__value_.__r.__words[2];
    v93 = *v138;
    v94 = *&v138[16];
    v95 = *&v138[24];
    v96 = v139;
    if (v139)
    {
      atomic_fetch_add_explicit(v139 + 1, 1uLL, memory_order_relaxed);
    }

    v97 = v140;
    v98 = MEMORY[0x1E69E3C18] + 16;
    v66 = caulk::mach::details::retain_os_object(v141, v62);
    v100 = v142;
    *v101 = *v143;
    *&v101[9] = *&v143[9];
    v98 = MEMORY[0x1E69E3C20] + 16;
    v99 = v66;
    v102 = v144;
    v103 = v145;
    v104 = v146;
    memset(v105, 0, sizeof(v105));
    std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(v105, v147, v148, (v148 - v147) >> 2);
    v106 = v150;
    v107 = v151;
    v108 = v152;
    v109 = 0;
    operator new();
  }

  v36 = v34[12];
  v35 = v34[13];
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    if (!v36)
    {
      goto LABEL_62;
    }

    v34 = *a2;
    v36 = *(*a2 + 96);
    v37 = *(*a2 + 104);
    if (v37)
    {
      v74 = 0;
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *a2;
      v69 = *a1;
      if (!*a2)
      {
        v72 = 1;
        v77 = a7;
        v38 = 0;
        v67 = a5;
        v68 = "";
LABEL_48:
        v70 = v37;
        v40 = a3;
        std::string::basic_string[abi:ne200100]<0>(&buf, off_1E8678810[a3]);
        v41 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v42 = buf.__r_.__value_.__r.__words[0];
        std::string::basic_string[abi:ne200100]<0>(&__p, off_1E8678810[a4]);
        p_buf = &buf;
        if (v41 < 0)
        {
          p_buf = v42;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &__p;
        }

        else
        {
          v44 = __p.__r_.__value_.__r.__words[0];
        }

        AMCP::Graph::Manifest_Log::add_message(v36, 3, "Manifest_Queue(%u|%s)::enqueue_manifest: size(%zu)  %s -> %s", v69, v68, v38, p_buf, v44);
        a7 = v77;
        a3 = v40;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        a5 = v67;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if ((v72 & 1) == 0 && v88 < 0)
        {
          operator delete(v87[0]);
        }

        if ((v74 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }

        goto LABEL_62;
      }

LABEL_43:
      AMCP::Graph::Manifest::get_iocontext_uid(v87, v34);
      v39 = v87[0];
      if (v88 >= 0)
      {
        v39 = v87;
      }

      v77 = a7;
      v67 = a5;
      v68 = v39;
      v72 = 0;
      if (*a2)
      {
        v38 = (*(*a2 + 16) - *(*a2 + 8)) >> 4;
      }

      else
      {
        v38 = 0;
      }

      goto LABEL_48;
    }
  }

  else if (!v36)
  {
    goto LABEL_62;
  }

  v37 = 0;
  v69 = *a1;
  v74 = 1;
  goto LABEL_43;
}

void sub_1DE3AEB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0::~$_0(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 9));
  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void AMCP::Graph::Manifest_Queue::Incoming_Payload::~Incoming_Payload(AMCP::Graph::Manifest_Queue::Incoming_Payload *this)
{
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((this + 128));
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph14Manifest_Queue16enqueue_manifestERKNSt3__110shared_ptrINS0_8ManifestEEENS_15Transport_StateES8_RKNS2_6vectorINS_7IO_Core18Play_State_Manager12Play_RequestENS2_9allocatorISC_EEEERKNS0_26Manifest_Execution_ContextE13Anchor_PolicyNS2_7variantIJNS_3DAL11Sample_TimeEyEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1 + 152;
  if (*(a1 + 152))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = *(v3 + 72);
      v5 = *(v3 + 80);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::Graph::Manifest_Inventory::set_nominal_buffer_size(*(v4 + 24), *(a1 + 24), a1 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      AMCP::Graph::Manifest::setup_processing(*(a1 + 8), (a1 + 32), v1, *(a1 + 216));
    }
  }
}

void sub_1DE3AF270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 10));
  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 10));
  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = MEMORY[0x1E69E3C18] + 16;
  *(a1 + 80) = caulk::mach::details::retain_os_object(*(a2 + 80), a2);
  v7 = *(a2 + 88);
  v8 = *(a2 + 113);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 113) = v8;
  *(a1 + 88) = v7;
  *(a1 + 72) = MEMORY[0x1E69E3C20] + 16;
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 136) = *(a2 + 136);
  v9 = *(a2 + 144);
  *(a1 + 152) = 0;
  *(a1 + 144) = v9;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>((a1 + 152), *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void sub_1DE3AF580(_Unwind_Exception *a1)
{
  AMCP::Graph::Manifest_Execution_Context::~Manifest_Execution_Context((v1 + 24));
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596AD48;
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 10));
  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0,std::allocator<AMCP::Graph::Manifest_Queue::enqueue_manifest(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,AMCP::Transport_State,std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request> const&,AMCP::Graph::Manifest_Execution_Context const&,Anchor_Policy,std::variant<AMCP::DAL::Sample_Time,unsigned long long>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596AD48;
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 10));
  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void AMCP::Graph::Manifest_Queue::process_once(AMCP::Graph::Manifest_Queue **a1, int a2, unsigned int a3)
{
  v5 = a1;
  v151 = *MEMORY[0x1E69E9840];
  v6 = AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(a1);
  if (v6)
  {
    v71 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v71 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v73 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v72 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      v74 = *v73;
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    else
    {
      v74 = *v73;
    }

    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Manifest_Queue.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 385;
      *&buf[18] = 2080;
      *&buf[20] = "not (success == Start_Stop_Result::success)";
      _os_log_error_impl(&dword_1DE1F9000, v74, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s maybe_acquire_new_manifest failed", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v125);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v127, "maybe_acquire_new_manifest failed", v84);
    std::logic_error::logic_error(&v134, &v127);
    v134.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v115, &v134);
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = -1;
    v115.__vftable = &unk_1F5991430;
    v116 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v115);
    *&v140 = "void AMCP::Graph::Manifest_Queue::process_once(Handle_Overloads, Process_Once_Option)";
    *(&v140 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    LODWORD(v141) = 385;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v126);
  }

  v7 = v5[70];
  if (!v7)
  {
    v75 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v75 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v77 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v76 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v76)
    {
      atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
      v78 = *v77;
      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
    }

    else
    {
      v78 = *v77;
    }

    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Manifest_Queue.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 386;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_current_manifiest)";
      _os_log_error_impl(&dword_1DE1F9000, v78, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no manifest", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v125);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v127, "no manifest", v85);
    std::logic_error::logic_error(&v134, &v127);
    v134.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v115, &v134);
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = -1;
    v115.__vftable = &unk_1F5991430;
    v116 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v115);
    *&v140 = "void AMCP::Graph::Manifest_Queue::process_once(Handle_Overloads, Process_Once_Option)";
    *(&v140 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    LODWORD(v141) = 386;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v126);
  }

  if ((*v7 & 0xFFFFFFFE) != 2)
  {
    v86 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v86 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v88 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v87 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v87)
    {
      atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
      v89 = *v88;
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    }

    else
    {
      v89 = *v88;
    }

    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Manifest_Queue.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 389;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_current_manifiest->is_processing() or m_current_manifiest->is_prewarming())";
      _os_log_error_impl(&dword_1DE1F9000, v89, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v125);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v127, "", v102);
    std::logic_error::logic_error(&v134, &v127);
    v134.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v115, &v134);
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = -1;
    v115.__vftable = &unk_1F5991430;
    v116 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v115);
    *&v140 = "void AMCP::Graph::Manifest_Queue::process_once(Handle_Overloads, Process_Once_Option)";
    *(&v140 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    LODWORD(v141) = 389;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v126);
  }

  v9 = *(v7 + 9);
  v8 = *(v7 + 10);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(v9 + 64);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v10 = *(v9 + 64);
  }

  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(buf, v10);
  if ((v5[39] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate((v5 + 39));
  }

  AMCP::DAL::DAL_Time::get_sample_time(buf);
  AMCP::DAL::DAL_Time::get_host_time(buf);
  kdebug_trace();
  v11 = v140;
  if (v140)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v140);
  }

  v12 = v5[70];
  v114 = v5;
  if (*v12 == 3)
  {
    v13 = *v5;
    AMCP::Graph::Manifest::get_master_timebase(buf, *(v12 + 9), *(v12 + 10));
    v14 = *(*(v12 + 9) + 64);
    v16 = *(v14 + 24);
    v15 = *(v14 + 32);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *buf;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *buf;
    }

    v22 = *&buf[8];
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v17 != v16)
    {
      v94 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v94 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v22);
      }

      v96 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v95 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v95)
      {
        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
        v97 = *v96;
        std::__shared_weak_count::__release_shared[abi:ne200100](v95);
      }

      else
      {
        v97 = *v96;
      }

      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 686;
        *&buf[18] = 2080;
        *&buf[20] = "not (get_master_timebase() == m_inventory->get_manifest_counter().get_master_timebase())";
        _os_log_error_impl(&dword_1DE1F9000, v97, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v125);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v127, "", v104);
      std::logic_error::logic_error(&v134, &v127);
      v134.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v115, &v134);
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = -1;
      v115.__vftable = &unk_1F5991430;
      v116 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v115);
      *&v140 = "void AMCP::Graph::Manifest::process_once(Object_ID, const Manifest_Execution_Context &, Handle_Overloads, Process_Once_Option)";
      *(&v140 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
      LODWORD(v141) = 686;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v126);
    }

    AMCP::Graph::create_cycle_info(&v115, *(*(v12 + 9) + 64), (v5 + 39));
    v109 = a2;
    AMCP::Graph::Manifest_Inventory::begin_cycle(*(v12 + 9), v12 + 12, (v5 + 39));
    v150 = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    memset(buf, 0, sizeof(buf));
    v23 = AMCP::Graph::io_proc_cycle_info_to_audio_io_cycle_info(&v115, buf);
    v24 = *(v12 + 1);
    v25 = *(v12 + 2);
    while (v24 != v25)
    {
      v26 = *v24;
      if (*(*v24 + 88) != 3)
      {
        v64 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v64 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v23);
        }

        v66 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v65)
        {
          atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          v67 = *v66;
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
        }

        else
        {
          v67 = *v66;
        }

        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v68 = (v26 + 64);
          if (*(v26 + 87) < 0)
          {
            v68 = *v68;
          }

          *v136 = 136315906;
          *&v136[4] = "Manifest_Task.cpp";
          *&v136[12] = 1024;
          *&v136[14] = 150;
          *&v136[18] = 2080;
          *&v136[20] = "not (m_processing_state == Processing_State::Processing)";
          *&v136[28] = 2080;
          *&v136[30] = v68;
          _os_log_error_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s begin_cycle call in wrong state in %s", v136, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v132);
        __cxa_allocate_exception(0x40uLL);
        v70 = (v26 + 64);
        if (*(v26 + 87) < 0)
        {
          v70 = *v70;
        }

        caulk::make_string(&v134, "begin_cycle call in wrong state in %s", v69, v70);
        std::logic_error::logic_error(&v133, &v134);
        v133.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v127, &v133);
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = -1;
        v127.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v127.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v136, &v127);
        *&v136[32] = "void AMCP::Graph::Manifest_Task::begin_cycle(Object_ID, const Proc_Cycle_Info &)";
        v137 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
        v138 = 150;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v125);
      }

      v23 = *(*(v26 + 48) + 216);
      if (v23)
      {
        v23 = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(v23, v13);
      }

      v24 += 2;
    }

    AMCP::Graph::Manifest::calculate_all_required_input_samples(v12, (v5 + 39));
    v107 = a3;
    v27 = *(v12 + 1);
    v108 = v12;
    v111 = *(v12 + 2);
    if (v27 != v111)
    {
      v110 = v13;
      do
      {
        v112 = v27;
        v28 = *v27;
        v29 = *(*(*v27 + 48) + 120);
        if (v29)
        {
          (*(*v29 + 48))(&v133);
          if (v133.__vftable)
          {
            v30 = *(v28 + 24);
            v113 = *(v28 + 32);
            if (v30 != v113)
            {
              v31 = 0;
              do
              {
                v33 = *v30;
                v32 = v30[1];
                if (*v30 != v32)
                {
                  do
                  {
                    v34 = *v33;
                    *buf = *(*v33 + 208);
                    v35 = v34[29];
                    *&buf[16] = v34[28];
                    *&buf[24] = v35;
                    v36 = v34[30];
                    *&v140 = v36;
                    if (v36)
                    {
                      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
                    }

                    sample_time = AMCP::DAL::DAL_Time::get_sample_time(buf);
                    v38 = *v33;
                    *v136 = *(*v33 + 208);
                    v39 = v38[29];
                    *&v136[16] = v38[28];
                    *&v136[24] = v39;
                    v40 = v38[30];
                    *&v136[32] = v40;
                    if (v40)
                    {
                      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
                    }

                    v41 = AMCP::DAL::DAL_Time::get_sample_time(v136) + *(*v33 + 160);
                    v132[0] = sample_time;
                    v132[1] = v41;
                    if (*&v136[32])
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](*&v136[32]);
                    }

                    v42 = v140;
                    if (v140)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v140);
                    }

                    if (round(v132[0]) < 0.0)
                    {
                      v51 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                      if ((v51 & 1) == 0)
                      {
                        AMCP::Log::AMCP_Scope_Registry::initialize(v42);
                      }

                      v53 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                      v52 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                      if (v52)
                      {
                        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                        v54 = *v53;
                        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                      }

                      else
                      {
                        v54 = *v53;
                      }

                      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        *&buf[4] = "Device_Connection.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 128;
                        *&buf[18] = 2080;
                        *&buf[20] = "not (required_samples.start() >= 0_S)";
                        _os_log_error_impl(&dword_1DE1F9000, v54, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to read sample before 0", buf, 0x1Cu);
                      }

                      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v135);
                      __cxa_allocate_exception(0x40uLL);
                      caulk::make_string(&v126, "Attempt to read sample before 0", v63);
                      std::logic_error::logic_error(&v125, &v126);
                      v125.__vftable = (MEMORY[0x1E69E55A8] + 16);
                      std::logic_error::logic_error(v136, &v125);
                      *&v136[24] = 0;
                      *&v136[32] = 0;
                      v137 = 0;
                      v138 = -1;
                      *v136 = &unk_1F5991430;
                      *&v136[16] = &unk_1F5991458;
                      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v136);
                      *&v140 = "void AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(Object_ID, size_t, const DAL::Sample_Time_Range &)";
                      *(&v140 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                      LODWORD(v141) = 128;
                      std::vector<void *>::vector[abi:ne200100](&v134);
                    }

                    v43 = v133.__vftable;
                    v44 = v133.~logic_error_0;
                    if (!v44 || (v44 = std::__shared_weak_count::lock(v44), (v45 = v44) == 0) || (v46 = v43->~logic_error) == 0)
                    {
                      v79 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                      if ((v79 & 1) == 0)
                      {
                        AMCP::Log::AMCP_Scope_Registry::initialize(v44);
                      }

                      v81 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                      v80 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                      if (v80)
                      {
                        atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                        v82 = *v81;
                        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
                      }

                      else
                      {
                        v82 = *v81;
                      }

                      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        *&buf[4] = "Device_Connection.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 130;
                        *&buf[18] = 2080;
                        *&buf[20] = "not (device_state.operator BOOL())";
                        _os_log_error_impl(&dword_1DE1F9000, v82, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                      }

                      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v135);
                      __cxa_allocate_exception(0x40uLL);
                      caulk::make_string(&v126, "", v83);
                      std::logic_error::logic_error(&v125, &v126);
                      v125.__vftable = (MEMORY[0x1E69E55A8] + 16);
                      std::logic_error::logic_error(v136, &v125);
                      *&v136[24] = 0;
                      *&v136[32] = 0;
                      v137 = 0;
                      v138 = -1;
                      *v136 = &unk_1F5991430;
                      *&v136[16] = &unk_1F5991458;
                      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v136);
                      *&v140 = "void AMCP::IO_Core::Device_Connection::set_required_samples_for_stream(Object_ID, size_t, const DAL::Sample_Time_Range &)";
                      *(&v140 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                      LODWORD(v141) = 130;
                      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v134);
                    }

                    os_unfair_lock_lock(v46 + 1);
                    *buf = &unk_1F59665C8;
                    *&buf[8] = v31;
                    *&buf[16] = v132;
                    *&buf[24] = buf;
                    AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v46, 1u, buf);
                    std::__function::__value_func<BOOL ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](buf);
                    os_unfair_lock_unlock(v46 + 1);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
                    v33 += 16;
                    v5 = v114;
                  }

                  while (v33 != v32);
                }

                ++v31;
                v30 += 5;
              }

              while (v30 != v113);
            }
          }
        }

        else
        {
          v133.__vftable = 0;
          v133.__imp_.__imp_ = 0;
        }

        if (v133.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v133.__imp_.__imp_);
        }

        v27 = v112 + 2;
        v13 = v110;
      }

      while (v112 + 2 != v111);
    }

    v47 = *(v12 + 9);
    v48 = *(v47 + 112);
    for (i = *(v47 + 120); v48 != i; v48 += 2)
    {
      AMCP::IO_Core::Device_Connection::begin_cycle(*v48, &v115, (v5 + 39));
    }

    if (v109)
    {
      overload_time_in_host_time = -1;
    }

    else
    {
      overload_time_in_host_time = AMCP::Graph::Manifest::get_overload_time_in_host_time(v12, (v5 + 39));
    }

    v57 = *(v108 + 1);
    v58 = *(v108 + 2);
    while (v57 != v58)
    {
      v59 = *v57;
      AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator(*v57);
      (*(**(v59 + 104) + 16))(*(v59 + 104), v13, &v115, v5 + 39, overload_time_in_host_time, v107);
      v57 += 2;
    }

    v150 = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    memset(buf, 0, sizeof(buf));
    AMCP::Graph::io_proc_cycle_info_to_audio_io_cycle_info(&v115, buf);
    v60 = *(v108 + 1);
    v61 = *(v108 + 2);
    while (v60 != v61)
    {
      v62 = *(*(*v60 + 48) + 280);
      if (v62)
      {
        std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(v62, v13);
      }

      v60 += 16;
    }

    AMCP::Graph::Manifest_Inventory::end_cycle(*(v108 + 9), &v115, (v5 + 39));
    if (v124)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v124);
    }

    if (v123)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v123);
    }

    if (v122)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v122);
    }

    if (v121)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v121);
    }

    v56 = v118;
    if (v118)
    {
LABEL_93:
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }
  }

  else
  {
    if (*v12 != 2)
    {
      v90 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v90 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
      }

      v92 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v91 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v91)
      {
        atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
        v93 = *v92;
        std::__shared_weak_count::__release_shared[abi:ne200100](v91);
      }

      else
      {
        v93 = *v92;
      }

      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 671;
        *&buf[18] = 2080;
        *&buf[20] = "not (is_prewarming())";
        _os_log_error_impl(&dword_1DE1F9000, v93, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s prewarm_once() called before begin_processing()", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v125);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v127, "prewarm_once() called before begin_processing()", v103);
      std::logic_error::logic_error(&v134, &v127);
      v134.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v115, &v134);
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = -1;
      v115.__vftable = &unk_1F5991430;
      v116 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v115);
      *&v140 = "void AMCP::Graph::Manifest::prewarm_once(Object_ID, const Manifest_Execution_Context &)";
      *(&v140 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
      LODWORD(v141) = 671;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v126);
    }

    AMCP::Graph::Manifest::get_master_timebase(buf, *(v12 + 9), *(v12 + 10));
    v18 = *(*(v12 + 9) + 64);
    v20 = *(v18 + 24);
    v19 = *(v18 + 32);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *buf;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *buf;
    }

    v55 = *&buf[8];
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v21 != v20)
    {
      v98 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v98 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v55);
      }

      v100 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v99 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v99)
      {
        atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
        v101 = *v100;
        std::__shared_weak_count::__release_shared[abi:ne200100](v99);
      }

      else
      {
        v101 = *v100;
      }

      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 672;
        *&buf[18] = 2080;
        *&buf[20] = "not (get_master_timebase() == m_inventory->get_manifest_counter().get_master_timebase())";
        _os_log_error_impl(&dword_1DE1F9000, v101, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v125);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v127, "", v105);
      std::logic_error::logic_error(&v134, &v127);
      v134.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v115, &v134);
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = -1;
      v115.__vftable = &unk_1F5991430;
      v116 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v115);
      *&v140 = "void AMCP::Graph::Manifest::prewarm_once(Object_ID, const Manifest_Execution_Context &)";
      *(&v140 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
      LODWORD(v141) = 672;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v126);
    }

    AMCP::Graph::create_cycle_info(buf, *(*(v12 + 9) + 64), (v5 + 39));
    AMCP::Graph::Manifest_Inventory::begin_cycle(*(v12 + 9), v12 + 12, (v5 + 39));
    AMCP::Graph::Manifest_Inventory::end_cycle(*(v12 + 9), buf, (v5 + 39));
    if (*(&v148 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v148 + 1));
    }

    if (*(&v147 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v147 + 1));
    }

    if (v145)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v145);
    }

    if (*(&v142 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v142 + 1));
    }

    v56 = v140;
    if (v140)
    {
      goto LABEL_93;
    }
  }

  if (AMCP::Graph::Manifest_Queue::timebases_are_valid(v5[70]))
  {
    wake_time_in_host_time = AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(v5);
    AMCP::Graph::Manifest::get_master_timebase(&v127, *(v5[70] + 9), *(v5[70] + 10));
    *v136 = 1;
    *&v136[8] = 0;
    *&v136[16] = wake_time_in_host_time;
    *&v136[24] = *&v127.__r_.__value_.__l.__data_;
    *&v127.__r_.__value_.__l.__data_ = 0uLL;
    AMCP::DAL::DAL_Time::get_sample_time(v136);
    AMCP::DAL::DAL_Time::get_host_time(v136);
    AMCP::Graph::Manifest_Queue::get_sample_rate(v5[70]);
    kdebug_trace();
    if (*&v136[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v136[32]);
    }
  }
}

void sub_1DE3B17A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    JUMPOUT(0x1DE3B17ACLL);
  }

  JUMPOUT(0x1DE3B1594);
}

void AMCP::Graph::Manifest_Queue::reanchor_after_time_change(AMCP::Graph::Manifest_Queue *this)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *(this + 70);
  v4 = *(v2 + 9);
  v3 = *(v2 + 10);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (v4)
    {
      v2 = *(this + 70);
      goto LABEL_5;
    }

LABEL_31:
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "Manifest_Queue.cpp";
      v57 = 1024;
      v58 = 597;
      v59 = 2080;
      v60 = "not (m_current_manifiest->get_inventory())";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We need a valid inventory in order to reanchor_after_time_change", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "We need a valid inventory in order to reanchor_after_time_change", v35);
    std::logic_error::logic_error(&v48, &v39);
    v48.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v49, &v48);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = -1;
    v49.__vftable = &unk_1F5991430;
    v50 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v49);
    v61 = "void AMCP::Graph::Manifest_Queue::reanchor_after_time_change()";
    v62 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    v63 = 597;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
  }

  if (!v4)
  {
    goto LABEL_31;
  }

LABEL_5:
  AMCP::Graph::Manifest::calculate_anchor_time(&v39, v2, (this + 312), 2, 0, 0);
  v5 = *(*(this + 70) + 80);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  kdebug_trace();
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 70);
  v8 = *(v6 + 72);
  v7 = *(v6 + 80);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *this;
  for (i = *(v8 + 3); i; i = *i)
  {
    v11 = i[12];
    v12 = *(v11 + 296);
    if (v12)
    {
      *(v11 + 296) = v12 - 1;
    }
  }

  v13 = *(v8 + 8);
  v15 = v40;
  v14 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = *(v13 + 24);
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    if (v15 == v16)
    {
      goto LABEL_17;
    }

LABEL_27:
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *v21;
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v22 = *v21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "Manifest_Counter.cpp";
      v57 = 1024;
      v58 = 48;
      v59 = 2080;
      v60 = "not (anchor_time.get_clock() == m_master_timebase)";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v43, "", v36);
    std::logic_error::logic_error(&v42, &v43);
    v42.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v49, &v42);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = -1;
    v49.__vftable = &unk_1F5991430;
    v50 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v49);
    v61 = "void AMCP::Graph::Manifest_Counter::reanchor(const DAL_Time &)";
    v62 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Counter.cpp";
    v63 = 48;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v48);
  }

  if (v40 != *(v13 + 24))
  {
    goto LABEL_27;
  }

LABEL_17:
  if ((*v13 & 1) == 0)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
    }

    v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v30 = *v29;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "Manifest_Counter.cpp";
      v57 = 1024;
      v58 = 49;
      v59 = 2080;
      v60 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v43, "", v37);
    std::logic_error::logic_error(&v42, &v43);
    v42.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v49, &v42);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = -1;
    v49.__vftable = &unk_1F5991430;
    v50 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v49);
    v61 = "void AMCP::Graph::Manifest_Counter::reanchor(const DAL_Time &)";
    v62 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Counter.cpp";
    v63 = 49;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v48);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v39);
  *(v13 + 8) = sample_time;
  *(v13 + 16) = sample_time;
  *(v13 + 40) = 0;
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(&v46, *(v8 + 8));
  v18 = AMCP::DAL::DAL_Time::operator<(&v39, &v46);
  if (v18)
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *v33;
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    else
    {
      v34 = *v33;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "Manifest_Inventory.cpp";
      v57 = 1024;
      v58 = 341;
      v59 = 2080;
      v60 = "not (current_anchor <= time)";
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to anchor_time is in the past", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v48, "Attempt to anchor_time is in the past", v38);
    std::logic_error::logic_error(&v44, &v48);
    v44.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v49, &v44);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = -1;
    v49.__vftable = &unk_1F5991430;
    v50 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v49);
    v61 = "void AMCP::Graph::Manifest_Inventory::reanchor_time(Object_ID, const Manifest_Execution_Context &, const DAL::DAL_Time &) const";
    v62 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
    v63 = 341;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  AMCP::Graph::Manifest_Inventory::anchor_time(v8, v9, (this + 312), &v39);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }
}

void sub_1DE3B21D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::report_and_handle_discontinuity(void)::$_0,std::tuple<char const*,int,char const*>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d %s", &v10, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::report_and_handle_discontinuity(void)::$_0,std::tuple<char const*,int,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

BOOL AMCP::Graph::Manifest_Queue::check_if_catchup_mode_is_still_active(AMCP::Graph::Manifest_Queue *this)
{
  v1 = *(this + 70);
  if (!v1)
  {
    return 0;
  }

  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v4[8];
  v28 = *v5;
  v6 = *(v5 + 3);
  v29 = *(v5 + 2);
  v30 = v6;
  v7 = *(v5 + 4);
  v31 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *(v5 + 10);
  if ((*(this + 312) & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate((this + 312));
  }

  AMCP::Graph::Manifest_Counter::advance(&v28, *(this + 40));
  v8 = v4[13];
  v22 = v4[12];
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Counter::calculate_buffer_start(v26, &v28, &v22, 1, (this + 312), *(this + 88));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(v26);
  if ((*(this + 312) & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate((this + 312));
  }

  v10 = *(this + 40);
  v11 = mach_absolute_time();
  v12 = *(v4 + 6);
  v13 = v4[13];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v22) = 1;
  v23 = 0;
  v24 = v11;
  v25 = v12;
  v14 = v4[12];
  v15 = v4[13];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = (*(*v14 + 144))(v14, 1);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = AMCP::DAL::DAL_Time::get_sample_time(&v22);
  v18 = round(sample_time + v10);
  v19 = round(v17 - v16);
  v20 = v18 < v19;
  if (v18 >= v19)
  {
    AMCP::DAL::DAL_Time::get_sample_time(v26);
    AMCP::DAL::DAL_Time::get_host_time(v26);
    kdebug_trace();
  }

  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v20;
}

void sub_1DE3B2730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::report_and_handle_overload(unsigned long long,unsigned long long)::$_0,std::tuple<char const*,int,char const*,unsigned int,double,double>>::perform(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v13 = 136316418;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    v23 = 2048;
    v24 = v11;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Overload %s(%u) - current time: %0.f  deadline time: %0.f", &v13, 0x36u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Graph::Manifest_Queue::report_and_handle_overload(unsigned long long,unsigned long long)::$_0,std::tuple<char const*,int,char const*,unsigned int,double,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_MetaManager::_CopyDeviceList(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 688);
  for (i = *(a1 + 696); v2 != i; ++v2)
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

void HALS_MetaManager::GetPropertyData(HALS_System **this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, unsigned int a7, const __CFDictionary **a8, HALS_Client *a9)
{
  v27 = *MEMORY[0x1E69E9840];
  if (((*(*this + 12))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v18 = 2003332927;
    goto LABEL_29;
  }

  if (a3->mSelector == 1684105063)
  {
    if (a4 != 4)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v23 = 136315394;
      v24 = "HALS_MetaManager.cpp";
      v25 = 1024;
      v26 = 178;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: wrong data size for kAudioPlugInDestroyAggregateDevice";
      goto LABEL_21;
    }

    if (!a6)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        v18 = 1852797029;
LABEL_29:
        exception[2] = v18;
      }

      v23 = 136315394;
      v24 = "HALS_MetaManager.cpp";
      v25 = 1024;
      v26 = 179;
      v21 = MEMORY[0x1E69E9C10];
      v22 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: nowhere to put the output data for kAudioPlugInDestroyAggregateDevice";
LABEL_27:
      _os_log_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, v22, &v23, 0x12u);
      goto LABEL_28;
    }

    HALS_MetaManager::DestroyDevice(this, *a6);
    *a5 = 4;
  }

  else
  {
    if (a3->mSelector == 1667327847)
    {
      if (a7 == 8)
      {
        if (a4 == 4)
        {
          if (a6)
          {
            HALS_MetaManager::CreateDevice(this, *a8, a9);
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_28;
          }

          v23 = 136315394;
          v24 = "HALS_MetaManager.cpp";
          v25 = 1024;
          v26 = 172;
          v21 = MEMORY[0x1E69E9C10];
          v22 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: nowhere to put the output data for kAudioPlugInCreateAggregateDevice";
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v23 = 136315394;
          v24 = "HALS_MetaManager.cpp";
          v25 = 1024;
          v26 = 171;
          v19 = MEMORY[0x1E69E9C10];
          v20 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: wrong data size for kAudioPlugInCreateAggregateDevice";
          goto LABEL_21;
        }

LABEL_22:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        v18 = 561211770;
        goto LABEL_29;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v23 = 136315394;
      v24 = "HALS_MetaManager.cpp";
      v25 = 1024;
      v26 = 170;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%25s:%-5d  HALS_MetaManager::GetPropertyData: wrong qualifier size for kAudioPlugInCreateAggregateDevice";
LABEL_21:
      _os_log_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, v20, &v23, 0x12u);
      goto LABEL_22;
    }

    HALS_DeviceManager::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}