void *___ZL53getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLocv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ModelIOLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL18ModelIOLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782FB320;
    v6 = 0;
    ModelIOLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v2 = ModelIOLibraryCore(char **)::frameworkLibrary;
  if (!ModelIOLibraryCore(char **)::frameworkLibrary)
  {
    ___ZL53getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLocv_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MDLAssetLoadingOptionDefaultUSDColorSpace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL18ModelIOLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ModelIOLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *anonymous namespace::_normalizedKeyTimes(void *a1, double a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v7 = [a1 count];
  if (a3 != 0.0 && v7 > 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(a1);
          }

          [*(*(&v15 + 1) + 8 * v12) doubleValue];
          [v6 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", (v13 - a2) / a3)}];
          ++v12;
        }

        while (v10 != v12);
        v10 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [v6 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  }

  return v6;
}

void *anonymous namespace::_valuesWithMDLAnimatedVector3Array(uint64_t a1, int a2, int a3, int a4)
{
  v6 = a2;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:a2];
  if (v6 >= 1)
  {
    v11 = 16 * a3;
    v12 = a1 + 16 * a4;
    do
    {
      LODWORD(v9) = HIDWORD(*v12);
      LODWORD(v10) = *(v12 + 8);
      [v8 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNVector3:", *v12, v9, v10)}];
      v12 += v11;
      --v6;
    }

    while (v6);
  }

  return v8;
}

uint64_t anonymous namespace::_getBoundSkeleton(_anonymous_namespace_ *this, MDLObject *a2)
{
  v2 = [(_anonymous_namespace_ *)this componentConformingToProtocol:&unk_282E4E338];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v3 skeleton];
}

void *anonymous namespace::_findMeshes(void *a1, float32x4_t *a2, void *a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_transform(a1))
  {
    v39 = *a2;
    v40 = a2[1];
    v37 = a2[3];
    v38 = a2[2];
    [objc_msgSend_transform(a1) matrix];
    v8 = 0;
    v45[0] = v9;
    v45[1] = v10;
    v45[2] = v11;
    v45[3] = v12;
    do
    {
      *(&v46 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(v45[v8])), v40, *&v45[v8], 1), v38, v45[v8], 2), v37, v45[v8], 3);
      ++v8;
    }

    while (v8 != 4);
  }

  else
  {
    v13 = a2[1];
    v46 = *a2;
    v47 = v13;
    v14 = a2[3];
    v48 = a2[2];
    v49 = v14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 addObject:a1];
    v15 = *(a4 + 8);
    v16 = *(a4 + 16);
    if (v15 >= v16)
    {
      v20 = (v15 - *a4) >> 6;
      v21 = v20 + 1;
      if ((v20 + 1) >> 58)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = v16 - *a4;
      if (v22 >> 5 > v21)
      {
        v21 = v22 >> 5;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFC0)
      {
        v23 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<simd_float4x4>>(a4, v23);
      }

      v24 = v20 << 6;
      v25 = v47;
      *v24 = v46;
      *(v24 + 16) = v25;
      v26 = v49;
      *(v24 + 32) = v48;
      *(v24 + 48) = v26;
      v19 = (v20 << 6) + 64;
      v27 = *(a4 + 8) - *a4;
      v28 = (v20 << 6) - v27;
      memcpy((v24 - v27), *a4, v27);
      v29 = *a4;
      *a4 = v28;
      *(a4 + 8) = v19;
      *(a4 + 16) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v17 = v47;
      *v15 = v46;
      v15[1] = v17;
      v18 = v49;
      v15[2] = v48;
      v15[3] = v18;
      v19 = &v15[4];
    }

    *(a4 + 8) = v19;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = [a1 children];
  result = [v30 countByEnumeratingWithState:&v41 objects:v50 count:16];
  v33 = result;
  if (result)
  {
    v34 = *v42;
    do
    {
      v35 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v41 + 1) + 8 * v35);
        {
        }

        v35 = v35 + 1;
      }

      while (v33 != v35);
      result = [v30 countByEnumeratingWithState:&v41 objects:v50 count:16];
      v33 = result;
    }

    while (result);
  }

  return result;
}

uint64_t **std::map<MDLSkeleton *,anonymous namespace::SkelNodes>::operator[](uint64_t **a1, uint64_t **a2)
{
  v2 = a1[1];
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return (v4 + 5);
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *anonymous namespace::boneInverseTransformsFromMDL(_anonymous_namespace_ *this, MDLAnimationBindComponent *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  a28 = *MEMORY[0x277D85DE8];
  v29 = [(_anonymous_namespace_ *)this skeleton:a3];
  v30 = [objc_msgSend(v29 "jointBindTransforms")];
  v31 = [(_anonymous_namespace_ *)this jointPaths];
  v32 = v31;
  if (v31)
  {
    v31 = objc_opt_new();
    v33 = v31;
    if (v30)
    {
      for (i = 0; i != v30; ++i)
      {
        v31 = [v33 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", i), objc_msgSend(objc_msgSend(v29, "jointPaths"), "objectAtIndexedSubscript:", i)}];
      }
    }
  }

  else
  {
    v33 = 0;
  }

  v35 = (&v51 - 16 * v30) & 0xFFFFFFFFFFFFFFE0;
  [objc_msgSend(v29 jointBindTransforms];
  if (v32)
  {
    v30 = [-[_anonymous_namespace_ jointPaths](this "jointPaths")];
  }

  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:v30];
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      v38 = j;
      if (v32)
      {
        v38 = [objc_msgSend(v33 objectForKeyedSubscript:{objc_msgSend(-[_anonymous_namespace_ jointPaths](this, "jointPaths"), "objectAtIndexedSubscript:", j)), "unsignedLongValue"}];
      }

      v39 = (v35 + (v38 << 7));
      v40 = v39[5];
      a21 = v39[4];
      a22 = v40;
      v41 = v39[7];
      a23 = v39[6];
      a24 = v41;
      v42 = v39[1];
      a17 = *v39;
      a18 = v42;
      v43 = v39[3];
      a19 = v39[2];
      a20 = v43;
      __invert_d4();
      v44 = MEMORY[0x277CCAE60];
      a17 = v46;
      a18 = v47;
      a19 = v48;
      a20 = v49;
      [v36 addObject:{objc_msgSend(v44, "valueWithSCNMatrix4:", &a17)}];
    }
  }

  if (v33)
  {
  }

  return v36;
}

uint64_t anonymous namespace::_getRootNodeName(_anonymous_namespace_ *this, MDLPackedJointAnimation *a2)
{
  if (![-[_anonymous_namespace_ jointPaths](this "jointPaths")])
  {
    return 0;
  }

  v3 = [-[_anonymous_namespace_ jointPaths](this "jointPaths")];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  if (![v3 length])
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_([v4 substringToIndex:1]))
  {
    v4 = [v4 substringFromIndex:1];
  }

  v5 = [v4 rangeOfString:@"/"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v4;
  }

  return [v4 substringToIndex:v5];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<simd_float4x4>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__tree<std::__value_type<MDLSkeleton *,anonymous namespace::SkelNodes>,std::__map_value_compare<MDLSkeleton *,std::__value_type<MDLSkeleton *,anonymous namespace::SkelNodes>,std::less<MDLSkeleton *>,true>,std::allocator<std::__value_type<MDLSkeleton *,anonymous namespace::SkelNodes>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

double convertUVTranformForModelIO(const simd_float4x4 *a1)
{
  v1 = 0;
  v2 = *MEMORY[0x277D860B8];
  v3 = *(MEMORY[0x277D860B8] + 16);
  v4 = a1->columns[1];
  v5 = vmulq_f32(a1->columns[0], a1->columns[0]);
  *v5.i8 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  v6 = vmulq_f32(v4, v4);
  *v6.i8 = vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v7 = vsqrt_f32(vadd_f32(vzip1_s32(*v5.i8, *v6.i8), vzip2_s32(*v5.i8, *v6.i8)));
  v8 = a1->columns[2];
  v9 = a1->columns[3];
  v10 = vmulq_f32(v8, v8);
  v11 = vextq_s8(v10, v10, 8uLL).u64[0];
  v11.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v10.f32, v11)));
  *v10.f32 = v7;
  v10.i64[1] = __PAIR64__(1.0, v11.u32[0]);
  __asm { FMOV            V5.4S, #1.0 }

  v17 = vdivq_f32(_Q5, v10);
  v18.i64[0] = 0;
  v18.i64[1] = v17.u32[2];
  v19 = *(MEMORY[0x277D860B8] + 32);
  v20 = *(MEMORY[0x277D860B8] + 48);
  v21 = vdivq_f32(a1->columns[0], vdupq_lane_s32(v7, 0));
  v22 = vdivq_f32(v4, vdupq_lane_s32(v7, 1));
  v23 = vdivq_f32(v8, vdupq_lane_s32(v11, 0));
  v24 = vzip1q_s32(v21, v23);
  v25 = vzip2q_s32(v21, v23);
  v26 = vzip1q_s32(v22, v20);
  v27 = vzip2q_s32(v22, v20);
  v28 = vzip1q_s32(v24, v26);
  v29 = vzip1q_s32(v25, v27);
  v41 = v8;
  v42 = v9;
  do
  {
    *(&v43 + v1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v39 + v1))), v3, *(&v39 + v1), 1), v19, *(&v39 + v1), 2), xmmword_21C27F7F0, *(&v39 + v1), 3);
    v1 += 16;
  }

  while (v1 != 64);
  v30 = 0;
  v32.i64[0] = 0;
  v32.i32[2] = 0;
  v31.i32[0] = 0;
  v31.i64[1] = 0;
  v31.i32[1] = v17.i32[1];
  v32.i32[3] = v17.i32[3];
  v33 = vzip2q_s32(v24, v26);
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17.u32[0], COERCE_FLOAT(*(&v39 + v30))), v31, *(&v39 + v30), 1), v18, *(&v39 + v30), 2), v32, *(&v39 + v30), 3);
    v30 += 16;
  }

  while (v30 != 64);
  v34 = 0;
  v35 = vzip2q_s32(v25, v27);
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v39 + v34))), v33, *(&v39 + v34), 1), v29, *(&v39 + v34), 2), v35, *(&v39 + v34), 3);
    v34 += 16;
  }

  while (v34 != 64);
  v36 = 0;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v39 + v36))), v3, *(&v39 + v36), 1), v19, *(&v39 + v36), 2), xmmword_21C27F800, *(&v39 + v36), 3);
    v36 += 16;
  }

  while (v36 != 64);
  v37 = vmulq_n_f32(v21, *v7.i32);
  v37.i32[1] = vnegq_f32(v37).i32[1];
  return *v37.i64;
}

void *std::__tree<std::__value_type<unsigned long long,float>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,float>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,float>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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
      v7 = v4[4];
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

uint64_t *std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int **a4)
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
      v7 = *(v4 + 28);
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

void std::vector<float>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<double>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<unsigned char>::reserve(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<unsigned short>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<unsigned int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, __n);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

C3D::RenderPass *C3D::SSAORaytracePass::SSAORaytracePass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  result = C3D::RenderPass::RenderPass(a1, a2, a3);
  *result = &unk_282DC2680;
  *(result + 31) = a4;
  return result;
}

float32x4_t C3D::SSAORaytracePass::setup(C3D::Pass ***this)
{
  C3D::Pass::setInputCount(this, 2u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 4), 0) + 8) = "SSAO-DepthNormal";
  *(C3D::PassDescriptor::inputAtIndex((this + 4), 1) + 8) = "SSAO-MinMaxOffset";
  v2 = C3D::PassDescriptor::outputAtIndex((this + 4), 0);
  *(v2 + 65) = 0;
  C3D::Pass::parentColorDesc(&v10, this);
  *(v2 + 16) = v10;
  *(v2 + 32) = v11;
  *(v2 + 28) = 115;
  v3 = C3D::Pass::descriptor(*this[31]);
  *(v2 + 16) = *(C3D::PassDescriptor::outputAtIndex(v3, 0) + 16) / *(this[31] + 3);
  v4 = C3D::Pass::descriptor(*this[31]);
  *(v2 + 18) = *(C3D::PassDescriptor::outputAtIndex(v4, 0) + 18) / *(this[31] + 3);
  *(v2 + 66) &= 0xFFFCu;
  if (*(v2 + 24) == 5)
  {
    *(this + 19) = 6;
  }

  else if (C3DEngineContextGetEyeCount(this[2]) >= 2)
  {
    EyeCount = C3DEngineContextGetEyeCount(this[2]);
    *(this + 19) = EyeCount;
    *(this + 121) = 1;
    if (EyeCount)
    {
      v7 = 0;
      do
      {
        ViewportAtIndex = C3DEngineContextGetViewportAtIndex(this[2], v7);
        *v9.i32 = *(this[31] + 3);
        result = vdivq_f32(ViewportAtIndex, vdupq_lane_s32(v9, 0));
        *&this[2 * v7++ + 16] = result;
      }

      while (v7 < *(this + 19));
    }
  }

  return result;
}

void C3D::SSAORaytracePass::compile(C3D::SSAORaytracePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = *(*(this + 31) + 16) | (2 * *(*(this + 31) + 17)) | (4 * *(*(this + 31) + 12)) | (*(*(this + 31) + 8) << 6);
  v5 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))));
  v6 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47));
  *(this + 30) = v6;
  if (!v6)
  {
    operator new();
  }
}

void C3D::SSAORaytracePass::execute(C3D::Pass *a1, uint64_t a2)
{
  v4 = *a2;
  PointOfView = C3DEngineContextGetPointOfView(*(a1 + 2), a2);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView, v6);
    if (Camera)
    {
      v9 = Camera;
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(a1 + 2), *(a2 + 16));
      v39 = vmulq_n_f32(ViewportAtIndex, C3DEngineContextGetSuperSamplingFactor(*(a1 + 2)));
      v11 = fmax(C3DCameraGetScreenSpaceAmbientOcclusionRadius(v9, v10) * 1000.0, 0.001);
      v42 = v11;
      v43 = v11 * v11;
      v13 = fmax(C3DCameraGetScreenSpaceAmbientOcclusionIntensity(v9, v12), 0.0);
      v14 = v13 / powf(v11, 6.0);
      v45 = v14;
      v46 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(v9, v15), 0.0);
      v47 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionNormalThreshold(v9, v16), 0.0);
      v44 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionBias(v9, v17), 0.0);
      v41 = 1140457472;
      v18 = *(a1 + 31);
      *v19.i32 = *(v18 + 12);
      v20 = vdupq_lane_s32(v19, 0);
      v37 = vextq_s8(v39, v39, 8uLL).u64[0];
      *v21.f32 = vdiv_f32(v37, *v20.f32);
      v21.i64[1] = v21.i64[0];
      v20.i64[0] = vdivq_f32(v39, v20).u64[0];
      v20.i64[1] = vaddq_f32(vdupq_lane_s64(*&v39, 0), v21).i64[1];
      v40[1] = v20;
      v22 = C3D::DrawNodesPass::getCullingContext(*v18) + (*(a2 + 16) << 6);
      LODWORD(v23) = *(v22 + 1360);
      *v24.f32 = vdiv_f32(COERCE_FLOAT32X2_T(-2.00000048), v37);
      __asm { FMOV            V2.2S, #-1.0 }

      *&v24.i64[1] = -_D2;
      HIDWORD(v23) = *(v22 + 1380);
      v40[0] = vdivq_f32(v24, vdupq_lane_s64(v23, 0));
      v31 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 30) + 16 :v30) detail:"state" :?NSRetainFct];
      if (*(v4 + 3376) != v31)
      {
        *(v4 + 3376) = v31;
        [*(v4 + 3392) setRenderPipelineState:v31];
      }

      SCNMTLRenderCommandEncoder::setFragmentBytes(v4, v40, 0x40uLL, 0);
      v32 = C3D::Pass::inputTextureAtIndex(a1, 0);
      SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v32, 0);
      v33 = C3D::Pass::inputTextureAtIndex(a1, 1);
      SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v33, 1uLL);
      SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4, v34);
    }

    else if ((C3D::SSAORaytracePass::execute(C3D::RenderArgs const&)::done & 1) == 0)
    {
      C3D::SSAORaytracePass::execute(C3D::RenderArgs const&)::done = 1;
      v36 = scn_default_log(0, v8);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        C3D::SSAORaytracePass::execute(v36);
      }
    }
  }

  else if ((C3D::SSAORaytracePass::execute(C3D::RenderArgs const&)::done & 1) == 0)
  {
    C3D::SSAORaytracePass::execute(C3D::RenderArgs const&)::done = 1;
    v35 = scn_default_log(0, v6);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      C3D::SSAORaytracePass::execute(v35);
    }
  }
}

void C3D::SSAORaytracePassResource::~SSAORaytracePassResource(C3D::SSAORaytracePassResource *this)
{
  *this = &unk_282DC26F0;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC26F0;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t C3DMeshElementGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DMeshElementGetTypeID_onceToken != -1)
  {
    C3DMeshElementGetTypeID_cold_1();
  }

  return C3DMeshElementGetTypeID_typeID;
}

double __C3DMeshElementGetTypeID_block_invoke()
{
  C3DMeshElementGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DMeshElementContextClassSerializable;
  unk_281740C88 = kC3DC3DMeshElementContextClassSerializable;
  unk_281740C98 = *off_282DC2750;
  qword_281740C40 = _C3DMeshElementCopyInstanceVariables;
  return result;
}

uint64_t C3DMeshElementCreate(uint64_t a1, uint64_t a2)
{
  if (C3DMeshElementGetTypeID_onceToken != -1)
  {
    C3DMeshElementGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMeshElementGetTypeID_typeID, 208);
  if (!Instance)
  {
    v4 = scn_default_log(0, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(Instance + 88) = 0;
  *(Instance + 96) = 0;
  *(Instance + 128) = 0x10000;
  *(Instance + 112) = 0;
  *(Instance + 120) = 0;
  *(Instance + 68) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(Instance + 144) = _D0;
  *(Instance + 152) = 1065353216;
  return Instance;
}

uint64_t C3DMeshElementGetEmptyElement(uint64_t a1, uint64_t a2)
{
  if (C3DMeshElementGetEmptyElement_onceToken != -1)
  {
    C3DMeshElementGetEmptyElement_cold_1();
  }

  return emptyMeshElement;
}

uint64_t __C3DMeshElementGetEmptyElement_block_invoke(uint64_t a1, uint64_t a2)
{
  result = C3DMeshElementCreate(a1, a2);
  emptyMeshElement = result;
  return result;
}

void C3DMeshElementInitIndexed(uint64_t a1, uint64_t a2, int a3, char a4, char a5, const void *a6, char a7)
{
  C3DMeshElementSetType(a1, a2);
  *(a1 + 130) = a4;
  *(a1 + 131) = a5;
  *(a1 + 104) = a3;
  __SetIndexes(a1, a6, a7);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
}

void C3DMeshElementSetType(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 88) = v2;
}

CFTypeRef C3DMeshElementInitIndexedWithMTLBuffer(uint64_t a1, uint64_t a2, int a3, char a4, char a5, const void *a6, char a7)
{
  C3DMeshElementSetType(a1, a2);
  *(a1 + 130) = a4;
  *(a1 + 131) = a5;
  *(a1 + 104) = a3;
  __SetIndexes(a1, 0, a7);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result = CFRetain(a6);
  *(a1 + 136) = result;
  return result;
}

uint64_t C3DMeshElementCreateCopy(_BOOL8 Copy_cold_1, uint64_t a2)
{
  v2 = Copy_cold_1;
  if (!Copy_cold_1)
  {
    v3 = scn_default_log(0, a2);
    Copy_cold_1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (Copy_cold_1)
    {
      C3DGeometryCreateCopy_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMeshElementCreate(Copy_cold_1, a2);
  __C3DMeshElementCopy(v2, v10, 0);
  return v10;
}

void __C3DMeshElementCopy(_BOOL8 a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  *(a2 + 80) = *(v5 + 80);
  *(a2 + 88) = *(v5 + 88);
  v21 = *(v5 + 96);
  if (a3 && v21)
  {
    Copy = CFDataCreateCopy(0, v21);
    v23 = *(a2 + 96);
    if (v23 != Copy)
    {
      if (v23)
      {
        CFRelease(v23);
        *(a2 + 96) = 0;
      }

      if (Copy)
      {
        v24 = CFRetain(Copy);
      }

      else
      {
        v24 = 0;
      }

      *(a2 + 96) = v24;
    }

    CFRelease(Copy);
  }

  else
  {
    v25 = *(a2 + 96);
    if (v25 != v21)
    {
      if (v25)
      {
        CFRelease(v25);
        *(a2 + 96) = 0;
        v21 = *(v5 + 96);
      }

      if (v21)
      {
        v26 = CFRetain(v21);
      }

      else
      {
        v26 = 0;
      }

      *(a2 + 96) = v26;
    }
  }

  *(a2 + 104) = *(v5 + 104);
  free(*(a2 + 112));
  *(a2 + 112) = 0;
  if (*(v5 + 112))
  {
    v27 = 4 * *(v5 + 104);
    v28 = malloc_type_malloc(v27, 0xF801574uLL);
    *(a2 + 112) = v28;
    memcpy(v28, *(v5 + 112), v27);
  }

  free(*(a2 + 120));
  *(a2 + 120) = 0;
  if (*(v5 + 120))
  {
    v29 = 2 * *(v5 + 128);
    v30 = malloc_type_malloc(v29, 0xB9BB065DuLL);
    *(a2 + 120) = v30;
    memcpy(v30, *(v5 + 120), v29);
  }

  *(a2 + 128) = *(v5 + 128);
  C3DEntityCopyTo(v5, a2);
}

uint64_t C3DMeshElementCreateDeepCopy(_BOOL8 Copy_cold_1, uint64_t a2)
{
  v2 = Copy_cold_1;
  if (!Copy_cold_1)
  {
    v3 = scn_default_log(0, a2);
    Copy_cold_1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (Copy_cold_1)
    {
      C3DGeometryCreateCopy_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMeshElementCreate(Copy_cold_1, a2);
  __C3DMeshElementCopy(v2, v10, 1);
  return v10;
}

CFTypeRef C3DMeshElementSetPrimitiveNormals(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 168);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 168) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 168) = result;
  }

  return result;
}

uint64_t C3DMeshElementGetPrimitiveNormals(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 168);
}

uint64_t C3DMeshElementCreateByMergingElements(CFArrayRef theArray, uint64_t a2)
{
  if (!theArray)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreateByMergingElements_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v13 = Count;
  if (Count < 1)
  {
    ValueAtIndex = 0;
    v17 = 1;
  }

  else
  {
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
      if (C3DMeshElementGetType(ValueAtIndex, v16) < 6)
      {
        break;
      }

      if (v13 == ++v14)
      {
        ValueAtIndex = 0;
        LODWORD(v14) = 0;
        break;
      }
    }

    v17 = (v14 + 1);
  }

  DoubleSided = C3DMeshElementGetDoubleSided(ValueAtIndex, v12);
  IndexCount = C3DMeshElementGetIndexCount(ValueAtIndex, v19);
  Type = C3DMeshElementGetType(ValueAtIndex, v21);
  v24 = Type;
  v25 = ValueAtIndex[80];
  if (Type == 1)
  {
    v26 = scn_default_log(Type, v23);
    Type = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (Type)
    {
      C3DMeshElementCreateByMergingElements_cold_2();
    }
  }

  while (1)
  {
    if (v13 <= v17)
    {
      v29 = C3DMeshElementCreate(Type, v23);
      PrimitiveNormals = C3DMeshElementGetPrimitiveNormals(ValueAtIndex, v30);
      C3DMeshElementSetPrimitiveNormals(v29, PrimitiveNormals);
      C3DMeshElementSetDoubleSided(v29, DoubleSided);
      C3DMeshElementSetType(v29, v24);
      Mutable = CFDataCreateMutable(0, IndexCount * v25);
      CFDataSetLength(Mutable, IndexCount * v25);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      if (v13 >= 1)
      {
        v35 = MutableBytePtr;
        for (i = 0; i != v13; ++i)
        {
          v37 = CFArrayGetValueAtIndex(theArray, i);
          if (C3DMeshElementGetType(v37, v38) <= 5)
          {
            Length = CFDataGetLength(v37[12]);
            BytePtr = CFDataGetBytePtr(v37[12]);
            memcpy(v35, BytePtr, Length);
            v35 += Length;
          }
        }
      }

      IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(v29, v34);
      if (IndexCountPerPrimitive <= 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = IndexCountPerPrimitive;
      }

      *(v29 + 104) = IndexCount / v42;
      __SetIndexes(v29, Mutable, v25);
      free(*(v29 + 120));
      *(v29 + 120) = 0;
      *(v29 + 128) = 0;
      CFRelease(Mutable);
      return v29;
    }

    v27 = CFArrayGetValueAtIndex(theArray, v17);
    Type = C3DMeshElementGetType(v27, v28);
    if (Type <= 5)
    {
      break;
    }

LABEL_18:
    ++v17;
  }

  Type = C3DMeshElementGetIndexCount(v27, v23);
  if (v25 == v27[80])
  {
    IndexCount += Type;
    goto LABEL_18;
  }

  v43 = scn_default_log(Type, v23);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    C3DMeshElementCreateByMergingElements_cold_3();
  }

  return 0;
}

uint64_t C3DMeshElementGetType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

BOOL C3DMeshElementGetDoubleSided(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 81) != 0;
}

uint64_t C3DMeshElementGetIndexCount(uint64_t a1, uint64_t a2)
{
  Type = C3DMeshElementGetType(a1, a2);
  v4 = *(a1 + 104);
  if (Type == 4)
  {
    v5 = *(a1 + 80);
    Length = CFDataGetLength(*(a1 + 96));
    BytePtr = CFDataGetBytePtr(*(a1 + 96));
    if (!v4)
    {
      return 0;
    }

    v8 = BytePtr;
    v9 = 0;
    v10 = 0;
    do
    {
      v9 += __readIndexInBuffer(v8, v10, v5, Length);
      v10 = (v10 + 1);
    }

    while (v4 != v10);
    return v9;
  }

  else
  {
    v11 = *(a1 + 104);

    return C3DMeshElementGetIndexCountWithTypeAndPrimitiveCount(Type, v11);
  }
}

void C3DMeshElementSetDoubleSided(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 81) = v2;
}

uint64_t C3DMeshElementGetIndexCountPerPrimitive(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 88);
  if (v2 < 4)
  {
    return qword_21C27F888[v2];
  }

  v4 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "C3DMeshElementGetIndexCountPerPrimitive";
    _os_log_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_DEFAULT, "Warning: %s does not support non-renderable topologies.", &v5, 0xCu);
  }

  return 0;
}

void C3DMeshElementSetPrimitives(uint64_t a1, int a2, CFTypeRef cf, char a4)
{
  *(a1 + 104) = a2;
  __SetIndexes(a1, cf, a4);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
}

void __SetIndexes(uint64_t a1, CFTypeRef cf, char a3)
{
  *(a1 + 80) = a3;
  v4 = *(a1 + 96);
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      v4 = CFRetain(cf);
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 96) = v4;
  }

  if (*(a1 + 112))
  {
    free(*(a1 + 112));
    *(a1 + 112) = 0;
    v4 = *(a1 + 96);
  }

  if (v4)
  {
    Length = CFDataGetLength(v4);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    IndexCount = C3DMeshElementGetIndexCount(a1, v9);
    if (Length < v7 + IndexCount * v8)
    {
      v12 = scn_default_log(IndexCount, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __SetIndexes_cold_1();
      }

      v13 = *(a1 + 96);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 96) = 0;
      }
    }
  }
}

uint64_t C3DMeshElementGetIndexes(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 80);
  }

  return *(a1 + 96);
}

uint64_t C3DMeshElementGetPrimitiveRange(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    return **(a1 + 120);
  }

  else
  {
    return -1;
  }
}

void *C3DMeshElementSetPrimitiveRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  result = *(a1 + 120);
  if (!v6)
  {
    result = malloc_type_realloc(result, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 120) = result;
  }

  *result = a2;
  result[1] = a3;
  *(a1 + 128) = 1;
  return result;
}

uint64_t C3DMeshElementGetPrimitiveRanges(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 128);
  }

  return *(a1 + 120);
}

void C3DMeshElementSetPrimitiveRangesNoCopy(uint64_t a1, uint64_t a2, __int16 a3)
{
  free(*(a1 + 120));
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
}

uint64_t C3DMeshElementEnumeratePrimitiveRanges(uint64_t result, uint64_t a2)
{
  if (*(result + 120))
  {
    v2 = result;
    if (*(result + 128))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        result = (*(a2 + 16))(a2, *(*(v2 + 120) + v4), *(*(v2 + 120) + v4 + 8));
        ++v5;
        v4 += 16;
      }

      while (v5 < *(v2 + 128));
    }
  }

  return result;
}

uint64_t C3DMeshElementGetPrimitiveCountByEvaluatingPrimitiveRanges(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    return *(a1 + 104);
  }

  v2 = *(a1 + 128);
  if (!*(a1 + 128))
  {
    return 0;
  }

  result = 0;
  v4 = (v1 + 8);
  do
  {
    v5 = *v4;
    v4 += 2;
    result += v5;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t C3DMeshElementEnumeratePrimitiveIndicesByEvaluatingPrimitiveRanges(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 120))
  {
    v4 = *(result + 128);
    if (*(result + 128))
    {
      v5 = 0;
      do
      {
        v6 = (*(v3 + 120) + 16 * v5);
        v7 = *v6;
        v8 = *(v6 + 1);
        if (v7 < v8 + v7)
        {
          do
          {
            result = (*(a2 + 16))(a2, v7);
            v7 = (v7 + 1);
            LODWORD(v8) = v8 - 1;
          }

          while (v8);
          v4 = *(v3 + 128);
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }

  else if (*(result + 104))
  {
    v9 = 0;
    do
    {
      result = (*(a2 + 16))(a2, v9);
      v9 = (v9 + 1);
    }

    while (v9 < *(v3 + 104));
  }

  return result;
}

uint64_t C3DMeshElementGetContent@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *(a1 + 130);
  if ((a2 & 0x8000000000000000) != 0 || v6 <= a2)
  {
    v7 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementGetContent_cold_1(v6, v3, v7);
    }
  }

  v8 = *(a1 + 131);
  if ((v8 & 1) == 0)
  {
    v3 *= C3DMeshElementGetIndexCount(a1, a2);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    BytePtr = CFDataGetBytePtr(v9);
    v11 = *(a1 + 96);
    if (v11)
    {
      Length = CFDataGetLength(v11);
      goto LABEL_12;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_12:
  result = C3DMeshElementGetType(a1, a2);
  if (BytePtr)
  {
    v14 = result == 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 80);
  v17 = (v15 * v16);
  if (!v14)
  {
    v17 = 0;
  }

  *a3 = &BytePtr[v17];
  *(a3 + 8) = Length - v17;
  if (v8)
  {
    v18 = v6;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(a1 + 120);
  *(a3 + 16) = 0;
  *(a3 + 24) = v19;
  *(a3 + 16) = v15;
  v20 = *(a1 + 128);
  if (result == 4)
  {
    v21 = BytePtr;
  }

  else
  {
    v21 = 0;
  }

  *(a3 + 32) = 0;
  *(a3 + 40) = v21;
  *(a3 + 32) = v20;
  *(a3 + 34) = *(a1 + 88);
  *(a3 + 35) = v16;
  *(a3 + 48) = v3;
  *(a3 + 56) = v18;
  return result;
}

uint64_t C3DMeshElementGetVertexCountForPrimitiveAtIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 4)
  {
    Length = CFDataGetLength(*(a1 + 96));
    BytePtr = CFDataGetBytePtr(*(a1 + 96));
    return __readIndexInBuffer(BytePtr, a2, *(a1 + 80), Length);
  }

  else
  {

    return C3DMeshElementGetIndexCountPerPrimitive(a1, a2);
  }
}

uint64_t __readIndexInBuffer(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2;
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 + 1) * a3 <= a4)
  {
    switch(a3)
    {
      case 4uLL:
        return *(a1 + 4 * a2);
      case 2uLL:
        return *(a1 + 2 * a2);
      case 1uLL:
        return *(a1 + a2);
      default:
        v9 = scn_default_log(a1, a2);
        result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
        if (result)
        {
          __readIndexInBuffer_cold_1(a3, v9);
          return 0;
        }

        break;
    }
  }

  else
  {
    v7 = scn_default_log(a1, a2);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10[0] = 67109376;
      v10[1] = v5;
      v11 = 2048;
      v12 = a4 / a3;
      _os_log_error_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_ERROR, "Error: __readIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t C3DMeshElementGetIndexCountWithTypeAndPrimitiveCount(uint64_t a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      a2 *= 3;
      return a2;
    }

    if (a1 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v2 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      C3DMeshElementGetIndexCountWithTypeAndPrimitiveCount_cold_1();
    }

    return 0;
  }

  if (a1 == 2)
  {
    a2 *= 2;
    return a2;
  }

  if (a1 != 3)
  {
    if (a1 == 5)
    {
LABEL_5:
      a2 += 2;
      return a2;
    }

    goto LABEL_8;
  }

  return a2;
}

const UInt8 *C3DMeshElementGetFastIndexLookupInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (*(a1 + 88) == 4)
  {
    _C3DMeshElementComputePolygonOffsetsIfNeeded(a1, a2);
    *a3 = *(a1 + 112);
    *(a3 + 8) = *(a1 + 104);
    v13 = 1;
  }

  else
  {
    IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(a1, a2);
    v13 = 0;
    *a3 = IndexCountPerPrimitive;
  }

  *(a3 + 37) = *(a1 + 130);
  *(a3 + 38) = v13 | (2 * *(a1 + 131));
  *(a3 + 32) = C3DMeshElementGetIndexCount(a1, v12);
  v15 = *(a1 + 96);
  if (v15)
  {
    v16 = *(a1 + 80);
    Length = CFDataGetLength(*(a1 + 96));
    result = CFDataGetBytePtr(v15);
  }

  else
  {
    v16 = 0;
    Length = 0;
    result = 0;
  }

  *(a3 + 36) = v16;
  *(a3 + 16) = result;
  *(a3 + 24) = Length;
  return result;
}

uint64_t _C3DMeshElementComputePolygonOffsetsIfNeeded(uint64_t result, uint64_t a2)
{
  if (!*(result + 112))
  {
    v2 = result;
    if (*(result + 88) != 4)
    {
      v3 = scn_default_log(result, a2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        _C3DMeshElementComputePolygonOffsetsIfNeeded_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    v11 = *(v2 + 80);
    Length = CFDataGetLength(*(v2 + 96));
    result = CFDataGetBytePtr(*(v2 + 96));
    if (result)
    {
      v13 = result;
      v14 = *(v2 + 104);
      result = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
      *(v2 + 112) = result;
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          result = __readIndexInBuffer(v13, v15, v11, Length);
          v16 += result;
          *(*(v2 + 112) + 4 * v15++) = v16;
        }

        while (v14 != v15);
      }
    }
  }

  return result;
}

uint64_t C3DMeshElementGetIndexUsingFastIndexLookupInfo(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 38))
  {
    v4 = 0;
    v5 = *(a1 + 8);
    if (a2 >= 1 && *a1)
    {
      v4 = *(*a1 + 4 * a2 - 4);
    }

    if ((*(a1 + 38) & 2) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v4 = *a1 * a2;
    if ((*(a1 + 38) & 2) == 0)
    {
LABEL_6:
      a4 *= *(a1 + 32);
      v6 = 1;
      goto LABEL_9;
    }
  }

  v6 = *(a1 + 37);
LABEL_9:
  if (*(a1 + 16))
  {
    return __readIndexInBuffer(*(a1 + 16), (a4 + v5 + v6 * (v4 + a3)), *(a1 + 36), *(a1 + 24));
  }

  else
  {
    return (a4 + v5 + v6 * (v4 + a3));
  }
}

uint64_t C3DMeshElementGetIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (*(a1 + 88) == 4)
  {
    v15 = *(a1 + 104);
    _C3DMeshElementComputePolygonOffsetsIfNeeded(a1, a2);
    v17 = 0;
    if (a2 >= 1)
    {
      v18 = *(a1 + 112);
      if (v18)
      {
        v17 = *(v18 + 4 * a2 - 4);
      }
    }
  }

  else
  {
    v15 = 0;
    v17 = C3DMeshElementGetIndexCountPerPrimitive(a1, a2) * a2;
  }

  if (*(a1 + 131))
  {
    v19 = *(a1 + 130);
  }

  else
  {
    a4 *= C3DMeshElementGetIndexCount(a1, v16);
    v19 = 1;
  }

  v20 = a4 + v15 + v19 * (a3 + v17);
  v21 = *(a1 + 96);
  if (!v21)
  {
    return v20;
  }

  v22 = *(a1 + 80);
  Length = CFDataGetLength(v21);
  BytePtr = CFDataGetBytePtr(v21);
  return __readIndexInBuffer(BytePtr, v20, v22, Length);
}

uint64_t C3DMeshElementGetChannelsDefineSameTopology(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  IndexCount = C3DMeshElementGetIndexCount(a1, a2);
  v14 = *(a1 + 80);
  Length = CFDataGetLength(*(a1 + 96));
  BytePtr = CFDataGetBytePtr(*(a1 + 96));
  v17 = BytePtr;
  if (*(a1 + 88) == 4)
  {
    v18 = *(a1 + 104) * v14;
    v19 = Length > v18;
    Length -= v18;
    if (!v19)
    {
      C3DMeshElementGetChannelsDefineSameTopology_cold_2();
    }

    v17 = &BytePtr[v18];
  }

  if (*(a1 + 131) == 1)
  {
    if (IndexCount)
    {
      v20 = 0;
      while (1)
      {
        IndexInBuffer = __readIndexInBuffer(v17, v4 + v20 * *(a1 + 130), v14, Length);
        if (IndexInBuffer != __readIndexInBuffer(v17, a3 + v20 * *(a1 + 130), v14, Length))
        {
          break;
        }

        if (IndexCount == ++v20)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else if (memcmp((v17 + v14 * (IndexCount * v4)), (v17 + v14 * (IndexCount * a3)), IndexCount * v14))
  {
    return 0;
  }

  return 1;
}

uint64_t C3DMeshElementGetAllChannelsDefineSameTopology(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 130);
  if (v11 < 2)
  {
    return 1;
  }

  for (i = 1; i < v11; ++i)
  {
    result = C3DMeshElementGetChannelsDefineSameTopology(a1, 0, i);
    if (!result)
    {
      break;
    }
  }

  return result;
}

void C3DMeshElementSetSharedMeshElement(uint64_t a1, char *cf, int a3, int a4)
{
  v8 = *(a1 + 72);
  if (v8 != cf)
  {
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      v9 = CFRetain(cf);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 72) = v9;
  }

  v10 = cf[80];
  v11 = *(cf + 12);
  *(a1 + 104) = a4;
  *(a1 + 64) = a3;

  __SetIndexes(a1, v11, v10);
}

uint64_t C3DMeshElementGetSharedMeshElement(uint64_t result)
{
  if (*(result + 72))
  {
    return *(result + 72);
  }

  return result;
}

uint64_t C3DMeshElementGetSharedIndexBufferOffset(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

void C3DMeshElementSetInstanceCount(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 68) = v2;
}

uint64_t C3DMeshElementGetInstanceCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 68);
}

uint64_t C3DMeshElementCreateVolatile(uint64_t a1, uint64_t a2)
{
  result = C3DMeshElementCreate(a1, a2);
  *(result + 82) = 1;
  return result;
}

BOOL C3DMeshElementIsVolatile(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 82) != 0;
}

void C3DMeshElementSetVolatileDataPtr(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 160) = a2;
}

uint64_t C3DMeshElementGetVolatileDataPtr(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 160);
}

uint64_t C3DMeshElementGetBytesPerIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

void C3DIndicesContentEnumeratePrimitives(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3.n128_u64[0] = MEMORY[0x277D85DD0];
  a3.n128_u64[0] = 0x40000000;
  v3.n128_u64[1] = 0x40000000;
  v4 = __C3DIndicesContentEnumeratePrimitives_block_invoke;
  v5 = &unk_2782FB3C0;
  v6 = a2;
  C3DIndicesContentArrayEnumeratePrimitives(a1, 1, &v3, a3);
}

void C3DIndicesContentArrayEnumeratePrimitives(uint64_t result, uint64_t a2, __n128 *a3, __n128 a4)
{
  v246 = a3;
  v4 = a2;
  v261 = *MEMORY[0x277D85DE8];
  v5 = *(result + 34);
  v248 = *(result + 16);
  v6 = *(result + 35);
  v247 = result;
  v7 = *(result + 40);
  v250 = 0;
  v242 = a2;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (a2 == 1)
      {
        v8 = *v247;
        v9 = *(v247 + 8);
        v10 = *(v247 + 48);
        v11 = *(v247 + 56);
        if (v6 == 1)
        {
          if (v248)
          {
            v207 = 0;
            v208 = 1;
            a4.n128_u64[0] = 67109376;
            v249 = a4;
            do
            {
              v209 = v10 + v11 * (v208 - 1);
              v210 = v10 + v11 * v208;
              if (v210 <= v209)
              {
                v211 = v10 + v11 * (v208 - 1);
              }

              else
              {
                v211 = v10 + v11 * v208;
              }

              if (v9 >= (v211 + 1))
              {
                *v251 = v8->n128_u8[v209];
                v213 = v8->n128_u8[v210];
              }

              else
              {
                v212 = scn_default_log(result, a2);
                if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
                {
                  *buf = v249.n128_u32[0];
                  *&buf[4] = v211;
                  *&buf[8] = 2048;
                  *&buf[10] = v9;
                  _os_log_error_impl(&dword_21BEF7000, v212, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v213 = 0;
                *v251 = 0;
              }

              *&v251[4] = v213;
              result = (v246[1].n128_u64[0])(v246, v207, v251, 2, &v250);
              if (v250)
              {
                break;
              }

              ++v207;
              v208 += 2;
            }

            while (v248 != v207);
          }
        }

        else if (v6 == 2)
        {
          if (v248)
          {
            v182 = 0;
            v183 = 1;
            a4.n128_u64[0] = 67109376;
            v249 = a4;
            do
            {
              v184 = v10 + v11 * (v183 - 1);
              v185 = v10 + v11 * v183;
              if (v185 <= v184)
              {
                v186 = v10 + v11 * (v183 - 1);
              }

              else
              {
                v186 = v10 + v11 * v183;
              }

              if (v9 >= (2 * v186 + 2))
              {
                *v251 = v8->n128_u16[v184];
                v188 = v8->n128_u16[v185];
              }

              else
              {
                v187 = scn_default_log(result, a2);
                if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                {
                  *buf = v249.n128_u32[0];
                  *&buf[4] = v186;
                  *&buf[8] = 2048;
                  *&buf[10] = v9 >> 1;
                  _os_log_error_impl(&dword_21BEF7000, v187, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v188 = 0;
                *v251 = 0;
              }

              *&v251[4] = v188;
              result = (v246[1].n128_u64[0])(v246, v182, v251, 2, &v250);
              if (v250)
              {
                break;
              }

              ++v182;
              v183 += 2;
            }

            while (v248 != v182);
          }
        }

        else if (v6 == 4 && v248)
        {
          v12 = 0;
          v13 = 1;
          a4.n128_u64[0] = 67109376;
          v249 = a4;
          do
          {
            v14 = v10 + v11 * (v13 - 1);
            v15 = v10 + v11 * v13;
            if (v15 <= v14)
            {
              v16 = v10 + v11 * (v13 - 1);
            }

            else
            {
              v16 = v10 + v11 * v13;
            }

            if (v9 >= (4 * v16 + 4))
            {
              *v251 = v8->n128_u32[v14];
              v18 = v8->n128_u32[v15];
            }

            else
            {
              v17 = scn_default_log(result, a2);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v249.n128_u32[0];
                *&buf[4] = v16;
                *&buf[8] = 2048;
                *&buf[10] = v9 >> 2;
                _os_log_error_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
              }

              v18 = 0;
              *v251 = 0;
            }

            *&v251[4] = v18;
            result = (v246[1].n128_u64[0])(v246, v12, v251, 2, &v250);
            if (v250)
            {
              break;
            }

            ++v12;
            v13 += 2;
          }

          while (v248 != v12);
        }
      }

      else
      {
        *&v244 = &v232;
        MEMORY[0x28223BE20](result);
        v249.n128_u64[0] = v232.n128_u64 - v138;
        if (v6 == 1)
        {
          if (v248)
          {
            v214 = 0;
            v245 = v246 + 1;
            v215 = 4 * v136;
            v243.n128_u64[0] = v247 + 35;
            *&v137 = 67109376;
            v241 = v137;
            do
            {
              v247 = v214;
              if (v4)
              {
                v216 = 0;
                v217 = 2 * v247;
                v218 = (2 * v247) | 1;
                v219 = v243.n128_u64[0];
                v220 = v249.n128_u64[0];
                do
                {
                  v221 = *(v219 - 27);
                  v222 = *v219;
                  v223 = *(v219 + 13);
                  v224 = *(v219 + 21);
                  v225 = v223 + v224 * v217;
                  v226 = v223 + v224 * v218;
                  if (v226 <= v225)
                  {
                    v227 = v225;
                  }

                  else
                  {
                    v227 = v226;
                  }

                  if (v221 >= v222 + v222 * v227)
                  {
                    v230 = *(v219 - 35);
                    *v220 = *(v230 + v225);
                    v229 = *(v230 + v226);
                  }

                  else
                  {
                    v228 = scn_default_log(v134, v135);
                    v134 = os_log_type_enabled(v228, OS_LOG_TYPE_ERROR);
                    if (v134)
                    {
                      *buf = v241;
                      *&buf[4] = v227;
                      *&buf[8] = 2048;
                      *&buf[10] = v221 / v222;
                      _os_log_error_impl(&dword_21BEF7000, v228, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v229 = 0;
                  }

                  v219 += 64;
                  v220[v215 / 4] = v229;
                  ++v220;
                  v216 += 4;
                }

                while (v215 != v216);
              }

              v231 = v247;
              v134 = (v246[1].n128_u64[0])(v246, v247, v249.n128_u64[0], 2, &v250);
              if (v250)
              {
                break;
              }

              v214 = v231 + 1;
              v4 = v242;
            }

            while (v214 != v248);
          }
        }

        else if (v6 == 2)
        {
          if (v248)
          {
            v189 = 0;
            v245 = v246 + 1;
            v190 = 4 * v136;
            v243.n128_u64[0] = v247 + 35;
            *&v137 = 67109376;
            v241 = v137;
            do
            {
              v247 = v189;
              if (v4)
              {
                v191 = 0;
                v192 = 2 * v247;
                v193 = (2 * v247) | 1;
                v194 = v243.n128_u64[0];
                v195 = v249.n128_u64[0];
                do
                {
                  v196 = *(v194 - 27);
                  v197 = *v194;
                  v198 = *(v194 + 13);
                  v199 = *(v194 + 21);
                  v200 = v198 + v199 * v192;
                  v201 = v198 + v199 * v193;
                  if (v201 <= v200)
                  {
                    v202 = v200;
                  }

                  else
                  {
                    v202 = v201;
                  }

                  if (v196 >= v197 + v197 * v202)
                  {
                    v205 = *(v194 - 35);
                    *v195 = *(v205 + 2 * v200);
                    v204 = *(v205 + 2 * v201);
                  }

                  else
                  {
                    v203 = scn_default_log(v134, v135);
                    v134 = os_log_type_enabled(v203, OS_LOG_TYPE_ERROR);
                    if (v134)
                    {
                      *buf = v241;
                      *&buf[4] = v202;
                      *&buf[8] = 2048;
                      *&buf[10] = v196 / v197;
                      _os_log_error_impl(&dword_21BEF7000, v203, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v204 = 0;
                  }

                  v194 += 64;
                  v195[v190 / 4] = v204;
                  ++v195;
                  v191 += 4;
                }

                while (v190 != v191);
              }

              v206 = v247;
              v134 = (v246[1].n128_u64[0])(v246, v247, v249.n128_u64[0], 2, &v250);
              if (v250)
              {
                break;
              }

              v189 = v206 + 1;
              v4 = v242;
            }

            while (v189 != v248);
          }
        }

        else if (v6 == 4 && v248)
        {
          v139 = 0;
          v245 = v246 + 1;
          v140 = 4 * v136;
          v243.n128_u64[0] = v247 + 35;
          *&v137 = 67109376;
          v241 = v137;
          do
          {
            v247 = v139;
            if (v4)
            {
              v141 = 0;
              v142 = 2 * v247;
              v143 = (2 * v247) | 1;
              v144 = v243.n128_u64[0];
              v145 = v249.n128_u64[0];
              do
              {
                v146 = *(v144 - 27);
                v147 = *v144;
                v148 = *(v144 + 13);
                v149 = *(v144 + 21);
                v150 = v148 + v149 * v142;
                v151 = v148 + v149 * v143;
                if (v151 <= v150)
                {
                  v152 = v150;
                }

                else
                {
                  v152 = v151;
                }

                if (v146 >= v147 + v147 * v152)
                {
                  v155 = *(v144 - 35);
                  *v145 = *(v155 + 4 * v150);
                  v154 = *(v155 + 4 * v151);
                }

                else
                {
                  v153 = scn_default_log(v134, v135);
                  v134 = os_log_type_enabled(v153, OS_LOG_TYPE_ERROR);
                  if (v134)
                  {
                    *buf = v241;
                    *&buf[4] = v152;
                    *&buf[8] = 2048;
                    *&buf[10] = v146 / v147;
                    _os_log_error_impl(&dword_21BEF7000, v153, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v154 = 0;
                }

                v144 += 64;
                v145[v140 / 4] = v154;
                ++v145;
                v141 += 4;
              }

              while (v140 != v141);
            }

            v156 = v247;
            v134 = (v246[1].n128_u64[0])(v246, v247, v249.n128_u64[0], 2, &v250);
            if (v250)
            {
              break;
            }

            v139 = v156 + 1;
            v4 = v242;
          }

          while (v139 != v248);
        }
      }

      return;
    }

    goto LABEL_102;
  }

  switch(v5)
  {
    case 3:
      if (a2 == 1)
      {
        v110 = *v247;
        v111 = *(v247 + 8);
        v112 = *(v247 + 48);
        v113 = *(v247 + 56);
        *v251 = 0;
        if (v6 == 1)
        {
          if (v248)
          {
            v170 = 0;
            a4.n128_u64[0] = 67109376;
            v249 = a4;
            do
            {
              if (v111 >= (v112 + 1))
              {
                v172 = v110->n128_u8[v112];
              }

              else
              {
                v171 = scn_default_log(result, a2);
                if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
                {
                  *buf = v249.n128_u32[0];
                  *&buf[4] = v112;
                  *&buf[8] = 2048;
                  *&buf[10] = v111;
                  _os_log_error_impl(&dword_21BEF7000, v171, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v172 = 0;
              }

              *v251 = v172;
              result = (v246[1].n128_u64[0])(v246, v170, v251, 1, &v250);
              if (v250)
              {
                break;
              }

              ++v170;
              LODWORD(v112) = v112 + v113;
            }

            while (v248 != v170);
          }
        }

        else if (v6 == 2)
        {
          if (v248)
          {
            v157 = 0;
            v158 = 2 * v112 + 2;
            a4.n128_u64[0] = 67109376;
            v249 = a4;
            do
            {
              if (v111 >= (v158 & 0xFFFFFFFE))
              {
                v160 = v110->n128_u16[v112];
              }

              else
              {
                v159 = scn_default_log(result, a2);
                if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
                {
                  *buf = v249.n128_u32[0];
                  *&buf[4] = v112;
                  *&buf[8] = 2048;
                  *&buf[10] = v111 >> 1;
                  _os_log_error_impl(&dword_21BEF7000, v159, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v160 = 0;
              }

              *v251 = v160;
              result = (v246[1].n128_u64[0])(v246, v157, v251, 1, &v250);
              if (v250)
              {
                break;
              }

              ++v157;
              v158 += 2 * v113;
              LODWORD(v112) = v112 + v113;
            }

            while (v248 != v157);
          }
        }

        else if (v6 == 4 && v248)
        {
          v114 = 0;
          v115 = 4 * v112 + 4;
          a4.n128_u64[0] = 67109376;
          v249 = a4;
          do
          {
            if (v111 >= (v115 & 0xFFFFFFFC))
            {
              v117 = v110->n128_i32[v112];
            }

            else
            {
              v116 = scn_default_log(result, a2);
              if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
              {
                *buf = v249.n128_u32[0];
                *&buf[4] = v112;
                *&buf[8] = 2048;
                *&buf[10] = v111 >> 2;
                _os_log_error_impl(&dword_21BEF7000, v116, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
              }

              v117 = 0;
            }

            *v251 = v117;
            result = (v246[1].n128_u64[0])(v246, v114, v251, 1, &v250);
            if (v250)
            {
              break;
            }

            ++v114;
            v115 += 4 * v113;
            LODWORD(v112) = v112 + v113;
          }

          while (v248 != v114);
        }
      }

      else
      {
        v245 = &v232;
        v119 = a2;
        MEMORY[0x28223BE20](result);
        v124 = &v232 - v123;
        if (v6 == 1)
        {
          if (v248)
          {
            v173 = 0;
            v249.n128_u64[0] = v246[1].n128_u64;
            v247 += 35;
            *&v122 = 67109376;
            v244 = v122;
            do
            {
              v174 = v119;
              v175 = v247;
              v176 = v124;
              if (v242)
              {
                do
                {
                  v177 = *(v175 - 27);
                  v178 = *v175;
                  v179 = *(v175 + 13) + *(v175 + 21) * v173;
                  if (v177 >= v178 + v178 * v179)
                  {
                    v181 = *(*(v175 - 35) + v179);
                  }

                  else
                  {
                    v180 = scn_default_log(v120, v121);
                    v120 = os_log_type_enabled(v180, OS_LOG_TYPE_ERROR);
                    if (v120)
                    {
                      *buf = v244;
                      *&buf[4] = v179;
                      *&buf[8] = 2048;
                      *&buf[10] = v177 / v178;
                      _os_log_error_impl(&dword_21BEF7000, v180, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v181 = 0;
                  }

                  v175 += 64;
                  *v176 = v181;
                  v176 += 4;
                  --v174;
                }

                while (v174);
              }

              v120 = (v246[1].n128_u64[0])(v246, v173, v124, 1, &v250);
              if (v250)
              {
                break;
              }

              ++v173;
            }

            while (v173 != v248);
          }
        }

        else if (v6 == 2)
        {
          if (v248)
          {
            v161 = 0;
            v249.n128_u64[0] = v246[1].n128_u64;
            v247 += 35;
            *&v122 = 67109376;
            v244 = v122;
            do
            {
              v162 = v119;
              v163 = v247;
              v164 = v124;
              if (v242)
              {
                do
                {
                  v165 = *(v163 - 27);
                  v166 = *v163;
                  v167 = *(v163 + 13) + *(v163 + 21) * v161;
                  if (v165 >= v166 + v166 * v167)
                  {
                    v169 = *(*(v163 - 35) + 2 * v167);
                  }

                  else
                  {
                    v168 = scn_default_log(v120, v121);
                    v120 = os_log_type_enabled(v168, OS_LOG_TYPE_ERROR);
                    if (v120)
                    {
                      *buf = v244;
                      *&buf[4] = v167;
                      *&buf[8] = 2048;
                      *&buf[10] = v165 / v166;
                      _os_log_error_impl(&dword_21BEF7000, v168, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v169 = 0;
                  }

                  v163 += 64;
                  *v164 = v169;
                  v164 += 4;
                  --v162;
                }

                while (v162);
              }

              v120 = (v246[1].n128_u64[0])(v246, v161, v124, 1, &v250);
              if (v250)
              {
                break;
              }

              ++v161;
            }

            while (v161 != v248);
          }
        }

        else if (v6 == 4 && v248)
        {
          v125 = 0;
          v249.n128_u64[0] = v246[1].n128_u64;
          v247 += 35;
          *&v122 = 67109376;
          v244 = v122;
          do
          {
            v126 = v119;
            v127 = v247;
            v128 = v124;
            if (v242)
            {
              do
              {
                v129 = *(v127 - 27);
                v130 = *v127;
                v131 = *(v127 + 13) + *(v127 + 21) * v125;
                if (v129 >= v130 + v130 * v131)
                {
                  v133 = *(*(v127 - 35) + 4 * v131);
                }

                else
                {
                  v132 = scn_default_log(v120, v121);
                  v120 = os_log_type_enabled(v132, OS_LOG_TYPE_ERROR);
                  if (v120)
                  {
                    *buf = v244;
                    *&buf[4] = v131;
                    *&buf[8] = 2048;
                    *&buf[10] = v129 / v130;
                    _os_log_error_impl(&dword_21BEF7000, v132, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v133 = 0;
                }

                v127 += 64;
                *v128 = v133;
                v128 += 4;
                --v126;
              }

              while (v126);
            }

            v120 = (v246[1].n128_u64[0])(v246, v125, v124, 1, &v250);
            if (v250)
            {
              break;
            }

            ++v125;
          }

          while (v125 != v248);
        }
      }

      break;
    case 5:
LABEL_102:
      if (a2 == 1)
      {
        v93 = *(v247 + 16);
        *buf = *v247;
        *&buf[16] = v93;
        v94 = *(v247 + 48);
        v256 = *(v247 + 32);
        v257 = v94;
        if (v248)
        {
          for (i = 0; i != v248; ++i)
          {
            *v251 = *buf;
            v252 = *&buf[16];
            v253 = v256;
            v254 = v257;
            C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex(v251, i, &v258, &v259, &v260);
            (v246[1].n128_u64[0])(v246, i, &v258, 3, &v250);
            if (v250 == 1)
            {
              break;
            }
          }
        }
      }

      else
      {
        v245 = &v232;
        v96.n128_f64[0] = MEMORY[0x28223BE20](result);
        v98 = &v232 - v97;
        if (v248)
        {
          v99 = 0;
          v100 = v242;
          v249.n128_u64[0] = v246[1].n128_u64;
          v101 = &v98[8 * v242];
          v102 = &v98[4 * v242];
          do
          {
            v103 = v100;
            v104 = v98;
            v105 = v247;
            v106 = v102;
            v107 = v101;
            if (v242)
            {
              do
              {
                v108 = v105[1];
                *buf = *v105;
                *&buf[16] = v108;
                v109 = v105[3];
                v256 = v105[2];
                v257 = v109;
                C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex(buf, v99, v104, v106, v107);
                v107 += 4;
                v106 += 4;
                v105 += 4;
                v104 += 4;
                --v103;
              }

              while (v103);
            }

            (v246[1].n128_u64[0])(v246, v99, v98, 3, &v250, v96);
            if (v250)
            {
              break;
            }

            ++v99;
          }

          while (v99 != v248);
        }
      }

      return;
    case 4:
      if (!v248)
      {
        return;
      }

      v19 = 0;
      v249.n128_u32[0] = 0;
      v234 = v246 + 1;
      *&v244 = a2;
      a4.n128_u64[0] = 67109376;
      v243 = a4;
      a4.n128_u64[0] = 67109120;
      v232 = a4;
      v236 = v6;
      v235 = v7;
      while (1)
      {
        switch(v6)
        {
          case 4:
            v20 = *(v7 + 4 * v19);
            break;
          case 2:
            v20 = *(v7 + 2 * v19);
            break;
          case 1:
            v20 = *(v7 + v19);
            break;
          default:
            LODWORD(v20) = 0;
LABEL_44:
            v36 = scn_default_log(result, a2);
            result = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
            if (result)
            {
              C3DIndicesContentArrayEnumeratePrimitives_cold_1(v251, &v251[1], v36);
            }

            goto LABEL_100;
        }

        if (v20 <= 2)
        {
          goto LABEL_44;
        }

        v237 = v19;
        v238 = v20;
        if (v4 == 1)
        {
          v21 = *(v247 + 8);
          v245 = *v247;
          v22 = *(v247 + 35);
          v23 = *(v247 + 48);
          v24 = *(v247 + 56);
          v25 = v20;
          MEMORY[0x28223BE20](result);
          v29 = (&v232 - v28);
          *&v241 = v30;
          if (v6 == 1)
          {
            v73 = v22;
            v74 = v249.n128_u32[0];
            v20 = &v232 - v28;
            v240 = v21 / v22;
            do
            {
              v75 = v23 + v24 * v74;
              if (v21 >= v73 + v73 * v75)
              {
                v77 = v245->n128_u8[v75];
              }

              else
              {
                v76 = scn_default_log(v26, v27);
                v26 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
                if (v26)
                {
                  *buf = v243.n128_u32[0];
                  *&buf[4] = v23 + v24 * v74;
                  *&buf[8] = 2048;
                  *&buf[10] = v240;
                  _os_log_error_impl(&dword_21BEF7000, v76, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v77 = 0;
              }

              v29->n128_u32[0] = v77;
              v29 = (v29 + 4);
              ++v74;
              --v25;
            }

            while (v25);
          }

          else if (v6 == 2)
          {
            v55 = v249.n128_u32[0];
            v20 = &v232 - v28;
            v56 = (&v232 - v28);
            v240 = v21 / v22;
            do
            {
              v57 = v23 + v24 * v55;
              if (v21 >= v22 + v22 * v57)
              {
                v59 = v245->n128_u16[v57];
              }

              else
              {
                v58 = scn_default_log(v26, v27);
                v26 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
                if (v26)
                {
                  *buf = v243.n128_u32[0];
                  *&buf[4] = v23 + v24 * v55;
                  *&buf[8] = 2048;
                  *&buf[10] = v240;
                  _os_log_error_impl(&dword_21BEF7000, v58, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v59 = 0;
              }

              v56->n128_u32[0] = v59;
              v56 = (v56 + 4);
              ++v55;
              --v25;
            }

            while (v25);
          }

          else
          {
            v31 = v249.n128_u32[0];
            v20 = &v232 - v28;
            v32 = (&v232 - v28);
            v240 = v21 / v22;
            do
            {
              v33 = v23 + v24 * v31;
              if (v21 >= v22 + v22 * v33)
              {
                v35 = v245->n128_u32[v33];
              }

              else
              {
                v34 = scn_default_log(v26, v27);
                v26 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
                if (v26)
                {
                  *buf = v243.n128_u32[0];
                  *&buf[4] = v23 + v24 * v31;
                  *&buf[8] = 2048;
                  *&buf[10] = v240;
                  _os_log_error_impl(&dword_21BEF7000, v34, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v35 = 0;
              }

              v32->n128_u32[0] = v35;
              v32 = (v32 + 4);
              ++v31;
              --v25;
            }

            while (v25);
          }

          v19 = v237;
          v91 = v20;
          LODWORD(v20) = v238;
          result = (v246[1].n128_u64[0])(v246, v237, v91, v238, &v250);
          v92 = v250;
        }

        else
        {
          v39.n128_f64[0] = MEMORY[0x28223BE20](result);
          v245 = (&v232 - v40);
          v233 = v41;
          if (v6 == 1)
          {
            if (v4)
            {
              v78 = 0;
              v239 = v238;
              do
              {
                *&v241 = v78;
                v79 = v247 + (v78 << 6);
                v80 = *v79;
                v81 = *(v79 + 8);
                v82 = *(v79 + 35);
                v84 = *(v79 + 48);
                v83 = *(v79 + 56);
                v85 = v239;
                v86 = v249.n128_u32[0];
                v87 = v245;
                v240 = v81 / v82;
                do
                {
                  v88 = v84 + v83 * v86;
                  if (v81 >= v82 + v82 * v88)
                  {
                    v90 = *(v80 + v88);
                  }

                  else
                  {
                    v89 = scn_default_log(v37, v38);
                    v37 = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);
                    if (v37)
                    {
                      *buf = v243.n128_u32[0];
                      *&buf[4] = v84 + v83 * v86;
                      *&buf[8] = 2048;
                      *&buf[10] = v240;
                      _os_log_error_impl(&dword_21BEF7000, v89, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v90 = 0;
                  }

                  v87->n128_u32[0] = v90;
                  v87 = (v87 + 4);
                  ++v86;
                  --v85;
                }

                while (v85);
                v78 = v241 + 1;
              }

              while (v241 + 1 != v244);
            }
          }

          else if (v6 == 2)
          {
            if (v4)
            {
              v60 = 0;
              v239 = v238;
              do
              {
                *&v241 = v60;
                v61 = v247 + (v60 << 6);
                v62 = *v61;
                v63 = *(v61 + 8);
                v64 = *(v61 + 35);
                v66 = *(v61 + 48);
                v65 = *(v61 + 56);
                v67 = v239;
                v68 = v249.n128_u32[0];
                v69 = v245;
                v240 = v63 / v64;
                do
                {
                  v70 = v66 + v65 * v68;
                  if (v63 >= v64 + v64 * v70)
                  {
                    v72 = *(v62 + 2 * v70);
                  }

                  else
                  {
                    v71 = scn_default_log(v37, v38);
                    v37 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
                    if (v37)
                    {
                      *buf = v243.n128_u32[0];
                      *&buf[4] = v66 + v65 * v68;
                      *&buf[8] = 2048;
                      *&buf[10] = v240;
                      _os_log_error_impl(&dword_21BEF7000, v71, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v72 = 0;
                  }

                  v69->n128_u32[0] = v72;
                  v69 = (v69 + 4);
                  ++v68;
                  --v67;
                }

                while (v67);
                v60 = v241 + 1;
              }

              while (v241 + 1 != v244);
            }
          }

          else if (v4)
          {
            v42 = 0;
            v239 = v238;
            do
            {
              *&v241 = v42;
              v43 = v247 + (v42 << 6);
              v44 = *v43;
              v45 = *(v43 + 8);
              v46 = *(v43 + 35);
              v48 = *(v43 + 48);
              v47 = *(v43 + 56);
              v49 = v239;
              v50 = v249.n128_u32[0];
              v51 = v245;
              v240 = v45 / v46;
              do
              {
                v52 = v48 + v47 * v50;
                if (v45 >= v46 + v46 * v52)
                {
                  v54 = *(v44 + 4 * v52);
                }

                else
                {
                  v53 = scn_default_log(v37, v38);
                  v37 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
                  if (v37)
                  {
                    *buf = v243.n128_u32[0];
                    *&buf[4] = v48 + v47 * v50;
                    *&buf[8] = 2048;
                    *&buf[10] = v240;
                    _os_log_error_impl(&dword_21BEF7000, v53, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v54 = 0;
                }

                v51->n128_u32[0] = v54;
                v51 = (v51 + 4);
                ++v50;
                --v49;
              }

              while (v49);
              v42 = v241 + 1;
            }

            while (v241 + 1 != v244);
          }

          v19 = v237;
          LODWORD(v20) = v238;
          result = (v246[1].n128_u64[0])(v246, v237, v245, v238, &v250, v39);
          v92 = v250;
        }

        v4 = v242;
        v6 = v236;
        v7 = v235;
        if (v92)
        {
          return;
        }

LABEL_100:
        v249.n128_u32[0] += v20;
        if (++v19 == v248)
        {
          return;
        }
      }

    default:
      v118 = scn_default_log(result, a2);
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        C3DIndicesContentArrayEnumeratePrimitives_cold_2();
      }

      break;
  }
}

void C3DIndicesContentEnumerateTriangulatedPrimitives(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3.n128_u64[0] = MEMORY[0x277D85DD0];
  a3.n128_u64[0] = 0x40000000;
  v3.n128_u64[1] = 0x40000000;
  v4 = __C3DIndicesContentEnumerateTriangulatedPrimitives_block_invoke;
  v5 = &unk_2782FB3E8;
  v6 = a2;
  C3DIndicesContentArrayEnumeratePrimitives(a1, 1, &v3, a3);
}

void __C3DIndicesContentEnumerateTriangulatedPrimitives_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a4 == 3)
  {
    (*(*(result + 32) + 16))(*(result + 32));
  }

  else if (a4 < 4)
  {
    v10 = scn_default_log(result, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __C3DIndicesContentEnumerateTriangulatedPrimitives_block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
    v8 = a4 - 2;
    do
    {
      if (v8 == v7)
      {
        break;
      }

      v9 = v7 + 1;
      (*(*(result + 32) + 16))(*(result + 32));
      v7 = v9;
    }

    while (!a5);
  }
}

void C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 34);
  v10 = 3;
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v9 != 5;
  if (v9 == 1)
  {
    v13 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v9 != 1)
  {
    v12 = 1;
  }

  v14 = v9 == 0;
  if (*(a1 + 34))
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (*(a1 + 34))
  {
    v10 = v13;
    v16 = v11;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v18 = *a1;
  if (!*a1)
  {
    *a3 = v10 * a2;
    *a4 = v17 + v15 * a2;
    v29 = v16 + v15 * a2;
LABEL_33:
    *a5 = v29;
    return;
  }

  v19 = *(a1 + 35);
  v20 = a1[6];
  v21 = a1[7];
  v22 = v20 + v10 * a2 * v21;
  v23 = v15 * a2;
  v24 = v20 + v21 * (v17 + v15 * a2);
  v25 = v20 + v21 * (v16 + v23);
  if (v25 <= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v24 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  if (a1[1] < (v19 + v19 * v27))
  {
    v28 = scn_default_log(1, a2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = a1[1];
      v32 = *(a1 + 35);
      v33 = 136315650;
      v34 = "C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
      v35 = 1024;
      v36 = v27;
      v37 = 2048;
      v38 = v31 / v32;
      _os_log_error_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v33, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    return;
  }

  switch(v19)
  {
    case 4:
      *a3 = *(v18 + 4 * v22);
      *a4 = *(v18 + 4 * v24);
      v29 = *(v18 + 4 * v25);
      goto LABEL_33;
    case 2:
      *a3 = *(v18 + 2 * v22);
      *a4 = *(v18 + 2 * v24);
      v29 = *(v18 + 2 * v25);
      goto LABEL_33;
    case 1:
      *a3 = *(v18 + v22);
      *a4 = *(v18 + v24);
      v29 = *(v18 + v25);
      goto LABEL_33;
  }

  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v30 = scn_default_log(1, a2);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_cold_1();
  }
}

void C3DIndicesContentEnumeratePrimitivesByEvaluatingPrimitiveRanges(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v165 = *MEMORY[0x277D85DE8];
  if (!*(result + 24))
  {
    v24 = *(result + 16);
    *buf = *result;
    *&buf[16] = v24;
    v26 = *(result + 48);
    v159 = *(result + 32);
    v25.n128_u64[1] = *(&v159 + 1);
    v160 = v26;
    v161.n128_u64[0] = MEMORY[0x277D85DD0];
    v25.n128_u64[0] = 0x40000000;
    v161.n128_u64[1] = 0x40000000;
    v162 = __C3DIndicesContentEnumeratePrimitives_block_invoke;
    v163 = &unk_2782FB3C0;
    v164 = a2;
    C3DIndicesContentArrayEnumeratePrimitives(buf, 1, &v161, v25);
    return;
  }

  v157 = 0;
  v5 = *(result + 34);
  v155 = a2;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      v161.n128_u64[0] = 0;
      v6 = *(result + 35);
      switch(v6)
      {
        case 1:
          v130 = *(result + 32);
          if (*(result + 32))
          {
            v131 = 0;
            a3.n128_u64[0] = 67109376;
            v156 = a3;
            while (1)
            {
              v132 = (*(v4 + 24) + 16 * v131);
              v133 = *v132;
              v134 = v132[1] + *v132;
              if (v133 < v134)
              {
                break;
              }

LABEL_177:
              if (++v131 >= v130)
              {
                return;
              }
            }

            v135 = 2 * v133;
            v136 = v134 - v133;
            while (1)
            {
              v137 = *(v4 + 48);
              v138 = *(v4 + 56);
              v139 = v137 + v138 * v135;
              v140 = v137 + v138 * (v135 + 1);
              v141 = v140 <= v139 ? v139 : v140;
              v142 = *(v4 + 8);
              v143 = *(v4 + 35);
              if (v142 >= v143 + v143 * v141)
              {
                v146 = *v4;
                v161.n128_u32[0] = *(*v4 + v139);
                v145 = *(v146 + v140);
              }

              else
              {
                v144 = scn_default_log(result, a2);
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  *buf = v156.n128_u32[0];
                  *&buf[4] = v141;
                  *&buf[8] = 2048;
                  *&buf[10] = v142 / v143;
                  _os_log_error_impl(&dword_21BEF7000, v144, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v145 = 0;
                v161.n128_u32[0] = 0;
              }

              v161.n128_u32[1] = v145;
              result = (*(v155 + 16))(v155, v133, &v161, 2, &v157);
              if (v157)
              {
                break;
              }

              v133 = (v133 + 1);
              v135 += 2;
              if (!--v136)
              {
                v130 = *(v4 + 32);
                goto LABEL_177;
              }
            }
          }

          break;
        case 2:
          v113 = *(result + 32);
          if (*(result + 32))
          {
            v114 = 0;
            a3.n128_u64[0] = 67109376;
            v156 = a3;
            while (1)
            {
              v115 = (*(v4 + 24) + 16 * v114);
              v116 = *v115;
              v117 = v115[1] + *v115;
              if (v116 < v117)
              {
                break;
              }

LABEL_160:
              if (++v114 >= v113)
              {
                return;
              }
            }

            v118 = 2 * v116;
            v119 = v117 - v116;
            while (1)
            {
              v120 = *(v4 + 48);
              v121 = *(v4 + 56);
              v122 = v120 + v121 * v118;
              v123 = v120 + v121 * (v118 + 1);
              v124 = v123 <= v122 ? v122 : v123;
              v125 = *(v4 + 8);
              v126 = *(v4 + 35);
              if (v125 >= v126 + v126 * v124)
              {
                v129 = *v4;
                v161.n128_u32[0] = *(*v4 + 2 * v122);
                v128 = *(v129 + 2 * v123);
              }

              else
              {
                v127 = scn_default_log(result, a2);
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  *buf = v156.n128_u32[0];
                  *&buf[4] = v124;
                  *&buf[8] = 2048;
                  *&buf[10] = v125 / v126;
                  _os_log_error_impl(&dword_21BEF7000, v127, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v128 = 0;
                v161.n128_u32[0] = 0;
              }

              v161.n128_u32[1] = v128;
              result = (*(v155 + 16))(v155, v116, &v161, 2, &v157);
              if (v157)
              {
                break;
              }

              v116 = (v116 + 1);
              v118 += 2;
              if (!--v119)
              {
                v113 = *(v4 + 32);
                goto LABEL_160;
              }
            }
          }

          break;
        case 4:
          v7 = *(result + 32);
          if (*(result + 32))
          {
            v8 = 0;
            a3.n128_u64[0] = 67109376;
            v156 = a3;
            while (1)
            {
              v9 = (*(v4 + 24) + 16 * v8);
              v10 = *v9;
              v11 = v9[1] + *v9;
              if (v10 < v11)
              {
                break;
              }

LABEL_22:
              if (++v8 >= v7)
              {
                return;
              }
            }

            v12 = 2 * v10;
            v13 = v11 - v10;
            while (1)
            {
              v14 = *(v4 + 48);
              v15 = *(v4 + 56);
              v16 = v14 + v15 * v12;
              v17 = v14 + v15 * (v12 + 1);
              v18 = v17 <= v16 ? v16 : v17;
              v19 = *(v4 + 8);
              v20 = *(v4 + 35);
              if (v19 >= v20 + v20 * v18)
              {
                v23 = *v4;
                v161.n128_u32[0] = *(*v4 + 4 * v16);
                v22 = *(v23 + 4 * v17);
              }

              else
              {
                v21 = scn_default_log(result, a2);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = v156.n128_u32[0];
                  *&buf[4] = v18;
                  *&buf[8] = 2048;
                  *&buf[10] = v19 / v20;
                  _os_log_error_impl(&dword_21BEF7000, v21, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v22 = 0;
                v161.n128_u32[0] = 0;
              }

              v161.n128_u32[1] = v22;
              result = (*(v155 + 16))(v155, v10, &v161, 2, &v157);
              if (v157)
              {
                break;
              }

              v10 = (v10 + 1);
              v12 += 2;
              if (!--v13)
              {
                v7 = *(v4 + 32);
                goto LABEL_22;
              }
            }
          }

          break;
      }

      return;
    }

    goto LABEL_88;
  }

  if (v5 != 3)
  {
    if (v5 == 5)
    {
LABEL_88:
      v161.n128_u32[2] = 0;
      v161.n128_u64[0] = 0;
      v68 = *(result + 32);
      if (*(result + 32))
      {
        v69 = 0;
        while (1)
        {
          v70 = (*(v4 + 24) + 16 * v69);
          v71 = v70[1];
          if (*v70 < v71 + *v70)
          {
            break;
          }

LABEL_95:
          if (++v69 >= v68)
          {
            return;
          }
        }

        v72 = *v70;
        while (1)
        {
          v73 = *(v4 + 16);
          *buf = *v4;
          *&buf[16] = v73;
          v74 = *(v4 + 48);
          v159 = *(v4 + 32);
          v160 = v74;
          C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex(buf, v72, &v161, &v161.n128_u32[1], &v161.n128_u32[2]);
          (*(a2 + 16))(a2, v72, &v161, 3, &v157);
          if (v157)
          {
            break;
          }

          ++v72;
          LODWORD(v71) = v71 - 1;
          if (!v71)
          {
            v68 = *(v4 + 32);
            goto LABEL_95;
          }
        }
      }

      return;
    }

    if (v5 != 4)
    {
      v88 = scn_default_log(result, a2);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        C3DIndicesContentEnumeratePrimitivesByEvaluatingPrimitiveRanges_cold_2();
      }

      return;
    }

    v27 = *(result + 32);
    if (!*(result + 32))
    {
      return;
    }

    v148 = 0;
    v150 = a2 + 16;
    a3.n128_u64[0] = 67109376;
    v149 = a3;
    a3.n128_u64[0] = 67109120;
    v147 = a3;
    while (1)
    {
      v28 = (*(v4 + 24) + 16 * v148);
      v29 = *v28;
      if (*v28)
      {
        v30 = 0;
        v31 = 0;
        v32 = *(v4 + 35);
        do
        {
          switch(v32)
          {
            case 4:
              v33 = *(*(v4 + 40) + 4 * v30);
              break;
            case 2:
              v33 = *(*(v4 + 40) + 2 * v30);
              break;
            case 1:
              v33 = *(*(v4 + 40) + v30);
              break;
            default:
              v33 = 0;
              break;
          }

          v31 += v33;
          ++v30;
        }

        while (v29 != v30);
      }

      else
      {
        v31 = 0;
      }

      v34 = v28[1] + v29;
      if (v29 < v34)
      {
        break;
      }

LABEL_86:
      if (++v148 >= v27)
      {
        return;
      }
    }

    v35 = v29;
    v36 = v34;
    v151 = v34;
    while (1)
    {
      v37 = *(v4 + 35);
      switch(v37)
      {
        case 4:
          v38 = *(*(v4 + 40) + 4 * v35);
          break;
        case 2:
          v38 = *(*(v4 + 40) + 2 * v35);
          break;
        case 1:
          v38 = *(*(v4 + 40) + v35);
          break;
        default:
          LODWORD(v38) = 0;
          goto LABEL_63;
      }

      if (v38 > 2)
      {
        v153 = &v147;
        v39 = v38;
        MEMORY[0x28223BE20](result);
        v43 = (&v147 - v42);
        v44 = *(v4 + 35);
        v154 = v38;
        v152 = v43;
        switch(v44)
        {
          case 4:
            v156.n128_u64[0] = *v4;
            v58 = v31;
            do
            {
              v59 = *(v4 + 48) + *(v4 + 56) * v58;
              v60 = *(v4 + 8);
              v61 = *(v4 + 35);
              if (v60 >= v61 + v61 * v59)
              {
                v63 = *(v156.n128_u64[0] + 4 * v59);
              }

              else
              {
                v62 = scn_default_log(v40, v41);
                v40 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
                if (v40)
                {
                  *buf = v149.n128_u32[0];
                  *&buf[4] = v59;
                  *&buf[8] = 2048;
                  *&buf[10] = v60 / v61;
                  _os_log_error_impl(&dword_21BEF7000, v62, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v63 = 0;
              }

              v43->n128_u32[0] = v63;
              v43 = (v43 + 4);
              ++v58;
              --v39;
            }

            while (v39);
            break;
          case 2:
            v156.n128_u64[0] = *v4;
            v52 = v31;
            do
            {
              v53 = *(v4 + 48) + *(v4 + 56) * v52;
              v54 = *(v4 + 8);
              v55 = *(v4 + 35);
              if (v54 >= v55 + v55 * v53)
              {
                v57 = *(v156.n128_u64[0] + 2 * v53);
              }

              else
              {
                v56 = scn_default_log(v40, v41);
                v40 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
                if (v40)
                {
                  *buf = v149.n128_u32[0];
                  *&buf[4] = v53;
                  *&buf[8] = 2048;
                  *&buf[10] = v54 / v55;
                  _os_log_error_impl(&dword_21BEF7000, v56, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v57 = 0;
              }

              v43->n128_u32[0] = v57;
              v43 = (v43 + 4);
              ++v52;
              --v39;
            }

            while (v39);
            break;
          case 1:
            v156.n128_u64[0] = *v4;
            v45 = v31;
            do
            {
              v46 = *(v4 + 48) + *(v4 + 56) * v45;
              v47 = *(v4 + 8);
              v48 = *(v4 + 35);
              if (v47 >= v48 + v48 * v46)
              {
                v50 = *(v156.n128_u64[0] + v46);
              }

              else
              {
                v49 = scn_default_log(v40, v41);
                v40 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
                if (v40)
                {
                  *buf = v149.n128_u32[0];
                  *&buf[4] = v46;
                  *&buf[8] = 2048;
                  *&buf[10] = v47 / v48;
                  _os_log_error_impl(&dword_21BEF7000, v49, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v50 = 0;
              }

              v43->n128_u32[0] = v50;
              v43 = (v43 + 4);
              ++v45;
              --v39;
            }

            while (v39);
            break;
          default:
            bzero(v43, 4 * v38);
            v66 = scn_default_log(v64, v65);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v67 = *(v4 + 35);
              *buf = v147.n128_u32[0];
              *&buf[4] = v67;
              _os_log_error_impl(&dword_21BEF7000, v66, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid bytes per index (%d)", buf, 8u);
            }

            break;
        }

        LODWORD(v38) = v154;
        result = (*(v155 + 16))(v155, v35, v152, v154, &v157);
        v36 = v151;
        if (v157)
        {
          return;
        }

        goto LABEL_84;
      }

LABEL_63:
      v51 = scn_default_log(result, a2);
      result = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
      if (result)
      {
        C3DIndicesContentArrayEnumeratePrimitives_cold_1(&v161, &v161.n128_u8[1], v51);
      }

LABEL_84:
      v31 += v38;
      if (++v35 == v36)
      {
        v27 = *(v4 + 32);
        goto LABEL_86;
      }
    }
  }

  v161.n128_u32[0] = 0;
  v75 = *(result + 35);
  switch(v75)
  {
    case 1:
      v101 = *(result + 32);
      if (*(result + 32))
      {
        v102 = 0;
        a3.n128_u64[0] = 67109376;
        v156 = a3;
        while (1)
        {
          v103 = (*(v4 + 24) + 16 * v102);
          v104 = *v103;
          v105 = v103[1] + *v103;
          if (v104 < v105)
          {
            break;
          }

LABEL_143:
          if (++v102 >= v101)
          {
            return;
          }
        }

        v106 = v104;
        v107 = v105;
        while (1)
        {
          v108 = *(v4 + 48) + *(v4 + 56) * v106;
          v109 = *(v4 + 8);
          v110 = *(v4 + 35);
          if (v109 >= v110 + v110 * v108)
          {
            v112 = *(*v4 + v108);
          }

          else
          {
            v111 = scn_default_log(result, a2);
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              *buf = v156.n128_u32[0];
              *&buf[4] = v108;
              *&buf[8] = 2048;
              *&buf[10] = v109 / v110;
              _os_log_error_impl(&dword_21BEF7000, v111, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v112 = 0;
          }

          v161.n128_u32[0] = v112;
          result = (*(v155 + 16))(v155, v106, &v161, 1, &v157);
          if (v157)
          {
            break;
          }

          if (v107 == ++v106)
          {
            v101 = *(v4 + 32);
            goto LABEL_143;
          }
        }
      }

      break;
    case 2:
      v89 = *(result + 32);
      if (*(result + 32))
      {
        v90 = 0;
        a3.n128_u64[0] = 67109376;
        v156 = a3;
        while (1)
        {
          v91 = (*(v4 + 24) + 16 * v90);
          v92 = *v91;
          v93 = v91[1] + *v91;
          if (v92 < v93)
          {
            break;
          }

LABEL_129:
          if (++v90 >= v89)
          {
            return;
          }
        }

        v94 = v92;
        v95 = v93;
        while (1)
        {
          v96 = *(v4 + 48) + *(v4 + 56) * v94;
          v97 = *(v4 + 8);
          v98 = *(v4 + 35);
          if (v97 >= v98 + v98 * v96)
          {
            v100 = *(*v4 + 2 * v96);
          }

          else
          {
            v99 = scn_default_log(result, a2);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              *buf = v156.n128_u32[0];
              *&buf[4] = v96;
              *&buf[8] = 2048;
              *&buf[10] = v97 / v98;
              _os_log_error_impl(&dword_21BEF7000, v99, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v100 = 0;
          }

          v161.n128_u32[0] = v100;
          result = (*(v155 + 16))(v155, v94, &v161, 1, &v157);
          if (v157)
          {
            break;
          }

          if (v95 == ++v94)
          {
            v89 = *(v4 + 32);
            goto LABEL_129;
          }
        }
      }

      break;
    case 4:
      v76 = *(result + 32);
      if (*(result + 32))
      {
        v77 = 0;
        a3.n128_u64[0] = 67109376;
        v156 = a3;
        while (1)
        {
          v78 = (*(v4 + 24) + 16 * v77);
          v79 = *v78;
          v80 = v78[1] + *v78;
          if (v79 < v80)
          {
            break;
          }

LABEL_112:
          if (++v77 >= v76)
          {
            return;
          }
        }

        v81 = v79;
        v82 = v80;
        while (1)
        {
          v83 = *(v4 + 48) + *(v4 + 56) * v81;
          v84 = *(v4 + 8);
          v85 = *(v4 + 35);
          if (v84 >= v85 + v85 * v83)
          {
            v87 = *(*v4 + 4 * v83);
          }

          else
          {
            v86 = scn_default_log(result, a2);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              *buf = v156.n128_u32[0];
              *&buf[4] = v83;
              *&buf[8] = 2048;
              *&buf[10] = v84 / v85;
              _os_log_error_impl(&dword_21BEF7000, v86, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v87 = 0;
          }

          v161.n128_u32[0] = v87;
          result = (*(v155 + 16))(v155, v81, &v161, 1, &v157);
          if (v157)
          {
            break;
          }

          if (v82 == ++v81)
          {
            v76 = *(v4 + 32);
            goto LABEL_112;
          }
        }
      }

      break;
  }
}

void C3DMeshElementPrintData(uint64_t a1, uint64_t a2)
{
  Type = C3DMeshElementGetType(a1, a2);
  v4 = *(a1 + 130);
  if (*(a1 + 130))
  {
    v5 = Type;
    v6 = 0;
    do
    {
      fprintf(*MEMORY[0x277D85E08], "CHANNEL %ld/%ld\n", v6 + 1, v4);
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      C3DMeshElementGetContent(a1, v6, &v12);
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x2000000000;
      v11 = 0;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 0x40000000;
      v8[2] = __C3DMeshElementPrintData_block_invoke;
      v8[3] = &unk_2782FB410;
      v9 = v5;
      v8[4] = v10;
      v7[0] = v12;
      v7[1] = v13;
      v7[2] = v14;
      v7[3] = v15;
      v16.n128_u64[0] = MEMORY[0x277D85DD0];
      v16.n128_u64[1] = 0x40000000;
      v17 = __C3DIndicesContentEnumeratePrimitives_block_invoke;
      v18 = &unk_2782FB3C0;
      v19 = v8;
      C3DIndicesContentArrayEnumeratePrimitives(v7, 1, &v16, v14);
      _Block_object_dispose(v10, 8);
      ++v6;
    }

    while (v4 != v6);
  }
}

uint64_t __C3DMeshElementPrintData_block_invoke(uint64_t result, uint64_t a2, int *a3, unsigned int a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      result = fprintf(*MEMORY[0x277D85E08], "%4u : %4u %4u\n");
      goto LABEL_9;
    }

LABEL_7:
    result = fprintf(*MEMORY[0x277D85E08], "%4u : %4u %4u %4u\n");
    goto LABEL_9;
  }

  if (v6 == 3)
  {
    result = fprintf(*MEMORY[0x277D85E08], "%4u : %4u\n");
    goto LABEL_9;
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = MEMORY[0x277D85E08];
  fprintf(*MEMORY[0x277D85E08], "%2u : [Polygon %4u]", *(*(*(result + 32) + 8) + 24), a4);
  if (a4)
  {
    v9 = a4;
    do
    {
      v10 = *a3++;
      fprintf(*v8, " %4u", v10);
      --v9;
    }

    while (v9);
  }

  result = fputc(10, *v8);
LABEL_9:
  ++*(*(*(v5 + 32) + 8) + 24);
  return result;
}

id _C3DMeshElementCFFinalize(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshElementWillDie", a1, 0, 1u);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 168) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }

  free(*(a1 + 112));
  free(*(a1 + 120));
  free(*(a1 + 208));

  return C3DEntityCFFinalize(a1, v7);
}

__CFString *_C3DMeshElementCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = *(a1 + 88);
  if (v3 > 5)
  {
    v4 = @"invalid";
  }

  else
  {
    v4 = off_2782FB430[v3];
  }

  v5 = *(a1 + 104);
  v6 = *(a1 + 130);
  v7 = *(a1 + 80);
  v8 = *(a1 + 64);
  v9 = C3DMeshElementComputeACMR(a1, 0x20uLL);
  v10 = *(a1 + 68);
  Length = *(a1 + 96);
  if (Length)
  {
    Length = CFDataGetLength(Length);
  }

  CFStringAppendFormat(Mutable, 0, @"<C3DMeshElement %p type:%@ primCount:%d channels:%d indexBytes:%d offset:%d acmr:%f inst:%d dataSize:%d shared:%p>", a1, v4, v5, v6, v7, v8, v9, v10, Length, *(a1 + 72));
  return Mutable;
}

BOOL _C3DMeshElementInitWithPropertyList(_BOOL8 a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  v6 = a1;
  v62 = *MEMORY[0x277D85DE8];
  if (!a1 && (v7 = scn_default_log(0, a2), a1 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v7, a2, v8, v9, v10, v11, v12, v13);
    if (!a2)
    {
LABEL_4:
      v14 = scn_default_log(a1, a2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        _C3DGeometryFinalizeDeserialization_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else if (!a2)
  {
    goto LABEL_4;
  }

  v22 = C3DEntityInitWithPropertyList(v6, a2);
  if ((v22 & 1) == 0)
  {
    v31 = scn_default_log(v22, v23);
    result = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DMeshElementInitWithPropertyList_cold_3();
    return 0;
  }

  *(v6 + 26) = 0;
  Value = CFDictionaryGetValue(a2, @"facesCount");
  if (!Value || (Value = CFNumberGetValue(Value, kCFNumberIntType, v6 + 104), !Value))
  {
    v33 = scn_default_log(Value, v25);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    _C3DMeshElementInitWithPropertyList_cold_8();
    if (!a4)
    {
      return 0;
    }

    goto LABEL_60;
  }

  TypeID = CFDictionaryGetValue(a2, @"geometryElement");
  if (!TypeID)
  {
    goto LABEL_21;
  }

  v28 = TypeID;
  valuePtr = 0;
  v29 = CFGetTypeID(TypeID);
  if (v29 == CFNumberGetTypeID() && CFNumberGetValue(v28, kCFNumberIntType, &valuePtr))
  {
    v30 = valuePtr;
    goto LABEL_34;
  }

  v34 = CFGetTypeID(v28);
  TypeID = CFStringGetTypeID();
  if (v34 != TypeID)
  {
LABEL_21:
    v35 = scn_default_log(TypeID, v27);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    _C3DMeshElementInitWithPropertyList_cold_7();
    if (!a4)
    {
      return 0;
    }

    goto LABEL_60;
  }

  if (CFEqual(v28, @"linesArray"))
  {
    v30 = 2;
    goto LABEL_34;
  }

  if (CFEqual(v28, @"trianglesArray"))
  {
    goto LABEL_27;
  }

  if (CFEqual(v28, @"pointsArray"))
  {
    v30 = 3;
  }

  else if (CFEqual(v28, @"trianglesStrip"))
  {
    v30 = 1;
  }

  else
  {
    v36 = CFEqual(v28, @"polygonsArray");
    if (!v36)
    {
      v58 = scn_default_log(v36, v37);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v28;
        _os_log_impl(&dword_21BEF7000, v58, OS_LOG_TYPE_DEFAULT, "Warning: Unknown mesh element type %@, assuming triangles array.", buf, 0xCu);
      }

LABEL_27:
      v30 = 0;
      goto LABEL_34;
    }

    v30 = 4;
  }

LABEL_34:
  v6[88] = v30;
  v38 = CFDictionaryGetValue(a2, @"indexes");
  if (!v38)
  {
    v45 = scn_default_log(0, v39);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    _C3DMeshElementInitWithPropertyList_cold_6();
    if (!a4)
    {
      return 0;
    }

    goto LABEL_60;
  }

  v40 = v38;
  v6[80] = 4;
  v41 = CFDictionaryGetValue(a2, @"bytesPerIndex");
  if (v41)
  {
    *buf = 0;
    v42 = CFNumberGetValue(v41, kCFNumberIntType, buf);
    if (!v42)
    {
      v54 = scn_default_log(v42, v43);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        _C3DMeshElementInitWithPropertyList_cold_4();
        if (!a4)
        {
          return 0;
        }
      }

      else if (!a4)
      {
        return 0;
      }

      if (!*a4)
      {
        *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
      }

      return 0;
    }

    v44 = buf[0];
    v6[80] = buf[0];
  }

  else
  {
    v44 = v6[80];
  }

  v46 = CFDataGetLength(v40) / v6[80];
  if (v46 >= 1)
  {
    v47 = 9;
    if (v44 == 1)
    {
      v47 = 7;
    }

    if (v44 == 2)
    {
      v48 = 8;
    }

    else
    {
      v48 = v47;
    }

    v49 = C3DCopyLittleEndianToHostRepresentationOfData(v40, v48, v46);
    if (v49)
    {
      v51 = v49;
      __SetIndexes(v6, v49, v6[80]);
      CFRelease(v51);
      goto LABEL_50;
    }

    v56 = scn_default_log(0, v50);
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
LABEL_59:
      if (!a4)
      {
        return 0;
      }

      goto LABEL_60;
    }

    _C3DMeshElementInitWithPropertyList_cold_5();
    if (!a4)
    {
      return 0;
    }

LABEL_60:
    if (!*a4)
    {
      MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
      result = 0;
      *a4 = MalformedDocumentError;
      return result;
    }

    return 0;
  }

LABEL_50:
  v52 = CFDictionaryGetValue(a2, @"doubleSided");
  if (v52)
  {
    v53 = CFBooleanGetValue(v52) != 0;
  }

  else
  {
    v53 = 0;
  }

  C3DMeshElementSetDoubleSided(v6, v53);
  C3DMeshElementConvertStripToTriangleList(v6, v55);
  return 1;
}

__CFDictionary *_C3DMeshElementCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = scn_default_log(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v15)
  {
    v16 = *MEMORY[0x277CBECE8];
    v17 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (a1 + 104));
    CFDictionarySetValue(v15, @"facesCount", v17);
    CFRelease(v17);
    v18 = *(a1 + 88);
    if (v18 > 4)
    {
      v19 = 0;
    }

    else
    {
      v19 = off_2782FB460[v18];
    }

    CFDictionarySetValue(v15, @"geometryElement", v19);
    valuePtr = *(a1 + 80);
    v20 = CFNumberCreate(v16, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v15, @"bytesPerIndex", v20);
    CFRelease(v20);
    v21 = *(a1 + 96);
    v22 = *(a1 + 80);
    v23 = 7;
    if (v22 != 1)
    {
      v23 = 9;
    }

    if (v22 == 2)
    {
      v24 = 8;
    }

    else
    {
      v24 = v23;
    }

    Length = CFDataGetLength(*(a1 + 96));
    v26 = C3DCopyHostToLittleEndianRepresentationOfData(v21, v24, Length / *(a1 + 80));
    if (v26)
    {
      v27 = v26;
      CFDictionarySetValue(v15, @"indexes", v26);
      CFRelease(v27);
    }

    v28 = MEMORY[0x277CBED28];
    if (!*(a1 + 81))
    {
      v28 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v15, @"doubleSided", *v28);
  }

  return v15;
}

__CFArray *_C3DMeshElementCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v44 = 1;
  valuePtr = 5;
  v41 = a1;
  v42 = a1 + 88;
  v43 = *(a1 + 96);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v5, @"name", @"indexes");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 104;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v9, @"name", @"subElementsCount");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = v4;
  v14 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = v42;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v14, @"name", @"type");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x277CBF138];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v44 = 0;
  valuePtr = 2;
  v43 = v41 + 80;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v19, @"name", @"bytesPerIndex");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, MEMORY[0x277CBF150]);
  v44 = 0;
  valuePtr = 3;
  v43 = v41 + 81;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v23, @"name", @"doubleSided");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v27 = MEMORY[0x277CBF150];
  v28 = CFDictionaryCreateMutable(0, 4, v18, MEMORY[0x277CBF150]);
  v44 = 1;
  valuePtr = 5;
  v43 = *(v41 + 168);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v28, @"name", @"primitiveNormals");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  CFArrayAppendValue(Mutable, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v27);
  v44 = 0;
  valuePtr = 9;
  v43 = v41 + 176;
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v35 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v32, @"name", @"bbox[0]");
  CFDictionarySetValue(v32, @"type", v33);
  CFDictionarySetValue(v32, @"address", v35);
  CFDictionarySetValue(v32, @"semantic", v34);
  CFArrayAppendValue(Mutable, v32);
  CFRelease(v34);
  CFRelease(v32);
  CFRelease(v35);
  CFRelease(v33);
  v36 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v44 = 0;
  valuePtr = 9;
  v43 = v41 + 192;
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v39 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v36, @"name", @"bbox[1]");
  CFDictionarySetValue(v36, @"type", v37);
  CFDictionarySetValue(v36, @"address", v39);
  CFDictionarySetValue(v36, @"semantic", v38);
  CFArrayAppendValue(Mutable, v36);
  CFRelease(v38);
  CFRelease(v36);
  CFRelease(v39);
  CFRelease(v37);
  return Mutable;
}

void C3DMaterialSetTextureSampler(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  CommonProfile = C3DMaterialGetCommonProfile(a1, a2);
  C3DEffectCommonProfileSetTextureSampler(CommonProfile, a2, a3);
}

__n128 C3DTransformBoundingSphere(_BOOL8 a1, float32x4_t *a2, __n128 *a3, __n128 a4)
{
  v6 = a1;
  if (!a1 && (v7 = scn_default_log(0, a2), a1 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    C3DTransformBoundingSphere_cold_1(v7, a2, v8, v9, v10, v11, v12, v13);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DTransformBoundingSphere_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = *v6;
  v23 = a2[1];
  v29[0] = *a2;
  v29[1] = v23;
  v24 = a2[3];
  v29[2] = a2[2];
  v29[3] = v24;
  result.n128_f64[0] = C3DVector3MultMatrix4x4(v29, v22);
  result.n128_u32[3] = a3->n128_u32[3];
  *a3 = result;
  v26 = vabs_f32(a4.n128_u64[0]);
  if (v26.f32[0] < v26.f32[1])
  {
    v26.f32[0] = v26.f32[1];
  }

  v27 = fabsf(a4.n128_f32[2]);
  if (v26.f32[0] < v27)
  {
    v26.f32[0] = v27;
  }

  result.n128_f32[3] = v26.f32[0] * v6->f32[3];
  *a3 = result;
  return result;
}

uint64_t C3DMeshElementConvertStripToTriangleList(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (C3DMeshElementGetType(a1, a2) == 1)
  {
    v28 = 0;
    Indexes = C3DMeshElementGetIndexes(a1, &v28);
    if (v28 == 2)
    {
      v11 = Indexes;
      Mutable = CFDataCreateMutable(0, 0);
      PrimitiveCount = C3DMeshElementGetPrimitiveCount(a1);
      v14 = 6 * PrimitiveCount;
      v15 = C3DMalloc(6 * PrimitiveCount);
      BytePtr = CFDataGetBytePtr(v11);
      if (PrimitiveCount < 1)
      {
        v26 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = BytePtr + 4;
        v20 = v15;
        do
        {
          v21 = v19 - 2;
          v22 = *(v19 - 2);
          v23 = *(v19 - 1);
          if (v22 != v23)
          {
            v24 = *v19;
            if (v23 != v24 && v22 != v24)
            {
              if (v17)
              {
                LOWORD(v22) = *v19;
              }

              else
              {
                v21 = v19;
              }

              *v20 = v22;
              *(v20 + 1) = *(v19 - 1);
              *(v20 + 2) = *v21;
              ++v18;
              v20 += 6;
            }
          }

          ++v17;
          ++v19;
        }

        while (PrimitiveCount != v17);
        v26 = v18;
      }

      CFDataAppendBytes(Mutable, v15, v14);
      C3DMeshElementInit(a1, 0, v26, Mutable, 2);
      CFRelease(Mutable);
      if (v15)
      {
        free(v15);
      }
    }
  }

  return 1;
}

void __MakeNormalMatrix(_BOOL8 NormalMatrix_cold_1, _OWORD *a2)
{
  v3 = NormalMatrix_cold_1;
  if (!NormalMatrix_cold_1 && (v4 = scn_default_log(0, a2), NormalMatrix_cold_1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __MakeNormalMatrix_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(NormalMatrix_cold_1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __MakeNormalMatrix_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  C3DMatrix4x4ComputeNormalMatrix(v3, a2);
}

void __DestroyMaterialMeshElementCouple(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

CFComparisonResult __CompareMaterials(_BOOL8 a1, uint64_t *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __CompareMaterials_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __CompareMaterials_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  if (C3DMaterialGetName(*v3, a2))
  {
    Name = C3DMaterialGetName(*v3, v18);
  }

  else
  {
    Name = &stru_282DCC058;
  }

  if (C3DMaterialGetName(*a2, v18))
  {
    v21 = C3DMaterialGetName(*a2, v20);
  }

  else
  {
    v21 = &stru_282DCC058;
  }

  result = CFStringCompare(Name, v21, 0);
  if (result)
  {
    return result;
  }

  v23 = v3[1];
  v24 = a2[1];
  if (!v23)
  {
    PrimitiveCount = 0;
    if (v24)
    {
      goto LABEL_15;
    }

LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  PrimitiveCount = C3DMeshElementGetPrimitiveCount(v23);
  if (!v24)
  {
    goto LABEL_17;
  }

LABEL_15:
  v26 = C3DMeshElementGetPrimitiveCount(v24);
LABEL_18:
  v27 = -1;
  if (PrimitiveCount >= v26)
  {
    v27 = 1;
  }

  if (PrimitiveCount == v26)
  {
    return 0;
  }

  else
  {
    return v27;
  }
}

void __ReorderRendererElements(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  Mesh = C3DGeometryGetMesh(a1, v3);
  MaterialsCount = C3DGeometryGetMaterialsCount(a1, v5);
  if (MaterialsCount >= 1)
  {
    v8 = MaterialsCount;
    if (C3DMeshGetElementsCount(Mesh, v7) == MaterialsCount)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = C3DMalloc(0x10uLL);
        *v10 = 0;
        v10[1] = 0;
        MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, i);
        if (MaterialAtIndex)
        {
          MaterialAtIndex = CFRetain(MaterialAtIndex);
        }

        *v10 = MaterialAtIndex;
        if (C3DMeshGetElementsCount(Mesh, v12) >= 1)
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, i, 0);
          if (ElementAtIndex)
          {
            ElementAtIndex = CFRetain(ElementAtIndex);
          }

          v10[1] = ElementAtIndex;
        }

        CFArrayAppendValue(Mutable, v10);
      }

      if (v8 != 1)
      {
        v19.location = 0;
        v19.length = v8;
        CFArraySortValues(Mutable, v19, __CompareMaterials, 0);
      }

      C3DGeometryRemoveAllMaterials(a1, v14);
      C3DMeshRemoveAllElements(Mesh, v15);
      for (j = 0; j != v8; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
        C3DMeshAppendElement(Mesh, ValueAtIndex[1]);
        C3DGeometryAppendMaterial(a1, *ValueAtIndex);
        __DestroyMaterialMeshElementCouple(ValueAtIndex);
      }
    }
  }

  CFRelease(Mutable);
}

uint64_t _C3DCreateFlattenedGeometryFromNodeHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(&v107[2] + 4) = *MEMORY[0x277D85DE8];
  v103 = 0;
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  memset(v84, 0, sizeof(v84));
  C3DNodeGetLocalNoPivotMatrix(a1, a2, v84);
  Identity = C3DMatrix4x4GetIdentity();
  C3DNodeSetMatrix(a1, Identity);
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  HasPivot = C3DNodeGetHasPivot(a1, v7);
  if (HasPivot)
  {
    PivotMatrix = C3DNodeGetPivotMatrix(a1, v8);
    v10 = PivotMatrix[3];
    v12 = *PivotMatrix;
    v11 = PivotMatrix[1];
    v82 = PivotMatrix[2];
    v83 = v10;
    v80 = v12;
    v81 = v11;
    v13 = C3DMatrix4x4GetIdentity();
    C3DNodeSetPivotMatrix(a1, v13);
  }

  v87 = vdupq_n_s64(3uLL);
  v88 = xmmword_21C27F8B0;
  *&v92 = 0;
  memset(v85, 0, sizeof(v85));
  v89 = 4;
  v86 = 0;
  BYTE8(v92) = a4;
  v14 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  v16 = CFArrayCreateMutable(v14, 0, 0);
  v17 = CFArrayCreateMutable(v14, 0, MEMORY[0x277CBF128]);
  v18 = v14;
  v19 = CFDictionaryCreateMutable(v14, 0, 0, 0);
  context = Mutable;
  v101 = v16;
  v102 = v85;
  v70 = v17;
  v104 = v17;
  v105 = v19;
  v93[0] = 0;
  v93[1] = __CreateAndDispatchRendererElements;
  v93[2] = 0;
  v20 = C3DNodeIterateTree(a1, v93, 0, &context);
  v22 = C3DGeometryCreate(v20, v21);
  v24 = C3DMeshCreate(v22, v23);
  C3DGeometrySetMesh(v22, v24);
  v79 = v24;
  CFRelease(v24);
  v71 = v22;
  cf = Mutable;
  context = v22;
  v101 = v85;
  v69 = v19;
  v102 = v19;
  CFDictionaryApplyFunction(Mutable, __MergeRendererElements, &context);
  theArray = v16;
  Count = CFArrayGetCount(v16);
  v27 = Count;
  if (Count >= 1)
  {
    v28 = 0;
    do
    {
      while (1)
      {
        v29 = *(CFArrayGetValueAtIndex(theArray, v28) + 1);
        v99[0] = MEMORY[0x277D85DD0];
        v99[1] = 3221225472;
        v99[2] = ____MergeMeshSources_block_invoke;
        v99[3] = &__block_descriptor_40_e201_v32__0____C3DMeshSource____C3DGenericSource____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DSourceAccessor________CFData__v_v_qb1b1b1_SCC_8c16q20C28l;
        v99[4] = v85;
        C3DMeshApplySources(v29, 1, v99);
        if (v88 == 4)
        {
          break;
        }

        if (++v28 >= v27)
        {
          goto LABEL_12;
        }
      }

      ++v28;
    }

    while (v87.i64[0] != 4 && v28 < v27);
  }

LABEL_12:
  v74 = a1;
  v75 = v27;
  v31 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v77 = _Q0;
  do
  {
    if (*(v85 + v31) >= 1)
    {
      v37 = 0;
      do
      {
        v38 = v92;
        v39 = v87.i64[v31];
        if (!v39)
        {
          v40 = scn_default_log(Count, v26);
          Count = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);
          if (Count)
          {
            _C3DCreateFlattenedGeometryFromNodeHierarchy_cold_1(v106, v107, v40);
          }
        }

        if (v38 <= (0x7FFFFFFF / v39) && v38 * v39 <= 0x1FFFFFFF)
        {
          v42 = malloc_type_calloc(4 * v38 * v39, 1uLL, 0x78595BE0uLL);
          v43 = CFDataCreateWithBytesNoCopy(v18, v42, 4 * v38 * v39, v18);
          v44 = C3DMeshSourceCreate(v43, v31, v38, v39, 1);
          CFRelease(v43);
          if (v44)
          {
            if (v31 == 2)
            {
              v45 = C3DMeshSourceGetCount(v44, v26);
              if (v45 >= 1)
              {
                v46 = v45;
                for (i = 0; i != v46; ++i)
                {
                  C3DMeshSourceSetValueAtIndexAsVector4(v44, i, v77);
                }
              }
            }

            C3DMeshAddSource(v24, v44, 0, 0);
            CFRelease(v44);
          }
        }

        ++v37;
      }

      while (v37 < *(v85 + v31));
    }

    ++v31;
  }

  while (v31 != 9);
  if (v27 >= 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    do
    {
      v78 = v48;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v48);
      v52 = ValueAtIndex[1];
      v53 = ValueAtIndex[3];
      memset(v98, 0, sizeof(v98));
      if (v53)
      {
        C3DNodeComputeWorldMatrix(v53, v98);
      }

      else
      {
        C3DMatrix4x4MakeIdentity(v98);
      }

      for (j = 0; j != 9; ++j)
      {
        if (*(v85 + j) >= 1)
        {
          v56 = 0;
          v57 = v50;
          while (1)
          {
            SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v79, j, v56, 0);
            v59 = C3DMeshGetSourceWithSemanticAtIndex(v52, j, v56, 1);
            if (!v59)
            {
              goto LABEL_47;
            }

            v50 = v59;
            if ((j - 2) < 3)
            {
              break;
            }

            if (j == 1)
            {
              v96 = 0u;
              v97 = 0u;
              *buf = 0u;
              v95 = 0u;
              C3DMatrix4x4ComputeNormalMatrix(v98, buf);
              v66 = buf;
              v64 = SourceWithSemanticAtIndex;
              v65 = v50;
              goto LABEL_46;
            }

            if (j)
            {
              v67 = scn_default_log(v59, v54);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_21BEF7000, v67, OS_LOG_TYPE_DEFAULT, "Warning: __MergeMeshSources unknown source type\n", buf, 2u);
              }

              goto LABEL_47;
            }

            __TransformAndAppendMeshSource(SourceWithSemanticAtIndex, v59, v98, v49, v60, v61, v62, v63);
LABEL_48:
            ++v56;
            v57 = v50;
            if (v56 >= *(v85 + j))
            {
              goto LABEL_52;
            }
          }

          v64 = SourceWithSemanticAtIndex;
          v65 = v50;
          v66 = 0;
LABEL_46:
          __TransformAndAppendMeshSource(v64, v65, v66, v49, v60, v61, v62, v63);
LABEL_47:
          v50 = v57;
          goto LABEL_48;
        }

LABEL_52:
        ;
      }

      if (v50)
      {
        v49 += C3DMeshSourceGetCount(v50, v54);
      }

      v48 = v78 + 1;
    }

    while (v78 + 1 != v75);
  }

  __ReorderRendererElements(v71);
  CFRelease(cf);
  __DestroyFlattenElementsArray(theArray);
  CFRelease(v70);
  CFRelease(v69);
  CFRelease(theArray);
  C3DNodeSetMatrix(v74, v84);
  if (HasPivot)
  {
    C3DNodeSetPivotMatrix(v74, &v80);
  }

  return v71;
}

uint64_t __CreateAndDispatchRendererElements(const void *a1, const __CFDictionary **a2)
{
  *&v65[5] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[4];
  Geometry = C3DNodeGetGeometry(a1, a2);
  if (Geometry)
  {
    v7 = Geometry;
    if ((C3DNodeIsGizmo(a1) & 1) == 0)
    {
      v9 = a2[1];
      Mesh = C3DGeometryGetMesh(v7, v8);
      if (Mesh)
      {
        v11 = Mesh;
        PositionSource = C3DMeshGetPositionSource(Mesh, 1);
        if (PositionSource)
        {
          if (!a1)
          {
            v14 = scn_default_log(PositionSource, v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              C3DGeometryTrackNode_cold_2(v14, v13, v15, v16, v17, v18, v19, v20);
            }
          }

          v21 = C3DNodeGetGeometry(a1, v13);
          if (v21)
          {
            v23 = v21;
            v24 = C3DGeometryGetMesh(v21, v22);
            if (v24)
            {
              v26 = v24;
              ElementsCount = C3DMeshGetElementsCount(v24, v25);
              if (ElementsCount)
              {
                v28 = ElementsCount;
                theArray = v9;
                v62 = v4;
                v60 = v11;
                v29 = 0x20040DC1BFBCFLL;
                allocator = *MEMORY[0x277CBECE8];
                Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], ElementsCount, 0);
                if (v28 >= 1)
                {
                  for (i = 0; i != v28; ++i)
                  {
                    v32 = v29;
                    v33 = malloc_type_malloc(0x20uLL, v29);
                    v33[1] = v26;
                    *v33 = C3DMeshGetElementAtIndex(v26, i, 1);
                    v33[2] = C3DGeometryGetMaterialAtIndex(v23, i);
                    v33[3] = a1;
                    v34 = v33;
                    v29 = v32;
                    CFArrayAppendValue(Mutable, v34);
                  }
                }

                if (Mutable)
                {
                  Count = CFArrayGetCount(Mutable);
                  CFArrayAppendValue(v5, a1);
                  if (Count >= 1)
                  {
                    v36 = v29;
                    v37 = 0;
                    v38 = a2[2];
                    v39 = a2[5];
                    do
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v37);
                      if (!ValueAtIndex)
                      {
                        v42 = scn_default_log(0, v40);
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
                        {
                          __CreateAndDispatchRendererElements_cold_2(v64, v65, v42);
                        }
                      }

                      C3DNodeGetWorldAlpha(ValueAtIndex[3], v40);
                      v46 = 0;
                      if (v44 >= 1.0)
                      {
                        v45 = ValueAtIndex[2];
                        if (!v45 || C3DMaterialIsOpaque(v45, v43))
                        {
                          v46 = 1;
                        }
                      }

                      v47 = ValueAtIndex[2];
                      if (v47 && C3DMaterialIsDoubleSided(v47, v43))
                      {
                        v46 |= 2uLL;
                      }

                      Type = C3DMeshElementGetType(*ValueAtIndex, v43);
                      if (Type == 2)
                      {
                        v49 = (v46 | 0x10);
                      }

                      else if (Type == 1)
                      {
                        v49 = (v46 | 8);
                      }

                      else if (Type)
                      {
                        v49 = v46;
                      }

                      else
                      {
                        v49 = (v46 | 4);
                      }

                      Value = CFDictionaryGetValue(v62, v49);
                      if (!Value)
                      {
                        Value = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x277CBF150]);
                        CFDictionarySetValue(v62, v49, Value);
                        CFRelease(Value);
                      }

                      CFDictionarySetValue(v39, ValueAtIndex, *(v38 + 18));
                      v51 = CFDictionaryGetValue(Value, ValueAtIndex[2]);
                      if (!v51)
                      {
                        v51 = CFArrayCreateMutable(allocator, 0, 0);
                        CFDictionarySetValue(Value, ValueAtIndex[2], v51);
                        CFRelease(v51);
                      }

                      CFArrayAppendValue(v51, ValueAtIndex);
                      ++v37;
                    }

                    while (Count != v37);
                    v52 = C3DMeshGetPositionSource(v60, 1);
                    if (v52)
                    {
                      v54 = 0;
                      *(v38 + 18) += C3DMeshSourceGetCount(v52, v53);
                      do
                      {
                        SourcesCountForSemantic = C3DMeshGetSourcesCountForSemantic(v60, v54);
                        if (SourcesCountForSemantic > *(v38 + v54))
                        {
                          *(v38 + v54) = SourcesCountForSemantic;
                        }

                        ++v54;
                      }

                      while (v54 != 9);
                    }

                    v56 = malloc_type_malloc(0x20uLL, v36);
                    v57 = CFArrayGetValueAtIndex(Mutable, 0);
                    v58 = v57[1];
                    *v56 = *v57;
                    v56[1] = v58;
                    CFArrayAppendValue(theArray, v56);
                  }

                  CFRelease(Mutable);
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void __MergeRendererElements(char a1, CFDictionaryRef theDict, uint64_t *a3)
{
  v3 = a3[1];
  context = *a3;
  v6 = 0;
  if (*(v3 + 144) < 0x10000)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  HIDWORD(v6) = v4;
  LOBYTE(v6) = (a1 | *(v3 + 152)) & 1;
  v7 = a3[2];
  CFDictionaryApplyFunction(theDict, __MergeRendererElementsSharingSameMaterial, &context);
}

void __DestroyFlattenElementsArray(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      free(ValueAtIndex);
    }
  }

  CFArrayRemoveAllValues(a1);
}

const void *C3DSplitMeshIfNeeded(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  Geometry = C3DNodeGetGeometry(a1, a2);
  if (!Geometry)
  {
    return 0;
  }

  if (C3DNodeGetSkinner(a1, v11))
  {
    return 0;
  }

  if (C3DNodeGetMorpher(a1, v12))
  {
    return 0;
  }

  Mesh = C3DGeometryGetMesh(Geometry, v13);
  if (!Mesh)
  {
    return 0;
  }

  v17 = Mesh;
  PositionSource = C3DMeshGetPositionSource(Mesh, 1);
  if (PositionSource)
  {
    PositionSource = C3DMeshSourceGetCount(PositionSource, v19);
    v20 = PositionSource;
  }

  else
  {
    v20 = 0;
  }

  if (v20 <= a2)
  {
    return 0;
  }

  v14 = C3DNodeCreate(PositionSource, v19);
  Name = C3DNodeGetName(a1, v21);
  if (Name)
  {
    v23 = CFStringCreateWithFormat(0, 0, @"%@-splitContainer", Name);
    C3DNodeSetName(v14, v23);
    CFRelease(v23);
  }

  else
  {
    C3DNodeSetName(v14, @"splitContainer");
  }

  v55 = a1;
  C3DNodeAddChildNode(a1, v14);
  CFRelease(v14);
  v24 = malloc_type_malloc(8 * v20, 0x100004000313F17uLL);
  v64 = 8 * v20;
  v25 = malloc_type_malloc(8 * v20, 0x100004000313F17uLL);
  MaterialsCount = C3DGeometryGetMaterialsCount(Geometry, v26);
  ElementsCount = C3DMeshGetElementsCount(v17, v28);
  if (ElementsCount >= 1)
  {
    v29 = 0;
    v30 = 0;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    v62 = v14;
    v63 = v17;
    v65 = MaterialsCount;
    do
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(v17, v29, 1);
      v68 = v30 + 1;
      _createSubNodeForSplittedMesh(v14, v30, &v71, &v69, &v70);
      v32 = v69;
      Type = C3DMeshElementGetType(ElementAtIndex, v33);
      if (Type == 3)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2 * (Type == 2);
      }

      C3DMeshElementSetType(v32, v35);
      DoubleSided = C3DMeshElementGetDoubleSided(ElementAtIndex, v36);
      v66 = v32;
      C3DMeshElementSetDoubleSided(v32, DoubleSided);
      PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
      IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(ElementAtIndex, v39);
      bzero(v25, v64);
      v41 = PrimitiveCount;
      v58 = v29 / MaterialsCount;
      v59 = v29;
      if (PrimitiveCount < 1)
      {
        v67 = 0;
        v45 = 0;
      }

      else
      {
        v42 = 0;
        v43 = 0;
        v67 = 0;
        v61 = IndexCountPerPrimitive - 1;
        v57 = PrimitiveCount;
        do
        {
          if (IndexCountPerPrimitive < 1)
          {
            v45 = v42;
          }

          else
          {
            v44 = 0;
            v45 = v42;
            do
            {
              Index = C3DMeshElementGetIndex(ElementAtIndex, v43, v44, 0);
              if (!*(v25 + Index))
              {
                v24[v45++] = Index;
                *(v25 + Index) = v45;
                if (v45 == a2)
                {
                  if (v44 == v61)
                  {
                    v42 = a2;
                  }

                  v43 -= v44 != v61;
                  _finalizeSplit(v67, (v43 + 1), v25, v24, v42, ElementAtIndex, v66, v71, v63);
                  if (v65)
                  {
                    MaterialAtIndex = C3DGeometryGetMaterialAtIndex(Geometry, v59 - v58 * v65);
                    C3DGeometryInsertMaterialAtIndex(v70, MaterialAtIndex, 0);
                  }

                  _createSubNodeForSplittedMesh(v62, v68, &v71, &v69, &v70);
                  v48 = v69;
                  v50 = C3DMeshElementGetType(ElementAtIndex, v49);
                  if (v50 == 3)
                  {
                    v51 = 3;
                  }

                  else
                  {
                    v51 = 2 * (v50 == 2);
                  }

                  C3DMeshElementSetType(v48, v51);
                  v53 = C3DMeshElementGetDoubleSided(ElementAtIndex, v52);
                  v66 = v48;
                  C3DMeshElementSetDoubleSided(v48, v53);
                  bzero(v25, v64);
                  v45 = 0;
                  v67 = v43 + 1;
                  ++v68;
                  v44 = IndexCountPerPrimitive;
                }
              }

              ++v44;
            }

            while (v44 < IndexCountPerPrimitive);
          }

          ++v43;
          v42 = v45;
          v41 = v57;
        }

        while (v43 < v57);
      }

      v17 = v63;
      if (v67 < v41)
      {
        _finalizeSplit(v67, v41, v25, v24, v45, ElementAtIndex, v66, v71, v63);
        if (v65)
        {
          v54 = C3DGeometryGetMaterialAtIndex(Geometry, v59 - v58 * v65);
          C3DGeometryInsertMaterialAtIndex(v70, v54, 0);
        }
      }

      v29 = v59 + 1;
      v14 = v62;
      MaterialsCount = v65;
      v30 = v68;
    }

    while ((v59 + 1) != ElementsCount);
  }

  free(v25);
  free(v24);
  C3DNodeSetGeometry(v55, 0);
  return v14;
}

void _createSubNodeForSplittedMesh(uint64_t a1, uint64_t a2, void *a3, void *a4, __C3DGeometry **a5)
{
  v10 = C3DNodeCreate(a1, a2);
  C3DNodeAddChildNode(a1, v10);
  Name = C3DNodeGetName(a1, v11);
  if (Name)
  {
    v14 = CFStringCreateWithFormat(0, 0, @"%@-split%d", Name, a2);
    C3DNodeSetName(v10, v14);
    CFRelease(v14);
  }

  v15 = C3DGeometryCreate(Name, v13);
  v17 = C3DMeshCreate(v15, v16);
  C3DNodeSetGeometry(v10, v15);
  C3DGeometrySetMesh(v15, v17);
  v20 = C3DMeshElementCreate(v18, v19);
  C3DMeshAppendElement(v17, v20);
  CFRelease(v20);
  CFRelease(v17);
  CFRelease(v15);
  CFRelease(v10);
  *a4 = v20;
  *a3 = v17;
  *a5 = v15;
}

void _finalizeSplit(uint64_t a1, const __CFAllocator *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, _BOOL8 a8, uint64_t a9)
{
  v13 = a1;
  *&v85[5] = *MEMORY[0x277D85DE8];
  v14 = a2 - a1;
  v15 = a5 > 255;
  if (a5 <= 255)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(a6, a2);
  v18 = IndexCountPerPrimitive;
  v79 = a5;
  v19 = a5 < 0x10000;
  if (a5 < 0x10000)
  {
    v20 = v16;
  }

  else
  {
    v20 = 4;
  }

  v21 = 2;
  if (v19)
  {
    v21 = v15;
  }

  length = (IndexCountPerPrimitive << v21) * v14;
  Index = malloc_type_malloc(length, 0xEE043048uLL);
  bytes = Index;
  bytesDeallocator = a2;
  v68 = a2 - v13;
  v24 = 0;
  if (a2 > v13)
  {
    do
    {
      if (v18 >= 1)
      {
        v25 = 0;
        v80 = &bytes[2 * v24];
        v26 = v24 + bytes;
        theArray = v24;
        v27 = &bytes[4 * v24];
        do
        {
          Index = C3DMeshElementGetIndex(a6, v13, v25, 0);
          v28 = Index;
          if (!*(a3 + 8 * Index))
          {
            v29 = scn_default_log(Index, v23);
            Index = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);
            if (Index)
            {
              _finalizeSplit_cold_1(v82, &v83, v29);
            }
          }

          v30 = *(a3 + 8 * v28) - 1;
          if (v20 == 2)
          {
            *&v80[2 * v25] = v30;
          }

          else if (v20 == 1)
          {
            v26[v25] = v30;
          }

          else
          {
            *&v27[4 * v25] = v30;
          }

          ++v25;
        }

        while (v18 != v25);
        v24 = (theArray + v25);
      }

      ++v13;
    }

    while (v13 != bytesDeallocator);
  }

  if (v24 != (v18 * v68))
  {
    v31 = scn_default_log(Index, v23);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      _finalizeSplit_cold_2(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  bytesDeallocatora = *MEMORY[0x277CBECE8];
  v39 = CFDataCreateWithBytesNoCopy(0, bytes, length, *MEMORY[0x277CBECE8]);
  C3DMeshElementSetPrimitives(a7, v68, v39, v20);
  CFRelease(v39);
  theArraya = C3DMeshCopyAllSources(a9, 1);
  bytesa = CFArrayGetCount(theArraya);
  v40 = v79;
  if (bytesa >= 1)
  {
    for (i = 0; i != bytesa; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArraya, i);
      ComponentsCountPerValue = C3DMeshSourceGetComponentsCountPerValue(ValueAtIndex);
      ValueType = C3DMeshSourceGetValueType(ValueAtIndex);
      Accessor = C3DMeshSourceGetAccessor(ValueAtIndex, v45, v46, v47, v48, v49, v50, v51);
      v81 = ComponentsCountPerValue;
      v54 = C3DSizeOfBaseType(ValueType, v53) * ComponentsCountPerValue;
      v55 = v54 * v40;
      v56 = malloc_type_malloc(v54 * v40, 0x100004077774924uLL);
      v58 = v56;
      if (v40 < 1)
      {
        v59 = 0;
      }

      else
      {
        v59 = 0;
        v60 = a4;
        do
        {
          v61 = *v60++;
          ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, v61);
          v56 = memcpy(&v58[v59], ValuePtrAtIndex, v54);
          v59 += v54;
          --v40;
        }

        while (v40);
      }

      if (v59 != v55)
      {
        v63 = scn_default_log(v56, v57);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
        {
          _finalizeSplit_cold_3(v84, v85, v63);
        }
      }

      v64 = CFDataCreateWithBytesNoCopy(0, v58, v55, bytesDeallocatora);
      Semantic = C3DMeshSourceGetSemantic(ValueAtIndex, v65);
      v40 = v79;
      v67 = C3DMeshSourceCreate(v64, Semantic, v79, v81, ValueType);
      CFRelease(v64);
      C3DMeshAddSource(a8, v67, 0, 0);
      CFRelease(v67);
    }
  }

  CFRelease(theArraya);
}

void C3DSplitMeshesIfNeededInNodeTree(_BOOL8 a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v13 = a2;
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  v12[0] = 0;
  v12[1] = _C3DSplitMeshesIfNeededInNodeTree;
  v12[2] = 0;
  C3DNodeIterateTree(a1, v12, 1, &v13);
  CFRelease(cf);
}

uint64_t _C3DSplitMeshesIfNeededInNodeTree(uint64_t a1, uint64_t *a2)
{
  Geometry = C3DNodeGetGeometry(a1, a2);
  if (Geometry)
  {
    Copy = Geometry;
    v6 = a2[1];
    Value = CFDictionaryGetValue(v6, Geometry);
    if (Value)
    {
      Copy = C3DNodeCreateCopy(Value, 1);
      C3DNodeAddChildNode(a1, Copy);
      C3DNodeSetGeometry(a1, 0);
    }

    else
    {
      v8 = *a2;
      CFRetain(Copy);
      v9 = C3DSplitMeshIfNeeded(a1, v8);
      if (v9)
      {
        CFDictionarySetValue(v6, Copy, v9);
      }
    }

    CFRelease(Copy);
  }

  return 0;
}

uint64_t C3DVRAMResourceGetID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DVRAMResourceGetID_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

void C3DVRAMResourceSetID(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DVRAMResourceSetID_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 48) = a2;
}

uint64_t C3DVRAMResourceIsAttachment(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DVRAMResourceSetID_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 60);
}

uint64_t C3DVRAMResourceLock(uint64_t a1)
{
  v1 = (*(a1 + 56) + 1);
  *(a1 + 56) = v1;
  return v1;
}

uint64_t C3DVRAMResourceUnlock(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DVRAMResourceSetID_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(v2 + 56);
  if (v10)
  {
    *(v2 + 56) = v10 - 1;
  }

  else
  {
    v11 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_DEFAULT, "Warning: unlock not locked ressource\n", v13, 2u);
    }
  }

  return *(v2 + 56);
}

uint64_t C3DMeshCreateWithMeshSourcesAndMeshElements(_BOOL8 a1, const __CFArray *a2, uint64_t a3)
{
  v5 = a1;
  if (!a3)
  {
    v6 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DMeshCreateWithMeshSourcesAndMeshElements_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = C3DMeshCreate(a1, a2);
  Count = CFArrayGetCount(v5);
  if (Count >= 1)
  {
    v15 = Count;
    for (i = 0; i != v15; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      C3DMeshAddSource(v13, ValueAtIndex, *(a3 + i), 0);
    }
  }

  v18 = CFArrayGetCount(a2);
  if (v18 >= 1)
  {
    v19 = v18;
    for (j = 0; j != v19; ++j)
    {
      v21 = CFArrayGetValueAtIndex(a2, j);
      C3DMeshAppendElement(v13, v21);
    }
  }

  return v13;
}

uint64_t C3DMeshCreateByMergingMeshes(const __CFArray *a1)
{
  *(&v63[1] + 4) = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v3 = Count;
  if (Count != 1)
  {
    v51 = C3DMeshCreate(Count, v2);
    Mutable = C3DMeshSourceCreateMutable(0, 0, 0, 3, 1);
    v8 = C3DMeshSourceCreateMutable(0, 1, 0, 3, 1);
    v48 = C3DMeshSourceCreateMutable(0, 3, 0, 2, 1);
    if (v3 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v46 = v8;
      v47 = Mutable;
      v44 = *MEMORY[0x277CBECE8];
      v45 = v3;
      while (1)
      {
        v50 = v10;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
        SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(ValueAtIndex, 0, 0, 1);
        v13 = C3DMeshGetSourceWithSemanticAtIndex(ValueAtIndex, 1, 0, 1);
        v14 = C3DMeshGetSourceWithSemanticAtIndex(ValueAtIndex, 3, 0, 1);
        v17 = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v15);
        if (v17 >= 1)
        {
          for (i = 0; i != v17; ++i)
          {
            DWORD2(v55) = 0;
            *&v55 = 0;
            *&v19 = C3DMeshSourceGetValueAtIndexAsVector3(SourceWithSemanticAtIndex, i);
            v55 = v19;
            C3DMeshSourceAppendVector3(Mutable, &v55, 1);
            *&bytes[8] = 0;
            *bytes = 0;
            *&v20 = C3DMeshSourceGetValueAtIndexAsVector3(v13, i);
            *bytes = v20;
            C3DMeshSourceAppendVector3(v8, bytes, 1);
            ValueAtIndexAsVector2 = 0.0;
            ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(v14, i);
            C3DMeshSourceAppendVector2(v48, &ValueAtIndexAsVector2, 1);
          }
        }

        v21 = v17 + v9;
        if (C3DMeshGetElementsCount(ValueAtIndex, v16) >= 1)
        {
          break;
        }

LABEL_46:
        v10 = v50 + 1;
        v9 = v21;
        v8 = v46;
        Mutable = v47;
        if (v50 + 1 == v45)
        {
          goto LABEL_47;
        }
      }

      v22 = 0;
      while (1)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(ValueAtIndex, v22, 1);
        Type = C3DMeshElementGetType(ElementAtIndex, v24);
        v26 = CFDataCreateMutable(v44, 0);
        PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        FastIndexLookupInfo = C3DMeshElementGetFastIndexLookupInfo(ElementAtIndex, v28, &v55);
        if (v21 >= 0x10000)
        {
          break;
        }

        if (PrimitiveCount >= 1)
        {
          for (j = 0; PrimitiveCount != j; ++j)
          {
            if (Type == 3)
            {
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              *bytes = v9 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 0, 0);
              p_ValueAtIndexAsVector2 = bytes;
              v33 = v26;
              v34 = 2;
            }

            else if (Type == 2)
            {
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              LOWORD(ValueAtIndexAsVector2) = v9 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 0, 0);
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              WORD1(ValueAtIndexAsVector2) = v9 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 1, 0);
              p_ValueAtIndexAsVector2 = &ValueAtIndexAsVector2;
              v33 = v26;
              v34 = 4;
            }

            else
            {
              if (Type)
              {
                v35 = scn_default_log(FastIndexLookupInfo, v30);
                FastIndexLookupInfo = os_log_type_enabled(v35, OS_LOG_TYPE_FAULT);
                if (FastIndexLookupInfo)
                {
                  C3DMeshCreateByMergingMeshes_cold_1(v62, v63, v35);
                }

                continue;
              }

              *bytes = v55;
              v53 = v56;
              v54 = v57;
              LOWORD(ValueAtIndexAsVector2) = v9 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 0, 0);
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              WORD1(ValueAtIndexAsVector2) = v9 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 1, 0);
              *bytes = v55;
              v53 = v56;
              v54 = v57;
              WORD2(ValueAtIndexAsVector2) = v9 + C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, j, 2, 0);
              p_ValueAtIndexAsVector2 = &ValueAtIndexAsVector2;
              v33 = v26;
              v34 = 6;
            }

            CFDataAppendBytes(v33, p_ValueAtIndexAsVector2, v34);
          }
        }

        v41 = 2;
LABEL_43:
        v42 = C3DMeshElementCreate(FastIndexLookupInfo, v30);
        C3DMeshElementInit(v42, Type, PrimitiveCount, v26, v41);
        C3DMeshAppendElement(v51, v42);
        if (v42)
        {
          CFRelease(v42);
        }

        CFRelease(v26);
        if (++v22 >= C3DMeshGetElementsCount(ValueAtIndex, v43))
        {
          goto LABEL_46;
        }
      }

      if (PrimitiveCount < 1)
      {
LABEL_42:
        v41 = 4;
        goto LABEL_43;
      }

      v36 = 0;
      while (1)
      {
        if (Type == 3)
        {
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          *bytes = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v36, 0, 0) + v9;
          v37 = bytes;
          v38 = v26;
          v39 = 4;
        }

        else if (Type == 2)
        {
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          LODWORD(ValueAtIndexAsVector2) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v36, 0, 0) + v9;
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          HIDWORD(ValueAtIndexAsVector2) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v36, 1, 0) + v9;
          v37 = &ValueAtIndexAsVector2;
          v38 = v26;
          v39 = 8;
        }

        else
        {
          if (Type)
          {
            v40 = scn_default_log(FastIndexLookupInfo, v30);
            FastIndexLookupInfo = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);
            if (FastIndexLookupInfo)
            {
              C3DMeshCreateByMergingMeshes_cold_1(v58, &v59, v40);
            }

            goto LABEL_39;
          }

          *bytes = v55;
          v53 = v56;
          v54 = v57;
          LODWORD(ValueAtIndexAsVector2) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v36, 0, 0) + v9;
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          HIDWORD(ValueAtIndexAsVector2) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v36, 1, 0) + v9;
          *bytes = v55;
          v53 = v56;
          v54 = v57;
          v61 = C3DMeshElementGetIndexUsingFastIndexLookupInfo(bytes, v36, 2, 0) + v9;
          v37 = &ValueAtIndexAsVector2;
          v38 = v26;
          v39 = 12;
        }

        CFDataAppendBytes(v38, v37, v39);
LABEL_39:
        if (PrimitiveCount == ++v36)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_47:
    C3DMeshSourceMakeImmutable(Mutable);
    C3DMeshSourceMakeImmutable(v8);
    C3DMeshSourceMakeImmutable(v48);
    C3DMeshAddSource(v51, Mutable, 0, 0);
    C3DMeshAddSource(v51, v8, 0, 0);
    C3DMeshAddSource(v51, v48, 0, 0);
    CFRelease(Mutable);
    CFRelease(v8);
    CFRelease(v48);
    return v51;
  }

  v4 = CFArrayGetValueAtIndex(a1, 0);

  return C3DMeshCreateCopy(v4, v5);
}

CFTypeRef C3DMeshSubdivide(uint64_t a1, CFIndex a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v127 = *MEMORY[0x277D85DE8];
  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a3);
  if (C3DMeshElementGetType(a3, v15) == 2)
  {
    return 0;
  }

  v111 = a7;
  v108 = C3DMeshElementEditorCreateWithMeshElementAndCapacity(a3, 4 * PrimitiveCount);
  Count = C3DMeshSourceGetCount(a4, v17);
  v18 = C3DEdgeArrayCreateFromMeshElement(a1, a2);
  v20 = C3DEdgeArrayGetCount(v18, v19);
  v21 = malloc_type_malloc(16 * v20, 0x1000040451B5BE8uLL);
  v109 = PrimitiveCount;
  if (a6)
  {
    v22 = malloc_type_malloc(8 * v20, 0x100004000313F17uLL);
    v113 = a5 != 0;
LABEL_7:
    if (v20 >= 1)
    {
      for (i = 0; i != v20; ++i)
      {
        EdgeAtIndex = C3DEdgeArrayGetEdgeAtIndex(v18, i);
        v25 = EdgeAtIndex;
        if (v113)
        {
          *&v26 = C3DMeshSourceGetValueAtIndexAsVector3(a5, *EdgeAtIndex);
          *cfb = v26;
          *v27.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a5, v25[1]);
          *v28.i64 = C3DVector3MidVector(*cfb, v27);
          v29 = vmulq_f32(v28, v28);
          *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
          *v29.f32 = vrsqrte_f32(v30);
          *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
          v21[i] = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
        }

        if (a6)
        {
          ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(a6, *v25);
          v22[i] = vmul_f32(vadd_f32(*&ValueAtIndexAsVector2, COERCE_FLOAT32X2_T(C3DMeshSourceGetValueAtIndexAsVector2(a6, v25[1]))), 0x3F0000003F000000);
        }
      }
    }

    if (v113)
    {
      C3DMeshSourceAppendVector3(a5, v21, v20);
    }

    if (a6)
    {
      C3DMeshSourceAppendVector2(a6, v22, v20);
    }

    if (v22)
    {
      free(v22);
    }

    goto LABEL_20;
  }

  v113 = a5 != 0;
  if (a5)
  {
    v22 = 0;
    goto LABEL_7;
  }

LABEL_20:
  if (v20 >= 1)
  {
    for (j = 0; j != v20; ++j)
    {
      v33 = C3DEdgeArrayGetEdgeAtIndex(v18, j);
      *&v34 = C3DMeshSourceGetValueAtIndexAsVector3(a4, *v33);
      *cfc = v34;
      *v35.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a4, v33[1]);
      *v36.i64 = C3DVector3MidVector(*cfc, v35);
      v21[j] = v36;
    }

    if ((v113 & v111) == 1)
    {
      for (k = 0; k != v20; ++k)
      {
        v38 = C3DEdgeArrayGetEdgeAtIndex(v18, k);
        v39 = *v38;
        v40 = v38[1];
        *v41.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a4, *v38);
        v114 = v41;
        v126 = v41;
        *v42.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a4, v40);
        v107 = v42;
        v125 = v42;
        *&v43 = C3DMeshSourceGetValueAtIndexAsVector3(a5, v39);
        v124 = v43;
        *&v44 = C3DMeshSourceGetValueAtIndexAsVector3(a5, v40);
        v123 = v44;
        v112 = v21[k];
        *v45.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a5, k + Count);
        v46 = v45;
        v47 = vsubq_f32(v114, v112);
        v48 = vmulq_f32(v47, v47);
        v49 = vsubq_f32(v107, v112);
        v50 = vmulq_f32(v49, v49);
        v122 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v50, v50, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v50.i8), vzip2_s32(*v48.i8, *v50.i8))));
        v51 = 0uLL;
        v52 = &v126;
        v53 = &v124;
        v54 = &v122;
        v55 = 1;
        *cf = v46;
        do
        {
          v115 = v51;
          v56 = v55;
          v57 = vsubq_f32(*v52, v112);
          v58 = vmulq_f32(v57, v57);
          *&v59 = v58.f32[2] + vaddv_f32(*v58.f32);
          *v58.f32 = vrsqrte_f32(v59);
          *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32)));
          v60 = C3DVector3Angle(vmulq_n_f32(v57, vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32))).f32[0]), v46);
          v61 = C3DVector3Angle(*cf, *v53) * 0.5;
          v64 = cosf(v61);
          if (v64 == 0.0)
          {
            v65 = scn_default_log(v62, v63);
            v66 = 1.0;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              C3DMeshSubdivide_cold_1(&buf, v121, v65);
            }
          }

          else
          {
            v66 = v64;
          }

          v67 = v54->f32[0];
          v68 = cosf(v60 - v61);
          v55 = 0;
          v46 = *cf;
          v51 = vaddq_f32(v115, vmulq_n_f32(*cf, ((v68 * v67) / v66) * 0.5));
          v52 = &v125;
          v53 = &v123;
          v54 = (&v122 + 4);
        }

        while ((v56 & 1) != 0);
        v21[k] = vaddq_f32(v112, v51);
      }
    }
  }

  C3DMeshSourceAppendVector3(a4, v21, v20);
  free(v21);
  cfa = C3DTriangulationInfoCreateFromMeshElement(a3, a4, v18);
  if (v109 >= 1)
  {
    for (m = 0; m != v109; ++m)
    {
      EdgesAtFaceIndex = C3DTriangulationInfoGetEdgesAtFaceIndex(cfa, m);
      v73 = *EdgesAtFaceIndex;
      v72 = EdgesAtFaceIndex[1];
      v74 = EdgesAtFaceIndex[2];
      v75 = C3DEdgeArrayGetEdgeAtIndex(v18, *EdgesAtFaceIndex);
      v76 = C3DEdgeArrayGetEdgeAtIndex(v18, v72);
      v77 = C3DEdgeArrayGetEdgeAtIndex(v18, v74);
      Index = C3DMeshElementGetIndex(a3, m, 0, 0);
      v79 = C3DMeshElementGetIndex(a3, m, 2, 0);
      v81 = *v75;
      if (*v75 == Index)
      {
        v82 = v75[1];
        v83 = Count;
        v84 = v73 + Count;
        v85 = v82 == v79;
        if (v82 == v79)
        {
          v86 = v73 + Count;
        }

        else
        {
          v86 = -1;
        }

        if (v85)
        {
          v84 = -1;
        }

        v87 = -1;
      }

      else
      {
        v88 = v75[1];
        v83 = Count;
        v89 = v88 == Index;
        if (v88 == Index)
        {
          v84 = v73 + Count;
        }

        else
        {
          v84 = -1;
        }

        if (v89)
        {
          v87 = -1;
        }

        else
        {
          v87 = v73 + Count;
        }

        v90 = v81 == v79;
        if (v81 == v79)
        {
          v86 = v84;
        }

        else
        {
          v86 = -1;
        }

        if (v90)
        {
          v84 = -1;
        }
      }

      if (*v76 == Index)
      {
        if (v76[1] == v79)
        {
          v86 = v72 + v83;
        }

        else
        {
          v84 = v72 + v83;
        }
      }

      else
      {
        v91 = v76[1];
        v92 = v72 + v83;
        v93 = v91 == Index;
        if (v91 == Index)
        {
          v94 = v72 + v83;
        }

        else
        {
          v87 = v72 + v83;
          v94 = v84;
        }

        if (!v93)
        {
          v92 = v86;
        }

        if (*v76 == v79)
        {
          v86 = v92;
        }

        else
        {
          v84 = v94;
        }
      }

      v95 = *v77;
      if (*v77 == Index)
      {
        v96 = v77[1];
        if (v96 == v79)
        {
          v97 = v74 + v83;
        }

        else
        {
          v97 = v86;
        }

        if (v96 == v79)
        {
          v98 = v84;
        }

        else
        {
          v98 = v74 + v83;
        }
      }

      else
      {
        v99 = v77[1];
        v100 = v74 + v83;
        v101 = v99 == Index;
        if (v99 == Index)
        {
          v102 = v74 + v83;
        }

        else
        {
          v87 = v74 + v83;
          v102 = v84;
        }

        if (!v101)
        {
          v100 = v86;
        }

        if (v95 == v79)
        {
          v97 = v100;
        }

        else
        {
          v97 = v86;
        }

        if (v95 == v79)
        {
          v98 = v84;
        }

        else
        {
          v98 = v102;
        }
      }

      if (v97 == -1 || v98 == -1 || v87 == -1)
      {
        v105 = scn_default_log(v79, v80);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
        {
          C3DMeshSubdivide_cold_2(&v126, (v126.i64 + 4), v105);
        }
      }

      C3DMeshElementEditorSubdivideTriangleAtIndex(v108, m, v97, v98, v87);
    }
  }

  MeshElement = C3DMeshElementEditorGenerateMeshElement(v108, v69);
  CFRetain(MeshElement);
  CFRelease(v108);
  CFRelease(v18);
  CFRelease(cfa);
  return CFAutorelease(MeshElement);
}

uint64_t C3DMeshCopyWithTransform(uint64_t a1, float32x4_t *a2)
{
  memset(v23, 0, sizeof(v23));
  Copy = C3DMeshCreateCopy(a1, a2);
  PositionSource = C3DMeshGetPositionSource(Copy, 0);
  DeepCopy = C3DMeshSourceCreateDeepCopy(PositionSource, v6);
  Accessor = C3DGenericSourceGetAccessor(DeepCopy, v8);
  Count = C3DMeshSourceGetCount(DeepCopy, v10);
  __C3DTransformFloatsInAccessor(Accessor, 0, Count, a2, 0);
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 0, 0);
  C3DMeshSetSourceWithInputSet(Copy, DeepCopy, 0, ChannelForSourceWithSemanticAtIndex);
  NormalSource = C3DMeshGetNormalSource(Copy, 0);
  if (NormalSource)
  {
    v15 = NormalSource;
    v16 = C3DMeshSourceCreateDeepCopy(NormalSource, v14);
    __MakeNormalMatrix(a2, v23);
    __TransformAndAppendMeshSource(v16, v15, v23, 0, v17, v18, v19, v20);
    v21 = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 1, 0);
    C3DMeshSetSourceWithInputSet(Copy, v16, 0, v21);
    CFRelease(v16);
  }

  CFRelease(DeepCopy);
  return Copy;
}

void __C3DTransformFloatsInAccessor(void *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, int a5)
{
  if (a3 >= 1)
  {
    v19 = v5;
    v20 = v6;
    v9 = a3;
    do
    {
      MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(a1, a2);
      v13.i64[0] = *MutableValuePtrAtIndex;
      v13.i32[2] = *(MutableValuePtrAtIndex + 2);
      v14 = a4[1];
      v18[0] = *a4;
      v18[1] = v14;
      v15 = a4[3];
      v18[2] = a4[2];
      v18[3] = v15;
      if (a5)
      {
        v16 = C3DVector3Rotate(v18, v13);
      }

      else
      {
        v16 = C3DVector3MultMatrix4x4(v18, v13);
      }

      *MutableValuePtrAtIndex = v16;
      *(MutableValuePtrAtIndex + 2) = v17;
      ++a2;
      --v9;
    }

    while (v9);
  }
}

void __TransformAndAppendMeshSource(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Accessor = C3DGenericSourceGetAccessor(a1, a2);
  v14 = C3DGenericSourceGetAccessor(a2, v13);
  Count = C3DSourceAccessorGetCount(v14);
  v16 = C3DSourceAccessorCopyDataToAccessor(v14, Accessor, a4);
  if (v16)
  {
    MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, 0);
    v19 = C3DSourceAccessorGetCount(Accessor);
    ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v14);
    _C3DMeshSourceSetupNonInitializedComponents(a1, MutableValuePtrAtIndex, v19, ComponentsCountPerValue);
    if (a3)
    {
      v22 = C3DMeshSourceGetSemantic(a1, v21) == 1;

      __C3DTransformFloatsInAccessor(Accessor, a4, Count, a3, v22);
    }
  }

  else
  {
    v23 = scn_default_log(v16, v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __TransformAndAppendMeshSource_cold_1();
    }
  }
}

uint64_t C3DWarmupMaterialVRAMResourcesForEngineContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CommonProfile = C3DMaterialGetCommonProfile(a1, a2);
  if (!CommonProfile)
  {
    return 1;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke;
  v15[3] = &unk_2782FB490;
  v15[5] = CommonProfile;
  v15[6] = a2;
  v15[4] = a3;
  v13[48] = a2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_2;
  v14[3] = &unk_2782FB490;
  v14[5] = CommonProfile;
  v14[6] = a2;
  v14[4] = a3;
  v13[42] = MEMORY[0x277D85DD0];
  v13[43] = 3221225472;
  v13[44] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_3;
  v13[45] = &unk_2782FB490;
  v13[46] = a3;
  v13[47] = CommonProfile;
  v13[35] = MEMORY[0x277D85DD0];
  v13[36] = 3221225472;
  v13[37] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_4;
  v13[38] = &unk_2782FB490;
  v13[41] = a2;
  v13[40] = CommonProfile;
  v13[39] = a3;
  v13[28] = MEMORY[0x277D85DD0];
  v13[29] = 3221225472;
  v13[30] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_5;
  v13[31] = &unk_2782FB490;
  v13[34] = a2;
  v13[33] = CommonProfile;
  v13[32] = a3;
  v13[21] = MEMORY[0x277D85DD0];
  v13[22] = 3221225472;
  v13[23] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_6;
  v13[24] = &unk_2782FB490;
  v13[27] = a2;
  v13[26] = CommonProfile;
  v13[25] = a3;
  v13[14] = MEMORY[0x277D85DD0];
  v13[15] = 3221225472;
  v13[16] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_7;
  v13[17] = &unk_2782FB490;
  v13[20] = a2;
  v13[19] = CommonProfile;
  v13[18] = a3;
  v13[7] = MEMORY[0x277D85DD0];
  v13[8] = 3221225472;
  v13[9] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_8;
  v13[10] = &unk_2782FB490;
  v13[13] = a2;
  v13[12] = CommonProfile;
  v13[11] = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_9;
  v13[3] = &unk_2782FB490;
  v13[6] = a2;
  v13[5] = CommonProfile;
  v13[4] = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_10;
  v12[3] = &unk_2782FB490;
  v12[6] = a2;
  v12[5] = CommonProfile;
  v12[4] = a3;
  v10[6] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_11;
  v11[3] = &unk_2782FB490;
  v11[6] = a2;
  v11[4] = a3;
  v11[5] = CommonProfile;
  v9[6] = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_12;
  v10[3] = &unk_2782FB490;
  v10[4] = a3;
  v10[5] = CommonProfile;
  v8[6] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_13;
  v9[3] = &unk_2782FB490;
  v9[4] = a3;
  v9[5] = CommonProfile;
  v7[6] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_14;
  v8[3] = &unk_2782FB490;
  v8[4] = a3;
  v8[5] = CommonProfile;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_15;
  v7[3] = &unk_2782FB490;
  v7[4] = a3;
  v7[5] = CommonProfile;
  return C3DExecuteProgressBlocks(v15, v13, v12, v11, v10, v9, v8, v7, v14);
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 1, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 1);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 2, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 2);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_3(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 4, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 4);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_4(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 3, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 3);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_5(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 0, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 0);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_6(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 5, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 5);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_7(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 6, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 6);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_8(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 7, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 7);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_9(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 9, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 9);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_10(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 8, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 8);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_11(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 10, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 10);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_12(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 11, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 11);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_13(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 15, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 15);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_14(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 12, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 12);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_15(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 13, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 13);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_16(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 14, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 14);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __C3DWarmupMaterialVRAMResourcesForEngineContext_block_invoke_17(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(v2, 16, 0);
  if (EffectSlot)
  {
    v6 = EffectSlot;
    RenderContext = C3DEngineContextGetRenderContext(v3, v5);
    if (RenderContext)
    {
      [(SCNMTLRenderContext *)RenderContext textureForEffectSlot:v6];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v8);
      ResourceManager = C3DEngineContextGetResourceManager(v3, v10);
      Image = C3DEffectSlotGetImage(v6, v12);
      if (Image)
      {
        v14 = Image;
        TextureSampler = C3DEffectCommonProfileGetTextureSampler(v2, 16);
        C3DResourceManagerMakeImageResident(ResourceManager, v14, TextureSampler, RendererContextGL);
      }
    }
  }

  v16 = a1[4];
  if (v16)
  {
    return (*(v16 + 16))() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t C3DWarmupGeometryVRAMResourcesForEngineContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2, a2);
  ResourceManager = C3DEngineContextGetResourceManager(a2, v7);
  RenderContext = C3DEngineContextGetRenderContext(a2, v9);
  v11 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke;
  v21[3] = &unk_2782FB490;
  v21[5] = a1;
  v21[6] = a2;
  v21[4] = a3;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_2;
  v20[3] = &unk_2782FB4B8;
  v20[6] = a1;
  v20[7] = ResourceManager;
  v20[8] = RendererContextGL;
  v20[4] = v11;
  v20[5] = a3;
  return C3DExecuteProgressBlocks(v21, v12, v13, v14, v15, v16, v17, v18, v20);
}

BOOL __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke(uint64_t *a1, uint64_t a2)
{
  MaterialsCount = C3DGeometryGetMaterialsCount(a1[5], a2);
  if (MaterialsCount < 1)
  {
    return 1;
  }

  else
  {
    v4 = MaterialsCount;
    v5 = 0;
    for (i = 0; i != v4; v5 = i >= v4)
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1[5], i);
      C3DWarmupMaterialVRAMResourcesForEngineContext(MaterialAtIndex, a1[6], a1[4]);
      v8 = a1[4];
      if (v8 && ((*(v8 + 16))() & 1) != 0)
      {
        break;
      }

      ++i;
    }
  }

  return v5;
}

uint64_t __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_2(void *a1, uint64_t a2)
{
  Mesh = C3DGeometryGetMesh(a1[6], a2);
  if (!Mesh)
  {
    v8 = scn_default_log(0, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_DEFAULT, "Warning: try to preload a geometry with no mesh", buf, 2u);
    }

    return 1;
  }

  v5 = Mesh;
  v6 = a1[4];
  if (v6)
  {
    EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(a1[6], v4);
    [(SCNMTLResourceManager *)v6 renderResourceForMesh:v5 dataKind:EffectiveDataKindForRendering];
    return 1;
  }

  v9 = C3DMeshCopyAllSources(Mesh, 1);
  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
LABEL_16:
    CFRelease(v9);
    return 1;
  }

  v11 = Count;
  v12 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
    Accessor = C3DMeshSourceGetAccessor(ValueAtIndex, v14, v15, v16, v17, v18, v19, v20);
    if (Accessor && (v29 = C3DMeshSourceGetAccessor(ValueAtIndex, v22, v23, v24, v25, v26, v27, v28), (Accessor = C3DSourceAccessorGetData(v29, v30)) != 0))
    {
      C3DResourceManagerMakeMeshSourceResident(a1[7], ValueAtIndex, a1[8]);
    }

    else
    {
      v31 = scn_default_log(Accessor, v22);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_2_cold_1(&v34, v35, v31);
      }
    }

    v32 = a1[5];
    if (v32)
    {
      if ((*(v32 + 16))())
      {
        break;
      }
    }

    if (v11 == ++v12)
    {
      goto LABEL_16;
    }
  }

  CFRelease(v9);
  return 0;
}

uint64_t __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_27(void *a1, uint64_t a2)
{
  if (a1[4])
  {
    return 1;
  }

  Mesh = C3DGeometryGetMesh(a1[6], a2);
  ElementsCount = C3DMeshGetElementsCount(Mesh, v5);
  if (ElementsCount < 1)
  {
    return 1;
  }

  v7 = ElementsCount;
  v8 = 0;
  while (1)
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, v8, 1);
    C3DResourceManagerMakeMeshElementResident(a1[7], ElementAtIndex, a1[8]);
    v10 = a1[5];
    if (v10)
    {
      if ((*(v10 + 16))())
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t C3DWarmupNodeTreeVRAMResourcesForEngineContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke;
  v10[3] = &unk_2782FB4E0;
  v10[4] = &v11;
  C3DNodeApplyHierarchy(a1, v10);
  v6 = *(v12 + 6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke_2;
  v9[3] = &unk_2782FB530;
  v9[5] = a1;
  v9[6] = a2;
  v9[4] = a3;
  v7 = C3DExecuteIncrementalProgressBlock(v6, v9);
  _Block_object_dispose(&v11, 8);
  return v7;
}

BOOL __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke_2(void *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke_3;
  v6[3] = &unk_2782FB508;
  v2 = a1[5];
  v3 = a1[6];
  v6[4] = a1[4];
  v6[5] = a2;
  v6[6] = &v7;
  v6[7] = v3;
  C3DNodeApplyHierarchy(v2, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return (v4 & 1) == 0;
}

uint64_t __C3DWarmupNodeTreeVRAMResourcesForEngineContext_block_invoke_3(void *a1, uint64_t a2)
{
  v3 = a1[7];
  v4 = a1[4];
  Geometry = C3DNodeGetGeometry(a2, a2);
  if (Geometry && !C3DWarmupGeometryVRAMResourcesForEngineContext(Geometry, v3, v4))
  {
    (*(a1[5] + 16))();
    *(*(a1[6] + 8) + 24) = 1;
    return 2;
  }

  else
  {
    (*(a1[5] + 16))();
    return 0;
  }
}

uint64_t C3DWarmupSceneVRAMResourcesForEngineContext(const void *a1, __n128 *a2, uint64_t a3)
{
  Scene = C3DEngineContextGetScene(a2, a2);
  if (Scene != a1)
  {
    C3DEngineContextSetScene(a2, a1);
  }

  C3DEngineContextSetupForWarmUp(a2, a3);
  EnginePipeline = C3DSceneGetEnginePipeline(a1, v7);
  if (!EnginePipeline)
  {
    v10 = scn_default_log(0, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DWarmupSceneVRAMResourcesForEngineContext_cold_1(v10, v8, v11, v12, v13, v14, v15, v16);
    }
  }

  v24[0] = EnginePipeline;
  v24[1] = a2;
  v25 = 0u;
  v26 = 0u;
  C3DEnginePipelineApplyNotificationQueue(v24, v8);
  C3DEngineContextApplyModifiers(a2, EnginePipeline);
  RenderContext = C3DEngineContextGetRenderContext(a2, v17);
  if (RenderContext)
  {
    v20 = RenderContext;
    C3DEngineContextRenderWithRenderGraph(a2);
    v21 = [(SCNMTLRenderContext *)v20 resourceManager];
    [-[SCNMTLResourceManager libraryManager](v21) waitForShadersCompilation];
  }

  else
  {
    C3DEngineContextRenderMainTechnique(a2, v19);
  }

  if (Scene != a1)
  {
    C3DEngineContextSetScene(a2, 0);
  }

  C3DEngineContextUnSetupForWarmUp(a2, v22);
  return 1;
}

uint64_t C3DCreateTangentsWithGeometryOptimized(uint64_t a1, uint64_t a2)
{
  v118 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  PositionSource = C3DMeshGetPositionSource(a1, a2);
  NormalSource = C3DMeshGetNormalSource(a1, a2);
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 3, 0, a2);
  v16 = SourceWithSemanticAtIndex;
  if (!PositionSource && (v17 = scn_default_log(SourceWithSemanticAtIndex, v15), SourceWithSemanticAtIndex = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT), SourceWithSemanticAtIndex))
  {
    C3DCreateTangentsWithGeometryOptimized_cold_2(v17, v15, v18, v19, v20, v21, v22, v23);
    if (NormalSource)
    {
      goto LABEL_9;
    }
  }

  else if (NormalSource)
  {
    goto LABEL_9;
  }

  v24 = scn_default_log(SourceWithSemanticAtIndex, v15);
  SourceWithSemanticAtIndex = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
  if (SourceWithSemanticAtIndex)
  {
    C3DCreateTangentsWithGeometryOptimized_cold_3(v24, v15, v25, v26, v27, v28, v29, v30);
  }

LABEL_9:
  if (!v16)
  {
    v31 = scn_default_log(SourceWithSemanticAtIndex, v15);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_4(v31, v15, v32, v33, v34, v35, v36, v37);
    }
  }

  v114 = 0u;
  v115 = 0u;
  Content = C3DMeshSourceGetContent(PositionSource, v15, &v114);
  if (!v114 || (v40 = v115, !v115))
  {
    v86 = scn_default_log(Content, v39);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_5();
    }

    return 0;
  }

  v112 = 0u;
  v113 = 0u;
  v41 = C3DMeshSourceGetContent(v16, v39, &v112);
  if (!v112 || v113 != v40)
  {
    v87 = scn_default_log(v41, v42);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_6();
    }

    return 0;
  }

  v110 = 0u;
  v111 = 0u;
  v43 = C3DMeshSourceGetContent(NormalSource, v42, &v110);
  if (!v110 || v111 != v40)
  {
    v88 = scn_default_log(v43, v44);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_7();
    }

    return 0;
  }

  v107 = v40;
  v45 = 16 * v40;
  v46 = malloc_type_calloc(v45, 1uLL, 0xAA9FED5CuLL);
  length = v45;
  v47 = malloc_type_calloc(v45, 1uLL, 0x6D8B1743uLL);
  ElementsCount = C3DMeshGetElementsCount(a1, v48);
  if (ElementsCount >= 1)
  {
    v51 = ElementsCount;
    v52 = 0;
    v53 = 0;
    v108 = ElementsCount;
    while (1)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a1, v53, 1);
      if (!C3DMeshElementGetType(ElementAtIndex, v55) || C3DMeshElementGetType(ElementAtIndex, v56) == 1)
      {
        v109 = 0;
        Indexes = C3DMeshElementGetIndexes(ElementAtIndex, &v109);
        if (Indexes)
        {
          v58 = Indexes;
          BytePtr = CFDataGetBytePtr(Indexes);
          if (BytePtr)
          {
            v61 = BytePtr;
            if (v109 == 1)
            {
              v62 = 0;
              v63 = 0;
            }

            else
            {
              if (v109 == 4)
              {
                v63 = 0;
                v62 = BytePtr;
              }

              else if (v109 == 2)
              {
                v62 = 0;
                v63 = BytePtr;
              }

              else
              {
                v64 = scn_default_log(BytePtr, v60);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  v117 = v109;
                  _os_log_error_impl(&dword_21BEF7000, v64, OS_LOG_TYPE_ERROR, "Unreachable code: Unsupported index size (%zu)", buf, 0xCu);
                }

                v62 = 0;
                v63 = 0;
              }

              v61 = 0;
            }

            PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
            v66 = 3 * PrimitiveCount * v109;
            if (v66 > CFDataGetLength(v58))
            {
              free(v46);
              free(v47);
              v104 = scn_default_log(v102, v103);
              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
              {
                C3DCreateTangentsWithGeometryOptimized_cold_8();
              }

              return 0;
            }

            if (PrimitiveCount < 1)
            {
              v52 = 0;
              v51 = v108;
            }

            else
            {
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v73 = (v63 + 4);
              v74 = (v61 + 2);
              v75 = (v62 + 4);
              v51 = v108;
              do
              {
                if (v63)
                {
                  v72 = *(v73 - 2);
                  v71 = *(v73 - 1);
                  v70 = *v73;
                }

                else if (v62)
                {
                  v72 = *(v75 - 1);
                  v71 = *v75;
                  v70 = v75[1];
                }

                else if (v61)
                {
                  v72 = *(v74 - 2);
                  v71 = *(v74 - 1);
                  v70 = *v74;
                }

                v76 = *(v112 + v72 * BYTE6(v113));
                v77 = vsub_f32(*(v112 + v71 * BYTE6(v113)), v76);
                v78 = vsub_f32(*(v112 + v70 * BYTE6(v113)), v76);
                v79 = (-v77.f32[1] * v78.f32[0]) + (v77.f32[0] * v78.f32[1]);
                if (v79 == 0.0)
                {
                  v78 = vadd_f32(v78, COERCE_FLOAT32X2_T(-3.18618444e-58));
                  v77 = vadd_f32(v77, 0xB4000000B4000000);
                  v79 = (-v77.f32[1] * v78.f32[0]) + (v77.f32[0] * v78.f32[1]);
                }

                v80 = v114 + v72 * BYTE6(v115);
                v67.i64[0] = *v80;
                v67.i32[2] = *(v80 + 8);
                v81 = v114 + v71 * BYTE6(v115);
                v68.i64[0] = *v81;
                v68.i32[2] = *(v81 + 8);
                v82 = v114 + v70 * BYTE6(v115);
                v69.i64[0] = *v82;
                v69.i32[2] = *(v82 + 8);
                v68 = vsubq_f32(v68, v67);
                v67 = vsubq_f32(v69, v67);
                v83 = v79;
                v84 = vrecpe_f32(LODWORD(v79));
                v85 = vmul_f32(v84, vrecps_f32(LODWORD(v83), v84));
                v85.i32[0] = vmul_f32(v85, vrecps_f32(LODWORD(v83), v85)).u32[0];
                v69 = vmulq_n_f32(vmlaq_lane_f32(vmulq_lane_f32(vnegq_f32(v67), v77, 1), v68, v78, 1), v85.f32[0]);
                v69.i32[3] = 0;
                v46[v72] = vaddq_f32(v46[v72], v69);
                v46[v71] = vaddq_f32(v46[v71], v69);
                v46[v70] = vaddq_f32(v46[v70], v69);
                v50 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v68, vnegq_f32(vdupq_lane_s32(v78, 0))), v67, v77.f32[0]), v85.f32[0]);
                v50.i32[3] = 0;
                v47[v72] = vaddq_f32(v50, v47[v72]);
                v47[v71] = vaddq_f32(v50, v47[v71]);
                v47[v70] = vaddq_f32(v50, v47[v70]);
                v73 += 3;
                v74 += 3;
                v75 += 3;
                --PrimitiveCount;
              }

              while (PrimitiveCount);
              v52 = 1;
            }
          }
        }
      }

      if (++v53 == v51)
      {
        goto LABEL_57;
      }
    }
  }

  v52 = 0;
LABEL_57:
  v89 = 0;
  do
  {
    v90 = v110 + v89 * BYTE6(v111);
    v50.i64[0] = *v90;
    v91 = v50;
    v91.i32[2] = *(v90 + 8);
    v50.i32[2] = v91.i32[2];
    v92 = v46[v89];
    v93 = vmulq_f32(v92, v50);
    v93.f32[0] = v93.f32[2] + vaddv_f32(*v93.f32);
    v94 = vmlsq_lane_f32(v92, v91, *v93.f32, 0);
    v95 = vmulq_f32(v94, v94);
    *&v96 = v95.f32[2] + vaddv_f32(*v95.f32);
    *v95.f32 = vrsqrte_f32(v96);
    v50 = vmulq_n_f32(v94, vmul_f32(*v95.f32, vrsqrts_f32(v96, vmul_f32(*v95.f32, *v95.f32))).f32[0]);
    v97 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v91)), v50, vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL));
    v98 = vmulq_f32(v47[v89], vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL));
    if ((v98.f32[2] + vaddv_f32(*v98.f32)) < 0.0)
    {
      v99 = -1.0;
    }

    else
    {
      v99 = 1.0;
    }

    v50.f32[3] = v99;
    v46[v89++] = v50;
  }

  while (v107 != v89);
  free(v47);
  if ((v52 & 1) == 0)
  {
    free(v46);
    return 0;
  }

  v100 = CFDataCreateWithBytesNoCopy(0, v46, length, *MEMORY[0x277CBECE8]);
  v101 = C3DMeshSourceCreate(v100, 4, v107, 4, 1);
  CFRelease(v100);
  return v101;
}

uint64_t C3DCreateTangentsWithGeometry(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v149 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  PositionSource = C3DMeshGetPositionSource(v3, a2);
  NormalSource = C3DMeshGetNormalSource(v3, a2);
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v3, 3, 0, a2);
  v16 = SourceWithSemanticAtIndex;
  if (!PositionSource && (v17 = scn_default_log(SourceWithSemanticAtIndex, v15), SourceWithSemanticAtIndex = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT), SourceWithSemanticAtIndex))
  {
    C3DCreateTangentsWithGeometry_cold_2(v17, v15, v18, v19, v20, v21, v22, v23);
    if (!NormalSource)
    {
LABEL_7:
      v24 = scn_default_log(SourceWithSemanticAtIndex, v15);
      SourceWithSemanticAtIndex = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
      if (SourceWithSemanticAtIndex)
      {
        C3DCreateTangentsWithGeometryOptimized_cold_3(v24, v15, v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else if (!NormalSource)
  {
    goto LABEL_7;
  }

  if (!v16)
  {
    v31 = scn_default_log(SourceWithSemanticAtIndex, v15);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometryOptimized_cold_4(v31, v15, v32, v33, v34, v35, v36, v37);
    }
  }

  Count = C3DMeshSourceGetCount(PositionSource, v15);
  ElementsCount = C3DMeshGetElementsCount(v3, v39);
  v127 = Count;
  Count *= 16;
  v41 = malloc_type_calloc(Count, 1uLL, 0x16DFB261uLL);
  length = Count;
  v42 = malloc_type_calloc(Count, 1uLL, 0xE14A5E60uLL);
  v141 = 0u;
  v142 = 0u;
  C3DMeshSourceGetContent(PositionSource, v43, &v141);
  v139 = 0u;
  v140 = 0u;
  C3DMeshSourceGetContent(v16, v44, &v139);
  if (ElementsCount < 1)
  {
    v47 = 0;
    goto LABEL_60;
  }

  v46 = 0;
  v47 = 0;
  v128 = ElementsCount;
  v129 = v3;
  do
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(v3, v46, 1);
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    Content = C3DMeshElementGetContent(ElementAtIndex, 0, &v135);
    if (BYTE2(v137) > 1u)
    {
      goto LABEL_57;
    }

    v53 = v136;
    v47 = v136 != 0;
    if (!v136)
    {
      goto LABEL_56;
    }

    v54 = 0;
    do
    {
      if (BYTE2(v137))
      {
        if (v54)
        {
          v55 = 1;
        }

        else
        {
          v55 = 2;
        }

        if (v54)
        {
          v56 = 2;
        }

        else
        {
          v56 = 1;
        }

        v57 = BYTE2(v137) != 5;
        v58 = 1;
        if (BYTE2(v137) == 1)
        {
          v57 = 1;
        }

        else
        {
          v55 = 2;
        }

        if (BYTE2(v137) != 1)
        {
          v56 = 1;
        }
      }

      else
      {
        v58 = 3;
        v57 = 3;
        v55 = 2;
        v56 = 1;
      }

      if (v135)
      {
        v59 = DWORD2(v135);
        v60 = BYTE3(v137);
        v61 = v138 + DWORD2(v138) * v54 * v57;
        v62 = v58 * v54;
        v63 = v138 + (v56 + v58 * v54) * DWORD2(v138);
        v64 = v138 + (v55 + v62) * DWORD2(v138);
        if (v64 <= v61)
        {
          v65 = v61;
        }

        else
        {
          v65 = v64;
        }

        if (v63 <= v65)
        {
          v66 = v65;
        }

        else
        {
          v66 = v63;
        }

        if (*(&v135 + 1) < (BYTE3(v137) + BYTE3(v137) * v66))
        {
          v67 = scn_default_log(Content, v45);
          if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
LABEL_40:
            v68 = 0;
            v69 = 0;
            v70 = 0;
            goto LABEL_42;
          }

          *buf = 136315650;
          v144 = "C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
          v145 = 1024;
          v146 = v66;
          v147 = 2048;
          v148 = v59 / v60;
          v105 = v67;
          v106 = "Error: %s - index (%u) out of bounds (%lu)";
          v107 = 28;
LABEL_55:
          _os_log_error_impl(&dword_21BEF7000, v105, OS_LOG_TYPE_ERROR, v106, buf, v107);
          goto LABEL_40;
        }

        switch(BYTE3(v137))
        {
          case 4u:
            v70 = *(v135 + 4 * v61);
            v69 = *(v135 + 4 * v63);
            v68 = *(v135 + 4 * v64);
            break;
          case 2u:
            v70 = *(v135 + 2 * v61);
            v69 = *(v135 + 2 * v63);
            v68 = *(v135 + 2 * v64);
            break;
          case 1u:
            v70 = *(v135 + v61);
            v69 = *(v135 + v63);
            v68 = *(v135 + v64);
            break;
          default:
            v104 = scn_default_log(Content, v45);
            if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_40;
            }

            *buf = 67109120;
            LODWORD(v144) = v60;
            v105 = v104;
            v106 = "Unreachable code: Invalid bytes per index (%d)";
            v107 = 8;
            goto LABEL_55;
        }
      }

      else
      {
        v70 = v57 * v54;
        v69 = v56 + v58 * v54;
        v68 = v55 + v58 * v54;
      }

LABEL_42:
      *v71.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v142), (v141 + v70 * BYTE6(v142)), v50, v51.f32[0], v52);
      v134 = v71;
      *v74.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v142), (v141 + v69 * BYTE6(v142)), v71, v72, v73);
      v133 = v74;
      *v77.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v142), (v141 + v68 * BYTE6(v142)), v74, v75, v76);
      v132 = v77;
      *v80.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v140), (v139 + v70 * BYTE6(v140)), v77, v78, v79);
      v131 = v80;
      *v83.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v140), (v139 + v69 * BYTE6(v140)), v80, v81, v82);
      v130 = v83;
      *v50.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v140), (v139 + v68 * BYTE6(v140)), v83, v84, v85);
      v86 = vsubq_f32(v130, v131).u64[0];
      v87 = vsubq_f32(v50, v131).u64[0];
      v88 = v86.f32[1];
      v89 = *(&v87 + 1);
      v50.f32[0] = -*&v87;
      v90 = vmuls_lane_f32(-*&v87, v86, 1) + (v86.f32[0] * *(&v87 + 1));
      if (v90 == 0.0)
      {
        v88 = v86.f32[1] + 0.00000011921;
        v89 = *(&v87 + 1) + -0.00000011921;
        v86.f32[0] = v86.f32[0] + -0.00000011921;
        *&v87 = *&v87 + -0.00000011921;
        v50.f32[0] = -*&v87;
        v90 = (v86.f32[0] * (*(&v87 + 1) + -0.00000011921)) - (*&v87 * (v86.f32[1] + 0.00000011921));
      }

      v91 = vsubq_f32(v133, v134);
      v92 = vsubq_f32(v132, v134);
      v93 = 1.0 / v90;
      v94 = -v88;
      v95 = v93 * ((v89 * v91.f32[2]) - (v88 * v92.f32[2]));
      v96 = 16 * v70;
      v97 = v96 | 8;
      *&v41[v97] = v95 + *&v41[v97];
      v98 = (16 * v69) | 8;
      v99 = 4 * v69;
      *&v41[v98] = v95 + *&v41[v98];
      v100 = vmul_n_f32(vmla_n_f32(vmul_n_f32(*v92.f32, v94), *v91.f32, v89), v93);
      *&v41[v96] = vadd_f32(*&v41[v96], v100);
      v101 = 16 * v68;
      *&v41[v99 * 4] = vadd_f32(v100, *&v41[v99 * 4]);
      *&v41[v101] = vadd_f32(v100, *&v41[v101]);
      v102 = v101 | 8;
      *&v41[v102] = v95 + *&v41[v102];
      v52 = v93 * ((v91.f32[2] * v50.f32[0]) + (v86.f32[0] * v92.f32[2]));
      *(v42 + v97) = v52 + *(v42 + v97);
      *(v42 + v98) = v52 + *(v42 + v98);
      v103 = vmul_n_f32(vmla_n_f32(vmul_n_f32(*v91.f32, v50.f32[0]), *v92.f32, v86.f32[0]), v93);
      *&v42[v96 / 4] = vadd_f32(v103, *&v42[v96 / 4]);
      *&v42[v99] = vadd_f32(v103, *&v42[v99]);
      v51 = *&v42[v101 / 4];
      *v50.f32 = vadd_f32(v103, v51);
      *&v42[v101 / 4] = v50.i64[0];
      v50.f32[0] = v52 + *(v42 + (v101 | 8));
      *(v42 + v102) = v50.i32[0];
      ++v54;
    }

    while (v53 != v54);
    v47 = 1;
LABEL_56:
    ElementsCount = v128;
    v3 = v129;
LABEL_57:
    ++v46;
  }

  while (v46 != ElementsCount);
LABEL_60:
  v135 = 0u;
  v136 = 0u;
  C3DMeshSourceGetContent(NormalSource, v45, &v135);
  if (v127 >= 1)
  {
    v111 = 0;
    v112 = 0;
    do
    {
      *v113.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v136), (v135 + v111 * BYTE6(v136)), v108, v109, v110.f32[0]);
      v114 = &v41[4 * v112];
      v115.i64[0] = *v114;
      v116 = &v41[4 * v112 + 8];
      v117 = v115;
      v117.i32[2] = *v116;
      v115.i32[2] = *v116;
      v118 = vmulq_f32(v113, v115);
      v118.f32[0] = v118.f32[2] + vaddv_f32(*v118.f32);
      v110 = vmlsq_lane_f32(v117, v113, *v118.f32, 0);
      v119 = vmulq_f32(v110, v110);
      v120 = COERCE_UNSIGNED_INT(v119.f32[2] + vaddv_f32(*v119.f32));
      v121 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL), vnegq_f32(v113)), v117, vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL));
      *v113.f32 = vrsqrte_f32(v120);
      *v113.f32 = vmul_f32(*v113.f32, vrsqrts_f32(v120.u32[0], vmul_f32(*v113.f32, *v113.f32)));
      v122 = vmulq_n_f32(v110, vmul_f32(*v113.f32, vrsqrts_f32(v120.u32[0], vmul_f32(*v113.f32, *v113.f32))).f32[0]);
      *v116 = v122.i32[2];
      *v114 = v122.i64[0];
      v122.i64[0] = *&v42[v112];
      v122.i32[2] = v42[v112 + 2];
      v108 = vmulq_f32(vextq_s8(vuzp1q_s32(v121, v121), v121, 0xCuLL), v122);
      v109 = vaddv_f32(*v108.f32);
      if ((v108.f32[2] + v109) < 0.0)
      {
        v108.f32[0] = -1.0;
      }

      else
      {
        v108.f32[0] = 1.0;
      }

      *(v114 + 3) = v108.i32[0];
      ++v111;
      v112 += 4;
    }

    while (v127 != v111);
  }

  free(v42);
  if (v47)
  {
    v123 = CFDataCreateWithBytesNoCopy(0, v41, length, *MEMORY[0x277CBECE8]);
    v124 = C3DMeshSourceCreate(v123, 4, v127, 4, 1);
    CFRelease(v123);
  }

  else
  {
    free(v41);
    return 0;
  }

  return v124;
}

uint64_t C3DCreateNormalsWithMesh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  PositionSource = C3DMeshGetPositionSource(a1, a2);
  if (!PositionSource)
  {
    v16 = scn_default_log(0, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_2(v16, v14, v17, v18, v19, v20, v21, v22);
    }
  }

  if (!C3DMeshGetElementsCount(a1, v14))
  {
    return 0;
  }

  Count = C3DMeshSourceGetCount(PositionSource, v23);
  Mutable = C3DMeshSourceCreateMutable(0, 1, Count, 3, 1);
  _unifyNormalsOptimized(a1, PositionSource, Mutable, a2, a3);
  C3DMeshSourceMakeImmutable(Mutable);
  return Mutable;
}

void _unifyNormalsOptimized(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v82 = 0u;
  v83 = 0u;
  C3DMeshSourceGetContent(a2, a2, &v82);
  if (BYTE4(v83) == 9 && (v80 = 0u, v81 = 0u, C3DMeshSourceGetContent(a3, v10, &v80), BYTE4(v81) == 9))
  {
    if (v83)
    {
      if (v5)
      {
        WeldRemappingTable = C3DMeshSourceCreateWeldRemappingTable(a2, v11, v12, v13, v14, v15, v16, v17);
      }

      else
      {
        WeldRemappingTable = 0;
      }

      ElementsCount = C3DMeshGetElementsCount(a1, v11);
      Count = C3DMeshSourceGetCount(a3, v20);
      v23 = Count;
      v24 = BYTE6(v81);
      if (BYTE6(v81) == 12)
      {
        LODWORD(__pattern4) = 0;
        memset_pattern4(v80, &__pattern4, 12 * Count);
      }

      else if (Count)
      {
        v25 = 0;
        v26 = v80;
        v27 = Count;
        do
        {
          v28 = v26 + v25;
          *v28 = 0;
          *(v28 + 8) = 0;
          v25 += v24;
          --v27;
        }

        while (v27);
      }

      if (ElementsCount >= 1)
      {
        v29 = 0;
        v30 = v83 - 1;
        while (1)
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(a1, v29, v6);
          v32 = v6 ? 0 : C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 0, 0);
          v78 = 0u;
          v79 = 0u;
          __pattern4 = 0u;
          v77 = 0u;
          Content = C3DMeshElementGetContent(ElementAtIndex, v32, &__pattern4);
          if ((v78.n128_u8[2] & 0xFA) == 0)
          {
            break;
          }

          v35 = scn_default_log(Content, v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v36 = v35;
            v37 = "Warning: C3DUnifyNormalsFromGeometry can only process triangles and polygons";
LABEL_22:
            _os_log_impl(&dword_21BEF7000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
          }

LABEL_27:
          if (ElementsCount == ++v29)
          {
            goto LABEL_28;
          }
        }

        if (__pattern4)
        {
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = ___unifyNormalsOptimized_block_invoke;
          v69[3] = &__block_descriptor_108_e19_v32__0I8_I12I20_B24l;
          v75 = v30;
          v70 = v82;
          v71 = v83;
          v72 = WeldRemappingTable;
          v73 = v80;
          v74 = v81;
          *buf = __pattern4;
          v66 = v77;
          v67 = v78;
          v68 = v79;
          C3DIndicesContentEnumeratePrimitives(buf, v69, v78);
          goto LABEL_27;
        }

        v38 = scn_default_log(Content, v34);
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v36 = v38;
        v37 = "Warning: C3DUnifyNormalsFromGeometry empty indices";
        goto LABEL_22;
      }

LABEL_28:
      v39 = BYTE6(v81);
      if (WeldRemappingTable && v23)
      {
        v40 = 0;
        v41 = 0;
        v42 = v80;
        do
        {
          v43 = WeldRemappingTable[v41];
          if (v41 != v43)
          {
            v44 = (v42 + (v43 * v39));
            v45 = *(v44 + 2);
            v46 = *v44;
            v47 = v42 + v40;
            *v47 = v46;
            *(v47 + 8) = v45;
          }

          ++v41;
          v40 += v39;
        }

        while (v23 != v41);
      }

      if (v39 == 12 && (v23 & 0xFFFFFFFC) != 0)
      {
        v48 = 0;
        do
        {
          v49 = (v80 + v48 * BYTE6(v81));
          *v22.f32 = vld3q_f32(v49);
          v52 = vaddq_f32(vmulq_f32(v51, v51), vaddq_f32(vmulq_f32(v22, v22), vmulq_f32(v50, v50)));
          v53 = vrsqrteq_f32(v52);
          v54 = vmulq_f32(v53, vrsqrtsq_f32(v52, vmulq_f32(v53, v53)));
          v84.val[0] = vmulq_f32(v22, v54);
          v84.val[1] = vmulq_f32(v50, v54);
          v84.val[2] = vmulq_f32(v51, v54);
          vst3q_f32(v49, v84);
          v48 += 4;
        }

        while (v48 < (v23 & 0xFFFFFFFC));
      }

      else
      {
        v48 = 0;
      }

      if (v48 < v23)
      {
        v55 = v80;
        v56 = BYTE6(v81);
        v57 = BYTE6(v81) * v48;
        v58 = v23 - v48;
        do
        {
          v59 = v55 + v57;
          v22.i64[0] = *v59;
          v22.i32[2] = *(v59 + 8);
          v60 = vmulq_f32(v22, v22);
          v60.f32[0] = v60.f32[2] + vaddv_f32(*v60.f32);
          v61 = vdupq_lane_s32(*v60.f32, 0);
          v62 = vrsqrteq_f32(v61);
          v63 = vmulq_f32(v62, vrsqrtsq_f32(v61, vmulq_f32(v62, v62)));
          v64 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v60.f32[0] != 0.0)), 0x1FuLL));
          v64.i32[3] = 0;
          v22 = vbslq_s8(vcltzq_s32(v64), vmulq_f32(v22, vmulq_f32(v63, vrsqrtsq_f32(v61, vmulq_f32(v63, v63)))), v22);
          *v59 = v22.i64[0];
          *(v59 + 8) = v22.i32[2];
          v57 += v56;
          --v58;
        }

        while (v58);
      }

      free(WeldRemappingTable);
    }
  }

  else
  {
    _unifyNormals(a1, a2, a3, v6, v5);
  }
}

uint64_t C3DCreateNormalsForMorphTargetWithBaseMesh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCreateNormalsForMorphTargetWithBaseMesh_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!C3DMeshGetElementsCount(a2, a2))
  {
    return 0;
  }

  PositionSource = C3DMeshGetPositionSource(a1, a3);
  if (!PositionSource)
  {
    v15 = scn_default_log(0, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DCreateNormalsForMorphTargetWithBaseMesh_cold_2(v15, v13, v16, v17, v18, v19, v20, v21);
    }
  }

  Count = C3DMeshSourceGetCount(PositionSource, v13);
  Mutable = C3DMeshSourceCreateMutable(0, 1, Count, 3, 1);
  _unifyNormalsOptimized(a2, PositionSource, Mutable, a3, 0);
  C3DMeshSourceMakeImmutable(Mutable);
  return Mutable;
}

void C3DMeshUnifyNormals(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (C3DMeshGetElementsCount(a2, a2))
  {
    PositionSource = C3DMeshGetPositionSource(a1, 1);
    if (PositionSource)
    {
      v10 = PositionSource;
      Count = C3DMeshSourceGetCount(PositionSource, v9);
      if (Count)
      {
        v12 = Count;
        v13 = C3DMeshGetPositionSource(a2, 1);
        if (v13)
        {
          v15 = C3DMeshSourceGetCount(v13, v14);
          if (v12 == v15)
          {
            NormalSource = C3DMeshGetNormalSource(a1, 1);
            if (!NormalSource && a3)
            {
              NormalSource = C3DMeshSourceCreateMutable(0, 1, v12, 3, 1);
              __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a1, NormalSource, 0);
              CFRelease(NormalSource);
            }

            if (NormalSource)
            {
              if (C3DMeshSourceIsMutable(NormalSource))
              {

                _unifyNormalsOptimized(a2, v10, NormalSource, 1, a4);
              }

              else
              {
                MutableCopy = C3DMeshSourceCreateMutableCopy(NormalSource, v18);
                __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a1, MutableCopy, 0);
                CFRelease(MutableCopy);
                _unifyNormalsOptimized(a2, v10, MutableCopy, 1, a4);

                C3DMeshSourceMakeImmutable(MutableCopy);
              }
            }
          }

          else
          {
            v19 = v15;
            v20 = scn_default_log(v15, v16);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              C3DMeshUnifyNormals_cold_1(v12, v19, v20);
            }
          }
        }
      }
    }
  }
}

void C3DApplyScaleFactorOnScene(uint64_t a1, float a2, uint64_t a3)
{
  RootNode = C3DSceneGetRootNode(a1, a3);
  v5.n128_f32[0] = a2;

  C3DApplyScaleFactorOnNode(RootNode, 1, v5);
}

void C3DApplyScaleFactorOnNode(__n128 *result, int a2, __n128 a3)
{
  if (result)
  {
    v17 = a3.n128_u64[0];
    *v5.i64 = C3DNodeGetPosition(result);
    C3DNodeSetPosition(result, vmulq_n_f32(v5, *v17.i32));
    if (C3DNodeGetHasPivot(result, v6))
    {
      *v8.i64 = C3DNodeGetPivotPosition(result, v7);
      v9 = vceqzq_f32(v8);
      v9.i32[3] = v9.i32[2];
      if ((vminvq_u32(v9) & 0x80000000) == 0)
      {
        C3DNodeSetPivotPosition(result, v7, vmulq_n_f32(v8, *v17.i32));
      }
    }

    Geometry = C3DNodeGetGeometry(result, v7);
    if (Geometry)
    {
      Mesh = C3DGeometryGetMesh(Geometry, v11);
      if (Mesh)
      {
        C3DApplyScaleFactorOnMesh(Mesh, vdupq_lane_s32(v17, 0));
      }
    }

    Light = C3DNodeGetLight(result, v11);
    if (Light)
    {
      C3DApplyScaleFactorOnLight(Light, *v17.i32, v14);
    }

    Camera = C3DNodeGetCamera(result, v14);
    if (Camera)
    {
      C3DApplyScaleFactorOnCamera(Camera, *v17.i32, v16);
    }

    if (a2)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __C3DApplyScaleFactorOnNode_block_invoke;
      v18[3] = &__block_descriptor_36_e318_v24__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8q16l;
      v19 = v17.i32[0];
      C3DNodeApplyChildren(result, v18);
    }
  }
}

void C3DApplyScaleFactorOnLight(uint64_t a1, float a2, uint64_t a3)
{
  ZNear = C3DLightGetZNear(a1, a3);
  v6 = a2;
  C3DLightSetZNear(a1, v7, ZNear * v6);
  v10 = C3DLightGetZFar(a1, v8) * v6;

  C3DLightSetZFar(a1, v9, v10);
}

float64x2_t C3DApplyScaleFactorOnCamera(uint64_t a1, float a2, uint64_t a3)
{
  FocusDistance = C3DCameraGetFocusDistance(a1, a3);
  C3DCameraSetFocusDistance(a1, v6, FocusDistance * a2);
  ProjectionInfosPtr = C3DCameraGetProjectionInfosPtr(a1, v7);
  result = vmulq_n_f64(*(ProjectionInfosPtr + 8), a2);
  *(ProjectionInfosPtr + 8) = result;
  return result;
}

void C3DApplyScaleFactorOnMesh(uint64_t a1, float32x4_t a2)
{
  PositionSource = C3DMeshGetPositionSource(a1, 0);
  if (PositionSource)
  {
    v4 = PositionSource;
    ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 0, 0);
    MutableCopy = C3DMeshSourceCreateMutableCopy(v4, v6);
    Count = C3DMeshSourceGetCount(MutableCopy, v8);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        *v12.i64 = C3DMeshSourceGetValueAtIndexAsVector3(MutableCopy, i);
        C3DMeshSourceSetValueAtIndexAsVector3(MutableCopy, i, vmulq_f32(a2, v12));
      }
    }

    C3DMeshSourceMakeImmutable(MutableCopy);
    C3DMeshSetSourceWithInputSet(a1, MutableCopy, 0, ChannelForSourceWithSemanticAtIndex);
    CFRelease(MutableCopy);
  }

  v13 = a2.f32[1] != a2.f32[2];
  if (a2.f32[0] != a2.f32[2])
  {
    v13 = 0;
  }

  v14 = a2.f32[0] == a2.f32[1] && v13;
  NormalSource = C3DMeshGetNormalSource(a1, 0);
  if (!v14)
  {
    v16 = NormalSource;
    if (NormalSource)
    {
      v17 = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 1, 0);
      v19 = C3DMeshSourceCreateMutableCopy(v16, v18);
      v21 = C3DMeshSourceGetCount(v19, v20);
      if (v21 >= 1)
      {
        v22 = v21;
        v23 = 0;
        __asm { FMOV            V0.4S, #1.0 }

        v31 = vdivq_f32(_Q0, a2);
        do
        {
          *v29.i64 = C3DMeshSourceGetValueAtIndexAsVector3(v19, v23);
          C3DMeshSourceSetValueAtIndexAsVector3(v19, v23++, vmulq_f32(v31, v29));
        }

        while (v22 != v23);
      }

      C3DMeshSourceMakeImmutable(v19);
      C3DMeshSetSourceWithInputSet(a1, v19, 0, v17);

      CFRelease(v19);
    }
  }
}