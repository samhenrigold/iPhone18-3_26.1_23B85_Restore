float *_ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoLi0EEEvT1_SM_SM_SM_SM_SF_(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_SM_SF_(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 8;
    if (result + 8 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 8);
        if (v6 < *v4)
        {
          v7 = *(v4 + 12);
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 8);
            v8 -= 8;
            if (v9 <= v6)
            {
              v10 = result + v8 + 8;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          *(v10 + 4) = v7;
        }

        v2 = v5 + 8;
        v3 += 8;
        v4 = v5;
      }

      while (v5 + 8 != a2);
    }
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo *,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::{lambda(std::_ClassicAlgPolicy const&,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo * const&)#1} &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*(a2 - 2) <= COERCE_FLOAT(*a1))
  {
    v5 = a1 + 2;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 2;
    }

    while (*v3 <= *&v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[2];
      v3 += 2;
    }

    while (v4 <= *&v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 2);
      a2 -= 2;
    }

    while (v6 > *&v2);
  }

  while (v3 < a2)
  {
    v7 = *v3;
    *v3 = *a2;
    *a2 = v7;
    do
    {
      v8 = v3[2];
      v3 += 2;
    }

    while (v8 <= *&v2);
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 > *&v2);
  }

  if (v3 - 2 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo *,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::{lambda(std::_ClassicAlgPolicy const&,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo * const&)#1} &>(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[v2 + 2];
    v2 += 2;
  }

  while (v4 < *&v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v8 >= *&v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v7 >= *&v3);
  }

  if (v5 < a2)
  {
    v9 = &a1[v2];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        v12 = v9[2];
        v9 += 2;
      }

      while (v12 < *&v3);
      do
      {
        v13 = *(v10 - 2);
        v10 -= 2;
      }

      while (v13 >= *&v3);
    }

    while (v9 < v10);
    v6 = v9 - 2;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEbT1_SM_SF_(float *a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1[2];
      v5 = *(a2 - 2);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 1);
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 1) = v16;
          if (a1[2] < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 1);
        *(a1 + 1) = v3;
        if (*(a2 - 2) >= *&v3)
        {
          return 1;
        }

        *(a1 + 1) = *(a2 - 1);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 1);
LABEL_13:
      *(a2 - 1) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoLi0EEEvT1_SM_SM_SM_SM_SF_(a1, a1 + 2, a1 + 4, a1 + 3, a2 - 1);
        return 1;
      }

      goto LABEL_14;
    }

    v11 = a1[2];
    v12 = *a1;
    v13 = a1[4];
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 1);
        v20 = *(a1 + 2);
        *(a1 + 1) = v20;
        *(a1 + 2) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 1) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 2) < v13)
        {
          v31 = *(a1 + 2);
          *(a1 + 2) = *(a2 - 1);
          *(a2 - 1) = v31;
          if (a1[4] < a1[2])
          {
            v33 = *(a1 + 1);
            v32 = *(a1 + 2);
            *(a1 + 1) = v32;
            *(a1 + 2) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 1) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 2) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1 + 4;
  v7 = a1[4];
  v8 = a1[2];
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 1);
      v17 = *(a1 + 2);
      *(a1 + 1) = v17;
      *(a1 + 2) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 1) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v10;
  }

LABEL_34:
  v23 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 1);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 1 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    if (++v23 == a2)
    {
      return 1;
    }
  }
}

float *_ZNSt3__119__partial_sort_implB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoSL_EET1_SM_SM_T2_OSF_(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_OSF_NS_15iterator_traitsISM_E15difference_typeESM_(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_OSF_NS_15iterator_traitsISM_E15difference_typeESM_(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[2 * v14];
          v16 = v18 + 2;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[4];
            v21 = v18 + 4;
            if (*(v21 - 2) < v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v16 == v6)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v6;
          *v6 = v15;
          _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_SM_OSF_NS_15iterator_traitsISM_E15difference_typeE(a1, (v16 + 2), a4, ((v16 + 2) - a1) >> 3);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_OSF_NS_15iterator_traitsISM_E15difference_typeESM_(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 < v8[2])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = *a4;
      if (*v8 >= *a4)
      {
        v11 = *(a4 + 1);
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && *v8 < v8[2])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (*v8 >= v10);
        *a4 = v10;
        *(a4 + 1) = v11;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_SM_OSF_NS_15iterator_traitsISM_E15difference_typeE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = (a2 - 8);
    v8 = *(a2 - 8);
    if (*v6 < v8)
    {
      v9 = *(a2 - 4);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 1) = v9;
    }
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
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

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

void _GLOBAL__sub_I_OU3DOROfflineEspressoV2_mm()
{
  v30 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = @"Cabinet";
  *&v15 = v1;
  *(&v15 + 1) = @"Refrigerator";
  *&v16 = @"Shelf";
  *(&v16 + 1) = @"Stove";
  v2 = @"Bed";
  *&v17 = v2;
  *(&v17 + 1) = @"Sink";
  *&v18 = @"Washer";
  *(&v18 + 1) = @"Toilet";
  v3 = @"Bathtub";
  *&v19 = v3;
  *(&v19 + 1) = @"Oven";
  *&v20 = @"Dishwasher";
  *(&v20 + 1) = @"Fireplace";
  v21 = @"Stool";
  v22 = @"Chair";
  v4 = @"Table";
  v23 = v4;
  v24 = @"Screen";
  v5 = @"Sofa";
  v25 = v5;
  v26 = @"Stairs";
  v27 = @"Window";
  v28 = @"Door";
  v29 = @"BuildInCabinet";
  qword_28155A930 = 0;
  unk_28155A938 = 0;
  ou3dod::kObjectTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kObjectTypesLUT, &v15, &v30, 0x15uLL);
  for (i = 160; i != -8; i -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kObjectTypesLUT, &dword_25D1DB000);
  v7 = v1;
  *&v15 = v7;
  qword_28155A770 = 0;
  unk_28155A778 = 0;
  ou3dod::kAFClassIdToObjectTypeOffline = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kAFClassIdToObjectTypeOffline, &v15, &v15 + 1, 1uLL);

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kAFClassIdToObjectTypeOffline, &dword_25D1DB000);
  v8 = v7;
  *&v15 = v8;
  v9 = v2;
  *(&v15 + 1) = v9;
  v10 = v3;
  *&v16 = v10;
  v11 = v4;
  *(&v16 + 1) = v11;
  v12 = v5;
  *&v17 = v12;
  qword_28155A898 = 0;
  unk_28155A8A0 = 0;
  ou3dod::kOfflineSsdTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kOfflineSsdTypesLUT, &v15, &v17 + 1, 5uLL);
  for (j = 32; j != -8; j -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kOfflineSsdTypesLUT, &dword_25D1DB000);
  v17 = xmmword_25D277F00;
  v18 = unk_25D277F10;
  v19 = xmmword_25D277F20;
  v15 = xmmword_25D277EE0;
  v16 = unk_25D277EF0;
  qword_28155A808 = 0;
  unk_28155A810 = 0;
  ou3dod::kOfflineSSDAnchorSizeList = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&ou3dod::kOfflineSSDAnchorSizeList, &v15, &v20, 5uLL);
  __cxa_atexit(_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEED1B8ne200100Ev, &ou3dod::kOfflineSSDAnchorSizeList, &dword_25D1DB000);
  *&v15 = v8;
  DWORD2(v15) = 1055286886;
  *&v16 = v9;
  DWORD2(v16) = 1039516303;
  *&v17 = v10;
  DWORD2(v17) = 1045220557;
  *&v18 = v11;
  DWORD2(v18) = 1050253722;
  *&v19 = v12;
  DWORD2(v19) = 1047904911;
  std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::map[abi:ne200100](ou3dod::kOfflineSSD3dConfThresholdMap, &v15, 5);
  for (k = 64; k != -16; k -= 16)
  {
  }

  __cxa_atexit(std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::~map[abi:ne200100], ou3dod::kOfflineSSD3dConfThresholdMap, &dword_25D1DB000);
  objc_autoreleasePoolPop(v0);
}

void sub_25D1F9E9C(_Unwind_Exception *a1)
{
  for (i = 64; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(result, a2 - v2);
  }
}

void sub_25D1FB044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a23)
  {
    operator delete(a23);
  }

  v26 = *(v24 - 128);
  if (v26)
  {
    *(v24 - 120) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

void _ZL6selectIDv3_fENSt3__16vectorIT_NS1_9allocatorIS3_EEEEPKS3_mPKm(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a4, a2);
  if (a2)
  {
    v8 = a4[1];
    v9 = 8 * a2;
    do
    {
      v10 = a4[2];
      if (v8 >= v10)
      {
        v11 = (v8 - *a4) >> 4;
        if ((v11 + 1) >> 60)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v12 = v10 - *a4;
        v13 = v12 >> 3;
        if (v12 >> 3 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v14);
        }

        *(16 * v11) = *(a1 + 16 * *a3);
        v8 = (16 * v11 + 16);
        v15 = a4[1] - *a4;
        v16 = (16 * v11 - v15);
        memcpy(v16, *a4, v15);
        v17 = *a4;
        *a4 = v16;
        a4[1] = v8;
        a4[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = *(a1 + 16 * *a3);
        v8 += 16;
      }

      a4[1] = v8;
      ++a3;
      v9 -= 8;
    }

    while (v9);
  }
}

void sub_25D1FB66C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D1FBA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id OUKeyframeToDictionary(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "count")}];
  [v2 setObject:v3 forKeyedSubscript:@"count"];

  [v1 cameraPose];
  v74[0] = v4;
  v74[1] = v5;
  v74[2] = v6;
  v74[3] = v7;
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:v74 length:64];
  [v2 setObject:v8 forKeyedSubscript:@"cameraPose"];

  v9 = [v1 points];
  v10 = [v1 points];
  v11 = [v1 count];
  v71 = 0;
  v72 = 0;
  v73 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v71, v9, (v10 + 16 * v11), (v10 + 16 * v11 - v9) >> 4);
  std::vector<float>::vector[abi:ne200100](&v69, ((v72 - v71) >> 3) + ((v72 - v71) >> 4));
  v12 = v71;
  if (v72 != v71)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v69 + v13;
      v17 = &v12[v14];
      v18 = *v17;
      *(v16 + 2) = *(v17 + 2);
      *v16 = v18;
      ++v15;
      v12 = v71;
      v14 += 16;
      v13 += 12;
    }

    while (v15 < (v72 - v71) >> 4);
  }

  if (v70 == v69)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v69 length:v70 - v69];
  }

  v20 = v19;
  [v2 setObject:v19 forKeyedSubscript:@"points"];

  v21 = [v1 pointsToWorld];
  v22 = [v1 pointsToWorld];
  v23 = [v1 count];
  v66 = 0;
  v67 = 0;
  v68 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v66, v21, v22 + 16 * v23, (v22 + 16 * v23 - v21) >> 4);
  std::vector<float>::vector[abi:ne200100](&v64, ((v67 - v66) >> 3) + ((v67 - v66) >> 4));
  v24 = v66;
  if (v67 != v66)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = v64 + v25;
      v29 = &v24[v26];
      v30 = *v29;
      *(v28 + 2) = *(v29 + 2);
      *v28 = v30;
      ++v27;
      v24 = v66;
      v26 += 16;
      v25 += 12;
    }

    while (v27 < (v67 - v66) >> 4);
  }

  if (v65 == v64)
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v31 = [MEMORY[0x277CBEA90] dataWithBytes:v64 length:v65 - v64];
  }

  v32 = v31;
  [v2 setObject:v31 forKeyedSubscript:@"pointsToWorld"];

  v33 = [v1 semanticLabels];
  v34 = [v1 count];
  if (v33 && v34)
  {
    v35 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:4 * v34];
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v36 = v35;
  [v2 setObject:v35 forKeyedSubscript:@"semanticLabels"];

  v37 = [v1 semanticVotes];
  v38 = [v1 count];
  if (v37 && v38)
  {
    v39 = [MEMORY[0x277CBEA90] dataWithBytes:v37 length:8 * v38];
  }

  else
  {
    v39 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v40 = v39;
  [v2 setObject:v39 forKeyedSubscript:@"semanticVotes"];

  v41 = [v1 identifier];
  v42 = [v41 UUIDString];

  [v2 setObject:v42 forKeyedSubscript:@"identifier"];
  v43 = [v1 colors];
  v44 = [v1 colors];
  v45 = [v1 count];
  v61 = 0;
  v62 = 0;
  v63 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v61, v43, v44 + 16 * v45, (v44 + 16 * v45 - v43) >> 4);
  std::vector<float>::vector[abi:ne200100](&__p, ((v62 - v61) >> 3) + ((v62 - v61) >> 4));
  v46 = v61;
  if (v62 != v61)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = __p + v47;
      v51 = &v46[v48];
      v52 = *v51;
      *(v50 + 2) = *(v51 + 2);
      *v50 = v52;
      ++v49;
      v46 = v61;
      v48 += 16;
      v47 += 12;
    }

    while (v49 < (v62 - v61) >> 4);
  }

  if (v60 == __p)
  {
    v53 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v53 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:v60 - __p];
  }

  v54 = v53;
  [v2 setObject:v53 forKeyedSubscript:@"colors"];

  v55 = MEMORY[0x277CCABB0];
  [v1 timestamp];
  v56 = [v55 numberWithDouble:?];
  [v2 setObject:v56 forKeyedSubscript:@"timestamp"];

  v57 = v2;
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  return v57;
}

void sub_25D1FC12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  v29 = v28;

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

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

OUKeyframeExtended *OUKeyframeFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [[OUKeyframeExtended alloc] initWithDictionary:v1];

  return v2;
}

id OUKeyframeSequenceToDictionary(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v1 objectForKeyedSubscript:v7];
        v9 = OUKeyframeToDictionary(v8);
        v10 = [v7 UUIDString];
        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return v2;
}

id OUKeyframeSequenceFromDictionary(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [v1 allKeys];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = *v16;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v16 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v15 + 1) + 8 * i);
        v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
        v7 = [OUKeyframeExtended alloc];
        v8 = [v1 objectForKeyedSubscript:v5];
        v9 = [(OUKeyframeExtended *)v7 initWithDictionary:v8];

        if (v6)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          [v13 setObject:v9 forKeyedSubscript:v6];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v2);
  }

  v11 = [v13 copy];

  return v11;
}

id OUKeyframeSequenceFromDictionaryWithId(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = a1;
  v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [v16 allKeys];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
        v8 = [OUKeyframeExtended alloc];
        v9 = [v16 objectForKeyedSubscript:v6];
        v10 = [(OUKeyframeExtended *)v8 initWithDictionary:v9 withGroupId:a2];

        if (v7)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          [v14 setObject:v10 forKeyedSubscript:v7];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v12 = [v14 copy];

  return v12;
}

uint64_t *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

uint64_t *_ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
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

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_25D1FCCCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v12);
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
    if (v8 == v3)
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2, void *a3)
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
    if (v3 >= *&v4)
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

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D1FD108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15++ = v16;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_25D1FD2B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t *_ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
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

void sub_25D1FD4AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<half>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 2;
        *v15++ = v16;
        v14 += 2;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *_ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_25D1FD650(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25D1FD7A0(_Unwind_Exception *a1)
{
  MEMORY[0x25F894DE0](v2, 0x1092C4055567BECLL);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void OU3DORIDTree::Node::Print(OU3DORIDTree::Node *this)
{
  if (*(this + 52) == 1)
  {
    std::to_string(&v8, *(this + 12));
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "unknown");
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v8;
  }

  else
  {
    v2 = v8.__r_.__value_.__r.__words[0];
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  v4 = this;
  if (*(this + 23) < 0)
  {
    v4 = *this;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  NSLog(&cfstr_NodeNameIdOfTh.isa, v5, v3);
  v7 = *(this + 3);
  v6 = *(this + 4);
  while (v7 != v6)
  {
    OU3DORIDTree::Node::Print(*v7++);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_25D1FD8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **OU3DORIDTree::FindNodeInternal(uint64_t a1, const void **a2, const void **a3)
{
  v4 = a2;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = *(a3 + 23);
  v9 = v8;
  if (v8 < 0)
  {
    v8 = a3[1];
  }

  if (v7 != v8 || (v6 >= 0 ? (v10 = a2) : (v10 = *a2), v9 >= 0 ? (v11 = a3) : (v11 = *a3), memcmp(v10, v11, v7)))
  {
    v12 = v4[3];
    v13 = v4[4];
    while (1)
    {
      if (v12 == v13)
      {
        return 0;
      }

      NodeInternal = OU3DORIDTree::FindNodeInternal(a1, *v12, a3);
      if (NodeInternal)
      {
        break;
      }

      ++v12;
    }

    return NodeInternal;
  }

  return v4;
}

void OU3DORIDTree::AddNode(uint64_t a1, uint64_t a2, const void **a3)
{
  NodeInternal = OU3DORIDTree::FindNodeInternal(a1, *(a1 + 24), a3);
  if (NodeInternal)
  {
    v5 = NodeInternal;
    v7 = NodeInternal[4];
    v6 = NodeInternal[5];
    if (v7 >= v6)
    {
      v9 = NodeInternal[3];
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v11 = v6 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject *>>((NodeInternal + 3), v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v8 = 8 * v10 + 8;
      v15 = NodeInternal[3];
      v16 = NodeInternal[4] - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = v5[3];
      v5[3] = v17;
      v5[4] = v8;
      v5[5] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v7 = a2;
      v8 = (v7 + 8);
    }

    v5[4] = v8;
  }
}

unint64_t OU3DORIDTree::FindRange(uint64_t a1, const void **a2)
{
  NodeInternal = OU3DORIDTree::FindNodeInternal(a1, *(a1 + 24), a2);

  return OU3DORIDTree::Node::IDRange(NodeInternal);
}

unint64_t OU3DORIDTree::Node::IDRange(OU3DORIDTree::Node *this)
{
  if ((*(this + 52) & 1) != 0 || (v2 = *(this + 3), *(this + 4) == v2))
  {
    v4 = *(this + 12);
    v5 = v4;
  }

  else
  {
    v3 = OU3DORIDTree::Node::IDRange(*v2);
    v4 = v3;
    v5 = HIDWORD(v3);
    v7 = *(this + 3);
    v6 = *(this + 4);
    while (v7 != v6)
    {
      v8 = *v7++;
      v9 = OU3DORIDTree::Node::IDRange(v8);
      if (v4 >= v9)
      {
        v4 = v9;
      }

      if (v5 <= SHIDWORD(v9))
      {
        v5 = HIDWORD(v9);
      }

      else
      {
        v5 = v5;
      }
    }
  }

  return v4 | (v5 << 32);
}

OU3DORIDTree::Node *OU3DORIDTree::FindNodeBasedOnIDInternal(uint64_t a1, OU3DORIDTree::Node *a2, int a3, void ***a4)
{
  if (!a2)
  {
LABEL_16:
    if (a4)
    {
      std::vector<std::string>::clear[abi:ne200100](a4);
    }

    return 0;
  }

  v6 = a2;
LABEL_3:
  if (*(v6 + 52) != 1 || *(v6 + 12) != a3)
  {
    v7 = *(v6 + 3);
    v8 = *(v6 + 4);
    while (v7 != v8)
    {
      v9 = *v7;
      v10 = OU3DORIDTree::Node::IDRange(*v7);
      if (v10 <= a3 && SHIDWORD(v10) >= a3)
      {
        if (a4)
        {
          std::vector<std::string>::push_back[abi:ne200100](a4, v6);
        }

        v6 = v9;
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v7;
    }

    goto LABEL_16;
  }

  if (a4)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4, v6);
  }

  return v6;
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

void OU3DORIDTree::GetRootToNodePath(OU3DORIDTree::Node **this@<X0>, int a2@<W1>, std::string::value_type a3@<W2>, std::string *a4@<X8>)
{
  *&a4->__r_.__value_.__l.__data_ = 0uLL;
  a4->__r_.__value_.__r.__words[2] = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  OU3DORIDTree::FindNodeBasedOnIDInternal(this, this[3], a2, &v17);
  v6 = v17;
  if (0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3) >= 2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = &v6[v7];
      v12 = v9[3];
      v10 = v9 + 3;
      v11 = v12;
      v13 = *(v10 + 23);
      if (v13 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      if (v13 >= 0)
      {
        v15 = *(v10 + 23);
      }

      else
      {
        v15 = v10[1];
      }

      std::string::append(a4, v14, v15);
      v6 = v17;
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3);
      if (v16 - 1 > v8)
      {
        std::string::push_back(a4, a3);
        v6 = v17;
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3);
      }

      ++v8;
      v7 += 3;
    }

    while (v16 > v8);
  }

  v20 = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
}

void sub_25D1FDDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
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
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

id objc_cast<NSArray>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id OUCameraToDictionary(void *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v41 = a1;
  v42 = [MEMORY[0x277CBEB38] dictionary];
  [v41 intrinsics];
  v38 = v2;
  v39 = v1;
  v40 = v3;
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:*&v3];
  v37 = v47;
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:*&v39];
  v36 = v48;
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:*&v38];
  v49 = v35;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:3];
  v43.columns[0].i64[0] = v34;
  HIDWORD(v4) = DWORD1(v40);
  LODWORD(v4) = DWORD1(v40);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v46[0] = v5;
  HIDWORD(v6) = DWORD1(v39);
  LODWORD(v6) = DWORD1(v39);
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v46[1] = v7;
  HIDWORD(v8) = DWORD1(v38);
  LODWORD(v8) = DWORD1(v38);
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v46[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v43.columns[0].i64[1] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v40), DWORD2(v40)))}];
  v45[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v39), DWORD2(v39)))}];
  v45[1] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v38), DWORD2(v38)))}];
  v45[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
  v43.columns[1].i64[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:3];

  [v42 setObject:v15 forKeyedSubscript:@"intrinsic"];
  v16 = MEMORY[0x277CCABB0];
  [v41 imageResolution];
  v17 = [v16 numberWithDouble:?];
  v44[0] = v17;
  v18 = MEMORY[0x277CCABB0];
  [v41 imageResolution];
  v20 = [v18 numberWithDouble:v19];
  v44[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  [v42 setObject:v21 forKeyedSubscript:@"image_resolution"];

  [v41 pose];
  v43.columns[0] = v22;
  v43.columns[1] = v23;
  v43.columns[2] = v24;
  v43.columns[3] = v25;
  v26 = float4x4ToNSArray(&v43, *v22.i64);
  [v42 setObject:v26 forKeyedSubscript:@"pose"];

  [v41 transform];
  v43.columns[0] = v27;
  v43.columns[1] = v28;
  v43.columns[2] = v29;
  v43.columns[3] = v30;
  v31 = float4x4ToNSArray(&v43, *v27.i64);
  [v42 setObject:v31 forKeyedSubscript:@"transform"];

  v32 = [v42 copy];

  return v32;
}

_OUCamera *OUCameraFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [[_OUCamera alloc] initWithDictionary:v1];

  return v2;
}

void *VECV::ConnectedComponent::ConnectedComponent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[8] = 0;
  a1[7] = a1 + 8;
  v69 = a1 + 7;
  a1[9] = 0;
  a1[11] = 0;
  v68 = a1 + 11;
  a1[10] = a1 + 11;
  v70 = a1 + 10;
  a1[12] = 0;
  a1[5] = a3 + 2;
  a1[6] = a4 + 2;
  a1[4] = malloc_type_calloc((a4 + 2) * (a3 + 2), 2uLL, 0x1000040BDFB0063uLL);
  v73[0] = 0;
  v73[1] = 0;
  v72 = v73;
  v74 = 0;
  v75 = &v74;
  v8 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v72, &v74, &std::piecewise_construct, &v75);
  *(v8 + 20) = 0;
  v8[6] = 0;
  if (a6 == 1)
  {
    if (!a4)
    {
      goto LABEL_87;
    }

    v9 = 0;
    v10 = 0;
    v66 = 2;
    v67 = 0;
    do
    {
      if (a3)
      {
        v11 = 0;
        v12 = 2;
        do
        {
          if (*(*a1 + v9 * a1[3] + v11))
          {
            v13 = a1[4];
            v14 = a1[5];
            v15 = (v13 + v67 * v14 + v12);
            v16 = *v15;
            if (*v15)
            {
              v17 = *v15;
            }

            else
            {
              v17 = -1;
            }

            v18 = v13 + v66 * v14;
            v19 = *(v18 + v12 - 2);
            if (v19 >= v17)
            {
              v20 = v17;
            }

            else
            {
              v20 = *(v18 + v12 - 2);
            }

            if (!*(v18 + v12 - 2))
            {
              v20 = v17;
            }

            v21 = v20;
            v22 = *(v15 - 1);
            if (v22 < v20)
            {
              v21 = *(v15 - 1);
            }

            if (*(v15 - 1))
            {
              v20 = v21;
            }

            v23 = v15[1];
            if (v23 >= v20)
            {
              v24 = v20;
            }

            else
            {
              v24 = v15[1];
            }

            if (v15[1])
            {
              v25 = v24;
            }

            else
            {
              v25 = v20;
            }

            if (v25 == 0xFFFF)
            {
              *(v18 + v12) = ++v10;
              v74 = v10;
              v75 = &v74;
              v26 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v72, &v74, &std::piecewise_construct, &v75);
              *(v26 + 20) = v10;
              v26[6] = 0;
            }

            else
            {
              *(v18 + v12) = v25;
              if (v16 > v25)
              {
                UnionFind<unsigned short>::Union(&v72, v16, v25);
              }

              if (v19 > v25)
              {
                UnionFind<unsigned short>::Union(&v72, v19, v25);
              }

              if (v22 > v25)
              {
                UnionFind<unsigned short>::Union(&v72, v22, v25);
              }

              if (v23 > v25)
              {
                UnionFind<unsigned short>::Union(&v72, v23, v24);
              }
            }
          }

          ++v11;
          v12 += 2;
        }

        while (a3 != v11);
      }

      ++v9;
      v66 += 2;
      v67 += 2;
    }

    while (v9 != a4);
  }

  else
  {
    if (!a4)
    {
      goto LABEL_87;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 2;
    do
    {
      if (a3)
      {
        v31 = 0;
        do
        {
          if (*(*a1 + v28 * a1[3] + v31))
          {
            v32 = a1[4];
            v33 = a1[5];
            v34 = v32 + v27 * v33 + 2 * v31;
            v35 = *(v34 + 2);
            if (*(v34 + 2))
            {
              v36 = *(v34 + 2);
            }

            else
            {
              v36 = -1;
            }

            v37 = v32 + v30 * v33;
            v38 = *(v37 + 2 * v31);
            if (v38 >= v36)
            {
              v39 = v36;
            }

            else
            {
              v39 = *(v37 + 2 * v31);
            }

            if (*(v37 + 2 * v31))
            {
              v40 = v39;
            }

            else
            {
              v40 = v36;
            }

            if (v40 == 0xFFFF)
            {
              *(v37 + 2 * v31 + 2) = ++v29;
              v74 = v29;
              v75 = &v74;
              v41 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v72, &v74, &std::piecewise_construct, &v75);
              *(v41 + 20) = v29;
              v41[6] = 0;
            }

            else
            {
              *(v37 + 2 * v31 + 2) = v40;
              if (v35 > v40)
              {
                UnionFind<unsigned short>::Union(&v72, v35, v40);
              }

              if (v38 > v40)
              {
                UnionFind<unsigned short>::Union(&v72, v38, v39);
              }
            }
          }

          ++v31;
        }

        while (a3 != v31);
      }

      ++v28;
      v27 += 2;
      v30 += 2;
    }

    while (v28 != a4);
  }

  v42 = 0;
  do
  {
    v43 = v42 + 1;
    if (a3)
    {
      v44 = 0;
      do
      {
        v45 = UnionFind<unsigned short>::Find(&v72, *(a1[4] + 2 * a1[5] * v43 + 2 * v44 + 2));
        *(a1[4] + 2 * a1[5] * v43 + 2 * v44 + 2) = v45;
        v74 = v45;
        v75 = &v74;
        v46 = std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v69, &v74, &std::piecewise_construct, &v75);
        ++v46[5];
        v47 = *v68;
        if (!*v68)
        {
          goto LABEL_71;
        }

        v48 = v68;
        do
        {
          v49 = *(v47 + 32);
          v50 = v49 >= v74;
          v51 = v49 < v74;
          if (v50)
          {
            v48 = v47;
          }

          v47 = *(v47 + 8 * v51);
        }

        while (v47);
        if (v48 != v68 && v74 >= *(v48 + 16))
        {
          v75 = &v74;
          v54 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74, &std::piecewise_construct, &v75)[5];
          v75 = &v74;
          v55 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74, &std::piecewise_construct, &v75);
          if (v54 >= v44)
          {
            v56 = v44;
          }

          else
          {
            v56 = v54;
          }

          v55[5] = v56;
          v75 = &v74;
          v57 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74, &std::piecewise_construct, &v75)[6];
          v75 = &v74;
          v58 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74, &std::piecewise_construct, &v75);
          if (v57 <= v44)
          {
            v59 = v44;
          }

          else
          {
            v59 = v57;
          }

          v58[6] = v59;
          v75 = &v74;
          v60 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74, &std::piecewise_construct, &v75)[7];
          v75 = &v74;
          v61 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74, &std::piecewise_construct, &v75);
          if (v60 >= v42)
          {
            v62 = v42;
          }

          else
          {
            v62 = v60;
          }

          v61[7] = v62;
          v75 = &v74;
          v63 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74, &std::piecewise_construct, &v75)[8];
          v75 = &v74;
          v52 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74, &std::piecewise_construct, &v75);
          if (v63 <= v42)
          {
            v53 = v42;
          }

          else
          {
            v53 = v63;
          }
        }

        else
        {
LABEL_71:
          v75 = &v74;
          v52 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74, &std::piecewise_construct, &v75);
          v52[5] = v44;
          v52[6] = v44;
          v53 = v42;
          v52[7] = v42;
        }

        v52[8] = v53;
        ++v44;
      }

      while (v44 != a3);
    }

    ++v42;
  }

  while (v43 != a4);
LABEL_87:
  std::__tree<int>::destroy(&v72, v73[0]);
  return a1;
}

void sub_25D1FF784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  std::__tree<int>::destroy(&a18, a19);
  std::__tree<int>::destroy(a16, *a14);
  std::__tree<int>::destroy(a15, *a10);
  _Unwind_Resume(a1);
}

uint64_t *UnionFind<unsigned short>::Union(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v19 = a2;
  v18 = a3;
  if (a2 >= a3)
  {
    v4 = &v19;
  }

  else
  {
    v4 = &v18;
  }

  v20 = v4;
  v5 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v4, &std::piecewise_construct, &v20) + 5;
  do
  {
    v6 = v5;
    v5 = v5[1];
  }

  while (v5);
  v7 = *v6;
  if (v18 >= v19)
  {
    v8 = &v19;
  }

  else
  {
    v8 = &v18;
  }

  v20 = v8;
  result = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v8, &std::piecewise_construct, &v20);
  v10 = result + 5;
  do
  {
    v11 = v10;
    v10 = v10[1];
  }

  while (v10);
  if (v7 != *v11)
  {
    if (v18 >= v19)
    {
      v12 = &v19;
    }

    else
    {
      v12 = &v18;
    }

    v20 = v12;
    v13 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v12, &std::piecewise_construct, &v20) + 5;
    do
    {
      v14 = v13;
      v13 = v13[1];
    }

    while (v13);
    if (v19 >= v18)
    {
      v15 = &v19;
    }

    else
    {
      v15 = &v18;
    }

    v20 = v15;
    v16 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v15, &std::piecewise_construct, &v20) + 5;
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
    v20 = v17;
    result = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v17, &std::piecewise_construct, &v20);
    result[6] = v14;
  }

  return result;
}

uint64_t UnionFind<unsigned short>::Find(uint64_t a1, __int16 a2)
{
  v5 = a2;
  v6 = &v5;
  v2 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, &v5, &std::piecewise_construct, &v6) + 5;
  do
  {
    v3 = v2;
    v2 = v2[1];
  }

  while (v2);
  return *v3;
}

void VECV::ConnectedComponent::~ConnectedComponent(void **this)
{
  free(this[4]);
  std::__tree<int>::destroy((this + 10), this[11]);
  std::__tree<int>::destroy((this + 7), this[8]);
}

uint64_t *std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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

uint64_t *std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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

uint64_t *std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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

void ou3dod::OU3DAnchorFreeDetector::createForOnline()
{
  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_25D1FFDAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    ou3dod::OU3DAnchorFreeDetector::createForOnline(__p);
  }

  MEMORY[0x25F894DE0](v16, 0x10B1C4009F42ACALL, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void ou3dod::OU3DAnchorFreeDetector::createForOffline()
{
  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_25D1FFF90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    ou3dod::OU3DAnchorFreeDetector::createForOnline(__p);
  }

  MEMORY[0x25F894DE0](v16, 0x10B1C4009F42ACALL, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

uint64_t ou3dod::OU3DAnchorFreeDetector::OU3DAnchorFreeDetector(uint64_t a1, uint64_t *a2, __int128 *a3, int a4, int a5, char a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = ou3dod::OU3DODInterface::OU3DODInterface(a1, a2);
  *v11 = &unk_286EBBD38;
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[4];
  v16 = *a3;
  v15 = a3[1];
  *(v11 + 21) = 0u;
  v17 = (v11 + 21);
  *(v11 + 3) = v16;
  *(v11 + 7) = v14;
  *(v11 + 6) = v13;
  *(v11 + 5) = v12;
  *(v11 + 4) = v15;
  *(v11 + 128) = a6;
  *(v11 + 33) = a4;
  *(v11 + 34) = a5;
  v11[18] = 0;
  v11[19] = 0;
  *(v11 + 40) = 0;
  *(v11 + 23) = 0u;
  *(v11 + 25) = 0u;
  v18 = *(v11 + 4) * HIDWORD(v11[8]) * v11[9];
  *(v11 + 35) = v18;
  v24 = 0;
  std::vector<int>::vector[abi:ne200100](buf, v18, &v24);
  begin = v17->__begin_;
  if (v17->__begin_)
  {
    *(a1 + 176) = begin;
    operator delete(begin);
    v17->__begin_ = 0;
    v17->__end_ = 0;
    v17->__end_cap_.__value_ = 0;
  }

  *(a1 + 168) = *buf;
  *(a1 + 184) = *&buf[16];
  if (*(a1 + 128) == 1)
  {
    std::vector<float>::resize(v17 + 1, *(a1 + 136));
  }

  v21 = _OULoggingGetOSLogForCategoryObjectUnderstanding(begin, v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = *(a1 + 140);
    *buf = 136315394;
    *&buf[4] = "OU3DAnchorFreeDetector";
    *&buf[12] = 1024;
    *&buf[14] = v22;
    _os_log_impl(&dword_25D1DB000, v21, OS_LOG_TYPE_INFO, "[3DOD][%s] Loading AF Espresso V2 version succeeded, with %d voxels.", buf, 0x12u);
  }

  return a1;
}

void sub_25D2001E4(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 25) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 22) = v5;
    operator delete(v5);
  }

  ou3dod::OU3DODInterface::~OU3DODInterface(v1);
  _Unwind_Resume(a1);
}

void ou3dod::OU3DODInterface::~OU3DODInterface(ou3dod::OU3DODInterface *this)
{
  *this = &unk_286EBBD90;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 8);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void ou3dod::OU3DAnchorFreeDetector::Preprocess(ou3dod::OU3DAnchorFreeDetector *this, OUPointCloudCpp *a2)
{
  IsValid = OUPointCloudCpp::IsValid(a2);
  if (IsValid)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "x");
    OUDnnInferenceInterface::GetInputSpan<half,void>();
  }

  v4 = _OULoggingGetOSLogForCategoryObjectUnderstanding(IsValid, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ou3dod::OU3DAnchorFreeDetector::Preprocess(v4);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, &unk_25D2878C2);
  __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
}

BOOL OUPointCloudCpp::IsValid(OUPointCloudCpp *this)
{
  v1 = *(this + 1) - *this;
  if (v1 == *(this + 4) - *(this + 3) && (v2 = v1 >> 4, v2 == (*(this + 7) - *(this + 6)) >> 2))
  {
    return v2 == (*(this + 10) - *(this + 9)) >> 3;
  }

  else
  {
    return 0;
  }
}

void sub_25D20058C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void ou3dod::OU3DAnchorFreeDetector::~OU3DAnchorFreeDetector(ou3dod::OU3DAnchorFreeDetector *this)
{
  *this = &unk_286EBBD38;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  ou3dod::OU3DODInterface::~OU3DODInterface(this);
}

{
  *this = &unk_286EBBD38;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  ou3dod::OU3DODInterface::~OU3DODInterface(this);

  JUMPOUT(0x25F894DE0);
}

void std::vector<OUBox3d>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {

      v4 = *(v3 - 40);
      if (v4)
      {
        operator delete(v4);
      }

      v5 = *(v3 - 64);
      if (v5)
      {
        *(v3 - 56) = v5;
        operator delete(v5);
      }

      v3 -= 224;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void _GLOBAL__sub_I_OU3DAnchorFreeDetector_mm()
{
  v73 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = @"Cabinet";
  *&v38 = v1;
  v2 = @"Refrigerator";
  *(&v38 + 1) = v2;
  v37 = @"Shelf";
  *&v39 = v37;
  v36 = @"Stove";
  *(&v39 + 1) = v36;
  v3 = @"Bed";
  *&v40 = v3;
  v35 = @"Sink";
  *(&v40 + 1) = v35;
  v34 = @"Washer";
  *&v41 = v34;
  v33 = @"Toilet";
  *(&v41 + 1) = v33;
  v4 = @"Bathtub";
  *&v42 = v4;
  v32 = @"Oven";
  *(&v42 + 1) = v32;
  v31 = @"Dishwasher";
  *&v43 = v31;
  v30 = @"Fireplace";
  *(&v43 + 1) = v30;
  v29 = @"Stool";
  v44 = v29;
  v28 = @"Chair";
  v45 = v28;
  v5 = @"Table";
  v46 = v5;
  v27 = @"Screen";
  v47 = v27;
  v6 = @"Sofa";
  v48 = v6;
  v26 = @"Stairs";
  v49 = v26;
  v25 = @"Window";
  v50 = v25;
  v24 = @"Door";
  v51 = v24;
  v23 = @"BuildInCabinet";
  v52 = v23;
  qword_28155A948 = 0;
  unk_28155A950 = 0;
  ou3dod::kObjectTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kObjectTypesLUT, &v38, v53, 0x15uLL);
  for (i = 160; i != -8; i -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kObjectTypesLUT, &dword_25D1DB000);
  v8 = v1;
  *&v38 = v8;
  qword_28155A788 = 0;
  unk_28155A790 = 0;
  ou3dod::kAFClassIdToObjectTypeOffline = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kAFClassIdToObjectTypeOffline, &v38, &v38 + 1, 1uLL);

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kAFClassIdToObjectTypeOffline, &dword_25D1DB000);
  v9 = v8;
  *&v38 = v9;
  v10 = v3;
  *(&v38 + 1) = v10;
  v11 = v4;
  *&v39 = v11;
  v12 = v5;
  *(&v39 + 1) = v12;
  v13 = v6;
  *&v40 = v13;
  qword_28155A8B0 = 0;
  unk_28155A8B8 = 0;
  ou3dod::kOfflineSsdTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kOfflineSsdTypesLUT, &v38, &v40 + 1, 5uLL);
  for (j = 32; j != -8; j -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kOfflineSsdTypesLUT, &dword_25D1DB000);
  v40 = xmmword_25D277F80;
  v41 = unk_25D277F90;
  v42 = xmmword_25D277FA0;
  v38 = xmmword_25D277F60;
  v39 = unk_25D277F70;
  qword_28155A820 = 0;
  unk_28155A828 = 0;
  ou3dod::kOfflineSSDAnchorSizeList = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&ou3dod::kOfflineSSDAnchorSizeList, &v38, &v43, 5uLL);
  __cxa_atexit(_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEED1B8ne200100Ev, &ou3dod::kOfflineSSDAnchorSizeList, &dword_25D1DB000);
  v15 = v9;
  *&v38 = v15;
  DWORD2(v38) = 1055286886;
  v16 = v10;
  *&v39 = v16;
  DWORD2(v39) = 1039516303;
  v17 = v11;
  *&v40 = v17;
  DWORD2(v40) = 1045220557;
  v18 = v12;
  *&v41 = v18;
  DWORD2(v41) = 1050253722;
  v19 = v13;
  *&v42 = v19;
  DWORD2(v42) = 1047904911;
  std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::map[abi:ne200100](ou3dod::kOfflineSSD3dConfThresholdMap, &v38, 5);
  for (k = 64; k != -16; k -= 16)
  {
  }

  __cxa_atexit(std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::~map[abi:ne200100], ou3dod::kOfflineSSD3dConfThresholdMap, &dword_25D1DB000);
  v21 = v15;
  *&v38 = v21;
  DWORD2(v38) = 1050253722;
  *&v39 = v2;
  DWORD2(v39) = 1052602532;
  *&v40 = v37;
  DWORD2(v40) = 1051260355;
  *&v41 = v36;
  DWORD2(v41) = 1043878380;
  *&v42 = v16;
  DWORD2(v42) = 1053273620;
  *&v43 = v35;
  DWORD2(v43) = 1046562734;
  v44 = v34;
  LODWORD(v45) = 1051260355;
  v46 = v33;
  LODWORD(v47) = 1052266988;
  v48 = v17;
  LODWORD(v49) = 1053609165;
  v50 = v32;
  LODWORD(v51) = 1050924810;
  v52 = v31;
  LODWORD(v53[0]) = 1052266988;
  v53[1] = v30;
  v54 = 1050253722;
  v55 = v29;
  v56 = 1092616192;
  v57 = v28;
  v58 = 1049582633;
  v59 = v18;
  v60 = 1050253722;
  v61 = v27;
  v62 = 1054951342;
  v63 = v19;
  v64 = 1052602532;
  v65 = v26;
  v66 = 1049582633;
  v67 = v25;
  v68 = 1092616192;
  v69 = v24;
  v70 = 1092616192;
  v71 = v23;
  v72 = 1092616192;
  for (m = 320; m != -16; m -= 16)
  {
  }

  *&v38 = v21;
  DWORD2(v38) = 1048576000;

  objc_autoreleasePoolPop(v0);
}

BOOL float3FromNSArray(void *a1, _OWORD *a2)
{
  v3 = a1;
  v4 = [v3 count];
  if (v4 == 3)
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v14 = v6;
    v7 = [v3 objectAtIndexedSubscript:1];
    [v7 floatValue];
    v13 = v8;
    v9 = [v3 objectAtIndexedSubscript:2];
    [v9 floatValue];
    v10 = v14;
    DWORD1(v10) = v13;
    DWORD2(v10) = v11;
    *a2 = v10;
  }

  return v4 == 3;
}

uint64_t box3dFromNSArray(NSArray *a1, box3d *a2)
{
  v3 = a1;
  if ([(NSArray *)v3 count]== 8)
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSArray *)v3 objectAtIndexedSubscript:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v7 = [(NSArray *)v3 objectAtIndexedSubscript:v4];
      v8 = float3FromNSArray(v7, a2);

      if (!v8)
      {
        break;
      }

      ++v4;
      a2 = (a2 + 16);
      if (v4 == 8)
      {
        v9 = 1;
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

uint64_t isValidType(NSString *a1)
{
  v1 = a1;
  {
    isValidType(NSString *)::validTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"Cabinet", @"Refrigerator", @"Shelf", @"Stove", @"Bed", @"Sink", @"Washer", 0x286EBD000, @"Bathtub", @"Oven", @"Dishwasher", @"Table", @"Sofa", @"Chair", @"Fireplace", @"Stool", @"Screen", @"Door", @"Window", @"Cuboid", @"Stairs", @"BuildInCabinet", @"Storage", 0}];
  }

  v2 = [isValidType(NSString *)::validTypes containsObject:v1];

  return v2;
}

void sub_25D20227C(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t isValidODSourceType(NSString *a1)
{
  v1 = a1;
  {
    isValidODSourceType(NSString *)::validTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"unknown", @"online", @"offline", 0}];
  }

  v2 = [isValidODSourceType(NSString *)::validTypes containsObject:v1];

  return v2;
}

void sub_25D20234C(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_25D202D4C(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

id objc_cast<NSString>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id objc_cast<NSNumber>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id objc_cast<NSArray<NSNumber *>>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id objc_cast<NSArray<NSArray*<NSNumber *>>>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void float4FromNSArray(void *a1, _OWORD *a2)
{
  v15 = a1;
  if ([v15 count] == 4)
  {
    v3 = [v15 objectAtIndexedSubscript:0];
    [v3 floatValue];
    v14 = v4;
    v5 = [v15 objectAtIndexedSubscript:1];
    [v5 floatValue];
    v13 = v6;
    v7 = [v15 objectAtIndexedSubscript:2];
    [v7 floatValue];
    v12 = v8;
    v9 = [v15 objectAtIndexedSubscript:3];
    [v9 floatValue];
    *&v10 = __PAIR64__(v13, v14);
    *(&v10 + 1) = __PAIR64__(v11, v12);
    *a2 = v10;
  }
}

id objc_cast<NSMutableDictionary>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isValidGroupType(NSString *a1)
{
  v1 = a1;
  {
    isValidGroupType(NSString *)::validTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"ChairGroup", @"LShapeGroup", @"UShapeGroup", @"FloorPlan", 0}];
  }

  v2 = [isValidGroupType(NSString *)::validTypes containsObject:v1];

  return v2;
}

void sub_25D2039F4(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

id float3ToNSArray(__n128 a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v8[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v8[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v5;
}

{
  v8[3] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v8[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v8[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v5;
}

{
  v8[3] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v8[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v8[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v5;
}

{
  v8[3] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v8[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v8[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v5;
}

void SampleSemantics(uint64_t *a1@<X0>, void *a2@<X1>, __CVBuffer *a3@<X2>, __CVBuffer *a4@<X3>, uint64_t *a5@<X8>, simd_float4 a6@<Q0>, simd_float4 a7@<Q1>, simd_float4 a8@<Q2>, simd_float4 a9@<Q3>)
{
  v47.columns[2] = a8;
  v47.columns[3] = a9;
  v47.columns[0] = a6;
  v47.columns[1] = a7;
  v13 = a2;
  [v13 intrinsics];
  v45 = v15;
  v46 = v14;
  v44 = v16;
  v56 = __invert_f4(v47);
  v17 = 0;
  pixelBuffer = v47;
  do
  {
    v55.columns[v17] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56.columns[0], COERCE_FLOAT(*&pixelBuffer.columns[v17])), v56.columns[1], *pixelBuffer.columns[v17].f32, 1), v56.columns[2], pixelBuffer.columns[v17], 2), v56.columns[3], pixelBuffer.columns[v17], 3);
    ++v17;
  }

  while (v17 != 4);
  v18 = 0;
  v20 = v45;
  v19 = v46;
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v21 = v44;
  v21.i32[3] = 0;
  pixelBuffer = v55;
  do
  {
    v55.columns[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*&pixelBuffer.columns[v18])), v20, *pixelBuffer.columns[v18].f32, 1), v21, pixelBuffer.columns[v18], 2), xmmword_25D277B90, pixelBuffer.columns[v18], 3);
    ++v18;
  }

  while (v18 != 4);
  v50 = v55.columns[1];
  v51 = v55.columns[0];
  v48 = v55.columns[3];
  v49 = v55.columns[2];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  [v13 imageResolution];
  v25 = v24;
  [v13 imageResolution];
  v27 = v26;
  PixelBufferSampler<unsigned char>::PixelBufferSampler(&v55, a3);
  PixelBufferSampler<unsigned char>::PixelBufferSampler(&pixelBuffer, a4);
  v29 = *a1;
  v28 = a1[1];
  v30 = (v28 - *a1) >> 4;
  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEEC2B8ne200100Em(v53, v30);
  _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEEC2B8ne200100Em(__p, v30);
  if (v28 != v29)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = Width;
    LODWORD(v34) = 1120403456;
    if (v30 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v30;
    }

    v35 = Height / v27;
    v37.f32[1] = v35;
    do
    {
      v38 = vaddq_f32(v48, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(*a1 + v32))), v50, *(*a1 + v32), 1), v49, *(*a1 + v32), 2));
      v37.f32[0] = Width / v25;
      v39 = vcvt_s32_f32(vrndm_f32(vmul_f32(vdiv_f32(*v38.i8, *&vdupq_laneq_s32(v38, 2)), v37)));
      v40 = v39.i32[0];
      v41 = 0.0;
      v42 = 0;
      if ((v39.i32[0] & 0x80000000) == 0)
      {
        v43 = v39.u32[1];
        if (v55.columns[0].i32[2] > v39.i32[0] && (v39.i32[1] & 0x80000000) == 0 && v55.columns[0].i32[3] > v39.i32[1])
        {
          v42 = *(v55.columns[1].i64[1] + v55.columns[1].i64[0] * v39.u32[1] + v39.u32[0]);
        }

        v39 = vcgt_s32(*&pixelBuffer.columns[0].u32[2], v39);
        if (v39.i8[0] & 1) != 0 && (v43 & 0x80000000) == 0 && (v39.i8[4])
        {
          v41 = *(pixelBuffer.columns[1].i64[1] + pixelBuffer.columns[1].i64[0] * v43 + 4 * v40);
        }
      }

      *(v53[0] + v31) = v42;
      v39.i32[0] = *(v53[0] + v31);
      *(v53[0] + v31) = vuzp1_s8(vmovl_u8(v39).u16[0], *&v34).u32[0];
      *(__p[0] + v31) = (v41 * 100.0);
      *(__p[0] + v33) = vand_s8(*(__p[0] + 8 * v33), 0xFFFF00000000FFFFLL);
      *(__p[0] + v31 + 3) = ((1.0 - v41) * 100.0);
      ++v33;
      v32 += 16;
      v31 += 4;
      --v36;
    }

    while (v36);
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIDv4_hNS_9allocatorIS4_EEEENS3_IDv4_tNS5_IS8_EEEEEEC2B8ne200100IJLm0ELm1EEJS7_SA_EJEJEJRS7_RSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(a5, v53, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer.columns[0].i64[0], 1uLL);
  CVPixelBufferUnlockBaseAddress(v55.columns[0].i64[0], 1uLL);
}

void sub_25D2048CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  PixelBufferSampler<float>::~PixelBufferSampler(va);
  PixelBufferSampler<unsigned char>::~PixelBufferSampler((v29 - 160));

  _Unwind_Resume(a1);
}

void WorldPCFromARFrameSceneCamera(_OUFrame *a1@<X0>, uint64_t a3@<X1>, float32x2_t **a4@<X8>)
{
  v4 = a3;
  v16 = a1;
  [(_OUFrame *)v16 GetSceneCameraPoseInVisionWorld];
  v14 = v7;
  v15 = v6;
  v12 = v9;
  v13 = v8;
  CameraPCFromARFrameSceneCamera(v16, v4, a4);
  v10 = *a4;
  v11 = a4[1];
  if (*a4 != v11)
  {
    do
    {
      *v10->f32 = vaddq_f32(v12, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*v10->f32)), v14, *v10, 1), v13, *v10->f32, 2));
      v10 += 2;
    }

    while (v10 != v11);
  }
}

void CameraPCFromARFrameSceneCamera(void *a1@<X0>, unsigned int a2@<W1>, const void **a3@<X8>)
{
  v6 = a1;
  v7 = [v6 sceneDepthBuffer];
  v8 = [v6 sceneDepthConfidenceBuffer];
  v9 = [v6 sceneCamera];
  Width = CVPixelBufferGetWidth(v7);
  Height = CVPixelBufferGetHeight(v7);
  if (Width && Height && (!v8 || (v11 = CVPixelBufferGetWidth(v8), v12 = CVPixelBufferGetHeight(v8), v11) && v12))
  {
    [v9 intrinsics];
    v50.columns[0].i32[3] = 0;
    v50.columns[1].i32[3] = 0;
    v50.columns[2].i32[3] = 0;
    v50.columns[3] = xmmword_25D277B90;
    v51 = __invert_f4(v50);
    v43 = v51.columns[1];
    v44 = v51.columns[0];
    v41 = v51.columns[3];
    v42 = v51.columns[2];
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a3, Height / a2 * (Width / a2));
    PixelBufferSampler<unsigned char>::PixelBufferSampler(&pixelBuffer, v7);
    if (v8)
    {
      operator new();
    }

    v39 = v6;
    [v9 imageResolution];
    v14 = v13;
    v15 = [v9 imageResolution];
    v17 = 0;
    v18 = v14 / Width;
    *&v19 = v19 / Height;
    v20 = *&v19;
    v21 = v18;
    do
    {
      v22 = 0;
      v23 = v17;
      do
      {
        v25 = v22;
        v26 = 0.0;
        if ((v25 & 0x80000000) == 0 && v46 > v25 && (v23 & 0x80000000) == 0 && v47 > v23)
        {
          v26 = *(v49 + v48 * v23 + 4 * v25);
        }

        v27 = (v22 + 0.5) * v21;
        v24 = (v17 + 0.5) * v20;
        v28 = vaddq_f32(v41, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v44, v26 * v27), v43, v26 * v24), v42, v26));
        v30 = a3[1];
        v29 = a3[2];
        if (v30 >= v29)
        {
          v32 = (v30 - *a3) >> 4;
          if ((v32 + 1) >> 60)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v33 = v29 - *a3;
          v34 = v33 >> 3;
          if (v33 >> 3 <= (v32 + 1))
          {
            v34 = v32 + 1;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF0)
          {
            v35 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v34;
          }

          if (v35)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v35);
          }

          *(16 * v32) = v28;
          v31 = 16 * v32 + 16;
          v36 = a3[1] - *a3;
          v37 = (16 * v32 - v36);
          memcpy(v37, *a3, v36);
          v15 = *a3;
          *a3 = v37;
          a3[1] = v31;
          a3[2] = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v30 = v28;
          v31 = &v30[1];
        }

        a3[1] = v31;
        v22 += a2;
      }

      while (v22 < Width);
      v17 += a2;
    }

    while (v17 < Height);
    v6 = v39;
    if (a3[1] == *a3)
    {
      v38 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v15, v16);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        CameraPCFromARFrameSceneCamera(v38);
      }
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_25D204DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  MEMORY[0x25F894DE0](v26, 0x1070C4075EB0837, a3, a4, a5, a6, a7, a8);
  PixelBufferSampler<float>::~PixelBufferSampler(va);
  v28 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIDv4_hNS_9allocatorIS4_EEEENS3_IDv4_tNS5_IS8_EEEEEEC2B8ne200100IJLm0ELm1EEJS7_SA_EJEJEJRS7_RSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  return a1;
}

void sub_25D204EB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D204F30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D204FAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferSampler<unsigned char>::PixelBufferSampler(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  *a1 = pixelBuffer;
  *(a1 + 8) = CVPixelBufferGetWidth(pixelBuffer);
  *(a1 + 12) = CVPixelBufferGetHeight(*a1);
  *(a1 + 16) = CVPixelBufferGetBytesPerRow(*a1);
  CVPixelBufferLockBaseAddress(*a1, 1uLL);
  *(a1 + 24) = CVPixelBufferGetBaseAddress(*a1);
  return a1;
}

void sub_25D2055C0(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25D205910(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void float3FromNSArray(void *a1, _OWORD *a2)
{
  v12 = a1;
  if ([v12 count] == 3)
  {
    v3 = [v12 objectAtIndexedSubscript:0];
    [v3 floatValue];
    v11 = v4;
    v5 = [v12 objectAtIndexedSubscript:1];
    [v5 floatValue];
    v10 = v6;
    v7 = [v12 objectAtIndexedSubscript:2];
    [v7 floatValue];
    v8 = v11;
    DWORD1(v8) = v10;
    DWORD2(v8) = v9;
    *a2 = v8;
  }
}

int *utils::RotateInPlace<int,void>(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3 * a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unexpected input size.");
    goto LABEL_40;
  }

  if (!a3)
  {
    return result;
  }

  if (a4 <= 179)
  {
    if (!a4)
    {
      return result;
    }

    if (a4 == 90)
    {
      v4 = 0;
      v5 = 4 * a3;
      v6 = result;
      v7 = a3;
      do
      {
        v8 = v6;
        v9 = v6;
        v10 = v7;
        do
        {
          v11 = *v8;
          *v8++ = *v9;
          *v9 = v11;
          v9 = (v9 + v5);
          --v10;
        }

        while (v10);
        ++v4;
        --v7;
        v6 += a3 + 1;
      }

      while (v4 != a3);
      for (i = 0; i != a3; ++i)
      {
        if (a3 != 1)
        {
          v13 = 0;
          v14 = a3 - 1;
          do
          {
            v15 = result[v13];
            result[v13] = result[v14];
            result[v14] = v15;
            ++v13;
            --v14;
          }

          while (v13 < v14);
        }

        result = (result + v5);
      }

      return result;
    }

    goto LABEL_41;
  }

  if (a4 == 180)
  {
    v28 = (a3 - 1) * a3;
    if (v28 >= 1)
    {
      v29 = &result[v28];
      v30 = result;
      do
      {
        for (j = 0; j != a3; ++j)
        {
          v32 = v30[j];
          v30[j] = v29[j];
          v29[j] = v32;
        }

        v30 += a3;
        v29 -= a3;
      }

      while (v30 < v29);
    }

    for (k = 0; k != a3; ++k)
    {
      if (a3 != 1)
      {
        v34 = 0;
        v35 = a3 - 1;
        do
        {
          v36 = result[v34];
          result[v34] = result[v35];
          result[v35] = v36;
          ++v34;
          --v35;
        }

        while (v34 < v35);
      }

      result += a3;
    }
  }

  else
  {
    if (a4 != 270)
    {
LABEL_41:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "In-place rotation only support rotation angle 0, 90, 180, or 270 degrees.");
LABEL_40:
      __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
    }

    v16 = 0;
    v17 = 4 * a3;
    v18 = result;
    do
    {
      if (a3 != 1)
      {
        v19 = 0;
        v20 = a3 - 1;
        do
        {
          v21 = v18[v19];
          v18[v19] = v18[v20];
          v18[v20] = v21;
          ++v19;
          --v20;
        }

        while (v19 < v20);
      }

      ++v16;
      v18 = (v18 + v17);
    }

    while (v16 != a3);
    v22 = 0;
    v23 = a3;
    do
    {
      v24 = result;
      v25 = result;
      v26 = v23;
      do
      {
        v27 = *v24;
        *v24++ = *v25;
        *v25 = v27;
        v25 = (v25 + v17);
        --v26;
      }

      while (v26);
      ++v22;
      --v23;
      result = (result + v17 + 4);
    }

    while (v22 != a3);
  }

  return result;
}

int *utils::RotateInPlace<float,void>(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3 * a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unexpected input size.");
    goto LABEL_40;
  }

  if (!a3)
  {
    return result;
  }

  if (a4 <= 179)
  {
    if (!a4)
    {
      return result;
    }

    if (a4 == 90)
    {
      v4 = 0;
      v5 = 4 * a3;
      v6 = result;
      v7 = a3;
      do
      {
        v8 = v6;
        v9 = v6;
        v10 = v7;
        do
        {
          v11 = *v8;
          *v8++ = *v9;
          *v9 = v11;
          v9 = (v9 + v5);
          --v10;
        }

        while (v10);
        ++v4;
        --v7;
        v6 += a3 + 1;
      }

      while (v4 != a3);
      for (i = 0; i != a3; ++i)
      {
        if (a3 != 1)
        {
          v13 = 0;
          v14 = a3 - 1;
          do
          {
            v15 = result[v13];
            result[v13] = result[v14];
            result[v14] = v15;
            ++v13;
            --v14;
          }

          while (v13 < v14);
        }

        result = (result + v5);
      }

      return result;
    }

    goto LABEL_41;
  }

  if (a4 == 180)
  {
    v28 = (a3 - 1) * a3;
    if (v28 >= 1)
    {
      v29 = &result[v28];
      v30 = result;
      do
      {
        for (j = 0; j != a3; ++j)
        {
          v32 = v30[j];
          v30[j] = v29[j];
          v29[j] = v32;
        }

        v30 += a3;
        v29 -= a3;
      }

      while (v30 < v29);
    }

    for (k = 0; k != a3; ++k)
    {
      if (a3 != 1)
      {
        v34 = 0;
        v35 = a3 - 1;
        do
        {
          v36 = result[v34];
          result[v34] = result[v35];
          result[v35] = v36;
          ++v34;
          --v35;
        }

        while (v34 < v35);
      }

      result += a3;
    }
  }

  else
  {
    if (a4 != 270)
    {
LABEL_41:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "In-place rotation only support rotation angle 0, 90, 180, or 270 degrees.");
LABEL_40:
      __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
    }

    v16 = 0;
    v17 = 4 * a3;
    v18 = result;
    do
    {
      if (a3 != 1)
      {
        v19 = 0;
        v20 = a3 - 1;
        do
        {
          v21 = v18[v19];
          v18[v19] = v18[v20];
          v18[v20] = v21;
          ++v19;
          --v20;
        }

        while (v19 < v20);
      }

      ++v16;
      v18 = (v18 + v17);
    }

    while (v16 != a3);
    v22 = 0;
    v23 = a3;
    do
    {
      v24 = result;
      v25 = result;
      v26 = v23;
      do
      {
        v27 = *v24;
        *v24++ = *v25;
        *v25 = v27;
        v25 = (v25 + v17);
        --v26;
      }

      while (v26);
      ++v22;
      --v23;
      result = (result + v17 + 4);
    }

    while (v22 != a3);
  }

  return result;
}

__int16 *utils::RotateInPlace<half,void>(__int16 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3 * a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unexpected input size.");
    goto LABEL_40;
  }

  if (!a3)
  {
    return result;
  }

  if (a4 <= 179)
  {
    if (!a4)
    {
      return result;
    }

    if (a4 == 90)
    {
      v4 = 0;
      v5 = 2 * a3;
      v6 = result;
      v7 = a3;
      do
      {
        v8 = v6;
        v9 = v6;
        v10 = v7;
        do
        {
          v11 = *v8;
          *v8++ = *v9;
          *v9 = v11;
          v9 = (v9 + v5);
          --v10;
        }

        while (v10);
        ++v4;
        --v7;
        v6 += a3 + 1;
      }

      while (v4 != a3);
      for (i = 0; i != a3; ++i)
      {
        if (a3 != 1)
        {
          v13 = 0;
          v14 = a3 - 1;
          do
          {
            v15 = result[v13];
            result[v13] = result[v14];
            result[v14] = v15;
            ++v13;
            --v14;
          }

          while (v13 < v14);
        }

        result = (result + v5);
      }

      return result;
    }

    goto LABEL_41;
  }

  if (a4 == 180)
  {
    v28 = (a3 - 1) * a3;
    if (v28 >= 1)
    {
      v29 = &result[v28];
      v30 = result;
      do
      {
        for (j = 0; j != a3; ++j)
        {
          v32 = v30[j];
          v30[j] = v29[j];
          v29[j] = v32;
        }

        v30 += a3;
        v29 -= a3;
      }

      while (v30 < v29);
    }

    for (k = 0; k != a3; ++k)
    {
      if (a3 != 1)
      {
        v34 = 0;
        v35 = a3 - 1;
        do
        {
          v36 = result[v34];
          result[v34] = result[v35];
          result[v35] = v36;
          ++v34;
          --v35;
        }

        while (v34 < v35);
      }

      result += a3;
    }
  }

  else
  {
    if (a4 != 270)
    {
LABEL_41:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "In-place rotation only support rotation angle 0, 90, 180, or 270 degrees.");
LABEL_40:
      __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
    }

    v16 = 0;
    v17 = 2 * a3;
    v18 = result;
    do
    {
      if (a3 != 1)
      {
        v19 = 0;
        v20 = a3 - 1;
        do
        {
          v21 = v18[v19];
          v18[v19] = v18[v20];
          v18[v20] = v21;
          ++v19;
          --v20;
        }

        while (v19 < v20);
      }

      ++v16;
      v18 = (v18 + v17);
    }

    while (v16 != a3);
    v22 = 0;
    v23 = a3;
    do
    {
      v24 = result;
      v25 = result;
      v26 = v23;
      do
      {
        v27 = *v24;
        *v24++ = *v25;
        *v25 = v27;
        v25 = (v25 + v17);
        --v26;
      }

      while (v26);
      ++v22;
      --v23;
      result = (result + v17 + 2);
    }

    while (v22 != a3);
  }

  return result;
}

void utils::Resample(uint64_t *__return_ptr a1@<X8>, utils *this@<X0>, unint64_t a3@<X1>)
{
  if (this <= a3)
  {
    std::vector<unsigned long>::vector[abi:ne200100](a1, this);
    v21 = *a1;
    v22 = a1[1];
    if (*a1 != v22)
    {
      v23 = 0;
      v24 = (v22 - v21 - 8) >> 3;
      v25 = vdupq_n_s64(v24);
      v26 = (v24 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v27 = xmmword_25D277E60;
      v28 = vdupq_n_s64(2uLL);
      do
      {
        v29 = vmovn_s64(vcgeq_u64(v25, v27));
        if (v29.i8[0])
        {
          *(v21 + 8 * v23) = v23;
        }

        if (v29.i8[4])
        {
          *(v21 + 8 * v23 + 8) = v23 + 1;
        }

        v23 += 2;
        v27 = vaddq_s64(v27, v28);
      }

      while (v26 != v23);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    std::vector<unsigned long>::reserve(a1, a3);
    if (this >= 1)
    {
      v6 = 0;
      v7 = a3 / this;
      v8 = this & 0x7FFFFFFF;
      v9 = -1;
      do
      {
        v10 = (v7 * v6);
        if (v9 < v10)
        {
          v12 = a1[1];
          v11 = a1[2];
          if (v12 >= v11)
          {
            v14 = *a1;
            v15 = v12 - *a1;
            v16 = v15 >> 3;
            v17 = (v15 >> 3) + 1;
            if (v17 >> 61)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v18 = v11 - v14;
            if (v18 >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v19);
            }

            *(8 * v16) = v6;
            v13 = 8 * v16 + 8;
            memcpy(0, v14, v15);
            v20 = *a1;
            *a1 = 0;
            a1[1] = v13;
            a1[2] = 0;
            if (v20)
            {
              operator delete(v20);
            }
          }

          else
          {
            *v12 = v6;
            v13 = (v12 + 1);
          }

          a1[1] = v13;
        }

        ++v6;
        v9 = v10;
      }

      while (v8 != v6);
    }
  }
}

void sub_25D206584(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::vector<int>>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void sub_25D207E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void CountPointsNearPlane(void *a1@<X0>, float32x4_t **a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = a1;
  v9 = a3;
  v10 = v9;
  if (a2[1] - *a2 == 64)
  {
    v11 = [v9 points];
    v12 = [v10 semanticLabels];
    v48 = a4;
    v13 = [v10 semanticVotes];
    v50 = 0;
    v49 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = **a2;
    v18 = (*a2)[1];
    v19 = vsubq_f32(v18, v17);
    v20 = vmulq_f32(v19, v19);
    *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
    v22 = vrsqrte_f32(v21);
    v23 = vmul_f32(v22, vrsqrts_f32(v21, vmul_f32(v22, v22)));
    v24 = vmulq_n_f32(v19, vmul_f32(v23, vrsqrts_f32(v21, vmul_f32(v23, v23))).f32[0]);
    v25 = (*a2)[3];
    v26 = vsubq_f32(v25, v17);
    v27 = vmulq_f32(v26, v26);
    v20.f32[0] = v27.f32[2] + vaddv_f32(*v27.f32);
    *v27.f32 = vrsqrte_f32(v20.u32[0]);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v20.u32[0], vmul_f32(*v27.f32, *v27.f32)));
    v54 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v20.u32[0], vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    v55 = v24;
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), vnegq_f32(v24)), v54, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
    v51 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
    v29 = vsubq_f32(v17, v18);
    v30 = vmulq_f32(v29, v29);
    v31 = vsubq_f32(v17, v25);
    v32 = vmulq_f32(v31, v31);
    v33 = vadd_f32(vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v32.i8, *v30.f32), vzip2_s32(*v32.i8, *v30.f32)))), 0x3F0000003F000000), vdup_lane_s32(*&a5, 0));
    v30.i64[0] = 0x3F0000003F000000;
    v30.i64[1] = 0x3F0000003F000000;
    v53 = vmulq_f32(vaddq_f32(v17, (*a2)[2]), v30);
    while (1)
    {
      if (v16 >= [v10 count])
      {
        *v48 = v50;
        v48[1] = v49;
        v48[2] = v14;
        v48[3] = v15;
        v48[4] = HIDWORD(v50);
        goto LABEL_34;
      }

      v34 = vsubq_f32(*v11, v53);
      v35 = vmulq_f32(v55, v34);
      v36 = vmulq_f32(v54, v34);
      v37 = vmvn_s8(vcge_f32(v33, vabs_f32(vadd_f32(*&vzip2q_s32(v36, v35), vadd_f32(vzip1_s32(*v36.i8, *v35.i8), vzip2_s32(*v36.i8, *v35.i8))))));
      if ((v37.i8[4] & 1) == 0 && (v37.i8[0] & 1) == 0)
      {
        v38 = vmulq_f32(v51, v34);
        v39 = v38.f32[2] + vaddv_f32(*v38.f32);
        if (fabsf(v39) <= *&a5)
        {
          break;
        }
      }

LABEL_30:
      ++v16;
      ++v11;
      ++v12;
    }

    v40 = *(v13 + 8 * v16);
    v41 = vmax_u16(v40.u32[0], vzip2_s32(v40, 0)).u32[0];
    if (HIWORD(v41) > v41)
    {
      LOWORD(v41) = HIWORD(v41);
    }

    if (v40.u16[0] == v41)
    {
      v42 = 0;
    }

    else if (v40.u16[1] == v41)
    {
      v42 = 1;
    }

    else if (v40.u16[2] == v41)
    {
      v42 = 2;
    }

    else
    {
      if (v40.u16[3] != v41)
      {
        v43 = *v12;
        goto LABEL_18;
      }

      v42 = 3;
    }

    v40.i32[0] = *v12;
    v56 = vzip1_s8(v40, v40);
    v43 = *(&v56 | (2 * v42));
LABEL_18:
    v57 = v43;
    v44 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(kSemanticsODLabelMap, &v57);
    if (!v44)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v45 = v44[3];
    if (v39 >= 0.0)
    {
      if ([v8 isEqualToString:v45])
      {
        LODWORD(v50) = v50 + 1;
        *([v10 colors] + 16 * v16) = xmmword_25D278070;
      }

      ++v14;
    }

    else
    {
      if ([v8 isEqualToString:v45])
      {
        ++v49;
        *([v10 colors] + 16 * v16) = xmmword_25D277BA0;
      }

      else
      {
        v46.i32[0] = *v12;
        v47 = HIDWORD(v50);
        if ((vmovl_u8(v46).u8[0] - 1) < 3u)
        {
          v47 = HIDWORD(v50) + 1;
        }

        HIDWORD(v50) = v47;
      }

      ++v15;
    }

    goto LABEL_30;
  }

  *a4 = -1;
  *(a4 + 8) = -1;
  *(a4 + 16) = -1;
LABEL_34:
}

uint64_t *std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D208338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int> const*,std::vector<int> const*,std::vector<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void _GLOBAL__sub_I_OUObjectCompleteness_mm()
{
  v92 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v26 = 3212836864;
  RW_VW = xmmword_25D277BA0;
  unk_28155B1C0 = xmmword_25D277BD0;
  *(&v27 + 1) = 0x3F80000000000000;
  xmmword_28155B1D0 = xmmword_25D277BB0;
  unk_28155B1E0 = xmmword_25D277B90;
  *VW_RW = __invert_f4(*_PromotedConst_0);
  RC_VC = xmmword_25D277BA0;
  *algn_28155AC70 = xmmword_25D277BE0;
  xmmword_28155AC80 = xmmword_25D277BD0;
  unk_28155AC90 = xmmword_25D277B90;
  *VC_RC = __invert_f4(*_PromotedConst_26);
  ARKit_VW_RW = xmmword_25D277BE0;
  *algn_28155B090 = xmmword_25D277BC0;
  xmmword_28155B0A0 = xmmword_25D277BF0;
  unk_28155B0B0 = xmmword_25D277B90;
  LODWORD(v28) = 0;
  *(&v28 + 1) = @"Unknown";
  LODWORD(v29) = 1;
  *(&v29 + 1) = *(&v28 + 1);
  LODWORD(v30) = 2;
  *(&v30 + 1) = *(&v29 + 1);
  LODWORD(v31) = 3;
  *(&v31 + 1) = *(&v30 + 1);
  LODWORD(v32) = 4;
  *(&v32 + 1) = *(&v31 + 1);
  LODWORD(v33) = 5;
  *(&v33 + 1) = *(&v32 + 1);
  LODWORD(v34) = 6;
  *&v27 = @"Door";
  *(&v34 + 1) = v27;
  LODWORD(v35) = 7;
  v25 = @"Window";
  *(&v35 + 1) = v25;
  LODWORD(v36) = 8;
  *(&v36 + 1) = *(&v33 + 1);
  LODWORD(v37) = 9;
  v23 = @"Fireplace";
  *(&v37 + 1) = v23;
  LODWORD(v38) = 10;
  *(&v38 + 1) = *(&v36 + 1);
  LODWORD(v39) = 11;
  *(&v39 + 1) = *(&v38 + 1);
  LODWORD(v40) = 12;
  v24 = @"Stairs";
  *(&v40 + 1) = v24;
  LODWORD(v41) = 13;
  v19 = @"Bed";
  *(&v41 + 1) = v19;
  LODWORD(v42) = 14;
  v43 = @"Cabinet";
  LODWORD(v44) = 15;
  v22 = @"Chair";
  v45 = v22;
  LODWORD(v46) = 16;
  v47 = v43;
  LODWORD(v48) = 17;
  v49 = v47;
  v50 = 18;
  v21 = @"Sofa";
  v51 = v21;
  v52 = 19;
  v20 = @"Table";
  v53 = v20;
  v54 = 20;
  v18 = @"Toilet";
  v55 = v18;
  v56 = 21;
  v0 = @"Sink";
  v57 = v0;
  v58 = 22;
  v17 = @"Bathtub";
  v59 = v17;
  v60 = 23;
  v61 = *(&v39 + 1);
  v62 = 24;
  v1 = @"Refrigerator";
  v63 = v1;
  v64 = 25;
  v2 = @"Stove";
  v65 = v2;
  v66 = 26;
  v3 = @"Washer";
  v67 = v3;
  v68 = 27;
  v4 = @"Oven";
  v69 = v4;
  v70 = 28;
  v5 = @"Dishwasher";
  v71 = v5;
  v72 = 29;
  v73 = v61;
  v74 = 30;
  v6 = v49;
  v75 = v6;
  v76 = 31;
  v77 = v73;
  v78 = 32;
  v7 = @"Screen";
  v79 = v7;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(kSemanticsODLabelMap, &v28, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], kSemanticsODLabelMap, &dword_25D1DB000);
  v38 = xmmword_25D2781D0;
  v39 = unk_25D2781E0;
  v40 = xmmword_25D2781F0;
  v41 = unk_25D278200;
  v34 = xmmword_25D278190;
  v35 = unk_25D2781A0;
  v36 = xmmword_25D2781B0;
  v37 = unk_25D2781C0;
  v30 = xmmword_25D278150;
  v31 = unk_25D278160;
  v32 = xmmword_25D278170;
  v33 = unk_25D278180;
  v28 = xmmword_25D278130;
  v29 = unk_25D278140;
  v42 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v28, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v28) = 0;
  *(&v28 + 1) = v6;
  LODWORD(v29) = 1;
  *(&v29 + 1) = v1;
  LODWORD(v30) = 2;
  *(&v30 + 1) = @"Shelf";
  LODWORD(v31) = 3;
  *(&v31 + 1) = v2;
  LODWORD(v32) = 4;
  *(&v32 + 1) = v19;
  LODWORD(v33) = 5;
  *(&v33 + 1) = v0;
  LODWORD(v34) = 6;
  *(&v34 + 1) = v3;
  LODWORD(v35) = 7;
  *(&v35 + 1) = v18;
  LODWORD(v36) = 8;
  *(&v36 + 1) = v17;
  LODWORD(v37) = 9;
  *(&v37 + 1) = v4;
  LODWORD(v38) = 10;
  *(&v38 + 1) = v5;
  LODWORD(v39) = 11;
  *(&v39 + 1) = v23;
  LODWORD(v40) = 12;
  *(&v40 + 1) = @"Stool";
  LODWORD(v41) = 13;
  *(&v41 + 1) = v22;
  LODWORD(v42) = 14;
  v43 = v20;
  LODWORD(v44) = 15;
  v45 = v7;
  LODWORD(v46) = 16;
  v47 = v21;
  LODWORD(v48) = 17;
  v49 = v24;
  v50 = 18;
  v51 = v25;
  v52 = 19;
  v53 = v27;
  v54 = 20;
  v55 = @"BuildInCabinet";
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v28, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  v27 = xmmword_25D278080;
  v85 = xmmword_25D278080;
  *&v29 = 0;
  v28 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v28, &v85, &v86, 4uLL);
  v84 = xmmword_25D278090;
  v30 = 0uLL;
  *(&v29 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v29 + 1, &v84, &v85, 4uLL);
  v83 = xmmword_25D2780A0;
  *&v32 = 0;
  v31 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v31, &v83, &v84, 4uLL);
  v82 = xmmword_25D2780B0;
  v33 = 0uLL;
  *(&v32 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v32 + 1, &v82, &v83, 4uLL);
  v81 = xmmword_25D2780C0;
  *&v35 = 0;
  v34 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v34, &v81, &v82, 4uLL);
  v80 = xmmword_25D2780D0;
  v36 = 0uLL;
  *(&v35 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v35 + 1, &v80, &v81, 4uLL);
  kFaceCornerIndicesMap = 0;
  unk_28155B000 = 0;
  qword_28155B008 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(&kFaceCornerIndicesMap, &v28, &v37, 6uLL);
  for (k = 0; k != -144; k -= 24)
  {
    v11 = *(&v35 + k + 8);
    if (v11)
    {
      *(&v36 + k) = v11;
      operator delete(v11);
    }
  }

  __cxa_atexit(std::vector<std::vector<int>>::~vector[abi:ne200100], &kFaceCornerIndicesMap, &dword_25D1DB000);
  v85 = v27;
  *&v29 = 0;
  v28 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v28, &v85, &v86, 4uLL);
  v84 = xmmword_25D2780E0;
  v30 = 0uLL;
  *(&v29 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v29 + 1, &v84, &v85, 4uLL);
  v83 = xmmword_25D2780F0;
  *&v32 = 0;
  v31 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v31, &v83, &v84, 4uLL);
  v82 = xmmword_25D278100;
  v33 = 0uLL;
  *(&v32 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v32 + 1, &v82, &v83, 4uLL);
  v81 = xmmword_25D278110;
  *&v35 = 0;
  v34 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v34, &v81, &v82, 4uLL);
  v80 = xmmword_25D278120;
  v36 = 0uLL;
  *(&v35 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v35 + 1, &v80, &v81, 4uLL);
  kFaceEdgeIndicesMap = 0;
  *algn_28155B018 = 0;
  qword_28155B020 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(&kFaceEdgeIndicesMap, &v28, &v37, 6uLL);
  for (m = 0; m != -144; m -= 24)
  {
    v13 = *(&v35 + m + 8);
    if (v13)
    {
      *(&v36 + m) = v13;
      operator delete(v13);
    }
  }

  __cxa_atexit(std::vector<std::vector<int>>::~vector[abi:ne200100], &kFaceEdgeIndicesMap, &dword_25D1DB000);
  *&v85 = 0x100000000;
  *&v29 = 0;
  v28 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v28, &v85, &v85 + 2, 2uLL);
  *&v84 = 0x200000000;
  v30 = 0uLL;
  *(&v29 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v29 + 1, &v84, &v84 + 2, 2uLL);
  *&v83 = 0x300000000;
  *&v32 = 0;
  v31 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v31, &v83, &v83 + 2, 2uLL);
  *&v82 = 0x400000000;
  v33 = 0uLL;
  *(&v32 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v32 + 1, &v82, &v82 + 2, 2uLL);
  *&v81 = 0x100000004;
  *&v35 = 0;
  v34 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v34, &v81, &v81 + 2, 2uLL);
  *&v80 = 0x200000001;
  v36 = 0uLL;
  *(&v35 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v35 + 1, &v80, &v80 + 2, 2uLL);
  v91 = 0x300000002;
  *&v38 = 0;
  v37 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v37, &v91, &v92, 2uLL);
  v90 = 0x400000003;
  v39 = 0uLL;
  *(&v38 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v38 + 1, &v90, &v91, 2uLL);
  v89 = 0x500000001;
  *&v41 = 0;
  v40 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v40, &v89, &v90, 2uLL);
  v88 = 0x500000002;
  v42 = 0;
  v43 = 0;
  *(&v41 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v41 + 1, &v88, &v89, 2uLL);
  v87 = 0x500000003;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v44, &v87, &v88, 2uLL);
  v86 = 0x500000004;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v47, &v86, &v87, 2uLL);
  kEdgeFaceIndicesMap = 0;
  unk_28155B030 = 0;
  qword_28155B038 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(&kEdgeFaceIndicesMap, &v28, &v50, 0xCuLL);
  v14 = 288;
  do
  {
    v15 = *(&v26 + v14);
    if (v15)
    {
      *(&v27 + v14) = v15;
      operator delete(v15);
    }

    v14 -= 24;
  }

  while (v14);
  __cxa_atexit(std::vector<std::vector<int>>::~vector[abi:ne200100], &kEdgeFaceIndicesMap, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
}

void sub_25D209280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v27 = (v25 + 272);
  v28 = -288;
  while (1)
  {
    v29 = *(v27 - 1);
    if (v29)
    {
      *v27 = v29;
      operator delete(v29);
    }

    v27 -= 3;
    v28 += 24;
    if (!v28)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t OUEspressoInference::OUEspressoInference(uint64_t a1, void *a2, __int128 *a3, int a4, int a5)
{
  v9 = a2;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *a1 = &unk_286EBBDC0;
  v10 = v9;
  *(a1 + 88) = v10;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 112) = *(a3 + 2);
    *(a1 + 96) = v11;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__init_with_size[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*>((a1 + 120), *(a3 + 3), *(a3 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 4) - *(a3 + 3)) >> 4));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__init_with_size[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*>((a1 + 144), *(a3 + 6), *(a3 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 7) - *(a3 + 6)) >> 4));
  *(a1 + 208) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0;
  if (!*(a1 + 88))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, ": invalid bundle.", "OUEspressoInference");
    std::logic_error::logic_error(exception, &v14);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  OUEspressoInference::LoadModel(a1);
  OUEspressoInference::TryBuildEspressoPlan(a1);

  return a1;
}

void sub_25D209650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  OUDnnInferenceInterface::~OUDnnInferenceInterface(v15);

  _Unwind_Resume(a1);
}

uint64_t *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(uint64_t ***__return_ptr a1@<X8>, char *__s@<X1>, const void **a3@<X0>)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a1, v6 + v7);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    result = memmove(a1, v9, v6);
  }

  v10 = a1 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void OUEspressoInference::LoadModel(OUEspressoInference *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (this + 96);
  if (*(this + 119) < 0)
  {
    v2 = *v2;
  }

  v3 = *(this + 11);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  v5 = [v3 pathForResource:v4 ofType:0];

  v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(v14.__r_.__value_.__l.__data_) = 138412290;
    *(v14.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[3DOD] Loading network path: %@", &v14, 0xCu);
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, ": unable to locate the network files.", "OUEspressoInference");
    std::logic_error::logic_error(exception, &v14);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  *(this + 21) = espresso_create_context();
  v9 = *(this + 50);
  if (v9 && v9 != 10007)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(v14.__r_.__value_.__l.__data_) = 136315394;
      *(v14.__r_.__value_.__r.__words + 4) = "OUEspressoInference";
      WORD2(v14.__r_.__value_.__r.__words[1]) = 1024;
      *(&v14.__r_.__value_.__r.__words[1] + 6) = v9;
      _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[%s] Untested engine type: %d.", &v14, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v10, &unk_25D2878C2);
    v10->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v10, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  *(this + 22) = espresso_create_plan();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(v14.__r_.__value_.__l.__data_) = 136315138;
    *(v14.__r_.__value_.__r.__words + 4) = "OUEspressoInference";
    _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[%s] Adding network to plan. If the program crashes at this line, it is likely b/c the network requires too much memory.", &v14, 0xCu);
  }

  v11 = v5;
  [v5 UTF8String];
  if (espresso_plan_add_network())
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, ": failed to add network.", "OUEspressoInference");
    MEMORY[0x25F894AE0](v13, &v14);
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  OUEspressoInference::InitializeIOBuffers(this, this + 15, 1);
  OUEspressoInference::InitializeIOBuffers(this, this + 18, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[3DOD] Done loading model.", &v14, 2u);
  }
}

void sub_25D209B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v15);

  _Unwind_Resume(a1);
}

void OUEspressoInference::TryBuildEspressoPlan(OUEspressoInference *this)
{
  if (espresso_plan_get_phase() != 1)
  {
    if (espresso_plan_build())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25F894AD0](exception, "[3DOD] failed to build espresso plan.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v3 = this;
    OUEspressoInference::TryBuildEspressoPlan(void)::$_0::operator()(&v3, this + 208);
    OUEspressoInference::TryBuildEspressoPlan(void)::$_0::operator()(&v3, this + 248);
  }
}

void OUEspressoInference::~OUEspressoInference(OUEspressoInference *this)
{
  *this = &unk_286EBBDC0;
  if (*(this + 22))
  {
    espresso_plan_destroy();
  }

  if (*(this + 21))
  {
    espresso_context_destroy();
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 31);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 26);
  v2 = (this + 144);
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 120);
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  OUDnnInferenceInterface::~OUDnnInferenceInterface(this);
}

{
  OUEspressoInference::~OUEspressoInference(this);

  JUMPOUT(0x25F894DE0);
}

uint64_t OUEspressoInference::Infer(OUEspressoInference *this)
{
  OUEspressoInference::TryReshapeNetwork(this);
  OUEspressoInference::TryBuildEspressoPlan(this);
  v2 = (this + 224);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (espresso_network_bind_buffer())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v4 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, "] failed to bind input buffer.", &v11);
      MEMORY[0x25F894AE0](exception, v12, v4);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v5 = (this + 264);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (espresso_network_bind_buffer())
    {
      v6 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v7 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, "] failed to bind output buffer.", &v11);
      MEMORY[0x25F894AE0](v6, v12, v7);
      __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  result = espresso_plan_execute_sync();
  if (result)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v10 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, "] failed to run inference.", &v11);
    MEMORY[0x25F894AE0](v9, v12, v10);
    __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_25D209F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

void OUEspressoInference::TryReshapeNetwork(OUEspressoInference *this)
{
  if (*(this + 288) != 1)
  {
    return;
  }

  v2 = *(this + 4);
  v17[0] = 0;
  std::vector<char const*>::vector[abi:ne200100](v18, v2, v17);
  v14 = -1;
  std::vector<int>::vector[abi:ne200100](&__p, v2, &v14);
  std::vector<std::vector<int>>::vector[abi:ne200100](v17, 5uLL, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  v14 = -1;
  std::vector<int>::vector[abi:ne200100](&__p, v2, &v14);
  v3 = *(this + 3);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v3 + 2;
      if (*(v3 + 39) < 0)
      {
        v5 = *v5;
      }

      *(v18[0] + v4) = v5;
      v7 = v3[12];
      v6 = v3[13];
      if (v6 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = v17[0];
        do
        {
          v11 = *(v6 - 4);
          v6 -= 4;
          v10 = v11;
          v12 = *v9;
          v9 += 3;
          *(v12 + 4 * v4) = v10;
          ++v8;
        }

        while (v6 != v7);
      }

      *(__p + v4++) = v8;
      v3 = *v3;
    }

    while (v3);
  }

  if (espresso_plan_get_phase() && espresso_plan_build_clean())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F894AD0](exception, "[3DOD] failed to clean espresso plan.");
LABEL_24:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (espresso_network_change_input_blob_shapes_seq_rank())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F894AD0](exception, "[3DOD] failed to reshape network.");
    goto LABEL_24;
  }

  *(this + 288) = 0;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  __p = v17;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }
}

void sub_25D20A1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, char *a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *__return_ptr a1@<X8>, char *__s@<X1>, std::string *a3@<X0>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a3, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void OUEspressoInference::InitializeIOBuffers(uint64_t a1, std::string::size_type *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = MEMORY[0x277D079A8];
  }

  else
  {
    v3 = MEMORY[0x277D079B0];
  }

  if (a3)
  {
    v4 = 8;
  }

  else
  {
    v4 = 48;
  }

  if (a3)
  {
    v5 = 208;
  }

  else
  {
    v5 = 248;
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = a3;
    do
    {
      v10 = v6;
      if (*(v6 + 23) < 0)
      {
        v10 = *v6;
      }

      if (v3(*(a1 + 184), *(a1 + 192), v10))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v32, ": fail to declare network IO.", "OUEspressoInference");
        MEMORY[0x25F894AE0](exception, &v32);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v31 = 0;
      v28 = 0;
      std::vector<unsigned long>::vector[abi:ne200100](&v32, 0xAuLL, &v28);
      espresso_network_query_blob_shape();
      std::vector<unsigned long>::resize(&v32, v31);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v28, v32, v33, (v33 - v32) >> 3);
      LODWORD(v35) = -1;
      std::vector<int>::vector[abi:ne200100](&__p, v31, &v35);
      v11 = *(v6 + 24);
      v12 = *(v6 + 32);
      v13 = (v12 - v11) >> 2;
      if (v13 == v31)
      {
        if (v12 != v11)
        {
          v14 = 0;
          v15 = v28;
          v16 = __p;
          do
          {
            v17 = *(v11 + 4 * v14);
            if (v17 >= 1)
            {
              v15[v14] = v17;
              v16[v14] = v17;
              *(a1 + 288) = 1;
              v13 = v31;
            }

            ++v14;
          }

          while (v14 < v13);
        }
      }

      else if (v12 != v11)
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v25, "[3DOD] capacity and shape must have the same size.");
        goto LABEL_48;
      }

      v18 = *(a1 + 204);
      if (v18 <= 131079)
      {
        if (v18 == 65552)
        {
          v19 = 1278226536;
        }

        else
        {
          if (v18 != 65568)
          {
LABEL_47:
            v25 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v25, "Invalid espresso storage types.");
LABEL_48:
            v25->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v25, off_2799C3FC0, MEMORY[0x277D82610]);
          }

          v19 = 1278226534;
        }
      }

      else
      {
        v19 = 1278226488;
        if (v18 != 131080)
        {
          if (v18 == 131104)
          {
            v19 = 1111970369;
          }

          else if (v18 != 262152)
          {
            goto LABEL_47;
          }
        }
      }

      OUDnnInferenceInterface::CreateIOBuffer(a1, v6, &v28, v19, v8);
      v20 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + v4), v6);
      v21 = v20;
      if (!v20)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v22 = (v20 + 12);
      if (v21 + 12 != &__p)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v22, __p, v27, (v27 - __p) >> 2);
      }

      v35 = v6;
      v23 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + v5), v6, &std::piecewise_construct, &v35, &v34);
      v23[5] = v21[7];
      *(v23 + 50) = *(a1 + 204);
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      v6 += 48;
    }

    while (v6 != v7);
  }
}

void sub_25D20A644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void OUEspressoInference::SetInputBufferShape(uint64_t a1, uint64_t *a2, char **a3, float a4)
{
  if (a3[1] == *a3)
  {
    v17 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a1, a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_25D1DB000, v17, OS_LOG_TYPE_INFO, "[3DOD] empty shape, skipping.", v19, 2u);
    }
  }

  else
  {
    v6 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 8), a2);
    if (!v6)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v7 = *a3;
    v8 = a3[1];
    v9 = (v8 - *a3) >> 2;
    v10 = v6[9];
    if (v9 != (v6[10] - v10) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] shape must has the same size as the blob shape's size.");
      goto LABEL_18;
    }

    if (v8 != v7)
    {
      if (v9 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v8 - *a3) >> 2;
      }

      v12 = *a3;
      while (1)
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        v15 = *v10;
        v10 += 2;
        if (v13 > v15)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_11;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] shape exceeds capacity.");
LABEL_18:
      __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
    }

LABEL_11:
    v16 = (v6 + 12);
    if (v16 != a3)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v16, v7, v8, v9);
    }

    *(a1 + 288) = 1;
  }
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2)
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
    std::vector<unsigned long>::__append(result, a2 - v2);
  }
}

void OUEspressoInference::TryBuildEspressoPlan(void)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v6 = 0;
    v4 = 0;
    std::vector<unsigned long>::vector[abi:ne200100](__p, 0xAuLL, &v4);
    espresso_network_query_blob_shape();
    std::vector<unsigned long>::resize(__p, v6);
    if (espresso_buffer_pack_tensor_shape())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25F894AD0](exception, "[3DOD] fail to pack buffer.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_25D20A968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__init_with_size[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D20AA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>,OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = a4 + v7;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      v12 = (a4 + v7 + 24);
      v12[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, *(a2 + v7 + 24), *(a2 + v7 + 32), (*(a2 + v7 + 32) - *(a2 + v7 + 24)) >> 2);
      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_25D20AB70(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void OUEspressoInference::ModelInfo::~ModelInfo(void **this)
{
  v2 = this + 6;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_25D20AE38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
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

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D20AFE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<char const*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25D20B0BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::vector<int>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t a3)
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

const void **std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25D20B46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D20B560(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t OUEspressoV2Inference::OUEspressoV2Inference(uint64_t a1, void *a2, __int128 *a3, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *a1 = &unk_286EBBE10;
  v8 = v7;
  v9 = v8;
  *(a1 + 88) = v8;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a3, *(a3 + 1));
    v11 = *(a1 + 88);
  }

  else
  {
    v10 = *a3;
    *(a1 + 112) = *(a3 + 2);
    *(a1 + 96) = v10;
    v11 = v8;
  }

  *(a1 + 144) = 0u;
  *(a1 + 136) = a4;
  *(a1 + 160) = 0u;
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "] invalid bundle.", &v20);
    std::logic_error::logic_error(exception, &buf);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  if (a4)
  {
    if (e5rt_e5_compiler_create())
    {
      last_error_message = e5rt_get_last_error_message();
      v14 = _OULoggingGetOSLogForCategoryObjectUnderstanding(last_error_message, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = last_error_message;
        _os_log_impl(&dword_25D1DB000, v14, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
      }
    }

    if (e5rt_e5_compiler_options_create())
    {
      v15 = e5rt_get_last_error_message();
      v17 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v15;
        _os_log_impl(&dword_25D1DB000, v17, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
      }
    }
  }

  OUEspressoV2Inference::LoadModel(a1);

  return a1;
}

void sub_25D20B7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      if (*(v21 + 119) < 0)
      {
        operator delete(*(v21 + 96));
      }

      OUDnnInferenceInterface::~OUDnnInferenceInterface(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void OUEspressoV2Inference::LoadModel(OUEspressoV2Inference *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = this + 96;
  if (*(this + 119) < 0)
  {
    v2 = *(this + 12);
  }

  v3 = *(this + 11);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  v5 = [v3 pathForResource:v4 ofType:0];

  v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "OUEspressoV2Inference";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v5;
    _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[%s] Loading network path: %@", &buf, 0x16u);
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, ": unable to locate the network files.", "OUEspressoV2Inference");
    std::logic_error::logic_error(exception, &buf);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  if (*(this + 136) == 1)
  {
    v9 = v5;
    [v5 UTF8String];
    if (e5rt_e5_compiler_compile())
    {
      last_error_message = e5rt_get_last_error_message();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = last_error_message;
        _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
      }
    }

    if (e5rt_program_library_get_num_functions())
    {
      v11 = e5rt_get_last_error_message();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v11;
        _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      OUEspressoV2Inference::LoadModel(0, v8);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F894AD0](v17, &unk_25D2878C2);
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = v5;
  [v5 UTF8String];
  if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
  {
    v13 = e5rt_get_last_error_message();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
    }
  }

  OUEspressoV2Inference::InitializeIOBuffers(this, 1);
  OUEspressoV2Inference::InitializeIOBuffers(this, 0);
  if (e5rt_execution_stream_create())
  {
    v14 = e5rt_get_last_error_message();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v14;
      _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
    }
  }

  if (e5rt_execution_stream_encode_operation())
  {
    v15 = e5rt_get_last_error_message();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v15;
      _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "OUEspressoV2Inference";
    _os_log_impl(&dword_25D1DB000, v8, OS_LOG_TYPE_INFO, "[%s] Done loading model.", &buf, 0xCu);
  }
}

void sub_25D20BF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v19);

  _Unwind_Resume(a1);
}

void OUEspressoV2Inference::~OUEspressoV2Inference(OUEspressoV2Inference *this)
{
  v10 = *MEMORY[0x277D85DE8];
  *this = &unk_286EBBE10;
  if (e5rt_execution_stream_operation_release())
  {
    last_error_message = e5rt_get_last_error_message();
    v4 = _OULoggingGetOSLogForCategoryObjectUnderstanding(last_error_message, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = last_error_message;
      _os_log_impl(&dword_25D1DB000, v4, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &v8, 0xCu);
    }
  }

  if (e5rt_execution_stream_release())
  {
    v5 = e5rt_get_last_error_message();
    v7 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = v5;
      _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &v8, 0xCu);
    }
  }

  if (*(this + 21))
  {
    e5rt_program_function_release();
  }

  if (*(this + 20))
  {
    e5rt_program_library_release();
  }

  if (*(this + 19))
  {
    e5rt_e5_compiler_options_release();
  }

  if (*(this + 18))
  {
    e5rt_e5_compiler_release();
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  OUDnnInferenceInterface::~OUDnnInferenceInterface(this);
}

{
  OUEspressoV2Inference::~OUEspressoV2Inference(this);

  JUMPOUT(0x25F894DE0);
}

void sub_25D20C184(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void OUEspressoV2Inference::Infer(OUEspressoV2Inference *this)
{
  v6 = *MEMORY[0x277D85DE8];
  if (e5rt_execution_stream_execute_sync())
  {
    last_error_message = e5rt_get_last_error_message();
    v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding(last_error_message, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = last_error_message;
      _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &v4, 0xCu);
    }
  }
}

void OUEspressoV2Inference::InitializeIOBuffers(OUEspressoV2Inference *this, uint64_t a2)
{
  v2 = a2;
  v73 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D078A0];
  if (a2)
  {
    v4 = MEMORY[0x277D07898];
  }

  v54 = v4;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 48;
  }

  if (a2)
  {
    v6 = MEMORY[0x277D07878];
  }

  else
  {
    v6 = MEMORY[0x277D07880];
  }

  if (a2)
  {
    v7 = MEMORY[0x277D07870];
  }

  else
  {
    v7 = MEMORY[0x277D07888];
  }

  v70 = 0;
  v8 = (this + 128);
  v6(*(this + 16), &v70);
  std::vector<char const*>::vector[abi:ne200100](&v68, v70);
  v7(*v8, v70, v68);
  v9 = v68;
  v10 = v69;
  if (v68 != v69)
  {
    do
    {
      v11 = *v9;
      v66 = 0;
      v67 = 0;
      if (v54(*(this + 16), v11, &v67))
      {
        last_error_message = e5rt_get_last_error_message();
        v14 = _OULoggingGetOSLogForCategoryObjectUnderstanding(last_error_message, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = last_error_message;
          _os_log_impl(&dword_25D1DB000, v14, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_io_port_retain_tensor_desc())
      {
        v15 = e5rt_get_last_error_message();
        v17 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v15;
          _os_log_impl(&dword_25D1DB000, v17, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      v64 = 0;
      v65 = 0;
      if (e5rt_tensor_desc_get_shape())
      {
        v18 = e5rt_get_last_error_message();
        v20 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v18, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v18;
          _os_log_impl(&dword_25D1DB000, v20, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      v62 = 0;
      v63 = 0;
      if (e5rt_tensor_desc_get_strides())
      {
        v21 = e5rt_get_last_error_message();
        v23 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v21;
          _os_log_impl(&dword_25D1DB000, v23, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      v59 = 0;
      v60 = 0;
      v61 = 0;
      std::vector<unsigned long>::__insert_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v59, 0, v64, &v64[8 * v65], v65);
      *(v60 - 1) = *(v62 + 8 * v63 - 16) / *(v62 + 8 * v63 - 8);
      v58 = 0;
      v57 = 0;
      if (e5rt_tensor_desc_retain_dtype())
      {
        v24 = e5rt_get_last_error_message();
        v26 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v24, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v24;
          _os_log_impl(&dword_25D1DB000, v26, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_tensor_desc_dtype_get_component_pack())
      {
        v27 = e5rt_get_last_error_message();
        v29 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v27, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v27;
          _os_log_impl(&dword_25D1DB000, v29, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v11);
      v30 = 1278226488;
      if (v57)
      {
        if (v57 == 6)
        {
          v30 = 1278226534;
        }

        else
        {
          if (v57 != 3)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::operator+<char>();
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "] unsupported component types.", &v71);
            std::logic_error::logic_error(exception, &buf);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
          }

          v30 = 1278226536;
        }
      }

      OUDnnInferenceInterface::CreateIOBuffer(this, __p, &v59, v30, v2);
      if (v56 < 0)
      {
        operator delete(__p[0]);
      }

      if (e5rt_tensor_desc_dtype_release())
      {
        v31 = e5rt_get_last_error_message();
        v33 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v31, v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v31;
          _os_log_impl(&dword_25D1DB000, v33, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&buf, v11);
      v34 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((this + v5), &buf);
      if (!v34)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      LODWORD(v71.__r_.__value_.__l.__data_) = -1;
      std::vector<int>::vector[abi:ne200100](&buf, v65, &v71);
      v35 = v34[12];
      if (v35)
      {
        v34[13] = v35;
        operator delete(v35);
        v34[12] = 0;
        v34[13] = 0;
        v34[14] = 0;
      }

      *(v34 + 4) = buf;
      if (!CVPixelBufferGetIOSurface(v34[5]))
      {
        v51 = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        v52 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "] failed to get io surface", &v71);
        MEMORY[0x25F894AE0](v51, &buf, v52);
        __cxa_throw(v51, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v71.__r_.__value_.__r.__words[0] = 0;
      if (e5rt_buffer_object_create_from_iosurface())
      {
        v36 = e5rt_get_last_error_message();
        v38 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v36, v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v36;
          _os_log_impl(&dword_25D1DB000, v38, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_io_port_bind_buffer_object())
      {
        v39 = e5rt_get_last_error_message();
        v41 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v39, v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v39;
          _os_log_impl(&dword_25D1DB000, v41, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_buffer_object_release())
      {
        v42 = e5rt_get_last_error_message();
        v44 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v42, v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v42;
          _os_log_impl(&dword_25D1DB000, v44, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_tensor_desc_release())
      {
        v45 = e5rt_get_last_error_message();
        v47 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v45, v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v45;
          _os_log_impl(&dword_25D1DB000, v47, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_io_port_release())
      {
        v48 = e5rt_get_last_error_message();
        v50 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v48, v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v48;
          _os_log_impl(&dword_25D1DB000, v50, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      ++v9;
    }

    while (v9 != v10);
    v9 = v68;
  }

  if (v9)
  {
    v69 = v9;
    operator delete(v9);
  }
}

void sub_25D20CAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OUEspressoV2Inference::SetInputBufferShape()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  v1 = std::string::append(&v3, "] dynamic inference not implemented.", 0x24uLL);
  v2 = *&v1->__r_.__value_.__l.__data_;
  v4.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v4.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  std::logic_error::logic_error(exception, &v4);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
}

void sub_25D20CCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t *std::vector<char const*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25D20CDA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned long>::__insert_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v15);
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

void *ou3dod::IsObjectBelongToType(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 0;
  }

  v4 = *a2 + 8;
  do
  {
    result = [*(a1 + 128) isEqualToString:*(v4 - 8)];
    if (result)
    {
      break;
    }

    v6 = v4 == v2;
    v4 += 8;
  }

  while (!v6);
  return result;
}

uint64_t ou3dod::ShouldForceExtendCorner(id *this, const OUBox3d *a2, const OUBox3d *a3)
{
  v4 = [this[18] UUIDString];
  v14 = [v4 UTF8String];
  v5 = [a2[1].var5.var2 UUIDString];
  v13 = [v5 UTF8String];
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(v15, &v14, &v13);

  v7 = ou3dod::HistoryMergeInfo::Get(v6);
  v8 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v7 + 5, v15);
  if (v8 || (v9 = v16, v10 = *v15, *v15 = *__p, v16 = v18, *__p = v10, v18 = v9, (v8 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v7 + 5, v15)) != 0))
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return v11 & 1;
}

void sub_25D20D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
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

void ou3dod::SetForceExtendCornerFlag(id *this, const OUBox3d *a2, const OUBox3d *a3)
{
  v3 = a3;
  v6 = ou3dod::HistoryMergeInfo::Get(this);
  v7 = [a2[1].var5.var2 UUIDString];
  v17[0] = [v7 UTF8String];
  v8 = [this[18] UUIDString];
  v12 = [v8 UTF8String];
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(v13, v17, &v12);

  v9 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v6 + 5, v13);
  if (v9)
  {
    std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::remove(v6 + 5, v9, v17);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](v17);
  }

  v10 = v14;
  v11 = *v13;
  *v13 = *__p;
  v14 = v16;
  *__p = v11;
  v16 = v10;
  v17[0] = v13;
  *(std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::__emplace_unique_key_args<std::pair<std::string,std::string>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::string> const&>,std::tuple<>>(v6 + 5, v13, &std::piecewise_construct, v17, &v12) + 64) = v3;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

uint64_t ou3dod::ShouldForceMerge(ou3dod *this, id *a2, const OUBox3d *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = ou3dod::HistoryMergeInfo::Get(this);
  v6 = [*(this + 18) UUIDString];
  v27.i64[0] = [v6 UTF8String];
  v7 = [a2[18] UUIDString];
  v26[0].i64[0] = [v7 UTF8String];
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(&v35, &v27, v26);

  v8 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v5 + 5, &v35);
  if (v8 || (v9 = v35, v35 = v37, v10 = v36, v37 = v9, v36 = v38, v38 = v10, (v8 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v5 + 5, &v35)) != 0))
  {
    v40 = @"Table";
    *&v28 = 0;
    v27 = 0uLL;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v27, &v40, &v41, 1uLL);
    v12 = v27.i64[1];
    v11 = v27.i64[0];
    v13 = 0.2;
    if (v27.i64[0] != v27.i64[1])
    {
      while (![*(this + 16) isEqualToString:*v11])
      {
        if (++v11 == v12)
        {
          goto LABEL_8;
        }
      }

      v13 = 0.4;
    }

LABEL_8:
    v26[0].i64[0] = &v27;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v26);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    box3dEnlarge(&v27, this, 1053609165, v13, 0.0);
    memset(v26, 0, sizeof(v26));
    box3dEnlarge(v26, a2, 1053609165, v13, 0.0);
    memset(v25, 0, sizeof(v25));
    box3dIou(v25, &v27, v26, 0, v14);
    if (*v25 >= 0.01)
    {
      v15 = vsubq_f32(*this, *(this + 1));
      v16 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v15, v15)));
      v17 = vrsqrte_f32(v16);
      v18 = vmul_f32(v17, vrsqrts_f32(v16.u32[0], vmul_f32(v17, v17)));
      *v15.f32 = vmul_n_f32(*v15.f32, vmul_f32(v18, vrsqrts_f32(v16.u32[0], vmul_f32(v18, v18))).f32[0]);
      v19 = vsubq_f32(*a2, *(a2 + 1));
      v20 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v19, v19)));
      v21 = vrsqrte_f32(v20);
      v22 = vmul_f32(v21, vrsqrts_f32(v20, vmul_f32(v21, v21)));
      if (fabsf(vaddv_f32(vmul_f32(*v15.f32, vmul_n_f32(*v19.f32, vmul_f32(v22, vrsqrts_f32(v20, vmul_f32(v22, v22))).f32[0])))) < 0.173)
      {
        v23 = 1;
        goto LABEL_13;
      }
    }

    std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::remove(v5 + 5, v8, v39);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](v39);
  }

  v23 = 0;
LABEL_13:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  return v23;
}

float32x2_t ou3dod::ComputeHeadingDirection(float32x4_t *this, const box3d *a2)
{
  v2 = vsubq_f32(*this, this[1]);
  v3 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v2, v2)));
  v4 = vrsqrte_f32(v3);
  v5 = vmul_f32(v4, vrsqrts_f32(v3.u32[0], vmul_f32(v4, v4)));
  return vmul_n_f32(*v2.f32, vmul_f32(v5, vrsqrts_f32(v3.u32[0], vmul_f32(v5, v5))).f32[0]);
}

float ou3dod::Compute2DOverlapRatio(ou3dod *this, const box3d *a2, const box3d *a3, const box3d *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *this;
  *(&v4 + 1) = *(this + 2);
  v5 = *(this + 2);
  *(&v5 + 1) = *(this + 6);
  v33[0] = v4;
  v33[1] = v5;
  v6 = *a2;
  *(&v6 + 1) = *(a2 + 2);
  v7 = *(a2 + 2);
  *(&v7 + 1) = *(a2 + 6);
  v32[0] = v6;
  v32[1] = v7;
  v8 = *a3;
  *(&v8 + 1) = *(a3 + 2);
  v9 = *(a3 + 2);
  *(&v9 + 1) = *(a3 + 6);
  v31[0] = v8;
  v31[1] = v9;
  OU::Polygon::Polygon(v30, v33, 4uLL);
  OU::Polygon::Polygon(v29, v32, 4uLL);
  OU::Polygon::Polygon(v28, v31, 4uLL);
  OU::clip(v27, v30, v28);
  OU::clip(v26, v29, v28);
  OU::clip(__p, v30, v29);
  if (OU::area(__p, v10) > 0.001)
  {
    OU::clip(&v20, v28, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v20;
    v24 = v21;
    v25 = v22;
  }

  v12 = OU::area(v27, v11);
  v14 = OU::area(v26, v13);
  v16 = OU::area(__p, v15);
  v18 = OU::area(v28, v17);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  return ((v12 + v14) - v16) / v18;
}

void sub_25D20D898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a36)
  {
    operator delete(a36);
  }

  v39 = *(v37 - 192);
  if (v39)
  {
    *(v37 - 184) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void ou3dod::extractClassPoints(void *a1@<X0>, float32x4_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a3;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (v7)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v53 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v8)
    {
      v55 = *v65;
      v58 = v6;
      do
      {
        v9 = 0;
        v57 = v8;
        do
        {
          if (*v65 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v64 + 1) + 8 * v9);
          v11 = [v10 points];
          v12 = [v10 semanticLabels];
          v13 = [v10 semanticVotes];
          v14 = 0;
          v15 = vsubq_f32(*a2, a2[3]);
          v16 = vmulq_f32(v15, v15);
          v16.f32[0] = v16.f32[2] + vaddv_f32(*v16.f32);
          v17 = vrsqrte_f32(v16.u32[0]);
          v18 = vmul_f32(v17, vrsqrts_f32(v16.u32[0], vmul_f32(v17, v17)));
          v62 = vmulq_n_f32(v15, vmul_f32(v18, vrsqrts_f32(v16.u32[0], vmul_f32(v18, v18))).f32[0]);
          v19 = vsubq_f32(*a2, a2[1]);
          v20 = vmulq_f32(v19, v19);
          v20.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
          v21 = vrsqrte_f32(v20.u32[0]);
          v22 = vmul_f32(v21, vrsqrts_f32(v20.u32[0], vmul_f32(v21, v21)));
          LODWORD(v23) = vmul_f32(v22, vrsqrts_f32(v20.u32[0], vmul_f32(v22, v22))).u32[0];
          v24 = vsubq_f32(*a2, a2[4]);
          v25 = vmulq_f32(v24, v24);
          v25.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
          v61 = vmulq_n_f32(v19, v23);
          *v19.f32 = vrsqrte_f32(v25.u32[0]);
          *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v25.u32[0], vmul_f32(*v19.f32, *v19.f32)));
          v26 = vmulq_n_f32(v24, vmul_f32(*v19.f32, vrsqrts_f32(v25.u32[0], vmul_f32(*v19.f32, *v19.f32))).f32[0]);
          v27 = sqrtf(v16.f32[0]) * 0.5;
          v28 = sqrtf(v20.f32[0]) * 0.5;
          v29 = sqrtf(v25.f32[0]) * 0.5;
          v19.i64[0] = 0x3F0000003F000000;
          v19.i64[1] = 0x3F0000003F000000;
          v59 = vmulq_f32(vaddq_f32(*a2, a2[6]), v19);
          v60 = v26;
          while (v14 < [v10 count])
          {
            v63 = *v11;
            v30 = vsubq_f32(*v11, v59);
            v31 = vmulq_f32(v62, v30);
            v32 = vmulq_f32(v61, v30);
            v33 = fabsf(v32.f32[2] + vaddv_f32(*v32.f32));
            v34 = vmulq_f32(v60, v30);
            v35 = fabsf(v34.f32[2] + vaddv_f32(*v34.f32));
            if (fabsf(v31.f32[2] + vaddv_f32(*v31.f32)) <= v27 && v33 <= v28 && v35 <= v29)
            {
              v38 = *(v13 + 8 * v14);
              v39 = vmovl_u16(v38);
              v40 = vaddw_u16(vextq_s8(v39, v39, 8uLL), v38);
              if (v40.i16[0] + v40.i16[2])
              {
                v40.i32[0] = *(v12 + 4 * v14);
                v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:vmovl_u8(*v40.i8).u8[0]];
                v42 = [v6 containsObject:v41];

                if (v42)
                {
                  v44 = *(a4 + 8);
                  v43 = *(a4 + 16);
                  if (v44 >= v43)
                  {
                    v46 = (v44 - *a4) >> 4;
                    if ((v46 + 1) >> 60)
                    {
                      std::vector<float>::__throw_length_error[abi:ne200100]();
                    }

                    v47 = v43 - *a4;
                    v48 = v47 >> 3;
                    if (v47 >> 3 <= (v46 + 1))
                    {
                      v48 = v46 + 1;
                    }

                    if (v47 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v49 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v49 = v48;
                    }

                    if (v49)
                    {
                      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v49);
                    }

                    *(16 * v46) = v63;
                    v45 = 16 * v46 + 16;
                    v50 = *(a4 + 8) - *a4;
                    v51 = (16 * v46 - v50);
                    memcpy(v51, *a4, v50);
                    v52 = *a4;
                    *a4 = v51;
                    *(a4 + 8) = v45;
                    *(a4 + 16) = 0;
                    if (v52)
                    {
                      operator delete(v52);
                    }

                    v6 = v58;
                  }

                  else
                  {
                    *v44 = v63;
                    v45 = &v44[1];
                  }

                  *(a4 + 8) = v45;
                }
              }
            }

            ++v14;
            ++v11;
          }

          ++v9;
        }

        while (v9 != v57);
        v8 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v8);
    }

    v7 = v53;
  }
}

void sub_25D20DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void ou3dod::PrintBoxCorner(ou3dod *this, const box3d *a2, float a3)
{
  v4 = _OULoggingGetOSLogForCategoryObjectUnderstanding(this, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    ou3dod::PrintBoxCorner(this, v4);
  }
}

double ou3dod::FindIntersect(float32x4_t a1, int32x4_t a2, float32x4_t a3, int32x4_t a4)
{
  a1.i32[2] = 1.0;
  a2.i32[2] = 1.0;
  a3.i32[2] = 1.0;
  a4.i32[2] = 1.0;
  v4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vnegq_f32(a1)), a2, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
  v5 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vnegq_f32(a3)), a4, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vnegq_f32(v5)), v7, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  if (fabsf(*&v8.i32[1]) >= 0.000001)
  {
    *&result = vdivq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vdupq_lane_s32(*v8.i8, 1)).u64[0];
  }

  else
  {
    v9.i64[0] = 0x80000000800000;
    v9.i64[1] = 0x80000000800000;
    *&result = vnegq_f32(v9).u64[0];
  }

  return result;
}

float32x4_t *ou3dod::MaybeReorderBackObjectCorner(float32x4_t *result, float32x2_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = vsubq_f32(*result, result[1]);
    v4 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v3, v3)));
    v5 = vrsqrte_f32(v4);
    v6 = vmul_f32(v5, vrsqrts_f32(v4.u32[0], vmul_f32(v5, v5)));
    *v3.f32 = vsub_f32(a2, vmul_n_f32(*v3.f32, vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6))).f32[0]));
    if (sqrtf(vaddv_f32(vmul_f32(*v3.f32, *v3.f32))) < 0.01)
    {
      break;
    }

    v7 = result;
    for (j = 1; j != 5; ++j)
    {
      v7->i64[0] = result[(j & 3) + 4].i64[0];
      ++v7;
    }

    v9 = result + 4;
    v10 = 4;
    do
    {
      v9->i64[0] = v9[-4].i64[0];
      ++v9;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t ou3dod::ShiftBoxCorner(uint64_t this, box3d *a2)
{
  for (i = 0; i != 64; i += 16)
  {
    *(this + i) = *(this + 16 * (a2 & 3 | 4u));
    LODWORD(a2) = a2 + 1;
  }

  v3 = (this + 64);
  v4 = 4;
  do
  {
    *v3 = *(v3 - 8);
    v3 += 2;
    --v4;
  }

  while (v4);
  return this;
}

BOOL ou3dod::IsBoxSurfaceAttached(float32x4_t *this, const box3d *a2, const box3d *a3)
{
  v3 = 0;
  v4 = 0;
  do
  {
    for (i = 0; i != 64; i += 16)
    {
      v6 = vsubq_f32(this[v3], *(a2 + i));
      if (sqrtf(vaddv_f32(*&vmulq_f32(v6, v6))) < 0.01)
      {
        ++v4;
      }
    }

    ++v3;
  }

  while (v3 != 4);
  return v4 > 1;
}

void ou3dod::MaybeReorderObjectCorner(id *this, OUBox3d *a2)
{
  if (this)
  {
    v3 = [this[16] isEqualToString:{@"Cabinet", COERCE_DOUBLE(box3dToCentroidSizeAngle(__p, this))}];
    v4 = __p[0];
    if (v3)
    {
      v6 = *(__p[0] + 3);
      v5 = *(__p[0] + 4);
      v7 = v5 <= 1.0 || v5 <= v6;
      if (!v7 && (v5 / v6) > 1.5)
      {
        v8 = 1;
        v9 = this;
        do
        {
          *v9 = this[2 * (v8 & 3) + 8];
          v9 += 2;
          ++v8;
        }

        while (v8 != 5);
        v10 = this + 8;
        v11 = 4;
        do
        {
          *v10 = *(v10 - 8);
          v10 += 2;
          --v11;
        }

        while (v11);
        goto LABEL_19;
      }
    }

    else
    {
      v12 = *(__p[0] + 3);
      v13 = *(__p[0] + 4);
      if (v12 <= v13 && (v13 / v12) > 1.5)
      {
        v14 = 1;
        v15 = this;
        do
        {
          *v15 = this[2 * (v14 & 3) + 8];
          v15 += 2;
          ++v14;
        }

        while (v14 != 5);
        v16 = this + 8;
        v17 = 4;
        do
        {
          *v16 = *(v16 - 8);
          v16 += 2;
          --v17;
        }

        while (v17);
LABEL_19:
        if (!v4)
        {
          return;
        }
      }
    }

    __p[1] = v4;
    operator delete(v4);
  }
}

void sub_25D20E128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dod::AdjustBoxCornerOrder(box3d *this, float32x4_t *a2, box3d *a3)
{
  box3dToCentroidSizeAngle(v44, this);
  box3dToCentroidSizeAngle(__p, a2);
  v7 = 0;
  v8 = *v44[0];
  v9 = *__p[0];
  v10 = vsub_f32(*this, *__p[0]);
  v11 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
  v12 = 1;
  for (i = 16; i != 64; i += 16)
  {
    v14 = vsub_f32(*(this + i), v9);
    v15 = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
    if (v15 < v11)
    {
      v11 = v15;
      v7 = v12;
    }

    ++v12;
  }

  if (v7 == 3 || v7 == 0)
  {
    v17 = 0;
    v18 = this;
    do
    {
      *v18 = *(this + 2 * (v17 ^ 6));
      v18 = (v18 + 16);
      ++v17;
    }

    while (v17 != 4);
    v19 = (this + 64);
    v20 = 4;
    do
    {
      *v19 = *(v19 - 8);
      v19 += 2;
      --v20;
    }

    while (v20);
    v7 ^= 2u;
  }

  v21 = 0;
  v22 = vsub_f32(*a2->f32, v8);
  v23 = sqrtf(vaddv_f32(vmul_f32(v22, v22)));
  v24 = 1;
  for (j = 1; j != 4; ++j)
  {
    v26 = vsub_f32(*a2[j].f32, v8);
    v27 = sqrtf(vaddv_f32(vmul_f32(v26, v26)));
    if (v27 < v23)
    {
      v21 = v24;
      v23 = v27;
    }

    ++v24;
  }

  if (v21)
  {
    v28 = v21 == 3;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    v29 = 0;
    v30 = a2;
    do
    {
      v30->i64[0] = a2[v29 ^ 6].i64[0];
      ++v30;
      ++v29;
    }

    while (v29 != 4);
    v31 = a2 + 4;
    v32 = 4;
    do
    {
      v31->i64[0] = v31[-4].i64[0];
      ++v31;
      --v32;
    }

    while (v32);
    if (v21)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }
  }

  if (v21 + v7 != 3)
  {
    goto LABEL_37;
  }

  v33 = *(this + 16 * v7);
  v34 = *a2[v21].f32;
  if (vaddv_f32(vmul_f32(vsub_f32(v33, v8), vsub_f32(v34, v8))) < 0.0 && vaddv_f32(vmul_f32(vsub_f32(v33, v9), vsub_f32(v34, v9))) < 0.0)
  {
    v35 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v5, v6);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      ou3dod::AdjustBoxCornerOrder();
    }

LABEL_37:
    v36 = 0;
    goto LABEL_41;
  }

  v37 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v5, v6);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    ou3dod::AdjustBoxCornerOrder(v7, v21, v37);
  }

  ou3dod::PrintBoxCorner(this, v38, v39);
  ou3dod::PrintBoxCorner(a2, v40, v41);
  v36 = 1;
LABEL_41:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  return v36;
}

void sub_25D20E3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dod::MaybeClipExtendLShapeObjects(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6, void *a7, int a8)
{
  v383 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = *a6;
  v16 = a6[1];
  v302 = a3;
  v303 = a2;
  v17 = *a6 + 224 * a2;
  v18 = *(v17 + 80);
  v19 = *a6 + 224 * a3;
  v371 = *(v17 + 64);
  v372 = v18;
  v20 = *(v17 + 112);
  v373 = *(v17 + 96);
  v374 = v20;
  v21 = *(v17 + 16);
  v367 = *v17;
  v368 = v21;
  v22 = *(v17 + 48);
  v369 = *(v17 + 32);
  v370 = v22;
  v23 = *(v19 + 80);
  v363 = *(v19 + 64);
  v364 = v23;
  v24 = *(v19 + 112);
  v365 = *(v19 + 96);
  v366 = v24;
  v25 = *(v19 + 16);
  v359 = *v19;
  v360 = v25;
  v26 = *(v19 + 48);
  v361 = *(v19 + 32);
  v362 = v26;
  if ((ou3dod::AdjustBoxCornerOrder(v17, v19, v27) & 1) == 0)
  {
    ou3dod::SetForceExtendCornerFlag(v17, (v15 + 224 * a3), 0);
    v65 = 1;
    goto LABEL_170;
  }

  v28 = *(v17 + 16);
  v28.i32[2] = 1.0;
  v29 = *(v17 + 32);
  v29.i32[2] = 1.0;
  v30 = *(v19 + 16);
  v30.i32[2] = 1.0;
  v31 = *(v19 + 32);
  v31.i32[2] = 1.0;
  v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v28)), v29, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
  v33 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
  v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), vnegq_f32(v30)), v31, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
  v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  v36 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
  v37 = vextq_s8(v32, v32, 0xCuLL);
  v38 = vnegq_f32(v33);
  v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v38), v35, v36);
  v35.i64[0] = 0x80000000800000;
  v35.i64[1] = 0x80000000800000;
  v40 = vnegq_f32(v35);
  v297 = v40;
  if (fabsf(*&v39.i32[1]) >= 0.000001)
  {
    v40 = vdivq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vdupq_lane_s32(*v39.i8, 1));
  }

  v41 = *v17;
  v293 = v40;
  v42 = v40;
  v42.i32[2] = *(v17 + 8);
  v43 = vsubq_f32(v42, *(v17 + 32));
  v44 = vmulq_f32(v43, v43);
  v45 = vsubq_f32(v42, *(v19 + 16));
  v46 = vmulq_f32(v45, v45);
  v47 = vsubq_f32(v42, *(v17 + 16));
  v48 = vmulq_f32(v47, v47);
  *v46.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v46, v46, 8uLL)), vadd_f32(vzip1_s32(*v44.i8, *v46.i8), vzip2_s32(*v44.i8, *v46.i8))));
  v300 = v42;
  v49 = vsubq_f32(v42, *(v19 + 32));
  v50 = vmulq_f32(v49, v49);
  *v50.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v50, v50, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v50.i8), vzip2_s32(*v48.i8, *v50.i8))));
  *v50.i8 = vadd_f32(vzip1_s32(*v50.i8, *v46.i8), vzip2_s32(*v50.i8, *v46.i8));
  v51 = vextq_s8(v37, v32, 8uLL);
  if (vcgt_f32(vdup_lane_s32(*v50.i8, 1), *v50.i8).u8[0])
  {
    v52 = 0x100000000;
  }

  else
  {
    v52 = 1;
  }

  v53 = *(v17 + 48);
  v54 = *v19;
  v41.i32[2] = 1.0;
  v53.i32[2] = 1.0;
  v55 = *(v19 + 48);
  v54.i32[2] = 1.0;
  v55.i32[2] = 1.0;
  v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v41)), v53, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL));
  v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
  v58 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v54)), v55, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
  v59 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
  v60 = vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL);
  v61 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), vnegq_f32(v57)), v59, vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL));
  if (fabsf(*&v61.i32[1]) >= 0.000001)
  {
    v297 = vdivq_f32(vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL), vdupq_lane_s32(*v61.i8, 1));
  }

  v62 = vmlaq_f32(vmulq_f32(v60, v38), v59, v51);
  if (fabsf(*&v62.i32[1]) >= 0.000001)
  {
    v64 = vdivq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), vdupq_lane_s32(*v62.i8, 1));
  }

  else
  {
    v63.i64[0] = 0x80000000800000;
    v63.i64[1] = 0x80000000800000;
    v64 = vnegq_f32(v63);
  }

  v292 = v64;
  v66 = *(v17 + 80);
  v355 = *(v17 + 64);
  v356 = v66;
  v67 = *(v17 + 112);
  v357 = *(v17 + 96);
  v358 = v67;
  v68 = *(v17 + 16);
  v351 = *v17;
  v352 = v68;
  v69 = *(v17 + 48);
  v353 = *(v17 + 32);
  v354 = v69;
  v296 = v14;
  box3dToCentroidSizeAngle(v350, v17);
  box3dToCentroidSizeAngle(v349, v19);
  *v70.i64 = rotationZMatrix(*(v350[0] + 6));
  v298 = a8;
  v72 = 0;
  v291 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v15) >> 5);
  v73.i64[0] = *v350[0];
  v73.i32[2] = *(v350[0] + 2);
  v75 = vzip1q_s32(v70, v74);
  v76 = vzip2q_s32(v70, v74);
  v78 = vdupq_laneq_s32(v77, 2);
  v79 = vzip1q_s32(v70, v77);
  v79.i32[2] = v74.i32[0];
  v80 = vzip1q_s32(v75, v77);
  v81 = vzip2q_s32(v75, vdupq_lane_s32(*v77.i8, 1));
  v82 = vzip2q_s32(v70, v77);
  v82.i32[2] = v74.i32[2];
  v83 = vzip1q_s32(v76, v78);
  v84 = vdupq_lane_s32(*v74.i8, 1);
  v85 = vtrn2q_s32(v80, v81);
  v85.i32[2] = v83.i32[1];
  do
  {
    v86 = v80;
    v86.i32[3] = v71;
    v87 = v83;
    v87.i32[3] = v78.i32[3];
    v78 = vsubq_f32(*(&v351 + v72), v73);
    *(&v351 + v72) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v86, v87), v81), v78.f32[0]), v85, *v78.f32, 1), vzip1q_s32(vzip2q_s32(v86, v87), v84), v78, 2);
    v72 += 16;
    v78.i32[3] = v87.i32[3];
    v71 = v86.i32[3];
  }

  while (v72 != 128);
  v88 = 0;
  v89 = vsubq_f32(v300, v73);
  v90 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v80, v83), v81), v89.f32[0]), v85, *v89.f32, 1), vzip1q_s32(vzip2q_s32(v80, v83), v84), v89, 2).u32[0];
  v91 = v52 & 1;
  do
  {
    v92 = (&v351 + ou3dod::MaybeClipExtendLShapeObjects(std::vector<OUBox3d> const&,std::pair<unsigned long,unsigned long>,NSArray<OUPointCloud *> *,BOOL,std::vector<OUBox3d>*,std::vector<BOOL> *,BOOL)::indices[4 * (v52 & 1) + v88]);
    LODWORD(v93) = v90;
    HIDWORD(v93) = HIDWORD(*v92);
    *(v92 | 8) = *(v92 + 8);
    *v92 = v93;
    ++v88;
  }

  while (v88 != 4);
  v94 = 0;
  v345 = v355;
  v346 = v356;
  v347 = v357;
  v348 = v358;
  v341 = v351;
  v342 = v352;
  v343 = v353;
  v344 = v354;
  do
  {
    *(&v341 + v94 * 4) = vaddq_f32(v73, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(*(&v341 + v94 * 4))), v81, *&v341.f32[v94], 1), v82, *(&v341 + v94 * 4), 2));
    v94 += 4;
  }

  while (v94 != 32);
  v82.i64[0] = *v349[0];
  v82.i32[2] = *(v349[0] + 2);
  v294 = v82;
  v95 = *(v19 + 80);
  v337 = *(v19 + 64);
  v338 = v95;
  v96 = *(v19 + 112);
  v339 = *(v19 + 96);
  v340 = v96;
  v97 = *(v19 + 16);
  v333 = *v19;
  v334 = v97;
  v98 = *(v19 + 48);
  v335 = *(v19 + 32);
  v336 = v98;
  *v100.i64 = rotationZMatrix(*(v349[0] + 6));
  v102 = 0;
  v104 = vzip1q_s32(v100, v103);
  v105 = vzip2q_s32(v100, v103);
  v107 = vdupq_laneq_s32(v106, 2);
  v108 = vzip1q_s32(v100, v106);
  v108.i32[2] = v103.i32[0];
  v109 = vzip1q_s32(v104, v106);
  v110 = vzip2q_s32(v104, vdupq_lane_s32(*v106.i8, 1));
  v111 = vzip2q_s32(v100, v106);
  v111.i32[2] = v103.i32[2];
  v112 = vzip1q_s32(v105, v107);
  v113 = vdupq_lane_s32(*v103.i8, 1);
  v114 = vtrn2q_s32(v109, v110);
  v114.i32[2] = v112.i32[1];
  do
  {
    v115 = v109;
    v115.i32[3] = v101;
    v116 = v112;
    v116.i32[3] = v107.i32[3];
    v107 = vsubq_f32(*(&v333 + v102), v294);
    *(&v333 + v102) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v115, v116), v110), v107.f32[0]), v114, *v107.f32, 1), vzip1q_s32(vzip2q_s32(v115, v116), v113), v107, 2);
    v102 += 16;
    v107.i32[3] = v116.i32[3];
    v101 = v115.i32[3];
  }

  while (v102 != 128);
  v117 = 0;
  v118 = vsubq_f32(v300, v294);
  v119 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v109, v112), v110), v118.f32[0]), v114, *v118.f32, 1), vzip1q_s32(vzip2q_s32(v109, v112), v113), v118, 2).u32[0];
  do
  {
    v120 = (&v333 + *(ou3dod::MaybeClipExtendLShapeObjects(std::vector<OUBox3d> const&,std::pair<unsigned long,unsigned long>,NSArray<OUPointCloud *> *,BOOL,std::vector<OUBox3d>*,std::vector<BOOL> *,BOOL)::indices + ((v52 >> 28) & 0x10) + v117));
    LODWORD(v121) = v119;
    HIDWORD(v121) = HIDWORD(*v120);
    *(v120 | 8) = *(v120 + 8);
    *v120 = v121;
    v117 += 4;
  }

  while (v117 != 16);
  v122 = 0;
  v329 = v337;
  v330 = v338;
  v331 = v339;
  v332 = v340;
  v325 = v333;
  v326 = v334;
  v327 = v335;
  v328 = v336;
  do
  {
    *(&v325 + v122 * 4) = vaddq_f32(v294, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, COERCE_FLOAT(*(&v325 + v122 * 4))), v110, *&v325.f32[v122], 1), v111, *(&v325 + v122 * 4), 2));
    v122 += 4;
  }

  while (v122 != 32);
  if ((a8 & 1) != 0 || (box3dIou(&v317, &v341, &v325, 0, v99), v317.f32[0] <= 0.02))
  {
    v301 = a6;
    v295 = a7;
    v126 = v341;
    v127 = v342;
    v128 = v344;
    *(v17 + 32) = v343;
    *(v17 + 48) = v128;
    *v17 = v126;
    *(v17 + 16) = v127;
    v129 = v345;
    v130 = v346;
    v131 = v348;
    *(v17 + 96) = v347;
    *(v17 + 112) = v131;
    *(v17 + 64) = v129;
    *(v17 + 80) = v130;
    v132 = v332;
    v134 = v329;
    v133 = v330;
    *(v19 + 96) = v331;
    *(v19 + 112) = v132;
    *(v19 + 64) = v134;
    *(v19 + 80) = v133;
    v135 = v325;
    v136 = v326;
    v137 = v328;
    *(v19 + 32) = v327;
    *(v19 + 48) = v137;
    *v19 = v135;
    *(v19 + 16) = v136;
    v138 = *v17;
    v139 = *v19;
    if (v52)
    {
      v140 = v17;
    }

    else
    {
      v140 = v19;
    }

    v141 = *(v140 + 48);
    if (*&v139.i32[2] >= *&v138.i32[2])
    {
      v118.i32[0] = *(v17 + 8);
    }

    else
    {
      v118.i32[0] = *(v19 + 8);
    }

    v142 = *(v17 + 72);
    v143 = *(v19 + 72);
    if (v142 >= v143)
    {
      v144 = *(v17 + 72);
    }

    else
    {
      v144 = *(v19 + 72);
    }

    v145 = vabds_f32(v142 - *&v138.i32[2], v143 - *&v139.i32[2]);
    if (v145 >= 0.15 && a5)
    {
      v285 = *v19;
      v286 = *v17;
      v287 = v118;
      v288 = v144;
      v289 = *(v140 + 48);
      v382[0] = @"Sofa";
      v382[1] = @"Table";
      v318.i64[0] = 0;
      v317 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v317, v382, &v383, 2uLL);
      v146 = v317.i64[1];
      if (v317.i64[0] == v317.i64[1])
      {
        v149 = 0;
      }

      else
      {
        v147 = v317.i64[0] + 8;
        do
        {
          v148 = [*(v17 + 128) isEqualToString:{*(v147 - 8), *&v285, *&v286, *&v287}];
          v149 = v148;
          if (v147 == v146)
          {
            v150 = 1;
          }

          else
          {
            v150 = v148;
          }

          v147 += 8;
        }

        while (v150 != 1);
      }

      v313[0] = &v317;
      std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v313);
      for (i = 1; i != -1; --i)
      {
      }

      LOBYTE(a8) = v298;
      v144 = v288;
      v141 = v289;
      v138 = v286;
      v118.i32[0] = v287.i32[0];
      v139 = v285;
      if ((v149 & 1) == 0)
      {
LABEL_56:
        v135.i64[0] = 0;
        v136.i64[0] = v91;
        v155 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v136, v135).i64[0], 0), v138, v139);
        v156 = v141;
        v156.i32[2] = v118.i32[0];
        v157 = v293;
        v157.i32[2] = v118.i32[0];
        v317 = v156;
        v318 = v157;
        v158 = v155;
        v158.i32[2] = v118.i32[0];
        v159 = v297;
        v159.i32[2] = v118.i32[0];
        v319 = v158;
        v320 = v159;
        v141.i32[2] = v144;
        v160 = v293;
        v160.i32[2] = v144;
        v155.i32[2] = v144;
        v321 = v141;
        v322 = v160;
        v161 = v297;
        v161.i32[2] = v144;
        v323 = v155;
        v324 = v161;
        box3dToCentroidSizeAngle(v316, &v317);
        if ((a8 & 1) == 0 && (*(v316[0] + 4) > 1.5 || *(v316[0] + 3) > 1.5))
        {
          v168 = v372;
          *(v17 + 64) = v371;
          *(v17 + 80) = v168;
          v169 = v374;
          *(v17 + 96) = v373;
          *(v17 + 112) = v169;
          v170 = v368;
          *v17 = v367;
          *(v17 + 16) = v170;
          v171 = v370;
          *(v17 + 32) = v369;
          *(v17 + 48) = v171;
          v172 = v364;
          *(v19 + 64) = v363;
          *(v19 + 80) = v172;
          v173 = v366;
          *(v19 + 96) = v365;
          *(v19 + 112) = v173;
          v174 = v360;
          *v19 = v359;
          *(v19 + 16) = v174;
          v175 = v362;
          *(v19 + 32) = v361;
          *(v19 + 48) = v175;
          ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
          v65 = 3;
          goto LABEL_164;
        }

        v290 = @"Sofa";
        v381[0] = v290;
        v162 = @"Table";
        v381[1] = v162;
        v313[1] = 0;
        *&v314 = 0;
        v313[0] = 0;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(v313, v381, v382, 2uLL);
        v163 = v313[1];
        if (v313[0] == v313[1])
        {
          v166 = 0;
        }

        else
        {
          v164 = v313[0] + 8;
          do
          {
            v165 = [*(v17 + 128) isEqualToString:{*(v164 - 1), *&v285, *&v286, *&v287}];
            v166 = v165;
            if (v164 == v163)
            {
              v167 = 1;
            }

            else
            {
              v167 = v165;
            }

            v164 += 8;
          }

          while (v167 != 1);
        }

        __p[0] = v313;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](__p);
        for (j = 1; j != -1; --j)
        {
        }

        if (v166)
        {
          box3dToCentroidSizeAngle(v313, v17);
          v178 = *(v313[0] + 3);
          v177 = *(v313[0] + 4);
          box3dToCentroidSizeAngle(__p, v19);
          if (v177 >= v178)
          {
            v179 = v178;
          }

          else
          {
            v179 = v177;
          }

          if (v179 <= 0.2)
          {
            goto LABEL_102;
          }

          v180 = *(__p[0] + 4);
          if (v180 >= *(__p[0] + 3))
          {
            v180 = *(__p[0] + 3);
          }

          if (v180 <= 0.2)
          {
LABEL_102:
            v208 = v372;
            *(v17 + 64) = v371;
            *(v17 + 80) = v208;
            v209 = v374;
            *(v17 + 96) = v373;
            *(v17 + 112) = v209;
            v210 = v368;
            *v17 = v367;
            *(v17 + 16) = v210;
            v211 = v370;
            *(v17 + 32) = v369;
            *(v17 + 48) = v211;
            v212 = v364;
            *(v19 + 64) = v363;
            *(v19 + 80) = v212;
            v213 = v366;
            *(v19 + 96) = v365;
            *(v19 + 112) = v213;
            v214 = v360;
            *v19 = v359;
            *(v19 + 16) = v214;
            v215 = v362;
            *(v19 + 32) = v361;
            *(v19 + 48) = v215;
            ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (v313[0])
            {
              v313[1] = v313[0];
              operator delete(v313[0]);
            }

            v65 = 7;
            goto LABEL_164;
          }

          __p[1] = __p[0];
          operator delete(__p[0]);
          if (v313[0])
          {
            v313[1] = v313[0];
            operator delete(v313[0]);
          }
        }

        v379[0] = v290;
        v181 = [MEMORY[0x277CBEB98] setWithArray:{&unk_286EC2278, *&v285, *&v286, *&v287}];
        v380[0] = v181;
        v379[1] = v162;
        v182 = [MEMORY[0x277CBEB98] setWithArray:&unk_286EC2290];
        v380[1] = v182;
        v379[2] = @"Cabinet";
        v183 = [MEMORY[0x277CBEB98] setWithArray:&unk_286EC22A8];
        v380[2] = v183;
        v184 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v380 forKeys:v379 count:3];

        v187 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
        if (v187 >= 1)
        {
          v188 = 0;
          v189 = v187 & 0x7FFFFFFF;
          while (1)
          {
            v314 = 0u;
            v315 = 0u;
            *v313 = 0u;
            box3dIou(v313, (*a1 + v188), &v317, 0, v186);
            if ((![*(v17 + 128) isEqualToString:@"Cabinet"] || (objc_msgSend(*(*a1 + v188 + 128), "isEqualToString:", @"Chair") & 1) == 0) && (!objc_msgSend(*(v17 + 128), "isEqualToString:", v162) || !objc_msgSend(*(*a1 + v188 + 128), "isEqualToString:", @"Cabinet") || *(*a1 + v188 + 72) >= (*(v17 + 72) + 0.1)) && *(&v313[1] + 1) > 0.6)
            {
              break;
            }

            v188 += 224;
            if (!--v189)
            {
              goto LABEL_89;
            }
          }

          ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
          v218 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v216, v217);
          if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
          {
            ou3dod::MaybeClipExtendLShapeObjects();
          }

          v219 = v372;
          *(v17 + 64) = v371;
          *(v17 + 80) = v219;
          v220 = v374;
          *(v17 + 96) = v373;
          *(v17 + 112) = v220;
          v221 = v368;
          *v17 = v367;
          *(v17 + 16) = v221;
          v222 = v370;
          *(v17 + 32) = v369;
          *(v17 + 48) = v222;
          v223 = v364;
          *(v19 + 64) = v363;
          *(v19 + 80) = v223;
          v224 = v366;
          *(v19 + 96) = v365;
          *(v19 + 112) = v224;
          v225 = v360;
          *v19 = v359;
          *(v19 + 16) = v225;
          v226 = v362;
          v65 = 8;
          *(v19 + 32) = v361;
          *(v19 + 48) = v226;
          goto LABEL_163;
        }

LABEL_89:
        ShouldForceExtendCorner = ou3dod::ShouldForceExtendCorner(v17, v19, v185);
        v191 = ShouldForceExtendCorner;
        v193 = _OULoggingGetOSLogForCategoryObjectUnderstanding(ShouldForceExtendCorner, v192);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
        {
          ou3dod::MaybeClipExtendLShapeObjects();
        }

        if (((v298 | v191) & 1) == 0 && ([*(v17 + 128) isEqualToString:@"Cabinet"] & 1) == 0)
        {
          v194 = [v184 objectForKeyedSubscript:*(v17 + 128)];
          ou3dod::extractClassPoints(v194, &v317, v296, v313);

          v195 = (v313[1] - v313[0]) >> 4;
          if (v195 > 0x27)
          {
            goto LABEL_110;
          }

          if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
          {
            ou3dod::MaybeClipExtendLShapeObjects(v195, v193);
          }

          if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
          {
            v197 = ou3dod::Compute2DOverlapRatio(&v367, &v359, &v317, v196);
            ou3dod::MaybeClipExtendLShapeObjects(v378, v193, v197);
          }

          if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
          {
            ou3dod::MaybeClipExtendLShapeObjects();
          }

          if (ou3dod::Compute2DOverlapRatio(&v367, &v359, &v317, v198) >= 0.5)
          {
LABEL_110:
            v65 = 7;
            v199 = 1;
          }

          else
          {
            ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
            v199 = 0;
            v200 = v372;
            *(v17 + 64) = v371;
            *(v17 + 80) = v200;
            v201 = v374;
            *(v17 + 96) = v373;
            *(v17 + 112) = v201;
            v202 = v368;
            *v17 = v367;
            *(v17 + 16) = v202;
            v203 = v370;
            *(v17 + 32) = v369;
            *(v17 + 48) = v203;
            v204 = v364;
            *(v19 + 64) = v363;
            *(v19 + 80) = v204;
            v205 = v366;
            *(v19 + 96) = v365;
            *(v19 + 112) = v205;
            v206 = v360;
            *v19 = v359;
            *(v19 + 16) = v206;
            v207 = v362;
            v65 = 5;
            *(v19 + 32) = v361;
            *(v19 + 48) = v207;
          }

          if (v313[0])
          {
            v313[1] = v313[0];
            operator delete(v313[0]);
          }

          if ((v199 & 1) == 0)
          {
LABEL_163:

LABEL_164:
            if (v316[0])
            {
              v316[1] = v316[0];
              operator delete(v316[0]);
            }

            goto LABEL_166;
          }
        }

        box3dToCentroidSizeAngle(v312, v17);
        if (*(v312[0] + 3) >= *(v312[0] + 4))
        {
          v227 = *(v312[0] + 3);
        }

        else
        {
          v227 = *(v312[0] + 4);
        }

        box3dToCentroidSizeAngle(v311, v19);
        if (*(v311[0] + 3) >= *(v311[0] + 4))
        {
          v229 = *(v311[0] + 3);
        }

        else
        {
          v229 = *(v311[0] + 4);
        }

        if (a5)
        {
          v377[0] = v290;
          v377[1] = v162;
          v313[1] = 0;
          *&v314 = 0;
          v313[0] = 0;
          std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(v313, v377, v378, 2uLL);
          v230 = v313[1];
          if (v313[0] == v313[1])
          {
            v234 = 0;
          }

          else
          {
            v231 = v313[0] + 8;
            do
            {
              v232 = [*(v17 + 128) isEqualToString:*(v231 - 1)];
              if (v231 == v230)
              {
                v233 = 1;
              }

              else
              {
                v233 = v232;
              }

              v231 += 8;
            }

            while (v233 != 1);
            v234 = v227 < v229 ? v232 : 0;
          }

          __p[0] = v313;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](__p);
          for (k = 1; k != -1; --k)
          {
          }

          if (v234)
          {
            v236 = v372;
            *(v17 + 64) = v371;
            *(v17 + 80) = v236;
            v237 = v374;
            *(v17 + 96) = v373;
            *(v17 + 112) = v237;
            v238 = v368;
            *v17 = v367;
            *(v17 + 16) = v238;
            v239 = v370;
            *(v17 + 32) = v369;
            *(v17 + 48) = v239;
            v240 = v364;
            *(v19 + 64) = v363;
            *(v19 + 80) = v240;
            v241 = v366;
            *(v19 + 96) = v365;
            *(v19 + 112) = v241;
            v242 = v360;
            *v19 = v359;
            *(v19 + 16) = v242;
            v243 = v362;
            v65 = 6;
            *(v19 + 32) = v361;
            *(v19 + 48) = v243;
LABEL_159:
            if (v311[0])
            {
              v311[1] = v311[0];
              operator delete(v311[0]);
            }

            if (v312[0])
            {
              v312[1] = v312[0];
              operator delete(v312[0]);
            }

            goto LABEL_163;
          }
        }

        v245 = *v17;
        v244 = *(v17 + 16);
        v246 = v292.i64[0];
        v247 = vsub_f32(*v244.f32, *v293.f32);
        v248 = vmul_f32(v247, v247);
        v249 = *(v17 + 32);
        v250 = *(v17 + 48);
        v251 = vsub_f32(*v249.f32, *v293.f32);
        v252 = vmul_f32(v251, v251);
        v253 = vsqrt_f32(vadd_f32(vzip1_s32(v248, v252), vzip2_s32(v248, v252)));
        v254 = vcgt_f32(vdup_lane_s32(v253, 1), v253).u8[0];
        v255 = vsub_f32(*v244.f32, *v292.f32);
        v256 = vmul_f32(v255, v255);
        v257 = vsub_f32(*v249.f32, *v292.f32);
        v258 = vmul_f32(v257, v257);
        v259 = vsub_f32(*v17, *v297.f32);
        v260 = vmul_f32(v259, v259);
        v261 = vsub_f32(*v250.f32, *v297.f32);
        v262 = vmul_f32(v261, v261);
        v263 = vsqrt_f32(vadd_f32(vzip1_s32(v256, v260), vzip2_s32(v256, v260)));
        v264 = vsqrt_f32(vadd_f32(vzip1_s32(v258, v262), vzip2_s32(v258, v262)));
        v265 = vbsl_s8(vcgt_f32(v263, v264), v264, v263);
        if (vcgt_f32(vdup_lane_s32(v265, 1), v265).u8[0])
        {
          if (v254)
          {
            *(v17 + 8) = v245.i32[2];
            v266 = vsubq_f32(vaddq_f32(v292, v245), v244).u64[0];
            *v17 = v266;
            *(v17 + 64) = v266;
            *(v17 + 24) = v244.i32[2];
            *(v17 + 16) = v292.i64[0];
            v267 = (v17 + 80);
          }

          else
          {
            *(v17 + 56) = v250.i32[2];
            v270 = vsubq_f32(vaddq_f32(v292, v250), v249).u64[0];
            *(v17 + 48) = v270;
            *(v17 + 112) = v270;
            *(v17 + 40) = v249.i32[2];
            *(v17 + 32) = v292.i64[0];
            v267 = (v17 + 96);
          }
        }

        else
        {
          if (v254)
          {
            *(v17 + 24) = v244.i32[2];
            v268 = vsubq_f32(vaddq_f32(v297, v244), v245).u64[0];
            *(v17 + 16) = v268;
            *(v17 + 8) = v245.i32[2];
            *v17 = v297.i64[0];
            *(v17 + 80) = v268;
            v246 = v297.i64[0];
            v269 = v291;
            v267 = (v17 + 64);
LABEL_143:
            *v267 = v246;
            v308 = 0;
            v309 = 0;
            v310 = 0;
            if (v269 >= 1)
            {
              v272 = 0;
              v273 = 0;
              v274 = v269 & 0x7FFFFFFF;
              do
              {
                if (v303 != v273 && v302 != v273)
                {
                  v275 = *a6;
                  v314 = 0u;
                  v315 = 0u;
                  *v313 = 0u;
                  box3dIou(v313, (v275 + v272), v17, 0, v228);
                  v306 = 0u;
                  v307 = 0u;
                  *__p = 0u;
                  box3dIou(__p, (v275 + v272), v19, 0, v276);
                  memset(v304, 0, sizeof(v304));
                  box3dIou(v304, (v275 + v272), &v317, 0, v277);
                  if (*(&v313[1] + 1) > 0.2 || *(&__p[1] + 1) > 0.2 || *(v304 + 3) > 0.2)
                  {
                    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
                    {
                      v283 = ou3dod::Compute2DOverlapRatio(v17, v19, (v275 + v272), v278);
                      *buf = 134217984;
                      v376 = v283;
                      _os_log_debug_impl(&dword_25D1DB000, v193, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] 2D Overlap Ratio %f", buf, 0xCu);
                    }

                    a6 = v301;
                    if (ou3dod::Compute2DOverlapRatio(v17, v19, (v275 + v272), v279) > 0.6)
                    {
                      *(*v295 + ((v273 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v273;
                      v280 = *v301;
                      v281 = v309;
                      if (v309 >= v310)
                      {
                        v282 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d const&>(&v308, (v280 + v272));
                      }

                      else
                      {
                        OUBox3d::OUBox3d(v309, (v280 + v272));
                        v282 = (v281 + 224);
                      }

                      v309 = v282;
                    }
                  }
                }

                ++v273;
                v272 += 224;
              }

              while (v274 != v273);
            }

            ou3dod::SetForceExtendCornerFlag(v17, v19, 1);
            v313[0] = &v308;
            std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](v313);
            v65 = 0;
            goto LABEL_159;
          }

          *(v17 + 40) = v249.i32[2];
          v271 = vsubq_f32(vaddq_f32(v297, v249), v250).u64[0];
          *(v17 + 32) = v271;
          *(v17 + 56) = v250.i32[2];
          *(v17 + 48) = v297.i64[0];
          *(v17 + 96) = v271;
          v267 = (v17 + 112);
          v246 = v297.i64[0];
        }

        v269 = v291;
        goto LABEL_143;
      }
    }

    else if (v145 >= 0.15)
    {
      goto LABEL_56;
    }

    v152 = (v15 + 224 * v302 + 72);
    v153 = (v15 + 224 * v303 + 72);
    v154 = 4;
    do
    {
      *v153 = v144;
      *v152 = v144;
      *(v153 - 16) = v118.i32[0];
      *(v152 - 16) = v118.i32[0];
      v152 += 4;
      v153 += 4;
      --v154;
    }

    while (v154);
    goto LABEL_56;
  }

  ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
  v125 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v123, v124);
  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
  {
    ou3dod::MaybeClipExtendLShapeObjects();
  }

  v65 = 2;
LABEL_166:
  if (v349[0])
  {
    v349[1] = v349[0];
    operator delete(v349[0]);
  }

  v14 = v296;
  if (v350[0])
  {
    v350[1] = v350[0];
    operator delete(v350[0]);
  }

LABEL_170:

  return v65;
}