void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
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

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5D8F004(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5D8F2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(va);

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void **std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

BOOL _isAcceptableRecognizedObjectIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = ([v3 hasPrefix:@"CVML_UNKNOWN_"] & 1) == 0 && (!v4 || (v4[2](v4, v3) & 1) == 0);

  return v5;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
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

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(*(a1 + 16));
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

uint64_t *vision::mod::ImageAnalyzer::getLabelsList(uint64_t a1, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>((a1 + 864), a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

uint64_t *vision::mod::ImageAnalyzer::getDisallowedLabels(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 912);
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*(a1 + 904) + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_17:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_17;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_16;
  }

  return v6 + 3;
}

void *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

uint64_t calculateChecksumMD5(char *a1, unint64_t a2, unsigned __int8 *a3)
{
  memset(&v8, 0, sizeof(v8));
  CC_MD5_Init(&v8);
  for (; a2; a2 -= v6)
  {
    if (a2 >= 0x4000)
    {
      v6 = 0x4000;
    }

    else
    {
      v6 = a2;
    }

    CC_MD5_Update(&v8, a1, v6);
    a1 += v6;
  }

  return CC_MD5_Final(a3, &v8);
}

uint64_t calculateChecksumMD5ForFile(const char *a1, unsigned __int8 *a2)
{
  v4 = malloc_type_malloc(0x4000uLL, 0xF3799DDBuLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = open(a1, 0);
  if (v6 == -1)
  {
    free(v5);
    return 0;
  }

  v7 = v6;
  v8 = lseek(v6, 0, 2);
  lseek(v7, 0, 0);
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  if (v8)
  {
    while (1)
    {
      v9 = v8 >= 0x4000 ? 0x4000 : v8;
      if (read(v7, v5, 0x4000uLL) != v9)
      {
        break;
      }

      CC_MD5_Update(&c, v5, v9);
      v8 -= v9;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    VNValidatedLog(4, @"  calculateChecksumMD5ForFile: error reading %zu bytes from file", v10, v11, v12, v13, v14, v15, v9);
    close(v7);
    CC_MD5_Final(a2, &c);
    v16 = 0;
  }

  else
  {
LABEL_9:
    CC_MD5_Final(a2, &c);
    close(v7);
    v16 = 1;
  }

  free(v5);
  return v16;
}

uint64_t verifyChecksumMD5ForFile(const char *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = 0;
  result = calculateChecksumMD5ForFile(a1, &v5);
  if (result)
  {
    return v5 == *a2 && v6 == a2[1];
  }

  return result;
}

void sub_1A5D91FE8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,vision::mod::ModelValues::ValueInfo>,0>((v2 + 2));
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,vision::mod::ModelValues::ValueInfo>,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
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

uint64_t std::__shared_ptr_pointer<float  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001A6051EB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__shared_ptr_pointer<float  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1AC556AE0);
  }

  return result;
}

void std::__shared_ptr_pointer<float  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

objc_object *_prettyPrintedValue(objc_object *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v1];

    v1 = v2;
  }

  return v1;
}

void sub_1A5D95478(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A5D95A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  _Block_object_dispose(va, 8);
  *(v38 - 128) = a10;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100]((v38 - 128));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__49(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1A5D96338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char *a44)
{
  a44 = &a36;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&a44);
  _Unwind_Resume(a1);
}

void std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vision::mod::DetectedObject>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vision::mod::DetectedObject>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 57);
    v3 -= 10;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_1A5D96C18(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  vision::mod::ObjectDetector_DCNFaceDetector_v2_Options::~ObjectDetector_DCNFaceDetector_v2_Options((v24 + 48));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1551(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v3;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  result = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = result;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  *(a1 + 128) = *(a2 + 128);
  return result;
}

void __Block_byref_object_dispose__1552(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 56);
}

void sub_1A5D970B0(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void vision::mod::ObjectDetector_DCNFaceDetector_v2_Options::~ObjectDetector_DCNFaceDetector_v2_Options(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

void std::__shared_ptr_emplace<vision::mod::ObjectDetector_DCNFaceDetector_v2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1971980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void vision::mod::formCompoundID(std::string *this, const char *a2, char *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v14, ":");
  v6 = strlen(a2);
  v7 = std::string::insert(&v14, 0, a2, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v15, v9, v10);
  *this = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1A5D972E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t vision::mod::readParametersNoMapping(uint64_t a1)
{
  if (a1)
  {
    return 8576;
  }

  else
  {
    return 8573;
  }
}

uint64_t vision::mod::computeNoMapping(int a1, char **a2, void **a3)
{
  if (a3 != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return 8576;
}

uint64_t *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

uint64_t vision::mod::readParameters1DAffineMapping(FILE *a1, const char *a2, uint64_t a3)
{
  memset(&v18, 0, sizeof(v18));
  if (!a1)
  {
    v11 = 8573;
    goto LABEL_21;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "a");
  p_p = &__p;
  v6 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, &p_p);
  v8 = (v6 + 56);
  v7 = *(v6 + 56);
  if (v7)
  {
    *(v6 + 64) = v7;
    operator delete(v7);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  vision::mod::formCompoundID(&__p, a2, "a");
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v18 = __p;
  std::string::basic_string[abi:ne200100]<0>(&__p, "a");
  p_p = &__p;
  v9 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, &p_p);
  Float32Vector = vision::mod::loadFloat32Vector(a1, &v18.__r_.__value_.__l.__data_, (v9 + 56));
  v11 = Float32Vector;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((Float32Vector & 0x80) == 0)
  {
    goto LABEL_21;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "b");
  p_p = &__p;
  v12 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, &p_p);
  v14 = (v12 + 56);
  v13 = *(v12 + 56);
  if (v13)
  {
    *(v12 + 64) = v13;
    operator delete(v13);
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  vision::mod::formCompoundID(&__p, a2, "b");
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v18 = __p;
  std::string::basic_string[abi:ne200100]<0>(&__p, "b");
  p_p = &__p;
  v15 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, &p_p);
  v11 = vision::mod::loadFloat32Vector(a1, &v18.__r_.__value_.__l.__data_, (v15 + 56));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_21:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_1A5D978C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2, _OWORD **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t vision::mod::loadFloat32Vector(FILE *a1, char **a2, std::vector<unsigned int> *a3)
{
  if (fseek(a1, 0, 0))
  {
    return 8565;
  }

  v15 = 0;
  __sz = 0;
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v6 = BinSerializer_fgetBlobInfo(a1, v7, &v16, &v15, v14, &v13, &__sz);
  if ((v6 & 0x80) != 0)
  {
    if (v15 != 3)
    {
      return 8565;
    }

    std::vector<float>::resize(a3, __sz);
    begin = a3->__begin_;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (BinSerializer_freadInFloat(a1, v8, 0, &begin, &v11) != 128)
    {
      return 8565;
    }
  }

  return v6;
}

void std::vector<float>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v10);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(uint64_t a1)
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

uint64_t vision::mod::compute1DAffineMapping(uint64_t a1, void *a2, std::vector<unsigned int> *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v22, "a");
  if (a1 + 8 == std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(a1, &v22))
  {
    v6 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "b");
    v6 = a1 + 8 == std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(a1, &__p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v22);
    if (v6)
    {
      return 8574;
    }
  }

  else if (v6)
  {
    return 8574;
  }

  v9 = *a2;
  v8 = a2[1];
  std::string::basic_string[abi:ne200100]<0>(&__p, "a");
  v10 = std::map<std::string,std::vector<float>>::at(a1, &__p);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v22, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 2);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "b");
  v11 = std::map<std::string,std::vector<float>>::at(a1, v17);
  __p = 0;
  v20 = 0;
  v21 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 2);
  v12 = v8 - v9;
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v13 = v22;
  if (v12 != v23 - v22)
  {
    v14 = __p;
LABEL_18:
    v7 = 8572;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v14 = __p;
  if (v12 != v20 - __p)
  {
    goto LABEL_18;
  }

  v15 = v12 >> 2;
  std::vector<float>::resize(a3, v15);
  MEMORY[0x1AC558720](*a2, 1, v13, 1, v14, 1, a3->__begin_, 1, v15);
  v7 = 8576;
  if (v14)
  {
LABEL_19:
    operator delete(v14);
  }

LABEL_20:
  if (v13)
  {
    operator delete(v13);
  }

  return v7;
}

void sub_1A5D97E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v28)
  {
    operator delete(v28);
  }

  if (v27)
  {
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(uint64_t a1, void *a2)
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
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::map<std::string,std::vector<float>>::at(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5D97FAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::readParameters1DLogisticMapping(FILE *a1, const char *a2, uint64_t a3)
{
  memset(&v23, 0, sizeof(v23));
  if (!a1)
  {
    return 8573;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "a");
  v20[0] = &__p;
  v6 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, v20);
  v8 = (v6 + 56);
  v7 = *(v6 + 56);
  if (v7)
  {
    *(v6 + 64) = v7;
    operator delete(v7);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  vision::mod::formCompoundID(&__p, a2, "a");
  v23 = __p;
  v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v23;
  }

  else
  {
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v11);
  std::string::basic_string[abi:ne200100]<0>(v20, "a");
  v24 = v20;
  v12 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v20, &v24);
  Float32Vector = vision::mod::loadFloat32Vector(a1, &__p.__r_.__value_.__l.__data_, (v12 + 56));
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((Float32Vector & 0x80) == 0)
    {
      goto LABEL_28;
    }

LABEL_16:
    std::string::basic_string[abi:ne200100]<0>(&__p, "b");
    v20[0] = &__p;
    v14 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, v20);
    v16 = (v14 + 56);
    v15 = *(v14 + 56);
    if (v15)
    {
      *(v14 + 64) = v15;
      operator delete(v15);
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
    }

    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    vision::mod::formCompoundID(&__p, a2, "b");
    if (v9 < 0)
    {
      operator delete(v10);
    }

    v23 = __p;
    v10 = __p.__r_.__value_.__r.__words[0];
    v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v23;
    }

    else
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v17);
    std::string::basic_string[abi:ne200100]<0>(v20, "b");
    v24 = v20;
    v18 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v20, &v24);
    Float32Vector = vision::mod::loadFloat32Vector(a1, &__p.__r_.__value_.__l.__data_, (v18 + 56));
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v9 & 0x80000000) == 0)
      {
        return Float32Vector;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((Float32Vector & 0x80) != 0)
  {
    goto LABEL_16;
  }

LABEL_28:
  if (v9 < 0)
  {
LABEL_29:
    operator delete(v10);
  }

  return Float32Vector;
}

void sub_1A5D98240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::compute1DLogisticMapping(uint64_t a1, void *a2, std::vector<unsigned int> *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v19, "a");
  if (a1 + 8 == std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(a1, v19))
  {
    v6 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "b");
    v6 = a1 + 8 == std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(a1, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
    if (v6)
    {
      return 8574;
    }
  }

  else if (v6)
  {
    return 8574;
  }

  v7 = vision::mod::compute1DAffineMapping(a1, a2, a3);
  if ((v7 & 0x80) != 0)
  {
    v9 = a3;
    begin = a3->__begin_;
    v10 = v9->__end_ - begin;
    if (v10)
    {
      v11 = v10 >> 2;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      do
      {
        v13 = *begin;
        if (*begin >= 0.0)
        {
          v14 = expf(-v13);
          v15 = 1.0;
        }

        else
        {
          v14 = expf(v13);
          v15 = v14;
        }

        *begin++ = v15 / (v14 + 1.0);
        --v12;
      }

      while (v12);
    }
  }

  return v7;
}

void sub_1A5D983F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::readParameters1DPairwiseAffineMapping(FILE *a1, const char *a2, uint64_t a3)
{
  memset(&v33, 0, sizeof(v33));
  if (!a1)
  {
    return 8573;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "a1");
  v30[0] = &__p;
  v6 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, v30);
  v8 = (v6 + 56);
  v7 = *(v6 + 56);
  if (v7)
  {
    *(v6 + 64) = v7;
    operator delete(v7);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  vision::mod::formCompoundID(&__p, a2, "a1");
  v33 = __p;
  v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v33;
  }

  else
  {
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v11);
  std::string::basic_string[abi:ne200100]<0>(v30, "a1");
  v34 = v30;
  v12 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v30, &v34);
  Float32Vector = vision::mod::loadFloat32Vector(a1, &__p.__r_.__value_.__l.__data_, (v12 + 56));
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((Float32Vector & 0x80) == 0)
    {
      goto LABEL_59;
    }
  }

  else if ((Float32Vector & 0x80) == 0)
  {
    goto LABEL_59;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "a2");
  v30[0] = &__p;
  v14 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, v30);
  v16 = (v14 + 56);
  v15 = *(v14 + 56);
  if (v15)
  {
    *(v14 + 64) = v15;
    operator delete(v15);
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  vision::mod::formCompoundID(&__p, a2, "a2");
  if (v9 < 0)
  {
    operator delete(v10);
  }

  v33 = __p;
  v10 = __p.__r_.__value_.__r.__words[0];
  v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v33;
  }

  else
  {
    v17 = __p.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v17);
  std::string::basic_string[abi:ne200100]<0>(v30, "a2");
  v34 = v30;
  v18 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v30, &v34);
  Float32Vector = vision::mod::loadFloat32Vector(a1, &__p.__r_.__value_.__l.__data_, (v18 + 56));
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((Float32Vector & 0x80) == 0)
    {
      goto LABEL_59;
    }
  }

  else if ((Float32Vector & 0x80) == 0)
  {
    goto LABEL_59;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "b1");
  v30[0] = &__p;
  v19 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, v30);
  v21 = (v19 + 56);
  v20 = *(v19 + 56);
  if (v20)
  {
    *(v19 + 64) = v20;
    operator delete(v20);
    *v21 = 0;
    v21[1] = 0;
    v21[2] = 0;
  }

  *v21 = 0;
  v21[1] = 0;
  v21[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  vision::mod::formCompoundID(&__p, a2, "b1");
  if (v9 < 0)
  {
    operator delete(v10);
  }

  v33 = __p;
  v10 = __p.__r_.__value_.__r.__words[0];
  v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v33;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v22);
  std::string::basic_string[abi:ne200100]<0>(v30, "b1");
  v34 = v30;
  v23 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v30, &v34);
  Float32Vector = vision::mod::loadFloat32Vector(a1, &__p.__r_.__value_.__l.__data_, (v23 + 56));
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((Float32Vector & 0x80) == 0)
    {
      goto LABEL_59;
    }

LABEL_46:
    std::string::basic_string[abi:ne200100]<0>(&__p, "b2");
    v30[0] = &__p;
    v24 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, &__p, v30);
    v26 = (v24 + 56);
    v25 = *(v24 + 56);
    if (v25)
    {
      *(v24 + 64) = v25;
      operator delete(v25);
      *v26 = 0;
      v26[1] = 0;
      v26[2] = 0;
    }

    *v26 = 0;
    v26[1] = 0;
    v26[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    vision::mod::formCompoundID(&__p, a2, "b2");
    if (v9 < 0)
    {
      operator delete(v10);
    }

    v33 = __p;
    v10 = __p.__r_.__value_.__r.__words[0];
    v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v33;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v27);
    std::string::basic_string[abi:ne200100]<0>(v30, "b2");
    v34 = v30;
    v28 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v30, &v34);
    Float32Vector = vision::mod::loadFloat32Vector(a1, &__p.__r_.__value_.__l.__data_, (v28 + 56));
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_59;
  }

  if ((Float32Vector & 0x80) != 0)
  {
    goto LABEL_46;
  }

LABEL_59:
  if (v9 < 0)
  {
    operator delete(v10);
  }

  return Float32Vector;
}

void sub_1A5D988A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::compute1DPairwiseAffineMapping(uint64_t a1, _DWORD *a2, std::vector<unsigned int> *a3)
{
  if (((a2[2] - *a2) & 4) != 0)
  {
    return 8572;
  }

  std::string::basic_string[abi:ne200100]<0>(&v37, "a1");
  v6 = a1 + 8;
  if (a1 + 8 == std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(a1, &v37))
  {
    v7 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v34, "b1");
    if (v6 == std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(a1, &v34))
    {
      v7 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "a2");
      if (v6 == std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(a1, &v31))
      {
        v7 = 1;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "b2");
        v7 = v6 == std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(a1, &__p);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p);
        }
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(v31);
      }
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v34);
    }
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
    if (v7)
    {
      return 8574;
    }
  }

  else if (v7)
  {
    return 8574;
  }

  v10 = *a2;
  v9 = *(a2 + 1);
  std::string::basic_string[abi:ne200100]<0>(&v34, "a1");
  v11 = std::map<std::string,std::vector<float>>::at(a1, &v34);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v37, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 2);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  std::string::basic_string[abi:ne200100]<0>(&v31, "b1");
  v12 = std::map<std::string,std::vector<float>>::at(a1, &v31);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v34, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 2);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "a2");
  v13 = std::map<std::string,std::vector<float>>::at(a1, &__p);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v31, *v13, *(v13 + 8), (*(v13 + 8) - *v13) >> 2);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v26, "b2");
  v14 = std::map<std::string,std::vector<float>>::at(a1, v26);
  __p = 0;
  v29 = 0;
  v30 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *v14, *(v14 + 8), (*(v14 + 8) - *v14) >> 2);
  v15 = ((v9 - v10) >> 2) >> 1;
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v16 = v37;
  if (v15 == (v38 - v37) >> 2 && (v17 = v34, v15 == (v35 - v34) >> 2) && (v18 = v31, v15 == (v32 - v31) >> 2) && (v19 = __p, v15 == (v29 - __p) >> 2))
  {
    std::vector<float>::resize(a3, v15);
    std::vector<float>::vector[abi:ne200100](v26, v15);
    std::vector<float>::vector[abi:ne200100](v25, v15);
    v20 = *a2;
    v21 = v26[0];
    v22 = v25[0];
    begin = a3->__begin_;
    MEMORY[0x1AC558720](v20, 2, v16, 1, v17, 1, v26[0], 1, v15);
    MEMORY[0x1AC558720](v20 + 4, 2, v18, 1, v19, 1, v22, 1, v15);
    MEMORY[0x1AC558670](v21, 1, v22, 1, begin, 1, v15);
    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    if (v26[0])
    {
      v26[1] = v26[0];
      operator delete(v26[0]);
    }

    v8 = 8576;
  }

  else
  {
    v8 = 8572;
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (v34)
  {
    operator delete(v34);
  }

  if (v16)
  {
    operator delete(v16);
  }

  return v8;
}

void sub_1A5D98D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (a32)
        {
          operator delete(a32);
        }

        v41 = *(v39 - 104);
        if (v41)
        {
          operator delete(v41);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  operator delete(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1A5D98E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x1A5D98E44);
  }

  JUMPOUT(0x1A5D98E48);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(float *a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, int *a3)
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

void sub_1A5D99408(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::pair<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_set<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1A5D9A474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::unordered_set<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<int>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table((v2 + 3));
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

uint64_t std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(uint64_t a1)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *__assign_helper_atomic_property_(uint64_t *result, char **a2)
{
  if (result != a2)
  {
    return std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(result, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  return result;
}

uint64_t *std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<vision::mod::DescriptorItemSideInfo>::__vallocate[abi:ne200100](v6, v10);
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

uint64_t *__copy_helper_atomic_property_(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
}

uint64_t *std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<vision::mod::DescriptorItemSideInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5D9A9DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5D9BFB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5D9C31C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A5D9C818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);

  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1959(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

NSError *_vnErrorForError(NSError *a1, VNRequest *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(NSError *)v3 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E69D9CC0]])
  {
    v6 = [(NSError *)v3 code];
    if (v6 == -4)
    {
      v7 = [VNError errorForUnsupportedRevision:[(VNRequest *)v4 revision] ofRequest:v4];
    }

    else if (v6 == -3)
    {
      v7 = [VNError errorForCancellationOfRequest:v4];
    }

    else
    {
      if (v6 == -2)
      {
        [VNError errorWithCode:2 message:@"VNRecognizeTextRequest error - invalid orientation"];
      }

      else
      {
        [VNError errorWithCode:11 message:@"VNRecognizeTextRequest produced an internal error" underlyingError:v3];
      }
      v7 = ;
    }
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

void sub_1A5D9D438(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A5D9D850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&a26);

  _Unwind_Resume(a1);
}

void apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(__CVBuffer **this)
{
  v2 = *this;
  if (v2)
  {
    CVPixelBufferRelease(v2);
    *this = 0;
  }
}

uint64_t __Block_byref_object_copy__2040(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

float apple::vision::libraries::autotrace::BitString::writeBit(apple::vision::libraries::autotrace::BitString *this, int a2)
{
  v4 = *(this + 7);
  v5 = *this;
  v6 = *(this + 1);
  v7 = &v6[-*this];
  if (v7 <= v4)
  {
    v8 = *(this + 2);
    if (v6 >= v8)
    {
      v10 = (v7 + 1);
      if ((v7 + 1) < 0)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v11 = v8 - v5;
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        operator new();
      }

      *v7 = 0;
      v9 = v7 + 1;
      memcpy(0, v5, v7);
      *this = 0;
      *(this + 1) = v7 + 1;
      *(this + 2) = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      *v6 = 0;
      v9 = v6 + 1;
    }

    *(this + 1) = v9;
    v5 = *this;
    v4 = *(this + 7);
  }

  v13 = 1 << *(this + 8);
  v14 = *(v5 + v4);
  v15 = v14 & ~v13;
  v16 = v14 | v13;
  if (a2 != 1)
  {
    v16 = v15;
  }

  *(v5 + v4) = v16;
  ++*(this + 6);
  v17 = vadd_s32(*(this + 32), 0x100000001);
  *(this + 4) = v17;
  if (v17.i32[0] == 8)
  {
    *(this + 28) = (*(this + 7) + 1);
  }

  return *v17.i32;
}

void sub_1A5D9EB88(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

uint64_t ctrTrackerComputation_updateHistory(CVPixelBufferRef pixelBuffer, float **a2, char a3, float *a4, float64x2_t a5, float64x2_t a6)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    return 6784;
  }

  v8 = vsubq_f64(a6, a5);
  v9 = vaddq_f64(a6, a5);
  __asm { FMOV            V1.2D, #0.5 }

  v15 = vmulq_f64(v9, _Q1);
  v16 = vmulq_f64(vmulq_f64(v8, vdupq_n_s64(0x40047AE140000000uLL)), _Q1);
  v48 = vsubq_f64(v15, v16);
  v49 = v48;
  v50 = v48.f64[0];
  v47 = vaddq_f64(v15, v16);
  v51 = vextq_s8(v47, v47, 8uLL);
  v52 = v51;
  v53 = v48.f64[1];
  v17 = a2[2];
  result = tplTrackerResampler_setImage(a2[3], pixelBuffer, &v49);
  if (result == 128)
  {
    v19 = vsubq_f64(v47, v48);
    v20 = v19.f64[0] / 127.0;
    *v19.f64 = v19.f64[1] / 127.0;
    v21 = v20;
    tplTrackerResampler_resample(a2[3], v49.f64, 128, 128, a2[2], a2[2] + 0x4000, a2[2] + 0x8000, v17 + 62542, *v19.f64, v21);
    if (v17[62542] > 0 || v17[62543] > 0 || v17[62544] < 127 || v17[62545] <= 126)
    {
      ctrTrackerComputation_repairNonValidRegion(a2[2], (a2[2] + 4096), (a2[2] + 0x2000), v17 + 62542);
    }

    ctrTrackerComputation_YCbCr2nRGB(a2[2], (a2[2] + 4096), (a2[2] + 0x2000), (a2[2] + 12288), (a2[2] + 0x4000), (a2[2] + 20480));
    ctrTrackerComputation_normedGradient((a2[2] + 12288), (a2[2] + 0x4000), (a2[2] + 20480), (a2[2] + 24576));
    v22 = a2[2];
    result = ctrTrackerAlgorithm_computeFFTx((v22 + 12288), (v22 + 0x4000), (v22 + 20480), (v22 + 24576), *(a2[4] + 8203), v22 + 14357, (v22 + 61482), *(v22 + 31275));
    if (result == 128)
    {
      v23 = a2[2];
      result = ctrTrackerAlgorithm_GaussianCorrelation((v23 + 61482), (v23 + 61482), (v23 + 61498), (v23 + 61506), v23 + 14357, v23 + 180392, *(v23 + 31275));
      if (result == 128)
      {
        result = ctrTrackerAlgorithm_packedDivision(a2[2] + 30749, a2[4] + 8204, a2[2] + 30751);
        if (result == 128)
        {
          v24 = 0;
          v25 = a2[2];
          v26 = *a2;
          v27 = *a4 * 0.08;
          v28 = 1.0 - v27;
          v29 = *(*a2 + 264);
          v30 = *(*a2 + 265);
          v31 = *(v25 + 30751);
          v32 = *(v25 + 30752);
          do
          {
            *(v29 + v24) = (*(v31 + v24) * v27) + (v28 * *(v29 + v24));
            *(v30 + v24) = (*(v32 + v24) * v27) + (v28 * *(v30 + v24));
            v24 += 4;
          }

          while (v24 != 0x8000);
          v33 = 0;
          v34 = v26 + 512;
          do
          {
            v35 = 0;
            v36 = &v25[4 * v33 + 61482];
            v37 = &v34[2 * v33];
            v38 = *a4 * 0.08;
            v39 = 1.0 - v38;
            v40 = *v37;
            v41 = v37[1];
            v42 = *v36;
            v43 = *(v36 + 1);
            do
            {
              *(v40 + v35) = (*(v42 + v35) * v38) + (v39 * *(v40 + v35));
              *(v41 + v35) = (*(v43 + v35) * v38) + (v39 * *(v41 + v35));
              v35 += 4;
            }

            while (v35 != 0x8000);
            ++v33;
          }

          while (v33 != 4);
          ctrTrackerComputation_colorHistogram((v25 + 12288), (v25 + 0x4000), (v25 + 20480), v25 + 248120, v25 + 249144);
          v44 = *a2;
          v45 = a2[2] + 62030;
          v46 = 256;
          result = 6784;
          do
          {
            *v44 = (*v45 * 0.05) + (*v44 * 0.95);
            v44[256] = (v45[256] * 0.05) + (v44[256] * 0.95);
            ++v45;
            ++v44;
            --v46;
          }

          while (v46);
        }
      }
    }
  }

  return result;
}

uint64_t FastRegistration_allocateSignatureBuffersForImageDimension(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = a2;
    *(a1 + 8) = a3;
    v4 = (4 * a2 + 31) & 0xFFFFFFE0;
    v5 = (4 * a3 + 31) & 0xFFFFFFE0;
    v6 = (4 * a2 + 35) & 0xFFFFFFE0;
    v7 = (4 * a3 + 35) & 0xFFFFFFE0;
    v8 = malloc_type_calloc(1uLL, v5 + v4 + 2 * (v7 + v6), 0x100004077774924uLL);
    if (v8)
    {
      v9 = &v8[v4];
      *a1 = v9;
      v10 = &v9[v5];
      v11 = &v10[v7];
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      *(a1 + 32) = v8;
      v12 = &v11[v7];
      *(a1 + 48) = v12;
      *(a1 + 56) = &v12[v6];
      *(a1 + 64) = v8;
      v13 = &CVML_status_ok;
    }

    else
    {
      v13 = &CVML_status_memoryAllocationError;
    }
  }

  else
  {
    v13 = &CVML_status_invalidParameter;
  }

  return (*v13 + 128) | 0x1200;
}

void sub_1A5D9FCC4(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2174(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5D9FF00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v14 = v13;

  _Block_object_dispose(va, 8);
  objc_begin_catch(a1);
  JUMPOUT(0x1A5D9FED0);
}

void sub_1A5DA00F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_1A5DA0A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  apple::vision::fgbg::ConnectedComponentResult::~ConnectedComponentResult(v12);

  _Unwind_Resume(a1);
}

void apple::vision::fgbg::ConnectedComponentResult::~ConnectedComponentResult(apple::vision::fgbg::ConnectedComponentResult *this)
{
  v6 = (this + 80);
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    MEMORY[0x1AC556AE0](v5, 0x1000C8000313F17);
  }
}

void sub_1A5DA0CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15)
{
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a15);

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<CGPoint>>::push_back[abi:ne200100](const void **a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CGPoint>>>(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>((24 * v7), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = std::__split_buffer<std::vector<long long>>::~__split_buffer(&v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    result = std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    v6 = v4 + 3;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_1A5DA0E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<long long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<CGPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1A5DA1408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  apple::vision::fgbg::ConnectedComponentResult::~ConnectedComponentResult(v11);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<CGPoint>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<long long>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void ___ZL33_categoryCocoNameForCategoryIndexi_block_invoke()
{
  v0 = _categoryCocoNameForCategoryIndex(int)::categoryNames;
  _categoryCocoNameForCategoryIndex(int)::categoryNames = &unk_1F19C1F18;
}

void ___ZL36_categoryMiyoshiNameForCategoryIndexi_block_invoke()
{
  v0 = _categoryMiyoshiNameForCategoryIndex(int)::categoryNames;
  _categoryMiyoshiNameForCategoryIndex(int)::categoryNames = &unk_1F19C1F00;
}

void sub_1A5DA2F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  apple::vision::fgbg::ConnectedComponentResult::~ConnectedComponentResult(va);
  _Unwind_Resume(a1);
}

void sub_1A5DA3014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  apple::vision::fgbg::ConnectedComponentResult::~ConnectedComponentResult(v11);
  _Unwind_Resume(a1);
}

void sub_1A5DA347C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t vision::mod::image_quality::BlurMeasure::computeEdgeBasedBlurScoreForPlanar8Image(vision::mod::image_quality::BlurMeasure *this, vImage_Buffer *a2, float *a3, float a4, int *a5, int *a6, void **a7)
{
  v12 = *this;
  v13 = *(this + 4);
  v14 = *(this + 2);
  v15 = *(this + 6);
  *&v25[4] = v12;
  v24 = v14;
  *v25 = v13;
  LODWORD(a2->data) = 1065353216;
  if (a6)
  {
    v20 = *a6;
    v21 = 0;
    v22 = 0;

    v19 = v14;
    v18 = v13;
    return vision::mod::image_quality::BlurMeasure::computeEdgeBasedBlurForImageRegionUsingBlurSignature(v20, a2, *&v21, a3, a4, a5, v17);
  }

  else
  {
    if ((result & 0x80) != 0)
    {
      return 2688;
    }
  }

  return result;
}

uint64_t anonymous namespace::applyInsetFactorToData(_anonymous_namespace_ *this, unsigned __int8 **a2, int *a3, int *a4, int a5, float a6)
{
  v6 = *a3;
  if (a6 > 0.0)
  {
    v7 = (*a2 * a6);
    v8 = v6 * a6;
    *a2 -= 2 * v7;
    v6 = *a3 - 2 * v8;
    *a3 = v6;
    *this += v7 * a5 + v8 * a4;
  }

  if (*a2 >= 32 && v6 > 31)
  {
    return 2688;
  }

  syslog(5, "Both width and height have to be >= 32 after applying the inset factor. Given w/h: %d/%d", *a2, v6);
  return 2684;
}

char *anonymous namespace::computeBlockwiseBlurStatsOnData(char *result, int a2, int a3, int a4, float *a5, int *a6, int *a7, void *a8)
{
  v13 = a2;
  v158 = result;
  v176[124] = *MEMORY[0x1E69E9840];
  v14 = a2 / 32;
  v15 = (a3 / 32);
  v166 = (a2 / 32);
  if (a8)
  {
    v17 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
    *v17 = v13;
    v17[1] = a3;
    v17[2] = v14;
    v17[3] = v15;
    result = malloc_type_calloc(v15 * v14, 0xCuLL, 0x10000403E1C8BA9uLL);
    *(v17 + 2) = result;
    v18 = v17;
    *a8 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (a3 < 32)
  {
    goto LABEL_24;
  }

  v149 = a7;
  v150 = a5;
  v19 = 0;
  v20 = 0;
  v159 = 32 * a4;
  v21 = 8 * a4;
  v156 = &v158[6 * a4];
  v157 = &v158[7 * a4];
  v154 = &v158[4 * a4];
  v155 = &v158[5 * a4];
  v22 = 0;
  v152 = &v158[2 * a4];
  v153 = &v158[3 * a4];
  v23 = 0;
  v151 = &v158[a4];
  v24 = v166;
  v161 = v13;
  v160 = v15;
  v165 = v18;
  do
  {
    v163 = v23;
    v162 = v22;
    if (v13 >= 32)
    {
      v25 = 0;
      v26 = 0;
      v27 = &v157[v23];
      v28 = &v156[v23];
      v29 = &v155[v23];
      v30 = &v154[v23];
      v31 = &v153[v23];
      v32 = &v152[v23];
      v33 = &v151[v23];
      v164 = v24 * v22;
      v34 = &v158[v23];
      do
      {
        v167 = v26;
        v168 = v25;
        v169 = v19;
        v170 = v20;
        v35 = 0;
        v172 = 0;
        v171 = 0;
        v36 = v173;
        v37 = v25;
        do
        {
          v38 = 1;
          v39 = v37;
          v40 = v36;
          do
          {
            v41 = *&v34[v39];
            v42 = *&v33[v39];
            v43 = vaddl_u8(*v42.i8, *v41.i8);
            v44 = vaddl_high_u8(v42, v41);
            v45 = *&v32[v39];
            v46 = *&v31[v39];
            v47 = vaddl_u8(*v46.i8, *v45.i8);
            v48 = vaddl_high_u8(v46, v45);
            v49 = *&v30[v39];
            v50 = *&v29[v39];
            v51 = vaddl_u8(*v50.i8, *v49.i8);
            v52 = vaddl_high_u8(v50, v49);
            v53 = *&v28[v39];
            v54 = *&v27[v39];
            v55 = vaddl_u8(*v54.i8, *v53.i8);
            v56 = vaddl_high_u8(v54, v53);
            v57 = vsubl_u8(*v41.i8, *v42.i8);
            v58 = vsubl_high_u8(v41, v42);
            v59 = vsubl_u8(*v45.i8, *v46.i8);
            v60 = vsubl_high_u8(v45, v46);
            v61 = vsubl_u8(*v49.i8, *v50.i8);
            v62 = vsubl_high_u8(v49, v50);
            v63 = vsubl_u8(*v53.i8, *v54.i8);
            v64 = vsubl_high_u8(v53, v54);
            v65 = vaddq_s16(v47, v43);
            v66 = vaddq_s16(v48, v44);
            v67 = vaddq_s16(v55, v51);
            v68 = vaddq_s16(v56, v52);
            v69 = vsubq_s16(v43, v47);
            v70 = vsubq_s16(v44, v48);
            v71 = vsubq_s16(v51, v55);
            v72 = vsubq_s16(v52, v56);
            v73 = vaddq_s16(v67, v65);
            v74 = vaddq_s16(v68, v66);
            v75 = vsubq_s16(v65, v67);
            v76 = vsubq_s16(v66, v68);
            v77 = vuzp1q_s16(v73, v75);
            v78 = vuzp2q_s16(v73, v75);
            v79 = vuzp1q_s16(v69, v71);
            v80 = vuzp2q_s16(v69, v71);
            v81 = vpaddq_s16(v73, v75);
            v82 = vpaddq_s16(v69, v71);
            v83 = vpaddq_s16(v57, v59);
            v84 = vpaddq_s16(v61, v63);
            v85 = vsubq_s16(v77, v78);
            v86 = vsubq_s16(v79, v80);
            v87 = vuzp1q_s16(v81, v82);
            v88 = vuzp2q_s16(v81, v82);
            v89 = vuzp1q_s16(v83, v84);
            v90 = vuzp2q_s16(v83, v84);
            v91 = vpaddq_s16(v81, v82);
            v92 = vpaddq_s16(v83, v84);
            v93 = vsubq_s16(v87, v88);
            v94 = vsubq_s16(v89, v90);
            v95 = vuzp1q_s16(v91, v92);
            v96 = vuzp2q_s16(v91, v92);
            v97 = vpaddq_s16(v91, v92);
            v98 = vsubq_s16(v95, v96);
            v99 = vzip1q_s16(v97, v98);
            v100 = vzip2q_s16(v97, v98);
            v101 = vzip1q_s32(v99, v93);
            v102 = vzip2q_s32(v99, v93);
            v103 = vzip1q_s32(v100, v94);
            v104 = vzip2q_s32(v100, v94);
            v100.i64[0] = vextq_s8(v101, v101, 8uLL).u64[0];
            v93.i64[0] = v101.i64[0];
            v93.i64[1] = v85.i64[0];
            v100.i64[1] = vextq_s8(v85, v85, 8uLL).u64[0];
            v101.i64[0] = vextq_s8(v102, v102, 8uLL).u64[0];
            v85.i64[0] = v102.i64[0];
            v85.i64[1] = v86.i64[0];
            v105 = vuzp1q_s16(v74, v76);
            v106 = vuzp2q_s16(v74, v76);
            v107 = vuzp1q_s16(v70, v72);
            v108 = vuzp2q_s16(v70, v72);
            v109 = vpaddq_s16(v74, v76);
            v110 = vpaddq_s16(v70, v72);
            v111 = vpaddq_s16(v58, v60);
            v112 = vpaddq_s16(v62, v64);
            v113 = vsubq_s16(v105, v106);
            v114 = vsubq_s16(v107, v108);
            v115 = vuzp1q_s16(v109, v110);
            v116 = vuzp2q_s16(v109, v110);
            v117 = vuzp1q_s16(v111, v112);
            v118 = vuzp2q_s16(v111, v112);
            v119 = vpaddq_s16(v109, v110);
            v120 = vpaddq_s16(v111, v112);
            v121 = vsubq_s16(v115, v116);
            v122 = vuzp1q_s16(v119, v120);
            v123 = vuzp2q_s16(v119, v120);
            v124 = vpaddq_s16(v119, v120);
            v125 = vsubq_s16(v122, v123);
            v126 = vzip1q_s16(v124, v125);
            v127 = vzip1q_s32(v126, v121);
            v122.i64[0] = vextq_s8(v127, v127, 8uLL).u64[0];
            v128.i64[0] = v127.i64[0];
            v128.i64[1] = v113.i64[0];
            v129 = vsubq_s16(v117, v118);
            v127.i64[0] = vextq_s8(v103, v103, 8uLL).u64[0];
            v130 = vzip2q_s16(v124, v125);
            v124.i64[0] = vextq_s8(v104, v104, 8uLL).u64[0];
            v131 = vzip2q_s32(v126, v121);
            v132 = vzip1q_s32(v130, v129);
            v133 = vzip2q_s32(v130, v129);
            v130.i64[0] = vextq_s8(v131, v131, 8uLL).u64[0];
            *v40 = v93;
            v40[1] = v128;
            v93.i64[0] = vextq_s8(v132, v132, 8uLL).u64[0];
            v122.i64[1] = vextq_s8(v113, v113, 8uLL).u64[0];
            v113.i64[0] = vextq_s8(v133, v133, 8uLL).u64[0];
            v40[4] = v100;
            v40[5] = v122;
            v131.i64[1] = v114.i64[0];
            v40[8] = v85;
            v40[9] = v131;
            v101.i64[1] = vextq_s8(v86, v86, 8uLL).u64[0];
            v130.i64[1] = vextq_s8(v114, v114, 8uLL).u64[0];
            v40[12] = v101;
            v40[13] = v130;
            v134 = vsubq_s16(vuzp1q_s16(v57, v59), vuzp2q_s16(v57, v59));
            v103.i64[1] = v134.i64[0];
            v127.i64[1] = vextq_s8(v134, v134, 8uLL).u64[0];
            v135 = vsubq_s16(vuzp1q_s16(v58, v60), vuzp2q_s16(v58, v60));
            v132.i64[1] = v135.i64[0];
            v40[16] = v103;
            v40[17] = v132;
            v93.i64[1] = vextq_s8(v135, v135, 8uLL).u64[0];
            v40[20] = v127;
            v40[21] = v93;
            v136 = vsubq_s16(vuzp1q_s16(v61, v63), vuzp2q_s16(v61, v63));
            v104.i64[1] = v136.i64[0];
            v137 = vsubq_s16(vuzp1q_s16(v62, v64), vuzp2q_s16(v62, v64));
            v133.i64[1] = v137.i64[0];
            v40[24] = v104;
            v40[25] = v133;
            v124.i64[1] = vextq_s8(v136, v136, 8uLL).u64[0];
            v113.i64[1] = vextq_s8(v137, v137, 8uLL).u64[0];
            v138 = v38;
            v40[28] = v124;
            v40[29] = v113;
            v40 += 2;
            v39 += 16;
            v38 = 0;
          }

          while ((v138 & 1) != 0);
          v36 += 32;
          v37 += v21;
          v139 = v35 >= 0x18;
          v35 += 8;
        }

        while (!v139);
        if (v165)
        {
          v146 = v171;
          v147 = *(v165 + 2) + 12 * v167 + 12 * v164;
          *(v147 + 8) = v172;
          *v147 = v146;
        }

        v20 = v171 + v170;
        v19 = HIDWORD(v171) + v169;
        v26 = v167 + 1;
        v25 = v168 + 32;
        v24 = v166;
      }

      while (v167 + 1 != v166);
    }

    v22 = v162 + 1;
    v23 = v163 + v159;
    v13 = v161;
  }

  while (v162 + 1 != v160);
  a7 = v149;
  a5 = v150;
  if (v20 < 1)
  {
LABEL_24:
    if (a6)
    {
      *a6 = 0;
    }

    if (a7)
    {
      *a7 = 0;
    }

    v148 = 1.0;
    if (a5)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (a6)
    {
      *a6 = v19;
    }

    if (v149)
    {
      *v149 = v20;
    }

    if (v150)
    {
      v148 = v19 / v20;
LABEL_29:
      *a5 = v148;
    }
  }

  return result;
}

uint64_t vision::mod::image_quality::BlurMeasure::computeEdgeBasedBlurForImageRegionUsingBlurSignature(vision::mod::image_quality::BlurMeasure *this, float *a2, _Geometry2D_rect2D_ a3, float *a4, float a5, int *a6, int *a7)
{
  if (a5 > 0.0)
  {
    v7 = (a3.size.width * a5);
    v8 = a3.size.height * a5;
    a3.origin.x = a3.origin.x + v7;
    a3.origin.y = a3.origin.y + v8;
    a3.size.width = a3.size.width - (2 * v7);
    a3.size.height = a3.size.height - (2 * v8);
  }

  if (a3.size.width < 32.0 || a3.size.height < 32.0)
  {
    syslog(5, "Both width and height have to be >= 32 after applying the inset factor. Given w/h: %d/%d", a3.size.width, a3.size.height);
    return 2684;
  }

  else
  {
    x = a3.origin.x;
    y = a3.origin.y;
    v13 = *(this + 2);
    v14 = 32 * v13 - 1;
    if (v14 >= (a3.size.width + a3.origin.x))
    {
      v14 = (a3.size.width + a3.origin.x);
    }

    if (32 * *(this + 3) - 1 >= (a3.size.height + a3.origin.y))
    {
      v15 = (a3.size.height + a3.origin.y);
    }

    else
    {
      v15 = 32 * *(this + 3) - 1;
    }

    if (x >= 0)
    {
      v16 = a3.origin.x;
    }

    else
    {
      v16 = x + 31;
    }

    v17 = y / 32;
    if (v14 >= 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = v14 + 31;
    }

    if (v15 >= 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = v15 + 31;
    }

    v20 = 0.0;
    v21 = 0.0;
    if (v17 <= v19 >> 5)
    {
      v22 = v16 >> 5;
      v23 = 1.0 - vcvtd_n_f64_s32(x - (v16 & 0xFFFFFFE0), 5uLL);
      v24 = v18 >> 5;
      v25 = vcvtd_n_f64_s32(v14 - (v18 & 0xFFFFFFE0) + 1, 5uLL);
      v26 = vcvtd_n_f64_s32(v15 - (v19 & 0xFFFFFFE0) + 1, 5uLL);
      v27 = (y % 32) * -0.03125 + 1.0;
      v28 = v16 >> 5;
      v29 = v17;
      if (v28 <= v18 >> 5)
      {
        v28 = v24;
      }

      v30 = v28 - v22 + 1;
      v31 = 12 * v13;
      v32 = v31 * v17 + 12 * v22 + 4;
      v21 = 0.0;
      v20 = 0.0;
      do
      {
        if (v29 == v19 >> 5)
        {
          v27 = v26;
        }

        if (v22 <= v24)
        {
          v33 = (*(this + 2) + v32);
          v34 = v24 - v22;
          v35 = v30;
          v36 = v23;
          do
          {
            if (!v34)
            {
              v36 = v25;
            }

            v21 = v21 + v36 * *v33 * v27;
            v20 = v20 + v36 * *(v33 - 1) * v27;
            --v34;
            v33 += 3;
            v36 = 1.0;
            --v35;
          }

          while (v35);
        }

        ++v29;
        v32 += v31;
        v27 = 1.0;
      }

      while (v29 != (v19 >> 5) + 1);
    }

    v37 = round(v21);
    if (a4)
    {
      *a4 = v37;
    }

    v38 = round(v20);
    if (a6)
    {
      *a6 = v38;
    }

    v39 = 1.0;
    if (v38 > 0.0)
    {
      v39 = v37 / v38;
    }

    *a2 = v39;
    return 2688;
  }
}

uint64_t anonymous namespace::updateBlurStatsOne16x16(_anonymous_namespace_ *a1, _DWORD *a2, int a3, int a4)
{
  v15 = v6 > 1225 || v9 > 1225 || result > 1225;
  if (a2)
  {
    if (v15 && v6 < v9 && v9 != result)
    {
      ++*a2;
      if (v6 < 1225 || result <= 1224)
      {
        ++a2[1];
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::computeEdgeVal(_anonymous_namespace_ *this, __int16 *a2, int a3, int a4)
{
  if (v7 > v6)
  {
    v6 = v7;
  }

  if (v8 > v6)
  {
    v6 = v8;
  }

  if (result <= v6)
  {
    return v6;
  }

  else
  {
    return result;
  }
}

uint64_t anonymous namespace::computeEdgeValOne8x8(_anonymous_namespace_ *this, __int16 *a2)
{
  v2 = 0;
  v3 = this + 2 * a2;
  v4 = 32 * a2;
  v5 = 0.0;
  do
  {
    v6 = a2;
    v7 = this;
    v8 = v3;
    do
    {
      v9 = *(v7 + v4);
      v10 = v8[v4];
      v11 = v9 * v9 + v10 * v10 + *v8 * *v8;
      if (v5 < v11)
      {
        v5 = v11;
      }

      ++v8;
      v7 = (v7 + 2);
      --v6;
    }

    while (v6);
    ++v2;
    v3 += 64;
    this = (this + 64);
  }

  while (v2 != a2);
  return v5;
}

uint64_t anonymous namespace::computeBlurScoreOnImageSubblocks(_anonymous_namespace_ *this, unsigned __int8 *a2, int a3, int *a4, int a5, int a6, float a7, vImage_Buffer *a8, float *a9, int *a10, int *a11)
{
  v14 = a4;
  v49 = *MEMORY[0x1E69E9840];
  *&v47[4] = this;
  v46 = a3;
  *v47 = a2;
  LODWORD(a8->data) = 1065353216;
  if ((result & 0x80) != 0)
  {
    v18 = *v47;
    if (*v47 >= a6)
    {
      v19 = a6;
    }

    else
    {
      v19 = *v47;
    }

    if (v19 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 + 31;
    }

    if (v46 >= a6)
    {
      v21 = a6;
    }

    else
    {
      v21 = v46;
    }

    v43 = v48;
    v22 = vdupq_n_s64(0x20uLL);
    v44 = v22;
    if (a5 == 1)
    {
      v23 = v14;
    }

    else
    {
      v23 = 32;
    }

    v45 = v23;
    v24 = 1.0;
    if (v21 < 32)
    {
      result = 2688;
LABEL_33:
      *&a8->data = v24;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = v20 >> 5;
      v29 = *v47 / v28;
      v40 = v21 >> 5;
      v39 = v46 / v40 * v14;
      if (v28 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v28;
      }

      result = 2688;
      v41 = *v47;
      while (v18 < 32)
      {
LABEL_29:
        ++v25;
        v18 = v41;
        if (v25 == v40)
        {
          if (v26 >= 1)
          {
            v24 = v27 / v26;
          }

          goto LABEL_33;
        }
      }

      v31 = 0;
      v32 = *&v47[4] + (v39 * v25);
      while (1)
      {
        if (a5 == 1)
        {
          v43 = (v32 + v31 * v29);
        }

        else
        {
          v33 = 0;
          v34 = v32 + v29 * a5 * v31;
          v35 = v48;
          do
          {
            for (i = 0; i != 128; i += 4)
            {
              v22.i8[0] = *(v34 + i);
              LOBYTE(v17) = *(v34 + i + 1);
              *&v37 = *&v17 * 0.7154;
              v38 = *&v37 + v22.u64[0] * 0.2125;
              LOBYTE(v37) = *(v34 + i + 2);
              v17 = v37;
              *v22.i64 = v38 + v17 * 0.0721;
              *v35++ = *v22.i64;
            }

            v34 += v14;
            ++v33;
          }

          while (v33 != 32);
        }

        v42 = 0;
        result = vision::mod::image_quality::BlurMeasure::computeEdgeBasedBlurScoreForPlanar8Image(&v43, a8, &v42 + 1, 0.0, &v42, 0, v16);
        if ((result & 0x80) == 0)
        {
          break;
        }

        v26 += v42;
        v27 += HIDWORD(v42);
        if (++v31 == v30)
        {
          goto LABEL_29;
        }
      }
    }
  }

  return result;
}

void vision::mod::TorsoprintGenerator::~TorsoprintGenerator(vision::mod::TorsoprintGenerator *this)
{
  vision::mod::TorsoprintGenerator::~TorsoprintGenerator(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1971A70;
  if (*(this + 52) == 1)
  {
    espresso_plan_destroy();
    *(this + 8) = 0;
    espresso_context_destroy();
    *(this + 7) = 0;
  }

  std::unique_ptr<vision::mod::ImageProcessing_Preprocessor>::reset[abi:ne200100](this + 78, 0);
  v2 = *(this + 74);
  if (v2)
  {
    *(this + 75) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1A5DA5900(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageDescriptorAugmenterFlip::augmentImage(uint64_t a1, char **a2, int a3, const vImage_Buffer ***a4)
{
  if (*a2)
  {
    v4 = a2[2] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || a2[1] == 0 || a2[3] < 2)
  {
    return 3708;
  }

  v10 = *a4;
  v11 = a4[1];
  if (*(a1 + 8) != (v11 - *a4) >> 3)
  {
    return 3700;
  }

  if (a3)
  {
    v14 = 1;
  }

  else if ((a3 & 0x3E) != 0)
  {
    v14 = 4;
  }

  else
  {
    if ((a3 & 0x3C0) == 0)
    {
      syslog(5, "ERROR: Invalid image type");
      return 4211;
    }

    v14 = 16;
  }

  if (v10 == v11)
  {
LABEL_22:
    result = ImageProcessing_copyVImageBufferData(a2, v14, *v10);
    if ((result & 0x80) == 0)
    {
      return result;
    }

    v15 = *(a1 + 48);
    if ((~v15 & 3) != 0)
    {
      if ((v15 & 1) == 0)
      {
        if ((v15 & 2) != 0)
        {
          v18 = **a4;
          v19 = (*a4)[1];

          return vision::mod::ImageDescriptorAugmenterFlip::flipLR(v18, a3, v19);
        }

        return result;
      }

      v16 = **a4;
      v17 = (*a4)[1];
    }

    else
    {
      result = vision::mod::ImageDescriptorAugmenterFlip::flipLR(**a4, a3, (*a4)[1]);
      if ((result & 0x80) == 0)
      {
        return result;
      }

      result = vision::mod::ImageDescriptorAugmenterFlip::flipUD(**a4, a3, (*a4)[2]);
      if ((result & 0x80) == 0)
      {
        return result;
      }

      v16 = (*a4)[1];
      v17 = (*a4)[3];
    }

    return vision::mod::ImageDescriptorAugmenterFlip::flipUD(v16, a3, v17);
  }

  while (1)
  {
    result = ImageProcessing_reallocVImageBuffer(*v10, a2[2], a2[1], v14);
    if ((result & 0x80) == 0)
    {
      return result;
    }

    if (++v10 == v11)
    {
      v10 = *a4;
      goto LABEL_22;
    }
  }
}

uint64_t vision::mod::ImageDescriptorAugmenterFlip::flipLR(const vImage_Buffer *a1, int a2, vImage_Buffer *dest)
{
  if (a2 == 4 || a2 == 2)
  {
    v3 = vImageHorizontalReflect_ARGB8888(a1, dest, 0);
  }

  else
  {
    if (a2 != 1)
    {
      return 3711;
    }

    v3 = vImageHorizontalReflect_Planar8(a1, dest, 0);
  }

  if (v3)
  {
    return 3706;
  }

  else
  {
    return 3712;
  }
}

uint64_t vision::mod::ImageDescriptorAugmenterFlip::flipUD(const vImage_Buffer *a1, int a2, vImage_Buffer *dest)
{
  if (a2 == 4 || a2 == 2)
  {
    v3 = vImageVerticalReflect_ARGB8888(a1, dest, 0);
  }

  else
  {
    if (a2 != 1)
    {
      return 3711;
    }

    v3 = vImageVerticalReflect_Planar8(a1, dest, 0);
  }

  if (v3)
  {
    return 3706;
  }

  else
  {
    return 3712;
  }
}

void vision::mod::ImageDescriptorAugmenterAbstract::~ImageDescriptorAugmenterAbstract(vision::mod::ImageDescriptorAugmenterAbstract *this)
{
  *this = &unk_1F1975F28;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (!((v3 - v2) % *(this + 1)))
  {
    if (v2 != v3)
    {
      do
      {
        v4 = *v2;
        if (*v2)
        {
          free(*v4);
          *v4 = 0u;
          *(v4 + 1) = 0u;
          v5 = *v2;
        }

        else
        {
          v5 = 0;
        }

        free(v5);
        *v2++ = 0;
      }

      while (v2 != v3);
      v2 = *(this + 2);
    }

    *(this + 3) = v2;
    *(this + 5) = 0;
  }

  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

uint64_t vision::mod::ImageDescriptorAugmenterFlip::combine(vision::mod::ImageDescriptorAugmenterFlip *this, const vision::mod::ImageDescriptorBufferAbstract *lpsrc, vision::mod::ImageDescriptorBufferAbstract *a3)
{
  v8 = *(lpsrc + 9);
  v9 = *(this + 1);
  if (v8 != v8 / v9 * v9)
  {
    return 3700;
  }

  v10 = v7;
  vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(a3, v8 / v9, 0);
  v11 = 3708;
  if (v6 && v10)
  {
    if (*(v10 + 9))
    {
      v12 = 0;
      v11 = 3712;
      do
      {
        DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v10, v12);
        v14 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v6, *(this + 1) * v12);
        v15 = (*(*v10 + 104))(v10);
        memcpy(DataForKthDescriptor, v14, v15);
        v16 = *(this + 1);
        if (v16 >= 2)
        {
          for (i = 1; i < v16; ++i)
          {
            v18 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v6, i + v12 * v16);
            MEMORY[0x1AC558670](v18, 1, DataForKthDescriptor, 1, DataForKthDescriptor, 1, *(v10 + 12));
            v16 = *(this + 1);
          }
        }

        __B = v16;
        vDSP_vsdiv(DataForKthDescriptor, 1, &__B, DataForKthDescriptor, 1, *(v10 + 12));
        ++v12;
      }

      while (v12 < *(v10 + 9));
    }

    else
    {
      return 3712;
    }
  }

  return v11;
}

void vision::mod::ImageDescriptorAugmenterFlip::~ImageDescriptorAugmenterFlip(vision::mod::ImageDescriptorAugmenterFlip *this)
{
  vision::mod::ImageDescriptorAugmenterAbstract::~ImageDescriptorAugmenterAbstract(this);

  JUMPOUT(0x1AC556B00);
}

void std::__shared_ptr_emplace<vision::mod::ImageDescriptorAugmenterFlip>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1975F58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::ImageDescriptorAugmenterNoOp::combine(vision::mod::ImageDescriptorAugmenterNoOp *this, const vision::mod::ImageDescriptorBufferAbstract *lpsrc, vision::mod::ImageDescriptorBufferAbstract *a3)
{
  v8 = *(lpsrc + 9);
  v9 = *(this + 1);
  if (v8 != v8 / v9 * v9)
  {
    return 3700;
  }

  v10 = v7;
  vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(a3, v8 / v9, 0);
  v11 = 3708;
  if (v6 && v10)
  {
    if (*(v10 + 9))
    {
      v12 = 0;
      v11 = 3712;
      do
      {
        DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v10, v12);
        v14 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v6, *(this + 1) * v12);
        v15 = (*(*v10 + 104))(v10);
        memcpy(DataForKthDescriptor, v14, v15);
        ++v12;
      }

      while (*(v10 + 9) > v12);
    }

    else
    {
      return 3712;
    }
  }

  return v11;
}

uint64_t vision::mod::ImageDescriptorAugmenterNoOp::augmentImage(uint64_t a1, char **a2, __int16 a3, uint64_t **a4)
{
  if (*a2)
  {
    v4 = a2[2] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || a2[1] == 0 || a2[3] < 2)
  {
    return 3708;
  }

  v9 = *a4;
  v10 = a4[1];
  if (*(a1 + 8) != v10 - *a4)
  {
    return 3700;
  }

  if (a3)
  {
    v12 = 1;
  }

  else if ((a3 & 0x3E) != 0)
  {
    v12 = 4;
  }

  else
  {
    if ((a3 & 0x3C0) == 0)
    {
      syslog(5, "ERROR: Invalid image type");
      return 4211;
    }

    v12 = 16;
  }

  if (v9 == v10)
  {
LABEL_23:
    v13 = *v9;

    return ImageProcessing_copyVImageBufferData(a2, v12, v13);
  }

  else
  {
    while (1)
    {
      result = ImageProcessing_reallocVImageBuffer(*v9, a2[2], a2[1], v12);
      if ((result & 0x80) == 0)
      {
        break;
      }

      if (++v9 == v10)
      {
        v9 = *a4;
        goto LABEL_23;
      }
    }
  }

  return result;
}

void vision::mod::ImageDescriptorAugmenterNoOp::~ImageDescriptorAugmenterNoOp(vision::mod::ImageDescriptorAugmenterNoOp *this)
{
  vision::mod::ImageDescriptorAugmenterAbstract::~ImageDescriptorAugmenterAbstract(this);

  JUMPOUT(0x1AC556B00);
}

void std::__shared_ptr_emplace<vision::mod::ImageDescriptorAugmenterNoOp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1975E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void vision::mod::TorsoprintGeneratorConcrete::~TorsoprintGeneratorConcrete(vision::mod::TorsoprintGeneratorConcrete *this)
{
  vision::mod::TorsoprintGenerator::~TorsoprintGenerator(this);

  JUMPOUT(0x1AC556B00);
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

void sub_1A5DA648C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<vision::mod::TorsoprintGeneratorConcrete>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1971AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void std::__shared_ptr_emplace<vision::mod::ImageDescriptorBufferFloat32>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1976458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::ImageDescriptorAugmenterAbstract::augment(void *a1, _OWORD *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<vImage_Buffer>::push_back[abi:ne200100](&v8, a2);
  v5 = v8;
  v6 = vision::mod::ImageDescriptorAugmenterAbstract::augment(a1, v8, v9, a3);
  if (v5)
  {
    operator delete(v5);
  }

  return v6;
}

void sub_1A5DA664C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::ImageDescriptorAugmenterAbstract::getAugmentedImages(vision::mod::ImageDescriptorAugmenterAbstract *this, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    syslog(5, "ERROR: It appears that you are requesting the list of augmented images without having created them");
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3700;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v4 = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  do
  {
    std::vector<vImage_Buffer>::push_back[abi:ne200100](this, *(*(a2 + 16) + 8 * v4++));
  }

  while (v4 < *(a2 + 40));
}

void sub_1A5DA66F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5DA6778(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<vision::mod::ImageDescriptorBufferAbstract *,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>::__shared_ptr_default_delete<vision::mod::ImageDescriptorBufferAbstract,vision::mod::ImageDescriptorBufferAbstract>,std::allocator<vision::mod::ImageDescriptorBufferAbstract>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN6vision3mod29ImageDescriptorBufferAbstractEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<vision::mod::ImageDescriptorBufferAbstract *,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>::__shared_ptr_default_delete<vision::mod::ImageDescriptorBufferAbstract,vision::mod::ImageDescriptorBufferAbstract>,std::allocator<vision::mod::ImageDescriptorBufferAbstract>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<vision::mod::ImageDescriptorBufferAbstract *,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>::__shared_ptr_default_delete<vision::mod::ImageDescriptorBufferAbstract,vision::mod::ImageDescriptorBufferAbstract>,std::allocator<vision::mod::ImageDescriptorBufferAbstract>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void std::vector<vImage_Buffer>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<vImage_Buffer>>(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vImage_Buffer>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t vision::mod::ImageDescriptorAugmenterAbstract::augment(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[5] = 0;
  if (a2 == a3)
  {
    v10 = 0;
    v15 = 3712;
  }

  else
  {
    v7 = a2;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      while (1)
      {
        v11 = a1[1];
        if (v11 * v10 <= (a1[3] - a1[2]) >> 3)
        {
          break;
        }

        v12 = malloc_type_malloc(0x20uLL, 0x1080040ABB4582EuLL);
        v21 = v12;
        if (!v12)
        {
          exception = __cxa_allocate_exception(8uLL);
          *exception = 3707;
          __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
        }

        *v12 = 0u;
        v12[1] = 0u;
        std::vector<vImage_Buffer *>::push_back[abi:ne200100]((a1 + 2), &v21);
      }

      __p = 0;
      v19 = 0;
      v20 = 0;
      if (v11)
      {
        v13 = 0;
        for (i = 0; i < v11; ++i)
        {
          std::vector<vImage_Buffer *>::push_back[abi:ne200100](&__p, (a1[2] + v8 * v11 + v13));
          v11 = a1[1];
          v13 += 8;
        }
      }

      v15 = (*(*a1 + 16))(a1, v7, a4, &__p);
      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      if ((v15 & 0x80) == 0)
      {
        break;
      }

      v7 += 32;
      v8 += 8;
      ++v9;
      if (v7 == a3)
      {
        goto LABEL_17;
      }
    }

    v10 = v9;
  }

LABEL_17:
  a1[5] = a1[1] * v10;
  return v15;
}

void sub_1A5DA6B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<vImage_Buffer *>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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

__int32 *tplTrackerResampler_lumaDownscale4(__int32 *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a6 >= 4)
  {
    v7 = 0;
    v8 = 4 * a2;
    v9 = a5 >> 2;
    v10 = result + a2 * a4 + a3;
    v11 = &v10[3 * a2];
    v12 = &v10[2 * a2];
    v13 = &v10[a2];
    do
    {
      if (a5 >= 4)
      {
        v14 = 0;
        do
        {
          result = &v12[4 * v14];
          v15.i32[0] = *&v10[4 * v14];
          v15.i32[1] = *&v13[4 * v14];
          v15.i32[2] = *result;
          v15.i32[3] = *&v11[4 * v14];
          *(a7 + v14++) = (vaddlvq_u8(v15) + 8) >> 4;
        }

        while (v9 != v14);
      }

      v10 += v8;
      v13 += v8;
      v12 += v8;
      v11 += v8;
      a7 += v9;
      ++v7;
    }

    while (v7 != a6 >> 2);
  }

  return result;
}

uint64_t tplTrackerResampler_chromaDownscale4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6 >= 4)
  {
    v8 = 0;
    v9 = a5 >> 2;
    v15 = 4 * a2;
    v10 = 2 * a3;
    v20 = result + a2 * a4 + 3;
    v19 = v20 + a2;
    v17 = result + a2 * (a4 + 3) + 3;
    v18 = result + a2 * (a4 + 2) + 3;
    do
    {
      v16 = v8;
      if (a5 >= 4)
      {
        v11 = 0;
        result = v17;
        v12 = v18;
        v13 = v19;
        v14 = v20;
        do
        {
          *(a7 + v11) = (*(v14 + v10 - 3) + *(v14 + v10 - 1) + *(v14 + v10 + 1) + *(v14 + v10 + 3) + *(v13 + v10 - 3) + *(v13 + v10 - 1) + *(v13 + v10 + 1) + *(v13 + v10 + 3) + *(v12 + v10 - 3) + *(v12 + v10 - 1) + *(v12 + v10 + 1) + *(v12 + v10 + 3) + *(result + v10 - 3) + *(result + v10 - 1) + *(result + v10 + 1) + *(result + v10 + 3) + 8) >> 4;
          *(a8 + v11++) = (*(v14 + v10 - 2) + *(v14 + v10) + *(v14 + v10 + 2) + *(v14 + v10 + 4) + *(v13 + v10 - 2) + *(v13 + v10) + *(v13 + v10 + 2) + *(v13 + v10 + 4) + *(v12 + v10 - 2) + *(v12 + v10) + *(v12 + v10 + 2) + *(v12 + v10 + 4) + *(result + v10 - 2) + *(result + v10) + *(result + v10 + 2) + *(result + v10 + 4) + 8) >> 4;
          v14 += 8;
          v13 += 8;
          v12 += 8;
          result += 8;
        }

        while (v9 != v11);
      }

      a7 += v9;
      a8 += v9;
      ++v8;
      v20 += v15;
      v19 += v15;
      v18 += v15;
      v17 += v15;
    }

    while (v16 + 1 != a6 >> 2);
  }

  return result;
}

unsigned __int8 *tplTracker_YCbCr2RGB(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  if (a4 >= 1)
  {
    v7 = a4;
    do
    {
      v9 = *result++;
      v8 = v9;
      v10 = *a2++;
      v11 = v10 - 128;
      v12 = *a3++;
      v13 = (v8 << 6) | 0x20;
      v14 = v13 + 101 * (v12 - 128);
      v15 = v14 >> 6;
      v16 = ((v14 >> 6) & ~(v14 >> 31));
      v17 = v13 - 12 * v11 - 30 * (v12 - 128);
      if (v15 > 255)
      {
        v16 = 255;
      }

      v18 = v17 >> 6;
      v19 = ((v17 >> 6) & ~(v17 >> 31));
      v20 = v13 + 119 * v11;
      if (v18 <= 255)
      {
        v21 = v19;
      }

      else
      {
        v21 = 255;
      }

      v22 = v20 >> 6;
      v23 = ((v20 >> 6) & ~(v20 >> 31));
      if (v22 > 255)
      {
        v23 = 255;
      }

      if (v21 <= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v21;
      }

      if (v16 > v24)
      {
        v24 = v16;
      }

      v25 = ctrTrackerComputation_YCbCr2nRGB_kIlluminationInvariantLookupTable[v24];
      v26 = v16 * v25;
      v27 = v26 >> 4;
      v28 = (v26 + 16) >> 5;
      v29 = v21 * v25;
      if (v27 > 0x1FE)
      {
        LOBYTE(v28) = -1;
      }

      v30 = v29 >> 4;
      v31 = (v29 + 16) >> 5;
      *a5++ = v28;
      if (v30 > 0x1FE)
      {
        LOBYTE(v31) = -1;
      }

      v32 = v23 * v25;
      v33 = v32 >> 4;
      *a6++ = v31;
      v34 = (v32 + 16) >> 5;
      if (v33 > 0x1FE)
      {
        LOBYTE(v34) = -1;
      }

      *a7++ = v34;
      --v7;
    }

    while (v7);
  }

  return result;
}

void tplTracker_computeNormedGradient(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6, uint64_t a7)
{
  v7 = a6[1];
  if (*a6 >= a5)
  {
    v8 = a5 - 1;
  }

  else
  {
    v8 = *a6 & ~(*a6 >> 31);
  }

  v9 = a6[2];
  v10 = a6[3];
  if (v9 >= a5)
  {
    v11 = a5 - 1;
  }

  else
  {
    v11 = v9 & ~(v9 >> 31);
  }

  v12 = a4 - 1;
  v13 = v7 & ~(v7 >> 31);
  if (v7 >= a4)
  {
    v13 = a4 - 1;
  }

  v52 = v13;
  if (v10 < a4)
  {
    v12 = v10 & ~(v10 >> 31);
  }

  v51 = v12;
  if (a4 >= 1)
  {
    v17 = 0;
    v18 = v11;
    v19 = a5;
    v48 = a5;
    v49 = v11;
    v53 = a4;
    v50 = a5;
    do
    {
      if (v17 < v52 || v17 > v51)
      {
        if (a5 >= 1)
        {
          v47 = a7;
          bzero((a7 + v17 * a5), v19);
          v11 = v49;
          a5 = v50;
          a7 = v47;
        }
      }

      else if (a5 >= 1)
      {
        v20 = 0;
        if (v17 < v51)
        {
          v21 = v17 + 1;
        }

        else
        {
          v21 = v51;
        }

        if (v17 - 1 <= v52)
        {
          v22 = v52;
        }

        else
        {
          v22 = v17 - 1;
        }

        v23 = v21 - v22 != 2;
        v24 = v17 * v48;
        v25 = v21 * a5;
        v26 = v22 * a5;
        do
        {
          if (v20 < v8 || v20 > v18)
          {
            LOBYTE(v45) = 0;
            v28 = v20 + 1;
          }

          else
          {
            if (v20 - 1 <= v8)
            {
              v27 = v8;
            }

            else
            {
              v27 = v20 - 1;
            }

            v28 = v20 + 1;
            if (v20 >= v18)
            {
              v29 = v11;
            }

            else
            {
              v29 = v20 + 1;
            }

            v30 = v29 - v27 != 2;
            v31 = v24 + v27;
            v32 = v24 + v29;
            v33 = (*(a1 + v32) - *(a1 + v31)) << v30;
            v34 = (*(a1 + v20 + v25) - *(a1 + v20 + v26)) << v23;
            v35 = (*(a2 + v32) - *(a2 + v31)) << v30;
            v36 = (*(a2 + v20 + v25) - *(a2 + v20 + v26)) << v23;
            v37 = (*(a3 + v32) - *(a3 + v31)) << v30;
            v38 = (*(a3 + v20 + v25) - *(a3 + v20 + v26)) << v23;
            if (v33 >= 0)
            {
              v39 = v33;
            }

            else
            {
              v39 = -v33;
            }

            if (v34 >= 0)
            {
              v40 = (*(a1 + v20 + v25) - *(a1 + v20 + v26)) << v23;
            }

            else
            {
              v40 = -v34;
            }

            v41 = v40 + v39;
            if (v35 >= 0)
            {
              v42 = v35;
            }

            else
            {
              v42 = -v35;
            }

            if (v36 >= 0)
            {
              v43 = (*(a2 + v20 + v25) - *(a2 + v20 + v26)) << v23;
            }

            else
            {
              v43 = -v36;
            }

            v44 = v43 + v42;
            if (v37 < 0)
            {
              v37 = -v37;
            }

            if (v38 < 0)
            {
              v38 = -v38;
            }

            v45 = v38 + v37;
            if (v41 <= v44)
            {
              v46 = v44;
            }

            else
            {
              v46 = v41;
            }

            if (v46 > v45)
            {
              v45 = v46;
            }

            if (v45 >= 0xFF)
            {
              LOBYTE(v45) = -1;
            }
          }

          *(a7 + v17 * v48 + v20) = v45;
          v20 = v28;
        }

        while (v28 != v19);
      }

      ++v17;
    }

    while (v17 != v53);
  }
}

float tplTracker_computeTemplateAvgColor(_DWORD *a1, float result)
{
  v2 = (a1 + 10240);
  v3 = a1[11258];
  if (v3 > 4)
  {
    v6 = a1[11256];
    if (v6 <= 6)
    {
      v4 = 6;
    }

    else
    {
      v4 = a1[11256];
    }

    if (v6 <= 18)
    {
      v6 = 18;
    }

    if (v3 <= 0x10)
    {
      v5 = v3 + 1;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v4 = v3 + 1;
    v5 = v3 + 1;
  }

  v7 = a1[11259];
  if (v7 > 4)
  {
    v10 = a1[11257];
    if (v10 <= 6)
    {
      v8 = 6;
    }

    else
    {
      v8 = a1[11257];
    }

    if (v10 <= 18)
    {
      v10 = 18;
    }

    if (v7 <= 0x10)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v8 = v7 + 1;
    v9 = v7 + 1;
  }

  v11 = (v9 - v8) * (v5 - v4);
  if (v11 >= 1)
  {
    v12 = v11;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if (v9 > v8)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = &a1[6 * v8 + 17740];
      v20 = &a1[6 * v8 + 16444];
      v21 = &a1[6 * v8 + 15148];
      do
      {
        v22 = v21;
        v23 = v20;
        v24 = v19;
        v25 = v5;
        if (v5 > v4)
        {
          do
          {
            v18 += *(v22 + v4);
            v17 += *(v23 + v4);
            v16 += *(v24 + v4);
            --v25;
            v24 = (v24 + 1);
            v23 = (v23 + 1);
            v22 = (v22 + 1);
          }

          while (v4 != v25);
        }

        v21 += 6;
        v20 += 6;
        v19 += 6;
        ++v8;
      }

      while (v8 != v9);
      v13 = v18;
      v14 = v17;
      v15 = v16;
    }

    v2[276] = v13 / v12;
    v2[277] = v14 / v12;
    result = v15 / v12;
    v2[278] = result;
  }

  return result;
}

uint64_t tplTracker_computeTemplateStats(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = result + 8;
  do
  {
    for (i = 0; i != 24; ++i)
    {
      v6 = *(v4 + i) & 0xF0;
      v1 += v6;
      v2 += v6 * v6;
    }

    v4 += 24;
    ++v3;
  }

  while (v3 != 24);
  v7 = v1 / 576.0;
  v8 = (v2 / 576.0) - (v7 * v7);
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  *(result + 42056) = v7;
  *(result + 42060) = sqrtf(v8);
  return result;
}

uint64_t tplTracker_computeTemplateFFT(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 216824;
  v4 = a1 + 8;
  v5 = a1 + 217016;
  v6 = a1 + 216828;
  v7 = (a1 + 216824);
  do
  {
    v8 = 0;
    v9 = v6;
    do
    {
      *(v9 - 4) = *(v4 + v8++) & 0xF0;
      v9 += 8;
    }

    while (v8 != 24);
    v10 = (v5 + 576 * v2);
    v10[22] = 0uLL;
    v10[23] = 0uLL;
    v10[20] = 0uLL;
    v10[21] = 0uLL;
    v10[18] = 0uLL;
    v10[19] = 0uLL;
    v10[16] = 0uLL;
    v10[17] = 0uLL;
    v10[14] = 0uLL;
    v10[15] = 0uLL;
    v10[12] = 0uLL;
    v10[13] = 0uLL;
    v10[10] = 0uLL;
    v10[11] = 0uLL;
    v10[8] = 0uLL;
    v10[9] = 0uLL;
    v10[6] = 0uLL;
    v10[7] = 0uLL;
    v10[4] = 0uLL;
    v10[5] = 0uLL;
    v10[2] = 0uLL;
    v10[3] = 0uLL;
    v4 += 24;
    v7 += 576;
    ++v2;
    v6 += 576;
    *v10 = 0uLL;
    v10[1] = 0uLL;
  }

  while (v2 != 24);
  bzero(v7, 0x6C00uLL);

  return tplTracker_IFFT_2D(v3, (a1 + 258296), (a1 + 584));
}

uint64_t tplTracker_findPeakXY(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, float *a9)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2 <= a4)
  {
    v11 = a2 - 1;
  }

  else
  {
    v11 = a4;
  }

  if (a3 <= a5)
  {
    v12 = a3 - 1;
  }

  else
  {
    v12 = a5;
  }

  if (a2 <= a6)
  {
    v13 = a2 - 1;
  }

  else
  {
    v13 = a6;
  }

  if (a3 <= a7)
  {
    v14 = a3 - 1;
  }

  else
  {
    v14 = a7;
  }

  v15 = v14 - v12 + 1;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v34 - v22;
  result = 6780;
  if (v13 - v11 <= 47 && v21 <= 47)
  {
    v37 = a9;
    v38 = v19;
    v36 = v20;
    bzero(v17, 4 * v20);
    v35 = v15;
    bzero(v23, 4 * v15);
    if (v14 >= v12)
    {
      v25 = 0;
      v26 = a1 + 4 * v12 * a2;
      do
      {
        if (v13 >= v11)
        {
          v27 = *&v23[4 * v25];
          v28 = v17;
          v29 = (v13 - v11 + 1);
          v30 = 4 * v11;
          do
          {
            v31 = *(v26 + v30);
            *v28 = v31 + *v28;
            ++v28;
            v27 = v31 + v27;
            v30 += 4;
            --v29;
          }

          while (v29);
          *&v23[4 * v25] = v27;
        }

        ++v25;
        v26 += 4 * a2;
      }

      while (v25 != v14 - v12 + 1);
    }

    Peak = tplTracker_findPeak(v17, v36);
    *v38 = Peak + v11;
    v33 = tplTracker_findPeak(v23, v35);
    *v37 = v33 + v12;
    return 6784;
  }

  return result;
}

float tplTracker_findPeak(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 5:
      v10 = 0;
      v3 = 0.0;
      v4 = 0.0;
      do
      {
        v11 = *(a1 + v10 * 4);
        v4 = v4 + (*&dword_1A603B4F8[v10] * v11);
        v3 = v3 + (*&dword_1A603B50C[v10++] * v11);
      }

      while (v10 != 5);
      if (v3 <= -0.005)
      {
        result = 0.0;
        if (v4 > 0.0 != v3 < 0.0)
        {
          return result;
        }

        v7 = v3 * -8.0;
        result = 4.0;
        goto LABEL_33;
      }

      break;
    case 6:
      v8 = 0;
      v3 = 0.0;
      v4 = 0.0;
      do
      {
        v9 = *(a1 + v8 * 4);
        v4 = v4 + (*&dword_1A6039814[v8] * v9);
        v3 = v3 + (*&dword_1A603982C[v8++] * v9);
      }

      while (v8 != 6);
      if (v3 <= -0.005)
      {
        result = 0.0;
        if (v4 > 0.0 != v3 < 0.0)
        {
          return result;
        }

        v7 = v3 * -10.0;
        result = 5.0;
        goto LABEL_33;
      }

      break;
    case 7:
      v2 = 0;
      v3 = 0.0;
      v4 = 0.0;
      do
      {
        v5 = *(a1 + v2 * 4);
        v4 = v4 + (*&dword_1A6039844[v2] * v5);
        v3 = v3 + (*&dword_1A6039860[v2++] * v5);
      }

      while (v2 != 7);
      if (v3 <= -0.005)
      {
        result = 0.0;
        if (v4 > 0.0 != v3 < 0.0)
        {
          return result;
        }

        v7 = v3 * -12.0;
        result = 6.0;
LABEL_33:
        if (v4 <= v7)
        {
          return v4 / (v3 * -2.0);
        }

        return result;
      }

      break;
  }

  result = vcvts_n_f32_u64(a2 - 1, 1uLL);
  if (a2)
  {
    v12 = 0;
    v13 = 0.0;
    v14 = 3.4028e38;
    do
    {
      v15 = *(a1 + 4 * v12);
      if (v15 < v14)
      {
        v14 = *(a1 + 4 * v12);
      }

      if (v15 > v13)
      {
        result = v12;
        v13 = *(a1 + 4 * v12);
      }

      ++v12;
    }

    while (a2 != v12);
    v16 = 0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = (*(a1 + 4 * v16) - v14) * (*(a1 + 4 * v16) - v14);
      v17 = v17 + v19;
      v18 = v18 + (v16++ * v19);
    }

    while (a2 != v16);
  }

  else
  {
    v18 = 0.0;
    v17 = 0.0;
  }

  if (v17 > 0.0)
  {
    return v18 / v17;
  }

  return result;
}

BOOL tplTracker_mergeSpans(_BOOL8 result, uint64_t a2, int a3)
{
  if (a2 < a3)
  {
    v3 = 0;
    v4 = result + 162432;
    v5 = -1;
    v6 = -1;
    do
    {
      if (*(v4 + 36 * a2) <= v3)
      {
        if (a2 >= a3)
        {
          v7 = a2;
        }

        else
        {
          v7 = a2;
          v9 = v5 != -1 && v5 < a3;
          result = v6 != -1 && v6 < a3;
          while (1)
          {
            v11 = (v4 + 36 * v7);
            if (*v11 != v3)
            {
              break;
            }

            v12 = v4 + 36 * v7;
            v15 = *(v12 + 12);
            v13 = (v12 + 12);
            v14 = v15;
            do
            {
              v16 = v14;
              v14 = *(v4 + 36 * v14 + 12);
            }

            while (v16 != v14);
            if (v9)
            {
              v17 = v5;
              v18 = v16;
              do
              {
                v19 = (v4 + 36 * v17);
                if (*v19 != v3 - 2 || v19[1] > v11[2] + 2)
                {
                  break;
                }

                if (v19[2] >= v11[1] - 2)
                {
                  v20 = v4 + 36 * v17;
                  v23 = *(v20 + 12);
                  v22 = (v20 + 12);
                  v21 = v23;
                  do
                  {
                    v24 = v21;
                    v21 = *(v4 + 36 * v21 + 12);
                  }

                  while (v24 != v21);
                  if (v24 != v18)
                  {
                    v25 = v24;
                    if (v18 <= v24)
                    {
                      v26 = (v4 + 36 * v24);
                      v26[3] = v18;
                      *v22 = v18;
                      v25 = v18;
                      v24 = v18;
                    }

                    else
                    {
                      v26 = (v4 + 36 * v18);
                      v26[3] = v24;
                      *v13 = v24;
                    }

                    v27 = (v4 + 36 * v25);
                    v28 = v27[4];
                    v29 = v27[5];
                    if (v28 >= v26[4])
                    {
                      v28 = v26[4];
                    }

                    if (v29 <= v26[5])
                    {
                      v29 = v26[5];
                    }

                    v27[4] = v28;
                    v27[5] = v29;
                    v30 = v27[6];
                    v31 = v27[7];
                    if (v30 >= v26[6])
                    {
                      v30 = v26[6];
                    }

                    if (v31 <= v26[7])
                    {
                      v31 = v26[7];
                    }

                    v27[6] = v30;
                    v27[7] = v31;
                    v27[8] += v26[8];
                    v18 = v24;
                  }
                }

                ++v17;
              }

              while (v17 != a3);
            }

            if (result)
            {
              v32 = v6;
              do
              {
                v33 = (v4 + 36 * v32);
                if (*v33 != v3 - 1 || v33[1] > v11[2] + 2)
                {
                  break;
                }

                if (v33[2] >= v11[1] - 2)
                {
                  v34 = v4 + 36 * v32;
                  v37 = *(v34 + 12);
                  v36 = (v34 + 12);
                  v35 = v37;
                  do
                  {
                    v38 = v35;
                    v35 = *(v4 + 36 * v35 + 12);
                  }

                  while (v38 != v35);
                  if (v38 != v16)
                  {
                    v39 = v38;
                    if (v16 <= v38)
                    {
                      v40 = (v4 + 36 * v38);
                      v40[3] = v16;
                      *v36 = v16;
                      v39 = v16;
                      v38 = v16;
                    }

                    else
                    {
                      v40 = (v4 + 36 * v16);
                      v40[3] = v38;
                      *v13 = v38;
                    }

                    v41 = (v4 + 36 * v39);
                    v42 = v41[4];
                    v43 = v41[5];
                    if (v42 >= v40[4])
                    {
                      v42 = v40[4];
                    }

                    if (v43 <= v40[5])
                    {
                      v43 = v40[5];
                    }

                    v41[4] = v42;
                    v41[5] = v43;
                    v44 = v41[6];
                    v45 = v41[7];
                    if (v44 >= v40[6])
                    {
                      v44 = v40[6];
                    }

                    if (v45 <= v40[7])
                    {
                      v45 = v40[7];
                    }

                    v41[6] = v44;
                    v41[7] = v45;
                    v41[8] += v40[8];
                    v16 = v38;
                  }
                }

                ++v32;
              }

              while (v32 != a3);
            }

            if (++v7 == a3)
            {
              return result;
            }
          }
        }
      }

      else
      {
        v7 = a2;
        LODWORD(a2) = -1;
      }

      if (v3 > 0x2F)
      {
        break;
      }

      ++v3;
      v5 = v6;
      v6 = a2;
      a2 = v7;
    }

    while (v7 < a3);
  }

  return result;
}

uint64_t tplTracker_normalizeScoreField(uint64_t a1)
{
  if (!a1)
  {
    return 6780;
  }

  v1 = ((*(a1 + 45016) - 23) * (*(a1 + 45012) - 23));
  if (v1 < 1)
  {
    return 6784;
  }

  v2 = (a1 + 197808);
  v3 = (a1 + 178600);
  v4 = (a1 + 76144);
  v6 = *(a1 + 42056);
  v5 = *(a1 + 42060);
  result = 6784;
  do
  {
    v8 = v5 * fmaxf(*v3, v5 * 0.5);
    if (v8 == 0.0 || *v4 == 1)
    {
      *v2 = 0.0;
    }

    else
    {
      v9 = ((v8 + (v6 * v3[2401])) + (*v2 * -0.0017361)) / (v8 + v8);
      v10 = 1.0 - sqrtf(v9);
      if (v9 <= 0.0)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = v10;
      }

      *v2 = fmaxf(v11, 0.0);
    }

    ++v2;
    ++v3;
    ++v4;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t calculateIntegralImage(unsigned __int8 *a1, int a2, int a3, int a4, int a5, _DWORD *a6)
{
  result = 6780;
  if (a1 && a6 && a3 * a2 < 0x10000)
  {
    if (a2 >= 1)
    {
      v8 = 0;
      v9 = a1;
      v10 = a6;
      v11 = a2;
      do
      {
        v12 = *v9++;
        v8 += v12;
        *v10++ = v8;
        --v11;
      }

      while (v11);
    }

    if (a3 <= 1)
    {
      return 6784;
    }

    else
    {
      v13 = 4 * a5;
      v14 = &a1[a4];
      v15 = 1;
      result = 6784;
      v16 = &a6[v13 / 4];
      do
      {
        if (a2 >= 1)
        {
          v17 = 0;
          v18 = 0;
          do
          {
            v18 += v14[v17];
            v16[v17] = v18 + a6[v17];
            ++v17;
          }

          while (a2 != v17);
        }

        ++v15;
        v16 = (v16 + v13);
        a6 = (a6 + v13);
        v14 += a4;
      }

      while (v15 != a3);
    }
  }

  return result;
}

void sub_1A5DA8534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5DA8438);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<apple::vision::connected_components::RowCol>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
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
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1A5DA8D00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1A5DA8D80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id VNPersonsModelIOStringForTag(uint64_t a1)
{
  v2 = (a1 >> 24);
  if (v2 > 0x7F)
  {
    if (!__maskrune(a1 >> 24, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v3 = (a1 << 6) >> 24;
  if (v3 > 0x7F)
  {
    if (!__maskrune((a1 << 6) >> 24, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v4 = a1 >> 8;
  if (v4 > 0x7F)
  {
    if (!__maskrune(a1 >> 8, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  if (a1 > 0x7F)
  {
    if (__maskrune(a1, 0x40000uLL))
    {
      goto LABEL_15;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x40000) != 0)
  {
LABEL_15:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"'%c%c%c%c'", v2, ((a1 << 6) >> 24), (a1 >> 8), a1];
    goto LABEL_18;
  }

LABEL_17:
  [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%08X", a1, v7, v8, v9];
  v5 = LABEL_18:;

  return v5;
}

BOOL VNPersonsModelIOWriteTagToOutputStream(int a1, void *a2, CC_MD5_CTX *a3, void *a4)
{
  data = a1;
  v6 = a2;
  v7 = [v6 write:&data maxLength:4];
  if (v7 == 4)
  {
    CC_MD5_Update(a3, &data, 4u);
  }

  else if (a4)
  {
    v8 = [v6 streamError];
    *a4 = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"failed to write to data stream", v8);
  }

  return v7 == 4;
}

uint64_t VNPersonsModelIOWriteTaggedBufferToOutputStream(uint64_t a1, const void *a2, CC_LONG a3, void *a4, CC_MD5_CTX *a5, uint64_t a6)
{
  v11 = a4;
  if (!a2)
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = VNPersonsModelIOStringForTag(a1);
    v14 = [v12 stringWithFormat:@"tag %@ did not provide any data", v13];
    *a6 = VNPersonsModelErrorForIOError(v14);

    goto LABEL_10;
  }

  if (!VNPersonsModelIOWriteTagToOutputStream(a1, v11, a5, a6) || !VNPersonsModelIOWriteTagToOutputStream(a3, v11, a5, a6))
  {
    goto LABEL_10;
  }

  if (a3)
  {
    if ([v11 write:a2 maxLength:a3] == a3)
    {
      CC_MD5_Update(a5, a2, a3);
      goto LABEL_7;
    }

    if (!a6)
    {
      goto LABEL_11;
    }

    v16 = [v11 streamError];
    *a6 = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"failed to write to data stream", v16);

LABEL_10:
    a6 = 0;
    goto LABEL_11;
  }

LABEL_7:
  a6 = 1;
LABEL_11:

  return a6;
}

void *VNPersonsModelIOWriteTaggedDataToOutputStream(uint64_t a1, void *a2, void *a3, CC_MD5_CTX *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [v9 length];
  if (HIDWORD(v11))
  {
    if (a5)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = VNPersonsModelIOStringForTag(a1);
      v14 = [v12 stringWithFormat:@"tag %@ has a data overflow to %lu bytes", v13, v11];
      *a5 = VNPersonsModelErrorForIOError(v14);

      a5 = 0;
    }
  }

  else
  {
    a5 = VNPersonsModelIOWriteTaggedBufferToOutputStream(a1, [v9 bytes], v11, v10, a4, a5);
  }

  return a5;
}

void *VNPersonsModelIOWriteTaggedObjectToOutputStream(uint64_t a1, uint64_t a2, void *a3, CC_MD5_CTX *a4, void *a5)
{
  v9 = a3;
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:a5];
  if (v10)
  {
    v11 = VNPersonsModelIOWriteTaggedDataToOutputStream(a1, v10, v9, a4, a5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL VNPersonsModelIOReadTagFromInputStream(void *a1, const void *a2, CC_MD5_CTX *a3, void *a4)
{
  v7 = a1;
  v8 = [v7 read:a2 maxLength:4];
  if (v8 == 4)
  {
    CC_MD5_Update(a3, a2, 4u);
  }

  else if (a4)
  {
    v9 = [v7 streamError];
    *a4 = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"unexpected end of data stream", v9);
  }

  return v8 == 4;
}

BOOL VNPersonsModelIOReadBufferFromInputStream(void *a1, CC_LONG a2, const void *a3, CC_MD5_CTX *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = [v9 read:a3 maxLength:a2];
  if (v11 == a2)
  {
    CC_MD5_Update(a4, a3, a2);
  }

  else if (a5)
  {
    v12 = [v9 streamError];
    *a5 = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"unexpected end of data stream", v12);
  }

  return v11 == v10;
}

id VNPersonsModelIOReadNSDataFromInputStream(void *a1, CC_MD5_CTX *a2, void *a3)
{
  v5 = a1;
  v11 = 0;
  if (!VNPersonsModelIOReadTagFromInputStream(v5, &v11, a2, a3))
  {
    v9 = 0;
    goto LABEL_10;
  }

  v6 = objc_alloc(MEMORY[0x1E695DF88]);
  v7 = [v6 initWithLength:v11];
  v8 = [v7 mutableBytes];
  if (!v8)
  {
    if (a3)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a3 = v9 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (!VNPersonsModelIOReadBufferFromInputStream(v5, v11, v8, a2, a3))
  {
    goto LABEL_8;
  }

  v9 = v7;
LABEL_9:

LABEL_10:

  return v9;
}

uint64_t VNPersonsModelIOReadPastUnknownTagData(void *a1, CC_MD5_CTX *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v12 = 0;
  v6 = 0;
  if (VNPersonsModelIOReadTagFromInputStream(v5, &v12, a2, a3))
  {
    v7 = v12;
    v8 = v5;
    if (v7)
    {
      while (1)
      {
        v9 = v7 >= 0x100 ? 256 : v7;
        if ([v8 read:data maxLength:v9] != v9)
        {
          break;
        }

        CC_MD5_Update(a2, data, v9);
        v7 -= v9;
        if (!v7)
        {
          goto LABEL_8;
        }
      }

      if (a3)
      {
        v10 = [v8 streamError];
        *a3 = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"unexpected end of data stream", v10);
      }

      v6 = 0;
    }

    else
    {
LABEL_8:
      v6 = 1;
    }
  }

  return v6;
}

void vision::mod::ImageClassifierEspresso::classifyImage_Planar8(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3967;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void vision::mod::ImageClassifierEspresso::classifyImage_BGRA8888(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3967;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void vision::mod::ImageClassifierEspresso::classifyImage_RGBA8888(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3967;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void vision::mod::ImageClassifierEspresso::classifyDescriptorHandler(vision::mod::ImageClassifierEspresso *this@<X0>, const vision::mod::ImageDescriptorBufferAbstract *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*(a2 + 7) length:(*(*a2 + 104))(a2) freeWhenDone:0];
  v5 = espresso_vision_classify_descriptor_handler_nsdata();
  v6 = [v5 bytes];
  v7 = [v5 length];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (v7 >= 4)
  {
    v8 = 0;
    v9 = v7 >> 2;
    do
    {
      v10 = *v6;
      v12 = (*(this + 1) + v8);
      *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v12, &v12) + 10) = v10;
      v8 += 24;
      ++v6;
      --v9;
    }

    while (v9);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, void *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__rehash<true>(uint64_t a1, size_t __n)
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

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,float>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
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

uint64_t vision::mod::ImageClassifierEspresso::setPriority(vision::mod::ImageClassifierEspresso *this, uint64_t a2, uint64_t a3)
{
  v3 = *(*(this + 15) + 16);
  if (v3)
  {
    v4 = [v3 ctx];
    updated = espresso_vision_util_update_metal_priority();

    v6 = &CVML_status_invalidParameter;
    if (updated)
    {
      v6 = &CVML_status_ok;
    }
  }

  else
  {
    v6 = &CVML_status_internalError;
  }

  return (*v6 + 128) | 0xF00;
}

uint64_t vision::mod::ImageClassifierEspresso::wipeLayersMemory(vision::mod::ImageClassifierEspresso *this)
{
  v2 = *(this + 15);
  v3 = *(v2 + 16);
  if (v3)
  {
    [v3 wipe_layers_blobs];
    v2 = *(this + 15);
  }

  if (*v2)
  {
    if (v4)
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v4 + 112))(v4);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }

  return 3968;
}

void sub_1A5DAC488(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageClassifierEspresso::setDescriptorProcessor(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3965;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v2[1];
  *v2 = v5;
  v2[1] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t vision::mod::ImageClassifierEspresso::getDescriptorProcessor@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  v4 = *v2;
  v3 = v2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void vision::mod::ImageClassifierAbstract::classifyDescriptorBatch(vision::mod::ImageClassifierAbstract *this@<X0>, const vision::mod::ImageDescriptorBufferAbstract *a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = *(a2 + 9);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v38 = a5;
  LOBYTE(v39) = 0;
  if (v10)
  {
    if (v10 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,float>>>(v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  (*(*this + 24))(&v38, this);
  (*(*v38 + 64))(&v26);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (*(a2 + 9))
  {
    v11 = 0;
    if (__p == (this + 32))
    {
      v12 = 1;
    }

    else
    {
      v12 = a4;
    }

    do
    {
      (*(*a2 + 112))(a2, v26, v11);
      (*(*this + 56))(&v38, this, v26);
      *v35 = 0u;
      *v36 = 0u;
      v37 = 1065353216;
      if (a3)
      {
        vision::mod::ImageClassifierAbstract::ImageClassifier_filterdisallowedListedLabels(__p, this, &v38);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(v35, __p);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v33[0]);
        v13 = __p[0];
        __p[0] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        v37 = v41;
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(v35, v40);
      }

      *__p = 0u;
      *v33 = 0u;
      v34 = 1065353216;
      if ((v12 & 1) == 0)
      {
        v34 = *(this + 16);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(__p, *(this + 6));
      }

      v30 = 0uLL;
      v31 = 0;
      v14 = *(this + 24);
      if (v14 == 1)
      {
        ImageClassifier_getLabelsAuto(&v28, v36[0], __p, *(this + 26), 0.1);
      }

      else
      {
        if (v14)
        {
          exception = __cxa_allocate_exception(8uLL);
          *exception = 3955;
          __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
        }

        ImageClassifier_getLabels(&v28, v36[0], __p, *(this + 27), *(this + 25));
      }

      std::vector<std::pair<std::string,float>>::__vdeallocate(&v30);
      v30 = v28;
      v31 = v29;
      v29 = 0;
      v28 = 0uLL;
      v42[0] = &v28;
      std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](v42);
      *v23 = 0u;
      *v24 = 0u;
      v25 = 1065353216;
      v16 = *(&v30 + 1);
      for (i = v30; i != v16; i += 32)
      {
        v17 = *(i + 24);
        v42[0] = i;
        *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v23, i, v42) + 10) = v17;
      }

      *&v28 = &v30;
      std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v28);
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v33[0]);
      v18 = __p[0];
      __p[0] = 0;
      if (v18)
      {
        operator delete(v18);
      }

      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v36[0]);
      v19 = v35[0];
      v35[0] = 0;
      if (v19)
      {
        operator delete(v19);
      }

      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v40);
      v20 = v38;
      v38 = 0;
      if (v20)
      {
        operator delete(v20);
      }

      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(*a5 + 40 * v11, v23);
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v24[0]);
      v21 = v23[0];
      v23[0] = 0;
      if (v21)
      {
        operator delete(v21);
      }

      ++v11;
    }

    while (*(a2 + 9) > v11);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_1A5DAC8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = *(v31 - 144);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::vector<std::unordered_map<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void std::vector<std::unordered_map<std::string,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v4 - 5);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void vision::mod::ImageClassifierAbstract::ImageClassifier_filterdisallowedListedLabels(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (*(a2 + 80) == *(a2 + 72))
  {
    if (result != a3)
    {
      *(result + 32) = *(a3 + 32);
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(result, *(a3 + 16));
    }
  }

  else
  {
    for (i = *(a3 + 16); i; i = *i)
    {
      v6 = *(a2 + 72);
      v7 = *(a2 + 80);
      if (v6 != v7)
      {
        v8 = *(i + 39);
        if (v8 >= 0)
        {
          v9 = *(i + 39);
        }

        else
        {
          v9 = i[3];
        }

        if (v8 >= 0)
        {
          v10 = i + 2;
        }

        else
        {
          v10 = i[2];
        }

        while (1)
        {
          v11 = *(v6 + 23);
          v12 = v11;
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(v6 + 8);
          }

          if (v11 == v9)
          {
            v13 = v12 >= 0 ? v6 : *v6;
            if (!memcmp(v13, v10, v9))
            {
              break;
            }
          }

          v6 += 24;
          if (v6 == v7)
          {
            goto LABEL_20;
          }
        }
      }

      if (v6 == v7)
      {
LABEL_20:
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(result, i + 2, (i + 2));
      }
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        *(v6 + 10) = *(v2 + 10);
        v8 = *v6;
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void std::vector<std::pair<std::string,float>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<std::pair<std::string,float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,float>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && std::equal_to<std::string>::operator()[abi:ne200100](v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(void *a1, void *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2))
  {
    goto LABEL_17;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,float>>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void vision::mod::ImageClassifierEspresso::~ImageClassifierEspresso(vision::mod::ImageClassifierEspresso *this)
{
  *this = &unk_1F1971BA8;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  vision::mod::ImageClassifierAbstract::~ImageClassifierAbstract(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1971BA8;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  vision::mod::ImageClassifierAbstract::~ImageClassifierAbstract(this);
}

void vision::mod::ImageClassifierAbstract::~ImageClassifierAbstract(void **this)
{
  *this = &unk_1F1974128;
  v2 = this + 1;
  v3 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(this + 4);
  v3 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void vision::mod::ImageClassifierAbstract::initLabels(vision::mod::ImageClassifierAbstract *this, const char *a2)
{
  __p = 0;
  v39 = 0uLL;
  ImageClassifier_readLinesFromFile(v49, a2);
  v3 = *v49;
  for (i = v50; v3 != i; ++v3)
  {
    ImageClassifier_splitAndTrim(&v47, v3);
    v5 = v47 + 24;
    if ((v47 + 24) == v48)
    {
      v6 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        if (!ImageClassifier_isBooleanFlag(v5))
        {
          break;
        }

        ++v6;
        v5 += 24;
      }

      while (v5 != v48);
      v44 = 0;
      v45 = 0;
      v46 = 0;
      if (v6)
      {
        v7 = 24;
        v8 = v6;
        do
        {
          v40.__r_.__value_.__s.__data_[0] = ImageClassifier_stringToBool(v47 + v7);
          std::vector<BOOL>::push_back(&v44, &v40);
          v7 += 24;
          --v8;
        }

        while (v8);
      }
    }

    v9 = v47;
    v10 = 0.1;
    if (0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3) >= v6 + 2)
    {
      v10 = std::stof(v47 + v6 + 1, 0);
      v9 = v47;
    }

    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *v9, *(v9 + 1));
    }

    else
    {
      v11 = *v9;
      v40.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&v40.__r_.__value_.__l.__data_ = v11;
    }

    std::vector<BOOL>::vector(&v41, &v44);
    v43 = v10;
    v12 = v39;
    if (v39 >= *(&v39 + 1))
    {
      v14 = __p;
      v15 = v39 - __p;
      v16 = 0x6DB6DB6DB6DB6DB7 * ((v39 - __p) >> 3) + 1;
      if (v16 > 0x492492492492492)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      if (0xDB6DB6DB6DB6DB6ELL * ((*(&v39 + 1) - __p) >> 3) > v16)
      {
        v16 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v39 + 1) - __p) >> 3);
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(&v39 + 1) - __p) >> 3)) >= 0x249249249249249)
      {
        v17 = 0x492492492492492;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (v17 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = 8 * ((v39 - __p) >> 3);
      *v18 = *&v40.__r_.__value_.__l.__data_;
      v19 = v40.__r_.__value_.__r.__words[2];
      v20 = v41;
      memset(&v40, 0, sizeof(v40));
      *(v18 + 16) = v19;
      *(v18 + 24) = v20;
      *(v18 + 32) = v42;
      v42 = 0uLL;
      v41 = 0;
      v21 = (v18 - v15);
      *(v18 + 48) = v10;
      if (v14 != v12)
      {
        v22 = v14;
        v23 = v21;
        do
        {
          v24 = *v22;
          v23[2] = *(v22 + 2);
          *v23 = v24;
          *(v22 + 1) = 0;
          *(v22 + 2) = 0;
          *v22 = 0;
          v23[3] = *(v22 + 3);
          *(v23 + 2) = *(v22 + 2);
          *(v22 + 3) = 0;
          *(v22 + 4) = 0;
          *(v22 + 5) = 0;
          *(v23 + 12) = *(v22 + 12);
          v22 += 56;
          v23 += 7;
        }

        while (v22 != v12);
        do
        {
          std::__destroy_at[abi:ne200100]<std::tuple<std::string,std::vector<BOOL>,float>,0>(v14);
          v14 += 56;
        }

        while (v14 != v12);
      }

      v25 = __p;
      __p = v21;
      v39 = (v18 + 56);
      if (v25)
      {
        operator delete(v25);
      }

      *&v39 = v18 + 56;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      v13 = *&v40.__r_.__value_.__l.__data_;
      *(v39 + 16) = *(&v40.__r_.__value_.__l + 2);
      *v12 = v13;
      memset(&v40, 0, sizeof(v40));
      *(v12 + 3) = v41;
      *(v12 + 2) = v42;
      v42 = 0uLL;
      v41 = 0;
      *(v12 + 12) = v43;
      *&v39 = v12 + 56;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v44)
    {
      operator delete(v44);
    }

    v40.__r_.__value_.__r.__words[0] = &v47;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
  }

  v40.__r_.__value_.__r.__words[0] = v49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
  memset(&v40, 0, sizeof(v40));
  for (j = __p; j != v39; j = (j + 56))
  {
    std::vector<std::string>::push_back[abi:ne200100](&v40, j);
  }

  std::vector<std::string>::__vdeallocate((this + 8));
  *(this + 8) = v40;
  memset(&v40, 0, sizeof(v40));
  *v49 = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v49);
  memset(&v40, 0, sizeof(v40));
  for (k = __p; k != v39; k = (k + 56))
  {
    if (*(k + 4))
    {
      if ((**(k + 3) & 1) == 0)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v40, k);
      }
    }
  }

  std::vector<std::string>::__vdeallocate(this + 3);
  *(this + 3) = v40;
  memset(&v40, 0, sizeof(v40));
  *v49 = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v49);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::clear(this + 32);
  v28 = __p;
  if (__p != v39)
  {
    do
    {
      if (SHIBYTE(v28->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, v28->__r_.__value_.__l.__data_, v28->__r_.__value_.__l.__size_);
      }

      else
      {
        v40 = *v28;
      }

      LODWORD(v41) = v28[2].__r_.__value_.__l.__data_;
      v29 = std::__string_hash<char>::operator()[abi:ne200100](&v40);
      v30 = v29;
      v31 = *(this + 40);
      if (!*&v31)
      {
        goto LABEL_69;
      }

      v32 = vcnt_s8(v31);
      v32.i16[0] = vaddlv_u8(v32);
      v33 = v32.u32[0];
      if (v32.u32[0] > 1uLL)
      {
        v34 = v29;
        if (v29 >= *&v31)
        {
          v34 = v29 % *&v31;
        }
      }

      else
      {
        v34 = (*&v31 - 1) & v29;
      }

      v35 = *(*(this + 4) + 8 * v34);
      if (!v35 || (v36 = *v35) == 0)
      {
LABEL_69:
        operator new();
      }

      while (1)
      {
        v37 = v36[1];
        if (v37 == v30)
        {
          break;
        }

        if (v33 > 1)
        {
          if (v37 >= *&v31)
          {
            v37 %= *&v31;
          }
        }

        else
        {
          v37 &= *&v31 - 1;
        }

        if (v37 != v34)
        {
          goto LABEL_69;
        }

LABEL_68:
        v36 = *v36;
        if (!v36)
        {
          goto LABEL_69;
        }
      }

      if (!std::equal_to<std::string>::operator()[abi:ne200100](v36 + 2, &v40))
      {
        goto LABEL_68;
      }

      if ((*(&v40.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      v28 = (v28 + 56);
    }

    while (v28 != v39);
  }

  v40.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::tuple<std::string,std::vector<BOOL>,float>>::__destroy_vector::operator()[abi:ne200100](&v40);
}

void sub_1A5DADD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  a13 = &a10;
  std::vector<std::tuple<std::string,std::vector<BOOL>,float>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vision::mod::ImageClassifierEspresso::private_t>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<vision::mod::ImageClassifierEspresso::private_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1971C28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
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

void std::vector<std::tuple<std::string,std::vector<BOOL>,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:ne200100]<std::tuple<std::string,std::vector<BOOL>,float>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::tuple<std::string,std::vector<BOOL>,float>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

id _stringOrDataCodingClassesSet(void)
{
  if (_stringOrDataCodingClassesSet(void)::onceToken != -1)
  {
    dispatch_once(&_stringOrDataCodingClassesSet(void)::onceToken, &__block_literal_global_158);
  }

  v1 = _stringOrDataCodingClassesSet(void)::classesSet;

  return v1;
}

id missingRequiredCodingKeyError(NSString *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Missing the required key '%@'", v1];
  v3 = [VNError errorForDataUnavailableWithLocalizedDescription:v2];

  return v3;
}

id unknownDataForCodingKeyError(NSString *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown data encoded for '%@'", v1];
  v3 = [VNError errorForOperationFailedErrorWithLocalizedDescription:v2];

  return v3;
}

uint64_t ___ZL29_stringOrDataCodingClassesSetv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  _stringOrDataCodingClassesSet(void)::classesSet = [v0 initWithObjects:{v1, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A5DB0F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _scanNFloats(NSScanner *a1, unint64_t a2, float *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 1;
  v8 = a2;
  do
  {
    if (![(NSScanner *)v5 scanFloat:a3])
    {
      break;
    }

    v6 = v7 >= a2;
    ++a3;
    ++v7;
    --v8;
  }

  while (v8);

  return v6;
}

void sub_1A5DB1534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__48(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1A5DB1B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3143(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  return result;
}

void AnnealContours(uint64_t a1, _DWORD *a2, int a3)
{
  v5 = *(a1 + 4);
  v6 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
  v7 = a2[19];
  v12[0] = a2[2];
  v12[1] = v7;
  v8 = a2[4];
  v14 = v6;
  v13 = v8;
  if (v5 >= 1)
  {
    v9 = 0;
    v10 = 2 * v5;
    do
    {
      v11 = (*(a1 + 16) + 40 * *(*(a1 + 8) + v9));
      if (*v11 == 1)
      {
        AnnealContour(v11, v12);
      }

      v9 += 2;
    }

    while (v10 != v9);
  }

  if (v6)
  {

    free(v6);
  }
}

uint64_t AnnealContour(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *(a1 + 8);
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 1000000.0;
  v26 = 1000000.0;
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (*(a1 + 12) <= v5)
  {
    return result;
  }

  v24 = 0;
  result = 0;
  do
  {
    v23 = result;
    if (v4)
    {
      v8 = *(a1 + 24);
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = *(a1 + 24);
      v8 = *v7;
      if (!*v7)
      {
        return result;
      }
    }

    v9 = 0;
    v10 = 0;
    v11 = *v8;
    v12 = 1;
    do
    {
      if (v7 == v8)
      {
        __assert_rtn("AnnealContour", "ContourUtilities.c", 229, "sPtrPrev != sPtr");
      }

      if (v8 == v11)
      {
        __assert_rtn("AnnealContour", "ContourUtilities.c", 230, "sPtr != sPtrNext");
      }

      v13 = annealTest(v7, v8, a2, &v29, &v26);
      v14 = v13;
      if (v11)
      {
        v15 = annealTest(v8, v11, a2, &v27, &v25);
        if (v14)
        {
          if (v15)
          {
            ++v9;
            if (v26 < v25)
            {
              v16 = annealSegments(a1, v7, v8);
              *(v7 + 20) = v29;
              *(v7 + 28) = v30;
              *(v7 + 16) = v26;
              if (!v16)
              {
                goto LABEL_17;
              }

              goto LABEL_20;
            }

            v7 = annealSegments(a1, v8, v11);
            *(v8 + 20) = v27;
            *(v8 + 28) = v28;
            *(v8 + 16) = v25;
            if (!v7)
            {
              goto LABEL_32;
            }

LABEL_24:
            v8 = *v7;
            if (*v7)
            {
              goto LABEL_42;
            }
          }

          else
          {
LABEL_19:
            v16 = annealSegments(a1, v7, v8);
            *(v7 + 20) = v29;
            *(v7 + 28) = v30;
            *(v7 + 16) = v26;
            ++v9;
            if (v16)
            {
LABEL_20:
              v8 = *v16;
              if (*v16)
              {
                v11 = *v8;
              }

              else
              {
                v11 = 0;
              }

              v7 = v16;
              goto LABEL_43;
            }

LABEL_17:
            v7 = 0;
LABEL_32:
            v8 = 0;
          }
        }

        else
        {
          if (v15)
          {
            v7 = annealSegments(a1, v8, v11);
            *(v8 + 20) = v27;
            *(v8 + 28) = v28;
            *(v8 + 16) = v25;
            ++v9;
            if (!v7)
            {
              goto LABEL_32;
            }

            goto LABEL_24;
          }

          v19 = v10 == 0;
          if (!v10)
          {
            v10 = v8;
          }

          v20 = v24;
          if (v19)
          {
            v20 = v7;
          }

          v24 = v20;
          v8 = *v11;
          if (*v11)
          {
            v7 = v11;
LABEL_42:
            v11 = *v8;
            goto LABEL_43;
          }

          v7 = v11;
        }

        v11 = 0;
        goto LABEL_43;
      }

      if (v13)
      {
        goto LABEL_19;
      }

      v11 = 0;
      v17 = v10 == 0;
      if (!v10)
      {
        v10 = v8;
      }

      v18 = v24;
      if (v17)
      {
        v18 = v7;
      }

      v24 = v18;
      v7 = 0;
      v8 = 0;
LABEL_43:
      ++v12;
      v21 = *(a1 + 32);
      if (v8 == v21 && v4 && *(a1 + 12) >= 3)
      {
        v11 = *(a1 + 24);
        v12 = -1;
      }
    }

    while (v8 && v12);
    result = (v9 + v23);
  }

  while (v9);
  if (v4)
  {
    v22 = *(a1 + 24);
    if (v10 != v22)
    {
      if (!v10)
      {
        __assert_rtn("AnnealContour", "ContourUtilities.c", 332, "rPtr != NULL");
      }

      *v21 = v22;
      *v24 = 0;
      *(a1 + 24) = v10;
      *(a1 + 32) = v24;
    }
  }

  return result;
}

uint64_t annealTest(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5)
{
  v5 = *(a2 + 40);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  v11 = *(a2 + 20);
  v10 = *(a2 + 24);
  v12 = fabsf(*(a1 + 28) + ((v9 * v7) + (v8 * v6)));
  v13 = fabsf(*(a2 + 28) + ((v10 * v7) + (v11 * v6)));
  if (v12 <= v13)
  {
    v12 = v13;
  }

  v14 = *a3 * *(a3 + 8);
  if (v12 > v14)
  {
    return 0;
  }

  v17 = *(a2 + 12);
  v18 = *(a1 + 40);
  v19 = *v18;
  v20 = v18[1];
  v21 = &v5[2 * v17];
  v22 = *(v21 - 2);
  v23 = *(v21 - 1);
  v24 = (v19 - v6);
  *&v25 = (v9 * v24) - (v8 * (v20 - v7));
  v26 = (v22 - v6);
  v27 = (v23 - v7);
  v28 = (v9 * v26) - (v8 * v27);
  v29.i32[0] = 0;
  v30 = v25;
  v31.i32[0] = 0;
  v31.f32[1] = v28;
  v32 = vsub_s32(vcgt_f32(v31, v30), vcgt_f32(v30, v31));
  if ((vceq_s32(vand_s8(v32, 0xFF000000FFLL), vand_s8(vdup_lane_s32(v32, 1), 0xFF000000FFLL)).u8[0] & 1) == 0)
  {
    return 0;
  }

  v29.f32[1] = (v10 * v24) - (v11 * (v20 - v7));
  v33 = vsub_s32(vcgt_f32(v29, COERCE_UNSIGNED_INT((v10 * v26) - (v11 * v27))), vcgt_f32(COERCE_UNSIGNED_INT((v10 * v26) - (v11 * v27)), v29));
  if ((vceq_s32(vand_s8(v33, 0xFF000000FFLL), vand_s8(vdup_lane_s32(v33, 1), 0xFF000000FFLL)).u32[0] & 1) == 0)
  {
    return 0;
  }

  v37 = *(a3 + 16);
  v38 = *(a1 + 12);
  v39 = (v17 + v38 - 1);
  v40 = v22 - v19;
  v41 = v23 - v20;
  if (v41 >= 0)
  {
    v42 = v41;
  }

  else
  {
    v42 = -v41;
  }

  if (v40 >= 0)
  {
    v43 = v40;
  }

  else
  {
    v43 = -v40;
  }

  v59 = v43;
  v60 = v42;
  v44 = v42 > v43;
  if (v42 <= v43)
  {
    v45 = v40;
  }

  else
  {
    v45 = v41;
  }

  if (!v44)
  {
    v40 = v41;
  }

  v46 = v40 & 0x10000;
  v47 = (v45 >> 23) & 0x100;
  if (v44)
  {
    ++v47;
  }

  v58 = v46;
  v48 = v47 | v46;
  v49 = 4 * v38 - 4;
  memcpy(v37, v18, v49);
  memcpy(&v37[v49], *(a2 + 40), 4 * v17);
  v50 = *(a3 + 16);
  applyCoordTransform(v48, v50, v39);
  v51 = straightLineLSQ(v50, v39);
  if (v14 < v52 && fabsf((*(a1 + 24) * *(a2 + 20)) - (*(a1 + 20) * *(a2 + 24))) > (*(a3 + 4) * *(a3 + 8)))
  {
    return 0;
  }

  if (a5)
  {
    *a5 = v52;
  }

  if (a4)
  {
    v54 = Lsq2Leq(v51);
    if (v58)
    {
      v56 = -v56;
      v54 = -v54;
    }

    if ((v48 & 0x100) != 0)
    {
      v56 = -v56;
      v55 = -v55;
    }

    if (v60 <= v59)
    {
      v57 = v55;
    }

    else
    {
      v57 = v54;
    }

    if (v60 > v59)
    {
      v54 = v55;
    }

    *a4 = v54;
    a4[1] = v57;
    a4[2] = v56;
  }

  return v39;
}

uint64_t annealSegments(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 == a3)
  {
    __assert_rtn("annealSegments", "ContourUtilities.c", 129, "sPrevPtr != sPtr");
  }

  v6 = *(a2 + 12);
  v7 = *(a3 + 3);
  v8 = v6 - 1 + v7;
  if (*(a2 + 40) + 4 * v6 - 4 != a3[5])
  {
    v9 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
    memcpy(v9, *(a2 + 40), 4 * (v6 - 1));
    memcpy(&v9[4 * v6 - 4], a3[5], 4 * v7);
    if (!*(a2 + 32))
    {
      v10 = *(a2 + 40);
      if (v10)
      {
        free(v10);
      }
    }

    *(a2 + 40) = v9;
    *(a2 + 32) = 0;
  }

  *(a2 + 12) = v8;
  *(a3 + 8) = 0;
  if (!*(a3 + 16))
  {
    v11 = a3[5];
    if (v11)
    {
      free(v11);
    }

    a3[5] = 0;
  }

  result = *a3;
  if (*a2)
  {
    *a2 = result;
  }

  --*(a1 + 12);
  if (*(a1 + 24) == a3)
  {
    if (!result)
    {
      __assert_rtn("annealSegments", "ContourUtilities.c", 168, "newCurr != NULL");
    }

    *(a1 + 24) = result;
  }

  else if (*(a1 + 32) == a3)
  {
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t createBridgeSegment(int *a1, int a2, int a3, int a4)
{
  v7 = allocSegments(a1, 1);
  v8 = v7;
  *v7 = 0;
  *(v7 + 32) = a2;
  if (a4 - a3 >= 0)
  {
    v9 = a4 - a3;
  }

  else
  {
    v9 = a3 - a4;
  }

  if ((a4 >> 16) - (a3 >> 16) >= 0)
  {
    v10 = (a4 >> 16) - (a3 >> 16);
  }

  else
  {
    v10 = (a3 >> 16) - (a4 >> 16);
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 + 1;
  *(v7 + 12) = v11 + 1;
  v13 = malloc_type_malloc(4 * (v11 + 1), 0x100004052888210uLL);
  *(v8 + 40) = v13;
  if (BresenhamCoords(a3, a4, v13) != v12)
  {
    __assert_rtn("createBridgeSegment", "ContourUtilities.c", 557, "mPnts == nPnts");
  }

  if (v10 <= v9)
  {
    v14 = a4 - a3;
  }

  else
  {
    v14 = (a4 >> 16) - (a3 >> 16);
  }

  if (v10 <= v9)
  {
    v15 = (a4 >> 16) - (a3 >> 16);
  }

  else
  {
    v15 = a4 - a3;
  }

  v16 = v15 & 0x10000;
  v17 = v14 >> 31;
  if (v10 > v9)
  {
    ++v16;
  }

  v18 = v16 | (v17 << 8);
  applyCoordTransform(v18, *(v8 + 40), v12);
  v19 = straightLineLSQ(*(v8 + 40), v12);
  *(v8 + 16) = v20;
  *(v8 + 20) = Lsq2Leq(v19);
  *(v8 + 24) = v21;
  *(v8 + 28) = v22;
  revertSegmentCoordinateSystem(v8, v12, v18);
  return v8;
}

void calculateContourPartialAreaAndPerimeter(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7)
{
  v7 = *(a1 + 24);
  v8 = v7[5];
  v60 = *(a1 + 12);
  v49 = v8[1];
  if (v60 < 2)
  {
    v31 = a3;
    v30 = a2;
    v12 = 0;
    v33 = 0;
    v23 = 0;
    v24 = 0;
    v17 = 0.0;
    v15 = 0.0;
    v21 = v8[1];
    v32 = *v8;
    v19 = v32;
    v13 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0.0;
    v48 = *v8;
    v14 = *v8;
    v15 = 0.0;
    v16 = v8[1];
    v17 = 0.0;
    v18 = 1;
    do
    {
      v7 = *v7;
      v8 = v7[5];
      v19 = *v8;
      v20 = *v8;
      v21 = v8[1];
      v22 = v8[1];
      v23 = v19 - v14;
      v24 = v21 - v16;
      if (v18 < 2)
      {
        v12 = *v8;
        v11 = v8[1];
      }

      else
      {
        v57 = v11;
        v58 = *v8;
        v25 = v7;
        v26 = v19 - v14;
        v59 = v7[5];
        v27 = *v8;
        v28 = v8[1];
        v29 = atan2f((v24 * v10 - v23 * v9), (v23 * v10 + v24 * v9));
        v11 = v57;
        v20 = v58;
        v21 = v28;
        v19 = v27;
        v8 = v59;
        v23 = v26;
        v7 = v25;
        v13 = v13 + v29;
      }

      v17 = v17 + sqrtf((v23 * v23 + v24 * v24));
      ++v18;
      v9 = v24;
      v15 = v15 + (v21 * v14 - v19 * v16);
      v10 = v23;
      v16 = v22;
      v14 = v20;
    }

    while (v60 != v18);
    v31 = a3;
    v30 = a2;
    v32 = v48;
    v33 = v11;
  }

  v34 = &v8[2 * *(v7 + 3)];
  v35 = *(v34 - 2);
  v36 = *(v34 - 1);
  v37 = v35 - v19;
  v38 = v36 - v21;
  v39 = v15 + (v19 * v36 - v21 * v35);
  v40 = atan2f((v38 * v23 - v37 * v24), (v37 * v23 + v38 * v24));
  *v31 = v17 + sqrtf((v37 * v37 + v38 * v38));
  *v30 = v39;
  *a4 = v13 + v40;
  if (v60 == 1)
  {
    v12 = v35;
    v33 = v36;
  }

  v41 = v32 - v35;
  v42 = v49 - v36;
  v43 = sqrtf((v41 * v41 + v42 * v42));
  v44 = (v49 * v35 - v32 * v36);
  v45 = 0.0;
  v46 = atan2f((v42 * v37 - v38 * v41), (v37 * v41 + v38 * v42)) + 0.0;
  v47 = v46 + atan2f(((v33 - v49) * v41 - (v12 - v32) * v42), ((v12 - v32) * v41 + (v33 - v49) * v42));
  if (*(a1 + 8))
  {
    *a3 = v43 + *a3;
    *a2 = *a2 + v44;
    *a4 = v47 + *a4;
    v44 = 0.0;
    v47 = 0.0;
  }

  else
  {
    v45 = v43;
  }

  *a6 = v45;
  *a5 = v44;
  *a7 = v47;
}

uint64_t reverseContour(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 65534;
    v6 = *(result + 24);
    do
    {
      v7 = v4;
      v4 = v6;
      v6 = *v6;
      *v4 = v7;
      v8 = *(v4 + 16);
      if (v8 <= 0)
      {
        v9 = *(v4 + 3);
        v10 = v9 >> 1;
        if (v9 >> 1 >= 1)
        {
          v11 = v4[5];
          v12 = &v11[v9 - 1];
          do
          {
            v13 = *v12;
            *v12-- = *v11;
            *v11++ = v13;
            --v10;
          }

          while (v10);
        }
      }

      else
      {
        if (*(v4 + 16) == v5)
        {
          if (!v3)
          {
            __assert_rtn("reverseContour", "ContourUtilities.c", 1753, "currCPtr != NULL");
          }
        }

        else
        {
          v3 = *(a2 + 16) + 40 * *(v4 + 16);
          v14 = *(v3 + 4);
          v15 = v14 >> 1;
          if (v14 >> 1 >= 1)
          {
            v16 = *(v3 + 16);
            v17 = &v16[v14 - 1];
            do
            {
              v18 = *v17;
              *v17-- = *v16;
              *v16++ = v18;
              --v15;
            }

            while (v15);
          }

          v5 = v8;
        }

        v4[5] = *(v3 + 16) + 4 * (*(v3 + 4) - (*(v4 + 3) + ((v4[5] - *(v3 + 16)) >> 2)));
        v8 = v5;
      }

      v5 = v8;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  *(result + 24) = v4;
  *(result + 32) = v2;
  return result;
}

void MergeContours(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = *(a1 + 4);
  v11 = llroundf(*(a2 + 104));
  v12 = malloc_type_malloc(4 * v11 * v11, 0x100004052888210uLL);
  v24 = malloc_type_malloc(4 * v11 * v11, 0x100004052888210uLL);
  v13 = malloc_type_malloc(8 * v11 * v11, 0x100004000313F17uLL);
  v14 = malloc_type_malloc(4 * v11 * v11, 0x100004052888210uLL);
  v15 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
  v16 = malloc_type_malloc(2 * v11 * v11, 0x1000040BDFB0063uLL);
  v31[0] = v11;
  BYTE2(v31[0]) = *(a2 + 112);
  v31[1] = a5;
  v31[2] = a6;
  v28 = v13;
  v30 = v12;
  v31[3] = v12;
  v31[4] = v24;
  v17 = v16;
  v31[5] = v13;
  v31[6] = v14;
  v31[7] = v16;
  v31[8] = v15;
  v18 = *(a2 + 76);
  v19 = *(a2 + 80);
  v32 = *(a2 + 8);
  v33 = v18;
  v20 = *(a2 + 92);
  v34 = *(a2 + 88);
  v35 = v19;
  v36 = *(a2 + 108);
  v37 = v20;
  v38 = a1;
  v39 = a4;
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v22 = (*(a1 + 16) + 40 * *(*(a1 + 8) + 2 * i));
      if (*v22 == 1)
      {
        v23 = 0;
        do
        {
          if ((v22[8] & 1) == 0)
          {
            v23 = mergeContourEnd(v22, v31, 1, v7);
            if (!v23)
            {
              v23 = mergeContourEnd(v22, v31, 0, v7);
            }
          }
        }

        while (v23 > 0);
      }
    }
  }

  if (v30)
  {
    free(v30);
  }

  if (v28)
  {
    free(v28);
  }

  if (v14)
  {
    free(v14);
  }

  if (v15)
  {
    free(v15);
  }

  if (v17)
  {
    free(v17);
  }

  if (v24)
  {

    free(v24);
  }
}

uint64_t mergeContourEnd(uint64_t a1, float *a2, int a3, int a4)
{
  v4 = *(a1 + 24);
  v5 = *(v4 + 34);
  if (a3)
  {
    v6 = *(v4 + 40);
    v7 = v6 + 1;
    v8 = &v6[2 * *(v4 + 12)];
    v9 = v8 - 2;
    v10 = v8 - 1;
  }

  else
  {
    v4 = *(a1 + 32);
    v9 = *(v4 + 40);
    v11 = &v9[2 * *(v4 + 12)];
    v6 = v11 - 2;
    v7 = v11 - 1;
    v10 = v9 + 1;
  }

  v225 = a2[19];
  v226 = a2[18];
  v223 = a2[21];
  v12 = *v6;
  v13 = *v7;
  v227 = *v10;
  v228 = *v9;
  v14 = vcvtms_s32_f32(sqrtf(((v12 - v228) * (v12 - v228) + (v13 - v227) * (v13 - v227))));
  v15 = v14 - 1;
  if (*a2 < v14)
  {
    v15 = *a2;
  }

  v16 = *(a2 + 2);
  v17 = v16[2];
  if (v17 - 1 >= (v15 + v12))
  {
    v18 = v15 + v12;
  }

  else
  {
    v18 = v17 - 1;
  }

  v19 = v16[1] - 1;
  if (v19 >= v13 + v15)
  {
    LODWORD(v19) = v13 + v15;
  }

  v255 = *(a2 + 7);
  v254 = *(*(a2 + 12) + 16);
  v20 = v254 + 40 * v5;
  v21 = *(*(v20 + 32) + 40) + 4 * *(*(v20 + 32) + 12);
  v22 = *(v21 - 4);
  v23 = *(v21 - 2);
  v240 = v12;
  if (__PAIR64__(*(*(*(v20 + 24) + 40) + 2), **(*(v20 + 24) + 40)) == __PAIR64__(v13, v12))
  {
    v244 = 1;
  }

  else
  {
    if (v22 != v12 || v23 != v13)
    {
      __assert_rtn("mergeEndpointSearch4", "ContourUtilities.c", 1265, "code1 != -1");
    }

    v244 = 0;
  }

  v24 = ((v13 - v15) & ~((v13 - v15) >> 31));
  v25 = (v13 - v15) & ~((v13 - v15) >> 31) | (v19 << 16);
  if (v24 >= v25 >> 16)
  {
    return 0;
  }

  v253 = v254 + 40 * v5;
  v229 = v4;
  v26 = 0;
  v222 = v5;
  v220 = v5;
  v27 = (v12 - v15) & ~((v12 - v15) >> 31);
  v245 = *(a2 + 4);
  v239 = *(a2 + 6);
  v241 = *(a2 + 3);
  v242 = *(a2 + 5);
  v230 = a2[22];
  v233 = v27 - v12;
  v234 = v13;
  v237 = (v27 | (v18 << 16)) >> 16;
  v238 = v27;
  v28 = v237 - v12;
  v236 = (v25 >> 16) - v13;
  v29 = v24 - v13;
  v221 = v12;
  v232 = (v27 + v12 - v12) << 16;
  v30 = *v16 + 2 * v27 + 2 * v24 * v17;
  v235 = 2 * v17;
  v31 = 1.0;
  v256 = a2;
  LODWORD(v252) = v28;
  do
  {
    if (v238 < v237)
    {
      v32 = 0;
      LODWORD(v265) = v234 + v29;
      v243 = v29 * v29;
      v34 = v232;
      v33 = v233;
      LODWORD(v258) = v29;
      v257 = v30;
      do
      {
        v35 = *(v30 + v32);
        v36 = a4;
        if (v35 > 0)
        {
          v36 = 1;
        }

        if (!(v33 | v29))
        {
          goto LABEL_60;
        }

        v37 = !*(v30 + v32) || v36 == 0;
        if (v37)
        {
          goto LABEL_60;
        }

        if (v35 < 0)
        {
          v35 = -v35;
        }

        *(v255 + 2 * v26) = v35;
        v38 = v254 + 40 * v35;
        v40 = *(v38 + 24);
        v39 = *(v38 + 32);
        v41 = *(v40 + 40);
        v42 = *(v39 + 40);
        v43 = &v42[2 * *(v39 + 12)];
        v266 = v26;
        v263 = *(v43 - 2);
        v261 = *(v43 - 1);
        LODWORD(v260) = *v41;
        if (v34 >> 16 == v260 && v41[1] == v265)
        {
          LODWORD(v259) = 1;
        }

        else
        {
          if (v34 >> 16 != *(v43 - 2) || v265 != *(v43 - 1))
          {
            __assert_rtn("mergeEndpointSearch4", "ContourUtilities.c", 1316, "code2 != -1");
          }

          LODWORD(v259) = 0;
        }

        v273 = 0;
        v274[0] = 0;
        v271 = 0;
        v272 = 0;
        v270 = 0;
        v269 = 0.0;
        v44 = a2[18];
        v45 = *(v40 + 34);
        v46 = *(v253 + 24);
        v47 = *(v46 + 34);
        calculateContourPartialAreaAndPerimeter(v38, v274 + 1, &v272 + 1, &v270 + 1, &v273 + 1, &v271 + 1, &v269);
        v48 = *(&v272 + 1);
        v49 = *(v274 + 1);
        v50 = *(&v270 + 1);
        v51 = *(&v272 + 1) + *(&v271 + 1);
        v52 = *(v274 + 1) + *(&v273 + 1);
        if (v45 == v47)
        {
          a2 = v256;
          v30 = v257;
          v26 = v266;
          v28 = v252;
          v29 = v258;
          if (v52 < (v44 * v51) || roundf(fabsf(*(&v270 + 1) + v269) / 6.2832) != v31)
          {
            goto LABEL_60;
          }

          v53 = 1000.0;
        }

        else
        {
          v54 = v41[1];
          v55 = &v41[2 * *(v40 + 12)];
          v56 = *(v55 - 2);
          v57 = *(v55 - 1);
          v58 = *v42;
          v59 = v42[1];
          calculateContourPartialAreaAndPerimeter(v253, v274, &v272, &v270, &v273, &v271, &v268);
          *&v251 = v52;
          v249 = v59;
          v250 = v58;
          v248 = v56;
          if (v244 == v259)
          {
            v60 = v49 - *v274;
            *&v259 = v50 - *&v270;
            v247 = -(*v274 + *&v273);
            v61 = *(v46 + 40);
            v62 = v61 + 1;
            v63 = &v61[2 * *(v46 + 12)];
            v64 = v63 - 2;
            v65 = v63 - 1;
            v66 = *(v253 + 32);
            v67 = *(v66 + 40);
            v68 = &v67[2 * *(v66 + 12)];
            v69 = v68 - 2;
            v70 = v68 - 1;
            v71 = v67 + 1;
          }

          else
          {
            v60 = v49 + *v274;
            *&v259 = v50 + *&v270;
            v69 = *(v46 + 40);
            v70 = v69 + 1;
            v72 = &v69[2 * *(v46 + 12)];
            v67 = v72 - 2;
            v71 = v72 - 1;
            v73 = *(v253 + 32);
            v64 = *(v73 + 40);
            v74 = &v64[2 * *(v73 + 12)];
            v61 = v74 - 2;
            v62 = v74 - 1;
            v65 = v64 + 1;
            v247 = *v274 + *&v273;
          }

          v75 = *&v272 + *&v271;
          v246 = *v71;
          v76 = *v67;
          v77 = *v62;
          v78 = *v61;
          v79 = *v70;
          v80 = v260 - v78;
          v81 = v54;
          v82 = v54 - v77;
          v83 = *v69;
          v84 = (v48 + *&v272) + sqrtf((v82 * v82 + v80 * v80));
          v85 = v60 + (v78 * v81 - v77 * v260);
          v86 = atan2f(((v78 - *v64) * v82 - v80 * (v77 - *v65)), ((v77 - *v65) * v82 + (v78 - *v64) * v80));
          v87 = atan2f((v80 * (v57 - v81) - v82 * (v248 - v260)), (v82 * (v57 - v81) + v80 * (v248 - v260)));
          v88 = v83 - v263;
          v89 = v79 - v261;
          v90 = v84 + sqrtf((v89 * v89 + v88 * v88));
          v91 = atan2f((v89 * (v263 - v250) - v88 * (v261 - v249)), (v89 * (v261 - v249) + v88 * (v263 - v250)));
          v92 = atan2f((v88 * (v246 - v79) - (v76 - v83) * v89), (v89 * (v246 - v79) + v88 * (v76 - v83)));
          v93 = fabsf(*&v251);
          v94 = fabsf(v247);
          v95 = fabsf(v85 + (v79 * v263 - v83 * v261));
          v53 = 1.0;
          if (v95 < (v44 * v90) && v93 < (v44 * v51) && v94 < (v44 * v75))
          {
            a2 = v256;
            v30 = v257;
            v26 = v266;
            v28 = v252;
            v29 = v258;
            v31 = 1.0;
            v98 = *&v259;
          }

          else
          {
            if (v93 <= v94)
            {
              v93 = v94;
            }

            a2 = v256;
            v30 = v257;
            v26 = v266;
            v28 = v252;
            v29 = v258;
            v31 = 1.0;
            v98 = *&v259;
            if (v93 != 0.0)
            {
              if (v51 <= v75)
              {
                v99 = v75;
              }

              else
              {
                v99 = v51;
              }

              v53 = ((v95 / v93) * *(v256 + 20)) / (v90 / v99);
            }
          }

          if ((roundf(fabsf((((((v98 + v86) + v87) + v91) + v92) * 180.0) / 3.1416)) / 360.0) != v31 || v53 < v31)
          {
            goto LABEL_60;
          }
        }

        v100 = (v239 + 4 * v26);
        *v100 = v240 + v33;
        v241[v26] = (v243 + v33 * v33);
        v100[1] = v265;
        v242[v26] = v26;
        *(v245 + 4 * v26) = v53;
        v26 = (v26 + 1);
LABEL_60:
        ++v33;
        v34 += 0x10000;
        v32 += 2;
      }

      while (v33 < v28);
    }

    ++v29;
    v30 += v235;
  }

  while (v29 < v236);
  if (!v26)
  {
    return 0;
  }

  vDSP_vsorti(v241, v242, 0, v26, 1);
  if (v26 < 1)
  {
    return 0;
  }

  v101 = 0;
  v102 = v26;
  v103 = v256;
  v104 = a1;
  while (v241[v242[v101]] <= v230)
  {
    if (v26 == ++v101)
    {
      goto LABEL_69;
    }
  }

  LODWORD(v26) = v101;
LABEL_69:
  if (v26 >= 2)
  {
    v105 = v26 - 1;
    v106 = 1;
    do
    {
      if (v26 > v106)
      {
        v107 = *v242;
        v108 = v105;
        v109 = v242 + 1;
        do
        {
          if (*(v245 + 4 * v107) >= *(v245 + ((*v109 << 32) >> 30)))
          {
            v107 = *v109;
          }

          else
          {
            *(v109 - 1) = *v109;
            *v109 = v107;
          }

          ++v109;
          --v108;
        }

        while (v108);
      }

      ++v106;
      --v105;
    }

    while (v106 != v26);
  }

  v110 = 0;
  v111 = v221;
  v112 = v234;
  v264 = v102;
  while (2)
  {
    v113 = *(*(v103 + 5) + 8 * v110);
    v114 = *(*(v103 + 7) + 2 * v113);
    v115 = *(*(v103 + 12) + 16) + 40 * v114;
    if ((*v115 & 1) == 0)
    {
      __assert_rtn("mergeContourEnd", "ContourUtilities.c", 1467, "cPtr2->active");
    }

    v116 = (*(v103 + 6) + 4 * v113);
    v117 = *v116;
    v118 = v117;
    v119 = v116[1];
    v120 = *(v115 + 24);
    v121 = *(v120 + 40);
    if (*v121 == v117 && *(v121 + 1) == v119)
    {
      v122 = &v121[*(v120 + 12) - 1];
      v123 = *(v115 + 32);
      v124 = *(v123 + 40);
      v125 = *(v123 + 12);
      v126 = (v124 + 4 * v125 - 4);
      v127 = 1;
    }

    else
    {
      v120 = *(v115 + 32);
      v124 = *(v120 + 40);
      v125 = *(v120 + 12);
      v128 = v124 + 4 * v125;
      if (*(v128 - 4) != v118 || *(v128 - 2) != v119)
      {
        __assert_rtn("mergeContourEnd", "ContourUtilities.c", 1482, "PCOORD_EQUAL(sPtr2->pary[sPtr2->nPnts-1], pc3)");
      }

      v127 = 0;
      v126 = v121;
      v122 = *(v120 + 40);
    }

    v129 = *v122;
    if (a4 && *(*(v103 + 3) + 4 * v113) > 8.0)
    {
      v130 = *(v229 + 20);
      v131 = *(v229 + 24);
      v132 = *(v229 + 28);
      v133 = *(v120 + 20);
      v134 = *(v120 + 24);
      v135 = *(v120 + 28);
      v136 = v131 * v119;
      v137 = fabsf(v132 + (v136 + (v130 * v118)));
      v138 = v135 + ((v134 * v112) + (v133 * v111));
      v139 = fabsf(v138);
      if (v137 <= v139)
      {
        v137 = v139;
      }

      if (v137 > (v226 + v226) || (v143.i32[0] = 0, v143.f32[1] = (v131 * (v129 - v221)) - (v130 * ((v129 >> 16) - v234)), v144 = vsub_s32(vcgt_f32(v143, COERCE_UNSIGNED_INT((v131 * (v228 - v221)) - (v130 * (v227 - v234)))), vcgt_f32(COERCE_UNSIGNED_INT((v131 * (v228 - v221)) - (v130 * (v227 - v234))), v143)), v145 = v144.i32[0], v144.i32[0] != v144.i32[1]) || (*&v140 = (v134 * (v129 - v118)) - (v133 * ((v129 >> 16) - v119)), v146 = (__PAIR64__(*&v140 > 0.0, v140) - COERCE_UNSIGNED_INT(0.0)) >> 32, *&v147 = ((v227 - v119) * -v133) + (v134 * (v228 - v118)), v146 != (__PAIR64__(*&v147 < 0.0, 0.0) - v147) >> 32) || (v221 != v118 || v234 != v119) && ((*&v141 = (v131 * (v118 - v221)) - (v130 * (v119 - v234)), (__PAIR64__(*&v141 < 0.0, 0.0) - v141) >> 32 == v145) ? (*&v142 = (v134 * (v221 - v118)) - (v133 * (v234 - v119)), v148 = v146 == (__PAIR64__(*&v142 < 0.0, 0.0) - v142) >> 32) : (v148 = 0), !v148))
      {
        if (fabsf((v130 * v134) - (v131 * v133)) >= v223)
        {
          if (v228 == v118 && v227 == v119)
          {
            goto LABEL_108;
          }

          v150.f32[0] = v132 + ((v131 * (v129 >> 16)) + (v130 * v129));
          v150.f32[1] = v132 + (v136 + (v130 * v118));
          v151 = vsub_s32(vcltz_f32(v150), vcgtz_f32(v150));
          if (v151.i32[0] == v151.i32[1] || (__PAIR64__((v132 + ((v131 * v112) + (v130 * v111))) > 0.0, v132 + ((v131 * v112) + (v130 * v111))) - COERCE_UNSIGNED_INT(0.0)) >> 32 == v151.i32[1])
          {
            v152.f32[0] = v135 + ((v134 * v227) + (v133 * v228));
            v152.f32[1] = v138;
            v153 = vsub_s32(vcltz_f32(v152), vcgtz_f32(v152));
            if (v153.i32[0] == v153.i32[1] || (__PAIR64__((v132 + (v136 + (v133 * v118))) > 0.0, v132 + (v136 + (v133 * v118))) - COERCE_UNSIGNED_INT(0.0)) >> 32 == v153.i32[1])
            {
              goto LABEL_108;
            }
          }
        }

LABEL_154:
        if (++v110 == v102)
        {
          return 0;
        }

        continue;
      }

      v154 = 0;
    }

    else
    {
LABEL_108:
      v154 = 1;
    }

    break;
  }

  v155 = (v124 + 4 * v125 - 4);
  v262 = *v126;
  if (a3)
  {
    if (v127 == a3)
    {
      v155 = v121;
    }

    v121 = *(*(v104 + 24) + 40);
  }

  else
  {
    if (!v127)
    {
      v121 = v155;
    }

    v155 = (*(*(v104 + 32) + 40) + 4 * *(*(v104 + 32) + 12) - 4);
  }

  v156 = *v121;
  v157 = *v155;
  v265 = v265 & 0xFFFFFFFF00000000 | v157;
  v266 = v266 & 0xFFFFFFFF00000000 | v156;
  if (!checkBridgeCrossing(v103, *v155, *v121))
  {
    v103 = v256;
    v102 = v264;
    goto LABEL_154;
  }

  v158 = v114;
  v159 = a3 | (2 * v127);
  if ((v154 & 1) == 0 && fabsf((*(v229 + 24) * *(v120 + 20)) - (*(v229 + 20) * *(v120 + 24))) > v225)
  {
    if (v222 == v158)
    {
      BridgeSegment = createBridgeSegment(*(v256 + 13), v220 << 16, v157, v156);
      v104 = a1;
      goto LABEL_162;
    }

    v160 = *(v256 + 8);
    if (v159 > 1)
    {
      if (v159 == 2)
      {
        v170 = v229;
        memcpy(v160, *(v229 + 40), 4 * *(v229 + 12) - 4);
        v171 = *(v256 + 8) + 4 * *(v229 + 12) - 4;
        v255 = v255 & 0xFFFFFFFF00000000 | v157;
        v257 = v257 & 0xFFFFFFFF00000000 | v156;
        v163 = BresenhamCoords(v157, v156, v171);
        memcpy((v171 + 4 * v163 - 4), *(v120 + 40), 4 * *(v120 + 12));
        v167 = a3;
        v104 = a1;
        goto LABEL_138;
      }

      v175 = *(v120 + 12);
      v176 = v175;
      if (v175 < 1)
      {
        v180 = v258;
        v179 = v259;
      }

      else
      {
        v177 = (*(v120 + 40) + 4 * v175 - 4);
        v178 = *(v256 + 8);
        v180 = v258;
        v179 = v259;
        do
        {
          v181 = *v177--;
          *v178++ = v181;
          --v175;
        }

        while (v175);
        v176 = *(v120 + 12);
      }

      v172 = v160 + 4 * v176 - 4;
      v173 = v157;
      v174 = v156;
      v258 = v180 & 0xFFFFFFFF00000000 | v157;
      v259 = v179 & 0xFFFFFFFF00000000 | v156;
    }

    else
    {
      if (!v159)
      {
        memcpy(v160, *(v229 + 40), 4 * *(v229 + 12) - 4);
        v161 = *(v256 + 8) + 4 * *(v229 + 12) - 4;
        v251 = v251 & 0xFFFFFFFF00000000 | v157;
        v252 = v252 & 0xFFFFFFFF00000000 | v156;
        v162 = BresenhamCoords(v157, v156, v161);
        v163 = v162;
        v164 = *(v120 + 12);
        if (v164 >= 1)
        {
          v165 = (v161 + 4 * v162 - 4);
          v166 = (*(v120 + 40) + 4 * v164 - 4);
          v167 = a3;
          v168 = v260;
          do
          {
            v169 = *v166--;
            *v165++ = v169;
            LODWORD(v164) = v164 - 1;
          }

          while (v164);
          v104 = a1;
          v170 = v229;
          goto LABEL_139;
        }

        v104 = a1;
        v167 = a3;
        v170 = v229;
LABEL_138:
        v168 = v260;
LABEL_139:
        v182 = *(v170 + 12);
        v183 = v129 >> 16;
        if (v167)
        {
          v184 = v228 - v129;
          v186 = v227 - v183;
          v185 = v227 - v183 < 0;
        }

        else
        {
          v184 = v129 - v228;
          v186 = v183 - v227;
          v185 = v183 - v227 < 0;
        }

        if (v185)
        {
          v187 = -v186;
        }

        else
        {
          v187 = v186;
        }

        if (v184 >= 0)
        {
          v188 = v184;
        }

        else
        {
          v188 = -v184;
        }

        v189 = v187 > v188;
        v190 = v187 > v188;
        if (v189)
        {
          v191 = v186;
        }

        else
        {
          v191 = v184;
        }

        if (!v189)
        {
          v184 = v186;
        }

        v102 = v264;
        v192 = v163 + v182 + *(v120 + 12) - 2;
        v260 = v168 & 0xFFFFFFFFFF000000 | v184 & 0x10000 | v190 | (v191 >> 31 << 8);
        applyCoordTransform(v260, *(v256 + 8), v192);
        straightLineLSQ(*(v256 + 8), v192);
        v103 = v256;
        if (v226 >= v193)
        {
          BridgeSegment = createBridgeSegment(*(v256 + 13), v220 << 16, v157, v156);
          v196 = v222;
LABEL_168:
          v207 = *(v115 + 24);
          if (v207)
          {
            v208 = *(v115 + 24);
            do
            {
              *(v208 + 17) = v196;
              v208 = *v208;
            }

            while (v208);
          }

          v209 = *(v104 + 12) + *(v115 + 12) + 1;
          v210 = v256;
          if (v159 > 1)
          {
            if (v159 == 2)
            {
              **(v104 + 32) = BridgeSegment;
              *BridgeSegment = v207;
              *(v104 + 32) = *(v115 + 32);
            }

            else
            {
              reverseContour(v115, *(v256 + 12));
              v196 = v222;
              v210 = v256;
              v212 = *(v115 + 24);
              **(v115 + 32) = BridgeSegment;
              *BridgeSegment = *(v104 + 24);
              *(v104 + 24) = v212;
            }
          }

          else if (v159)
          {
            **(v115 + 32) = BridgeSegment;
            *BridgeSegment = *(v104 + 24);
            *(v104 + 24) = v207;
          }

          else
          {
            **(v104 + 32) = BridgeSegment;
            reverseContour(v115, *(v256 + 12));
            v196 = v222;
            v210 = v256;
            v211 = *(v115 + 32);
            *BridgeSegment = *(v115 + 24);
            *(v104 + 32) = v211;
          }

          v206 = v262;
          *(v104 + 12) = v209;
          *v115 = 0;
          v213 = *(BridgeSegment + 12);
          if (v213 >= 1)
          {
            v214 = *(v210 + 1);
            v215 = *v214;
            v216 = v214[3] << 32;
            v217 = (*(BridgeSegment + 40) + 2);
            do
            {
              *(v215 + *(v217 - 1) + ((v216 * *v217) >> 32)) = 1;
              v217 += 2;
              --v213;
            }

            while (v213);
          }

          v218 = *(v210 + 2);
          v203 = *v218;
          v219 = *v218 + 2 * v157;
          v205 = v218[3];
          *(v219 + v205 * (v157 >> 16)) = 0;
          *(v203 + 2 * v156 + v205 * (v156 >> 16)) = 0;
          result = 1;
          LODWORD(v156) = v262;
          goto LABEL_182;
        }

        goto LABEL_154;
      }

      memcpy(v160, *(v120 + 40), 4 * *(v120 + 12) - 4);
      v172 = *(v256 + 8) + 4 * *(v120 + 12) - 4;
      v173 = v157;
      v174 = v156;
      v253 = v253 & 0xFFFFFFFF00000000 | v157;
      v254 = v254 & 0xFFFFFFFF00000000 | v156;
    }

    v163 = BresenhamCoords(v173, v174, v172);
    v170 = v229;
    memcpy((v172 + 4 * v163 - 4), *(v229 + 40), 4 * *(v229 + 12));
    v104 = a1;
    v167 = a3;
    goto LABEL_138;
  }

  BridgeSegment = createBridgeSegment(*(v256 + 13), v220 << 16, v157, v156);
  v196 = v222;
  v37 = v222 == v158;
  v104 = a1;
  if (!v37)
  {
    goto LABEL_168;
  }

LABEL_162:
  *(v104 + 8) = 1;
  ++*(v104 + 12);
  **(v104 + 32) = BridgeSegment;
  *BridgeSegment = 0;
  *(v104 + 32) = BridgeSegment;
  if ((v159 - 3) <= 0xFFFFFFFD)
  {
    __assert_rtn("mergeContourEnd", "ContourUtilities.c", 1633, "(code == 1) || (code == 2)");
  }

  v197 = *(BridgeSegment + 12);
  if (v197 >= 1)
  {
    v198 = *(v256 + 1);
    v199 = *v198;
    v200 = v198[3] << 32;
    v201 = (*(BridgeSegment + 40) + 2);
    do
    {
      *(v199 + *(v201 - 1) + ((v200 * *v201) >> 32)) = 1;
      v201 += 2;
      --v197;
    }

    while (v197);
  }

  v196 = 0;
  v202 = *(v256 + 2);
  v203 = *v202;
  v204 = *v202 + 2 * v157;
  v205 = v202[3];
  *(v204 + v205 * (v157 >> 16)) = 0;
  result = 0xFFFFFFFFLL;
  v206 = v156;
LABEL_182:
  *(v203 + 2 * v206 + v205 * (v156 >> 16)) = v196;
  return result;
}