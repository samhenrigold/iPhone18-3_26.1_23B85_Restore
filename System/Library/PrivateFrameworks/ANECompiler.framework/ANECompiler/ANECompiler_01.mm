BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *>(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 1);
        v24 = *a1;
        v25 = v7;
        v8 = *a3;
        v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v25);
        if (v9[3] < std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v8 + 192), &v24)[3])
        {
          v10 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v10;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CpGraph::GetLayers(BOOL)::$_0 &,unsigned long long *,0>(a1, a1 + 1, a1 + 2, a3);
  v12 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *v12;
    v24 = *v11;
    v25 = v15;
    v16 = *a3;
    v17 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v25);
    if (v17[3] < std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v16 + 192), &v24)[3])
    {
      v18 = *v12;
      v19 = v13;
      while (1)
      {
        *(a1 + v19 + 24) = *(a1 + v19 + 16);
        if (v19 == -16)
        {
          break;
        }

        v24 = *(a1 + v19 + 8);
        v25 = v18;
        v20 = *a3;
        v21 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((*a3 + 192), &v25);
        v19 -= 8;
        if (v21[3] >= std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v20 + 192), &v24)[3])
        {
          v22 = (a1 + v19 + 24);
          goto LABEL_19;
        }
      }

      v22 = a1;
LABEL_19:
      *v22 = v18;
      if (++v14 == 8)
      {
        return v12 + 1 == a2;
      }
    }

    v11 = v12;
    v13 += 8;
    if (++v12 == a2)
    {
      return 1;
    }
  }
}

void **std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t ORToolsCpComputeConstant::ORToolsCpComputeConstant(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t a3)
{
  v31 = operations_research::sat::CpModelBuilder::NewConstant(a2, *a3);
  v32 = v6;
  if (*(a3 + 71) >= 0)
  {
    v7 = *(a3 + 71);
  }

  else
  {
    v7 = *(a3 + 56);
  }

  std::string::basic_string[abi:ne200100](&__p, v7 + 28);
  if ((v30 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v7)
  {
    if (*(a3 + 71) >= 0)
    {
      v9 = (a3 + 48);
    }

    else
    {
      v9 = *(a3 + 48);
    }

    memmove(p_p, v9, v7);
  }

  strcpy(p_p + v7, "_compute_time_resident_const");
  if ((v30 & 0x80u) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p;
  }

  if ((v30 & 0x80u) == 0)
  {
    v11 = v30;
  }

  else
  {
    v11 = v29;
  }

  *a1 = operations_research::sat::IntVar::WithName(&v31, v10, v11);
  *(a1 + 8) = v12;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v31 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 8));
  v32 = v13;
  if (*(a3 + 71) >= 0)
  {
    v14 = *(a3 + 71);
  }

  else
  {
    v14 = *(a3 + 56);
  }

  std::string::basic_string[abi:ne200100](&__p, v14 + 31);
  if ((v30 & 0x80u) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v14)
  {
    if (*(a3 + 71) >= 0)
    {
      v16 = (a3 + 48);
    }

    else
    {
      v16 = *(a3 + 48);
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, "_compute_time_nonresident_const");
  if ((v30 & 0x80u) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p;
  }

  if ((v30 & 0x80u) == 0)
  {
    v18 = v30;
  }

  else
  {
    v18 = v29;
  }

  *(a1 + 16) = operations_research::sat::IntVar::WithName(&v31, v17, v18);
  *(a1 + 24) = v19;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  ORToolsCpComputeConstant::CreateCompileTimeWithChainVariables(a2, a3, a1 + 32);
  v31 = operations_research::sat::CpModelBuilder::NewConstant(a2, *(a3 + 40));
  v32 = v20;
  if (*(a3 + 71) >= 0)
  {
    v21 = *(a3 + 71);
  }

  else
  {
    v21 = *(a3 + 56);
  }

  v22 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v21 + 34);
  if ((v30 & 0x80u) != 0)
  {
    v22 = __p;
  }

  if (v21)
  {
    if (*(a3 + 71) >= 0)
    {
      v23 = (a3 + 48);
    }

    else
    {
      v23 = *(a3 + 48);
    }

    memmove(v22, v23, v21);
  }

  strcpy(v22 + v21, "_compute_time_with_out_chain_const");
  if ((v30 & 0x80u) == 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if ((v30 & 0x80u) == 0)
  {
    v25 = v30;
  }

  else
  {
    v25 = v29;
  }

  *(a1 + 56) = operations_research::sat::IntVar::WithName(&v31, v24, v25);
  *(a1 + 64) = v26;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_23C92DEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *(v14 + 32);
  if (v16)
  {
    *(v14 + 40) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpComputeConstant::CreateCompileTimeWithChainVariables(operations_research::sat::CpModelBuilder *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v3 != v4)
  {
    v28 = (a2 + 48);
    do
    {
      v31 = operations_research::sat::CpModelBuilder::NewConstant(a1, *v3);
      v32 = v8;
      if (*(a2 + 71) >= 0)
      {
        v9 = *(a2 + 71);
      }

      else
      {
        v9 = *(a2 + 56);
      }

      std::string::basic_string[abi:ne200100](__p, v9 + 33);
      if ((v30 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if (v9)
      {
        if (*(a2 + 71) >= 0)
        {
          v11 = v28;
        }

        else
        {
          v11 = *(a2 + 48);
        }

        memmove(v10, v11, v9);
      }

      strcpy(v10 + v9, "_compute_time_with_in_chain_const");
      if ((v30 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v30 & 0x80u) == 0)
      {
        v13 = v30;
      }

      else
      {
        v13 = __p[1];
      }

      v14 = operations_research::sat::IntVar::WithName(&v31, v12, v13);
      v16 = v15;
      v18 = *(a3 + 8);
      v17 = *(a3 + 16);
      if (v18 >= v17)
      {
        v20 = (v18 - *a3) >> 4;
        v21 = v20 + 1;
        if ((v20 + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v22 = v17 - *a3;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v23 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(a3, v23);
        }

        v24 = 16 * v20;
        *v24 = v14;
        *(v24 + 8) = v16;
        v19 = 16 * v20 + 16;
        v25 = *(a3 + 8) - *a3;
        v26 = (16 * v20 - v25);
        memcpy(v26, *a3, v25);
        v27 = *a3;
        *a3 = v26;
        *(a3 + 8) = v19;
        *(a3 + 16) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v18 = v14;
        *(v18 + 8) = v15;
        v19 = v18 + 16;
      }

      *(a3 + 8) = v19;
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

void sub_23C92E118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpComputeConstant::~ORToolsCpComputeConstant(ORToolsCpComputeConstant *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

uint64_t ComputeCycleEstimator::GetMaxCycle(ComputeCycleEstimator *this, char a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v16 = 0;
  v17 = v4;
  v14 = 0;
  __dst = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v14, &v17, &v18, 1uLL);
  if ((a2 & 1) == 0)
  {
    std::vector<long long>::push_back[abi:ne200100](&v14, this + 1);
  }

  std::vector<long long>::push_back[abi:ne200100](&v14, this + 5);
  std::vector<unsigned long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned long const*>,std::__wrap_iter<unsigned long const*>>(&v14, __dst, *(this + 2), *(this + 3), (*(this + 3) - *(this + 2)) >> 3);
  v5 = v14;
  if (v14 != __dst)
  {
    v6 = v14 + 8;
    v5 = v14;
    if (v14 + 8 != __dst)
    {
      v7 = *v14;
      v5 = v14;
      v8 = (v14 + 8);
      do
      {
        v10 = *v8++;
        v9 = v10;
        v11 = v7 >= v10;
        if (v7 <= v10)
        {
          v7 = v9;
        }

        if (!v11)
        {
          v5 = v6;
        }

        v6 = v8;
      }

      while (v8 != __dst);
    }
  }

  v12 = *v5;
  if (v14)
  {
    __dst = v14;
    operator delete(v14);
  }

  return v12;
}

void sub_23C92E298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23C92E318(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned long const*>,std::__wrap_iter<unsigned long const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7;
      v7 += 8;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

__n128 CpTransposeGraph::GetTensorDimensions@<Q0>(uint64_t *__return_ptr a1@<X8>, CpTransposeGraph *this@<X0>, unint64_t a3@<X1>)
{
  v7 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 42, &v7);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  result = *(v4 + 3);
  v6 = *(v4 + 5);
  *a1 = result;
  *(a1 + 1) = v6;
  a1[4] = v4[7];
  return result;
}

void *CpTransposeGraph::GetRootTensorConstraint(CpTransposeGraph *this, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 52, &v4);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

void *CpTransposeGraph::GetLayerTruthTable(CpTransposeGraph *this, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 47, &v4);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x23EED93A0](a1 + 128);
  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278BC2E20, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CpMemCacheAllocGraph::GetLayerLatencyInfo(CpMemCacheAllocGraph *this, unint64_t a2)
{
  v8 = a2;
  v2 = *(this + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = (this + 384);
  do
  {
    v4 = v2[4];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = v2[v6];
  }

  while (v2);
  if (v3 != (this + 384) && v3[4] <= a2)
  {
    return *std::map<unsigned long long,MemCacheLayerLatencyInfo const*>::at(this + 376, &v8);
  }

  else
  {
    return 0;
  }
}

void *std::map<unsigned long long,MemCacheLayerLatencyInfo const*>::at(uint64_t a1, unint64_t *a2)
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

uint64_t CpMemCacheAllocGraph::GetTensorFootprintInfo(CpMemCacheAllocGraph *this, unint64_t a2)
{
  v8 = a2;
  v2 = *(this + 51);
  if (!v2)
  {
    return 0;
  }

  v3 = (this + 408);
  do
  {
    v4 = v2[4];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = v2[v6];
  }

  while (v2);
  if (v3 != (this + 408) && v3[4] <= a2)
  {
    return *std::map<unsigned long long,MemCacheLayerLatencyInfo const*>::at(this + 400, &v8);
  }

  else
  {
    return 0;
  }
}

BOOL CpMemCacheAllocGraph::IsDramTensor(CpMemCacheAllocGraph *this, unint64_t a2)
{
  v2 = this + 408;
  v3 = *(this + 51);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 408;
  do
  {
    v5 = *(v3 + 4);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == v2 || *(v4 + 4) > a2)
  {
LABEL_9:
    v4 = this + 408;
  }

  return v4 != v2;
}

BOOL CpMemCacheAllocGraph::IsDramAccessingEngineLayer(CpMemCacheAllocGraph *this, unint64_t a2)
{
  v2 = this + 384;
  v3 = *(this + 48);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 384;
  do
  {
    v5 = *(v3 + 4);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == v2 || *(v4 + 4) > a2)
  {
LABEL_9:
    v4 = this + 384;
  }

  return v4 != v2;
}

unint64_t CpMemCacheAllocGraph::GetDramTensor(CpGraph *a1, unint64_t a2, int a3)
{
  v19 = a2;
  v18 = a3;
  if (a3 != 3)
  {
    v8 = *(a1 + 54);
    if (!v8)
    {
      LOBYTE(OutputTensor) = 0;
      return v8 | OutputTensor;
    }

    v10 = (a1 + 432);
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 != (a1 + 432) && v10[4] <= a2)
    {
      v14 = std::map<unsigned long long,MemCacheLayerLatencyInfo const*>::at(a1 + 424, &v19);
      v15 = v14[1];
      if (v15)
      {
        v16 = v14 + 1;
        do
        {
          if (*(v15 + 32) >= a3)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * (*(v15 + 32) < a3));
        }

        while (v15);
        if (v16 != v14 + 1 && *(v16 + 8) <= a3)
        {
          OutputTensor = *std::map<OrToolsTensorUsage,unsigned long long>::at(v14, &v18);
          goto LABEL_6;
        }
      }
    }

LABEL_22:
    LOBYTE(OutputTensor) = 0;
    v8 = 0;
    return v8 | OutputTensor;
  }

  v20 = a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a1 + 3, &v20);
  v6 = (a1 + 104);
  if (v5)
  {
    v6 = v5 + 3;
  }

  if (*v6 == v6[1])
  {
    goto LABEL_22;
  }

  OutputTensor = CpGraph::GetOutputTensor(a1, a2);
LABEL_6:
  v8 = OutputTensor & 0xFFFFFFFFFFFFFF00;
  return v8 | OutputTensor;
}

uint64_t *std::map<OrToolsTensorUsage,unsigned long long>::at(uint64_t a1, int *a2)
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
      v4 = *(v2 + 8);
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

operations_research::sat::CpModelBuilder *ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(operations_research::sat::CpModelBuilder *a1, uint64_t *a2)
{
  v4 = operations_research::sat::CpModelBuilder::NewBoolVar(a1);
  v6 = v5;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      operations_research::sat::BoolVar::BoolVar(&v23, ~*(v7 + 8), *v7);
      v9 = v24;
      v10 = v29;
      if (v29 >= v30)
      {
        v12 = (v29 - v28) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v14 = v30 - v28;
        if ((v30 - v28) >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(&v28, v15);
        }

        v16 = 16 * v12;
        *v16 = v23;
        *(v16 + 8) = v9;
        v11 = 16 * v12 + 16;
        v17 = (16 * v12 - (v29 - v28));
        memcpy(v17, v28, v29 - v28);
        v18 = v28;
        v28 = v17;
        v29 = v11;
        v30 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v29 = v23;
        *(v10 + 2) = v9;
        v11 = (v10 + 16);
      }

      v29 = v11;
      v7 += 16;
    }

    while (v7 != v8);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v23, v4, v6);
  operations_research::sat::LinearExpr::Sum(v28, (v29 - v28) >> 4, v20);
  v27 = operations_research::sat::CpModelBuilder::AddNotEqual(a1, &v23, v20);
  operations_research::sat::Constraint::WithName(&v27, "BOOLean_AND", 0xBuLL);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v4;
}

void sub_23C92EE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  v17 = *(v15 - 104);
  if (v17)
  {
    *(v15 - 96) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

operations_research::sat::CpModelBuilder *ORToolsCpBasedAllocatorUtil::CreateBooleanOr(operations_research::sat::CpModelBuilder *a1, uint64_t **a2)
{
  v4 = operations_research::sat::CpModelBuilder::NewBoolVar(a1);
  operations_research::sat::LinearExpr::LinearExpr(v10, v4, v5);
  operations_research::sat::LinearExpr::Sum(*a2, (a2[1] - *a2) >> 4, v7);
  v13 = operations_research::sat::CpModelBuilder::AddEquality(a1, v10, v7);
  operations_research::sat::Constraint::WithName(&v13, "BOOLean_OR", 0xAuLL);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v4;
}

void sub_23C92EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

uint64_t ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(operations_research::sat::CpModelBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v7 = a5;
  v10 = a3 + 1;
  v11 = a3 + 1 - a2;
  v12 = operations_research::sat::CpModelBuilder::NewConstant(a1, a2);
  v14 = v13;
  v15 = operations_research::sat::CpModelBuilder::NewConstant(a1, v11);
  v17 = v16;
  v18 = operations_research::sat::CpModelBuilder::NewConstant(a1, v10);
  LODWORD(v11) = v19;
  operations_research::sat::LinearExpr::LinearExpr(v31, v12, v14);
  operations_research::sat::LinearExpr::LinearExpr(v28, v15, v17);
  operations_research::sat::LinearExpr::LinearExpr(v25, v18, v11);
  v34 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(a1, v31, v28, v25, a4, v7);
  v35 = v20;
  v21 = *(a6 + 23);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v22 = a6;
    a6 = *a6;
    v21 = v22[1];
  }

  v23 = operations_research::sat::IntervalVar::WithName(&v34, a6, v21);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  return v23;
}

void sub_23C92F0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  operations_research::sat::LinearExpr::~LinearExpr(va1);
  _Unwind_Resume(a1);
}

void *ORToolsCpBasedAllocatorUtil::GetResponseString@<X0>(ORToolsCpBasedAllocatorUtil *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 66);
  if (v4 > 4)
  {
    v5 = &byte_23CE7F131;
  }

  else
  {
    v5 = off_278BC2E50[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

void ORToolsCpBasedAllocatorUtil::PrintConstraintProblem(void *a1, uint64_t a2, operations_research::sat *a3, CpGraph *a4, void *a5, uint64_t a6, unint64_t a7)
{
  if (a1[16])
  {
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n\n[Variables]", 13);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(v88, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v88);
    std::ostream::put();
    std::ostream::flush();
    v83 = a2;
    v14 = *(a2 + 24);
    v13 = a2 + 24;
    v15 = (v14 + 7);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (*(v13 + 8))
    {
      operations_research::sat::IntegerVariableProto::IntegerVariableProto(v88, 0, *v16);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\nvars: ", 7);
      std::to_string(&v89, 0);
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v89;
      }

      else
      {
        v18 = v89.__r_.__value_.__r.__words[0];
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v89.__r_.__value_.__l.__size_;
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, size);
      std::ios_base::getloc((v20 + *(*v20 - 24)));
      v21 = std::locale::use_facet(&v85, MEMORY[0x277D82680]);
      (v21->__vftable[2].~facet_0)(v21, 10);
      std::locale::~locale(&v85);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      google::protobuf::Message::DebugString(&v89);
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n\n[Constraints]", 15);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(v88, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(v88);
    std::ostream::put();
    std::ostream::flush();
    v24 = *(v83 + 48);
    if (v24)
    {
      v25 = (v24 + 7);
    }

    else
    {
      v25 = (v83 + 48);
    }

    if (*(v83 + 56))
    {
      operations_research::sat::ConstraintProto::ConstraintProto(v88, 0, *v25);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\nconstraint id: ", 16);
      std::to_string(&v89, 0);
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v89;
      }

      else
      {
        v27 = v89.__r_.__value_.__r.__words[0];
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v89.__r_.__value_.__l.__size_;
      }

      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
      std::ios_base::getloc((v29 + *(*v29 - 24)));
      v30 = std::locale::use_facet(&v85, MEMORY[0x277D82680]);
      (v30->__vftable[2].~facet_0)(v30, 10);
      std::locale::~locale(&v85);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      google::protobuf::Message::DebugString(&v89);
    }

    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n\n[Stats]", 9);
    std::ios_base::getloc((v31 + *(*v31 - 24)));
    v32 = std::locale::use_facet(v88, MEMORY[0x277D82680]);
    (v32->__vftable[2].~facet_0)(v32, 10);
    std::locale::~locale(v88);
    std::ostream::put();
    std::ostream::flush();
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "NodeCount=", 10);
    CpGraph::GetLayers(a4, 1, &v88[0].__r_.__value_.__l.__data_);
    v34 = MEMORY[0x23EED91A0](v33, (v88[0].__r_.__value_.__l.__size_ - v88[0].__r_.__value_.__r.__words[0]) >> 3);
    std::ios_base::getloc((v34 + *(*v34 - 24)));
    v35 = std::locale::use_facet(&v89, MEMORY[0x277D82680]);
    (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(&v89);
    std::ostream::put();
    std::ostream::flush();
    if (v88[0].__r_.__value_.__r.__words[0])
    {
      v88[0].__r_.__value_.__l.__size_ = v88[0].__r_.__value_.__r.__words[0];
      operator delete(v88[0].__r_.__value_.__l.__data_);
    }

    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "ChainableTensorCount=", 21);
    std::set<unsigned long long>::set[abi:ne200100](v88, a4 + 336);
    v37 = MEMORY[0x23EED91A0](v36, v88[0].__r_.__value_.__r.__words[2]);
    std::ios_base::getloc((v37 + *(*v37 - 24)));
    v38 = std::locale::use_facet(&v89, MEMORY[0x277D82680]);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(&v89);
    std::ostream::put();
    std::ostream::flush();
    std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(v88, v88[0].__r_.__value_.__l.__size_);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "RegionMaxCycle=", 15);
    v40 = MEMORY[0x23EED91A0](v39, a6);
    std::ios_base::getloc((v40 + *(*v40 - 24)));
    v41 = std::locale::use_facet(v88, MEMORY[0x277D82680]);
    (v41->__vftable[2].~facet_0)(v41, 10);
    std::locale::~locale(v88);
    std::ostream::put();
    std::ostream::flush();
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "RegionL2Budget=", 15);
    v43 = MEMORY[0x23EED91A0](v42, a7);
    std::ios_base::getloc((v43 + *(*v43 - 24)));
    v44 = std::locale::use_facet(v88, MEMORY[0x277D82680]);
    (v44->__vftable[2].~facet_0)(v44, 10);
    std::locale::~locale(v88);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v45 = std::locale::use_facet(v88, MEMORY[0x277D82680]);
    (v45->__vftable[2].~facet_0)(v45, 10);
    std::locale::~locale(v88);
    std::ostream::put();
    std::ostream::flush();
    operations_research::sat::CpModelStats(v88, a3);
    if ((v88[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = v88;
    }

    else
    {
      v46 = v88[0].__r_.__value_.__r.__words[0];
    }

    if ((v88[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(v88[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = v88[0].__r_.__value_.__l.__size_;
    }

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v46, v47);
    std::ios_base::getloc((v48 + *(*v48 - 24)));
    v49 = std::locale::use_facet(&v89, MEMORY[0x277D82680]);
    (v49->__vftable[2].~facet_0)(v49, 10);
    std::locale::~locale(&v89);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v88[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88[0].__r_.__value_.__l.__data_);
    }

    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n\n[Analysis]", 12);
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v51 = std::locale::use_facet(v88, MEMORY[0x277D82680]);
    (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(v88);
    std::ostream::put();
    std::ostream::flush();
    CpGraph::GetLayers(a4, 1, &v88[0].__r_.__value_.__l.__data_);
    v53 = v88[0].__r_.__value_.__l.__size_;
    v52 = v88[0].__r_.__value_.__r.__words[0];
    if (v88[0].__r_.__value_.__r.__words[0] != v88[0].__r_.__value_.__l.__size_)
    {
      v84 = v88[0].__r_.__value_.__l.__size_;
      do
      {
        v54 = *v52;
        v87 = 0;
        if (CpAllocGraph::GetLayerBehavior(a4, v54, &v87))
        {
          v55 = *(*(v87 + 4) + 24);
          OutputTensor = CpGraph::GetOutputTensor(a4, v54);
          if (v55 > a7 && std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a5, &OutputTensor))
          {
            v56 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a5, &OutputTensor);
            if (!v56)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            if (*(v56 + 24) == 1)
            {
              memset(&v89, 0, sizeof(v89));
              CpGraph::GetLayerName(a4, v54, &v89);
              v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "nonresident_cost_write exceeds L2 budget for ", 45);
              v58 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v89 : v89.__r_.__value_.__r.__words[0];
              v59 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v89.__r_.__value_.__r.__words[2]) : v89.__r_.__value_.__l.__size_;
              v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v58, v59);
              v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " (size: ", 8);
              v62 = MEMORY[0x23EED91A0](v61, v55);
              v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ")", 1);
              std::ios_base::getloc((v63 + *(*v63 - 24)));
              v64 = std::locale::use_facet(&v85, MEMORY[0x277D82680]);
              (v64->__vftable[2].~facet_0)(v64, 10);
              std::locale::~locale(&v85);
              std::ostream::put();
              std::ostream::flush();
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }
            }
          }

          CpGraph::GetInputTensors(a4, v54, &v89);
          v65 = v89.__r_.__value_.__r.__words[0];
          if (v89.__r_.__value_.__l.__size_ != v89.__r_.__value_.__r.__words[0])
          {
            v66 = 0;
            v67 = 0;
            do
            {
              LayerCycleAndFootprintEstimator::GetReadBehaviors(&v85.__r_.__value_.__l.__data_, v87);
              v68 = *(*(v85.__r_.__value_.__r.__words[0] + 8 * v67) + 24);
              v85.__r_.__value_.__l.__size_ = v85.__r_.__value_.__r.__words[0];
              operator delete(v85.__r_.__value_.__l.__data_);
              if (v68 > a7 && std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a5, (v89.__r_.__value_.__r.__words[0] + v66)))
              {
                v69 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a5, (v89.__r_.__value_.__r.__words[0] + v66));
                if (!v69)
                {
                  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                }

                if (*(v69 + 24) == 1)
                {
                  memset(&v85, 0, sizeof(v85));
                  CpGraph::GetLayerName(a4, v54, &v85);
                  v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "nonresident_cost_read", 21);
                  v71 = MEMORY[0x23EED91A0](v70, v67);
                  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " exceeds L2 budget for ", 23);
                  v73 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v85 : v85.__r_.__value_.__r.__words[0];
                  v74 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v85.__r_.__value_.__r.__words[2]) : v85.__r_.__value_.__l.__size_;
                  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
                  v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, " (size: ", 8);
                  v77 = MEMORY[0x23EED91A0](v76, v68);
                  v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, ")", 1);
                  std::ios_base::getloc((v78 + *(*v78 - 24)));
                  v79 = std::locale::use_facet(&v90, MEMORY[0x277D82680]);
                  (v79->__vftable[2].~facet_0)(v79, 10);
                  std::locale::~locale(&v90);
                  std::ostream::put();
                  std::ostream::flush();
                  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v85.__r_.__value_.__l.__data_);
                  }
                }
              }

              ++v67;
              v65 = v89.__r_.__value_.__r.__words[0];
              v66 += 8;
            }

            while (v67 < (v89.__r_.__value_.__l.__size_ - v89.__r_.__value_.__r.__words[0]) >> 3);
            v53 = v84;
          }

          if (v65)
          {
            v89.__r_.__value_.__l.__size_ = v65;
            operator delete(v65);
          }
        }

        ++v52;
      }

      while (v52 != v53);
      v52 = v88[0].__r_.__value_.__r.__words[0];
    }

    if (v52)
    {
      v88[0].__r_.__value_.__l.__size_ = v52;
      operator delete(v52);
    }
  }
}

void ORToolsCpBasedAllocatorUtil::PrintRegion(void *a1, uint64_t a2, void *a3)
{
  if (a1[16])
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[Region", 7);
    if (*(a2 + 335) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *(a2 + 312), *(a2 + 320));
    }

    else
    {
      v35 = *(a2 + 312);
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v35;
    }

    else
    {
      v7 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, size);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "]", 1);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    CpGraph::GetLayers(a2, 1, &v35.__r_.__value_.__l.__data_);
    v13 = v35.__r_.__value_.__l.__size_;
    v12 = v35.__r_.__value_.__r.__words[0];
    if (v35.__r_.__value_.__r.__words[0] != v35.__r_.__value_.__l.__size_)
    {
      v14 = MEMORY[0x277D82680];
      do
      {
        v15 = *v12;
        __val = 0;
        CpGraph::GetLayerSchedule(a2, v15, &__val);
        memset(&v33, 0, sizeof(v33));
        CpGraph::GetLayerName(a2, v15, &v33);
        OutputTensor = CpGraph::GetOutputTensor(a2, v15);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "sched=", 6);
        std::to_string(&__p, __val);
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
          v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, p_p, v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        for (i = *(a2 + 344); i; i = *i)
        {
          v20 = i[4];
          if (v20 <= OutputTensor)
          {
            if (v20 >= OutputTensor)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " / ChainableProducer ", 21);
              break;
            }

            ++i;
          }
        }

        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n\tname=", 7);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v33;
        }

        else
        {
          v22 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = v33.__r_.__value_.__l.__size_;
        }

        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(&__p, v14);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
        v26 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a3, &OutputTensor);
        if (v26)
        {
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\t\tearly_decision = ", 19);
          CpAllocUtils::GetDecisionString(v26 + 24, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &__p;
          }

          else
          {
            v28 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v29 = __p.__r_.__value_.__l.__size_;
          }

          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "\n", 1);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\t\tearly_decision = unset\n", 25);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        ++v12;
      }

      while (v12 != v13);
      v12 = v35.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      v35.__r_.__value_.__l.__size_ = v12;
      operator delete(v12);
    }
  }
}

void sub_23C930384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::locale::~locale(&a16);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ORToolsCpBasedAllocatorUtil::PrintSolverParams(void *a1, uint64_t a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n\n[Parameters]\n", 15);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "ORTools Version = ", 18);
  v5 = operations_research::OrToolsMajorVersion(v4);
  v6 = MEMORY[0x23EED9180](v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ".", 1);
  v8 = operations_research::OrToolsMinorVersion(v7);
  v9 = MEMORY[0x23EED9180](v7, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "max_time_in_second: ", 20);
  v12 = MEMORY[0x23EED9170](v11, *(*a2 + 448));
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "num_search_workers: ", 20);
  v15 = MEMORY[0x23EED9180](v14, *(*a2 + 264));
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "interleave_search: ", 19);
  v18 = MEMORY[0x23EED9160](v17, *(*a2 + 280));
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "enumerate_all_solutions: ", 25);
  v21 = MEMORY[0x23EED9160](v20, *(*a2 + 284));
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  return std::ostream::flush();
}

void *ORToolsCpBasedAllocatorUtil::PrintSolverResult(void *result, CpGraph *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  if (!result[16])
  {
    return result;
  }

  v13 = result;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, "\n\n[Schedule Results]\n", 21);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "RESULT=", 7);
  ORToolsCpBasedAllocatorUtil::GetResponseString(a7, __p);
  if ((SBYTE7(v48) & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((SBYTE7(v48) & 0x80u) == 0)
  {
    v16 = BYTE7(v48);
  }

  else
  {
    v16 = __p[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v45, MEMORY[0x277D82680]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v45);
  std::ostream::put();
  std::ostream::flush();
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "SolveTime=", 10);
  v20 = MEMORY[0x23EED9170](v19, *(a7 + 200));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " secs", 5);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "e2e network latency=", 20);
  v24 = MEMORY[0x23EED9170](v23, *(a7 + 144));
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  result = std::ostream::flush();
  v26 = *(a7 + 264);
  if (v26 != 2 && v26 != 4)
  {
    return result;
  }

  v39 = a6;
  v50 = 0;
  *__p = 0u;
  v48 = 0u;
  v49 = 1065353216;
  CpGraph::GetLayers(a2, 1, &v45.__locale_);
  locale = v45.__locale_;
  v28 = v46;
  if (v45.__locale_ == v46)
  {
    goto LABEL_46;
  }

  do
  {
    v44 = *locale;
    v29 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a4, &v44);
    if (v29)
    {
      v43 = 0;
      CpGraph::GetLayerSchedule(a2, v44, &v43);
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(__p, &v43))
      {
        if (ORToolsCpBasedAllocatorUtil::HasOutputChain(a7, a3, a2, v44))
        {
          v30 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a5, &v44);
          ORToolsCpBasedAllocatorUtil::GetChainPairResultString(&v40, a7, v30[3], &v50);
          if ((v42 & 0x80u) == 0)
          {
            v31 = &v40;
          }

          else
          {
            v31 = v40;
          }

          if ((v42 & 0x80u) == 0)
          {
            v32 = v42;
          }

          else
          {
            v32 = v41;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v31, v32);
          if (v42 < 0)
          {
            operator delete(v40);
          }

LABEL_24:
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(__p, &v43, &v43);
          v40 = (v43 + 1);
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(__p, &v40, &v40);
          goto LABEL_44;
        }

        if (operations_research::sat::SolutionBooleanValue(a7, *(v29[3] + 160), *(v29[3] + 168)))
        {
          v33 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v39, &v44);
          ORToolsCpBasedAllocatorUtil::GetL2DepPairResultString(&v40, a7, v33[3], &v50);
          if ((v42 & 0x80u) == 0)
          {
            v34 = &v40;
          }

          else
          {
            v34 = v40;
          }

          if ((v42 & 0x80u) == 0)
          {
            v35 = v42;
          }

          else
          {
            v35 = v41;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v34, v35);
          if (v42 < 0)
          {
            operator delete(v40);
          }

          goto LABEL_24;
        }

        v36 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a4, &v44);
        ORToolsCpBasedAllocatorUtil::GetEngineLayerResultString(&v40, a7, v36[3], &v50);
        if ((v42 & 0x80u) == 0)
        {
          v37 = &v40;
        }

        else
        {
          v37 = v40;
        }

        if ((v42 & 0x80u) == 0)
        {
          v38 = v42;
        }

        else
        {
          v38 = v41;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v37, v38);
        if (v42 < 0)
        {
          operator delete(v40);
        }

        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(__p, &v43, &v43);
      }
    }

LABEL_44:
    ++locale;
  }

  while (locale != v28);
  locale = v45.__locale_;
LABEL_46:
  if (locale)
  {
    v46 = locale;
    operator delete(locale);
  }

  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(__p);
}

BOOL ORToolsCpBasedAllocatorUtil::HasOutputChain(uint64_t a1, void *a2, CpGraph *this, unint64_t a4)
{
  OutputTensor = CpGraph::GetOutputTensor(this, a4);
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a2, &OutputTensor);
  return operations_research::sat::SolutionBooleanValue(a1, *(v6[3] + 32), *(v6[3] + 40));
}

uint64_t *ORToolsCpBasedAllocatorUtil::GetChainPairResultString@<X0>(uint64_t *__return_ptr a1@<X8>, ORToolsCpBasedAllocatorUtil *this@<X0>, const operations_research::sat::CpSolverResponse *a3@<X1>, const ORToolsChainScheduleVariable *a4@<X2>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v169);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "sched=", 6);
  MEMORY[0x23EED91A0](v5, *(a3 + 46));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, ", ", 2);
  v7 = *(a3 + 343);
  if (v7 >= 0)
  {
    v8 = a3 + 320;
  }

  else
  {
    v8 = *(a3 + 40);
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 343);
  }

  else
  {
    v9 = *(a3 + 41);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n\tChain producer\n", 17);
  ORToolsCpBasedAllocatorUtil::GetInPlaceString(a3 + 32, this, &__p);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tlayer_begin(vars: ", 19);
  v14 = MEMORY[0x23EED9180](v13, *(a3 + 2));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ")=", 2);
  std::to_string(&__p, *a4);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v168, MEMORY[0x277D82680]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v168);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tread_end_0(vars: ", 19);
  v21 = MEMORY[0x23EED9180](v20, *(*(a3 + 6) + 8));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, **(a3 + 6), *(*(a3 + 6) + 8));
  v24 = operations_research::sat::SolutionIntegerValue(this, &__p, v23);
  std::to_string(&v168, v24);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v168;
  }

  else
  {
    v25 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v168.__r_.__value_.__l.__size_;
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v25, v26);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 23) - *(a3 + 22) >= 9uLL)
  {
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tread_end_1(vars: ", 19);
    v30 = MEMORY[0x23EED9180](v29, *(*(a3 + 6) + 24));
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")=", 2);
    operations_research::sat::LinearExpr::LinearExpr(&__p, *(*(a3 + 6) + 16), *(*(a3 + 6) + 24));
    v33 = operations_research::sat::SolutionIntegerValue(this, &__p, v32);
    std::to_string(&v168, v33);
    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v168;
    }

    else
    {
      v34 = v168.__r_.__value_.__r.__words[0];
    }

    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v168.__r_.__value_.__l.__size_;
    }

    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v34, v35);
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v37 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(&v175);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v168.__r_.__value_.__l.__data_);
    }

    if (v166)
    {
      v167 = v166;
      operator delete(v166);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tcomp_end(vars: ", 17);
  v39 = MEMORY[0x23EED9180](v38, *(a3 + 20));
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 9), *(a3 + 10));
  v42 = operations_research::sat::SolutionIntegerValue(this, &__p, v41);
  std::to_string(&v168, v42);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v168;
  }

  else
  {
    v43 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v168.__r_.__value_.__l.__size_;
  }

  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v43, v44);
  std::ios_base::getloc((v45 + *(*v45 - 24)));
  v46 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v46->__vftable[2].~facet_0)(v46, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\twrite_end(vars: ", 18);
  v48 = MEMORY[0x23EED9180](v47, *(a3 + 24));
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 11), *(a3 + 12));
  v51 = operations_research::sat::SolutionIntegerValue(this, &__p, v50);
  std::to_string(&v168, v51);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v168;
  }

  else
  {
    v52 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v168.__r_.__value_.__l.__size_;
  }

  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v52, v53);
  std::ios_base::getloc((v54 + *(*v54 - 24)));
  v55 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v55->__vftable[2].~facet_0)(v55, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tlayer_end(vars: ", 17);
  v57 = MEMORY[0x23EED9180](v56, *(a3 + 10));
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ")=", 2);
  v59 = *a4;
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 4), *(a3 + 5));
  v61 = operations_research::sat::SolutionIntegerValue(this, &__p, v60);
  std::to_string(&v168, v61 + v59);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &v168;
  }

  else
  {
    v62 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = v168.__r_.__value_.__l.__size_;
  }

  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v62, v63);
  std::ios_base::getloc((v64 + *(*v64 - 24)));
  v65 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v65->__vftable[2].~facet_0)(v65, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 23) != *(a3 + 22))
  {
    v66 = 0;
    v67 = MEMORY[0x277D82680];
    do
    {
      v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tin", 3);
      std::to_string(&__p, v66);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &__p;
      }

      else
      {
        v69 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v70 = __p.__r_.__value_.__l.__size_;
      }

      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ": ", 2);
      ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&v168, this, *(*(a3 + 22) + 8 * v66));
      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v168;
      }

      else
      {
        v73 = v168.__r_.__value_.__r.__words[0];
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v168.__r_.__value_.__l.__size_;
      }

      v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
      std::ios_base::getloc((v75 + *(*v75 - 24)));
      v76 = std::locale::use_facet(&v175, v67);
      (v76->__vftable[2].~facet_0)(v76, 10);
      std::locale::~locale(&v175);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v168.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v66;
    }

    while (v66 < (*(a3 + 23) - *(a3 + 22)) >> 3);
  }

  v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tout: ", 6);
  ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&__p, this, *(a3 + 26));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = &__p;
  }

  else
  {
    v78 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v79 = __p.__r_.__value_.__l.__size_;
  }

  v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
  std::ios_base::getloc((v80 + *(*v80 - 24)));
  v81 = std::locale::use_facet(&v168, MEMORY[0x277D82680]);
  (v81->__vftable[2].~facet_0)(v81, 10);
  std::locale::~locale(&v168);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "sched=", 6);
  MEMORY[0x23EED91A0](v82, *(a3 + 47));
  v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, ", ", 2);
  v84 = *(a3 + 367);
  if (v84 >= 0)
  {
    v85 = a3 + 344;
  }

  else
  {
    v85 = *(a3 + 43);
  }

  if (v84 >= 0)
  {
    v86 = *(a3 + 367);
  }

  else
  {
    v86 = *(a3 + 44);
  }

  v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, v85, v86);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, "\n", 1);
  ORToolsCpBasedAllocatorUtil::GetInPlaceString(a3 + 35, this, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v88 = &__p;
  }

  else
  {
    v88 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v89 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v89 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, v88, v89);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tlayer_begin(vars: ", 19);
  v91 = MEMORY[0x23EED9180](v90, *(a3 + 2));
  v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, ")=", 2);
  std::to_string(&__p, *a4);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v93 = &__p;
  }

  else
  {
    v93 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v94 = __p.__r_.__value_.__l.__size_;
  }

  v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, v93, v94);
  std::ios_base::getloc((v95 + *(*v95 - 24)));
  v96 = std::locale::use_facet(&v168, MEMORY[0x277D82680]);
  (v96->__vftable[2].~facet_0)(v96, 10);
  std::locale::~locale(&v168);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tread_end_0(vars: ", 19);
  v98 = MEMORY[0x23EED9180](v97, *(*(a3 + 13) + 8));
  v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, **(a3 + 13), *(*(a3 + 13) + 8));
  v101 = operations_research::sat::SolutionIntegerValue(this, &__p, v100);
  std::to_string(&v168, v101);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v102 = &v168;
  }

  else
  {
    v102 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v103 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v103 = v168.__r_.__value_.__l.__size_;
  }

  v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, v102, v103);
  std::ios_base::getloc((v104 + *(*v104 - 24)));
  v105 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v105->__vftable[2].~facet_0)(v105, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 28) - *(a3 + 27) >= 9uLL)
  {
    v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tread_end_1(vars: ", 19);
    v107 = MEMORY[0x23EED9180](v106, *(*(a3 + 13) + 24));
    v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, ")=", 2);
    operations_research::sat::LinearExpr::LinearExpr(&__p, *(*(a3 + 13) + 16), *(*(a3 + 13) + 24));
    v110 = operations_research::sat::SolutionIntegerValue(this, &__p, v109);
    std::to_string(&v168, v110);
    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = &v168;
    }

    else
    {
      v111 = v168.__r_.__value_.__r.__words[0];
    }

    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v112 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v112 = v168.__r_.__value_.__l.__size_;
    }

    v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, v111, v112);
    std::ios_base::getloc((v113 + *(*v113 - 24)));
    v114 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
    (v114->__vftable[2].~facet_0)(v114, 10);
    std::locale::~locale(&v175);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v168.__r_.__value_.__l.__data_);
    }

    if (v166)
    {
      v167 = v166;
      operator delete(v166);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tcomp_end(vars: ", 17);
  v116 = MEMORY[0x23EED9180](v115, *(a3 + 34));
  v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 16), *(a3 + 17));
  v119 = operations_research::sat::SolutionIntegerValue(this, &__p, v118);
  std::to_string(&v168, v119);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v120 = &v168;
  }

  else
  {
    v120 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v121 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v121 = v168.__r_.__value_.__l.__size_;
  }

  v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v117, v120, v121);
  std::ios_base::getloc((v122 + *(*v122 - 24)));
  v123 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v123->__vftable[2].~facet_0)(v123, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\twrite_end(vars: ", 18);
  v125 = MEMORY[0x23EED9180](v124, *(a3 + 38));
  v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 18), *(a3 + 19));
  v128 = operations_research::sat::SolutionIntegerValue(this, &__p, v127);
  std::to_string(&v168, v128);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v129 = &v168;
  }

  else
  {
    v129 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v130 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v130 = v168.__r_.__value_.__l.__size_;
  }

  v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, v129, v130);
  std::ios_base::getloc((v131 + *(*v131 - 24)));
  v132 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v132->__vftable[2].~facet_0)(v132, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tlayer_end(vars: ", 17);
  v134 = MEMORY[0x23EED9180](v133, *(a3 + 10));
  v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, ")=", 2);
  v136 = *a4;
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 4), *(a3 + 5));
  v138 = operations_research::sat::SolutionIntegerValue(this, &__p, v137);
  std::to_string(&v168, v138 + v136);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v139 = &v168;
  }

  else
  {
    v139 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v140 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v140 = v168.__r_.__value_.__l.__size_;
  }

  v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, v139, v140);
  std::ios_base::getloc((v141 + *(*v141 - 24)));
  v142 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v142->__vftable[2].~facet_0)(v142, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 28) != *(a3 + 27))
  {
    v143 = 0;
    v144 = MEMORY[0x277D82680];
    do
    {
      v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tin", 3);
      std::to_string(&__p, v143);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v146 = &__p;
      }

      else
      {
        v146 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v147 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v147 = __p.__r_.__value_.__l.__size_;
      }

      v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, v146, v147);
      v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, ": ", 2);
      ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&v168, this, *(*(a3 + 27) + 8 * v143));
      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v150 = &v168;
      }

      else
      {
        v150 = v168.__r_.__value_.__r.__words[0];
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v151 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v151 = v168.__r_.__value_.__l.__size_;
      }

      v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v149, v150, v151);
      std::ios_base::getloc((v152 + *(*v152 - 24)));
      v153 = std::locale::use_facet(&v175, v144);
      (v153->__vftable[2].~facet_0)(v153, 10);
      std::locale::~locale(&v175);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v168.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v143;
    }

    while (v143 < (*(a3 + 28) - *(a3 + 27)) >> 3);
  }

  v154 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tout: ", 6);
  ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&__p, this, *(a3 + 31));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v155 = &__p;
  }

  else
  {
    v155 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v156 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v156 = __p.__r_.__value_.__l.__size_;
  }

  v157 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v154, v155, v156);
  std::ios_base::getloc((v157 + *(*v157 - 24)));
  v158 = std::locale::use_facet(&v168, MEMORY[0x277D82680]);
  (v158->__vftable[2].~facet_0)(v158, 10);
  std::locale::~locale(&v168);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 4), *(a3 + 5));
  *a4 += operations_research::sat::SolutionIntegerValue(this, &__p, v159);
  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v169, a1);
  v169[0] = *MEMORY[0x277D82818];
  v160 = *(MEMORY[0x277D82818] + 72);
  *(v169 + *(v169[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v170 = v160;
  v171 = MEMORY[0x277D82878] + 16;
  if (v173 < 0)
  {
    operator delete(v172[7].__locale_);
  }

  v171 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v172);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED93A0](&v174);
}

uint64_t *ORToolsCpBasedAllocatorUtil::GetL2DepPairResultString@<X0>(uint64_t *__return_ptr a1@<X8>, ORToolsCpBasedAllocatorUtil *this@<X0>, const operations_research::sat::CpSolverResponse *a3@<X1>, const ORToolsL2DepScheduleVariable *a4@<X2>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v169);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "sched=", 6);
  MEMORY[0x23EED91A0](v5, *(a3 + 42));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, ", ", 2);
  v7 = *(a3 + 311);
  if (v7 >= 0)
  {
    v8 = a3 + 288;
  }

  else
  {
    v8 = *(a3 + 36);
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 311);
  }

  else
  {
    v9 = *(a3 + 37);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n\tL2-Dep producer\n", 18);
  ORToolsCpBasedAllocatorUtil::GetInPlaceString(a3 + 45, this, &__p);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tlayer_begin(vars: ", 19);
  v14 = MEMORY[0x23EED9180](v13, *(a3 + 2));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ")=", 2);
  std::to_string(&__p, *a4);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v168, MEMORY[0x277D82680]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v168);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tread_end_0(vars: ", 19);
  v21 = MEMORY[0x23EED9180](v20, *(*(a3 + 6) + 8));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, **(a3 + 6), *(*(a3 + 6) + 8));
  v24 = operations_research::sat::SolutionIntegerValue(this, &__p, v23);
  std::to_string(&v168, v24);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v168;
  }

  else
  {
    v25 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v168.__r_.__value_.__l.__size_;
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v25, v26);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 25) - *(a3 + 24) >= 9uLL)
  {
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tread_end_1(vars: ", 19);
    v30 = MEMORY[0x23EED9180](v29, *(*(a3 + 6) + 24));
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")=", 2);
    operations_research::sat::LinearExpr::LinearExpr(&__p, *(*(a3 + 6) + 16), *(*(a3 + 6) + 24));
    v33 = operations_research::sat::SolutionIntegerValue(this, &__p, v32);
    std::to_string(&v168, v33);
    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v168;
    }

    else
    {
      v34 = v168.__r_.__value_.__r.__words[0];
    }

    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v168.__r_.__value_.__l.__size_;
    }

    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v34, v35);
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v37 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(&v175);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v168.__r_.__value_.__l.__data_);
    }

    if (v166)
    {
      v167 = v166;
      operator delete(v166);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tcomp_end(vars: ", 17);
  v39 = MEMORY[0x23EED9180](v38, *(a3 + 20));
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 9), *(a3 + 10));
  v42 = operations_research::sat::SolutionIntegerValue(this, &__p, v41);
  std::to_string(&v168, v42);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v168;
  }

  else
  {
    v43 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v168.__r_.__value_.__l.__size_;
  }

  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v43, v44);
  std::ios_base::getloc((v45 + *(*v45 - 24)));
  v46 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v46->__vftable[2].~facet_0)(v46, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\twrite_end(vars: ", 18);
  v48 = MEMORY[0x23EED9180](v47, *(a3 + 24));
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 11), *(a3 + 12));
  v51 = operations_research::sat::SolutionIntegerValue(this, &__p, v50);
  std::to_string(&v168, v51);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v168;
  }

  else
  {
    v52 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v168.__r_.__value_.__l.__size_;
  }

  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v52, v53);
  std::ios_base::getloc((v54 + *(*v54 - 24)));
  v55 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v55->__vftable[2].~facet_0)(v55, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tlayer_end(vars: ", 17);
  v57 = MEMORY[0x23EED9180](v56, *(a3 + 10));
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ")=", 2);
  v59 = *a4;
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 4), *(a3 + 5));
  v61 = operations_research::sat::SolutionIntegerValue(this, &__p, v60);
  std::to_string(&v168, v61 + v59);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &v168;
  }

  else
  {
    v62 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = v168.__r_.__value_.__l.__size_;
  }

  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v62, v63);
  std::ios_base::getloc((v64 + *(*v64 - 24)));
  v65 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v65->__vftable[2].~facet_0)(v65, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 25) != *(a3 + 24))
  {
    v66 = 0;
    v67 = MEMORY[0x277D82680];
    do
    {
      v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tin", 3);
      std::to_string(&__p, v66);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &__p;
      }

      else
      {
        v69 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v70 = __p.__r_.__value_.__l.__size_;
      }

      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ": ", 2);
      ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&v168, this, *(*(a3 + 24) + 8 * v66));
      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v168;
      }

      else
      {
        v73 = v168.__r_.__value_.__r.__words[0];
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v168.__r_.__value_.__l.__size_;
      }

      v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
      std::ios_base::getloc((v75 + *(*v75 - 24)));
      v76 = std::locale::use_facet(&v175, v67);
      (v76->__vftable[2].~facet_0)(v76, 10);
      std::locale::~locale(&v175);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v168.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v66;
    }

    while (v66 < (*(a3 + 25) - *(a3 + 24)) >> 3);
  }

  v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tout: ", 6);
  ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&__p, this, *(a3 + 28));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = &__p;
  }

  else
  {
    v78 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v79 = __p.__r_.__value_.__l.__size_;
  }

  v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
  std::ios_base::getloc((v80 + *(*v80 - 24)));
  v81 = std::locale::use_facet(&v168, MEMORY[0x277D82680]);
  (v81->__vftable[2].~facet_0)(v81, 10);
  std::locale::~locale(&v168);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "sched=", 6);
  MEMORY[0x23EED91A0](v82, *(a3 + 43));
  v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, ", ", 2);
  v84 = *(a3 + 335);
  if (v84 >= 0)
  {
    v85 = a3 + 312;
  }

  else
  {
    v85 = *(a3 + 39);
  }

  if (v84 >= 0)
  {
    v86 = *(a3 + 335);
  }

  else
  {
    v86 = *(a3 + 40);
  }

  v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, v85, v86);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, "\n", 1);
  ORToolsCpBasedAllocatorUtil::GetInPlaceString(a3 + 48, this, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v88 = &__p;
  }

  else
  {
    v88 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v89 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v89 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, v88, v89);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tlayer_begin(vars: ", 19);
  v91 = MEMORY[0x23EED9180](v90, *(a3 + 2));
  v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, ")=", 2);
  std::to_string(&__p, *a4);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v93 = &__p;
  }

  else
  {
    v93 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v94 = __p.__r_.__value_.__l.__size_;
  }

  v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, v93, v94);
  std::ios_base::getloc((v95 + *(*v95 - 24)));
  v96 = std::locale::use_facet(&v168, MEMORY[0x277D82680]);
  (v96->__vftable[2].~facet_0)(v96, 10);
  std::locale::~locale(&v168);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tread_end_0(vars: ", 19);
  v98 = MEMORY[0x23EED9180](v97, *(*(a3 + 13) + 8));
  v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, **(a3 + 13), *(*(a3 + 13) + 8));
  v101 = operations_research::sat::SolutionIntegerValue(this, &__p, v100);
  std::to_string(&v168, v101);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v102 = &v168;
  }

  else
  {
    v102 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v103 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v103 = v168.__r_.__value_.__l.__size_;
  }

  v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, v102, v103);
  std::ios_base::getloc((v104 + *(*v104 - 24)));
  v105 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v105->__vftable[2].~facet_0)(v105, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 30) - *(a3 + 29) >= 9uLL)
  {
    v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tread_end_1(vars: ", 19);
    v107 = MEMORY[0x23EED9180](v106, *(*(a3 + 13) + 24));
    v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, ")=", 2);
    operations_research::sat::LinearExpr::LinearExpr(&__p, *(*(a3 + 13) + 16), *(*(a3 + 13) + 24));
    v110 = operations_research::sat::SolutionIntegerValue(this, &__p, v109);
    std::to_string(&v168, v110);
    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = &v168;
    }

    else
    {
      v111 = v168.__r_.__value_.__r.__words[0];
    }

    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v112 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v112 = v168.__r_.__value_.__l.__size_;
    }

    v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, v111, v112);
    std::ios_base::getloc((v113 + *(*v113 - 24)));
    v114 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
    (v114->__vftable[2].~facet_0)(v114, 10);
    std::locale::~locale(&v175);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v168.__r_.__value_.__l.__data_);
    }

    if (v166)
    {
      v167 = v166;
      operator delete(v166);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\tcomp_end(vars: ", 17);
  v116 = MEMORY[0x23EED9180](v115, *(a3 + 34));
  v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 16), *(a3 + 17));
  v119 = operations_research::sat::SolutionIntegerValue(this, &__p, v118);
  std::to_string(&v168, v119);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v120 = &v168;
  }

  else
  {
    v120 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v121 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v121 = v168.__r_.__value_.__l.__size_;
  }

  v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v117, v120, v121);
  std::ios_base::getloc((v122 + *(*v122 - 24)));
  v123 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v123->__vftable[2].~facet_0)(v123, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\t\twrite_end(vars: ", 18);
  v125 = MEMORY[0x23EED9180](v124, *(a3 + 38));
  v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 18), *(a3 + 19));
  v128 = operations_research::sat::SolutionIntegerValue(this, &__p, v127);
  std::to_string(&v168, v128);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v129 = &v168;
  }

  else
  {
    v129 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v130 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v130 = v168.__r_.__value_.__l.__size_;
  }

  v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, v129, v130);
  std::ios_base::getloc((v131 + *(*v131 - 24)));
  v132 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v132->__vftable[2].~facet_0)(v132, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tlayer_end(vars: ", 17);
  v134 = MEMORY[0x23EED9180](v133, *(a3 + 10));
  v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, ")=", 2);
  v136 = *a4;
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 4), *(a3 + 5));
  v138 = operations_research::sat::SolutionIntegerValue(this, &__p, v137);
  std::to_string(&v168, v138 + v136);
  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v139 = &v168;
  }

  else
  {
    v139 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v140 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v140 = v168.__r_.__value_.__l.__size_;
  }

  v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, v139, v140);
  std::ios_base::getloc((v141 + *(*v141 - 24)));
  v142 = std::locale::use_facet(&v175, MEMORY[0x277D82680]);
  (v142->__vftable[2].~facet_0)(v142, 10);
  std::locale::~locale(&v175);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 30) != *(a3 + 29))
  {
    v143 = 0;
    v144 = MEMORY[0x277D82680];
    do
    {
      v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tin", 3);
      std::to_string(&__p, v143);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v146 = &__p;
      }

      else
      {
        v146 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v147 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v147 = __p.__r_.__value_.__l.__size_;
      }

      v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, v146, v147);
      v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, ": ", 2);
      ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&v168, this, *(*(a3 + 29) + 8 * v143));
      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v150 = &v168;
      }

      else
      {
        v150 = v168.__r_.__value_.__r.__words[0];
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v151 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v151 = v168.__r_.__value_.__l.__size_;
      }

      v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v149, v150, v151);
      std::ios_base::getloc((v152 + *(*v152 - 24)));
      v153 = std::locale::use_facet(&v175, v144);
      (v153->__vftable[2].~facet_0)(v153, 10);
      std::locale::~locale(&v175);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v168.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v143;
    }

    while (v143 < (*(a3 + 30) - *(a3 + 29)) >> 3);
  }

  v154 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170, "\tout: ", 6);
  ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&__p, this, *(a3 + 33));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v155 = &__p;
  }

  else
  {
    v155 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v156 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v156 = __p.__r_.__value_.__l.__size_;
  }

  v157 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v154, v155, v156);
  std::ios_base::getloc((v157 + *(*v157 - 24)));
  v158 = std::locale::use_facet(&v168, MEMORY[0x277D82680]);
  (v158->__vftable[2].~facet_0)(v158, 10);
  std::locale::~locale(&v168);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 4), *(a3 + 5));
  *a4 += operations_research::sat::SolutionIntegerValue(this, &__p, v159);
  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v169, a1);
  v169[0] = *MEMORY[0x277D82818];
  v160 = *(MEMORY[0x277D82818] + 72);
  *(v169 + *(v169[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v170 = v160;
  v171 = MEMORY[0x277D82878] + 16;
  if (v173 < 0)
  {
    operator delete(v172[7].__locale_);
  }

  v171 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v172);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED93A0](&v174);
}

uint64_t *ORToolsCpBasedAllocatorUtil::GetEngineLayerResultString@<X0>(uint64_t *__return_ptr a1@<X8>, ORToolsCpBasedAllocatorUtil *this@<X0>, const operations_research::sat::CpSolverResponse *a3@<X1>, const ORToolsLayerScheduleVariable *a4@<X2>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v92);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "sched=", 6);
  MEMORY[0x23EED91A0](v5, *(a3 + 30));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, ", ", 2);
  v7 = *(a3 + 271);
  if (v7 >= 0)
  {
    v8 = a3 + 248;
  }

  else
  {
    v8 = *(a3 + 31);
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 271);
  }

  else
  {
    v9 = *(a3 + 32);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  ORToolsCpBasedAllocatorUtil::GetInPlaceString(a3 + 24, this, &__p);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "\tlayer_begin(vars: ", 19);
  v14 = MEMORY[0x23EED9180](v13, *(a3 + 2));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ")=", 2);
  std::to_string(&__p, *a4);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v91, MEMORY[0x277D82680]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v91);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "\t\tread_end_0(vars: ", 19);
  v21 = MEMORY[0x23EED9180](v20, *(*(a3 + 6) + 8));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, **(a3 + 6), *(*(a3 + 6) + 8));
  v24 = operations_research::sat::SolutionIntegerValue(this, &__p, v23);
  std::to_string(&v91, v24);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v91;
  }

  else
  {
    v25 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v91.__r_.__value_.__l.__size_;
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v25, v26);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v98, MEMORY[0x277D82680]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v98);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 14) - *(a3 + 13) >= 9uLL)
  {
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "\t\tread_end_1(vars: ", 19);
    v30 = MEMORY[0x23EED9180](v29, *(*(a3 + 6) + 24));
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")=", 2);
    operations_research::sat::LinearExpr::LinearExpr(&__p, *(*(a3 + 6) + 16), *(*(a3 + 6) + 24));
    v33 = operations_research::sat::SolutionIntegerValue(this, &__p, v32);
    std::to_string(&v91, v33);
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v91;
    }

    else
    {
      v34 = v91.__r_.__value_.__r.__words[0];
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v91.__r_.__value_.__l.__size_;
    }

    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v34, v35);
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v37 = std::locale::use_facet(&v98, MEMORY[0x277D82680]);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(&v98);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (v89)
    {
      v90 = v89;
      operator delete(v89);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "\t\tcomp_end(vars: ", 17);
  v39 = MEMORY[0x23EED9180](v38, *(a3 + 20));
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 9), *(a3 + 10));
  v42 = operations_research::sat::SolutionIntegerValue(this, &__p, v41);
  std::to_string(&v91, v42);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v91;
  }

  else
  {
    v43 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v91.__r_.__value_.__l.__size_;
  }

  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v43, v44);
  std::ios_base::getloc((v45 + *(*v45 - 24)));
  v46 = std::locale::use_facet(&v98, MEMORY[0x277D82680]);
  (v46->__vftable[2].~facet_0)(v46, 10);
  std::locale::~locale(&v98);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "\t\twrite_end(vars: ", 18);
  v48 = MEMORY[0x23EED9180](v47, *(a3 + 24));
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ")=", 2);
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 11), *(a3 + 12));
  v51 = operations_research::sat::SolutionIntegerValue(this, &__p, v50);
  std::to_string(&v91, v51);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v91;
  }

  else
  {
    v52 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v91.__r_.__value_.__l.__size_;
  }

  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v52, v53);
  std::ios_base::getloc((v54 + *(*v54 - 24)));
  v55 = std::locale::use_facet(&v98, MEMORY[0x277D82680]);
  (v55->__vftable[2].~facet_0)(v55, 10);
  std::locale::~locale(&v98);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "\tlayer_end(vars: ", 17);
  v57 = MEMORY[0x23EED9180](v56, *(a3 + 10));
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ")=", 2);
  v59 = *a4;
  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 4), *(a3 + 5));
  v61 = operations_research::sat::SolutionIntegerValue(this, &__p, v60);
  std::to_string(&v91, v61 + v59);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &v91;
  }

  else
  {
    v62 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = v91.__r_.__value_.__l.__size_;
  }

  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v62, v63);
  std::ios_base::getloc((v64 + *(*v64 - 24)));
  v65 = std::locale::use_facet(&v98, MEMORY[0x277D82680]);
  (v65->__vftable[2].~facet_0)(v65, 10);
  std::locale::~locale(&v98);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 14) != *(a3 + 13))
  {
    v66 = 0;
    v67 = MEMORY[0x277D82680];
    do
    {
      v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "\tin", 3);
      std::to_string(&__p, v66);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &__p;
      }

      else
      {
        v69 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v70 = __p.__r_.__value_.__l.__size_;
      }

      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ": ", 2);
      ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&v91, this, *(*(a3 + 13) + 8 * v66));
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v91;
      }

      else
      {
        v73 = v91.__r_.__value_.__r.__words[0];
      }

      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v91.__r_.__value_.__l.__size_;
      }

      v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
      std::ios_base::getloc((v75 + *(*v75 - 24)));
      v76 = std::locale::use_facet(&v98, v67);
      (v76->__vftable[2].~facet_0)(v76, 10);
      std::locale::~locale(&v98);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v66;
    }

    while (v66 < (*(a3 + 14) - *(a3 + 13)) >> 3);
  }

  v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "\tout: ", 6);
  ORToolsCpBasedAllocatorUtil::GetAllocationCostString(&__p, this, *(a3 + 17));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = &__p;
  }

  else
  {
    v78 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v79 = __p.__r_.__value_.__l.__size_;
  }

  v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
  std::ios_base::getloc((v80 + *(*v80 - 24)));
  v81 = std::locale::use_facet(&v91, MEMORY[0x277D82680]);
  (v81->__vftable[2].~facet_0)(v81, 10);
  std::locale::~locale(&v91);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 4), *(a3 + 5));
  *a4 += operations_research::sat::SolutionIntegerValue(this, &__p, v82);
  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v92, a1);
  v92[0] = *MEMORY[0x277D82818];
  v83 = *(MEMORY[0x277D82818] + 72);
  *(v92 + *(v92[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v93 = v83;
  v94 = MEMORY[0x277D82878] + 16;
  if (v96 < 0)
  {
    operator delete(v95[7].__locale_);
  }

  v94 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v95);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED93A0](&v97);
}

uint64_t *ORToolsCpBasedAllocatorUtil::GetAllocationCostString@<X0>(uint64_t *__return_ptr a1@<X8>, ORToolsCpBasedAllocatorUtil *this@<X0>, const operations_research::sat::CpSolverResponse *a3@<X1>)
{
  v6 = operations_research::sat::SolutionBooleanValue(this, *(a3 + 28), *(a3 + 29));
  v7 = operations_research::sat::SolutionBooleanValue(this, *(a3 + 30), *(a3 + 31));
  v8 = operations_research::sat::SolutionBooleanValue(this, *(a3 + 32), *(a3 + 33));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v37);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "(", 1);
  std::to_string(&__p, v6);
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

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, size);
  std::to_string(&v36, v7);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v36;
  }

  else
  {
    v13 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v36.__r_.__value_.__l.__size_;
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
  std::to_string(&v35, v8);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v35;
  }

  else
  {
    v16 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v35.__r_.__value_.__l.__size_;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_25;
    }
  }

  else if (v6)
  {
LABEL_25:
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "L2", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", ", 2);
    operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 14), *(a3 + 15));
    v21 = operations_research::sat::SolutionIntegerValue(this, &__p, v20);
    std::to_string(&v36, v21);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v36;
    }

    else
    {
      v22 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v36.__r_.__value_.__l.__size_;
    }

    goto LABEL_46;
  }

  if (v7)
  {
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "DRAM", 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", ", 2);
    operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 16), *(a3 + 17));
    v26 = operations_research::sat::SolutionIntegerValue(this, &__p, v25);
    std::to_string(&v36, v26);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v36;
    }

    else
    {
      v22 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v36.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_52;
    }

    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Chain", 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", ", 2);
    operations_research::sat::LinearExpr::LinearExpr(&__p, *(a3 + 26), *(a3 + 27));
    v29 = operations_research::sat::SolutionIntegerValue(this, &__p, v28);
    std::to_string(&v36, v29);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v36;
    }

    else
    {
      v22 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v36.__r_.__value_.__l.__size_;
    }
  }

LABEL_46:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v22, v23);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_52:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, ")", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v37, a1);
  v37[0] = *MEMORY[0x277D82818];
  v30 = *(MEMORY[0x277D82818] + 72);
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v38 = v30;
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED93A0](&v42);
}

void sub_23C934BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::LinearExpr::~LinearExpr(&a9);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a31);
  _Unwind_Resume(a1);
}

uint64_t ORToolsCpBasedAllocatorUtil::GetInPlaceString@<X0>(uint64_t *a1@<X0>, operations_research::sat *a2@<X1>, void *a3@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      operations_research::sat::LinearExpr::LinearExpr(&v17, *(v6 + v7), *(v6 + v7 + 8));
      v10 = operations_research::sat::SolutionIntegerValue(a2, &v17, v9);
      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      if (v17.__r_.__value_.__r.__words[0])
      {
        v17.__r_.__value_.__l.__size_ = v17.__r_.__value_.__r.__words[0];
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v10 > 0)
      {
        break;
      }

      ++v8;
      v6 = *a1;
      v7 += 16;
      if (v8 >= (a1[1] - *a1) >> 4)
      {
        goto LABEL_19;
      }
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "\tInplace is enabled at idx ", 27);
      std::to_string(&v17, v8);
      v12 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v17 : v17.__r_.__value_.__r.__words[0];
      v13 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v17.__r_.__value_.__r.__words[2]) : v17.__r_.__value_.__l.__size_;
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_19:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v20, a3);
  v20[0] = *MEMORY[0x277D82818];
  v15 = *(MEMORY[0x277D82818] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v21 = v15;
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED93A0](&v25);
}

void sub_23C934FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<unsigned long long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(v5, (v5 + 8), v4 + 4, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v4 = *std::__tree<unsigned long long>::__find_equal<unsigned long long>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<unsigned long long>::__find_equal<unsigned long long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
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

void *std::__shared_ptr_emplace<ORToolsCpAllocator>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long &,std::string const&,std::allocator<ORToolsCpAllocator>,0>(void *a1, CpAllocGraph **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284F38A30;
  std::construct_at[abi:ne200100]<ORToolsCpAllocator,std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long &,std::string const&,ORToolsCpAllocator*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<ORToolsCpAllocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284F38A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EED9460);
}

uint64_t std::construct_at[abi:ne200100]<ORToolsCpAllocator,std::unique_ptr<CpAllocGraph>,std::unordered_map<unsigned long long,CpAllocUtils::AllocationType> const&,unsigned long &,std::string const&,ORToolsCpAllocator*>(uint64_t a1, CpAllocGraph **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = *a2;
  *a2 = 0;
  v8 = v6;
  ORToolsCpAllocator::ORToolsCpAllocator(a1, &v8, a3, *a4, a5);
  std::unique_ptr<CpAllocGraph>::~unique_ptr[abi:ne200100](&v8);
  return a1;
}

void sub_23C9354D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<CpAllocGraph>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CpAllocGraph **std::unique_ptr<CpAllocGraph>::~unique_ptr[abi:ne200100](CpAllocGraph **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CpAllocGraph::~CpAllocGraph(v2);
    MEMORY[0x23EED9460]();
  }

  return a1;
}

void std::shared_ptr<ORToolsCpAllocator>::__enable_weak_this[abi:ne200100]<ORToolsCpAllocator,ORToolsCpAllocator,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
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

uint64_t std::__function::__value_func<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

unint64_t MemCacheLayerLatencyInfo::GetMaxLatency(MemCacheLayerLatencyInfo *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 == (this + 16))
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v1[6] > result)
    {
      result = v1[6];
    }

    v4 = v1[1];
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
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

unint64_t MemCacheLayerLatencyInfo::GetMinLatency(MemCacheLayerLatencyInfo *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  result = -1;
  if (v1 != v2)
  {
    do
    {
      if (result >= v1[6])
      {
        result = v1[6];
      }

      v4 = v1[1];
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
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t MemCacheLayerLatencyInfo::GetLatency(uint64_t a1, int *a2)
{
  if ((a1 + 16) == std::__tree<std::__value_type<MemCacheResidencyInfo,unsigned long>,std::__map_value_compare<MemCacheResidencyInfo,std::__value_type<MemCacheResidencyInfo,unsigned long>,std::less<MemCacheResidencyInfo>,true>,std::allocator<std::__value_type<MemCacheResidencyInfo,unsigned long>>>::find<MemCacheResidencyInfo>(a1 + 8, a2))
  {
    return 0;
  }

  else
  {
    return *std::map<MemCacheResidencyInfo,unsigned long>::at(a1 + 8, a2);
  }
}

uint64_t std::map<MemCacheResidencyInfo,unsigned long>::at(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<MemCacheResidencyInfo,unsigned long>,std::__map_value_compare<MemCacheResidencyInfo,std::__value_type<MemCacheResidencyInfo,unsigned long>,std::less<MemCacheResidencyInfo>,true>,std::allocator<std::__value_type<MemCacheResidencyInfo,unsigned long>>>::__find_equal<MemCacheResidencyInfo>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 48;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CpAllocUtils::MemCacheAllocationType>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,0ul,1ul,2ul,3ul>(int **a1, int **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    v6 = *a1[1];
    v7 = *a2[1];
    v8 = v6 == v7;
    v5 = v6 < v7 ? 0xFFFFFFFFLL : 1;
    if (v8)
    {
      v9 = *a1[2];
      v10 = *a2[2];
      v11 = v9 == v10;
      v5 = v9 < v10 ? 0xFFFFFFFFLL : 1;
      if (v11)
      {
        v12 = *a1[3];
        v13 = *a2[3];
        v14 = v12 == v13;
        if (v12 < v13)
        {
          LODWORD(v5) = -1;
        }

        else
        {
          LODWORD(v5) = 1;
        }

        if (v14)
        {
          return 0;
        }

        else
        {
          return v5;
        }
      }
    }
  }

  return v5;
}

void *std::__tree<std::__value_type<MemCacheResidencyInfo,unsigned long>,std::__map_value_compare<MemCacheResidencyInfo,std::__value_type<MemCacheResidencyInfo,unsigned long>,std::less<MemCacheResidencyInfo>,true>,std::allocator<std::__value_type<MemCacheResidencyInfo,unsigned long>>>::__find_equal<MemCacheResidencyInfo>(uint64_t a1, void *a2, int *a3)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
  {
    v6 = a3 + 1;
    v7 = a3 + 2;
    v8 = a3 + 3;
    do
    {
      while (1)
      {
        v9 = v3;
        v10 = (v3 + 32);
        v20 = a3;
        v21 = v6;
        v22 = v7;
        v23 = v8;
        v11 = (v3 + 36);
        v12 = (v3 + 40);
        v13 = (v3 + 44);
        v16 = (v3 + 32);
        v17 = (v3 + 36);
        v18 = (v3 + 40);
        v19 = (v3 + 44);
        if ((std::__tuple_compare_three_way[abi:ne200100]<CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,0ul,1ul,2ul,3ul>(&v20, &v16) & 0x80) == 0)
        {
          break;
        }

        v3 = *v9;
        v4 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      v20 = v10;
      v21 = v11;
      v22 = v12;
      v23 = v13;
      v16 = a3;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,0ul,1ul,2ul,3ul>(&v20, &v16) & 0x80) == 0)
      {
        break;
      }

      v4 = v9 + 1;
      v3 = v9[1];
    }

    while (v3);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_10:
  *a2 = v9;
  return v4;
}

int *std::__tree<std::__value_type<MemCacheResidencyInfo,unsigned long>,std::__map_value_compare<MemCacheResidencyInfo,std::__value_type<MemCacheResidencyInfo,unsigned long>,std::less<MemCacheResidencyInfo>,true>,std::allocator<std::__value_type<MemCacheResidencyInfo,unsigned long>>>::find<MemCacheResidencyInfo>(uint64_t a1, int *a2)
{
  v3 = (a1 + 8);
  v4 = std::__tree<std::__value_type<MemCacheResidencyInfo,unsigned long>,std::__map_value_compare<MemCacheResidencyInfo,std::__value_type<MemCacheResidencyInfo,unsigned long>,std::less<MemCacheResidencyInfo>,true>,std::allocator<std::__value_type<MemCacheResidencyInfo,unsigned long>>>::__lower_bound<MemCacheResidencyInfo>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v8[0] = a2;
  v8[1] = a2 + 1;
  v8[2] = a2 + 2;
  v8[3] = a2 + 3;
  v7[0] = v4 + 8;
  v7[1] = v4 + 9;
  v7[2] = v4 + 10;
  v7[3] = v4 + 11;
  if ((std::__tuple_compare_three_way[abi:ne200100]<CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,0ul,1ul,2ul,3ul>(v8, v7) & 0x80) != 0)
  {
    return v3;
  }

  return v5;
}

int *std::__tree<std::__value_type<MemCacheResidencyInfo,unsigned long>,std::__map_value_compare<MemCacheResidencyInfo,std::__value_type<MemCacheResidencyInfo,unsigned long>,std::less<MemCacheResidencyInfo>,true>,std::allocator<std::__value_type<MemCacheResidencyInfo,unsigned long>>>::__lower_bound<MemCacheResidencyInfo>(uint64_t a1, int *a2, int *a3, int *a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = a2 + 1;
    v8 = a2 + 2;
    v9 = a2 + 3;
    do
    {
      v13[0] = v5 + 8;
      v13[1] = v5 + 9;
      v13[2] = v5 + 10;
      v13[3] = v5 + 11;
      v12[0] = a2;
      v12[1] = v7;
      v12[2] = v8;
      v12[3] = v9;
      v10 = std::__tuple_compare_three_way[abi:ne200100]<CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,CpAllocUtils::MemCacheAllocationType const&,0ul,1ul,2ul,3ul>(v13, v12);
      if ((v10 & 0x80u) == 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v10 >> 4) & 8));
    }

    while (v5);
  }

  return a4;
}

uint64_t ORToolsTensorAllocationVariable::ORToolsTensorAllocationVariable(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = operations_research::sat::CpModelBuilder::NewBoolVar(a2);
  v42 = v5;
  std::operator+<char>();
  v6 = std::string::append(&v33, ":resident_decision", 0x12uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v37 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v37 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v37 >= 0)
  {
    v9 = HIBYTE(v37);
  }

  else
  {
    v9 = __p[1];
  }

  *a1 = operations_research::sat::BoolVar::WithName(&v41, v8, v9);
  *(a1 + 8) = v10;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v41 = operations_research::sat::CpModelBuilder::NewBoolVar(a2);
  v42 = v11;
  std::operator+<char>();
  v12 = std::string::append(&v33, ":nonresident_decision", 0x15uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v37 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v37 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v37 >= 0)
  {
    v15 = HIBYTE(v37);
  }

  else
  {
    v15 = __p[1];
  }

  *(a1 + 16) = operations_research::sat::BoolVar::WithName(&v41, v14, v15);
  *(a1 + 24) = v16;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v41 = operations_research::sat::CpModelBuilder::NewBoolVar(a2);
  v42 = v17;
  std::operator+<char>();
  v18 = std::string::append(&v33, ":chain_decision", 0xFuLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v37 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v37 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (v37 >= 0)
  {
    v21 = HIBYTE(v37);
  }

  else
  {
    v21 = __p[1];
  }

  *(a1 + 32) = operations_research::sat::BoolVar::WithName(&v41, v20, v21);
  *(a1 + 40) = v22;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v41 = *a1;
  v42 = *(a1 + 8);
  v43 = *(a1 + 16);
  v44 = *(a1 + 24);
  v45 = *(a1 + 32);
  v46 = *(a1 + 40);
  operations_research::sat::LinearExpr::Sum(&v41, 3, __p);
  v23 = operations_research::sat::CpModelBuilder::NewConstant(a2, 1);
  operations_research::sat::LinearExpr::LinearExpr(&v33, v23, v24);
  v40 = operations_research::sat::CpModelBuilder::AddEquality(a2, __p, &v33);
  std::operator+<char>();
  v25 = std::string::append(&v30, ":mutex_allocation_decision", 0x1AuLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v32 = v25->__r_.__value_.__r.__words[2];
  *v31 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (v32 >= 0)
  {
    v27 = v31;
  }

  else
  {
    v27 = v31[0];
  }

  if (v32 >= 0)
  {
    v28 = HIBYTE(v32);
  }

  else
  {
    v28 = v31[1];
  }

  operations_research::sat::Constraint::WithName(&v40, v27, v28);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v33.__r_.__value_.__r.__words[0])
  {
    v33.__r_.__value_.__l.__size_ = v33.__r_.__value_.__r.__words[0];
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_23C935F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  operations_research::sat::LinearExpr::~LinearExpr(&a22);
  operations_research::sat::LinearExpr::~LinearExpr(&a32);
  _Unwind_Resume(a1);
}

void ORToolsCpAllocator::ORToolsCpAllocator(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *a2;
  *a2 = 0;
  std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>::unordered_map(a1 + 24, a3);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1065353216;
  operator new();
}

void sub_23C9362A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::ofstream::~ofstream(v22, MEMORY[0x277D82810]);
  MEMORY[0x23EED93A0](v21);
  std::unique_ptr<operations_research::sat::SatParameters>::~unique_ptr[abi:ne200100]((v18 + 232));
  std::unique_ptr<operations_research::sat::CpModelBuilder>::~unique_ptr[abi:ne200100]((v20 + 160));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>>>::~__hash_table(a11);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>>>::~__hash_table(a12);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::~__hash_table(v20);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v19 + 1));
  std::unique_ptr<CpAllocGraph>::~unique_ptr[abi:ne200100](v19);
  v24 = *(v18 + 8);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(a1);
}

void ORToolsCpAllocator::~ORToolsCpAllocator(ORToolsCpAllocator *this)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *(this + 30) = *MEMORY[0x277D82810];
  *(this + *(v3 - 24) + 240) = *(v2 + 24);
  MEMORY[0x23EED90E0](this + 248);
  std::ostream::~ostream();
  MEMORY[0x23EED93A0](this + 656);
  std::unique_ptr<operations_research::sat::SatParameters>::~unique_ptr[abi:ne200100](this + 29);
  std::unique_ptr<operations_research::sat::CpModelBuilder>::~unique_ptr[abi:ne200100](this + 28);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::~__hash_table(this + 184);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>>>::~__hash_table(this + 144);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>>>::~__hash_table(this + 104);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::~__hash_table(this + 64);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 24);
  std::unique_ptr<CpAllocGraph>::~unique_ptr[abi:ne200100](this + 2);
  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void ORToolsCpAllocator::CreateTensorAllocationVariable(CpGraph **this, unint64_t a2)
{
  CpGraph::GetInputTensors(this[2], a2, &v8);
  size = v8.__r_.__value_.__l.__size_;
  v4 = v8.__r_.__value_.__r.__words[0];
  if (v8.__r_.__value_.__r.__words[0] != v8.__r_.__value_.__l.__size_)
  {
    do
    {
      v7 = *v4;
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 23, &v7))
      {
        memset(&__p, 0, sizeof(__p));
        CpGraph::GetTensorName(this[2], v7, &__p);
        operator new();
      }

      ++v4;
    }

    while (v4 != size);
    v4 = v8.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    v8.__r_.__value_.__l.__size_ = v4;
    operator delete(v4);
  }

  OutputTensor = CpGraph::GetOutputTensor(this[2], a2);
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 23, &OutputTensor))
  {
    memset(&v8, 0, sizeof(v8));
    CpGraph::GetTensorName(this[2], OutputTensor, &v8);
    operator new();
  }
}

void sub_23C9366A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::unique_ptr<ORToolsTensorAllocationVariable>::reset[abi:ne200100](&a16, 0);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ORToolsCpAllocator::CreateLayerScheduleVariable(CpGraph **this, unint64_t a2, const operations_research::Domain *a3)
{
  v15 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  CpGraph::GetInputTensors(this[2], a2, &v11);
  size = v11.__r_.__value_.__l.__size_;
  v5 = v11.__r_.__value_.__r.__words[0];
  if (v11.__r_.__value_.__r.__words[0] != v11.__r_.__value_.__l.__size_)
  {
    do
    {
      OutputTensor = *v5;
      __p = &OutputTensor;
      v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &OutputTensor, &std::piecewise_construct, &__p)[3];
      std::vector<ORToolsTensorAllocationVariable const*>::push_back[abi:ne200100](&v12, &v9);
      ++v5;
    }

    while (v5 != size);
    v5 = v11.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v11.__r_.__value_.__l.__size_ = v5;
    operator delete(v5);
  }

  OutputTensor = CpGraph::GetOutputTensor(this[2], a2);
  v11.__r_.__value_.__r.__words[0] = &OutputTensor;
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &OutputTensor, &std::piecewise_construct, &v11);
  v9 = 0;
  if (CpAllocGraph::GetLayerBehavior(this[2], a2, &v9))
  {
    memset(&v11, 0, sizeof(v11));
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    CpGraph::GetLayerName(this[2], a2, &v11);
    CpGraph::GetLayerSchedule(this[2], a2, &v8);
    LayerCycleAndFootprintEstimator::GetReadBehaviors(&__p, v9);
    operator new();
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_23C936974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  std::unique_ptr<ORToolsLayerScheduleVariable>::reset[abi:ne200100](&a17, 0);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void std::vector<ORToolsTensorAllocationVariable const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<ORToolsTensorAllocationVariable const*>>(a1, v10);
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

void ORToolsCpAllocator::CreateChainScheduleVariable(CpGraph **this, unint64_t a2, unint64_t a3, uint64_t a4, const operations_research::Domain *a5)
{
  v28 = a3;
  v29[0] = a2;
  memset(v27, 0, sizeof(v27));
  CpGraph::GetInputTensors(this[2], a2, &p_OutputTensor);
  v7 = p_OutputTensor;
  v6 = v25;
  if (p_OutputTensor != v25)
  {
    do
    {
      v20[0] = *v7;
      OutputTensor = v20;
      v17.__r_.__value_.__r.__words[0] = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, v20, &std::piecewise_construct, &OutputTensor)[3];
      std::vector<ORToolsTensorAllocationVariable const*>::push_back[abi:ne200100](v27, &v17);
      ++v7;
    }

    while (v7 != v6);
    v7 = p_OutputTensor;
  }

  if (v7)
  {
    v25 = v7;
    operator delete(v7);
  }

  OutputTensor = CpGraph::GetOutputTensor(this[2], v29[0]);
  p_OutputTensor = &OutputTensor;
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &OutputTensor, &std::piecewise_construct, &p_OutputTensor);
  p_OutputTensor = 0;
  v25 = 0;
  v26 = 0;
  CpGraph::GetInputTensors(this[2], v28, &OutputTensor);
  v9 = OutputTensor;
  v8 = v22;
  if (OutputTensor != v22)
  {
    do
    {
      v17.__r_.__value_.__r.__words[0] = *v9;
      v20[0] = &v17;
      v15.__r_.__value_.__r.__words[0] = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &v17, &std::piecewise_construct, v20)[3];
      std::vector<ORToolsTensorAllocationVariable const*>::push_back[abi:ne200100](&p_OutputTensor, &v15);
      ++v9;
    }

    while (v9 != v8);
    v9 = OutputTensor;
  }

  if (v9)
  {
    v22 = v9;
    operator delete(v9);
  }

  v20[0] = CpGraph::GetOutputTensor(this[2], v28);
  OutputTensor = v20;
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, v20, &std::piecewise_construct, &OutputTensor);
  v20[0] = v29;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, v29, &std::piecewise_construct, v20)[3];
  v22 = 0;
  v23 = 0;
  OutputTensor = 0;
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar*,operations_research::sat::BoolVar*>(&OutputTensor, *(v10 + 192), *(v10 + 200), (*(v10 + 200) - *(v10 + 192)) >> 4);
  v17.__r_.__value_.__r.__words[0] = &v28;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v28, &std::piecewise_construct, &v17)[3];
  memset(v20, 0, sizeof(v20));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar*,operations_research::sat::BoolVar*>(v20, *(v11 + 192), *(v11 + 200), (*(v11 + 200) - *(v11 + 192)) >> 4);
  v18 = 0;
  v19 = 0;
  CpAllocGraph::GetLayerBehavior(this[2], v29[0], &v19);
  CpAllocGraph::GetLayerBehavior(this[2], v28, &v18);
  memset(&v17, 0, sizeof(v17));
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  CpGraph::GetLayerName(this[2], v29[0], &v17);
  CpGraph::GetLayerSchedule(this[2], v29[0], &v16);
  memset(&v15, 0, sizeof(v15));
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  CpGraph::GetLayerName(this[2], v28, &v15);
  CpGraph::GetLayerSchedule(this[2], v28, &v14);
  LayerCycleAndFootprintEstimator::GetReadBehaviors(&v13, v19);
  ORToolsCpAllocator::NeedProducerInputResidentIntervalIncrease(this, v29[0]);
  LayerCycleAndFootprintEstimator::GetReadBehaviors(&__p, v18);
  ORToolsCpAllocator::NeedConsumerOutputResidentIntervalIncrease(this, v28);
  operator new();
}

void sub_23C936F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  std::unique_ptr<ORToolsChainScheduleVariable>::reset[abi:ne200100](&a39, 0);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 217) < 0)
  {
    operator delete(*(v46 - 240));
  }

  v48 = *(v46 - 200);
  if (v48)
  {
    *(v46 - 192) = v48;
    operator delete(v48);
  }

  v49 = *(v46 - 176);
  if (v49)
  {
    *(v46 - 168) = v49;
    operator delete(v49);
  }

  v50 = *(v46 - 152);
  if (v50)
  {
    *(v46 - 144) = v50;
    operator delete(v50);
  }

  v51 = *(v46 - 128);
  if (v51)
  {
    *(v46 - 120) = v51;
    operator delete(v51);
  }

  _Unwind_Resume(a1);
}

uint64_t ORToolsCpAllocator::NeedProducerInputResidentIntervalIncrease(CpGraph **this, unint64_t a2)
{
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  CpGraph::GetLayerSchedule(this[2], a2, &v15);
  CpGraph::GetInputTensors(this[2], a2, &__p);
  v4 = __p;
  v5 = v14;
  if (__p != v14)
  {
    while (2)
    {
      v6 = this[2];
      v16 = *v4;
      v7 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v6 + 3, &v16);
      v8 = (v6 + 104);
      if (v7)
      {
        v8 = (v7 + 3);
      }

      v9 = *v8;
      v10 = v8[1];
      while (v9 != v10)
      {
        v11 = *v9;
        if (*v9 != a2)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
          CpGraph::GetLayerSchedule(this[2], v11, &v16);
          if (v16 > v15)
          {
            if (__p)
            {
              v14 = __p;
              operator delete(__p);
            }

            return 0;
          }
        }

        ++v9;
      }

      if (++v4 != v5)
      {
        continue;
      }

      break;
    }

    v4 = __p;
  }

  if (v4)
  {
    v14 = v4;
    operator delete(v4);
  }

  return 1;
}

void sub_23C937194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ORToolsCpAllocator::NeedConsumerOutputResidentIntervalIncrease(CpGraph **this, unint64_t a2)
{
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  CpGraph::GetLayerSchedule(this[2], a2, &v12);
  OutputTensor = CpGraph::GetOutputTensor(this[2], a2);
  v5 = this[2];
  v13 = OutputTensor;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v5 + 8, &v13);
  v7 = (v5 + 104);
  if (v6)
  {
    v7 = (v6 + 3);
  }

  v8 = *v7;
  v9 = v7[1];
  while (1)
  {
    if (v8 == v9)
    {
      return 1;
    }

    v10 = *v8;
    if (*v8 != a2)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      CpGraph::GetLayerSchedule(this[2], v10, &v13);
      if (v13 < v12)
      {
        break;
      }
    }

    ++v8;
  }

  return 0;
}

void ORToolsCpAllocator::CreateL2DepScheduleVariable(CpGraph **this, unint64_t a2, unint64_t a3, uint64_t a4, const operations_research::Domain *a5)
{
  v22 = a3;
  v23 = a2;
  memset(v21, 0, sizeof(v21));
  CpGraph::GetInputTensors(this[2], a2, &p_OutputTensor);
  v7 = p_OutputTensor;
  v6 = v19;
  if (p_OutputTensor != v19)
  {
    do
    {
      __p[0] = *v7;
      OutputTensor = __p;
      v24[0] = *(std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, __p, &std::piecewise_construct, &OutputTensor) + 3);
      std::vector<ORToolsTensorAllocationVariable const*>::push_back[abi:ne200100](v21, v24);
      ++v7;
    }

    while (v7 != v6);
    v7 = p_OutputTensor;
  }

  if (v7)
  {
    v19 = v7;
    operator delete(v7);
  }

  OutputTensor = CpGraph::GetOutputTensor(this[2], v23);
  p_OutputTensor = &OutputTensor;
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &OutputTensor, &std::piecewise_construct, &p_OutputTensor);
  p_OutputTensor = 0;
  v19 = 0;
  v20 = 0;
  CpGraph::GetInputTensors(this[2], v22, &OutputTensor);
  v9 = OutputTensor;
  v8 = v16;
  if (OutputTensor != v16)
  {
    do
    {
      v24[0] = *v9;
      __p[0] = v24;
      v14 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, v24, &std::piecewise_construct, __p)[3];
      std::vector<ORToolsTensorAllocationVariable const*>::push_back[abi:ne200100](&p_OutputTensor, &v14);
      ++v9;
    }

    while (v9 != v8);
    v9 = OutputTensor;
  }

  if (v9)
  {
    v16 = v9;
    operator delete(v9);
  }

  __p[0] = CpGraph::GetOutputTensor(this[2], v22);
  OutputTensor = __p;
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, __p, &std::piecewise_construct, &OutputTensor);
  v13 = 0;
  v14 = 0;
  CpAllocGraph::GetLayerBehavior(this[2], v23, &v14);
  CpAllocGraph::GetLayerBehavior(this[2], v22, &v13);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v23);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v22);
  __p[0] = &v23;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v23, &std::piecewise_construct, __p)[3];
  v16 = 0;
  v17 = 0;
  OutputTensor = 0;
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar*,operations_research::sat::BoolVar*>(&OutputTensor, *(v10 + 192), *(v10 + 200), (*(v10 + 200) - *(v10 + 192)) >> 4);
  v24[0] = &v22;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v22, &std::piecewise_construct, v24)[3];
  memset(__p, 0, sizeof(__p));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar*,operations_research::sat::BoolVar*>(__p, *(v11 + 192), *(v11 + 200), (*(v11 + 200) - *(v11 + 192)) >> 4);
  ORToolsCpAllocator::NeedProducerInputResidentIntervalIncrease(this, v23);
  ORToolsCpAllocator::NeedConsumerOutputResidentIntervalIncrease(this, v22);
  operator new();
}

void sub_23C937618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  std::unique_ptr<ORToolsL2DepScheduleVariable>::reset[abi:ne200100](&a19, 0);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t ORToolsCpAllocator::GetResidentBufferSize(ORToolsCpAllocator *this, unint64_t a2)
{
  v4 = *(this + 2);
  v23 = a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v4 + 64), &v23);
  v6 = (v4 + 104);
  if (v5)
  {
    v6 = (v5 + 3);
  }

  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v9 = *v7;
    v23 = 0;
    if (CpAllocGraph::GetLayerBehavior(*(this + 2), v9, &v23))
    {
      return *(*(v23 + 32) + 8);
    }

    ++v7;
  }

  v10 = *(this + 2);
  v23 = a2;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v10 + 24), &v23);
  v12 = (v10 + 104);
  if (v11)
  {
    v12 = (v11 + 3);
  }

  v13 = *v12;
  v14 = v12[1];
  if (*v12 != v14)
  {
LABEL_10:
    v15 = *v13;
    CpGraph::GetInputTensors(*(this + 2), *v13, &v23);
    v16 = v23;
    v17 = v24;
    if (v24 == v23)
    {
LABEL_16:
      v19 = 0;
      if (!v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      v24 = v16;
      operator delete(v16);
      goto LABEL_18;
    }

    v18 = 0;
    while (1)
    {
      if (*&v16[8 * v18] == a2)
      {
        v22 = 0;
        if (CpAllocGraph::GetLayerBehavior(*(this + 2), v15, &v22))
        {
          LayerCycleAndFootprintEstimator::GetReadBehaviors(__p, v22);
          v10 = *(*(__p[0] + v18) + 8);
          __p[1] = __p[0];
          operator delete(__p[0]);
          v19 = 1;
          v16 = v23;
          if (v23)
          {
            goto LABEL_17;
          }

LABEL_18:
          if (v19)
          {
            return v10;
          }

          if (++v13 == v14)
          {
            return 0;
          }

          goto LABEL_10;
        }

        v16 = v23;
        v17 = v24;
      }

      if (++v18 >= ((v17 - v16) >> 3))
      {
        goto LABEL_16;
      }
    }
  }

  return 0;
}

void sub_23C937860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpAllocator::AddResidentAllocationConstraint(ORToolsCpAllocator *a1, std::string::size_type a2, uint64_t *a3)
{
  v41 = a2;
  v40 = 0uLL;
  CpGraph::GetTensorLiverange(*(a1 + 2), a2, &v40);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(a1 + 3, &v41);
  if (!v5 || *(v5 + 24) != 1)
  {
    v39.__r_.__value_.__r.__words[0] = &v41;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 23, &v41, &std::piecewise_construct, &v39)[3];
    v7 = *v6;
    v8 = v6[1];
    v9 = *(a1 + 28);
    ResidentBufferSize = ORToolsCpAllocator::GetResidentBufferSize(a1, v41);
    v11 = operations_research::sat::CpModelBuilder::NewConstant(v9, ResidentBufferSize);
    v13 = v12;
    memset(&v39, 0, sizeof(v39));
    CpGraph::GetTensorName(*(a1 + 2), v41, &v39);
    v14 = v40;
    v15 = *(a1 + 2);
    v35.__r_.__value_.__r.__words[0] = v41;
    v16 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v15 + 64), &v35);
    v17 = (v15 + 104);
    if (v16)
    {
      v17 = v16 + 3;
    }

    if (v17[1] != *v17)
    {
      v18 = *(a1 + 2);
      v35.__r_.__value_.__r.__words[0] = v41;
      v19 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v18 + 64), &v35);
      v20 = (v18 + 104);
      if (v19)
      {
        v20 = (v19 + 3);
      }

      v38 = **v20;
      v21 = v38;
      v35.__r_.__value_.__r.__words[0] = &v38;
      v22 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 8, &v38, &std::piecewise_construct, &v35)[3];
      v24 = *(v22 + 192);
      v23 = *(v22 + 200);
      v35.__r_.__value_.__r.__words[0] = 0;
      CpGraph::GetLayerSchedule(*(a1 + 2), v21, &v35);
      if (v23 != v24)
      {
        v14 = v35.__r_.__value_.__r.__words[0] + 1;
      }
    }

    v25 = *(a1 + 28);
    v26 = *(&v40 + 1);
    std::operator+<char>();
    v27 = std::string::append(&v35, ":resident_demand_pressure_interval", 0x22uLL);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v37 = v27->__r_.__value_.__r.__words[2];
    *__p = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    OptionalClosedInterval = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v25, v14, v26, v7, v8, __p);
    v31 = v30;
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    operations_research::sat::LinearExpr::LinearExpr(v32, v11, v13);
    operations_research::sat::CumulativeConstraint::AddDemand(a3, OptionalClosedInterval, v31, v32);
    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23C937B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpAllocator::AddL2DepHWConstraint(ORToolsCpAllocator *this, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v48 = a3;
  v49 = a2;
  v47 = a5;
  v42 = &v49;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v49, &std::piecewise_construct, &v42);
  v42 = &v48;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v48, &std::piecewise_construct, &v42);
  ORToolsCpAllocator::AddBackToBackChainL2DepConstraint(this, v49);
  ORToolsCpAllocator::AddBackToBackChainL2DepConstraint(this, v48);
  memset(&v46, 0, sizeof(v46));
  CpGraph::GetTensorName(*(this + 2), a5, &v46);
  v10 = *(this + 28);
  operations_research::sat::LinearExpr::LinearExpr(&v42, *(v8[3] + 160), *(v8[3] + 168));
  operations_research::sat::LinearExpr::LinearExpr(&v38, *(v9[3] + 176), *(v9[3] + 184));
  v32.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddEquality(v10, &v42, &v38);
  std::operator+<char>();
  v11 = std::string::append(&v35, ":l2_dep_equality", 0x10uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v37 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v37 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v37 >= 0)
  {
    v14 = HIBYTE(v37);
  }

  else
  {
    v14 = __p[1];
  }

  operations_research::sat::Constraint::WithName(&v32, v13, v14);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  v42 = &v47;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &v47, &std::piecewise_construct, &v42);
  v16 = *(this + 28);
  operations_research::sat::LinearExpr::LinearExpr(&v42, *(v8[3] + 160), *(v8[3] + 168));
  operations_research::sat::LinearExpr::LinearExpr(&v38, *v15[3], *(v15[3] + 8));
  operations_research::sat::CpModelBuilder::AddLessOrEqual(v16, &v42, &v38);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  v34 = 0;
  CpAllocGraph::GetLayerBehavior(*(this + 2), v48, &v34);
  if ((**(v34 + 40) & 1) == 0)
  {
    CpGraph::GetInputTensors(*(this + 2), v48, &v42);
    v17 = v42;
    if (v43 - v42 == 16)
    {
      v18 = *(this + 2);
      v38 = v48;
      v19 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v18 + 64), &v38);
      v20 = (v18 + 104);
      if (v19)
      {
        v20 = (v19 + 3);
      }

      v21 = *v20;
      v22 = *(this + 2);
      v38 = v48;
      v23 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v22 + 64), &v38);
      v24 = (v22 + 104);
      if (v23)
      {
        v24 = v23 + 3;
      }

      v25 = *v21 != *(*v24 + 8);
      v17 = v42;
      if (!v42)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v25 = 0;
      if (!v42)
      {
        goto LABEL_37;
      }
    }

    v43 = v17;
    operator delete(v17);
LABEL_37:
    if (v25)
    {
      __p[0] = 0;
      __p[1] = 0;
      v37 = 0;
      std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](__p, (*(*(v9[3] + 104) + 8 * (a4 == 0)) + 224));
      std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](__p, (**(v8[3] + 104) + 224));
      v26 = __p[0];
      if ((__p[1] - __p[0]) >= 0x11)
      {
        v27 = *(this + 28);
        operations_research::sat::LinearExpr::LinearExpr(&v42, *(v8[3] + 160), *(v8[3] + 168));
        operations_research::sat::LinearExpr::Sum(__p[0], (__p[1] - __p[0]) >> 4, &v38);
        v33 = operations_research::sat::CpModelBuilder::AddLessOrEqual(v27, &v42, &v38);
        std::operator+<char>();
        v28 = std::string::append(&v32, ":l2_dep_dual_input_conx", 0x17uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v35;
        }

        else
        {
          v30 = v35.__r_.__value_.__r.__words[0];
        }

        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v35.__r_.__value_.__l.__size_;
        }

        operations_research::sat::Constraint::WithName(&v33, v30, size);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        v26 = __p[0];
      }

      if (v26)
      {
        __p[1] = v26;
        operator delete(v26);
      }
    }
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }
}

void sub_23C938018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  operations_research::sat::LinearExpr::~LinearExpr(&a32);
  operations_research::sat::LinearExpr::~LinearExpr(&a39);
  if (a25)
  {
    operator delete(a25);
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  _Unwind_Resume(a1);
}

void ORToolsCpAllocator::AddBackToBackChainL2DepConstraint(CpGraph **this, void *a2)
{
  v48 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v48);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  CpGraph::GetInputTensors(this[2], v48, &v43);
  std::set<unsigned long>::set[abi:ne200100]<std::__wrap_iter<unsigned long long *>>(&v41, v43, v44);
  v4 = v41;
  if (v41 == v42)
  {
    goto LABEL_24;
  }

  do
  {
    v5 = v4[4];
    v32[0] = v5;
    v35[0] = v32;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, v32, &std::piecewise_construct, v35);
    v7 = this[2];
    for (i = *(v7 + 43); i; i = *i)
    {
      v9 = i[4];
      if (v9 <= v5)
      {
        if (v9 >= v5)
        {
          std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v45, (v6[3] + 32));
          v7 = this[2];
          break;
        }

        ++i;
      }
    }

    v10 = *(v7 + 46);
    if (!v10)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v11 = v10[4];
      if (v11 <= v5)
      {
        break;
      }

LABEL_13:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (v11 < v5)
    {
      ++v10;
      goto LABEL_13;
    }

    v35[0] = -1;
    v32[0] = -1;
    if (ORToolsCpAllocator::FindL2DepPair(this, v5, v35, v32) && v48 == v32[0])
    {
      std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v45, (v3[3] + 176));
    }

LABEL_18:
    v12 = v4[1];
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
        v13 = v4[2];
        v14 = *v13 == v4;
        v4 = v13;
      }

      while (!v14);
    }

    v4 = v13;
  }

  while (v13 != v42);
LABEL_24:
  OutputTensor = CpGraph::GetOutputTensor(this[2], v48);
  v40 = OutputTensor;
  v16 = this[2];
  for (j = *(v16 + 43); j; j = *j)
  {
    v18 = j[4];
    if (v18 <= OutputTensor)
    {
      if (v18 >= OutputTensor)
      {
        v35[0] = &v40;
        v19 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &v40, &std::piecewise_construct, v35);
        std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v45, (v19[3] + 32));
        v16 = this[2];
        OutputTensor = v40;
        break;
      }

      ++j;
    }
  }

  v20 = *(v16 + 46);
  if (!v20)
  {
    goto LABEL_38;
  }

  while (2)
  {
    v21 = v20[4];
    if (v21 > OutputTensor)
    {
LABEL_35:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  if (v21 < OutputTensor)
  {
    ++v20;
    goto LABEL_35;
  }

  std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v45, (v3[3] + 160));
LABEL_38:
  if ((v46 - v45) >= 0x11)
  {
    memset(&v39, 0, sizeof(v39));
    CpGraph::GetTensorName(this[2], v48, &v39);
    v22 = this[28];
    operations_research::sat::LinearExpr::Sum(v45, (v46 - v45) >> 4, v35);
    v23 = operations_research::sat::CpModelBuilder::NewConstant(this[28], 1);
    operations_research::sat::LinearExpr::LinearExpr(v32, v23, v24);
    v38 = operations_research::sat::CpModelBuilder::AddLessOrEqual(v22, v35, v32);
    std::operator+<char>();
    v25 = std::string::append(&v29, ":mutex_chain", 0xCuLL);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v31 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (v31 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }

    if (v31 >= 0)
    {
      v28 = HIBYTE(v31);
    }

    else
    {
      v28 = __p[1];
    }

    operations_research::sat::Constraint::WithName(&v38, v27, v28);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v35[0])
    {
      v35[1] = v35[0];
      operator delete(v35[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(&v41, v42[0]);
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void sub_23C9384F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(v42 - 160, *(v42 - 152));
  v44 = *(v42 - 136);
  if (v44)
  {
    *(v42 - 128) = v44;
    operator delete(v44);
  }

  v45 = *(v42 - 112);
  if (v45)
  {
    *(v42 - 104) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

void ORToolsCpAllocator::AddChainHWConstraint(CpGraph **this, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v42 = a3;
  v43 = a2;
  ORToolsCpAllocator::AddBackToBackChainL2DepConstraint(this, a2);
  ORToolsCpAllocator::AddBackToBackChainL2DepConstraint(this, a3);
  v32 = &v43;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v43, &std::piecewise_construct, &v32);
  v32 = &v42;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v42, &std::piecewise_construct, &v32);
  v41 = 0;
  CpAllocGraph::GetLayerBehavior(this[2], v42, &v41);
  if ((**(v41 + 40) & 1) == 0)
  {
    CpGraph::GetInputTensors(this[2], v42, &v32);
    v11 = v33 - v32;
    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    v12 = a4 == 0;
    if (v11 == 16)
    {
      v13 = this[2];
      v32 = v42;
      v14 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v13 + 8, &v32);
      v15 = (v13 + 104);
      if (v14)
      {
        v15 = (v14 + 3);
      }

      v16 = *v15;
      v17 = this[2];
      v32 = v42;
      v18 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v17 + 8, &v32);
      v19 = (v17 + 104);
      if (v18)
      {
        v19 = v18 + 3;
      }

      if (*v16 != *(*v19 + 8))
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v38, (*(*(v10[3] + 104) + 8 * v12) + 224));
        std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v38, (**(v9[3] + 104) + 224));
        v20 = v38;
        if ((v39 - v38) >= 0x11)
        {
          memset(&v37, 0, sizeof(v37));
          CpGraph::GetTensorName(this[2], a5, &v37);
          v21 = this[28];
          operations_research::sat::LinearExpr::LinearExpr(&v32, *(*(v9[3] + 136) + 256), *(*(v9[3] + 136) + 264));
          operations_research::sat::LinearExpr::Sum(v38, (v39 - v38) >> 4, v29);
          v36 = operations_research::sat::CpModelBuilder::AddLessOrEqual(v21, &v32, v29);
          std::operator+<char>();
          v22 = std::string::append(&v26, ":chain_dual_input_conx", 0x16uLL);
          v23 = *&v22->__r_.__value_.__l.__data_;
          v28 = v22->__r_.__value_.__r.__words[2];
          *__p = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          if (v28 >= 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          if (v28 >= 0)
          {
            v25 = HIBYTE(v28);
          }

          else
          {
            v25 = __p[1];
          }

          operations_research::sat::Constraint::WithName(&v36, v24, v25);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }

          if (v30)
          {
            v31 = v30;
            operator delete(v30);
          }

          if (v29[0])
          {
            v29[1] = v29[0];
            operator delete(v29[0]);
          }

          if (v34)
          {
            v35 = v34;
            operator delete(v34);
          }

          if (v32)
          {
            v33 = v32;
            operator delete(v32);
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          v20 = v38;
        }

        if (v20)
        {
          v39 = v20;
          operator delete(v20);
        }
      }
    }
  }
}

void sub_23C9388B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  operations_research::sat::LinearExpr::~LinearExpr(&a23);
  operations_research::sat::LinearExpr::~LinearExpr(&a30);
  if (*(v30 - 113) < 0)
  {
    operator delete(*(v30 - 136));
  }

  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

BOOL ORToolsCpAllocator::FindL2DepPair(ORToolsCpAllocator *this, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  *a3 = 0x7FFFFFFFLL;
  v8 = *(this + 2);
  v30 = a2;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v8 + 64), &v30);
  v10 = (v8 + 104);
  if (v9)
  {
    v10 = (v9 + 3);
  }

  v11 = *v10;
  v12 = v10[1];
  if (*v10 != v12)
  {
    v13 = -1;
    do
    {
      v14 = *v11;
      v30 = 0;
      LayerSchedule = CpGraph::GetLayerSchedule(*(this + 2), v14, &v30);
      v16 = v30;
      if (LayerSchedule && v30 > v13)
      {
        *a3 = v14;
        v13 = v16;
      }

      ++v11;
    }

    while (v11 != v12);
  }

  *a4 = 0x7FFFFFFFLL;
  v18 = *(this + 2);
  v30 = a2;
  v19 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v18 + 24), &v30);
  v20 = (v18 + 104);
  if (v19)
  {
    v20 = (v19 + 3);
  }

  v21 = *v20;
  v22 = v20[1];
  if (*v20 != v22)
  {
    v23 = 0x7FFFFFFFLL;
    do
    {
      v24 = *v21;
      v30 = 0;
      v25 = CpGraph::GetLayerSchedule(*(this + 2), v24, &v30);
      v26 = v30;
      if (v25 && v30 < v23)
      {
        *a4 = v24;
        v23 = v26;
      }

      ++v21;
    }

    while (v21 != v22);
  }

  return *a3 != 0x7FFFFFFF && *a4 != 0x7FFFFFFF;
}

void ORToolsCpAllocator::SetEarlyAllocationDecision(CpGraph **this)
{
  CpGraph::GetTensors(this[2], &v54);
  v4 = v54;
  v5 = v55;
  if (v54 == v55)
  {
    goto LABEL_72;
  }

  do
  {
    v53 = *v4;
    memset(&v52, 0, sizeof(v52));
    CpGraph::GetTensorName(this[2], v53, &v52);
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 3, &v53);
    v7 = v6;
    if (v6)
    {
      ORToolsCpAllocator::SetAllocationDecisionForTensor(this, v53, *(v6 + 24));
      if (CpAllocUtils::IsL2Dependent(*(v7 + 24)) && *(v7 + 24) != 7)
      {
        ORToolsCpAllocator::EnableL2Dependent(this, v53);
        goto LABEL_62;
      }
    }

    else
    {
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 23, &v53);
      if (v8)
      {
        v9 = v8[3];
        if (ORToolsCpAllocator::GetResidentBufferSize(this, v53) >= this[101])
        {
          v10 = this[28];
          operations_research::sat::LinearExpr::LinearExpr(&v47, *v9, v9[1]);
          v11 = operations_research::sat::CpModelBuilder::NewConstant(this[28], 0);
          v1 = v1 & 0xFFFFFFFF00000000 | v12;
          operations_research::sat::LinearExpr::LinearExpr(&v43, v11, v1);
          v51 = operations_research::sat::CpModelBuilder::AddEquality(v10, &v47, &v43);
          std::operator+<char>();
          v13 = std::string::append(&v40, ":early_allocation_decision", 0x1AuLL);
          v14 = *&v13->__r_.__value_.__l.__data_;
          v42 = v13->__r_.__value_.__r.__words[2];
          *__p = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          if (v42 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if (v42 >= 0)
          {
            v16 = HIBYTE(v42);
          }

          else
          {
            v16 = __p[1];
          }

          operations_research::sat::Constraint::WithName(&v51, v15, v16);
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          if (v45)
          {
            v46 = v45;
            operator delete(v45);
          }

          if (v43)
          {
            v44 = v43;
            operator delete(v43);
          }

          if (v49)
          {
            v50 = v49;
            operator delete(v49);
          }

          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }
        }

        for (i = *(this[2] + 43); i; i = *i)
        {
          v18 = i[4];
          if (v18 <= v53)
          {
            if (v18 >= v53)
            {
              goto LABEL_49;
            }

            ++i;
          }
        }

        v19 = this[28];
        operations_research::sat::LinearExpr::LinearExpr(&v47, v9[4], v9[5]);
        v20 = operations_research::sat::CpModelBuilder::NewConstant(this[28], 0);
        v2 = v2 & 0xFFFFFFFF00000000 | v21;
        operations_research::sat::LinearExpr::LinearExpr(&v43, v20, v2);
        v51 = operations_research::sat::CpModelBuilder::AddEquality(v19, &v47, &v43);
        std::operator+<char>();
        v22 = std::string::append(&v40, ":early_allocation_decision", 0x1AuLL);
        v23 = *&v22->__r_.__value_.__l.__data_;
        v42 = v22->__r_.__value_.__r.__words[2];
        *__p = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        if (v42 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        if (v42 >= 0)
        {
          v25 = HIBYTE(v42);
        }

        else
        {
          v25 = __p[1];
        }

        operations_research::sat::Constraint::WithName(&v51, v24, v25);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }
      }
    }

LABEL_49:
    v26 = *(this[2] + 46);
    if (!v26)
    {
LABEL_54:
      ORToolsCpAllocator::DisableL2Dependent(this, v53);
      goto LABEL_55;
    }

    while (1)
    {
      v27 = v26[4];
      if (v27 <= v53)
      {
        break;
      }

LABEL_53:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_54;
      }
    }

    if (v27 < v53)
    {
      ++v26;
      goto LABEL_53;
    }

    v43 = -1;
    __p[0] = -1;
    if (!ORToolsCpAllocator::FindL2DepPair(this, v53, &v43, __p))
    {
      goto LABEL_55;
    }

    v34 = __p[0];
    OutputTensor = CpGraph::GetOutputTensor(this[2], __p[0]);
    v36 = this[2];
    v47 = OutputTensor;
    if (std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v36 + 48, &v47))
    {
      v37 = this[2];
      v47 = OutputTensor;
      v38 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v37 + 3, &v47);
      v39 = (v37 + 104);
      if (v38)
      {
        v39 = v38 + 3;
      }

      if (v39[1] - *v39 >= 9uLL)
      {
        goto LABEL_54;
      }
    }

    ORToolsCpAllocator::PrepareL2Dependent(this, v53, v43, v34);
LABEL_55:
    v28 = this[2];
    v47 = v53;
    v29 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v28 + 8, &v47);
    v30 = (v28 + 104);
    if (v29)
    {
      v30 = v29 + 3;
    }

    if (v30[1] == *v30)
    {
      goto LABEL_61;
    }

    v31 = this[2];
    v47 = v53;
    v32 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v31 + 3, &v47);
    v33 = (v31 + 104);
    if (v32)
    {
      v33 = v32 + 3;
    }

    if (v33[1] == *v33)
    {
LABEL_61:
      ORToolsCpAllocator::DisableL2Dependent(this, v53);
    }

LABEL_62:
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    ++v4;
  }

  while (v4 != v5);
  v4 = v54;
LABEL_72:
  if (v4)
  {
    v55 = v4;
    operator delete(v4);
  }
}

void sub_23C938F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  operations_research::sat::LinearExpr::~LinearExpr(&a22);
  operations_research::sat::LinearExpr::~LinearExpr(&a29);
  if (*(v29 - 121) < 0)
  {
    operator delete(*(v29 - 144));
  }

  v31 = *(v29 - 112);
  if (v31)
  {
    *(v29 - 104) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void ORToolsCpAllocator::SetAllocationDecisionForTensor(uint64_t *a1, unint64_t a2, int a3)
{
  v76 = a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(a1 + 23, &v76);
  if (v5)
  {
    v6 = v5[3];
    memset(&v75, 0, sizeof(v75));
    CpGraph::GetTensorName(a1[2], v76, &v75);
    if (a3 > 2)
    {
      if ((a3 - 6) < 2 || a3 == 3)
      {
        v22 = a1[28];
        operations_research::sat::LinearExpr::LinearExpr(&v70, v6[2], v6[3]);
        operations_research::sat::LinearExpr::LinearExpr(&v66, 0);
        v74 = operations_research::sat::CpModelBuilder::AddEquality(v22, &v70, &v66);
        std::operator+<char>();
        v23 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v65 = v23->__r_.__value_.__r.__words[2];
        *__p = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (v65 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        if (v65 >= 0)
        {
          v26 = HIBYTE(v65);
        }

        else
        {
          v26 = __p[1];
        }

        operations_research::sat::Constraint::WithName(&v74, v25, v26);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (v68)
        {
          v69 = v68;
          operator delete(v68);
        }

        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v27 = a1[28];
        operations_research::sat::LinearExpr::LinearExpr(&v70, *v6, v6[1]);
        operations_research::sat::LinearExpr::LinearExpr(&v66, 1);
        v74 = operations_research::sat::CpModelBuilder::AddEquality(v27, &v70, &v66);
        std::operator+<char>();
        v28 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v65 = v28->__r_.__value_.__r.__words[2];
        *__p = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if (v65 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        if (v65 >= 0)
        {
          v31 = HIBYTE(v65);
        }

        else
        {
          v31 = __p[1];
        }

        operations_research::sat::Constraint::WithName(&v74, v30, v31);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (v68)
        {
          v69 = v68;
          operator delete(v68);
        }

        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v32 = a1[28];
        operations_research::sat::LinearExpr::LinearExpr(&v70, v6[4], v6[5]);
        operations_research::sat::LinearExpr::LinearExpr(&v66, 0);
        v74 = operations_research::sat::CpModelBuilder::AddEquality(v32, &v70, &v66);
        std::operator+<char>();
        v33 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
        v34 = *&v33->__r_.__value_.__l.__data_;
        v65 = v33->__r_.__value_.__r.__words[2];
        *__p = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if (v65 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        if (v65 >= 0)
        {
          v21 = HIBYTE(v65);
        }

        else
        {
          v21 = __p[1];
        }

        goto LABEL_181;
      }
    }

    else
    {
      switch(a3)
      {
        case 0:
          v35 = a1[28];
          operations_research::sat::LinearExpr::LinearExpr(&v70, v6[2], v6[3]);
          operations_research::sat::LinearExpr::LinearExpr(&v66, 0);
          v74 = operations_research::sat::CpModelBuilder::AddEquality(v35, &v70, &v66);
          std::operator+<char>();
          v36 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
          v37 = *&v36->__r_.__value_.__l.__data_;
          v65 = v36->__r_.__value_.__r.__words[2];
          *__p = v37;
          v36->__r_.__value_.__l.__size_ = 0;
          v36->__r_.__value_.__r.__words[2] = 0;
          v36->__r_.__value_.__r.__words[0] = 0;
          if (v65 >= 0)
          {
            v38 = __p;
          }

          else
          {
            v38 = __p[0];
          }

          if (v65 >= 0)
          {
            v39 = HIBYTE(v65);
          }

          else
          {
            v39 = __p[1];
          }

          operations_research::sat::Constraint::WithName(&v74, v38, v39);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }

          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          for (i = *(a1[2] + 344); i; i = *i)
          {
            v41 = i[4];
            if (v41 <= v76)
            {
              if (v41 >= v76)
              {
                goto LABEL_193;
              }

              ++i;
            }
          }

          v42 = a1[28];
          operations_research::sat::LinearExpr::LinearExpr(&v70, *v6, v6[1]);
          operations_research::sat::LinearExpr::LinearExpr(&v66, 1);
          v74 = operations_research::sat::CpModelBuilder::AddEquality(v42, &v70, &v66);
          std::operator+<char>();
          v43 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
          v44 = *&v43->__r_.__value_.__l.__data_;
          v65 = v43->__r_.__value_.__r.__words[2];
          *__p = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          if (v65 >= 0)
          {
            v45 = __p;
          }

          else
          {
            v45 = __p[0];
          }

          if (v65 >= 0)
          {
            v46 = HIBYTE(v65);
          }

          else
          {
            v46 = __p[1];
          }

          operations_research::sat::Constraint::WithName(&v74, v45, v46);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }

          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v47 = a1[28];
          operations_research::sat::LinearExpr::LinearExpr(&v70, v6[4], v6[5]);
          operations_research::sat::LinearExpr::LinearExpr(&v66, 0);
          v74 = operations_research::sat::CpModelBuilder::AddEquality(v47, &v70, &v66);
          std::operator+<char>();
          v48 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
          v49 = *&v48->__r_.__value_.__l.__data_;
          v65 = v48->__r_.__value_.__r.__words[2];
          *__p = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          if (v65 >= 0)
          {
            v20 = __p;
          }

          else
          {
            v20 = __p[0];
          }

          if (v65 >= 0)
          {
            v21 = HIBYTE(v65);
          }

          else
          {
            v21 = __p[1];
          }

          goto LABEL_181;
        case 1:
          v50 = a1[28];
          operations_research::sat::LinearExpr::LinearExpr(&v70, v6[2], v6[3]);
          operations_research::sat::LinearExpr::LinearExpr(&v66, 1);
          v74 = operations_research::sat::CpModelBuilder::AddEquality(v50, &v70, &v66);
          std::operator+<char>();
          v51 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v65 = v51->__r_.__value_.__r.__words[2];
          *__p = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          if (v65 >= 0)
          {
            v53 = __p;
          }

          else
          {
            v53 = __p[0];
          }

          if (v65 >= 0)
          {
            v54 = HIBYTE(v65);
          }

          else
          {
            v54 = __p[1];
          }

          operations_research::sat::Constraint::WithName(&v74, v53, v54);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }

          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v55 = a1[28];
          operations_research::sat::LinearExpr::LinearExpr(&v70, *v6, v6[1]);
          operations_research::sat::LinearExpr::LinearExpr(&v66, 0);
          v74 = operations_research::sat::CpModelBuilder::AddEquality(v55, &v70, &v66);
          std::operator+<char>();
          v56 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
          v57 = *&v56->__r_.__value_.__l.__data_;
          v65 = v56->__r_.__value_.__r.__words[2];
          *__p = v57;
          v56->__r_.__value_.__l.__size_ = 0;
          v56->__r_.__value_.__r.__words[2] = 0;
          v56->__r_.__value_.__r.__words[0] = 0;
          if (v65 >= 0)
          {
            v58 = __p;
          }

          else
          {
            v58 = __p[0];
          }

          if (v65 >= 0)
          {
            v59 = HIBYTE(v65);
          }

          else
          {
            v59 = __p[1];
          }

          operations_research::sat::Constraint::WithName(&v74, v58, v59);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }

          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v60 = a1[28];
          operations_research::sat::LinearExpr::LinearExpr(&v70, v6[4], v6[5]);
          operations_research::sat::LinearExpr::LinearExpr(&v66, 0);
          v74 = operations_research::sat::CpModelBuilder::AddEquality(v60, &v70, &v66);
          std::operator+<char>();
          v61 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
          v62 = *&v61->__r_.__value_.__l.__data_;
          v65 = v61->__r_.__value_.__r.__words[2];
          *__p = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          if (v65 >= 0)
          {
            v20 = __p;
          }

          else
          {
            v20 = __p[0];
          }

          if (v65 >= 0)
          {
            v21 = HIBYTE(v65);
          }

          else
          {
            v21 = __p[1];
          }

          goto LABEL_181;
        case 2:
          v7 = a1[28];
          operations_research::sat::LinearExpr::LinearExpr(&v70, v6[2], v6[3]);
          operations_research::sat::LinearExpr::LinearExpr(&v66, 0);
          v74 = operations_research::sat::CpModelBuilder::AddEquality(v7, &v70, &v66);
          std::operator+<char>();
          v8 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
          v9 = *&v8->__r_.__value_.__l.__data_;
          v65 = v8->__r_.__value_.__r.__words[2];
          *__p = v9;
          v8->__r_.__value_.__l.__size_ = 0;
          v8->__r_.__value_.__r.__words[2] = 0;
          v8->__r_.__value_.__r.__words[0] = 0;
          if (v65 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          if (v65 >= 0)
          {
            v11 = HIBYTE(v65);
          }

          else
          {
            v11 = __p[1];
          }

          operations_research::sat::Constraint::WithName(&v74, v10, v11);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }

          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v12 = a1[28];
          operations_research::sat::LinearExpr::LinearExpr(&v70, *v6, v6[1]);
          operations_research::sat::LinearExpr::LinearExpr(&v66, 0);
          v74 = operations_research::sat::CpModelBuilder::AddEquality(v12, &v70, &v66);
          std::operator+<char>();
          v13 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
          v14 = *&v13->__r_.__value_.__l.__data_;
          v65 = v13->__r_.__value_.__r.__words[2];
          *__p = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          if (v65 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if (v65 >= 0)
          {
            v16 = HIBYTE(v65);
          }

          else
          {
            v16 = __p[1];
          }

          operations_research::sat::Constraint::WithName(&v74, v15, v16);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }

          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v17 = a1[28];
          operations_research::sat::LinearExpr::LinearExpr(&v70, v6[4], v6[5]);
          operations_research::sat::LinearExpr::LinearExpr(&v66, 1);
          v74 = operations_research::sat::CpModelBuilder::AddEquality(v17, &v70, &v66);
          std::operator+<char>();
          v18 = std::string::append(&v63, ":early_allocation_decision", 0x1AuLL);
          v19 = *&v18->__r_.__value_.__l.__data_;
          v65 = v18->__r_.__value_.__r.__words[2];
          *__p = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          if (v65 >= 0)
          {
            v20 = __p;
          }

          else
          {
            v20 = __p[0];
          }

          if (v65 >= 0)
          {
            v21 = HIBYTE(v65);
          }

          else
          {
            v21 = __p[1];
          }

LABEL_181:
          operations_research::sat::Constraint::WithName(&v74, v20, v21);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }

          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          break;
      }
    }

LABEL_193:
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23C939B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  operations_research::sat::LinearExpr::~LinearExpr(&a22);
  operations_research::sat::LinearExpr::~LinearExpr(&a29);
  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(a1);
}

void ORToolsCpAllocator::EnableL2Dependent(ORToolsCpAllocator *this, void *a2)
{
  v48 = -1;
  v49 = -1;
  if (ORToolsCpAllocator::FindL2DepPair(this, a2, &v49, &v48))
  {
    v4 = *(this + 2);
    v32 = a2;
    v40 = a2;
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v4 + 64), &v40);
    v6 = (v4 + 104);
    if (v5)
    {
      v6 = (v5 + 3);
    }

    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      v9 = v49;
      do
      {
        v40 = *v7;
        v10 = v40;
        v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v40);
        memset(&v47, 0, sizeof(v47));
        CpGraph::GetLayerName(*(this + 2), v10, &v47);
        if (v9 == v10)
        {
          v12 = ":enable_l2_dep_producer";
        }

        else
        {
          v12 = ":disable_l2_dep_producer";
        }

        std::string::basic_string[abi:ne200100]<0>(v45, v12);
        v13 = *(this + 28);
        operations_research::sat::LinearExpr::LinearExpr(&v40, *(v11[3] + 160), *(v11[3] + 168));
        v14 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 28), v9 == v10);
        operations_research::sat::LinearExpr::LinearExpr(&v36, v14, v15);
        v44 = operations_research::sat::CpModelBuilder::AddEquality(v13, &v40, &v36);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v47.__r_.__value_.__l.__data_, v45, &__p);
        if ((v35 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v35 & 0x80u) == 0)
        {
          v17 = v35;
        }

        else
        {
          v17 = v34;
        }

        operations_research::sat::Constraint::WithName(&v44, p_p, v17);
        if (v35 < 0)
        {
          operator delete(__p);
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        ++v7;
      }

      while (v7 != v8);
    }

    v18 = *(this + 2);
    v40 = v32;
    v19 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v18 + 24), &v40);
    v20 = (v18 + 104);
    if (v19)
    {
      v20 = (v19 + 3);
    }

    v21 = *v20;
    v22 = v20[1];
    if (*v20 != v22)
    {
      v23 = v48;
      do
      {
        v40 = *v21;
        v24 = v40;
        v25 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v40);
        memset(&v47, 0, sizeof(v47));
        CpGraph::GetLayerName(*(this + 2), v24, &v47);
        if (v23 == v24)
        {
          v26 = ":enable_l2_dep_consumer";
        }

        else
        {
          v26 = ":disable_l2_dep_consumer";
        }

        std::string::basic_string[abi:ne200100]<0>(v45, v26);
        v27 = *(this + 28);
        operations_research::sat::LinearExpr::LinearExpr(&v40, *(v25[3] + 176), *(v25[3] + 184));
        v28 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 28), v23 == v24);
        operations_research::sat::LinearExpr::LinearExpr(&v36, v28, v29);
        v44 = operations_research::sat::CpModelBuilder::AddEquality(v27, &v40, &v36);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v47.__r_.__value_.__l.__data_, v45, &__p);
        if ((v35 & 0x80u) == 0)
        {
          v30 = &__p;
        }

        else
        {
          v30 = __p;
        }

        if ((v35 & 0x80u) == 0)
        {
          v31 = v35;
        }

        else
        {
          v31 = v34;
        }

        operations_research::sat::Constraint::WithName(&v44, v30, v31);
        if (v35 < 0)
        {
          operator delete(__p);
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        ++v21;
      }

      while (v21 != v22);
    }
  }
}

void sub_23C93A014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 105) < 0)
  {
    operator delete(*(v36 - 128));
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpAllocator::DisableL2Dependent(ORToolsCpAllocator *this, void *a2)
{
  v4 = *(this + 2);
  v41 = a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v4 + 64), &v41);
  v6 = (v4 + 104);
  if (v5)
  {
    v6 = (v5 + 3);
  }

  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    do
    {
      v41 = *v7;
      v9 = v41;
      v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v41);
      memset(&v46, 0, sizeof(v46));
      CpGraph::GetLayerName(*(this + 2), v9, &v46);
      v11 = *(this + 28);
      operations_research::sat::LinearExpr::LinearExpr(&v41, *(v10[3] + 160), *(v10[3] + 168));
      v12 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 28), 0);
      operations_research::sat::LinearExpr::LinearExpr(&v37, v12, v13);
      v45 = operations_research::sat::CpModelBuilder::AddEquality(v11, &v41, &v37);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v46.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&__p, size + 24);
      if ((v36 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (size)
      {
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v46;
        }

        else
        {
          v16 = v46.__r_.__value_.__r.__words[0];
        }

        memmove(p_p, v16, size);
      }

      strcpy(p_p + size, ":disable_l2_dep_producer");
      if ((v36 & 0x80u) == 0)
      {
        v17 = &__p;
      }

      else
      {
        v17 = __p;
      }

      if ((v36 & 0x80u) == 0)
      {
        v18 = v36;
      }

      else
      {
        v18 = v35;
      }

      operations_research::sat::Constraint::WithName(&v45, v17, v18);
      if (v36 < 0)
      {
        operator delete(__p);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  v19 = *(this + 2);
  v41 = a2;
  v20 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v19 + 24), &v41);
  v21 = (v19 + 104);
  if (v20)
  {
    v21 = (v20 + 3);
  }

  v22 = *v21;
  v23 = v21[1];
  if (*v21 != v23)
  {
    do
    {
      v41 = *v22;
      v24 = v41;
      v25 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v41);
      memset(&v46, 0, sizeof(v46));
      CpGraph::GetLayerName(*(this + 2), v24, &v46);
      v26 = *(this + 28);
      operations_research::sat::LinearExpr::LinearExpr(&v41, *(v25[3] + 176), *(v25[3] + 184));
      v27 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 28), 0);
      operations_research::sat::LinearExpr::LinearExpr(&v37, v27, v28);
      v45 = operations_research::sat::CpModelBuilder::AddEquality(v26, &v41, &v37);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v46.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&__p, v29 + 24);
      if ((v36 & 0x80u) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p;
      }

      if (v29)
      {
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v46;
        }

        else
        {
          v31 = v46.__r_.__value_.__r.__words[0];
        }

        memmove(v30, v31, v29);
      }

      strcpy(v30 + v29, ":disable_l2_dep_consumer");
      if ((v36 & 0x80u) == 0)
      {
        v32 = &__p;
      }

      else
      {
        v32 = __p;
      }

      if ((v36 & 0x80u) == 0)
      {
        v33 = v36;
      }

      else
      {
        v33 = v35;
      }

      operations_research::sat::Constraint::WithName(&v45, v32, v33);
      if (v36 < 0)
      {
        operator delete(__p);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      ++v22;
    }

    while (v22 != v23);
  }
}

void sub_23C93A450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (*(v22 - 89) < 0)
  {
    operator delete(*(v22 - 112));
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpAllocator::PrepareL2Dependent(ORToolsCpAllocator *this, void *a2, void *a3, void *a4)
{
  v8 = *(this + 2);
  v46 = a2;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v8 + 64), &v46);
  v10 = (v8 + 104);
  if (v9)
  {
    v10 = (v9 + 3);
  }

  v11 = *v10;
  v12 = v10[1];
  if (*v10 != v12)
  {
    do
    {
      v13 = *v11;
      if (*v11 != a3)
      {
        v46 = *v11;
        v14 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v46);
        memset(&v51, 0, sizeof(v51));
        CpGraph::GetLayerName(*(this + 2), v13, &v51);
        v15 = *(this + 28);
        operations_research::sat::LinearExpr::LinearExpr(&v46, *(v14[3] + 160), *(v14[3] + 168));
        v16 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 28), 0);
        v4 = v4 & 0xFFFFFFFF00000000 | v17;
        operations_research::sat::LinearExpr::LinearExpr(&v42, v16, v4);
        v50 = operations_research::sat::CpModelBuilder::AddEquality(v15, &v46, &v42);
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v51.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&__p, size + 24);
        if ((v41 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (size)
        {
          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v51;
          }

          else
          {
            v20 = v51.__r_.__value_.__r.__words[0];
          }

          memmove(p_p, v20, size);
        }

        strcpy(p_p + size, ":disable_l2_dep_producer");
        if ((v41 & 0x80u) == 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p;
        }

        if ((v41 & 0x80u) == 0)
        {
          v22 = v41;
        }

        else
        {
          v22 = v40;
        }

        operations_research::sat::Constraint::WithName(&v50, v21, v22);
        if (v41 < 0)
        {
          operator delete(__p);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  v23 = *(this + 2);
  v46 = a2;
  v24 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v23 + 24), &v46);
  v25 = (v23 + 104);
  if (v24)
  {
    v25 = (v24 + 3);
  }

  v26 = *v25;
  v27 = v25[1];
  if (*v25 != v27)
  {
    do
    {
      v28 = *v26;
      if (*v26 != a4)
      {
        v46 = *v26;
        v29 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v46);
        memset(&v51, 0, sizeof(v51));
        CpGraph::GetLayerName(*(this + 2), v28, &v51);
        v30 = *(this + 28);
        operations_research::sat::LinearExpr::LinearExpr(&v46, *(v29[3] + 176), *(v29[3] + 184));
        v31 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 28), 0);
        v23 = v23 & 0xFFFFFFFF00000000 | v32;
        operations_research::sat::LinearExpr::LinearExpr(&v42, v31, v23);
        v50 = operations_research::sat::CpModelBuilder::AddEquality(v30, &v46, &v42);
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = v51.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&__p, v33 + 24);
        if ((v41 & 0x80u) == 0)
        {
          v34 = &__p;
        }

        else
        {
          v34 = __p;
        }

        if (v33)
        {
          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = &v51;
          }

          else
          {
            v35 = v51.__r_.__value_.__r.__words[0];
          }

          memmove(v34, v35, v33);
        }

        strcpy(v34 + v33, ":disable_l2_dep_consumer");
        if ((v41 & 0x80u) == 0)
        {
          v36 = &__p;
        }

        else
        {
          v36 = __p;
        }

        if ((v41 & 0x80u) == 0)
        {
          v37 = v41;
        }

        else
        {
          v37 = v40;
        }

        operations_research::sat::Constraint::WithName(&v50, v36, v37);
        if (v41 < 0)
        {
          operator delete(__p);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }
      }

      ++v26;
    }

    while (v26 != v27);
  }
}

void sub_23C93A894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (*(v23 - 97) < 0)
  {
    operator delete(*(v23 - 120));
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpAllocator::SetObjectiveFunction(CpGraph **this)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  CpGraph::GetLayers(this[2], 1, &v17);
  v2 = v17;
  v3 = __p;
  if (v17 != __p)
  {
    do
    {
      v21 = *v2;
      v14[0] = &v21;
      v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v21, &std::piecewise_construct, v14);
      std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v25, (v4[3] + 16));
      v14[0] = 1;
      std::vector<long long>::push_back[abi:ne200100](&v22, v14);
      ++v2;
    }

    while (v2 != v3);
    v2 = v17;
  }

  if (v2)
  {
    __p = v2;
    operator delete(v2);
  }

  for (i = this[15]; i; i = *i)
  {
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v25, (*(i + 3) + 16));
    v17 = 1;
    std::vector<long long>::push_back[abi:ne200100](&v22, &v17);
  }

  for (j = this[20]; j; j = *j)
  {
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v25, (*(j + 3) + 16));
    v17 = 1;
    std::vector<long long>::push_back[abi:ne200100](&v22, &v17);
  }

  RegionMaxCycle = ORToolsCpAllocator::GetRegionMaxCycle(this);
  v8 = this[28];
  operations_research::Domain::Domain(&v17, 0, RegionMaxCycle);
  v9 = operations_research::sat::CpModelBuilder::NewIntVar(v8, &v17);
  v11 = v10;
  if (v17)
  {
    operator delete(__p);
  }

  v12 = this[28];
  operations_research::sat::LinearExpr::LinearExpr(&v17, v9, v11);
  operations_research::sat::LinearExpr::WeightedSum((v26 - v25) >> 4, (v23 - v22) >> 3, v14);
  v21 = operations_research::sat::CpModelBuilder::AddEquality(v12, &v17, v14);
  operations_research::sat::Constraint::WithName(&v21, "objective_func", 0xEuLL);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    __p = v17;
    operator delete(v17);
  }

  v13 = this[28];
  operations_research::sat::LinearExpr::LinearExpr(&v17, v9, v11);
  operations_research::sat::CpModelBuilder::Minimize(v13, &v17);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    __p = v17;
    operator delete(v17);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_23C93AB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  operations_research::sat::LinearExpr::~LinearExpr(&a16);
  v19 = *(v17 - 104);
  if (v19)
  {
    *(v17 - 96) = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 80);
  if (v20)
  {
    *(v17 - 72) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t ORToolsCpAllocator::GetRegionMaxCycle(CpGraph **this)
{
  CpGraph::GetLayers(this[2], 1, &__p);
  v2 = __p;
  v3 = v10;
  if (__p == v10)
  {
    v4 = 0;
    if (!__p)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  do
  {
    v5 = *v2;
    v8 = 0;
    if (CpAllocGraph::GetLayerBehavior(this[2], v5, &v8))
    {
      *v7 = 0;
      ORToolsCpAllocator::GetEarlyAllocationDecision(this, v5, &v7[1], v7);
      v4 += LayerCycleAndFootprintEstimator::GetMaxCycle(v8, v7[1], v7[0]);
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_7:
    v10 = v2;
    operator delete(v2);
  }

  return v4;
}

void sub_23C93ACF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void ORToolsCpAllocator::ExecuteDeferred(uint64_t *__return_ptr a1@<X8>, ORToolsCpAllocator *this@<X0>)
{
  v174 = *MEMORY[0x277D85DE8];
  ORToolsCpBasedAllocatorUtil::PrintRegion(this + 30, *(this + 2), this + 3);
  v167.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewConstant(*(this + 28), *(this + 101));
  LODWORD(v167.__r_.__value_.__r.__words[1]) = v4;
  v5 = operations_research::sat::IntVar::WithName(&v167, "l2_space_const", 0xEuLL);
  v7 = *(this + 28);
  operations_research::sat::LinearExpr::LinearExpr(v163, v5, v6);
  v166[0] = operations_research::sat::CpModelBuilder::AddCumulative(v7, v163);
  v166[1] = v8;
  if (__p)
  {
    v165 = __p;
    operator delete(__p);
  }

  if (v163[0])
  {
    v163[1] = v163[0];
    operator delete(v163[0]);
  }

  v162 = 0x7FFFFFFFFFFFFFFFLL;
  v161 = 0x7FFFFFFFFFFFFFFFLL;
  ORToolsCpAllocator::FindMinMaxSchedule(this, &v162, &v161);
  operations_research::Domain::Domain(v160, v162, v161);
  v127 = a1;
  CpGraph::GetLayers(*(this + 2), 1, &v167.__r_.__value_.__l.__data_);
  size = v167.__r_.__value_.__l.__size_;
  v9 = v167.__r_.__value_.__r.__words[0];
  if (v167.__r_.__value_.__r.__words[0] != v167.__r_.__value_.__l.__size_)
  {
    do
    {
      ORToolsCpAllocator::CreateTensorAllocationVariable(this, *v9++);
    }

    while (v9 != size);
    v9 = v167.__r_.__value_.__r.__words[0];
  }

  if (v9)
  {
    v167.__r_.__value_.__l.__size_ = v9;
    operator delete(v9);
  }

  CpGraph::GetLayers(*(this + 2), 1, &v167.__r_.__value_.__l.__data_);
  v12 = v167.__r_.__value_.__l.__size_;
  v11 = v167.__r_.__value_.__r.__words[0];
  if (v167.__r_.__value_.__r.__words[0] != v167.__r_.__value_.__l.__size_)
  {
    do
    {
      v158 = *v11;
      v151.__r_.__value_.__r.__words[0] = 0;
      if (CpAllocGraph::GetLayerBehavior(*(this + 2), v158, &v151))
      {
        MaxCycle = LayerCycleAndFootprintEstimator::GetMaxCycle(v151.__r_.__value_.__l.__data_, 0, 0);
        operations_research::Domain::Domain(&v153, 0, MaxCycle);
        ORToolsCpAllocator::CreateLayerScheduleVariable(this, v158, &v153);
        v170 = &v158;
        v14 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v158, &std::piecewise_construct, &v170)[3];
        v15 = *(this + 28);
        LayerCycleAndFootprintEstimator::GetReadBehaviors(&v170, v151.__r_.__value_.__l.__data_);
        ORToolsLayerScheduleVariable::CreateLayerConstraint(v14, v15, v166, &v170, &v153);
        if (v170)
        {
          v171 = v170;
          operator delete(v170);
        }

        if (v153)
        {
          operator delete(v154);
        }
      }

      ++v11;
    }

    while (v11 != v12);
    v11 = v167.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    v167.__r_.__value_.__l.__size_ = v11;
    operator delete(v11);
  }

  CpGraph::GetLayers(*(this + 2), 1, &v170);
  v16 = v170;
  v17 = v171;
  if (v170 == v171)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v18 = *v16;
    OutputTensor = CpGraph::GetOutputTensor(*(this + 2), *v16);
    v151.__r_.__value_.__r.__words[0] = OutputTensor;
    v20 = *(this + 2);
    v21 = v20[43];
    if (!v21)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v22 = v21[4];
      if (v22 <= OutputTensor)
      {
        break;
      }

LABEL_25:
      v21 = *v21;
      if (!v21)
      {
        goto LABEL_26;
      }
    }

    if (v22 < OutputTensor)
    {
      break;
    }

    v167.__r_.__value_.__r.__words[0] = OutputTensor;
    v23 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v20 + 3, &v167);
    v24 = v20 + 13;
    if (v23)
    {
      v24 = v23 + 3;
    }

    if (v24[1] != *v24)
    {
      v147 = v18;
      v25 = *(this + 2);
      v167.__r_.__value_.__r.__words[0] = v151.__r_.__value_.__r.__words[0];
      v26 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v25 + 24), &v167);
      v27 = (v25 + 104);
      if (v26)
      {
        v27 = (v26 + 3);
      }

      v28 = **v27;
      CpGraph::GetInputTensors(*(this + 2), v28, &v158);
      if (v159 == v158)
      {
LABEL_38:
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v30 = (v159 - v158) >> 3;
        if (v30 <= 1)
        {
          v30 = 1;
        }

        while (*(v158 + v29) != v151.__r_.__value_.__r.__words[0])
        {
          if (v30 == ++v29)
          {
            goto LABEL_38;
          }
        }
      }

      if (std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v147))
      {
        v167.__r_.__value_.__r.__words[0] = v28;
        if (std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v167))
        {
          v139 = 0;
          v136[0] = 0;
          CpAllocGraph::GetLayerBehavior(*(this + 2), v147, &v139);
          LayerBehavior = CpAllocGraph::GetLayerBehavior(*(this + 2), v28, v136);
          if (!*(*(v139 + 4) + 104))
          {
            LayerBehavior = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 23, &v151);
            if (LayerBehavior)
            {
              v33 = *(this + 28);
              operations_research::sat::LinearExpr::LinearExpr(&v167, *(*(LayerBehavior + 24) + 32), *(*(LayerBehavior + 24) + 40));
              operations_research::sat::LinearExpr::LinearExpr(&v153, 0);
              v135.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddEquality(v33, &v167, &v153);
              operations_research::sat::Constraint::WithName(&v135, "T: disable-chain", 0x10uLL);
              if (v156)
              {
                v157 = v156;
                operator delete(v156);
              }

              if (v153)
              {
                v154 = v153;
                operator delete(v153);
              }

              if (v168)
              {
                *&v169[0] = v168;
                operator delete(v168);
              }

              LayerBehavior = v167.__r_.__value_.__r.__words[0];
              if (v167.__r_.__value_.__r.__words[0])
              {
                v167.__r_.__value_.__l.__size_ = v167.__r_.__value_.__r.__words[0];
                operator delete(v167.__r_.__value_.__l.__data_);
              }
            }
          }

          ChainExecutionVariableMaxCycle = ORToolsCpAllocator::GetChainExecutionVariableMaxCycle(LayerBehavior, v139, v136[0]);
          operations_research::Domain::Domain(&v167, 0, ChainExecutionVariableMaxCycle);
          ORToolsCpAllocator::CreateChainScheduleVariable(this, v147, v28, v29, &v167);
        }
      }

      if (v158)
      {
        v159 = v158;
        operator delete(v158);
      }
    }

LABEL_26:
    if (++v16 == v17)
    {
      v16 = v170;
LABEL_54:
      if (v16)
      {
        v171 = v16;
        operator delete(v16);
      }

      CpGraph::GetLayers(*(this + 2), 1, &v167.__r_.__value_.__l.__data_);
      v35 = v167.__r_.__value_.__l.__size_;
      v34 = v167.__r_.__value_.__r.__words[0];
      if (v167.__r_.__value_.__r.__words[0] == v167.__r_.__value_.__l.__size_)
      {
LABEL_82:
        if (v34)
        {
          v167.__r_.__value_.__l.__size_ = v34;
          operator delete(v34);
        }

        CpGraph::GetLayers(*(this + 2), 1, &v158);
        v49 = v158;
        v50 = v159;
        if (v158 != v159)
        {
          do
          {
            v152 = *v49;
            v167.__r_.__value_.__r.__words[0] = &v152;
            v51 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v152, &std::piecewise_construct, &v167);
            memset(&v151, 0, sizeof(v151));
            CpGraph::GetLayerName(*(this + 2), v152, &v151);
            v150 = -1;
            CpGraph::GetLayerSchedule(*(this + 2), v152, &v150);
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v52 = v51[3];
            v53 = *(v52 + 192);
            v54 = *(v52 + 200);
            if (v54 != v53)
            {
              std::vector<operations_research::sat::BoolVar>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::BoolVar const*>,std::__wrap_iter<operations_research::sat::BoolVar const*>>(&v147, 0, v53, v54, (v54 - v53) >> 4);
              if (v148 != v147)
              {
                BooleanOr = ORToolsCpBasedAllocatorUtil::CreateBooleanOr(*(this + 28), &v147);
                v56 = *(this + 28);
                operations_research::sat::BoolVar::BoolVar(&v170, ~v57, BooleanOr);
                v167.__r_.__value_.__r.__words[0] = v170;
                LODWORD(v167.__r_.__value_.__r.__words[1]) = v171;
                v58 = *(v51[3] + 136);
                LODWORD(v168) = *(v58 + 232);
                v167.__r_.__value_.__r.__words[2] = *(v58 + 224);
                v154 = 0;
                v155 = 0;
                v153 = 0;
                std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v153, &v167, v169, 2uLL);
                BooleanAnd = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v56, &v153);
                v61 = v60;
                if (v153)
                {
                  v154 = v153;
                  operator delete(v153);
                }

                v62 = v50;
                v63 = CpGraph::GetOutputTensor(*(this + 2), v152);
                v64 = v49;
                v65 = *(this + 28);
                ResidentBufferSize = ORToolsCpAllocator::GetResidentBufferSize(this, v63);
                v67 = operations_research::sat::CpModelBuilder::NewConstant(v65, ResidentBufferSize);
                v69 = v68;
                v70 = *(this + 28);
                v71 = v150;
                std::operator+<char>();
                v72 = std::string::append(&v167, ":in_place_l2_pressure_increase_interval", 0x27uLL);
                v73 = *&v72->__r_.__value_.__l.__data_;
                v146 = v72->__r_.__value_.__r.__words[2];
                *v145 = v73;
                v72->__r_.__value_.__l.__size_ = 0;
                v72->__r_.__value_.__r.__words[2] = 0;
                v72->__r_.__value_.__r.__words[0] = 0;
                v130 = v130 & 0xFFFFFFFF00000000 | v61;
                OptionalClosedInterval = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v70, v71, v71, BooleanAnd, v130, v145);
                v76 = v75;
                v49 = v64;
                if (SHIBYTE(v146) < 0)
                {
                  operator delete(v145[0]);
                }

                v50 = v62;
                if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v167.__r_.__value_.__l.__data_);
                }

                v129 = v129 & 0xFFFFFFFF00000000 | v69;
                operations_research::sat::LinearExpr::LinearExpr(v142, v67, v129);
                v128 = v128 & 0xFFFFFFFF00000000 | v76;
                operations_research::sat::CumulativeConstraint::AddDemand(v166, OptionalClosedInterval, v76, v142);
                if (v143)
                {
                  v144 = v143;
                  operator delete(v143);
                }

                if (v142[0])
                {
                  v142[1] = v142[0];
                  operator delete(v142[0]);
                }
              }

              v77 = *(v51[3] + 192);
              v78 = *(v51[3] + 200);
              if (v78 - v77 == 32 && v78 != v77)
              {
                v80 = v49;
                v81 = 0;
LABEL_102:
                CpGraph::GetInputTensors(*(this + 2), v152, &v167);
                v82 = *(v167.__r_.__value_.__r.__words[0] + 8 * v81);
                v167.__r_.__value_.__l.__size_ = v167.__r_.__value_.__r.__words[0];
                operator delete(v167.__r_.__value_.__l.__data_);
                CpGraph::GetInputTensors(*(this + 2), v152, &v167);
                v83 = *(v167.__r_.__value_.__r.__words[0] + 8 * (v81 == 0));
                v167.__r_.__value_.__l.__size_ = v167.__r_.__value_.__r.__words[0];
                operator delete(v167.__r_.__value_.__l.__data_);
                v141 = v83;
                v84 = *(this + 2);
                v85 = v84[43];
                if (!v85)
                {
                  goto LABEL_136;
                }

                while (1)
                {
                  v86 = v85[4];
                  if (v86 <= v83)
                  {
                    if (v86 >= v83)
                    {
                      v167.__r_.__value_.__r.__words[0] = v83;
                      v87 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v84 + 8, &v167);
                      v88 = (v84 + 13);
                      if (v87)
                      {
                        v88 = (v87 + 3);
                      }

                      CpGraph::GetInputTensors(*(this + 2), **v88, &v139);
                      v89 = v139;
                      v90 = v140;
                      if (v139 != v140)
                      {
                        do
                        {
                          if (*v89 == v82)
                          {
                            goto LABEL_114;
                          }

                          v89 = (v89 + 8);
                        }

                        while (v89 != v140);
                        v89 = v140;
                      }

LABEL_114:
                      v167.__r_.__value_.__r.__words[0] = &v141;
                      v91 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &v141, &std::piecewise_construct, &v167);
                      if (v89 != v90)
                      {
                        v92 = v91[3];
                        v93 = *(this + 28);
                        v94 = v147 + 16 * v81;
                        v95 = *(v94 + 2);
                        v170 = *v94;
                        LODWORD(v171) = v95;
                        v172 = *(v92 + 32);
                        v173 = *(v92 + 40);
                        operations_research::sat::LinearExpr::Sum(&v170, 2, &v167);
                        v96 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 28), 1);
                        v132 = v132 & 0xFFFFFFFF00000000 | v97;
                        operations_research::sat::LinearExpr::LinearExpr(&v153, v96, v132);
                        v138 = operations_research::sat::CpModelBuilder::AddLessOrEqual(v93, &v167, &v153);
                        std::operator+<char>();
                        v98 = std::string::append(&v135, ":inplace_chain_mutex_constraint", 0x1FuLL);
                        v99 = *&v98->__r_.__value_.__l.__data_;
                        v137 = v98->__r_.__value_.__r.__words[2];
                        *v136 = v99;
                        v98->__r_.__value_.__l.__size_ = 0;
                        v98->__r_.__value_.__r.__words[2] = 0;
                        v98->__r_.__value_.__r.__words[0] = 0;
                        if (v137 >= 0)
                        {
                          v100 = v136;
                        }

                        else
                        {
                          v100 = v136[0];
                        }

                        if (v137 >= 0)
                        {
                          v101 = HIBYTE(v137);
                        }

                        else
                        {
                          v101 = v136[1];
                        }

                        operations_research::sat::Constraint::WithName(&v138, v100, v101);
                        if (SHIBYTE(v137) < 0)
                        {
                          operator delete(v136[0]);
                        }

                        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v135.__r_.__value_.__l.__data_);
                        }

                        if (v156)
                        {
                          v157 = v156;
                          operator delete(v156);
                        }

                        if (v153)
                        {
                          v154 = v153;
                          operator delete(v153);
                        }

                        if (v168)
                        {
                          *&v169[0] = v168;
                          operator delete(v168);
                        }

                        if (v167.__r_.__value_.__r.__words[0])
                        {
                          v167.__r_.__value_.__l.__size_ = v167.__r_.__value_.__r.__words[0];
                          operator delete(v167.__r_.__value_.__l.__data_);
                        }
                      }

                      if (v139)
                      {
                        v140 = v139;
                        operator delete(v139);
                      }

                      v84 = *(this + 2);
                      v83 = v141;
LABEL_136:
                      v102 = v84[46];
                      if (!v102)
                      {
                        goto LABEL_169;
                      }

                      while (1)
                      {
                        v103 = v102[4];
                        if (v103 <= v83)
                        {
                          if (v103 >= v83)
                          {
                            v167.__r_.__value_.__r.__words[0] = v83;
                            v104 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(v84 + 8, &v167);
                            v105 = (v84 + 13);
                            if (v104)
                            {
                              v105 = (v104 + 3);
                            }

                            v106 = **v105;
                            CpGraph::GetInputTensors(*(this + 2), v106, &v139);
                            v107 = v139;
                            v108 = v140;
                            if (v139 != v140)
                            {
                              do
                              {
                                if (*v107 == v82)
                                {
                                  goto LABEL_148;
                                }

                                v107 = (v107 + 8);
                              }

                              while (v107 != v140);
                              v107 = v140;
                            }

LABEL_148:
                            v153 = v106;
                            v167.__r_.__value_.__r.__words[0] = &v153;
                            v109 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v153, &std::piecewise_construct, &v167);
                            if (v107 != v108)
                            {
                              v110 = v109[3];
                              v111 = *(this + 28);
                              v112 = v147 + 16 * v81;
                              v113 = *(v112 + 2);
                              v170 = *v112;
                              LODWORD(v171) = v113;
                              v172 = *(v110 + 160);
                              v173 = *(v110 + 168);
                              operations_research::sat::LinearExpr::Sum(&v170, 2, &v167);
                              v114 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 28), 1);
                              v131 = v131 & 0xFFFFFFFF00000000 | v115;
                              operations_research::sat::LinearExpr::LinearExpr(&v153, v114, v131);
                              v138 = operations_research::sat::CpModelBuilder::AddLessOrEqual(v111, &v167, &v153);
                              std::operator+<char>();
                              v116 = std::string::append(&v135, ":inplace_l2_dep_mutex_constraint", 0x20uLL);
                              v117 = *&v116->__r_.__value_.__l.__data_;
                              v137 = v116->__r_.__value_.__r.__words[2];
                              *v136 = v117;
                              v116->__r_.__value_.__l.__size_ = 0;
                              v116->__r_.__value_.__r.__words[2] = 0;
                              v116->__r_.__value_.__r.__words[0] = 0;
                              if (v137 >= 0)
                              {
                                v118 = v136;
                              }

                              else
                              {
                                v118 = v136[0];
                              }

                              if (v137 >= 0)
                              {
                                v119 = HIBYTE(v137);
                              }

                              else
                              {
                                v119 = v136[1];
                              }

                              operations_research::sat::Constraint::WithName(&v138, v118, v119);
                              if (SHIBYTE(v137) < 0)
                              {
                                operator delete(v136[0]);
                              }

                              if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v135.__r_.__value_.__l.__data_);
                              }

                              if (v156)
                              {
                                v157 = v156;
                                operator delete(v156);
                              }

                              if (v153)
                              {
                                v154 = v153;
                                operator delete(v153);
                              }

                              if (v168)
                              {
                                *&v169[0] = v168;
                                operator delete(v168);
                              }

                              if (v167.__r_.__value_.__r.__words[0])
                              {
                                v167.__r_.__value_.__l.__size_ = v167.__r_.__value_.__r.__words[0];
                                operator delete(v167.__r_.__value_.__l.__data_);
                              }
                            }

                            if (v139)
                            {
                              v140 = v139;
                              operator delete(v139);
                            }

LABEL_169:
                            if (++v81 >= ((*(v51[3] + 200) - *(v51[3] + 192)) >> 4))
                            {
                              v49 = v80;
                              goto LABEL_171;
                            }

                            goto LABEL_102;
                          }

                          ++v102;
                        }

                        v102 = *v102;
                        if (!v102)
                        {
                          goto LABEL_169;
                        }
                      }
                    }

                    ++v85;
                  }

                  v85 = *v85;
                  if (!v85)
                  {
                    goto LABEL_136;
                  }
                }
              }
            }

LABEL_171:
            if (v147)
            {
              v148 = v147;
              operator delete(v147);
            }

            if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v151.__r_.__value_.__l.__data_);
            }

            ++v49;
          }

          while (v49 != v50);
          v49 = v158;
        }

        if (v49)
        {
          v159 = v49;
          operator delete(v49);
        }

        CpGraph::GetTensors(*(this + 2), &v167.__r_.__value_.__l.__data_);
        v121 = v167.__r_.__value_.__l.__size_;
        v120 = v167.__r_.__value_.__r.__words[0];
        if (v167.__r_.__value_.__r.__words[0] != v167.__r_.__value_.__l.__size_)
        {
          do
          {
            ORToolsCpAllocator::AddResidentAllocationConstraint(this, *v120++, v166);
          }

          while (v120 != v121);
          v120 = v167.__r_.__value_.__r.__words[0];
        }

        if (v120)
        {
          v167.__r_.__value_.__l.__size_ = v120;
          operator delete(v120);
        }

        ORToolsCpAllocator::SetEarlyAllocationDecision(this);
        ORToolsCpAllocator::SetObjectiveFunction(this);
        operations_research::sat::CpModelProto::CpModelProto(&v167, 0, *(this + 28));
        v122 = *(this + 28);
        v123 = *(this + 2);
        RegionMaxCycle = ORToolsCpAllocator::GetRegionMaxCycle(this);
        ORToolsCpBasedAllocatorUtil::PrintConstraintProblem(this + 30, v122, &v167, v123, this + 3, RegionMaxCycle, *(this + 101));
        v125 = *(this + 29);
        *(v125 + 448) = 0x4066800000000000;
        *(v125 + 28) |= 0x20u;
        v126 = *(this + 29);
        *(v126 + 264) = 1;
        *(v126 + 16) |= 0x80000u;
        ORToolsCpBasedAllocatorUtil::PrintSolverParams(this + 30, this + 232);
        std::shared_ptr<ORToolsCpAllocator>::shared_ptr[abi:ne200100]<ORToolsCpAllocator,0>(&v133, this);
        operations_research::sat::CpModelProto::CpModelProto(&v134, 0, &v167);
        v127[3] = 0;
        operator new();
      }

LABEL_57:
      v36 = CpGraph::GetOutputTensor(*(this + 2), *v34);
      v37 = *(*(this + 2) + 368);
      if (!v37)
      {
        goto LABEL_80;
      }

      v38 = v36;
      while (1)
      {
        v39 = v37[4];
        if (v39 <= v36)
        {
          if (v39 >= v36)
          {
            v151.__r_.__value_.__r.__words[0] = -1;
            v147 = -1;
            if (ORToolsCpAllocator::FindL2DepPair(this, v36, &v151, &v147))
            {
              CpGraph::GetInputTensors(*(this + 2), v147, &v153);
              if (v154 == v153)
              {
LABEL_70:
                v40 = 0;
              }

              else
              {
                v40 = 0;
                v41 = (v154 - v153) >> 3;
                if (v41 <= 1)
                {
                  v41 = 1;
                }

                while (*(v153 + v40) != v38)
                {
                  if (v41 == ++v40)
                  {
                    goto LABEL_70;
                  }
                }
              }

              if (std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v151) && std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v147))
              {
                v42 = CpGraph::GetOutputTensor(*(this + 2), v147);
                v43 = *(this + 2);
                v170 = v42;
                if (!std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v43 + 384), &v170))
                {
                  goto LABEL_77;
                }

                v44 = *(this + 2);
                v170 = v42;
                v45 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v44 + 24), &v170);
                v46 = (v44 + 104);
                if (v45)
                {
                  v46 = v45 + 3;
                }

                if (v46[1] - *v46 <= 8uLL)
                {
LABEL_77:
                  v139 = 0;
                  v136[0] = 0;
                  CpAllocGraph::GetLayerBehavior(*(this + 2), v151.__r_.__value_.__r.__words[0], &v139);
                  v47 = CpAllocGraph::GetLayerBehavior(*(this + 2), v147, v136);
                  v48 = ORToolsCpAllocator::GetChainExecutionVariableMaxCycle(v47, v139, v136[0]);
                  operations_research::Domain::Domain(&v170, 0, v48);
                  ORToolsCpAllocator::CreateL2DepScheduleVariable(this, v151.__r_.__value_.__r.__words[0], v147, v40, &v170);
                }
              }

              if (v153)
              {
                v154 = v153;
                operator delete(v153);
              }
            }

LABEL_80:
            if (++v34 == v35)
            {
              v34 = v167.__r_.__value_.__r.__words[0];
              goto LABEL_82;
            }

            goto LABEL_57;
          }

          ++v37;
        }

        v37 = *v37;
        if (!v37)
        {
          goto LABEL_80;
        }
      }
    }
  }

  ++v21;
  goto LABEL_25;
}