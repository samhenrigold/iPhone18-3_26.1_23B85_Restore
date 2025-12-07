__n128 std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  v5 = a2->n128_u32[0];
  v6 = a3->n128_u32[0];
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v6 < v5)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v6 = result.n128_u32[0];
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
        v6 = a3->n128_u32[0];
      }
    }
  }

  else
  {
    v7 = a1->n128_u64[0];
    v8 = a1->n128_u64[1];
    if (v6 < v5)
    {
      result = *a3;
      *a1 = *a3;
LABEL_9:
      a3->n128_u64[0] = v7;
      a3->n128_u64[1] = v8;
      v6 = v7;
      goto LABEL_10;
    }

    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = v7;
    a2->n128_u64[1] = v8;
    v6 = a3->n128_u32[0];
    if (a3->n128_u32[0] < v7)
    {
      result = *a3;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[0] < v6)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u32[0] < a4->n128_u32[0])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u32[0] < a3->n128_u32[0])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u32[0] < a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *>(__n128 *a1, __n128 *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1 + 1;
      v7 = a1[1].n128_i32[0];
      v8 = a2 - 1;
      v9 = a2[-1].n128_i32[0];
      if (v7 < a1->n128_u32[0])
      {
        v11 = a1->n128_u64[0];
        v10 = a1->n128_u64[1];
        if (v9 >= v7)
        {
          *a1 = *v6;
          a1[1].n128_u64[0] = v11;
          a1[1].n128_u64[1] = v10;
          if (v8->n128_u32[0] >= v11)
          {
            return 1;
          }

          *v6 = *v8;
        }

        else
        {
          *a1 = *v8;
        }

        a2[-1].n128_u64[0] = v11;
        a2[-1].n128_u64[1] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v26 = a1[1];
      *v6 = *v8;
      *v8 = v26;
LABEL_50:
      if (a1[1].n128_u32[0] < a1->n128_u32[0])
      {
        v40 = *a1;
        *a1 = *v6;
        a1[1] = v40;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v6 = a1 + 1;
    v19 = a1[1].n128_i32[0];
    v20 = a1 + 2;
    v21 = a1[2].n128_i32[0];
    v22 = a2 - 1;
    v23 = a1->n128_u32[0];
    if (v19 >= a1->n128_u32[0])
    {
      if (v21 < v19)
      {
        v29 = *v6;
        *v6 = *v20;
        *v20 = v29;
        v21 = v29.n128_u32[0];
        if (v6->n128_u32[0] < v23)
        {
          v30 = *a1;
          *a1 = *v6;
          a1[1] = v30;
        }
      }

      goto LABEL_47;
    }

    v24 = a1->n128_u64[0];
    v25 = a1->n128_u64[1];
    if (v21 >= v19)
    {
      *a1 = *v6;
      a1[1].n128_u64[0] = v24;
      a1[1].n128_u64[1] = v25;
      if (v21 >= v24)
      {
        goto LABEL_47;
      }

      *v6 = *v20;
    }

    else
    {
      *a1 = *v20;
    }

    a1[2].n128_u64[0] = v24;
    a1[2].n128_u64[1] = v25;
    v21 = v24;
LABEL_47:
    if (v22->n128_u32[0] >= v21)
    {
      return 1;
    }

    v38 = *v20;
    *v20 = *v22;
    *v22 = v38;
    if (v20->n128_u32[0] >= v6->n128_u32[0])
    {
      return 1;
    }

    v39 = a1[1];
    *v6 = *v20;
    a1[2] = v39;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = a2[-1].n128_i32[0];
    v3 = a2 - 1;
    if (v4 < a1->n128_u32[0])
    {
      v5 = *a1;
      *a1 = *v3;
      *v3 = v5;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v13 = a1[2].n128_i32[0];
  v14 = a1 + 1;
  v15 = a1[1].n128_i32[0];
  v16 = a1->n128_u32[0];
  if (v15 >= a1->n128_u32[0])
  {
    if (v13 < v15)
    {
      v27 = *v14;
      *v14 = *v12;
      *v12 = v27;
      if (v14->n128_u32[0] < v16)
      {
        v28 = *a1;
        *a1 = *v14;
        a1[1] = v28;
      }
    }
  }

  else
  {
    v18 = a1->n128_u64[0];
    v17 = a1->n128_u64[1];
    if (v13 >= v15)
    {
      *a1 = *v14;
      a1[1].n128_u64[0] = v18;
      a1[1].n128_u64[1] = v17;
      if (v13 >= v18)
      {
        goto LABEL_33;
      }

      *v14 = *v12;
    }

    else
    {
      *a1 = *v12;
    }

    a1[2].n128_u64[0] = v18;
    a1[2].n128_u64[1] = v17;
  }

LABEL_33:
  v31 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    v34 = v31->n128_u32[0];
    if (v31->n128_u32[0] < v12->n128_u32[0])
    {
      v42 = *(v31->n128_u64 + 4);
      v43 = v31->n128_u32[3];
      v35 = v32;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1[1].n128_i32 + v35);
        v35 -= 16;
        if (v34 >= v36)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      v37->n128_u32[0] = v34;
      *(v37->n128_u64 + 4) = v42;
      v37->n128_u32[3] = v43;
      if (++v33 == 8)
      {
        return &v31[1] == a2;
      }
    }

    v12 = v31;
    v32 += 16;
    if (++v31 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((v2 + 3), v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::multiset<double>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((a2 + 3), a2[4]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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

double CLReducerFunction<std::multiset<double>,double>::minimumValueSorted(void *a1, uint64_t a2)
{
  if (!a1[2])
  {
    CLReducerFunction<std::multiset<double>,double>::minimumValueSorted();
  }

  return *(*a1 + 32);
}

double CLReducerFunction<std::multiset<double>,double>::minimumValue(void *a1)
{
  if (!a1[2])
  {
    CLReducerFunction<std::multiset<double>,double>::minimumValue();
  }

  v3 = *a1;
  v1 = a1 + 1;
  v2 = v3;
  if (v3 == v1)
  {
    v2 = v1;
  }

  else
  {
    v4 = v2;
    while (1)
    {
      v5 = v4[1];
      v6 = v4;
      if (v5)
      {
        do
        {
          v4 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (!v7);
      }

      if (v4 == v1)
      {
        break;
      }

      if (*(v4 + 4) < *(v2 + 4))
      {
        v2 = v4;
      }
    }
  }

  return *(v2 + 4);
}

double CLReducerFunction<std::multiset<double>,double>::meanValue(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    CLReducerFunction<std::multiset<double>,double>::meanValue();
  }

  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  v5 = 0.0;
  if (v4 != v2)
  {
    do
    {
      v6 = v3[1];
      v7 = v3;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      v5 = v5 + *(v3 + 4);
      v3 = v8;
    }

    while (v8 != v2);
  }

  return v5 / v1;
}

double CLReducerFunction<std::multiset<double>,double>::maximumValueSorted(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    CLReducerFunction<std::multiset<double>,double>::maximumValueSorted();
  }

  v3 = *(a1 + 8);
  v1 = a1 + 8;
  v2 = v3;
  if (v3)
  {
    do
    {
      v4 = v2;
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  else
  {
    do
    {
      v4 = *(v1 + 16);
      v5 = *v4 == v1;
      v1 = v4;
    }

    while (v5);
  }

  return *(v4 + 32);
}

double CLReducerFunction<std::multiset<double>,double>::maximumValue(void *a1)
{
  if (!a1[2])
  {
    CLReducerFunction<std::multiset<double>,double>::maximumValue();
  }

  v3 = *a1;
  v1 = a1 + 1;
  v2 = v3;
  if (v3 == v1)
  {
    v2 = v1;
  }

  else
  {
    v4 = v2;
    while (1)
    {
      v5 = v4[1];
      v6 = v4;
      if (v5)
      {
        do
        {
          v4 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (!v7);
      }

      if (v4 == v1)
      {
        break;
      }

      if (*(v2 + 4) < *(v4 + 4))
      {
        v2 = v4;
      }
    }
  }

  return *(v2 + 4);
}

double CLReducerFunction<std::multiset<double>,double>::firstQuartileValueSorted(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    CLReducerFunction<std::multiset<double>,double>::firstQuartileValueSorted();
  }

  v3 = *a1;
  std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v3, llround(vcvtd_n_f64_u64(v1, 2uLL)));
  return v3[4];
}

double CLReducerFunction<std::multiset<double>,double>::medianValueSorted(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    CLReducerFunction<std::multiset<double>,double>::medianValueSorted();
  }

  v3 = *a1;
  std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v3, llround(vcvtd_n_f64_u64(v1, 1uLL)));
  return v3[4];
}

uint64_t std::__function::__func<double (*)(std::multiset<double> const&),std::allocator<double (*)(std::multiset<double> const&)>,double ()(std::multiset<double>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A54BE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<double (*)(std::multiset<double> const&),std::allocator<double (*)(std::multiset<double> const&)>,double ()(std::multiset<double>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::function<double ()(std::multiset<double>)> ULAlgorithms::createReducerFunction<std::multiset<double>,double>(ULAlgorithms::ReducerFunctionType,ULAlgorithms::SortedContainer,double,double)::{lambda(std::multiset<double> const&)#1},std::allocator<std::function<double ()(std::multiset<double>)> ULAlgorithms::createReducerFunction<std::multiset<double>,double>(ULAlgorithms::ReducerFunctionType,ULAlgorithms::SortedContainer,double,double)::{lambda(std::multiset<double> const&)#1}>,double ()(std::multiset<double>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286A54C90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::function<double ()(std::multiset<double>)> ULAlgorithms::createReducerFunction<std::multiset<double>,double>(ULAlgorithms::ReducerFunctionType,ULAlgorithms::SortedContainer,double,double)::{lambda(std::multiset<double> const&)#1},std::allocator<std::function<double ()(std::multiset<double>)> ULAlgorithms::createReducerFunction<std::multiset<double>,double>(ULAlgorithms::ReducerFunctionType,ULAlgorithms::SortedContainer,double,double)::{lambda(std::multiset<double> const&)#1}>,double ()(std::multiset<double>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted();
  }

  if (a3 > 1.0 || (a2 >= 0.0 ? (v4 = a2 > 1.0) : (v4 = 1), !v4 ? (v5 = a3 < a2) : (v5 = 1), v5))
  {
    CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted();
  }

  v6 = llround(floor(v3 * a2));
  v7 = llround(ceil(v3 * a3));
  v8 = v7 - v6;
  if (v7 <= v6)
  {
    CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted();
  }

  v16 = *a1;
  std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v16, v6);
  v9 = v16;
  std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v16, v8);
  v10 = 0.0;
  if (v9 != v16)
  {
    do
    {
      v11 = *(v9 + 1);
      v12 = v9;
      if (v11)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = *(v12 + 2);
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v10 = v10 + v9[4];
      v9 = v13;
    }

    while (v13 != v16);
  }

  return v10 / v8;
}

uint64_t std::__function::__value_func<double ()(std::multiset<double>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t **std::multiset<double>::multiset[abi:ne200100](uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::multiset<double>::insert[abi:ne200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void ULNullSpaceLocalizationAlgorithm::localize(CLMicroLocationModel *this@<X1>, uint64_t a2@<X0>, id *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v112[4] = *MEMORY[0x277D85DE8];
  isValid = CLMicroLocationModel::isValid(this);
  if ((isValid & 1) == 0)
  {
    ULNullSpaceLocalizationAlgorithm::localize(isValid);
  }

  if ((*(a5 + 32) & 1) == 0)
  {
    ULNullSpaceLocalizationAlgorithm::localize(isValid);
  }

  v104[0] = 0;
  v104[1] = 0;
  v103 = v104;
  v13 = *(this + 22);
  if (v13 != *(this + 23))
  {
    *buf = v13 + 2;
    v14 = std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v103, v13 + 2, &std::piecewise_construct, buf);
    v15 = *(a5 + 24);
    if (v15)
    {
      *buf = (*(*v15 + 48))(v15, *v13, a4);
      std::__tree<double>::__emplace_multi<double>(v14 + 48, buf);
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  v91 = a6;
  (*(*a2 + 24))(&v101, a2, &v103, a3);
  v100[0] = 0;
  v100[1] = 0;
  v98 = 0;
  v99 = v100;
  __p = 0;
  v97 = 0;
  v16 = CLMicroLocationLocalizationSettings::getKernelFuncSettings(a3);
  ULAlgorithms::createKernelFunction(&v95, v16);

  v17 = v101;
  if (v101 != v102)
  {
    do
    {
      v18 = (*(*v95 + 24))(v95, *(v17 + 6));
      v19 = v17 + 4;
      *buf = v17 + 4;
      *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v99, v17 + 4, &std::piecewise_construct, buf) + 48) = 0;
      if (v18 >= 0.0)
      {
        if (v18 >= 0.999)
        {
          v20 = v97;
          if (v97 >= v98)
          {
            v22 = (v97 - __p) >> 4;
            v23 = v22 + 1;
            if ((v22 + 1) >> 60)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v24 = v98 - __p;
            if ((v98 - __p) >> 3 > v23)
            {
              v23 = v24 >> 3;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFF0)
            {
              v25 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__p, v25);
            }

            v26 = (16 * v22);
            *v26 = *v19;
            v21 = 16 * v22 + 16;
            v27 = (16 * v22 - (v97 - __p));
            memcpy(v26 - (v97 - __p), __p, v97 - __p);
            v28 = __p;
            __p = v27;
            v97 = v21;
            v98 = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v97 = *v19;
            v21 = (v20 + 16);
          }

          v97 = v21;
        }

        else
        {
          *buf = v17 + 4;
          *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v99, v17 + 4, &std::piecewise_construct, buf) + 48) = v18 / (1.0 - v18);
        }
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULNullSpaceLocalizationAlgorithm::localize();
      }

      v29 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        operator new();
      }

      v30 = v17[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v17[2];
          v32 = *v31 == v17;
          v17 = v31;
        }

        while (!v32);
      }

      v17 = v31;
    }

    while (v31 != v102);
  }

  buf[0] = 0;
  v108 = 0;
  LOBYTE(v109) = 0;
  v110[8] = 0;
  *&v110[16] = 0;
  v110[18] = 0;
  v111 = 0u;
  memset(v112, 0, 32);
  v92 = 0;
  v93 = 0uLL;
  v94 = 1;
  std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULLocalizationResultInternal>,false>>(buf, &v92);
  if (v94 == 1 && v92)
  {
    *&v93 = v92;
    operator delete(v92);
  }

  v33 = __p;
  v34 = v97;
  v35 = v99;
  if (__p == v97)
  {
    v41 = 1.0;
    if (v99 != v100)
    {
      do
      {
        v42 = v35[1];
        v43 = v35;
        if (v42)
        {
          do
          {
            v44 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v44 = v43[2];
            v32 = *v44 == v43;
            v43 = v44;
          }

          while (!v32);
        }

        v41 = v41 + *(v35 + 6);
        v35 = v44;
      }

      while (v44 != v100);
    }

    v45 = v106;
    v46 = 1.0 / v41;
    if (v106 >= v107)
    {
      v50 = 0xCCCCCCCCCCCCCCCDLL * ((v106 - *buf) >> 2);
      v51 = v50 + 1;
      if (v50 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      if (0x999999999999999ALL * ((v107 - *buf) >> 2) > v51)
      {
        v51 = 0x999999999999999ALL * ((v107 - *buf) >> 2);
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v107 - *buf) >> 2) >= 0x666666666666666)
      {
        v52 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v52 = v51;
      }

      if (v52)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(buf, v52);
      }

      v69 = 4 * ((v106 - *buf) >> 2);
      v70 = v46;
      *v69 = 0;
      *(v69 + 8) = 0;
      *(v69 + 16) = v70;
      v40 = 20 * v50 + 20;
      v71 = (v69 - (v106 - *buf));
      memcpy(v71, *buf, v106 - *buf);
      v72 = *buf;
      *buf = *&v71;
      v106 = v40;
      v107 = 0;
      if (v72)
      {
        operator delete(v72);
      }
    }

    else
    {
      v47 = v46;
      *v106 = 0;
      *(v45 + 1) = 0;
      v45[4] = v47;
      v40 = (v45 + 5);
    }

    v106 = v40;
    v73 = v99;
    if (v99 != v100)
    {
      do
      {
        v75 = v73[4];
        v74 = v73[5];
        v76 = v46 * *(v73 + 6);
        if (v40 >= v107)
        {
          v78 = 0xCCCCCCCCCCCCCCCDLL * ((v40 - *buf) >> 2);
          v79 = v78 + 1;
          if (v78 + 1 > 0xCCCCCCCCCCCCCCCLL)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v107 - *buf) >> 2) > v79)
          {
            v79 = 0x999999999999999ALL * ((v107 - *buf) >> 2);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v107 - *buf) >> 2) >= 0x666666666666666)
          {
            v80 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v80 = v79;
          }

          if (v80)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(buf, v80);
          }

          v81 = 20 * v78;
          v82 = v76;
          *v81 = v75;
          *(v81 + 8) = v74;
          *(v81 + 16) = v82;
          v40 = 20 * v78 + 20;
          v83 = (v81 - (v106 - *buf));
          memcpy(v83, *buf, v106 - *buf);
          v84 = *buf;
          *buf = *&v83;
          v106 = v40;
          v107 = 0;
          if (v84)
          {
            operator delete(v84);
          }
        }

        else
        {
          v77 = v76;
          *v40 = v75;
          *(v40 + 8) = v74;
          *(v40 + 16) = v77;
          v40 += 20;
        }

        v106 = v40;
        v85 = v73[1];
        if (v85)
        {
          do
          {
            v86 = v85;
            v85 = *v85;
          }

          while (v85);
        }

        else
        {
          do
          {
            v86 = v73[2];
            v32 = *v86 == v73;
            v73 = v86;
          }

          while (!v32);
        }

        v73 = v86;
      }

      while (v86 != v100);
    }
  }

  else
  {
    if (v99 != v100)
    {
      do
      {
        v92 = v35 + 4;
        *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v99, v35 + 4, &std::piecewise_construct, &v92) + 48) = 0;
        v36 = v35[1];
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = v35[2];
            v32 = *v37 == v35;
            v35 = v37;
          }

          while (!v32);
        }

        v35 = v37;
      }

      while (v37 != v100);
      v33 = __p;
      v34 = v97;
    }

    if (v34 != v33)
    {
      v38 = 1.0 / ((v34 - v33) >> 4);
      do
      {
        v92 = v33;
        *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v99, v33, &std::piecewise_construct, &v92) + 48) = v38;
        v33 += 16;
      }

      while (v33 != v34);
    }

    v39 = v106;
    if (v106 >= v107)
    {
      v48 = 0xCCCCCCCCCCCCCCCDLL * ((v106 - *buf) >> 2) + 1;
      if (v48 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      if (0x999999999999999ALL * ((v107 - *buf) >> 2) > v48)
      {
        v48 = 0x999999999999999ALL * ((v107 - *buf) >> 2);
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v107 - *buf) >> 2) >= 0x666666666666666)
      {
        v49 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v49 = v48;
      }

      if (v49)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(buf, v49);
      }

      v53 = 4 * ((v106 - *buf) >> 2);
      v40 = v53 + 20;
      *v53 = 0;
      *(v53 + 8) = 0;
      *(v53 + 16) = 0;
      v54 = (v53 - (v106 - *buf));
      memcpy(v54, *buf, v106 - *buf);
      v55 = *buf;
      *buf = *&v54;
      v106 = v40;
      v107 = 0;
      if (v55)
      {
        operator delete(v55);
      }
    }

    else
    {
      v40 = (v106 + 5);
      *v106 = 0;
      *(v39 + 1) = 0;
      v39[4] = 0.0;
    }

    v106 = v40;
    v56 = v99;
    if (v99 != v100)
    {
      do
      {
        v58 = v56[4];
        v57 = v56[5];
        if (v40 >= v107)
        {
          v60 = 0xCCCCCCCCCCCCCCCDLL * ((v40 - *buf) >> 2);
          v61 = v60 + 1;
          if (v60 + 1 > 0xCCCCCCCCCCCCCCCLL)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v107 - *buf) >> 2) > v61)
          {
            v61 = 0x999999999999999ALL * ((v107 - *buf) >> 2);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v107 - *buf) >> 2) >= 0x666666666666666)
          {
            v62 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v62 = v61;
          }

          if (v62)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(buf, v62);
          }

          v63 = 20 * v60;
          v64 = *(v56 + 6);
          *v63 = v58;
          *(v63 + 8) = v57;
          *(v63 + 16) = v64;
          v40 = 20 * v60 + 20;
          v65 = (v63 - (v106 - *buf));
          memcpy(v65, *buf, v106 - *buf);
          v66 = *buf;
          *buf = *&v65;
          v106 = v40;
          v107 = 0;
          if (v66)
          {
            operator delete(v66);
          }
        }

        else
        {
          v59 = *(v56 + 6);
          *v40 = v58;
          *(v40 + 8) = v57;
          *(v40 + 16) = v59;
          v40 += 20;
        }

        v106 = v40;
        v67 = v56[1];
        if (v67)
        {
          do
          {
            v68 = v67;
            v67 = *v67;
          }

          while (v67);
        }

        else
        {
          do
          {
            v68 = v56[2];
            v32 = *v68 == v56;
            v56 = v68;
          }

          while (!v32);
        }

        v56 = v68;
      }

      while (v68 != v100);
    }
  }

  *v91 = 0;
  *(v91 + 24) = 0;
  v87 = v108;
  if (v108 == 1)
  {
    v88 = v107;
    *v91 = *buf;
    *(v91 + 8) = v40;
    *(v91 + 16) = v88;
    v106 = 0;
    v107 = 0;
    *buf = 0.0;
    *(v91 + 24) = 1;
  }

  v89 = *v110;
  *(v91 + 32) = v109;
  *(v91 + 48) = v89;
  *(v91 + 63) = *&v110[15];
  *(v91 + 72) = v111;
  *(v91 + 88) = v112[0];
  v112[0] = 0;
  v111 = 0uLL;
  *(v91 + 96) = *&v112[1];
  *(v91 + 112) = v112[3];
  memset(&v112[1], 0, 24);
  *(v91 + 120) = 1;
  if (v87 && *buf != 0.0)
  {
    v106 = *buf;
    operator delete(*buf);
  }

  v90 = v95;
  v95 = 0;
  if (v90)
  {
    (*(*v90 + 8))(v90);
  }

  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v99, v100[0]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v101, v102[0]);
  std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(&v103, v104[0]);
}

void sub_25904F944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  ULLocalizationResult::~ULLocalizationResult(va);
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a21, a22);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a24, a25);
  std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(&a27, a28);
  _Unwind_Resume(a1);
}

uint64_t ULNullSpaceLocalizationAlgorithm::createReducedDistancesMap@<X0>(CLMicroLocationLocalizationSettings *this@<X2>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2 + 1;
  v6 = *a2;
  if (*a2 == a2 + 1)
  {
    v13 = 0.0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = v6[1];
      v10 = v6;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v8 += v6[8];
      v6 = v11;
    }

    while (v11 != v7);
    v13 = v8;
  }

  MinPercentileForReducerFunction = CLMicroLocationLocalizationSettings::getMinPercentileForReducerFunction(this);
  MaxPercentileForReducerFunction = CLMicroLocationLocalizationSettings::getMaxPercentileForReducerFunction(this);
  v16 = +[ULDefaultsSingleton shared];
  v17 = [v16 defaultsDictionary];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullSpaceDistanceReductionFunction"];
  v19 = [v17 objectForKey:v18];
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [v19 unsignedIntValue];
  }

  else
  {
    v20 = [&unk_286A716E8 unsignedIntValue];
  }

  v21 = v20;

  ULAlgorithms::createReducerFunction<std::multiset<double>,double>(v21, 0, v31, MinPercentileForReducerFunction, MaxPercentileForReducerFunction);
  a3[2] = 0;
  a3[1] = 0;
  *a3 = (a3 + 1);
  v22 = *a2;
  if (*a2 != v7)
  {
    do
    {
      std::multiset<double>::multiset[abi:ne200100](v29, (v22 + 6));
      if (!v32)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v23 = (*(*v32 + 48))(v32, v29);
      v24 = v22[8];
      v30 = v22 + 4;
      v25 = std::__tree<std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(a3, v22 + 4, &std::piecewise_construct, &v30);
      *(v25 + 48) = v23;
      *(v25 + 56) = v24 / v13;
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v29, v29[1]);
      v26 = v22[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v22[2];
          v12 = *v27 == v22;
          v22 = v27;
        }

        while (!v12);
      }

      v22 = v27;
    }

    while (v27 != v7);
  }

  return std::__function::__value_func<double ()(std::multiset<double>)>::~__value_func[abi:ne200100](v31);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_14()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t std::__tree<std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void ULHomeSlamLocalizer::localize(ULHomeSlamLocalizer *this@<X0>, const ULModel *a2@<X1>, const CLMicroLocationFingerprint *a3@<X2>, ULHomeSlamLocalizerState *a4@<X3>, ULHomeSlamModel *a5@<X4>, uint64_t a6@<X8>)
{
  if ((*(a2 + 520) & 1) == 0)
  {
    ULHomeSlamLocalizer::localize(this);
  }

  if (ULHomeSlamModel::getWorkMode((a2 + 312)))
  {
    if (*(a2 + 520))
    {
      ULHomeSlamLocalizer::localize_geoWorkMode(v11, (a2 + 312), a3, a4, a5);
      std::optional<ULLocalizationResult>::optional[abi:ne200100]<ULLocalizationResult,0>(a6, v11);
      goto LABEL_7;
    }

LABEL_16:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((*(a2 + 520) & 1) == 0)
  {
    goto LABEL_16;
  }

  ULHomeSlamLocalizer::localize_clusteringWorkMode(v11, (a2 + 312), a3, a4);
  std::optional<ULLocalizationResult>::optional[abi:ne200100]<ULLocalizationResult,0>(a6, v11);
LABEL_7:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v12 == 1)
  {
    if (v11[0])
    {
      v11[1] = v11[0];
      operator delete(v11[0]);
    }
  }
}

void sub_259050128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ULLocalizationResult::~ULLocalizationResult(va);
  _Unwind_Resume(a1);
}

void ULHomeSlamLocalizer::localize_clusteringWorkMode(uint64_t *__return_ptr a1@<X8>, const ULHomeSlamModel *a2@<X1>, const CLMicroLocationFingerprint *a3@<X2>, const ULHomeSlamSettings *a4@<X3>)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 65) = *(a3 + 192);
  Rois = ULHomeSlamModel::getRois(a2);
  ULHomeSlamProbabilityVectorAlgorithm::localize(Rois, a3, a4, &v34);
  __p = 0;
  v32 = 0;
  v33 = 0;
  v8 = v34;
  v9 = v35;
  if (v34 == v35)
  {
    v11 = 0.0;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v12 = v8[1];
      if (v10 >= v33)
      {
        v13 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __p) >> 2);
        v14 = v13 + 1;
        if (v13 + 1 > 0xCCCCCCCCCCCCCCCLL)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        if (0x999999999999999ALL * ((v33 - __p) >> 2) > v14)
        {
          v14 = 0x999999999999999ALL * ((v33 - __p) >> 2);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v33 - __p) >> 2) >= 0x666666666666666)
        {
          v15 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(&__p, v15);
        }

        v16 = 4 * ((v10 - __p) >> 2);
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = v12;
        v10 = 20 * v13 + 20;
        memcpy((20 * v13 - (v32 - __p)), __p, v32 - __p);
        v17 = __p;
        __p = (20 * v13 - (v32 - __p));
        v32 = v10;
        v33 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 8) = 0;
        *(v10 + 16) = v12;
        v10 += 20;
      }

      v32 = v10;
      v11 = v11 + v8[1];
      v8 += 2;
    }

    while (v8 != v9);
  }

  std::optional<std::vector<ULLocalizationResultInternal>>::operator=[abi:ne200100]<std::vector<ULLocalizationResultInternal>&,void>(a1, &__p);
  v18 = +[ULDefaultsSingleton shared];
  v19 = [v18 defaultsDictionary];

  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullClusterThresholdForLowConfidence"];
  v21 = [v19 objectForKey:v20];
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v21 floatValue];
  }

  else
  {
    [&unk_286A72CF0 floatValue];
  }

  v23 = v22;
  v24 = 1.0 - v11;

  *(a1 + 64) = v24 > v23;
  v25 = +[ULDefaultsSingleton shared];
  v26 = [v25 defaultsDictionary];

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamHighNullClusterThreshold"];
  v28 = [v26 objectForKey:v27];
  if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v28 floatValue];
  }

  else
  {
    [&unk_286A72D00 floatValue];
  }

  v30 = v29;

  *(a1 + 66) = v24 > v30;
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_2590504B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  ULLocalizationResult::~ULLocalizationResult(v13);
  _Unwind_Resume(a1);
}

__n128 std::optional<ULLocalizationResult>::optional[abi:ne200100]<ULLocalizationResult,0>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  v2 = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = *(a2 + 96);
  *(a1 + 96) = result;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 1;
  return result;
}

void ULHomeSlamLocalizer::localize_geoWorkMode(uint64_t *__return_ptr a1@<X8>, const ULHomeSlamModel *a2@<X1>, const CLMicroLocationFingerprint *a3@<X2>, ULHomeSlamLocalizerState *a4@<X3>, ULHomeSlamModel *a5@<X4>)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = a1 + 4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 65) = *(a3 + 192);
  ULHomeSlamLocalizationPipeline::ingestValidFingerprintUpdate(a3, a4, a2, a5, v7);
  *(a1 + 64) = v8;
  *v6 = v7[0];
  *(v6 + 9) = *(v7 + 9);
  if (a1 + 12 != &__p)
  {
    std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(a1 + 12, __p, v10, 0xCCCCCCCCCCCCCCCDLL * ((v10 - __p) >> 2));
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_2590506B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  ULLocalizationResult::~ULLocalizationResult(v15);
  _Unwind_Resume(a1);
}

void ULHomeSlamLocalizer::localize(const ULModel *a1@<X1>, ULOdometryStatus *a2@<X2>, const ULOdometryStatus *a3@<X3>, const ULHomeSlamModel *a4@<X4>, _BYTE *a5@<X8>)
{
  v9 = a2;
  if (*(a1 + 520))
  {
    LOBYTE(v15[0]) = 0;
    v16 = 0;
    v17[0] = 0;
    v17[24] = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    if (ULHomeSlamModel::getWorkMode((a1 + 312)))
    {
      if ((*(a1 + 520) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULHomeSlamLocalizationPipeline::ingestValidIOUpdate(v9, a3, (a1 + 312), a4, buf);
      LOBYTE(v18) = v12;
      *v17 = *buf;
      *&v17[9] = *&buf[9];
      std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(&v21 + 1, __p, v14, 0xCCCCCCCCCCCCCCCDLL * ((v14 - __p) >> 2));
      std::optional<ULLocalizationResult>::optional[abi:ne200100]<ULLocalizationResult,0>(a5, v15);
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        _CLLogObjectForCategory_MicroLocation_Default();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_INFO, "got IO localization for homeslam model without geo model, return nil", buf, 2u);
      }

      *a5 = 0;
      a5[120] = 0;
    }

    if (*(&v21 + 1))
    {
      *&v22 = *(&v21 + 1);
      operator delete(*(&v21 + 1));
    }

    if (v20)
    {
      *(&v20 + 1) = v20;
      operator delete(v20);
    }

    if (v16 == 1)
    {
      if (v15[0])
      {
        v15[1] = v15[0];
        operator delete(v15[0]);
      }
    }
  }

  else
  {
    ULHomeSlamLocalizer::localize(v15);

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULHomeSlamLocalizer.mm", 36, "localize");
    __break(1u);
  }
}

void sub_2590508D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (__p)
  {
    operator delete(__p);
  }

  ULLocalizationResult::~ULLocalizationResult(va);

  _Unwind_Resume(a1);
}

void ULHomeSlamLocalizer::ioError(uint64_t a1, uint64_t a2, ULHomeSlamLocalizationPipeline *a3)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  v6 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    *v8 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "homelsam localizer got io error", v8, 2u);
  }

  if ((*(a2 + 520) & 1) == 0)
  {
    ULHomeSlamLocalizer::ioError(v6);
  }

  ULHomeSlamLocalizationPipeline::resetParticles(a3, (a2 + 312), v7);
}

void ULHomeSlamLocalizer::reset(ULHomeSlamLocalizer *this@<X0>, const ULModel *a2@<X1>, ULHomeSlamLocalizerState *a3@<X8>)
{
  if ((*(a2 + 520) & 1) == 0)
  {
    ULHomeSlamLocalizer::reset(this);
  }

  ULHomeSlamLocalizationPipeline::initState((a2 + 312), a3);
}

uint64_t std::optional<std::vector<ULLocalizationResultInternal>>::operator=[abi:ne200100]<std::vector<ULLocalizationResultInternal>&,void>(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2));
    *(a1 + 24) = 1;
  }

  return a1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_15()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULLocalizationController::reset(uint64_t a1, const ULModel ***a2, unint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if (*(*v3 + 304) == *(*v3 + 520))
      {
        ULLocalizationController::reset(a1);
      }

      if (*(*v3 + 520))
      {
        ULHomeSlamLocalizer::reset((a1 + 9), *v3, v14);
        v6 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(*v3 + 76, &v13);
        v7 = v6;
        if (!v6)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        ULHomeSlamSettings::operator=((v6 + 3), v14);
        v8 = *(v15 + 9);
        *(v7 + 24) = v15[0];
        *(v7 + 393) = v8;
        v9 = v7[52];
        if (v9)
        {
          v7[53] = v9;
          operator delete(v9);
          v7[52] = 0;
          v7[53] = 0;
          v7[54] = 0;
        }

        *(v7 + 26) = v16;
        v7[54] = v17;
        v17 = 0;
        v16 = 0uLL;
        v10 = *&v20[13];
        v12 = v19;
        v11 = *v20;
        *(v7 + 55) = v18;
        *(v7 + 57) = v12;
        *(v7 + 59) = v11;
        *(v7 + 485) = v10;
        ULHomeSlamSettings::~ULHomeSlamSettings(v14);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }
}

void sub_259050C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ULHomeSlamLocalizerState::~ULHomeSlamLocalizerState(va);
  _Unwind_Resume(a1);
}

uint64_t ULLocalizationController::localize@<X0>(CLMicroLocationFingerprintConfiguration *a1@<X0>, const ULModel ***a2@<X1>, ULScanningEventDO *a3@<X2>, unint64_t *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(&v12);
  CLMicroLocationFingerprint::create(v20, a3, &v12);
  ULLocalizationController::getAssociatedAccessPointInfo(v10, a3);
  std::__optional_copy_base<CLMicroLocationFingerprint,false>::__optional_copy_base[abi:ne200100](v14, v20);
  std::__optional_copy_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__optional_copy_base[abi:ne200100](v9, v10);
  ULLocalizationController::localizeAllModels(a1, a2, v14, v9, a3, 1, a4);
  if (v9[32] == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v9);
  }

  if (v19[24] == 1)
  {
    v13 = v19;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v13);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v16);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v15);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v14);
  }

  if (v11 == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v10);
  }

  if (v25[24] == 1)
  {
    v10[0] = v25;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v10);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v22);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v21);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v20);
  }

  return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v12.var1);
}

void sub_259050E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a14 == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(&a10);
  }

  std::optional<CLMicroLocationFingerprint>::~optional(&a29);
  if (a20 == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(&a16);
  }

  std::optional<CLMicroLocationFingerprint>::~optional(&a58);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a23);
  _Unwind_Resume(a1);
}

void ULLocalizationController::getAssociatedAccessPointInfo(uint64_t *__return_ptr a1@<X8>, const CLMacAddress *a2@<X1>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 32) = 0;
  if (LOBYTE(a2[24].var0) == 1 && CLMacAddress::isValid(&a2[22], a2))
  {
    if ((a2[24].var0 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v11.var0 = a2[22].var0;
    var0 = a2[23].var0;
    v5 = a2[11].var0;
    v6 = a2[12].var0;
    if (v5 != v6)
    {
      v7 = (v5 + 16);
      do
      {
        if (CLMacAddress::operator==(v7, &v11))
        {
          if (var0 <= *(v7 - 2))
          {
            var0 = *(v7 - 2);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULLocalizationController::getAssociatedAccessPointInfo();
          }

          v8 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v13 = 2082;
            v14 = "";
            v15 = 1026;
            v16 = var0;
            _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocalizationController, setting associated AP's RSSI based on scan data, RSSI:%{public}d}", buf, 0x18u);
          }
        }

        v9 = v7 + 2;
        v7 += 4;
      }

      while (v9 != v6);
    }

    CLMicroLocationProto::AssociatedAccessPointInfo::AssociatedAccessPointInfo(buf);
    v17 = 1;
    std::__optional_storage_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>>(a1, buf);
    if (v17 == 1)
    {
      CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(buf);
    }

    if ((a1[4] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *(a1 + 6) |= 2u;
    *(a1 + 4) = var0;
    v10 = CLMacAddress::toUint64(&v11);
    *(a1 + 6) |= 1u;
    a1[1] = v10;
  }
}

uint64_t ULLocalizationController::localizeAllModels@<X0>(uint64_t result@<X0>, const ULModel ***a2@<X1>, uint64_t a3@<X2>, const CLMicroLocationProto::AssociatedAccessPointInfo *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unint64_t *a7@<X8>)
{
  v7 = a7;
  v99 = *MEMORY[0x277D85DE8];
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v92 = 0;
  v8 = *a2;
  v74 = a2[1];
  if (*a2 != v74)
  {
    v10 = result;
    v11 = __p;
    do
    {
      v12 = *v8;
      if (*(*v8 + 304) == *(*v8 + 520))
      {
        ULLocalizationController::localizeAllModels(buf);

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULLocalizationController.mm", 79, "localizeAllModels");
        goto LABEL_121;
      }

      if (*(*v8 + 304) && *(v12 + 600) == 1)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULLocalizationController::getAssociatedAccessPointInfo();
        }

        v13 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }
      }

      memset(__p, 0, sizeof(__p));
      v91 = 1065353216;
      if (*(a3 + 224) == 1)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULLocalizationController::getAssociatedAccessPointInfo();
        }

        v14 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a3 + 16);
          if (v15)
          {
            v16 = 0;
            v17 = *(a3 + 16);
            do
            {
              if (*(v17 + 6) == 1)
              {
                ++v16;
              }

              v17 = *v17;
            }

            while (v17);
            v18 = 0;
            v19 = *(a3 + 16);
            do
            {
              if (*(v19 + 6) == 5)
              {
                ++v18;
              }

              v19 = *v19;
            }

            while (v19);
            v20 = 0;
            do
            {
              if (*(v15 + 6) == 6)
              {
                ++v20;
              }

              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            v18 = 0;
            v16 = 0;
            v20 = 0;
          }

          v24 = *(a3 + 24);
          LODWORD(__src) = 1;
          v25 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((a3 + 104), &__src);
          if (v25)
          {
            v26 = *(v25 + 4) - *(v25 + 3);
          }

          else
          {
            v26 = 0.0;
          }

          v27 = *(a3 + 144);
          v28 = *(a3 + 192);
          v29 = *(a3 + 152);
          *buf = 68291075;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2049;
          *&buf[20] = v24;
          *&buf[28] = 2049;
          *&buf[30] = v16;
          *&buf[38] = 2049;
          *&buf[40] = v18;
          *&buf[48] = 2049;
          *&buf[50] = v20;
          *&buf[58] = 2049;
          *&buf[60] = v26;
          *&buf[68] = 1025;
          *&buf[70] = v28;
          *&buf[74] = 1025;
          *&buf[76] = v27;
          LOWORD(v95) = 1025;
          *(&v95 + 2) = v29;
          _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:testFingerprint, size:%{private}lu, NumWiFiMeasurements:%{private}lu, NumBLEMeasurements:%{private}lu, NumUWBMeasurements:%{private}lu, WiFi RSSI duration_s:%{private}.09f, inMotion:%{private}d, start:%{private}d, end:%{private}d}", buf, 0x56u);
          v7 = a7;
        }

        if (*(v12 + 304) != 1)
        {
          if (*(v12 + 520) != 1)
          {
            goto LABEL_100;
          }

          __src = 0;
          v80 = 0;
          v81 = 0;
          v33 = *(*v8 + 78);
          if (v33)
          {
            v34 = 0;
            do
            {
              v35 = v33[2];
              if (v34 >= v81)
              {
                v36 = __src;
                v37 = v34 - __src;
                v38 = (v34 - __src) >> 3;
                v39 = v38 + 1;
                if ((v38 + 1) >> 61)
                {
                  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
                }

                v40 = v81 - __src;
                if ((v81 - __src) >> 2 > v39)
                {
                  v39 = v40 >> 2;
                }

                v41 = v40 >= 0x7FFFFFFFFFFFFFF8;
                v42 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v41)
                {
                  v42 = v39;
                }

                if (v42)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v42);
                }

                v43 = (v34 - __src) >> 3;
                v44 = (8 * v38);
                v45 = (8 * v38 - 8 * v43);
                *v44 = v35;
                v34 = (v44 + 1);
                memcpy(v45, v36, v37);
                v46 = __src;
                __src = v45;
                v80 = v34;
                v81 = 0;
                if (v46)
                {
                  operator delete(v46);
                }

                v7 = a7;
              }

              else
              {
                *v34 = v35;
                v34 += 8;
              }

              v80 = v34;
              v33 = *v33;
            }

            while (v33);
          }

          v47 = v92;
          v48 = +[ULDefaultsSingleton shared];
          v49 = [v48 defaultsDictionary];

          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSharedInputsBetweenConnectedDevices"];
          v51 = [v49 objectForKey:v50];
          if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v52 = [v51 BOOLValue];
          }

          else
          {
            v52 = [MEMORY[0x277CBEC28] BOOLValue];
          }

          v53 = v52;

          if (v53)
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            std::vector<ULDeviceClass>::__init_with_size[abi:ne200100]<ULDeviceClass*,ULDeviceClass*>(&v76, __src, v80, (v80 - __src) >> 3);
          }

          else
          {
            *buf = v47;
            v77 = 0;
            v78 = 0;
            v76 = 0;
            std::vector<ULDeviceClass>::__init_with_size[abi:ne200100]<ULDeviceClass const*,ULDeviceClass const*>(&v76, buf, &buf[8], 1uLL);
          }

          v55 = v76;
          v54 = v77;
          if (v76 != v77)
          {
            do
            {
              if (!std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::find<ULDeviceClass>(*v8 + 76, v55))
              {
                if (onceToken_MicroLocation_Default != -1)
                {
                  goto LABEL_122;
                }

                while (1)
                {
                  v61 = logObject_MicroLocation_Default;
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
                  {
                    v62 = ULDeviceClassToString();
                    v63 = v62;
                    v64 = [v62 UTF8String];
                    *buf = 68289795;
                    *&buf[8] = 2082;
                    *(v11 + 74) = "";
                    *&buf[18] = 2082;
                    *(v11 + 84) = v64;
                    *&buf[28] = 2082;
                    *(v11 + 94) = "assert";
                    *&buf[38] = 2081;
                    *&buf[40] = "modelAndStates->states.count(deviceIdentifier) > 0";
                    _os_log_impl(&dword_258FE9000, v61, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:There is no localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
                  }

                  if (onceToken_MicroLocation_Default != -1)
                  {
                    ULLocalizationController::getAssociatedAccessPointInfo();
                  }

                  v65 = logObject_MicroLocation_Default;
                  if (os_signpost_enabled(v65))
                  {
                    v66 = ULDeviceClassToString();
                    v67 = v66;
                    v68 = [v66 UTF8String];
                    *buf = 68289795;
                    *&buf[8] = 2082;
                    *(v11 + 74) = "";
                    *&buf[18] = 2082;
                    *(v11 + 84) = v68;
                    *&buf[28] = 2082;
                    *(v11 + 94) = "assert";
                    *&buf[38] = 2081;
                    *&buf[40] = "modelAndStates->states.count(deviceIdentifier) > 0";
                    _os_signpost_emit_with_name_impl(&dword_258FE9000, v65, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "There is no localizerState for the device ", "{msg%{public}.0s:There is no localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
                  }

                  if (onceToken_MicroLocation_Default != -1)
                  {
                    ULLocalizationController::getAssociatedAccessPointInfo();
                  }

                  v69 = logObject_MicroLocation_Default;
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                  {
                    v11 = ULDeviceClassToString();
                    v70 = v11;
                    ULLocalizationController::localizeAllModels([v11 UTF8String], buf, v69, v11);
                  }

                  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULLocalizationController.mm", 119, "localizeAllModels");
LABEL_121:
                  __break(1u);
LABEL_122:
                  ULLocalizationController::getAssociatedAccessPointInfo();
                }
              }

              v56 = *v8;
              v57 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(*v8 + 76, v55);
              if (!v57)
              {
                std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
              }

              ULHomeSlamLocalizer::localize((v10 + 9), v56, a3, (v57 + 3), 0, buf);
              v93 = v55;
              v58 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(__p, v55, &std::piecewise_construct, &v93);
              std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>((v58 + 3), buf);
              if (v98 == 1)
              {
                if (v96)
                {
                  *(&v96 + 1) = v96;
                  operator delete(v96);
                }

                if (*&buf[72])
                {
                  *&v95 = *&buf[72];
                  operator delete(*&buf[72]);
                }

                if (buf[24] == 1 && *buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }
              }

              ++v55;
            }

            while (v55 != v54);
            v55 = v76;
          }

          if (v55)
          {
            v77 = v55;
            operator delete(v55);
          }

          v23 = __src;
          if (!__src)
          {
            goto LABEL_100;
          }

          v80 = __src;
          goto LABEL_99;
        }

        v30 = *v8;
        std::__optional_copy_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__optional_copy_base[abi:ne200100](v89, a4);
        ULRfClusterLocalizer::localize(buf, v30, v12 + 536, a3, v89, v10 + 8);
        if (v89[32] == 1)
        {
          CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v89);
        }

        __src = &v92;
        v31 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(__p, &v92, &std::piecewise_construct, &__src);
        std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>((v31 + 3), buf);
        if (a6)
        {
          v32 = std::__optional_copy_base<ULLocalizationResult,false>::__optional_copy_base[abi:ne200100](v82, buf);
          ULLocalizationController::sendLocalizationCoreAnalyticsEvent(v32, v12, v82, a3, a5);
          if (v88 == 1)
          {
            if (v86)
            {
              v87 = v86;
              operator delete(v86);
            }

            if (v84)
            {
              v85 = v84;
              operator delete(v84);
            }

            if (v83 == 1 && v82[0])
            {
              v82[1] = v82[0];
              operator delete(v82[0]);
            }
          }
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULLocalizationController::getAssociatedAccessPointInfo();
        }

        v21 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocalizationController fingerprint was not created}", buf, 0x12u);
        }

        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        memset(buf, 0, sizeof(buf));
        v98 = 1;
        buf[64] = 1;
        __src = &v92;
        v22 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(__p, &v92, &std::piecewise_construct, &__src);
        std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>((v22 + 3), buf);
      }

      if (v98 != 1)
      {
        goto LABEL_100;
      }

      if (v96)
      {
        *(&v96 + 1) = v96;
        operator delete(v96);
      }

      if (*&buf[72])
      {
        *&v95 = *&buf[72];
        operator delete(*&buf[72]);
      }

      if (buf[24] != 1)
      {
        goto LABEL_100;
      }

      v23 = *buf;
      if (!*buf)
      {
        goto LABEL_100;
      }

      *&buf[8] = *buf;
LABEL_99:
      operator delete(v23);
LABEL_100:
      v59 = v7[1];
      if (v59 >= v7[2])
      {
        v60 = std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__emplace_back_slow_path<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>&>(v7, __p);
      }

      else
      {
        std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(v7[1], __p);
        v60 = v59 + 40;
      }

      v7[1] = v60;
      result = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(__p);
      v8 += 2;
    }

    while (v8 != v74);
  }

  return result;
}

void sub_259051BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(&a53);
  a53 = a25;
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&a53);
  _Unwind_Resume(a1);
}

void ULLocalizationController::localizeAllModels(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t *a5@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v9 = a4;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v44 = 0;
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    while (1)
    {
      v12 = *v10;
      v13 = *(*v10 + 520);
      if (*(*v10 + 304) == v13)
      {
        break;
      }

      memset(v42, 0, sizeof(v42));
      v43 = 1065353216;
      LOBYTE(v35[0]) = 0;
      v41 = 0;
      if (v13)
      {
        if (!std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::find<ULDeviceClass>((v12 + 608), &v44))
        {
          v21 = _CLLogObjectForCategory_MicroLocation_Default(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            v22 = ULDeviceClassToString();
            v23 = v22;
            v24 = [v22 UTF8String];
            *buf = 68289795;
            *&buf[4] = 0;
            *v46 = 2082;
            *&v46[2] = "";
            v47 = 2082;
            v48 = v24;
            v49 = 2082;
            v50 = "assert";
            v51 = 2081;
            v52 = "modelAndStates->states.count(odometrySourceDeviceClass) > 0";
            _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Trying to use HomeSlam localizer without localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          v26 = _CLLogObjectForCategory_MicroLocation_Default(v25);
          if (os_signpost_enabled(v26))
          {
            v27 = ULDeviceClassToString();
            v28 = v27;
            v29 = [v27 UTF8String];
            *buf = 68289795;
            *&buf[4] = 0;
            *v46 = 2082;
            *&v46[2] = "";
            v47 = 2082;
            v48 = v29;
            v49 = 2082;
            v50 = "assert";
            v51 = 2081;
            v52 = "modelAndStates->states.count(odometrySourceDeviceClass) > 0";
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trying to use HomeSlam localizer without localizerState for the device ", "{msg%{public}.0s:Trying to use HomeSlam localizer without localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          v31 = _CLLogObjectForCategory_MicroLocation_Default(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = ULDeviceClassToString();
            v33 = v32;
            ULLocalizationController::localizeAllModels([v32 UTF8String], buf, v31, v32);
          }

          abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULLocalizationController.mm", 149, "localizeAllModels");
LABEL_42:
          __break(1u);
        }

        if (v9)
        {
          v14 = *v10;
          v15 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>((*v10 + 608), &v44);
          if (!v15)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          ULHomeSlamLocalizer::ioError(a1 + 9, v14, (v15 + 3));
          buf[0] = 0;
          BYTE4(v48) = 0;
          BYTE2(v50) = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 1;
          std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v35, buf);
        }

        else
        {
          v16 = *v10;
          v17 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>((*v10 + 608), &v44);
          if (!v17)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          ULHomeSlamLocalizer::localize(v16, v34, (v17 + 3), 0, buf);
          std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v35, buf);
        }

        if (v59 == 1)
        {
          if (*(&v57 + 1))
          {
            *&v58 = *(&v57 + 1);
            operator delete(*(&v57 + 1));
          }

          if (v56)
          {
            *(&v56 + 1) = v56;
            operator delete(v56);
          }

          if (BYTE4(v48) == 1 && *buf)
          {
            *v46 = *buf;
            operator delete(*buf);
          }
        }

        *buf = &v44;
        v18 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(v42, &v44, &std::piecewise_construct, buf);
        std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>((v18 + 3), v35);
      }

      v19 = a5[1];
      if (v19 >= a5[2])
      {
        v20 = std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__emplace_back_slow_path<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>&>(a5, v42);
      }

      else
      {
        std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(a5[1], v42);
        v20 = v19 + 40;
      }

      a5[1] = v20;
      if (v41 == 1)
      {
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

        if (v36 == 1 && v35[0])
        {
          v35[1] = v35[0];
          operator delete(v35[0]);
        }
      }

      std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v42);
      v10 += 2;
      if (v10 == v11)
      {
        goto LABEL_31;
      }
    }

    ULLocalizationController::localizeAllModels(v35);

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULLocalizationController.mm", 143, "localizeAllModels");
    goto LABEL_42;
  }

LABEL_31:
}

void sub_25905227C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::optional<ULLocalizationResult>::~optional(&a13);
  std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(va);
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void ULLocalizationController::sendLocalizationCoreAnalyticsEvent(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v14 = v13;

  if (v14)
  {
    v15 = *(a4 + 16);
    if (v15)
    {
      v16 = 0;
      v17 = *(a4 + 16);
      do
      {
        if (*(v17 + 6) == 1)
        {
          ++v16;
        }

        v17 = *v17;
      }

      while (v17);
      v18 = 0;
      v19 = v15;
      do
      {
        if (*(v19 + 6) == 5)
        {
          ++v18;
        }

        v19 = *v19;
      }

      while (v19);
      v20 = 0;
      do
      {
        if (*(v15 + 6) == 6)
        {
          ++v20;
        }

        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v22 = 0.0;
    v23 = 0.0;
    if (*(a3 + 120) == 1)
    {
      std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](&buf, a3);
      if (v36 == 1)
      {
        if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
        {
          v24 = 0.0;
          for (i = buf.__r_.__value_.__r.__words[0]; i != buf.__r_.__value_.__l.__size_; i += 20)
          {
            v26 = *(i + 16);
            v23 = v26;
            if (*i == 0)
            {
              v22 = v26;
            }

            else if (v24 < v23)
            {
              goto LABEL_34;
            }

            v23 = v24;
LABEL_34:
            v24 = v23;
          }
        }

        if (buf.__r_.__value_.__r.__words[0])
        {
          buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }
    }

    CLMicroLocationProtobufHelper::ModelTypeToDomain(a2[1], &buf);
    v27 = cl::chrono::CFAbsoluteTimeClock::now();
    if (*a2 == 4)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
    }

    else
    {
      v28 = 0;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = buf;
    }

    v31 = v22;
    v32 = v16;
    v33 = v27;
    v34 = a5;
    v29 = v28;
    AnalyticsSendEventLazy();

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v21 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "ULLocalizationController, sendLocalizationCoreAnalyticsEvent, not sending event because sending to CoreAnalytics is disabled", &buf, 2u);
    }
  }
}

id ___ZNK24ULLocalizationController34sendLocalizationCoreAnalyticsEventERK20CLMicroLocationModelNSt3__18optionalI20ULLocalizationResultEERK26CLMicroLocationFingerprintRK17ULScanningEventDO_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"bleFingerprintSize"];

  if (*(a1 + 40) >= 0x19uLL)
  {
    v4 = 25;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
  [v2 setObject:v5 forKeyedSubscript:@"bleFingerprintSizeBounded"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 48)];
  [v2 setObject:v6 forKeyedSubscript:@"uwbFingerprintSize"];

  if (*(a1 + 48) >= 0x19uLL)
  {
    v7 = 25;
  }

  else
  {
    v7 = *(a1 + 48);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
  [v2 setObject:v8 forKeyedSubscript:@"uwbFingerprintSizeBounded"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  [v2 setObject:v9 forKeyedSubscript:@"maxClusterProbability"];

  v10 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v10 = *v10;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  [v2 setObject:v11 forKeyedSubscript:@"modelType"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 88)];
  [v2 setObject:v12 forKeyedSubscript:@"nullspaceClusterProbability"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 96)];
  [v2 setObject:v13 forKeyedSubscript:@"wifiFingerprintSize"];

  if (*(a1 + 96) >= 0x64uLL)
  {
    v14 = 100;
  }

  else
  {
    v14 = *(a1 + 96);
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v14];
  [v2 setObject:v15 forKeyedSubscript:@"wifiFingerprintSizeBounded"];

  [v2 setObject:&unk_286A71700 forKeyedSubscript:@"localizationTriggerEventCount"];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 104) - *(*(a1 + 112) + 48)];
  [v2 setObject:v16 forKeyedSubscript:@"localizationRunTime"];

  v17 = *(a1 + 32);
  if (v17)
  {
    [v2 setObject:v17 forKeyedSubscript:@"roiProbability"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 112) + 59)];
  [v2 setObject:v18 forKeyedSubscript:@"bleRssiSamplesIgnore"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 112) + 58)];
  [v2 setObject:v19 forKeyedSubscript:@"uwbRangeSamplesIgnore"];

  return v2;
}

void __copy_helper_block_ea8_64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v2 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v2;
  }
}

void __destroy_helper_block_ea8_64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_16()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULHomeSlamSettings::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = v4;
  v5 = *(a2 + 4);
  *(a1 + 40) = *(a2 + 10);
  *(a1 + 32) = v5;
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 48, a2 + 3);
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 72, (a2 + 72));
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 96, a2 + 6);
  v6 = *(a2 + 15);
  *(a1 + 128) = *(a2 + 32);
  *(a1 + 120) = v6;
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 136, (a2 + 136));
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 160, a2 + 10);
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 184, (a2 + 184));
  v7 = a2[13];
  v8 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v8;
  *(a1 + 208) = v7;
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator=[abi:ne200100](a1 + 256, (a2 + 16));
  v9 = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a1 + 288) = v9;
  v10 = *(a2 + 39);
  *(a2 + 39) = 0;
  v11 = *(a1 + 312);
  *(a1 + 312) = v10;

  v12 = a2[20];
  v13 = a2[21];
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v12;
  *(a1 + 336) = v13;
  return a1;
}

CLMicroLocationFingerprint *std::__optional_copy_base<CLMicroLocationFingerprint,false>::__optional_copy_base[abi:ne200100](CLMicroLocationFingerprint *this, const CLMicroLocationFingerprint *a2)
{
  *this = 0;
  *(this + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    CLMicroLocationFingerprint::CLMicroLocationFingerprint(this, a2);
    *(this + 224) = 1;
  }

  return this;
}

void sub_259052C14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 224) == 1)
  {
    CLMicroLocationFingerprint::~CLMicroLocationFingerprint(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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

void std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>(uint64_t result, uint64_t a2)
{
  if (*(result + 120) == *(a2 + 120))
  {
    if (*(result + 120))
    {
      std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<ULLocalizationResultInternal>,false> const&>(result, a2);
      v4 = *(a2 + 32);
      v5 = *(a2 + 48);
      *(result + 63) = *(a2 + 63);
      *(result + 32) = v4;
      *(result + 48) = v5;
      if (result != a2)
      {
        std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((result + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
        v6 = *(a2 + 96);
        v7 = *(a2 + 104);

        std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>((result + 96), v6, v7, 0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 2));
      }
    }
  }

  else if (*(result + 120))
  {

    std::__optional_destruct_base<ULLocalizationResult,false>::reset[abi:ne200100](result);
  }

  else
  {

    std::__optional_storage_base<ULLocalizationResult,false>::__construct[abi:ne200100]<ULLocalizationResult const&>(result, a2);
  }
}

void std::__optional_destruct_base<ULLocalizationResult,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      *(a1 + 104) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      *(a1 + 80) = v3;
      operator delete(v3);
    }

    if (*(a1 + 24) == 1)
    {
      v4 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v4;
        operator delete(v4);
      }
    }

    *(a1 + 120) = 0;
  }
}

uint64_t *std::__optional_storage_base<ULLocalizationResult,false>::__construct[abi:ne200100]<ULLocalizationResult const&>(uint64_t a1, uint64_t a2)
{
  v4 = std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](a1, a2);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 63);
  v4[9] = 0;
  *(v4 + 63) = v7;
  *(v4 + 3) = v6;
  *(v4 + 2) = v5;
  v4[10] = 0;
  v4[11] = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v4 + 9, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>((a1 + 96), *(a2 + 96), *(a2 + 104), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 104) - *(a2 + 96)) >> 2));
  *(a1 + 120) = 1;
  return result;
}

void sub_259052ED8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  if (*(v1 + 24) == 1)
  {
    v5 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v5;
      operator delete(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<ULLocalizationResultInternal>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0xCCCCCCCCCCCCCCCDLL * (&v3[-*a2] >> 2);
      v5 = *a2;

      std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(a1, v5, v3, v4);
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
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 2));
    *(a1 + 24) = 1;
  }
}

_BYTE *std::__optional_copy_base<ULLocalizationResult,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[120] = 0;
  if (*(a2 + 120) == 1)
  {
    std::__optional_storage_base<ULLocalizationResult,false>::__construct[abi:ne200100]<ULLocalizationResult const&>(a1, a2);
  }

  return a1;
}

void sub_259053020(_Unwind_Exception *exception_object)
{
  if (*(v1 + 120) == 1)
  {
    ULLocalizationResult::~ULLocalizationResult(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<ULDeviceClass>::__init_with_size[abi:ne200100]<ULDeviceClass*,ULDeviceClass*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590530A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<ULDeviceClass>::__init_with_size[abi:ne200100]<ULDeviceClass const*,ULDeviceClass const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259053114(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__emplace_back_slow_path<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>&>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = 40 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>,std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::~__split_buffer(&v13);
  return v12;
}

void sub_25905324C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>> const&>(void *a1, unint64_t *a2)
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
    std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__construct_node_hash<std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>> const&>();
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

void sub_2590534E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25905358C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 144) == 1)
    {
      v3 = __p[15];
      if (v3)
      {
        __p[16] = v3;
        operator delete(v3);
      }

      v4 = __p[12];
      if (v4)
      {
        __p[13] = v4;
        operator delete(v4);
      }

      if (*(__p + 48) == 1)
      {
        v5 = __p[3];
        if (v5)
        {
          __p[4] = v5;
          operator delete(v5);
        }
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>>::~pair(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      *(a1 + 112) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      *(a1 + 88) = v3;
      operator delete(v3);
    }

    if (*(a1 + 32) == 1)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        *(a1 + 16) = v4;
        operator delete(v4);
      }
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>,std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v6);
      v6 += 5;
    }
  }
}

uint64_t std::__split_buffer<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__optional_storage_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>>(CLMicroLocationProto::AssociatedAccessPointInfo *a1, const CLMicroLocationProto::AssociatedAccessPointInfo *a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {

      CLMicroLocationProto::AssociatedAccessPointInfo::CopyFrom(a1, a2);
    }
  }

  else if (*(a1 + 32))
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(a1);
    *(v2 + 32) = 0;
  }

  else
  {
    *(CLMicroLocationProto::AssociatedAccessPointInfo::AssociatedAccessPointInfo(a1, a2) + 32) = 1;
  }
}

void *std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::find<ULDeviceClass>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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
    if (v3 == v8)
    {
      if (result[2] == v3)
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

uint64_t OUTLINED_FUNCTION_3_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W8>)
{
  *(a2 + 10) = v3;
  *(a2 + 18) = a3;
  *(a2 + 20) = result;
  *(a2 + 28) = a3;
  return result;
}

void ULLocalizationResult::getProbabilitiesAsFloatVector(ULLocalizationResult *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 24) == 1)
  {
    __src = 0;
    v21 = 0;
    v22 = 0;
    v3 = *this;
    v4 = *(this + 1);
    if (*this == v4)
    {
      v18 = 0;
      v5 = 0;
      v17 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *(v3 + 16);
        if (v5 >= v22)
        {
          v7 = __src;
          v8 = v5 - __src;
          v9 = (v5 - __src) >> 2;
          v10 = v9 + 1;
          if ((v9 + 1) >> 62)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v11 = v22 - __src;
          if ((v22 - __src) >> 1 > v10)
          {
            v10 = v11 >> 1;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v12 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v10;
          }

          if (v12)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(&__src, v12);
          }

          v13 = (v5 - __src) >> 2;
          v14 = (4 * v9);
          v15 = (4 * v9 - 4 * v13);
          *v14 = v6;
          v5 = (v14 + 1);
          memcpy(v15, v7, v8);
          v16 = __src;
          __src = v15;
          v21 = v5;
          v22 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v5 = v6;
          v5 += 4;
        }

        v21 = v5;
        v3 += 20;
      }

      while (v3 != v4);
      v17 = __src;
      v18 = v22;
    }

    *a2 = v17;
    *(a2 + 8) = v5;
    v19 = 1;
    *(a2 + 16) = v18;
  }

  else
  {
    v19 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v19;
}

void sub_259053DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ULLocalizationResult::removeNullCluster(uint64_t *this)
{
  if (*(this + 24) == 1)
  {
    v2 = *this;
    v1 = this[1];
    if (*this != v1)
    {
      while (*v2 != 0)
      {
        v2 += 20;
        if (v2 == v1)
        {
          return this;
        }
      }

      if (v2 != v1)
      {
        v3 = v2 + 20;
        if (v2 + 20 != v1)
        {
          do
          {
            if (*v3 != 0)
            {
              v4 = *v3;
              *(v2 + 16) = *(v3 + 16);
              *v2 = v4;
              v2 += 20;
            }

            v3 += 20;
          }

          while (v3 != v1);
          v1 = this[1];
        }
      }
    }

    if (v2 != v1)
    {
      this[1] = v2;
    }
  }

  return this;
}

uint64_t ULLocalizationResult::getPointLocation(ULLocalizationResult *this)
{
  if (*(this + 56) == 1)
  {
    return *(this + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t ULLocalizationResult::getBlueDotConfidence(ULLocalizationResult *this)
{
  if (*(this + 56) == 1)
  {
    return *(this + 6);
  }

  else
  {
    return 0;
  }
}

void ULRfClusterLocalizer::localize(uint64_t *__return_ptr a1@<X8>, CLMicroLocationModel *this@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const CLMicroLocationProto::AssociatedAccessPointInfo *a5@<X4>, uint64_t a6@<X0>)
{
  v71 = *MEMORY[0x277D85DE8];
  if ((*(this + 304) & 1) == 0)
  {
    ULRfClusterLocalizer::localize(a6);
  }

  if ((*(a3 + 64) & 1) == 0)
  {
    ULRfClusterLocalizer::localize(a6);
  }

  if (CLMicroLocationModel::isValid(this))
  {
    LocalizerAlgorithm = CLMicroLocationLocalizationSettings::getLocalizerAlgorithm((a3 + 24));
    v12 = LocalizerAlgorithm;
    ULAlgorithms::createLocalizerAlgorithm(LocalizerAlgorithm, &v60);
    v69[0] = 0;
    v70 = 0;
    FingerprintDistanceFunctionType = CLMicroLocationLocalizationSettings::getFingerprintDistanceFunctionType((a3 + 24));
    if (v12 - 1 < 2)
    {
      v56 = FingerprintDistanceFunctionType;
      v18 = +[ULDefaultsSingleton shared];
      v19 = [v18 defaultsDictionary];

      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsEnable"];
      v21 = [v19 objectForKey:v20];
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v22 = [v21 BOOLValue];
      }

      else
      {
        v22 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v23 = v22;

      if (v23)
      {
        std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(buf, this + 16);
        v67 = *(this + 56);
        v24 = 1;
      }

      else
      {
        v24 = 0;
        buf[0] = 0;
      }

      v68 = v24;
      v27 = +[ULDefaultsSingleton shared];
      v28 = [v27 defaultsDictionary];

      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingWifiRssiEnable"];
      v30 = [v28 objectForKey:v29];
      if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v31 = [v30 BOOLValue];
      }

      else
      {
        v31 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v55 = v31;

      v32 = +[ULDefaultsSingleton shared];
      v33 = [v32 defaultsDictionary];

      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingBleLeechEnable"];
      v35 = [v33 objectForKey:v34];
      if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v36 = [v35 BOOLValue];
      }

      else
      {
        v36 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v54 = v36;

      v37 = +[ULDefaultsSingleton shared];
      v38 = [v37 defaultsDictionary];

      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingUwbRangeEnable"];
      v40 = [v38 objectForKey:v39];
      if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v41 = [v40 BOOLValue];
      }

      else
      {
        v41 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v42 = v41;

      if (v42)
      {
        isUwbRangingSupportedOnDevice = ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(v43);
      }

      else
      {
        isUwbRangingSupportedOnDevice = 0;
      }

      v45 = +[ULDefaultsSingleton shared];
      v46 = [v45 defaultsDictionary];

      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingPhotoFeaturesEnable"];
      v48 = [v46 objectForKey:v47];
      if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v49 = [v48 BOOLValue];
      }

      else
      {
        v49 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v50 = v49;

      EnabledTechnologies = CLMicroLocationUtils::createEnabledTechnologies(v55, v54, isUwbRangingSupportedOnDevice, v50);
      v59 = ULSettings::get<ULSettings::AdaptiveSensorsEnable>();
      v51 = ULSettings::getFingerprintDistanceFunctionParamsForType(v56);
      ULAlgorithms::createLocalizeFingerprintDistanceFunction(v56, v51, &EnabledTechnologies, buf, v61);
      std::optional<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>::operator=[abi:ne200100]<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>,void>(v69, v61);
      std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v61);
    }

    else
    {
      if (v12 == 3)
      {
LABEL_50:
        if (*(this + 304) != 1 || (*(a3 + 64) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v52 = v60;
        std::__optional_copy_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__optional_copy_base[abi:ne200100](v57, a5);
        (*(*v52 + 16))(v52, this, a3 + 24, a4, v69, v57);
        if (v57[32] == 1)
        {
          CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v57);
        }

        if (*(a1 + 120) == 1)
        {
          *(a1 + 65) = *(a4 + 192);
        }

        if (v70 == 1)
        {
          std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v69);
        }

        v53 = v60;
        v60 = 0;
        if (v53)
        {
          (*(*v53 + 8))(v53);
        }

        return;
      }

      if (v12 != 4)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULRfClusterLocalizer::localize();
        }

        v25 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289282;
          v63 = 2082;
          v64 = "";
          v65 = 2050;
          v66 = v12;
          _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid localization algorithm! No localization done, Localization Algo:%{public}lu}", buf, 0x1Cu);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULRfClusterLocalizer::localize();
        }

        v26 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(logObject_MicroLocation_Default))
        {
          *buf = 68289282;
          v63 = 2082;
          v64 = "";
          v65 = 2050;
          v66 = v12;
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid localization algorithm! No localization done", "{msg%{public}.0s:Invalid localization algorithm! No localization done, Localization Algo:%{public}lu}", buf, 0x1Cu);
        }

        goto LABEL_50;
      }

      v14 = FingerprintDistanceFunctionType;
      buf[0] = 0;
      v68 = 0;
      EnabledTechnologies = 2;
      v59 = ULSettings::get<ULSettings::AdaptiveSensorsEnable>();
      v15 = ULSettings::getFingerprintDistanceFunctionParamsForType(v14);
      ULAlgorithms::createLocalizeFingerprintDistanceFunction(v14, v15, &EnabledTechnologies, buf, v61);
      std::optional<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>::operator=[abi:ne200100]<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>,void>(v69, v61);
      std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v61);
    }

    if (v68 == 1)
    {
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(buf);
    }

    goto LABEL_50;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULRfClusterLocalizer::localize();
  }

  v16 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(this + 1);
    *buf = 67174657;
    *&buf[4] = v17;
    _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "#Warning No results for model type %{private}d because it is invalid", buf, 8u);
  }

  *a1 = 0;
  *(a1 + 120) = 0;
}

void sub_259054654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a30 == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a23);
  }

  if (*(v33 - 104) == 1)
  {
    std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v33 - 136);
  }

  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::AdaptiveSensorsEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveSensorsEnable"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::optional<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>::operator=[abi:ne200100]<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator=[abi:ne200100](a1, a2);
  }

  else
  {
    std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_17()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_259054F18(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ULLogicAdapter;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_25905543C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, int a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a41)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void sub_259055870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::lexical_cast<std::string,boost::uuids::uuid>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::lexical_istream_limited_src(&v6);
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::shl_input_streamable<boost::uuids::uuid const>(&v6, a1);
  v5 = v4;
  if (v4)
  {
    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(a2, v10, v11, v11 - v10);
  }

  std::ostream::~ostream();
  v6.n128_u64[0] = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v6.n128_u64[0] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v6.n128_i8[8]);
  if ((v5 & 1) == 0)
  {
    std::bad_cast::bad_cast(&v6);
    v6.n128_u64[0] = &unk_286A55058;
    boost::throw_exception<boost::bad_lexical_cast>(&v6);
  }
}

void sub_259055A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::~lexical_istream_limited_src(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void sub_259055C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_2590563B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2590566BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_259057D98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_259058314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2590585FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2590587AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2590588D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_259058B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259059994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a48);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a63);
  objc_destroyWeak((v70 - 200));
  objc_destroyWeak((v70 - 160));
  objc_destroyWeak((v70 - 120));
  objc_destroyWeak((v70 - 112));
  _Unwind_Resume(a1);
}

void sub_25905AAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v24 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25905AEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v3 - 72);
  CLMicroLocationLearner::~CLMicroLocationLearner(va);
  _Unwind_Resume(a1);
}

void sub_25905AFB4(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v2 - 56);
  *(v2 - 64) = v1 + 16;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100]((v2 - 64));

  _Unwind_Resume(a1);
}

void sub_25905B0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void **);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  v15 = (v13 + 8);
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_25905B1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void **);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  v15 = (v13 + 16);
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_25905B2C0(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v3 + 16);

  _Unwind_Resume(a1);
}

void sub_25905B3BC(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_25905C2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_25905C820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_25905CD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25905DB9C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_25905DDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_18()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *std::vector<ULLocationTypeEnum>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25905DFE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<ULLocationTypeEnum>::__init_with_size[abi:ne200100]<ULLocationTypeEnum*,ULLocationTypeEnum*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25905E05C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLearner::~CLMicroLocationLearner(id *this)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table((this + 10));
  v2 = this + 6;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::lexical_istream_limited_src(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::stringbuf::basic_stringbuf[abi:ne200100](a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_286A54EB0;
  *(a1 + 160) = 0;
  *(a1 + 104) = MEMORY[0x277D82850] + 24;
  *(a1 + 112) = MEMORY[0x277D82850] + 64;
  std::ios_base::init((a1 + 112), a1);
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *(a1 + 272) = a1 + 264;
  *(a1 + 280) = a1 + 266;
  return a1;
}

uint64_t boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x259CA1F90);
}

void *boost::detail::basic_pointerbuf<char,std::stringbuf>::setbuf(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekpos@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259CA1E90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25905E5D0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

__n128 boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::shl_input_streamable<boost::uuids::uuid const>(__n128 *a1, uint64_t a2)
{
  v4 = &a1[6].n128_i64[1];
  v5 = &a1[6].n128_i8[*(a1[6].n128_u64[1] - 24) + 8];
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  boost::uuids::operator<<<char,std::char_traits<char>>(v4, a2);
  result = *(*(v4 + *(a1[6].n128_u64[1] - 24) + 40) + 40);
  a1[17] = result;
  return result;
}

uint64_t *boost::uuids::operator<<<char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v4 = (a1 + *(*a1 - 24));
  fmtflags = v4->__fmtflags_;
  v33 = v4;
  v6 = v4[1].__fmtflags_;
  if (v6 == -1)
  {
    std::ios_base::getloc(v4);
    v7 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
    v6 = (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v32);
    v4[1].__fmtflags_ = v6;
  }

  v34 = v6;
  MEMORY[0x259CA1D40](&v32, a1);
  if (LOBYTE(v32.__locale_) == 1)
  {
    v31 = fmtflags;
    v30 = v4;
    v8 = *a1;
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 3);
    *(v9 + 3) = 0;
    v11 = a1 + *(v8 - 24);
    v12 = *(v11 + 2);
    v13 = *(v11 + 36);
    if (v13 == -1)
    {
      std::ios_base::getloc((a1 + *(v8 - 24)));
      v14 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
      v13 = (v14->__vftable[2].~facet_0)(v14, 32);
      std::locale::~locale(&v35);
      *(v11 + 36) = v13;
    }

    if ((v12 & 0x90) != 0 && v10 >= 37)
    {
      v15 = v10 - 36;
      do
      {
        LOBYTE(v35.__locale_) = v13;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v35, 1);
        --v15;
      }

      while (v15);
    }

    v16 = *a1;
    *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(a1 + *(v16 - 24) + 8) = *(a1 + *(v16 - 24) + 8) & 0xFFFFFF4F | 0x80;
    v17 = (a1 + *(v16 - 24));
    std::ios_base::getloc(v17);
    v28 = v12;
    v29 = v10;
    v18 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
    v19 = (v18->__vftable[2].~facet_0)(v18, 48);
    std::locale::~locale(&v35);
    if (v17[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v17);
      v20 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
      v21 = (v20->__vftable[2].~facet_0)(v20, 32);
      std::locale::~locale(&v35);
      v17[1].__fmtflags_ = v21;
    }

    v22 = 0;
    v17[1].__fmtflags_ = v19;
    v23 = MEMORY[0x277D82680];
    do
    {
      *(a1 + *(*a1 - 24) + 24) = 2;
      MEMORY[0x259CA1DC0](a1, *(a2 + v22));
      if (v22 <= 9 && ((1 << v22) & 0x2A8) != 0)
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v24 = std::locale::use_facet(&v35, v23);
        v25 = (v24->__vftable[2].~facet_0)(v24, 45);
        std::locale::~locale(&v35);
        LOBYTE(v35.__locale_) = v25;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v35, 1);
      }

      ++v22;
    }

    while (v22 != 16);
    fmtflags = v31;
    if ((v28 & 0x20) != 0 && v29 >= 37)
    {
      v26 = v29 - 36;
      do
      {
        LOBYTE(v35.__locale_) = v13;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v35, 1);
        --v26;
      }

      while (v26);
    }

    *(a1 + *(*a1 - 24) + 24) = 0;
    v4 = v30;
  }

  MEMORY[0x259CA1D50](&v32);
  boost::io::basic_ios_fill_saver<char,std::char_traits<char>>::~basic_ios_fill_saver(&v33);
  v4->__fmtflags_ = fmtflags;
  return a1;
}

void sub_25905EB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, std::locale a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19)
{
  std::locale::~locale(&a19);
  MEMORY[0x259CA1D50](&a15);
  boost::io::basic_ios_fill_saver<char,std::char_traits<char>>::~basic_ios_fill_saver(&a17);
  *(a12 + 8) = a14;
  _Unwind_Resume(a1);
}

uint64_t boost::io::basic_ios_fill_saver<char,std::char_traits<char>>::~basic_ios_fill_saver(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(*a1 + 144) == -1)
  {
    std::ios_base::getloc(*a1);
    v4 = std::locale::use_facet(&v6, MEMORY[0x277D82680]);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v6);
  }

  v2[1].__fmtflags_ = v3;
  return a1;
}

void std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::~lexical_istream_limited_src(uint64_t a1)
{
  std::ostream::~ostream();
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void boost::throw_exception<boost::bad_lexical_cast>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(exception, a1);
}

__n128 boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_286A547F0;
  a1->n128_u64[1] = &unk_286A55058;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3] = 0uLL;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_286A54FE0;
  a1->n128_u64[1] = &unk_286A55010;
  a1[2] = &unk_286A55038;
  return result;
}

uint64_t boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_25905F0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_lexical_cast>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::exception::~exception(a1);
}

{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::exception::~exception(a1);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(void *a1)
{
  *a1 = &unk_286A54820;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

{
  *a1 = &unk_286A54820;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x259CA1F90);
}

void boost::bad_lexical_cast::~bad_lexical_cast(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286A547F0;
  *(a1 + 8) = &unk_286A55058;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_286A54820;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_286A54FE0;
  *(a1 + 8) = &unk_286A55010;
  *(a1 + 32) = &unk_286A55038;
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZZ32__ULLogicAdapter__learnExecute__EUb_E3__0NS_9allocatorIS2_EEFbvEE7__cloneEPNS0_6__baseIS5_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A55080;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZ32__ULLogicAdapter__learnExecute__EUb_E3__0NS_9allocatorIS2_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ32__ULLogicAdapter__learnExecute__EUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_INFO, a4, va, 0x26u);
}

BOOL OUTLINED_FUNCTION_4_0(NSObject *a1)
{
  *v1 = a1;

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

BOOL OUTLINED_FUNCTION_6_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

id ULLogicAdapterHelper::createULPredictionContext(ULLogicAdapterHelper *this, const ULLocalizationResult *a2, const uuid *a3)
{
  v5 = objc_alloc(MEMORY[0x277D287F8]);
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = *(this + 65);
  v10 = MEMORY[0x277D28830];
  if ((*(this + 56) & (*(this + 6) == 2)) != 0)
  {
    v10 = (this + 32);
  }

  v17 = *v10;
  v11 = ULLogicAdapterHelper::getULProbabilityVectorFromResults(this, v7);
  v12 = ULDBUtils::NSStringArrayFromBoostUUIDs(this + 9);
  v14 = ULLogicAdapterHelper::getParticlesFromResults(this, v13);
  v15 = [v5 initWithUniqueIdentifier:v6 timestamp:v8 isMotionDetected:v9 coordinates:v11 probabilityVector:v12 imageIdentifiersVector:v14 particles:*&v17];

  return v15;
}

id ULLogicAdapterHelper::getULProbabilityVectorFromResults(ULLogicAdapterHelper *this, const ULLocalizationResult *a2)
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (*(this + 24) == 1)
  {
    v5 = *this;
    v6 = *(this + 1);
    if (*this != v6)
    {
      do
      {
        LODWORD(v4) = *(v5 + 16);
        v7 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        [v3 addObject:v7];

        v5 += 20;
      }

      while (v5 != v6);
    }
  }

  v8 = [v3 copy];

  return v8;
}

id ULLogicAdapterHelper::getParticlesFromResults(ULLogicAdapterHelper *this, const ULLocalizationResult *a2)
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((*(this + 13) - *(this + 12)) >> 2)];
  v4 = *(this + 12);
  for (i = *(this + 13); v4 != i; v4 += 5)
  {
    v6 = objc_alloc(MEMORY[0x277D287D0]);
    LODWORD(v7) = *v4;
    LODWORD(v8) = v4[1];
    LODWORD(v9) = v4[2];
    v10 = [v6 initWithX:v7 Y:v8 Z:v9];
    [v3 addObject:v10];
  }

  return v3;
}

id ULLogicAdapterHelper::getULMapFromInternalStatus(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  for (i = a1; v3 != v4; ++v3)
  {
    v5 = [objc_alloc(MEMORY[0x277D28810]) initWithSuspendReasonEnum:*v3];
    [v2 addObject:v5];
  }

  if (*(i + 88))
  {
    v6 = *(i + 64);
    if (v6 == 3)
    {
      v62 = 0;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCAD78]);
      if ((*(i + 88) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v62 = [v7 initWithUUIDBytes:i + 72];
    }
  }

  else
  {
    v62 = 0;
    v6 = 3;
  }

  v8 = objc_alloc(MEMORY[0x277D28808]);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 96)];
  v61 = v2;
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 100)];
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 104)];
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 112)];
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 108)];
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 116)];
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 120)];
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 124)];
  v52 = v6;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 128)];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 132)];
  v53 = [v8 initWithNumClustersLearnedInModel:v9 numRecordingTriggersAtCurrentLOI:v60 numInputValidFingerprints:v59 numInputValidFingerprintsLabeled:v58 numInputValidFingerprintsUnlabeled:v57 numFingerprintsBeforePruning:v56 numFingerprintsAfterPruning:v55 numWiFiAccessPoints:v54 numBLESources:v10 numUWBSources:v11];

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = *(i + 144);
  v14 = *(i + 152);
  while (v13 != v14)
  {
    [v12 addObject:*v13++];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v17 = *(i + 168);
  for (j = *(i + 176); v17 != j; v17 += 32)
  {
    v18 = [MEMORY[0x277CBEB18] array];
    v20 = *v17;
    v19 = *(v17 + 8);
    while (v20 != v19)
    {
      v21 = objc_alloc(MEMORY[0x277D287D0]);
      LODWORD(v22) = *v20;
      LODWORD(v23) = v20[1];
      LODWORD(v24) = v20[2];
      v25 = [v21 initWithX:v22 Y:v23 Z:v24];
      [v18 addObject:v25];

      v20 += 60;
    }

    v26 = objc_alloc(MEMORY[0x277D287D8]);
    v27 = [MEMORY[0x277CCABB0] numberWithInt:*(v17 + 24)];
    v28 = [v26 initWithMapPoints:v18 roomIndex:v27];

    [v15 addObject:v28];
  }

  v29 = [MEMORY[0x277CBEB18] array];
  v30 = i;
  if (*(i + 224) == 1)
  {
    ULTrajectoryPointCloud::getAllPoints(&v64, (i + 192));
    v32 = v64;
    v31 = v65;
    if (v64 != v65)
    {
      do
      {
        v33 = objc_alloc(MEMORY[0x277D287D0]);
        LODWORD(v34) = *v32;
        LODWORD(v35) = v32[1];
        LODWORD(v36) = v32[2];
        v37 = [v33 initWithX:v34 Y:v35 Z:v36];
        v38 = objc_alloc(MEMORY[0x277D287E0]);
        LODWORD(v39) = v32[3];
        LODWORD(v40) = v32[4];
        LODWORD(v41) = v32[5];
        LODWORD(v42) = v32[6];
        v43 = [v38 initWithMapPoint:v37 forwardAzimuth:v39 forwardElevation:v40 backwardAzimuth:v41 backwardElevation:v42];
        [v29 addObject:v43];

        v32 += 7;
      }

      while (v32 != v31);
      v30 = i;
      v32 = v64;
    }

    if (v32)
    {
      v65 = v32;
      operator delete(v32);
    }
  }

  v44 = objc_alloc(MEMORY[0x277D28798]);
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v30 + 136)];
  v46 = [v44 initWithMapROIs:v15 trajectoryPoints:v29 numInputSegments:v45];

  v47 = [objc_alloc(MEMORY[0x277D287B0]) initWithLocationOfInterestType:v52 locationOfInterestUUID:v62];
  v48 = objc_alloc(MEMORY[0x277D287C0]);
  v49 = [MEMORY[0x277D287F8] emptyPredictionContext];
  v50 = [v48 initWithMapItems:v12 predictionContext:v49 locationOfInterest:v47 serviceState:*v30 serviceSuspendReasons:v61 isMapValid:*(v30 + 232) metaInfo:v53 homeSlamModelData:v46];

  return v50;
}

uint64_t ULLogicAdapterImpl::ULLogicAdapterImpl(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  *a1 = &unk_286A55390;
  *(a1 + 8) = &unk_286A55460;
  *(a1 + 16) = &unk_286A554B0;
  *(a1 + 24) = &unk_286A554D8;
  *(a1 + 32) = &unk_286A554F8;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  v14 = v11;
  *(a1 + 64) = v14;
  v15 = v12;
  *(a1 + 72) = v15;
  v16 = v13;
  *(a1 + 104) = 0u;
  *(a1 + 80) = v16;
  *(a1 + 88) = a5;
  *(a1 + 96) = a6;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (onceToken_MicroLocationQE_Default != -1)
  {
    ULLogicAdapterImpl::ULLogicAdapterImpl();
  }

  v17 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    ULSettings::get<ULSettings::Version>(__p);
    if (v21 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 68289283;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2081;
    v27 = v18;
    _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MicroLocation Initialization, Microlocation Version:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_2590607D4(_Unwind_Exception *a1)
{
  v9 = *(v1 + 144);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ULLogicAdapterImpl::ULLogicAdapterImpl(v1, v7 + 1, v7);

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v5, *(v1 + 48));
  _Unwind_Resume(a1);
}

void ULLogicAdapterImpl::setDependencies(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  *a2 = 0;
  v10 = a1[13];
  a1[13] = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *a3;
  *a3 = 0;
  v12 = a1[14];
  a1[14] = v11;
  if (v12)
  {
    std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100]((a1 + 14), v12);
  }

  v14 = *a4;
  v13 = a4[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a1[16];
  a1[15] = v14;
  a1[16] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = *a5;
  v16 = a5[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a1[18];
  a1[17] = v17;
  a1[18] = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = +[ULEventLog shared];
  v20 = MEMORY[0x277CCACA8];
  ULSettings::get<ULSettings::Version>(__p);
  if (v24 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  v22 = [v20 stringWithFormat:@"Milo Init Event version: %s", v21];
  [v19 log:v22];

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259060B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULLogicAdapterImpl::onSendStatusToClient(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  CLMicroLocationLegacyClient::updateStatus(*(a1 + 112), a2);
  v6 = *(a1 + 64);
  v8 = ULLogicAdapterHelper::getULMapFromInternalStatus(a2);
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  [v6 didUpdateMap:v8 toConnection:v7];
}

void ULLogicAdapterImpl::onSendRequestResponseToClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 64);
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  if (a4 == -1)
  {
    v11 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"request failed internally";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v10 errorWithDomain:@"ULLogicDomain" code:a4 userInfo:v5];
  }

  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a5];
  [v8 didCompleteRequest:v9 withError:v11 toConnection:v12];

  if (a4 != -1)
  {
  }
}

void ULLogicAdapterImpl::onSendRecordingMetaInfoToClient(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ([MEMORY[0x277D28868] isInternalInstall])
  {
    v9 = objc_alloc(MEMORY[0x277D28790]);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*a4];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4[1]];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4[2]];
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
    v17 = [v9 initWithNumWiFiAccessPoints:v10 numBLESources:v11 numUWBSources:v12 requestIdentifier:v13];

    v14 = *(a1 + 64);
    v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a5];
    [v14 didCompleteObservationWithMetaInformation:v17 toConnection:v15];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULLogicAdapterImpl::onSendRecordingMetaInfoToClient();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEBUG, "onSendRecordingMetaInfoToClient called on non-internal platform. ignored", buf, 2u);
    }
  }
}

void ULLogicAdapterImpl::onSendPredictionMetaInfoToClient(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D28868] isInternalInstall])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULLogicAdapterImpl::onSendRecordingMetaInfoToClient();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    v10 = objc_alloc(MEMORY[0x277D28790]);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*a4];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4[1]];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4[2]];
    v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
    v15 = [v10 initWithNumWiFiAccessPoints:v11 numBLESources:v12 numUWBSources:v13 requestIdentifier:v14];

    v16 = *(a1 + 64);
    v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a5];
    [v16 didCompletePredictionWithMetaInformation:v15 toConnection:v17];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULLogicAdapterImpl::onSendRecordingMetaInfoToClient();
    }

    v18 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEBUG, "onSendPredictionMetaInfoToClient called on non-internal platform. ignored", &v19, 2u);
    }
  }
}

void sub_259061224(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULLogicAdapterImpl::onSendPredictionResultsToClient(ULLogicAdapterImpl *this, const ULService::ServiceDescriptor *a2, const uuid *a3, const ULLocalizationResult *a4, const uuid *a5)
{
  CLMicroLocationLegacyClient::publishResultsToBiomeAndCoreDuet(*(this + 14), a2, a4);
  v9 = *(this + 8);
  v12 = ULLogicAdapterHelper::createULPredictionContext(a4, a3, v10);
  v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a5];
  [v9 didSendPredictionContextResults:v12 toConnection:v11];
}

void ULLogicAdapterImpl::onSendGenericEventResponseToClient(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if ([MEMORY[0x277D28868] isInternalInstall])
  {
    v8 = *(a1 + 64);
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a4];
    [v8 didSendGenericEvent:a2 withDescription:v12 toConnection:v10];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULLogicAdapterImpl::onSendRecordingMetaInfoToClient();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEBUG, "onSendGenericEventResponseToClient called on non-internal platform. ignored", buf, 2u);
    }
  }
}

void ULLogicAdapterImpl::onEnableMiLoAtCurrentLocationCompleted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 64);
  if (a2 == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"request failed internally";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v7 errorWithDomain:@"ULLogicDomain" code:a2 userInfo:v3];
  }

  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  [v6 didCreateCustomLoiAtCurrentLocationWithError:v8 forConnection:v9];

  if (a2 != -1)
  {
  }
}

uint64_t ULLogicAdapterImpl::onLearningBegin(ULLogicAdapterImpl *this)
{
  v2 = +[ULEventLog shared];
  [v2 log:@"Learning Begin Event"];

  v3 = *(**(this + 13) + 184);

  return v3();
}

void ULLogicAdapterImpl::onLearningSingleModelOfTypeCompleted(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v7 = a4;
  if (*(a3 + 320) == 1)
  {
    v10 = *(a1 + 48);
    v9 = a1 + 48;
    v8 = v10;
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = v9;
    do
    {
      if (*(v8 + 28) >= a2)
      {
        v11 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 28) < a2));
    }

    while (v8);
    if (v11 == v9 || *(v11 + 28) > a2)
    {
LABEL_9:
      v14 = &v13;
      *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v9 - 8, &v13, &std::piecewise_construct, &v14) + 8) = 0;
    }

    v14 = &v13;
    v12 = std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v9 - 8, &v13, &std::piecewise_construct, &v14);
    ++*(v12 + 8);
  }
}

void ULLogicAdapterImpl::onLearningForModelTypeCompleted(uint64_t result, signed int a2)
{
  v7 = a2;
  v2 = result + 48;
  v3 = *(result + 48);
  if (v3)
  {
    v5 = result + 40;
    v6 = v2;
    do
    {
      if (*(v3 + 28) >= a2)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 28) < a2));
    }

    while (v3);
    if (v6 != v2 && *(v6 + 28) <= a2)
    {
      if (*(v6 + 32))
      {
        v8 = &v7;
        *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v5, &v7, &std::piecewise_construct, &v8) + 8) = 0;
        CLMicroLocationLogic::onModelGenerated(*(result + 104), v7);
      }
    }
  }
}

uint64_t ULLogicAdapterImpl::onLearningCompleted(ULLogicAdapterImpl *this)
{
  v2 = +[ULEventLog shared];
  [v2 log:@"Learning Completed Event"];

  (*(**(this + 13) + 184))(*(this + 13), 0);
  v3 = *(this + 13);

  return CLMicroLocationLogic::onLearningCompleted(v3);
}

void ULLogicAdapterImpl::triggerLearning(ULLogicAdapterImpl *this)
{
  v2 = +[ULTransactionManager shared];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZN18ULLogicAdapterImpl15triggerLearningEv_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = this;
  [v2 performUnderTransaction:@"com.milod.learn" block:v3];
}

void ___ZN18ULLogicAdapterImpl15triggerLearningEv_block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  CLMicroLocationLearner::CLMicroLocationLearner(v3, v1 + 8, *(v1 + 88), *(v1 + 96));
  v9[0] = &unk_286A55630;
  v9[3] = v9;
  CLMicroLocationLearner::executeWorkItems(v3, v9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v9);
  v2 = ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(v7, v1 + 32, *(v1 + 88));
  v6[0] = &unk_286A55630;
  v6[3] = v6;
  ULWiFiHistogramAnalyzer::executeWiFiItem(v2, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](&v8);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table(&v5);
  v7[0] = &v4;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](v7);
}

void sub_259061AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v23 - 104);
  CLMicroLocationLearner::~CLMicroLocationLearner(&a9);
  _Unwind_Resume(a1);
}

void ULLogicAdapterImpl::learnBlueAtlasModel(ULLogicAdapterImpl *this, uuid *a2)
{
  CLMicroLocationLearner::CLMicroLocationLearner(v3, this + 8, *(this + 11), *(this + 12));
  CLMicroLocationLearner::learnBlueAtlasModel(v3, a2);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table(&v5);
  v6 = &v4;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void ULLogicAdapterImpl::~ULLogicAdapterImpl(ULLogicAdapterImpl *this)
{
  ULLogicAdapterImpl::~ULLogicAdapterImpl(this);

  JUMPOUT(0x259CA1F90);
}

{
  *this = &unk_286A55390;
  *(this + 1) = &unk_286A55460;
  *(this + 2) = &unk_286A554B0;
  *(this + 3) = &unk_286A554D8;
  *(this + 4) = &unk_286A554F8;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100](this + 112, v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(this + 40, *(this + 6));
}

void non-virtual thunk toULLogicAdapterImpl::~ULLogicAdapterImpl(ULLogicAdapterImpl *this)
{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 8));
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 16));
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 16));

  JUMPOUT(0x259CA1F90);
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 24));
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 24));

  JUMPOUT(0x259CA1F90);
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 32));
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 32));

  JUMPOUT(0x259CA1F90);
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_19()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x259CA1F90);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN18ULLogicAdapterImpl15triggerLearningEvEUb_E3__0NS_9allocatorIS3_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN18ULLogicAdapterImpl15triggerLearningEvEUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float CLHierarchicalClustering::singleLinkage(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 <= a6)
  {
    v6 = a6;
  }

  else
  {
    v6 = a2;
  }

  if (a2 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a1 + 8);
  result = *(v8 + 4 * ((v6 + v6 * v6) >> 1) + 4 * v7);
  if (a4 <= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  if (a4 >= a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = a4;
  }

  v12 = v8 + 4 * ((v10 + v10 * v10) >> 1);
  if (*(v12 + 4 * v11) < result)
  {
    return *(v12 + 4 * v11);
  }

  return result;
}

float CLHierarchicalClustering::averageLinkage(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= a6)
  {
    v6 = a6;
  }

  else
  {
    v6 = a2;
  }

  if (a2 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a1 + 8);
  result = *(v8 + 4 * ((v6 + v6 * v6) >> 1) + 4 * v7);
  if (a4 <= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  if (a4 >= a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = a4;
  }

  v12 = *(v8 + 4 * ((v10 + v10 * v10) >> 1) + 4 * v11);
  if ((LODWORD(result) & 0x7FFFFFFFu) < 0x7F800000)
  {
    if ((LODWORD(v12) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      return ((v12 * a5) + (a3 * result)) / (a5 + a3);
    }
  }

  else
  {
    result = INFINITY;
    if ((LODWORD(v12) & 0x7FFFFFFFu) < 0x7F800000)
    {
      return *(v8 + 4 * ((v10 + v10 * v10) >> 1) + 4 * v11);
    }
  }

  return result;
}

float CLHierarchicalClustering::linearInterpolationLinkage(uint64_t a1, unint64_t a2, float a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2 <= a7)
  {
    v7 = a7;
  }

  else
  {
    v7 = a2;
  }

  if (a2 >= a7)
  {
    v8 = a7;
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a1 + 8);
  v10 = *(v9 + 4 * ((v7 + v7 * v7) >> 1) + 4 * v8);
  if (a5 <= a7)
  {
    v11 = a7;
  }

  else
  {
    v11 = a5;
  }

  if (a5 >= a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = a5;
  }

  v13 = *(v9 + 4 * ((v11 + v11 * v11) >> 1) + 4 * v12);
  if ((LODWORD(v10) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    if ((LODWORD(v13) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      return INFINITY;
    }

    else
    {
      return *(v9 + 4 * ((v11 + v11 * v11) >> 1) + 4 * v12);
    }
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return v10;
  }

  if (v10 >= v13)
  {
    v15 = *(v9 + 4 * ((v11 + v11 * v11) >> 1) + 4 * v12);
  }

  else
  {
    v15 = v10;
  }

  if (v10 < v13)
  {
    v10 = *(v9 + 4 * ((v11 + v11 * v11) >> 1) + 4 * v12);
  }

  return (v10 * a3) + (v15 * (1.0 - a3));
}

float CLHierarchicalClustering::completeLinkage(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 <= a6)
  {
    v6 = a6;
  }

  else
  {
    v6 = a2;
  }

  if (a2 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a1 + 8);
  v9 = *(v8 + 4 * ((v6 + v6 * v6) >> 1) + 4 * v7);
  if (a4 <= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  if (a4 >= a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = a4;
  }

  v12 = *(v8 + 4 * ((v10 + v10 * v10) >> 1) + 4 * v11);
  if (v9 >= v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v8 + 4 * ((v10 + v10 * v10) >> 1) + 4 * v11);
  }

  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v13 = v9;
  }

  v14 = LODWORD(v9) & 0x7FFFFFFF;
  result = INFINITY;
  if ((LODWORD(v12) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    result = v12;
  }

  if (v14 < 2139095040)
  {
    return v13;
  }

  return result;
}

const void **CLHierarchicalClustering::CLHierarchicalClustering(const void **a1, unint64_t *a2, uint64_t a3)
{
  v66 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<CLHierarchicalClustering::GraphEdge>::reserve(a1, *a2 - 1);
  v54 = 0;
  v55 = 0;
  v53 = &v54;
  if (*a2)
  {
    v5 = 0;
    do
    {
      *buf = v5;
      *v57 = 1;
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long,unsigned long>>(&v53, &v54, buf, buf);
      ++v5;
    }

    while (v5 < *a2);
    if (v55 >= 2)
    {
      v48 = a3;
      do
      {
        v6 = v53;
        v7 = v53[1];
        v8 = v53;
        if (v7)
        {
          do
          {
            v9 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (!v10);
        }

        if (v53 == &v54)
        {
          v11 = INFINITY;
        }

        else
        {
          v11 = INFINITY;
          v12 = v53;
          do
          {
            v13 = v12[1];
            v14 = v13;
            v15 = v12;
            if (v13)
            {
              do
              {
                v16 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v16 = v15[2];
                v10 = *v16 == v15;
                v15 = v16;
              }

              while (!v10);
            }

            if (v16 != &v54)
            {
              v17 = v12[4];
              do
              {
                v18 = v16[4];
                if (v17 <= v18)
                {
                  v19 = v16[4];
                }

                else
                {
                  v19 = v12[4];
                }

                if (v17 < v18)
                {
                  v18 = v12[4];
                }

                v20 = *(a2[1] + 4 * ((v19 + v19 * v19) >> 1) + 4 * v18);
                if ((LODWORD(v20) & 0x7FFFFFFFu) < 0x7F800000 && v20 < v11)
                {
                  v11 = *(a2[1] + 4 * ((v19 + v19 * v19) >> 1) + 4 * v18);
                  v9 = v16;
                  v6 = v12;
                }

                v21 = v16[1];
                if (v21)
                {
                  do
                  {
                    v22 = v21;
                    v21 = *v21;
                  }

                  while (v21);
                }

                else
                {
                  do
                  {
                    v22 = v16[2];
                    v10 = *v22 == v16;
                    v16 = v22;
                  }

                  while (!v10);
                }

                v16 = v22;
              }

              while (v22 != &v54);
            }

            if (v13)
            {
              do
              {
                v23 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v23 = v12[2];
                v10 = *v23 == v12;
                v12 = v23;
              }

              while (!v10);
            }

            v12 = v23;
          }

          while (v23 != &v54);
        }

        v24 = v9[1];
        v25 = v9;
        if (v24)
        {
          do
          {
            v26 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v26 = v25[2];
            v10 = *v26 == v25;
            v25 = v26;
          }

          while (!v10);
        }

        v28 = v6[4];
        v27 = v6[5];
        v30 = v9[4];
        v29 = v9[5];
        v31 = a1[1];
        v32 = a1[2];
        if (v31 >= v32)
        {
          v34 = *a1;
          v35 = v31 - *a1;
          v49 = v35 >> 5;
          v36 = (v35 >> 5) + 1;
          if (v36 >> 59)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v37 = v32 - v34;
          if (v37 >> 4 > v36)
          {
            v36 = v37 >> 4;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFE0)
          {
            v36 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLHierarchicalClustering::GraphEdge>>(a1, v36);
          }

          v38 = 32 * v49;
          *v38 = v28;
          *(v38 + 8) = v30;
          *(v38 + 16) = v11;
          *(v38 + 24) = v29 + v27;
          v50 = (32 * v49 + 32);
          v47 = (v38 - 32 * (v35 >> 5));
          memcpy(v47, v34, v35);
          v39 = *a1;
          *a1 = v47;
          a1[1] = v50;
          a1[2] = 0;
          if (v39)
          {
            operator delete(v39);
          }

          v33 = v50;
        }

        else
        {
          *v31 = v28;
          *(v31 + 1) = v30;
          *(v31 + 4) = v11;
          v33 = v31 + 32;
          *(v31 + 3) = v29 + v27;
        }

        a1[1] = v33;
        if (onceToken_MicroLocation_Default != -1)
        {
          CLHierarchicalClustering::CLHierarchicalClustering();
        }

        v51 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68290050;
          *&buf[4] = 0;
          *v57 = 2082;
          *&v57[2] = "";
          v58 = 2050;
          v59 = v28;
          v60 = 2050;
          v61 = v30;
          v62 = 2050;
          v63 = v11;
          v64 = 2050;
          v65 = v29 + v27;
          _os_log_impl(&dword_258FE9000, v51, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:dendrogram, left:%{public}lu, right:%{public}lu, dist:%{public}f, size:%{public}lu}", buf, 0x3Au);
        }

        *buf = v30;
        *v57 = v29 + v27;
        std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(&v53, v6);
        operator delete(v6);
        std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(&v53, v9);
        operator delete(v9);
        v40 = v53;
        if (v53 != &v54)
        {
          do
          {
            std::function<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::operator()(v48, a2, v28, v27, v30, v29, v40[4], v40[5]);
            v42 = v40[4];
            if (v42 <= *buf)
            {
              v43 = *buf;
            }

            else
            {
              v43 = v40[4];
            }

            if (v42 >= *buf)
            {
              v42 = *buf;
            }

            *(a2[1] + 4 * ((v43 + v43 * v43) >> 1) + 4 * v42) = v41;
            v44 = v40[1];
            if (v44)
            {
              do
              {
                v45 = v44;
                v44 = *v44;
              }

              while (v44);
            }

            else
            {
              do
              {
                v45 = v40[2];
                v10 = *v45 == v40;
                v40 = v45;
              }

              while (!v10);
            }

            v40 = v45;
          }

          while (v45 != &v54);
        }

        std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long,unsigned long>>(&v53, v26, buf, buf);
      }

      while (v55 > 1);
    }
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v53, v54);
  return a1;
}

void std::vector<CLHierarchicalClustering::GraphEdge>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLHierarchicalClustering::GraphEdge>>(a1, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::function<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  v10[0] = a7;
  v10[1] = a8;
  v8 = *(a1 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v8 + 48))(v8, a2, v12, v11, v10);
}

unint64_t CLHierarchicalClustering::getClusterLabels(float **a1, void *a2, void *a3, unint64_t a4, unint64_t a5, double a6)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*a3 == a3[1])
  {
    CLHierarchicalClustering::getClusterLabels(a1);
  }

  if (*&a5 == 0.0)
  {
    CLHierarchicalClustering::getClusterLabels(a1);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289794;
    *&buf[4] = 0;
    v45 = 2082;
    v46 = "";
    v47 = 2050;
    v48 = a4;
    v49 = 2050;
    v50 = a6;
    v51 = 2050;
    v52 = *&a5;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:getClusterLabels, smallNodeSize:%{public}lu, distanceThresholdForSmallNode:%{public}f, minNumClusters:%{public}lu}", buf, 0x30u);
  }

  a2[1] = *a2;
  v12 = (a1[1] - *a1) >> 5;
  *buf = 0;
  std::vector<unsigned long>::resize(a2, v12 + 1, buf);
  v13 = a1[1];
  v14 = *a1;
  if (v13 != *a1)
  {
    v15 = a3[1];
    v16 = *(v13 - 4);
    v17 = a5 != 1;
    if (*(*a3 + 8 * (v15 != *a3) - 8) < v16 || a5 != 1)
    {
      v19 = (v15 - *a3) >> 3;
      v20 = v13 - 6;
      v21 = 1;
      while (1)
      {
        v13 = v20 - 2;
        v22 = *a2;
        v23 = v16 > a6 || *(v20 + 2) > a4;
        if (v23 || v17)
        {
          *(v22 + 8 * *v13) = v21;
          if (onceToken_MicroLocation_Default != -1)
          {
            CLHierarchicalClustering::CLHierarchicalClustering();
          }

          ++v21;
          v31 = logObject_MicroLocation_Default;
          if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_27;
          }

          v32 = *(v20 - 1);
          v33 = *v20;
          v34 = v20[2];
          v35 = *(v20 + 2);
          *buf = 68290050;
          *&buf[4] = 0;
          v45 = 2082;
          v46 = "";
          v47 = 2050;
          v48 = v32;
          v49 = 2050;
          v50 = v33;
          v51 = 2050;
          v52 = v34;
          v53 = 2050;
          v54 = v35;
          v29 = v31;
          v30 = "{msg%{public}.0s:getClusterLabels - split, left:%{public}lu, right:%{public}lu, dist:%{public}f, size:%{public}lu}";
        }

        else
        {
          *(v22 + 8 * *(v20 - 1)) = *(v22 + 8 * *v20);
          if (onceToken_MicroLocation_Default != -1)
          {
            CLHierarchicalClustering::CLHierarchicalClustering();
          }

          v24 = logObject_MicroLocation_Default;
          if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_27;
          }

          v25 = *(v20 - 1);
          v26 = *v20;
          v27 = v20[2];
          v28 = *(v20 + 2);
          *buf = 68290050;
          *&buf[4] = 0;
          v45 = 2082;
          v46 = "";
          v47 = 2050;
          v48 = v25;
          v49 = 2050;
          v50 = v26;
          v51 = 2050;
          v52 = v27;
          v53 = 2050;
          v54 = v28;
          v29 = v24;
          v30 = "{msg%{public}.0s:getClusterLabels - don't split, left:%{public}lu, right:%{public}lu, dist:%{public}f, size:%{public}lu}";
        }

        _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEBUG, v30, buf, 0x3Au);
LABEL_27:
        v14 = *a1;
        if (v13 != *a1)
        {
          v16 = *(v20 - 6);
          v36 = v19 >= v21 ? v21 : v19;
          v37 = *(*a3 + 8 * v36 - 8);
          v17 = v21 < a5;
          v20 -= 8;
          if (v37 < v16 || v21 < a5)
          {
            continue;
          }
        }

        goto LABEL_38;
      }
    }
  }

  v21 = 1;
LABEL_38:
  if (v13 != v14)
  {
    v39 = *a2;
    do
    {
      v40 = *(v13 - 4);
      v41 = *(v13 - 3);
      v13 -= 8;
      *(v39 + 8 * v40) = *(v39 + 8 * v41);
    }

    while (v13 != v14);
  }

  return v21;
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(result, a2 - v3, a3);
  }
}

unint64_t CLHierarchicalClustering::getClusterLabels(float **a1, void *a2, unint64_t a3, double a4, double a5)
{
  v12 = a4;
  std::vector<double>::vector[abi:ne200100](__p, 1uLL, &v12);
  ClusterLabels = CLHierarchicalClustering::getClusterLabels(a1, a2, __p, a3, 1uLL, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return ClusterLabels;
}

void sub_259062D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CLHierarchicalClustering::GraphEdge>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_20()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25921A970)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_25921A970)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t *std::vector<double>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_259063068(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long,unsigned long>>(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v4 = *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__find_equal<unsigned long>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
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

uint64_t *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_259063A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v10 + 48);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::EnableCloudBackup>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnableCloudBackup"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void sub_259063C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_259063E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259064608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  (*(*v12 + 8))(v12);

  _Unwind_Resume(a1);
}

void sub_259064FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v24 + 8))(v24);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_21()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *std::vector<ULMigrationDO>::__init_with_size[abi:ne200100]<ULMigrationDO const*,ULMigrationDO const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULMigrationDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590663E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULMigrationDO>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,int>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_25906668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_259066DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::CloudBackupDefaultTableLimit>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCloudBackupDefaultTableLimit"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71778 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::ConfigurationTableMigrationPageSize>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULConfigurationTableMigrationPageSize"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71760 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MeasurementTableMigrationPageSize>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementTableMigrationPageSize"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71730 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

void sub_259067DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259068B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259068F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::function<BOOL ()(void)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_22()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_259069DB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_259069E74(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ULDataContainer;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_23()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void BasicMutex::BasicMutex(BasicMutex *this, const char *a2, int a3, char a4)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = &unk_286A557E8;
  operator new();
}

void BasicMutex::~BasicMutex(pthread_mutex_t **this)
{
  *this = &unk_286A557E8;
  pthread_mutex_destroy(this[1]);
  v2 = this[1];
  if (*&v2[1].__opaque[16])
  {
    free(*&v2[1].__opaque[16]);
    *&this[1][1].__opaque[16] = 0;
  }

  MEMORY[0x259CA1F90]();
}

{
  BasicMutex::~BasicMutex(this);

  JUMPOUT(0x259CA1F90);
}

pthread_t BasicMutex::lock(pthread_mutex_t **this)
{
  if (pthread_mutex_lock(this[1]))
  {
    result = BasicMutex::lock();
    goto LABEL_9;
  }

  result = pthread_self();
  v3 = this[1];
  sig = v3[1].__sig;
  if (sig < 0)
  {
LABEL_9:
    result = BasicMutex::lock(result);
    goto LABEL_10;
  }

  v5 = *v3[1].__opaque;
  if (sig)
  {
    if (v5 == result)
    {
LABEL_7:
      LODWORD(v3[1].__sig) = sig + 1;
      *v3[1].__opaque = result;
      return result;
    }

    result = BasicMutex::lock();
  }

  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_10:
  v6 = BasicMutex::lock(result);
  return _CLLogObjectForCategory_MicroLocation_Default(v6);
}

uint64_t BasicMutex::unlock(BasicMutex *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 64);
  if (v2 <= 0)
  {
    result = BasicMutex::unlock();
LABEL_7:
    v5 = BasicMutex::unlock(result);
    return BasicMutex::__assertOwned(v5);
  }

  v3 = v2 - 1;
  *(v1 + 64) = v3;
  if (!v3)
  {
    *(v1 + 72) = 0;
  }

  result = pthread_mutex_unlock(v1);
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_24()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void CLSqliteDatabase::init(CLSqliteDatabase *this)
{
  v61 = *MEMORY[0x277D85DE8];
  *(this + 28) = 0;
  memset(&__p, 0, sizeof(__p));
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  v3 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    v4 = (this + 64);
    if (*(this + 87) < 0)
    {
      v4 = *v4;
    }

    v5 = *(this + 12);
    v6 = *(this + 13);
    *buf = 136315650;
    *&buf[4] = v4;
    v43 = 1024;
    *v44 = v5;
    *&v44[4] = 1024;
    *&v44[6] = v6;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEBUG, "database open. path: %s, protection: %d, persistence: %d", buf, 0x18u);
  }

  v7 = *(this + 87);
  if (v7 < 0)
  {
    v7 = *(this + 9);
  }

  v8 = this + 88;
  if (v7)
  {
    v9 = std::string::operator=((this + 88), (this + 64));
    v10 = CLSqliteDatabaseManager::instance(v9);
    v36 = *(this + 6);
    v37 = *(this + 28);
    v11 = &v38;
    if (*(this + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *(this + 8), *(this + 9));
    }

    else
    {
      v38 = *(this + 64);
    }

    v14 = CLSqliteDatabaseManager::openDatabase(v10, &v36, this + 64, &v39);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_37:
    operator delete(v11->__r_.__value_.__l.__data_);
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_38:
    *(this + 8) = v39;
    v18 = *(this + 111);
    if (v18 < 0)
    {
      v19 = *(this + 12);
    }

    else
    {
      v19 = *(this + 111);
    }

    if (v19)
    {
      if (v18 >= 0)
      {
        v20 = *(this + 111);
      }

      else
      {
        v20 = *(this + 12);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (v20 == size)
      {
        v22 = v18 >= 0 ? (this + 88) : *v8;
        v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        if (!memcmp(v22, v23, v20))
        {
          goto LABEL_71;
        }
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v24 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_71;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (*(this + 111) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = p_p;
      v43 = 2080;
      *v44 = v8;
      v26 = "Requested filename. expected: %s, actual: %s";
      v27 = v24;
      v28 = OS_LOG_TYPE_FAULT;
      v29 = 22;
    }

    else
    {
      std::string::operator=((this + 88), &__p);
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v30 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        goto LABEL_71;
      }

      if (*(this + 111) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      *&buf[4] = v8;
      v26 = "Returned database. path: %s";
      v27 = v30;
      v28 = OS_LOG_TYPE_INFO;
      v29 = 12;
    }

    _os_log_impl(&dword_258FE9000, v27, v28, v26, buf, v29);
LABEL_71:
    if ((*(this + 56) & 1) == 0)
    {
      v31 = *(this + 2);
      (*(*v31 + 16))(v31);
      if ((*v40 & 1) == 0)
      {
        *buf = "TableName";
        *&buf[8] = 3;
        v43 = 1;
        v44[2] = 0;
        v45 = 0;
        v46 = "SoftwareVersion";
        v47 = 3;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = "SerialNumber";
        v52 = 3;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 5;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        CLSqliteDatabase::createTableIfSchemaDiffers(this, "TableInfo", buf, 0, 1);
        *v40 = 1;
      }

      CLSqliteDatabase::initUUID(this);
      (*(*v31 + 24))(v31);
    }

    if (!CLSqliteDatabase::setForeignKeysEnabled(this, 1))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v32 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_FAULT, "Unable to turn ON foreign keys check", buf, 2u);
      }
    }

    goto LABEL_80;
  }

  v12 = *(this + 111);
  if (v12 < 0)
  {
    v12 = *(this + 12);
  }

  if (!v12)
  {
    CLSqliteDatabase::init(buf);

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Persistence/DataMigration/CLSqlite/CLSqliteDatabase.mm", 133, "init");
    __break(1u);
    return;
  }

  v13 = CLSqliteDatabaseManager::instance(v3);
  v33 = *(this + 6);
  v34 = *(this + 28);
  v11 = &v35;
  if (*(this + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *(this + 8), *(this + 9));
  }

  else
  {
    v35 = *(this + 64);
  }

  v14 = CLSqliteDatabaseManager::openDatabase(v13, &v33, this + 88, &v39);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if (!v14)
  {
    goto LABEL_38;
  }

LABEL_20:
  if (v14 == 23)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 111) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = v8;
      v43 = 1024;
      *v44 = v14;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "#warning Could not open database. path: %s, rc: %d", buf, 0x12u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      v17 = this + 88;
      if (*(this + 111) < 0)
      {
        v17 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = v17;
      v43 = 1024;
      *v44 = v14;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_FAULT, "Could not open database. path: %s, rc: %d", buf, 0x12u);
    }

    CLSqliteDatabase::handleSqlError(*(this + 1), this + 11, *(this + 56), v14);
  }

  *(this + 1) = 0;
LABEL_80:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25906AF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  AutoLocker::~AutoLocker(&a12);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLSqliteDatabase::CLSqliteDatabase(CLSqliteDatabase *this, uint64_t *a2)
{
  *this = &unk_286A558A0;
  *(this + 1) = 0;
  *(this + 3) = this + 24;
  *(this + 4) = this + 24;
  *(this + 5) = 0;
  v3 = *a2;
  *(this + 28) = *(a2 + 4);
  *(this + 6) = v3;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), a2[2], a2[3]);
  }

  else
  {
    v4 = *(a2 + 1);
    *(this + 10) = a2[4];
    *(this + 4) = v4;
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  CLSqliteDatabase::init(this);
}

void CLSqliteDatabase::~CLSqliteDatabase(CLSqliteDatabase *this)
{
  *this = &unk_286A558A0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, this);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, this);
  for (i = *(this + 4); i != (this + 24); i = v6)
  {
    v6 = *(i + 8);
    v4 = CLSqliteDatabase::finalizeStatement(this, *(i + 16));
  }

  if (*(this + 1))
  {
    if (*(this + 28) >= 1)
    {
      do
      {
        v4 = CLMutexDubiousUnlock(*(this + 2));
        v7 = *(this + 28);
        v8 = __OFSUB__(v7--, 1);
        *(this + 28) = v7;
      }

      while (!((v7 < 0) ^ v8 | (v7 == 0)));
    }

    v9 = CLSqliteDatabaseManager::instance(v4);
    CLSqliteDatabaseManager::closeDatabase(v9, *(this + 1));
    *(this + 1) = 0;
  }

  if (*(this + 2))
  {
    *(this + 2) = 0;
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  std::__list_imp<sqlite3_stmt *>::clear(this + 3);
}

{
  CLSqliteDatabase::~CLSqliteDatabase(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLSqliteDatabase::finalizeStatement(CLSqliteDatabase *this, sqlite3_stmt *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  (*(*v4 + 16))(v4);
  v5 = *(this + 4);
  if (v5 == (this + 24))
  {
LABEL_4:
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v12 = a2;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "Could not find prepared statement. statement: %p", buf, 0xCu);
    }
  }

  else
  {
    while (1)
    {
      v6 = *(v5 + 1);
      if (*(v5 + 2) == a2)
      {
        break;
      }

      v5 = *(v5 + 1);
      if (v6 == (this + 24))
      {
        goto LABEL_4;
      }
    }

    v8 = *v5;
    *(v8 + 8) = v6;
    *v6 = v8;
    --*(this + 5);
    operator delete(v5);
    CLSqliteDatabase::finalizeStatement(*(this + 1), a2, v9);
  }

  return (*(*v4 + 24))(v4);
}

uint64_t CLSqliteDatabase::createTableIfSchemaDiffers(uint64_t a1, char *a2, const char **a3, char **a4, char a5)
{
  v144[19] = *MEMORY[0x277D85DE8];
  v124 = *(a1 + 16);
  (*(*v124 + 16))(v124);
  v126 = 256;
  if (!a3 || !*a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v35 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 136380675;
      *&buf[4] = a2;
      _os_log_impl(&dword_258FE9000, v35, OS_LOG_TYPE_FAULT, "Need at least one column in table. table: %{private}s", buf, 0xCu);
    }

    v36 = 0;
    goto LABEL_138;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "PRAGMA table_info(", 18);
  v9 = strlen(a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a2, v9);
  __p[0] = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, __p, 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, __p);
  if (__p[23] >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = *__p;
  }

  v12 = CLSqliteDatabase::prepareStatementNoCache(a1, v11);
  v107 = a5;
  v108 = a4;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v116 = 0;
  v13 = 1;
  v114 = a3;
  while (sqlite3_step(v12) == 100)
  {
    v15 = &a3[6 * v116];
    v16 = *v15;
    if (!*v15)
    {
      goto LABEL_36;
    }

    v17 = sqlite3_column_text(v12, 1);
    if (strcmp(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = *(v15 + 2);
    v19 = "INTEGER";
    if (v18 != 1)
    {
      v20 = &off_2798D46B0;
      v21 = 5;
      do
      {
        v22 = v20;
        if (!--v21)
        {
          break;
        }

        v20 += 2;
      }

      while (*(v22 - 2) != v18);
      v19 = *v22;
    }

    v23 = sqlite3_column_text(v12, 2);
    if (strcmp(v19, v23) || *(v15 + 12) != sqlite3_column_int(v12, 5) > 0)
    {
LABEL_19:
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v24 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v15 + 2);
        v26 = "INTEGER";
        if (v25 != 1)
        {
          v27 = &off_2798D46B0;
          v28 = 5;
          do
          {
            v29 = v27;
            if (!--v28)
            {
              break;
            }

            v27 += 2;
          }

          while (*(v29 - 2) != v25);
          v26 = *v29;
        }

        v30 = *v15;
        v31 = *(v15 + 12);
        v32 = sqlite3_column_text(v12, 1);
        v33 = sqlite3_column_text(v12, 2);
        v34 = sqlite3_column_int(v12, 5);
        *__p = 136382467;
        *&__p[4] = a2;
        *&__p[12] = 1024;
        *&__p[14] = v116;
        *&__p[18] = 2080;
        *&__p[20] = v30;
        *&__p[28] = 2080;
        *&__p[30] = v26;
        *&__p[38] = 1024;
        *&__p[40] = v31;
        *v128 = 2080;
        *&v128[2] = v32;
        *v129 = 2080;
        *&v129[2] = v33;
        LOWORD(v130) = 1024;
        *(&v130 + 2) = v34 > 0;
        _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEFAULT, "#warning Existing table's column does not match expected. table: %{private}s, index: %d, expected name: %s, expected type: %s, expected primary key: %d, actual name: %s, actual type: %s, actual primary key: %d", __p, 0x46u);
        a3 = v114;
      }

      v13 = 0;
    }

    ++v116;
  }

  if (!a3[6 * v116])
  {
    goto LABEL_41;
  }

LABEL_36:
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v37 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136380675;
    *&__p[4] = a2;
    _os_log_impl(&dword_258FE9000, v37, OS_LOG_TYPE_DEFAULT, "#warning Existing table's schema does not have the same number of columns as the requested schema. table: %{private}s", __p, 0xCu);
  }

  v13 = 0;
LABEL_41:
  CLSqliteDatabase::finalizeStatement(*(a1 + 8), v12, v14);
  if ((v13 & 1) == 0)
  {
    goto LABEL_124;
  }

  v38 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v39 = v116;
  do
  {
    v40 = &a3[6 * v39];
    if (*(v40 + 40) == 1)
    {
      if (v38 >= v123)
      {
        v43 = v121;
        v44 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v121) >> 4);
        v45 = v44 + 1;
        if (v44 + 1 > 0x555555555555555)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v123 - v121) >> 4) > v45)
        {
          v45 = 0x5555555555555556 * ((v123 - v121) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v123 - v121) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v46 = 0x555555555555555;
        }

        else
        {
          v46 = v45;
        }

        if (v46)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CLSqliteDatabase::ColumnInfo>>(&v121, v46);
        }

        v47 = (16 * ((v38 - v121) >> 4));
        v48 = *v40;
        v49 = *(v40 + 2);
        v47[1] = *(v40 + 1);
        v47[2] = v49;
        *v47 = v48;
        v50 = (48 * v44 + v43 - v38);
        if (v43 != v38)
        {
          v51 = v43;
          v52 = (v47 + v43 - v38);
          do
          {
            v53 = *v51;
            v54 = *(v51 + 2);
            v52[1] = *(v51 + 1);
            v52[2] = v54;
            *v52 = v53;
            v52 += 3;
            v51 += 48;
          }

          while (v51 != v38);
        }

        v38 = (v47 + 3);
        v121 = v50;
        v122 = (v47 + 3);
        v123 = 0;
        a3 = v114;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        v41 = *v40;
        v42 = *(v40 + 2);
        *(v38 + 1) = *(v40 + 1);
        *(v38 + 2) = v42;
        *v38 = v41;
        v38 += 48;
      }

      v122 = v38;
    }
  }

  while (v39-- > 0);
  memset(__p, 0, 24);
  std::stringbuf::str[abi:ne200100](&v141, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "PRAGMA foreign_key_list(", 24);
  v57 = strlen(a2);
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, a2, v57);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ")", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, __p);
  if (__p[23] >= 0)
  {
    v59 = __p;
  }

  else
  {
    v59 = *__p;
  }

  v60 = CLSqliteDatabase::prepareStatementNoCache(a1, v59);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v61 = sqlite3_step(v60);
  v63 = v121;
  v64 = v122;
  if (v122 == v121 && v61 == 100)
  {
    goto LABEL_115;
  }

  v65 = v61 == 100 || v122 == v121;
  if (v61 != 100)
  {
    v100 = 0;
    v101 = 0;
    goto LABEL_111;
  }

  v66 = 1;
  v67 = 36;
  v65 = 1;
  do
  {
    v68 = *&v63[v67 - 36];
    v69 = sqlite3_column_text(v60, 3);
    if (!strcmp(v68, v69))
    {
      v70 = *(v121 + v67 - 20);
      v71 = sqlite3_column_text(v60, 2);
      if (!strcmp(v70, v71))
      {
        v72 = *(v121 + v67 - 12);
        v73 = sqlite3_column_text(v60, 4);
        if (!strcmp(v72, v73))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, off_2798D46F8[*(v121 + v67)]);
          v74 = __p[23];
          v75 = *__p;
          v76 = sqlite3_column_text(v60, 5);
          if (v74 >= 0)
          {
            v77 = __p;
          }

          else
          {
            v77 = v75;
          }

          if (!strcmp(v77, v76))
          {
            std::string::basic_string[abi:ne200100]<0>(v119, off_2798D46F8[*(v121 + v67 - 4)]);
            v79 = v120;
            v80 = v119[0];
            v81 = sqlite3_column_text(v60, 6);
            if (v79 >= 0)
            {
              v82 = v119;
            }

            else
            {
              v82 = v80;
            }

            v78 = strcmp(v82, v81) != 0;
            if (v120 < 0)
            {
              operator delete(v119[0]);
            }
          }

          else
          {
            v78 = 1;
          }

          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
            if (!v78)
            {
              goto LABEL_108;
            }
          }

          else if (!v78)
          {
            goto LABEL_108;
          }
        }
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v83 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      v111 = v83;
      v84 = *(v121 + v67 - 36);
      v85 = *(v121 + v67 - 20);
      v86 = *(v121 + v67 - 12);
      v87 = sqlite3_column_text(v60, 3);
      v88 = sqlite3_column_text(v60, 2);
      v110 = sqlite3_column_text(v60, 4);
      v113 = v67;
      std::string::basic_string[abi:ne200100]<0>(v119, off_2798D46F8[*(v121 + v67 - 4)]);
      v89 = v88;
      v109 = v66;
      if (v120 >= 0)
      {
        v90 = v119;
      }

      else
      {
        v90 = v119[0];
      }

      v91 = sqlite3_column_text(v60, 6);
      v92 = v86;
      v93 = v60;
      std::string::basic_string[abi:ne200100]<0>(v117, off_2798D46F8[*(v121 + v113)]);
      v94 = v118;
      v95 = v117[0];
      v96 = sqlite3_column_text(v93, 5);
      *__p = 136383235;
      v97 = v117;
      if (v94 < 0)
      {
        v97 = v95;
      }

      *&__p[4] = a2;
      *&__p[12] = 2080;
      *&__p[14] = v84;
      *&__p[22] = 2080;
      *&__p[24] = v85;
      *&__p[32] = 2080;
      *&__p[34] = v92;
      *&__p[42] = 2080;
      *v128 = v87;
      *&v128[8] = 2080;
      *v129 = v89;
      *&v129[8] = 2080;
      v83 = v111;
      v130 = v110;
      v131 = 2080;
      v132 = v90;
      v133 = 2080;
      v134 = v91;
      v135 = 2080;
      v136 = v97;
      v137 = 2080;
      v138 = v96;
      _os_log_impl(&dword_258FE9000, v111, OS_LOG_TYPE_DEBUG, "#warning Existing table's foreign key constraint does not match expected. table: %{private}s, ExpectedFromCol: %s, ExpectedToTable: %s, ExpectedToCol: %s, ActualFromCol: %s, ActualToTable: %s, ActualToCol: %s, ExpectedOnDelete: %s, ActualOnDelete: %s, ExpectedOnUpdate: %s, ActualOnUpdate: %s", __p, 0x70u);
      if (v118 < 0)
      {
        operator delete(v117[0]);
      }

      a3 = v114;
      v60 = v93;
      v67 = v113;
      if (v120 < 0)
      {
        operator delete(v119[0]);
      }

      v66 = v109;
    }

    v65 = 0;
LABEL_108:
    v98 = sqlite3_step(v60);
    v63 = v121;
    v64 = v122;
    v101 = v98 == 100;
    v99 = v66 + 1;
    if (v66 == 0xAAAAAAAAAAAAAAABLL * ((v122 - v121) >> 4))
    {
      break;
    }

    v67 += 48;
    ++v66;
  }

  while (v98 == 100);
  v100 = v99 - 1;
LABEL_111:
  if (v100 < 0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 4) || v101)
  {
LABEL_115:
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v103 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_258FE9000, v103, OS_LOG_TYPE_DEFAULT, "#warning Actual table has more foreign key contraints than expected", __p, 2u);
    }

    v65 = 0;
  }

  CLSqliteDatabase::finalizeStatement(*(a1 + 8), v60, v62);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }

  if (v65)
  {
    v36 = 0;
    goto LABEL_131;
  }

LABEL_124:
  if (v116)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v104 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136380675;
      *&__p[4] = a2;
      _os_log_impl(&dword_258FE9000, v104, OS_LOG_TYPE_DEFAULT, "#warning Table exists but does not have matching schema. table: %{private}s", __p, 0xCu);
    }

    CLSqliteDatabase::dropTable_internal(a1, a2);
  }

  CLSqliteDatabase::createTable(a1, a2, a3);
  v36 = 1;
LABEL_131:
  if ((v107 & 1) == 0)
  {
    CLSqliteDatabase::createCountTriggersIfNecessary(a1, a2);
  }

  if (v108)
  {
    CLSqliteDatabase::createIndexIfNecessary(a1, a2, v108);
  }

  *buf = *MEMORY[0x277D82818];
  v105 = *(MEMORY[0x277D82818] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
  v140 = v105;
  v141 = MEMORY[0x277D82878] + 16;
  if (v143 < 0)
  {
    operator delete(v142[7].__locale_);
  }

  v141 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v142);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v144);
  if ((v126 & 0x100) != 0)
  {
LABEL_138:
    if (v126)
    {
      pthread_mutex_unlock(v125);
    }

    else
    {
      (*(*v124 + 24))(v124);
    }
  }

  return v36;
}