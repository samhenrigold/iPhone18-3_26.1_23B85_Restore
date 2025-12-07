BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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
      v7 = v4 % a1[1];
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

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
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

uint64_t ***std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::find<unsigned char>(void *a1, unsigned __int8 *a2)
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
      v5 = v3 % a1[1];
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
      if (*(result + 16) == v3)
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

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,int>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,int>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,int>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,int>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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
      v7 = v4 % a1[1];
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

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void _GLOBAL__sub_I_CadModelRetriever_mm()
{
  v76 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  LODWORD(v24) = 0;
  *(&v24 + 1) = @"Unknown";
  LODWORD(v25) = 1;
  *(&v25 + 1) = *(&v24 + 1);
  LODWORD(v26) = 2;
  *(&v26 + 1) = *(&v25 + 1);
  LODWORD(v27) = 3;
  *(&v27 + 1) = *(&v26 + 1);
  LODWORD(v28) = 4;
  *(&v28 + 1) = *(&v27 + 1);
  LODWORD(v29) = 5;
  *(&v29 + 1) = *(&v28 + 1);
  LODWORD(v30) = 6;
  v23 = @"Door";
  *(&v30 + 1) = v23;
  LODWORD(v31) = 7;
  v22 = @"Window";
  *(&v31 + 1) = v22;
  LODWORD(v32) = 8;
  *(&v32 + 1) = *(&v29 + 1);
  LODWORD(v33) = 9;
  v20 = @"Fireplace";
  *(&v33 + 1) = v20;
  LODWORD(v34) = 10;
  *(&v34 + 1) = *(&v32 + 1);
  LODWORD(v35) = 11;
  *(&v35 + 1) = *(&v34 + 1);
  LODWORD(v36) = 12;
  v21 = @"Stairs";
  *(&v36 + 1) = v21;
  LODWORD(v37) = 13;
  v16 = @"Bed";
  *(&v37 + 1) = v16;
  LODWORD(v38) = 14;
  v39 = @"Cabinet";
  v40 = 15;
  v19 = @"Chair";
  v41 = v19;
  v42 = 16;
  v43 = v39;
  v44 = 17;
  v45 = v43;
  v46 = 18;
  v18 = @"Sofa";
  v47 = v18;
  v48 = 19;
  v17 = @"Table";
  v49 = v17;
  v50 = 20;
  v15 = @"Toilet";
  v51 = v15;
  v52 = 21;
  v0 = @"Sink";
  v53 = v0;
  v54 = 22;
  v14 = @"Bathtub";
  v55 = v14;
  v56 = 23;
  v57 = *(&v35 + 1);
  v58 = 24;
  v1 = @"Refrigerator";
  v59 = v1;
  v60 = 25;
  v2 = @"Stove";
  v61 = v2;
  v62 = 26;
  v3 = @"Washer";
  v63 = v3;
  v64 = 27;
  v4 = @"Oven";
  v65 = v4;
  v66 = 28;
  v5 = @"Dishwasher";
  v67 = v5;
  v68 = 29;
  v69 = v57;
  v70 = 30;
  v6 = v45;
  v71 = v6;
  v72 = 31;
  v73 = v69;
  v74 = 32;
  v7 = @"Screen";
  v75 = v7;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSemanticsODLabelMap, &v24, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSemanticsODLabelMap, &dword_25D1DB000);
  v34 = xmmword_25D278678;
  v35 = unk_25D278688;
  v36 = xmmword_25D278698;
  v37 = unk_25D2786A8;
  v30 = xmmword_25D278638;
  v31 = unk_25D278648;
  v32 = xmmword_25D278658;
  v33 = unk_25D278668;
  v26 = xmmword_25D2785F8;
  v27 = unk_25D278608;
  v28 = xmmword_25D278618;
  v29 = unk_25D278628;
  v24 = xmmword_25D2785D8;
  v25 = unk_25D2785E8;
  v38 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v24, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v24) = 0;
  *(&v24 + 1) = v6;
  LODWORD(v25) = 1;
  *(&v25 + 1) = v1;
  LODWORD(v26) = 2;
  *(&v26 + 1) = @"Shelf";
  LODWORD(v27) = 3;
  *(&v27 + 1) = v2;
  LODWORD(v28) = 4;
  *(&v28 + 1) = v16;
  LODWORD(v29) = 5;
  *(&v29 + 1) = v0;
  LODWORD(v30) = 6;
  *(&v30 + 1) = v3;
  LODWORD(v31) = 7;
  *(&v31 + 1) = v15;
  LODWORD(v32) = 8;
  *(&v32 + 1) = v14;
  LODWORD(v33) = 9;
  *(&v33 + 1) = v4;
  LODWORD(v34) = 10;
  *(&v34 + 1) = v5;
  LODWORD(v35) = 11;
  *(&v35 + 1) = v20;
  LODWORD(v36) = 12;
  *(&v36 + 1) = @"Stool";
  LODWORD(v37) = 13;
  v9 = v19;
  *(&v37 + 1) = v9;
  LODWORD(v38) = 14;
  v39 = v17;
  v40 = 15;
  v41 = v7;
  v42 = 16;
  v10 = v18;
  v43 = v10;
  v44 = 17;
  v45 = v21;
  v46 = 18;
  v47 = v22;
  v48 = 19;
  v49 = v23;
  v50 = 20;
  v51 = @"BuildInCabinet";
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v24, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  std::string::basic_string[abi:ne200100]<0>(&v24, -[__CFString UTF8String](v10, "UTF8String"));
  BYTE8(v25) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v26, -[__CFString UTF8String](v9, "UTF8String"));
  BYTE8(v27) = 1;
  std::unordered_map<std::string,unsigned char>::unordered_map(kObjectTypeToRetrievelClassIdx, &v24, 2);
  for (k = 0; k != -64; k -= 32)
  {
    if (*(&v27 + k + 7) < 0)
    {
      operator delete(*(&v26 + k));
    }
  }

  __cxa_atexit(std::unordered_map<std::string,unsigned char>::~unordered_map[abi:ne200100], kObjectTypeToRetrievelClassIdx, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
}

void sub_25D2249A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v28 = (v26 + 55);
  v29 = -64;
  v30 = v28;
  while (1)
  {
    v31 = *v30;
    v30 -= 32;
    if (v31 < 0)
    {
      operator delete(*(v28 - 23));
    }

    v28 = v30;
    v29 += 32;
    if (!v29)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t is_sample_points_equal(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 0;
  v7 = ([v5 count] + 29) / 0x1EuLL;
  v8 = (a1 + 8);
  v9 = (a3 + 8);
  v10 = 1;
  while (v6 < [v5 count])
  {
    v11 = [v5 points];
    v12 = *(v11 + v6);
    *(v9 - 2) = v12;
    v14 = test_utils::Comparator::closeEnoughWPercent(v11, *(v8 - 2), *&v12, 0.000001, v13);
    v15 = v14;
    v17 = test_utils::Comparator::closeEnoughWPercent(v14, *(v8 - 1), *(v9 - 1), 0.000001, v16);
    v10 &= test_utils::Comparator::closeEnoughWPercent(v17, *v8, *v9, 0.000001, v18) && v17 && v15;
    v6 += v7;
    v8 += 4;
    v9 += 4;
  }

  return v10 & 1;
}

void sub_25D2257DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double rotationXMatrix(float a1)
{
  __sincosf_stret(a1);
  *&result = 1065353216;
  return result;
}

__n128 swapCornerGT2QA@<Q0>(uint64_t *__return_ptr a1@<X8>, const box3d *a2@<X0>)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  *a1 = *(a2 + 3);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = v4;
  result = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  *(a1 + 4) = *(a2 + 7);
  *(a1 + 5) = result;
  *(a1 + 6) = v6;
  *(a1 + 7) = v7;
  return result;
}

float32x2_t box3dToCentroidSizeAngle@<D0>(uint64_t *__return_ptr a1@<X8>, float32x4_t *a2@<X0>)
{
  v3 = vsubq_f32(*a2, a2[3]);
  v4 = vsubq_f32(*a2, a2[1]);
  v12 = vmulq_f32(v4, v4);
  v13 = vmulq_f32(v3, v3);
  v5 = vsubq_f32(*a2, a2[4]);
  v6 = vmulq_f32(v5, v5);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(vaddq_f32(*a2, a2[6]), v6);
  v8 = atan2f(v4.f32[0], v4.f32[1]);
  v14 = 0;
  std::vector<float>::vector[abi:ne200100](a1, 7uLL, &v14);
  v9 = *a1;
  *(*a1 + 8) = v11.i32[2];
  *v9 = v11.i64[0];
  result = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v12.i8), vzip2_s32(*v13.i8, *v12.i8))));
  *(v9 + 12) = result;
  *(v9 + 20) = v7;
  *(v9 + 24) = v8;
  return result;
}

void box3dVol(const float *a1)
{
  if (a1)
  {
    std::vector<float>::vector[abi:ne200100](__A, 3uLL);
    __C = 0.0;
    MEMORY[0x25F895930](a1 + 3, 1, a1, 1, __A[0], 1, 3);
    vDSP_svesq(__A[0], 1, &__C, 3uLL);
    MEMORY[0x25F895930](a1 + 6, 1, a1 + 3, 1, __A[0], 1, 3);
    vDSP_svesq(__A[0], 1, &__C, 3uLL);
    MEMORY[0x25F895930](a1 + 12, 1, a1, 1, __A[0], 1, 3);
    vDSP_svesq(__A[0], 1, &__C, 3uLL);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }
  }
}

void sub_25D22762C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float boxVolume(const box3d *a1)
{
  *(&v22 + 1) = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 5);
  v21[4] = *(a1 + 4);
  v21[5] = v1;
  v2 = *(a1 + 7);
  v21[6] = *(a1 + 6);
  v21[7] = v2;
  v3 = *(a1 + 1);
  v21[0] = *a1;
  v21[1] = v3;
  v4 = *(a1 + 3);
  v21[2] = *(a1 + 2);
  v21[3] = v4;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  std::vector<box3d>::__init_with_size[abi:ne200100]<box3d const*,box3d const*>(&v17, v21, &v22, 1uLL);
  std::vector<float>::vector[abi:ne200100](__p, 8 * (((v18 - v17) >> 6) + ((v18 - v17) >> 7)));
  v5 = v17;
  if (v18 != v17)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6;
      v10 = v7;
      v11 = 8;
      do
      {
        v12 = __p[0] + v9;
        v13 = *&v17[v10];
        *(v12 + 2) = *&v17[v10 + 8];
        *v12 = v13;
        v10 += 16;
        v9 += 12;
        --v11;
      }

      while (v11);
      ++v8;
      v5 = v17;
      v7 += 128;
      v6 += 96;
    }

    while (v8 < (v18 - v17) >> 7);
  }

  if (v5)
  {
    v18 = v5;
    operator delete(v5);
  }

  box3dVol(__p[0]);
  v15 = v14;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v15;
}

void sub_25D2277A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t box3dToYDownCoord@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 128; i += 16)
  {
    v3 = vmulq_f32(*(result + i), xmmword_25D2786F0);
    *(a2 + i) = vuzp1q_s32(v3, vrev64q_s32(v3));
  }

  return result;
}

uint64_t box3dToZUpCoord@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v8 = vnegq_f64(_Q0);
  do
  {
    v9 = vmulq_f32(*(result + v2), v8);
    *(a2 + v2) = vuzp1q_s32(v9, vrev64q_s32(v9));
    v2 += 16;
  }

  while (v2 != 128);
  return result;
}

float flipAxisToWorld@<S0>(const box3d *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0;
  v3 = *(a1 + 5);
  a2[4] = *(a1 + 4);
  a2[5] = v3;
  v4 = *(a1 + 7);
  a2[6] = *(a1 + 6);
  a2[7] = v4;
  v5 = *(a1 + 1);
  *a2 = *a1;
  a2[1] = v5;
  v6 = *(a1 + 3);
  a2[2] = *(a1 + 2);
  a2[3] = v6;
  do
  {
    v7 = &a2[v2];
    v8 = vuzp1q_s32(a2[v2], a2[v2]).u64[0];
    result = -COERCE_FLOAT(HIDWORD(*&a2[v2]));
    v7[2] = result;
    *v7 = v8;
    ++v2;
  }

  while (v2 != 8);
  return result;
}

void box3dIou(uint64_t *__return_ptr a1@<X8>, float32x4_t *a2@<X0>, float32x4_t *a3@<X1>, int a4@<W2>, uint64_t a5@<X3>)
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = *a3;
  v10 = vsubq_f32(*a2, *a3);
  v11 = vmulq_f32(v10, v10);
  if (sqrtf(v11.f32[2] + vaddv_f32(*v11.f32)) <= 0.001)
  {
    v26 = 1;
    while (v26 != 8)
    {
      v27 = vsubq_f32(a2[v26], a3[v26]);
      v28 = vmulq_f32(v27, v27);
      ++v26;
      if (sqrtf(v28.f32[2] + vaddv_f32(*v28.f32)) > 0.001)
      {
        if ((v26 - 2) < 7)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    __asm { FMOV            V0.2S, #1.0 }

    *a1 = _D0;
    *(a1 + 2) = boxVolume(a2);
    *(a1 + 12) = xmmword_25D278700;
    *(a1 + 28) = xmmword_25D277BC0;
    *(a1 + 11) = 0;
  }

  else
  {
LABEL_2:
    if (a4)
    {
      v12 = 0;
      v13 = a2[5];
      v67[4] = a2[4];
      v67[5] = v13;
      v14 = a2[7];
      v67[6] = a2[6];
      v67[7] = v14;
      v15 = a2[1];
      v67[0] = *a2;
      v67[1] = v15;
      v16 = a2[3];
      v67[2] = a2[2];
      v67[3] = v16;
      do
      {
        v17 = &v67[v12];
        v18 = vuzp1q_s32(v67[v12], v67[v12]).u64[0];
        v17->f32[2] = -COERCE_FLOAT(HIDWORD(v67[v12].i64[0]));
        v17->i64[0] = v18;
        ++v12;
      }

      while (v12 != 8);
      v19 = 0;
      v20 = a3[7];
      v65 = a3[6];
      v66 = v20;
      v21 = a3[5];
      v63 = a3[4];
      v64 = v21;
      v22 = a3[1];
      *v59 = *a3;
      v60 = v22;
      v23 = a3[3];
      v61 = a3[2];
      v62 = v23;
      do
      {
        v24 = &v59[v19];
        v25 = vuzp1q_s32(*&v59[v19], *&v59[v19]).u64[0];
        *(v24 + 2) = -COERCE_FLOAT(v59[v19] >> 32);
        *v24 = v25;
        v19 += 2;
      }

      while (v19 != 16);
      box3dIou(a1, v67, v59, 0, a5);
    }

    else
    {
      v34 = a2[2];
      v8.i64[1] = a2[1].i64[0];
      v34.i64[1] = a2[3].i64[0];
      v35 = a3[2];
      v9.i64[1] = a3[1].i64[0];
      v69[0] = v8;
      v69[1] = v34;
      v35.i64[1] = a3[3].i64[0];
      v68[0] = v9;
      v68[1] = v35;
      OU::Polygon::Polygon(v67, v69, 4uLL);
      OU::Polygon::Polygon(v59, v68, 4uLL);
      OU::clip(__p, v67, v59);
      v37 = OU::area(v67, v36);
      v39 = OU::area(v59, v38);
      v41 = OU::area(__p, v40);
      v42 = a2->f32[2];
      v43 = a3->f32[2];
      v44 = a2[4].f32[2];
      v45 = a3[4].f32[2];
      v47 = OU::area(v67, v46);
      v56 = *a2;
      v57 = a2[4];
      v49 = OU::area(v59, v48);
      v50 = (v37 + v39) - v41;
      v51 = fmax((fminf(v44, v45) - fmaxf(v42, v43)), 0.0);
      v52 = v41 * v51;
      v53 = v47 * vabds_f32(v57.f32[2], v56.f32[2]);
      v54 = v49 * vabds_f32(a3[4].f32[2], a3->f32[2]);
      v55 = (v53 + v54) - v52;
      *a1 = v52 / v55;
      *(a1 + 1) = v52;
      *(a1 + 2) = v55;
      *(a1 + 3) = v52 / fminf(v53, v54);
      *(a1 + 4) = v52 / v53;
      *(a1 + 5) = v52 / v54;
      *(a1 + 6) = v41 / v50;
      *(a1 + 7) = v41;
      *(a1 + 8) = v50;
      *(a1 + 9) = v41 / fminf(v37, v39);
      *(a1 + 10) = v41 / v37;
      *(a1 + 11) = v41 / v39;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v59[0])
      {
        v59[1] = v59[0];
        operator delete(v59[0]);
      }

      if (v67[0].i64[0])
      {
        v67[0].i64[1] = v67[0].i64[0];
        operator delete(v67[0].i64[0]);
      }
    }
  }
}

void sub_25D227BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void centroidSizeAngleToBox3d(void *a1@<X8>, __n128 a2@<Q0>, int8x16_t a3@<Q1>, float a4@<S2>)
{
  std::vector<float>::vector[abi:ne200100](__p, 7uLL);
  v6 = a2;
  v6.n128_u32[3] = a3.i32[0];
  v7 = __p[0];
  *__p[0] = v6;
  v7[2] = vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL);
  *v7[3].i32 = a4;
  centroidSizeAngleToBox3d(__p, 1, a1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25D227CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void centroidSizeAngleToBox3d(float32x2_t **a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = vmul_f32((*a1)[2], 0x3F0000003F000000);
  v25 = (*a1)[1].f32[1] * 0.5;
  v7 = vneg_f32(v6);
  v26 = __PAIR64__(v7.u32[1], v6.u32[0]);
  v27 = v25;
  v28 = v7;
  v29 = -v25;
  v30 = v7;
  v31 = -v25;
  v32 = __PAIR64__(v7.u32[1], v6.u32[0]);
  v33 = v25;
  v34 = v6;
  v35 = v25;
  v7.i32[1] = v6.i32[1];
  v36 = v7;
  v37 = -v25;
  v38 = v7;
  v39 = -v25;
  v40 = v6;
  __p = 0;
  v23 = 0;
  v24 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v25, &v41, 0x18uLL);
  v8 = 0;
  v9.i32[3] = 0;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v10 = a3;
  v11 = __p;
  do
  {
    *v10 = *&v11[v8];
    *(v10 + 2) = *&v11[v8 + 8];
    v8 += 12;
    ++v10;
  }

  while (v8 != 96);
  v12 = *a1;
  if (a2)
  {
    v13 = __sincosf_stret(*(v12 + 24));
    v14 = 0;
    v15.i64[1] = 0;
    v15.i32[0] = HIDWORD(v13);
    v9.i32[3] = 0;
    do
    {
      v15.f32[1] = -*&v13;
      a3[v14] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(a3[v14])), v13, *&a3[v14], 1), xmmword_25D277BC0, a3[v14], 2);
      ++v14;
    }

    while (v14 != 8);
  }

  v16 = 0;
  v9.i64[0] = *v12;
  v9.i32[2] = *(v12 + 8);
  do
  {
    a3[v16] = vaddq_f32(v9, a3[v16]);
    ++v16;
  }

  while (v16 != 8);
  if ((a2 & 1) == 0)
  {
    v18 = __sincosf_stret(*(v12 + 24));
    *v17.i8 = v18;
    v19 = 0;
    v20 = vzip1q_s32(v17, 0);
    v21 = vzip2q_s32(vzip1q_s32(vdupq_lane_s32(*v20.i8, 0), 0), v20);
    do
    {
      a3[v19] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(-v18.__sinval, LODWORD(v18.__cosval)), COERCE_FLOAT(a3[v19])), v21, *&a3[v19], 1), xmmword_25D277BC0, a3[v19], 2);
      ++v19;
    }

    while (v19 != 8);
  }

  if (v11)
  {
    v23 = v11;
    operator delete(v11);
  }
}

double getCentroid(const box3d *a1)
{
  v1 = 0;
  v2 = 0uLL;
  do
  {
    v2 = vaddq_f32(v2, *(a1 + v1));
    v1 += 16;
  }

  while (v1 != 128);
  v3.i64[0] = 0x3E0000003E000000;
  v3.i64[1] = 0x3E0000003E000000;
  *&result = vmulq_f32(v2, v3).u64[0];
  return result;
}

int32x4_t *rotateBoxCorners@<X0>(int32x4_t *result@<X0>, const box3d *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = result[1];
  v5 = result[2];
  v6 = result[3];
  v7 = vzip1q_s32(*result, v5);
  v8 = vzip2q_s32(*result, v5);
  v9 = vzip1q_s32(v4, v6);
  v10 = vzip2q_s32(v4, v6);
  v11 = vzip1q_s32(v7, v9);
  v12 = vzip2q_s32(v7, v9);
  v13 = vzip1q_s32(v8, v10);
  v14 = vzip2q_s32(v8, v10);
  v15 = vzip1q_s32(v11, v13);
  v16 = vzip2q_s32(v11, v13);
  v17 = vzip1q_s32(v12, v14);
  v18 = vzip2q_s32(v12, v14);
  v19 = vzip1q_s32(v15, v17);
  v20 = vzip2q_s32(v15, v17);
  v21 = vzip1q_s32(v16, v18);
  v22 = vzip2q_s32(v16, v18);
  do
  {
    *(a3 + v3) = vaddq_f32(v22, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(a2 + v3))), v20, *(a2 + v3), 1), v21, *(a2 + v3), 2));
    v3 += 16;
  }

  while (v3 != 128);
  return result;
}

float32x4_t *rotateBoxCorners@<X0>(float32x4_t *result@<X0>, const box3d *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *result;
  v5 = result[1];
  v6 = result[2];
  do
  {
    *(a3 + v3) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(a2 + v3))), v5, *(a2 + v3), 1), v6, *(a2 + v3), 2);
    v3 += 16;
  }

  while (v3 != 128);
  return result;
}

void writeBox3ds(const void **a1, uint64_t *a2, unsigned int **a3, float a4)
{
  v52 = *MEMORY[0x277D85DE8];
  if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) == a3[1] - *a3)
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = &v47;
    std::string::basic_string[abi:ne200100](&v47, v7 + 11);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v47.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      memmove(v8, v9, v7);
    }

    strcpy(v8 + v7, "corners.txt");
    if (*(a1 + 23) >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = a1[1];
    }

    p_s = &__s;
    std::string::basic_string[abi:ne200100](&__s, v10 + 9);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if (*(a1 + 23) >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      memmove(p_s, v12, v10);
    }

    strcpy(p_s + v10, "types.txt");
    if (*(a1 + 23) >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = a1[1];
    }

    v14 = &v45;
    std::string::basic_string[abi:ne200100](&v45, v13 + 15);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v45.__r_.__value_.__r.__words[0];
    }

    if (v13)
    {
      if (*(a1 + 23) >= 0)
      {
        v15 = a1;
      }

      else
      {
        v15 = *a1;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, "confidences.txt");
    if (*(a1 + 23) >= 0)
    {
      v16 = *(a1 + 23);
    }

    else
    {
      v16 = a1[1];
    }

    v17 = &v44;
    std::string::basic_string[abi:ne200100](&v44, v16 + 9);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v44.__r_.__value_.__r.__words[0];
    }

    if (v16)
    {
      if (*(a1 + 23) >= 0)
      {
        v18 = a1;
      }

      else
      {
        v18 = *a1;
      }

      memmove(v17, v18, v16);
    }

    strcpy(v17 + v16, "uuids.txt");
    std::vector<float>::vector[abi:ne200100](v43, 0x4924924924924928 * ((a2[1] - *a2) >> 5));
    std::vector<float>::vector[abi:ne200100](__p, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
    std::vector<std::string>::vector[abi:ne200100](&v40, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
    v19 = *a2;
    if (a2[1] != *a2)
    {
      v20 = 0;
      v21 = 4;
      v22 = 4;
      do
      {
        v23 = v19 + 224 * v20;
        v24 = (v19 + v22);
        v25 = v43[0] + v21;
        v26 = 8;
        do
        {
          *(v25 - 1) = *(v24 - 1);
          *v25 = *v24;
          v25[1] = v24[1];
          v24 += 4;
          v25 += 3;
          --v26;
        }

        while (v26);
        *(__p[0] + v20) = *(v23 + 136);
        v27 = [*(v23 + 144) UUIDString];
        v28 = v27;
        v29 = [v27 UTF8String];
        std::string::__assign_external((v40 + 24 * v20), v29);

        ++v20;
        v19 = *a2;
        v22 += 224;
        v21 += 96;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v20);
    }

    ObjectUnderstandingTest::writeValue<std::vector<float>>(&v47, v43);
    v49.__loc_ = 0;
    v48.__sb_.__extbufnext_ = 0;
    v48.__sb_.__extbuf_ = &unk_286EBC0C8;
    v49.__vftable = &unk_286EBC0F0;
    std::ios_base::init(&v49, v48.__sb_.__extbuf_min_);
    v51 = -1;
    v50 = 0;
    MEMORY[0x25F894BC0](v48.__sb_.__extbuf_min_);
    std::fstream::open(&v48, &__s, 0x10u);
    v30 = *a3;
    v31 = a3[1];
    if (*a3 != v31)
    {
      do
      {
        v32 = MEMORY[0x25F894C60](&v48.__sb_.__extbufend_, *v30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " ", 1);
        ++v30;
      }

      while (v30 != v31);
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v48 + *(v48.__sb_.__extbuf_ - 3)), *&v48.__sb_.__extbuf_min_[*(v48.__sb_.__extbuf_ - 3) + 8] | 4);
    }

    MEMORY[0x25F894BD0](v48.__sb_.__extbuf_min_);
    std::iostream::~basic_iostream();
    MEMORY[0x25F894D60](&v49);
    ObjectUnderstandingTest::writeValue<std::vector<float>>(&v45, __p);
    v49.__loc_ = 0;
    v48.__sb_.__extbufnext_ = 0;
    v48.__sb_.__extbuf_ = &unk_286EBC0C8;
    v49.__vftable = &unk_286EBC0F0;
    std::ios_base::init(&v49, v48.__sb_.__extbuf_min_);
    v51 = -1;
    v50 = 0;
    MEMORY[0x25F894BC0](v48.__sb_.__extbuf_min_);
    std::fstream::open(&v48, &v44, 0x10u);
    v33 = v40;
    for (i = v41; v33 != i; v33 += 24)
    {
      v35 = *(v33 + 23);
      if (v35 >= 0)
      {
        v36 = v33;
      }

      else
      {
        v36 = *v33;
      }

      if (v35 >= 0)
      {
        v37 = *(v33 + 23);
      }

      else
      {
        v37 = *(v33 + 8);
      }

      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48.__sb_.__extbufend_, v36, v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " ", 1);
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v48 + *(v48.__sb_.__extbuf_ - 3)), *&v48.__sb_.__extbuf_min_[*(v48.__sb_.__extbuf_ - 3) + 8] | 4);
    }

    MEMORY[0x25F894BD0](v48.__sb_.__extbuf_min_);
    std::iostream::~basic_iostream();
    MEMORY[0x25F894D60](&v49);
    v48.__sb_.__extbuf_ = &v40;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v39 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a1, a2);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      writeBox3ds();
    }
  }
}

void sub_25D22873C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char *a43, char a44)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v44);
  a43 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a43);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t ObjectUnderstandingTest::writeValue<std::vector<float>>(const std::string *a1, float **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9.__loc_ = 0;
  v8.__sb_.__extbufnext_ = 0;
  v9.__vftable = &unk_286EBC0F0;
  std::ios_base::init(&v9, v8.__sb_.__extbuf_min_);
  v11 = -1;
  v10 = 0;
  MEMORY[0x25F894BC0](v8.__sb_.__extbuf_min_);
  std::fstream::open(&v8, a1, 0x10u);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " ", 1);
      ++v4;
    }

    while (v4 != v5);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((&v8 + *(v8.__sb_.__extbuf_ - 3)), *&v8.__sb_.__extbuf_min_[*(v8.__sb_.__extbuf_ - 3) + 8] | 4);
  }

  MEMORY[0x25F894BD0](v8.__sb_.__extbuf_min_);
  std::iostream::~basic_iostream();
  return MEMORY[0x25F894D60](&v9);
}

void sub_25D228A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v9);
  _Unwind_Resume(a1);
}

uint64_t loadBoxes(uint64_t *a1, void *a2)
{
  v25[19] = *MEMORY[0x277D85DE8];
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::ifstream::basic_ifstream(v22, a1, 8);
  v3 = v24;
  if (v24)
  {
    for (i = 0; ; std::vector<float>::push_back[abi:ne200100](&__p, &i))
    {
      v4 = MEMORY[0x25F894C10](v22, &i);
      if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
      {
        break;
      }
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((v22 + *(v22[0] - 24)), *&v23[*(v22[0] - 24) + 16] | 4);
    }
  }

  v22[0] = *MEMORY[0x277D82808];
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x25F894BD0](v23);
  std::istream::~istream();
  v5 = MEMORY[0x25F894D60](v25);
  if (v3 && (v7 = (v19 - __p) >> 2, !(v7 % 0x18)))
  {
    a2[1] = *a2;
    std::vector<box3d>::resize(a2, v7 / 0x18);
    if (v7 >= 0x18)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = 8;
        v15 = v11;
        v16 = v12;
        do
        {
          *&v10 = *(__p + v16);
          DWORD2(v10) = *(__p + v16 + 8);
          *(*a2 + v15) = v10;
          v16 += 12;
          v15 += 16;
          --v14;
        }

        while (v14);
        ++v13;
        v12 += 96;
        v11 += 128;
      }

      while (v13 != v7 / 0x18);
    }

    v9 = 1;
  }

  else
  {
    v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      loadBoxes();
    }

    v9 = 0;
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_25D228D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<box3d>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 7;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + (a2 << 7);
    }
  }

  else
  {
    std::vector<box3d>::__append(result, a2 - v2);
  }
}

uint64_t box2boxCornerdist(uint64_t result, const box3d *a2)
{
  v2 = 0;
  v3 = 3.4028e38;
  do
  {
    for (i = 0; i != 128; i += 16)
    {
      v5 = vsubq_f32(*(result + 16 * v2), *(a2 + i));
      v6 = vmulq_f32(v5, v5);
      v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
      if (v7 < v3)
      {
        v3 = v7;
      }
    }

    ++v2;
  }

  while (v2 != 8);
  return result;
}

void box3dEnlarge(uint64_t *__return_ptr a1@<X8>, float32x4_t *a2@<X0>, float32x2_t a3@<D0>, float32_t a4@<S1>, float a5@<S2>)
{
  v7 = vsubq_f32(*a2, a2[3]);
  v8 = vmulq_f32(v7, v7);
  v9 = vsubq_f32(*a2, a2[1]);
  v19 = *a2;
  v10 = vmulq_f32(v9, v9);
  v11 = vadd_f32(vzip1_s32(*v8.i8, *v10.i8), vzip2_s32(*v8.i8, *v10.i8));
  v12 = vextq_s8(v8, v8, 8uLL);
  a3.f32[1] = a4;
  *v12.i8 = vmaxnm_f32(vadd_f32(vsqrt_f32(vadd_f32(vzip1_s32(*v12.i8, *&vextq_s8(v10, v10, 8uLL)), v11)), a3), vdup_n_s32(0x3DCCCCCDu));
  v13 = vsubq_f32(*a2, a2[4]);
  v14 = vmulq_f32(v13, v13);
  v12.i32[2] = fmaxf(sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) + a5, 0.1);
  v18 = v12;
  v15 = atan2f(v9.f32[0], v9.f32[1]);
  v16.i64[0] = 0x3F0000003F000000;
  v16.i64[1] = 0x3F0000003F000000;
  v17 = vmulq_f32(vaddq_f32(v19, a2[6]), v16);

  centroidSizeAngleToBox3d(a1, v17, v18, v15);
}

void box3dFromNSArray(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v18 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] box3dFromNSArray takes non-null pointer).");
    goto LABEL_10;
  }

  if ([v3 count] != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] box3dFromNSArray takes non-8 corners box).");
LABEL_10:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  for (i = 0; i != 8; ++i)
  {
    v5 = [v18 objectAtIndexedSubscript:i];
    v6 = [v5 objectAtIndexedSubscript:0];
    [v6 floatValue];
    v17 = v7;
    v8 = [v18 objectAtIndexedSubscript:i];
    v9 = [v8 objectAtIndexedSubscript:1];
    [v9 floatValue];
    v16 = v10;
    v11 = [v18 objectAtIndexedSubscript:i];
    v12 = [v11 objectAtIndexedSubscript:2];
    [v12 floatValue];
    v13 = v17;
    DWORD1(v13) = v16;
    DWORD2(v13) = v14;
    *(a2 + 16 * i) = v13;
  }
}

void sub_25D22908C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  __cxa_free_exception(v14);

  _Unwind_Resume(a1);
}

BOOL areBoxesEqualByCorners(const box3d *a1, const box3d *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = vdup_n_s32(0x358637BDu);
  do
  {
    v5 = vsubq_f32(*a1, *a2);
    if (fabsf(*v5.i32) > 0.000001)
    {
      break;
    }

    v6 = vcgt_f32(vabs_f32(*&vextq_s8(v5, v5, 4uLL)), v4);
    if (v6.i8[0])
    {
      break;
    }

    if (v6.i8[4])
    {
      break;
    }

    v3 = v2 > 6;
    a1 = (a1 + 16);
    a2 = (a2 + 16);
    ++v2;
  }

  while (v2 != 8);
  return v3;
}

id boxesToObjects(uint64_t *a1, void *a2, unsigned int a3)
{
  v27 = a2;
  v5 = *a1;
  v4 = a1[1];
  v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 5);
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v8 = v4 == v5;
  v9 = v7;
  if (!v8)
  {
    v10 = 0;
    if (v6 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v6;
    }

    v25 = xmmword_25D278710;
    do
    {
      v12 = objc_alloc_init(OU3DObject);
      [(OU3DObject *)v12 setType:*(*a1 + 224 * v10 + 128)];
      v13 = [*(*a1 + 224 * v10 + 152) copy];
      [(OU3DObject *)v12 setDetection_source:v13];

      v14 = [*(*a1 + 224 * v10 + 144) copy];
      [(OU3DObject *)v12 setIdentifier:v14];

      LODWORD(v15) = *(*a1 + 224 * v10 + 136);
      [(OU3DObject *)v12 setConfidence:v15];
      v16 = *a1 + 224 * v10;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v28, *(v16 + 160), *(v16 + 168), (*(v16 + 168) - *(v16 + 160)) >> 2);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v31, v28, v29, (v29 - v28) >> 2);
      __p = 0;
      v35 = 0;
      v36 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v31, v32, (v32 - v31) >> 2);
      v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v35 - __p) >> 2];
      v19 = __p;
      if (v35 != __p)
      {
        v20 = 0;
        do
        {
          LODWORD(v18) = v19[v20];
          v21 = [MEMORY[0x277CCABB0] numberWithFloat:{v18, v25}];
          [v17 addObject:v21];

          ++v20;
          v19 = __p;
        }

        while (v20 < (v35 - __p) >> 2);
      }

      v22 = [v17 copy];

      v9 = v7;
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      [(OU3DObject *)v12 setLogits:v22];

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      [(OU3DObject *)v12 setStatus:a3];
      [(OU3DObject *)v12 setColor:*&v25];
      [(OU3DObject *)v12 addGroupId:*(*a1 + 224 * v10 + 216) forGroupType:*(*a1 + 224 * v10 + 208)];
      [(OU3DObject *)v12 addBoxesDict:*a1 + 224 * v10 forDictKey:v27];
      [v7 addObject:v12];

      ++v10;
    }

    while (v10 != v11);
  }

  v23 = [v9 copy];

  return v23;
}

void updateObjectsWithBoxes(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v25 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = 0;
    v24 = v6;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v7];
      v9 = *a1;
      if (a1[1] != *a1)
      {
        v10 = 0;
        do
        {
          v11 = *(v9 + 224 * v10 + 144);
          v12 = [v5 objectAtIndexedSubscript:v7];
          v13 = [v12 identifier];
          LOBYTE(v11) = [v11 isEqual:v13];

          if (v11)
          {
            [v8 setType:*(*a1 + 224 * v10 + 128)];
            v14 = [*(*a1 + 224 * v10 + 152) copy];
            [v8 setDetection_source:v14];

            v15 = [*(*a1 + 224 * v10 + 144) copy];
            [v8 setIdentifier:v15];

            LODWORD(v16) = *(*a1 + 224 * v10 + 136);
            [v8 setConfidence:v16];
            v17 = *a1 + 224 * v10;
            v27 = 0;
            v28 = 0;
            v26 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v26, *(v17 + 160), *(v17 + 168), (*(v17 + 168) - *(v17 + 160)) >> 2);
            v29 = 0;
            v30 = 0;
            v31 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v29, v26, v27, (v27 - v26) >> 2);
            __p = 0;
            v33 = 0;
            v34 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v29, v30, (v30 - v29) >> 2);
            v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v33 - __p) >> 2];
            v20 = __p;
            if (v33 != __p)
            {
              v21 = 0;
              do
              {
                LODWORD(v19) = v20[v21];
                v22 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
                [v18 addObject:v22];

                ++v21;
                v20 = __p;
              }

              while (v21 < (v33 - __p) >> 2);
            }

            v23 = [v18 copy];

            if (__p)
            {
              v33 = __p;
              operator delete(__p);
            }

            if (v29)
            {
              v30 = v29;
              operator delete(v29);
            }

            [v8 setLogits:v23];

            if (v26)
            {
              v27 = v26;
              operator delete(v26);
            }

            [v8 addGroupId:*(*a1 + 224 * v10 + 216) forGroupType:*(*a1 + 224 * v10 + 208)];
            [v8 addBoxesDict:*a1 + 224 * v10 forDictKey:v25];
          }

          ++v10;
          v9 = *a1;
        }

        while (v10 < 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
      }

      ++v7;
    }

    while (v7 != v24);
  }
}

uint64_t isBoxRectangle(float32x4_t *a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v3 = vmovn_s32(vmvnq_s8(vceqq_f32(a1[i], a1[i + 4])));
    if (v3.i8[0] & 1 | v3.i8[2] & 1)
    {
      return 0;
    }
  }

  v4 = *a1[1].f32;
  v5 = vsub_f32(*a1->f32, v4);
  v6 = vmul_f32(v5, v5);
  v7 = *a1[2].f32;
  v8 = *a1[3].f32;
  v9 = vsub_f32(v7, v8);
  v10 = vmul_f32(v9, v9);
  v11 = vsqrt_f32(vadd_f32(vzip1_s32(v6, v10), vzip2_s32(v6, v10)));
  if (fabsf(vsub_f32(v11, vdup_lane_s32(v11, 1)).f32[0]) > 0.00005)
  {
    return 0;
  }

  v12 = vsub_f32(v4, v7);
  v13 = vmul_f32(v12, v12);
  v14 = vsub_f32(*a1->f32, v8);
  v15 = vmul_f32(v14, v14);
  v16 = vsqrt_f32(vadd_f32(vzip1_s32(v15, v13), vzip2_s32(v15, v13)));
  if (fabsf(vsub_f32(v16, vdup_lane_s32(v16, 1)).f32[0]) > 0.00005)
  {
    return 0;
  }

  v17 = a1[1];
  v18 = a1[2];
  v19 = vsubq_f32(v18, v17);
  if (vaddv_f32(*&vmulq_f32(vsubq_f32(v17, *a1), v19)) > 0.00001)
  {
    v20 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      isBoxRectangle();
    }

LABEL_16:

    return 0;
  }

  v22 = a1[3];
  v23 = vsubq_f32(v22, v18);
  if (vaddv_f32(*&vmulq_f32(v19, v23)) > 0.00001)
  {
    v20 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      isBoxRectangle();
    }

    goto LABEL_16;
  }

  if (vaddv_f32(*&vmulq_f32(v23, vsubq_f32(*a1, v22))) > 0.00001)
  {
    v20 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      isBoxRectangle();
    }

    goto LABEL_16;
  }

  return 1;
}

void Box3dEnlarge(int32x2_t a1@<D0>, float32x4_t *a2@<X1>, int a3@<W0>, float32x4_t *a4@<X8>)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v6 = a2[3];
  v7 = a2[5];
  v36 = a2[4];
  a4[4] = v36;
  a4[5] = v7;
  v8 = a2[7];
  a4[6] = a2[6];
  a4[7] = v8;
  v9 = a2[1];
  v33 = v6;
  v35 = *a2;
  *a4 = *a2;
  a4[1] = v9;
  v10 = a2[3];
  v31 = v9;
  a4[2] = a2[2];
  a4[3] = v10;
  *__p = xmmword_25D278080;
  v47.i64[0] = 0;
  v46 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v46, __p, &v40, 4uLL);
  v45 = xmmword_25D2780D0;
  v48 = 0uLL;
  v47.i64[1] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v47.i64[1], &v45, &v46, 4uLL);
  v44 = xmmword_25D278090;
  v50.i64[0] = 0;
  v49 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v49, &v44, &v45, 4uLL);
  v43 = xmmword_25D2780A0;
  v51 = 0uLL;
  v50.i64[1] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v50.i64[1], &v43, &v44, 4uLL);
  v42 = xmmword_25D2780B0;
  v53 = 0;
  v52 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v52, &v42, &v43, 4uLL);
  v41 = xmmword_25D2780C0;
  v55[0] = 0;
  v55[1] = 0;
  v54 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v54, &v41, &v42, 4uLL);
  memset(v38, 0, sizeof(v38));
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v38, &v46, v56, 6uLL);
  v11 = 0;
  v12 = vsubq_f32(v31, v35);
  v13 = vmulq_f32(v12, v12);
  v14 = vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14));
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14), vmul_f32(*v13.f32, *v13.f32)));
  v15 = vsubq_f32(v33, v35);
  v16 = vmulq_f32(v15, v15);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  v18 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14), vmul_f32(*v13.f32, *v13.f32))).f32[0]);
  *v12.f32 = vrsqrte_f32(v17);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v17, vmul_f32(*v12.f32, *v12.f32)));
  v32 = vmulq_n_f32(v15, vmul_f32(*v12.f32, vrsqrts_f32(v17, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
  v34 = v18;
  v19 = vsubq_f32(v36, v35);
  v20 = vmulq_f32(v19, v19);
  *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  *v20.f32 = vrsqrte_f32(v21);
  *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
  v37 = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
  do
  {
    v22 = v55[v11 - 1];
    if (v22)
    {
      v55[v11] = v22;
      operator delete(v22);
    }

    v11 -= 3;
  }

  while (v11 != -18);
  v46 = v37;
  v47 = v37;
  v48 = v32;
  v49 = v34;
  v50 = v32;
  v51 = v34;
  __p[1] = 0;
  v40 = 0;
  __p[0] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(__p, &v46, &v52, 6uLL);
  v23 = v38[0] + 24 * a3;
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = __p[0];
  if (v24 != v25)
  {
    v27 = *(__p[0] + a3);
    v28 = vdupq_lane_s32(a1, 0);
    do
    {
      v29 = *v24++;
      a4[v29] = vmlaq_f32(a4[v29], v27, v28);
    }

    while (v24 != v25);
  }

  if (v26)
  {
    __p[1] = v26;
    operator delete(v26);
  }

  v46.i64[0] = v38;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v46);
}

void sub_25D229DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v20 - 208) = &a20;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v20 - 208));
  _Unwind_Resume(a1);
}

void boxesFromObjects(void *a1@<X0>, void *a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  v7 = a1;
  v43 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (a3)
  {
    a3[1] = *a3;
  }

  for (i = 0; ; i = v58[0] + 1)
  {
    v58[0] = i;
    if ([v7 count] <= i)
    {
      break;
    }

    v9 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    while (1)
    {
      v10 = [v7 objectAtIndexedSubscript:v58[0]];
      v11 = [v10 logits];
      v12 = [v11 count];

      if (v12 <= v9)
      {
        break;
      }

      v13 = [v7 objectAtIndexedSubscript:v58[0]];
      v14 = [v13 logits];
      v15 = [v14 objectAtIndex:v9];
      [v15 floatValue];
      v17 = v16;

      LODWORD(v45[0]) = v17;
      std::vector<float>::push_back[abi:ne200100](&v55, v45);
      ++v9;
    }

    v18 = [v7 objectAtIndexedSubscript:v58[0]];
    v19 = [v18 hasBoxesDict:v43];

    if (v19)
    {
      memset(v54, 0, sizeof(v54));
      v20 = [v7 objectAtIndexedSubscript:v58[0]];
      v21 = [v20 boxesDict];
      v22 = [v21 objectForKeyedSubscript:v43];
      box3dFromNSArray(v22, v54);

      v23 = [v7 objectAtIndexedSubscript:v58[0]];
      v44 = [v23 type];
      v24 = [v7 objectAtIndexedSubscript:v58[0]];
      [v24 confidence];
      v26 = v25;
      v27 = [v7 objectAtIndexedSubscript:v58[0]];
      v28 = a3;
      v29 = [v27 identifier];
      v30 = [v7 objectAtIndexedSubscript:v58[0]];
      v31 = [v30 detection_source];
      OUBox3d::OUBox3d(v45, v54, &v44, v29, &v55, v31, v26);
      v32 = a4[1];
      if (v32 >= a4[2])
      {
        v42 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(a4, v45);
      }

      else
      {
        v33 = v45[0];
        v34 = v45[1];
        v35 = v45[3];
        *(v32 + 32) = v45[2];
        *(v32 + 48) = v35;
        *v32 = v33;
        *(v32 + 16) = v34;
        v36 = v45[4];
        v37 = v45[5];
        v38 = v45[7];
        *(v32 + 96) = v45[6];
        *(v32 + 112) = v38;
        *(v32 + 64) = v36;
        *(v32 + 80) = v37;
        v39 = v46;
        v46 = 0;
        *(v32 + 128) = v39;
        *(v32 + 136) = v47;
        v40 = v48;
        v48 = 0u;
        *(v32 + 176) = 0;
        *(v32 + 144) = v40;
        *(v32 + 160) = 0u;
        *(v32 + 160) = v49;
        *(v32 + 176) = v50;
        v49 = 0u;
        v50 = 0;
        *(v32 + 184) = __p[0];
        *(v32 + 192) = *&__p[1];
        memset(__p, 0, sizeof(__p));
        v41 = v52;
        v52 = 0;
        *(v32 + 208) = v41;
        *(v32 + 216) = v53;
        v42 = v32 + 224;
      }

      a4[1] = v42;

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      if (v49)
      {
        *(&v49 + 1) = v49;
        operator delete(v49);
      }

      a3 = v28;
      if (v28)
      {
        std::vector<int>::push_back[abi:ne200100](v28, v58);
      }
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }
}

void sub_25D22A240(_Unwind_Exception *a1, uint64_t a2, OUBox3d *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  OUBox3d::~OUBox3d(&a11);

  v20 = *(v18 - 144);
  if (v20)
  {
    *(v18 - 136) = v20;
    operator delete(v20);
  }

  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void NonMaximumSuppression(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  if (a2)
  {
    std::vector<int>::vector[abi:ne200100](&v27, a2);
    begin = v27.__begin_;
    end = v27.__end_;
    if (v27.__begin_ != v27.__end_)
    {
      v11 = 0;
      v12 = (v27.__end_ - v27.__begin_ - 4) >> 2;
      v13 = vdupq_n_s64(v12);
      v14 = (v12 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v15 = v27.__begin_ + 2;
      do
      {
        v16 = vdupq_n_s64(v11);
        v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_25D277E60)));
        if (vuzp1_s16(v17, *v13.i8).u8[0])
        {
          *(v15 - 2) = v11;
        }

        if (vuzp1_s16(v17, *&v13).i8[2])
        {
          *(v15 - 1) = v11 + 1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_25D277E50)))).i32[1])
        {
          *v15 = v11 + 2;
          v15[1] = v11 + 3;
        }

        v11 += 4;
        v15 += 4;
      }

      while (v14 != v11);
    }

    v18 = 126 - 2 * __clz(end - begin);
    v28 = a1;
    if (end == begin)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    std::__introsort<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,false>(begin, end, &v28, v19, 1);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    while (v27.__begin_ != v27.__end_)
    {
      v20 = *(v27.__end_ - 1);
      v28 = v20;
      std::vector<unsigned long>::push_back[abi:ne200100](a4, &v28);
      v21 = v27.__begin_;
      v22 = v27.__end_ - 1;
      v27.__end_ = v22;
      if (v27.__begin_ == v22)
      {
        v26 = 0;
      }

      else
      {
        v23 = 0;
        do
        {
          v24 = *v21;
          std::function<float ()(int,int)>::operator()(a3, v20, *v21);
          if (v25 <= a5)
          {
            v27.__begin_[v23++] = v24;
          }

          ++v21;
        }

        while (v21 != v22);
        v26 = v23;
      }

      std::vector<float>::resize(&v27, v26);
    }

    if (v27.__begin_)
    {
      v27.__end_ = v27.__begin_;
      operator delete(v27.__begin_);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }
}

void sub_25D22A50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<float ()(int,int)>::operator()(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t nmsSameCls@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_286EBC178;
  v7[1] = a1;
  v7[3] = v7;
  v4 = -1227133513 * ((a1[1] - *a1) >> 5);
  v6[0] = &unk_286EBC208;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = v6;
  NonMaximumSuppression(v7, v4, v6, a3, a4);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](v7);
}

void sub_25D22A674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void nmsSameCls(id **a1@<X0>, float (*a2)(_OWORD *, _OWORD *)@<X1>, void *a3@<X2>, const void **a4@<X8>, float a5@<S0>)
{
  v9 = a3;
  v10 = a1[1];
  if (*a1 == v10)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    std::vector<float>::vector[abi:ne200100](&v54, v10 - *a1);
    v11 = *a1;
    v12 = a1[1];
    v13 = v54;
    if (*a1 != v12)
    {
      do
      {
        [*v11 confidence];
        *v13++ = v14;
        ++v11;
      }

      while (v11 != v12);
      v13 = v54;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<int>::vector[abi:ne200100](&v52, (v55 - v13) >> 2);
    v15 = v52;
    v16 = v53;
    if (v52 != v53)
    {
      v17 = 0;
      v18 = (v53 - v52 - 4) >> 2;
      v19 = vdupq_n_s64(v18);
      v20 = (v18 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v21 = v52 + 2;
      do
      {
        v22 = vdupq_n_s64(v17);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_25D277E60)));
        if (vuzp1_s16(v23, *v19.i8).u8[0])
        {
          *(v21 - 2) = v17;
        }

        if (vuzp1_s16(v23, *&v19).i8[2])
        {
          *(v21 - 1) = v17 + 1;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_25D277E50)))).i32[1])
        {
          *v21 = v17 + 2;
          v21[1] = v17 + 3;
        }

        v17 += 4;
        v21 += 4;
      }

      while (v20 != v17);
    }

    v24 = 126 - 2 * __clz((v16 - v15) >> 2);
    *&v51[0] = &v54;
    if (v16 == v15)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    std::__introsort<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *,false>(v15, v16, v51, v25, 1);
    v26 = v52;
    v27 = v53;
    if (v52 != v53)
    {
      do
      {
        v28 = *(v27 - 4);
        if (([(*a1)[v28] hasBoxesDict:v9] & 1) == 0)
        {
          *&v53 = v53 - 4;
        }

        memset(v51, 0, sizeof(v51));
        v29 = [(*a1)[v28] boxesDict];
        v30 = [v29 objectForKeyedSubscript:v9];
        box3dFromNSArray(v30, v51);

        v32 = a4[1];
        v31 = a4[2];
        if (v32 >= v31)
        {
          v34 = *a4;
          v35 = v32 - *a4;
          v36 = v35 >> 3;
          v37 = (v35 >> 3) + 1;
          if (v37 >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v38 = v31 - v34;
          if (v38 >> 2 > v37)
          {
            v37 = v38 >> 2;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v39);
          }

          *(8 * v36) = v28;
          v33 = (8 * v36 + 8);
          memcpy(0, v34, v35);
          v40 = *a4;
          *a4 = 0;
          a4[1] = v33;
          a4[2] = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v32 = v28;
          v33 = v32 + 8;
        }

        a4[1] = v33;
        __p = 0;
        v50 = 0uLL;
        v41 = v52;
        if (v53 - v52 != 4)
        {
          v42 = 0;
          do
          {
            v48 = v41[v42];
            if ([(*a1)[v48] hasBoxesDict:v9])
            {
              v43 = [(*a1)[v28] type];
              v44 = [(*a1)[v48] type];

              if (v43 != v44 || (memset(v47, 0, sizeof(v47)), [(*a1)[v48] boxesDict], v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "objectForKeyedSubscript:", v9), v46 = objc_claimAutoreleasedReturnValue(), box3dFromNSArray(v46, v47), v46, v45, a2(v51, v47) <= a5))
              {
                std::vector<int>::push_back[abi:ne200100](&__p, &v48);
              }
            }

            ++v42;
            v41 = v52;
          }

          while (((v53 - v52) >> 2) - 1 > v42);
        }

        if (v41)
        {
          *&v53 = v41;
          operator delete(v41);
        }

        v26 = __p;
        v52 = __p;
        v53 = v50;
        v27 = v50;
      }

      while (__p != v50);
    }

    if (v26)
    {
      *&v53 = v26;
      operator delete(v26);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }
  }
}

void sub_25D22AAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v31 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 136);
  if (v32)
  {
    *(v29 - 128) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t nmsAgnosticCls@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_286EBC298;
  v7[1] = a1;
  v7[3] = v7;
  v4 = -1227133513 * ((a1[1] - *a1) >> 5);
  v6[0] = &unk_286EBC318;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = v6;
  NonMaximumSuppression(v7, v4, v6, a3, a4);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](v7);
}

void sub_25D22AC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t *nmsWReference@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, float (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  if (*a2 == a2[1])
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    v9 = result;
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    LODWORD(v17) = 0;
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v19, &v17))
      {
        v10 = *v9;
        if (v9[1] != *v9)
        {
          v11 = 0;
          v12 = 0;
          do
          {
            if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) <= v17)
            {
              std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
            }

            if (a3(*a2 + 224 * v17, v10 + v11) > a5)
            {
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v19, &v17, &v17);
            }

            ++v12;
            v10 = *v9;
            v11 += 224;
          }

          while (0x6DB6DB6DB6DB6DB7 * ((v9[1] - *v9) >> 5) > v12);
        }
      }

      v13 = v17 + 1;
      LODWORD(v17) = v17 + 1;
      v15 = *a2;
      v14 = a2[1];
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v14 - *a2) >> 5) > v13);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    v18 = 0;
    if (v14 != v15)
    {
      do
      {
        if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v19, &v18))
        {
          v17 = v18;
          std::vector<unsigned long>::push_back[abi:ne200100](a4, &v17);
        }

        v16 = ++v18;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v16);
    }

    return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v19);
  }

  return result;
}

void sub_25D22AE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v7;
    operator delete(v7);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

id packBoxesDict(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 mutableCopy];
  v8 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  while (v8 < [v7 count])
  {
    v9 = [v7 objectAtIndexedSubscript:v8];
    v10 = [v9 identifier];
    v11 = [v10 UUIDString];
    std::string::basic_string[abi:ne200100]<0>(&v39, [v11 UTF8String]);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v34, &v39, &v39);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v39);
    }

    v12 = *a2;
    if (a2[1] != *a2)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(v12 + v13 + 144);
        v16 = [v9 identifier];
        LODWORD(v15) = [v15 isEqual:v16];

        if (v15)
        {
          [v9 addBoxesDict:*a2 + v13 forDictKey:v6];
          [v9 addGroupId:*(*a2 + v13 + 216) forGroupType:*(*a2 + v13 + 208)];
        }

        ++v14;
        v12 = *a2;
        v13 += 224;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v14);
    }

    ++v8;
  }

  if ([v6 isEqualToString:@"lshaped"])
  {
    v17 = *a2;
    v18 = a2[1];
    if (*a2 != v18)
    {
      do
      {
        v19 = [*(v17 + 144) UUIDString];
        std::string::basic_string[abi:ne200100]<0>(&v39, [v19 UTF8String]);
        v20 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v34, &v39);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(v39);
        }

        if (!v20)
        {
          v21 = objc_alloc_init(OU3DObject);
          [(OU3DObject *)v21 setType:*(v17 + 128)];
          v22 = [*(v17 + 144) copy];
          [(OU3DObject *)v21 setIdentifier:v22];

          LODWORD(v23) = *(v17 + 136);
          [(OU3DObject *)v21 setConfidence:v23];
          v31 = 0;
          v32 = 0;
          v33 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v31, *(v17 + 160), *(v17 + 168), (*(v17 + 168) - *(v17 + 160)) >> 2);
          __p = 0;
          v37 = 0;
          v38 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v31, v32, (v32 - v31) >> 2);
          v39 = 0;
          v40 = 0;
          v41 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v39, __p, v37, (v37 - __p) >> 2);
          v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v40 - v39) >> 2];
          v26 = v39;
          if (v40 != v39)
          {
            v27 = 0;
            do
            {
              LODWORD(v25) = v26[v27];
              v28 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
              [v24 addObject:v28];

              ++v27;
              v26 = v39;
            }

            while (v27 < (v40 - v39) >> 2);
          }

          v29 = [v24 copy];

          if (v39)
          {
            v40 = v39;
            operator delete(v39);
          }

          if (__p)
          {
            v37 = __p;
            operator delete(__p);
          }

          [(OU3DObject *)v21 setLogits:v29];

          if (v31)
          {
            v32 = v31;
            operator delete(v31);
          }

          [(OU3DObject *)v21 setStatus:1];
          [(OU3DObject *)v21 setColor:0.000195791275];
          [(OU3DObject *)v21 addGroupId:*(v17 + 216) forGroupType:*(v17 + 208)];
          [(OU3DObject *)v21 addBoxesDict:v17 forDictKey:v6];
          [v7 insertObject:v21 atIndex:0];
        }

        v17 += 224;
      }

      while (v17 != v18);
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v34);

  return v7;
}

void sub_25D22B228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a17);

  _Unwind_Resume(a1);
}

uint64_t *std::vector<box3d>::__init_with_size[abi:ne200100]<box3d const*,box3d const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<box3d>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D22B3D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::string>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
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

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::vector<box3d>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 7)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 7);
      v5 += a2 << 7;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 7);
    if (v7 >> 57)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 6 > v7)
    {
      v7 = v8 >> 6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFF80)
    {
      v9 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(a1, v9);
    }

    v10 = (v6 >> 7 << 7);
    bzero(v10, a2 << 7);
    v11 = &v10[128 * a2];
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

void std::__introsort<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,false>(unsigned int *a1, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = a2 - 1;
    v151 = a2;
    v152 = a2 - 2;
    v150 = a2 - 3;
    v11 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v11;
          v12 = a2 - v11;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:

                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v11, v11 + 1, v10, a3);
                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v11, v11 + 1, v11 + 2, v10, a3);
                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v11, v11 + 1, v11 + 2, v11 + 3, v10, a3);
                return;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              std::function<float ()(int)>::operator()(*a3, *(a2 - 1));
              v75 = v74;
              std::function<float ()(int)>::operator()(*a3, *v11);
              if (v75 < v76)
              {
                v77 = *v11;
                *v11 = *(a2 - 1);
                *(a2 - 1) = v77;
              }

              return;
            }
          }

          if (v12 <= 23)
          {
            v78 = v11 + 1;
            v80 = v11 == a2 || v78 == a2;
            if (a5)
            {
              if (!v80)
              {
                v81 = 0;
                v82 = v11;
                do
                {
                  v83 = v82;
                  v82 = v78;
                  std::function<float ()(int)>::operator()(*a3, v83[1]);
                  v85 = v84;
                  std::function<float ()(int)>::operator()(*a3, *v83);
                  if (v85 < v86)
                  {
                    v87 = *v82;
                    v88 = v81;
                    while (1)
                    {
                      *(v11 + v88 + 4) = *(v11 + v88);
                      if (!v88)
                      {
                        break;
                      }

                      std::function<float ()(int)>::operator()(*a3, v87);
                      v90 = v89;
                      std::function<float ()(int)>::operator()(*a3, *(v11 + v88 - 4));
                      v88 -= 4;
                      if (v90 >= v91)
                      {
                        v92 = (v11 + v88 + 4);
                        goto LABEL_85;
                      }
                    }

                    v92 = v11;
LABEL_85:
                    *v92 = v87;
                  }

                  v78 = v82 + 1;
                  v81 += 4;
                }

                while (v82 + 1 != a2);
              }
            }

            else if (!v80)
            {
              do
              {
                v139 = a1;
                a1 = v78;
                std::function<float ()(int)>::operator()(*a3, v139[1]);
                v141 = v140;
                std::function<float ()(int)>::operator()(*a3, *v139);
                if (v141 < v142)
                {
                  v143 = *a1;
                  v144 = a1;
                  do
                  {
                    v145 = v144;
                    v146 = *--v144;
                    *v145 = v146;
                    std::function<float ()(int)>::operator()(*a3, v143);
                    v148 = v147;
                    std::function<float ()(int)>::operator()(*a3, *(v145 - 2));
                  }

                  while (v148 < v149);
                  *v144 = v143;
                }

                v78 = a1 + 1;
              }

              while (a1 + 1 != a2);
            }

            return;
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v93 = (v12 - 2) >> 1;
              v153 = v93;
              do
              {
                v94 = v93;
                if (v153 >= v93)
                {
                  v95 = (2 * v93) | 1;
                  v96 = &v11[v95];
                  if (2 * v93 + 2 < v12)
                  {
                    std::function<float ()(int)>::operator()(*a3, *v96);
                    v98 = v97;
                    std::function<float ()(int)>::operator()(*a3, v96[1]);
                    if (v98 < v99)
                    {
                      ++v96;
                      v95 = 2 * v94 + 2;
                    }
                  }

                  v100 = &v11[v94];
                  std::function<float ()(int)>::operator()(*a3, *v96);
                  v102 = v101;
                  std::function<float ()(int)>::operator()(*a3, *v100);
                  a2 = v151;
                  if (v102 >= v103)
                  {
                    v104 = *v100;
                    do
                    {
                      v105 = v100;
                      v100 = v96;
                      *v105 = *v96;
                      if (v153 < v95)
                      {
                        break;
                      }

                      v106 = 2 * v95;
                      v95 = (2 * v95) | 1;
                      v96 = &v11[v95];
                      v107 = v106 + 2;
                      if (v106 + 2 < v12)
                      {
                        std::function<float ()(int)>::operator()(*a3, *v96);
                        v109 = v108;
                        std::function<float ()(int)>::operator()(*a3, v96[1]);
                        if (v109 < v110)
                        {
                          ++v96;
                          v95 = v107;
                        }
                      }

                      std::function<float ()(int)>::operator()(*a3, *v96);
                      v112 = v111;
                      std::function<float ()(int)>::operator()(*a3, v104);
                    }

                    while (v112 >= v113);
                    *v100 = v104;
                    a2 = v151;
                  }
                }

                v93 = v94 - 1;
              }

              while (v94);
              do
              {
                v114 = a2;
                v115 = 0;
                v154 = *a1;
                v116 = a1;
                do
                {
                  v117 = v116;
                  v118 = &v116[v115];
                  v116 = v118 + 1;
                  v119 = 2 * v115;
                  v115 = (2 * v115) | 1;
                  v120 = v119 + 2;
                  if (v119 + 2 < v12)
                  {
                    std::function<float ()(int)>::operator()(*a3, v118[1]);
                    v122 = v121;
                    v124 = v118[2];
                    v123 = v118 + 2;
                    std::function<float ()(int)>::operator()(*a3, v124);
                    if (v122 < v125)
                    {
                      v116 = v123;
                      v115 = v120;
                    }
                  }

                  *v117 = *v116;
                }

                while (v115 <= ((v12 - 2) >> 1));
                a2 = v114 - 1;
                if (v116 == (v114 - 1))
                {
                  *v116 = v154;
                }

                else
                {
                  *v116 = *a2;
                  *a2 = v154;
                  v126 = (v116 - a1 + 4) >> 2;
                  v127 = v126 < 2;
                  v128 = v126 - 2;
                  if (!v127)
                  {
                    v129 = v128 >> 1;
                    v130 = &a1[v128 >> 1];
                    std::function<float ()(int)>::operator()(*a3, *v130);
                    v132 = v131;
                    std::function<float ()(int)>::operator()(*a3, *v116);
                    if (v132 < v133)
                    {
                      v134 = *v116;
                      do
                      {
                        v135 = v116;
                        v116 = v130;
                        *v135 = *v130;
                        if (!v129)
                        {
                          break;
                        }

                        v129 = (v129 - 1) >> 1;
                        v130 = &a1[v129];
                        std::function<float ()(int)>::operator()(*a3, *v130);
                        v137 = v136;
                        std::function<float ()(int)>::operator()(*a3, v134);
                      }

                      while (v137 < v138);
                      *v116 = v134;
                    }
                  }
                }

                v127 = v12-- <= 2;
              }

              while (!v127);
            }

            return;
          }

          v13 = v12 >> 1;
          v14 = &v11[v12 >> 1];
          if (v12 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(&a1[v12 >> 1], a1, v10, a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, &a1[v12 >> 1], v10, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1 + 1, v14 - 1, v152, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1 + 2, &a1[v13 + 1], v150, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v14 - 1, &a1[v12 >> 1], &a1[v13 + 1], a3);
            v15 = *a1;
            *a1 = *v14;
            *v14 = v15;
          }

          --a4;
          if (a5)
          {
            break;
          }

          std::function<float ()(int)>::operator()(*a3, *(a1 - 1));
          v17 = v16;
          std::function<float ()(int)>::operator()(*a3, *a1);
          if (v17 < v18)
          {
            break;
          }

          v47 = *a1;
          std::function<float ()(int)>::operator()(*a3, *a1);
          v49 = v48;
          std::function<float ()(int)>::operator()(*a3, *v10);
          if (v49 >= v50)
          {
            v55 = a1 + 1;
            do
            {
              v11 = v55;
              if (v55 >= a2)
              {
                break;
              }

              std::function<float ()(int)>::operator()(*a3, v47);
              v57 = v56;
              ++v55;
              std::function<float ()(int)>::operator()(*a3, *v11);
            }

            while (v57 >= v58);
          }

          else
          {
            v11 = a1;
            do
            {
              std::function<float ()(int)>::operator()(*a3, v47);
              v52 = v51;
              v53 = v11[1];
              ++v11;
              std::function<float ()(int)>::operator()(*a3, v53);
            }

            while (v52 >= v54);
          }

          v59 = a2;
          if (v11 < a2)
          {
            v59 = a2;
            do
            {
              std::function<float ()(int)>::operator()(*a3, v47);
              v61 = v60;
              v62 = *--v59;
              std::function<float ()(int)>::operator()(*a3, v62);
            }

            while (v61 < v63);
          }

          while (v11 < v59)
          {
            v64 = *v11;
            *v11 = *v59;
            *v59 = v64;
            do
            {
              std::function<float ()(int)>::operator()(*a3, v47);
              v66 = v65;
              v67 = v11[1];
              ++v11;
              std::function<float ()(int)>::operator()(*a3, v67);
            }

            while (v66 >= v68);
            do
            {
              std::function<float ()(int)>::operator()(*a3, v47);
              v70 = v69;
              v71 = *--v59;
              std::function<float ()(int)>::operator()(*a3, v71);
            }

            while (v70 < v72);
          }

          v73 = v11 - 1;
          if (v11 - 1 != a1)
          {
            *a1 = *v73;
          }

          a5 = 0;
          *v73 = v47;
        }

        v19 = 0;
        v20 = *a1;
        do
        {
          std::function<float ()(int)>::operator()(*a3, a1[v19 + 1]);
          v22 = v21;
          std::function<float ()(int)>::operator()(*a3, v20);
          ++v19;
        }

        while (v22 < v23);
        v24 = &a1[v19];
        if (v19 == 1)
        {
          a2 = v151;
          do
          {
            if (v24 >= a2)
            {
              break;
            }

            v29 = *--a2;
            std::function<float ()(int)>::operator()(*a3, v29);
            v31 = v30;
            std::function<float ()(int)>::operator()(*a3, v20);
          }

          while (v31 >= v32);
        }

        else
        {
          do
          {
            v25 = *--a2;
            std::function<float ()(int)>::operator()(*a3, v25);
            v27 = v26;
            std::function<float ()(int)>::operator()(*a3, v20);
          }

          while (v27 >= v28);
        }

        if (v24 >= a2)
        {
          v44 = v24 - 1;
        }

        else
        {
          v33 = &a1[v19];
          v34 = a2;
          do
          {
            v35 = *v33;
            *v33 = *v34;
            *v34 = v35;
            do
            {
              v36 = v33[1];
              ++v33;
              std::function<float ()(int)>::operator()(*a3, v36);
              v38 = v37;
              std::function<float ()(int)>::operator()(*a3, v20);
            }

            while (v38 < v39);
            do
            {
              v40 = *--v34;
              std::function<float ()(int)>::operator()(*a3, v40);
              v42 = v41;
              std::function<float ()(int)>::operator()(*a3, v20);
            }

            while (v42 >= v43);
          }

          while (v33 < v34);
          v44 = v33 - 1;
        }

        if (v44 != a1)
        {
          *a1 = *v44;
        }

        *v44 = v20;
        v45 = v24 >= a2;
        a2 = v151;
        if (v45)
        {
          break;
        }

LABEL_38:
        std::__introsort<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,false>(a1, v44, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v44 + 1;
      }

      v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *>(a1, v44, a3);
      v11 = v44 + 1;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *>(v44 + 1, v151, a3))
      {
        break;
      }

      if (!v46)
      {
        goto LABEL_38;
      }
    }

    a2 = v44;
    if (!v46)
    {
      continue;
    }

    break;
  }
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  std::function<float ()(int)>::operator()(*a4, *a2);
  v9 = v8;
  std::function<float ()(int)>::operator()(*a4, *a1);
  v11 = v10;
  std::function<float ()(int)>::operator()(*a4, *a3);
  v13 = v12;
  std::function<float ()(int)>::operator()(*a4, *a2);
  if (v9 >= v11)
  {
    if (v13 < v14)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      std::function<float ()(int)>::operator()(*a4, *a2);
      v18 = v17;
      std::function<float ()(int)>::operator()(*a4, *a1);
      if (v18 < v19)
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  else
  {
    v15 = *a1;
    if (v13 >= v14)
    {
      *a1 = *a2;
      *a2 = v15;
      std::function<float ()(int)>::operator()(*a4, *a3);
      v22 = v21;
      std::function<float ()(int)>::operator()(*a4, *a2);
      if (v22 >= v23)
      {
        return;
      }

      v15 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v15;
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a2, a3, a5);
  std::function<float ()(int)>::operator()(*a5, *a4);
  v11 = v10;
  std::function<float ()(int)>::operator()(*a5, *a3);
  if (v11 < v12)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    std::function<float ()(int)>::operator()(*a5, *a3);
    v15 = v14;
    std::function<float ()(int)>::operator()(*a5, *a2);
    if (v15 < v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      std::function<float ()(int)>::operator()(*a5, *a2);
      v19 = v18;
      std::function<float ()(int)>::operator()(*a5, *a1);
      if (v19 < v20)
      {
        v21 = *a1;
        *a1 = *a2;
        *a2 = v21;
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a2, a3, a4, a6);
  std::function<float ()(int)>::operator()(*a6, *a5);
  v13 = v12;
  std::function<float ()(int)>::operator()(*a6, *a4);
  if (v13 < v14)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    std::function<float ()(int)>::operator()(*a6, *a4);
    v17 = v16;
    std::function<float ()(int)>::operator()(*a6, *a3);
    if (v17 < v18)
    {
      v19 = *a3;
      *a3 = *a4;
      *a4 = v19;
      std::function<float ()(int)>::operator()(*a6, *a3);
      v21 = v20;
      std::function<float ()(int)>::operator()(*a6, *a2);
      if (v21 < v22)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        std::function<float ()(int)>::operator()(*a6, *a2);
        v25 = v24;
        std::function<float ()(int)>::operator()(*a6, *a1);
        if (v25 < v26)
        {
          v27 = *a1;
          *a1 = *a2;
          *a2 = v27;
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        std::function<float ()(int)>::operator()(*a3, *(a2 - 1));
        v8 = v7;
        std::function<float ()(int)>::operator()(*a3, *a1);
        if (v8 < v9)
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v11 = (a1 + 2);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a3);
  v12 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    std::function<float ()(int)>::operator()(*a3, *v12);
    v16 = v15;
    std::function<float ()(int)>::operator()(*a3, *v11);
    if (v16 < v17)
    {
      v18 = *v12;
      v19 = v13;
      while (1)
      {
        *(a1 + v19 + 12) = *(a1 + v19 + 8);
        if (v19 == -8)
        {
          break;
        }

        std::function<float ()(int)>::operator()(*a3, v18);
        v21 = v20;
        std::function<float ()(int)>::operator()(*a3, *(a1 + v19 + 4));
        v19 -= 4;
        if (v21 >= v22)
        {
          v23 = (a1 + v19 + 12);
          goto LABEL_19;
        }
      }

      v23 = a1;
LABEL_19:
      *v23 = v18;
      if (++v14 == 8)
      {
        return v12 + 1 == a2;
      }
    }

    v11 = v12;
    v13 += 4;
    if (++v12 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::function<float ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void std::fstream::open(std::fstream *this, const std::string *__s, std::ios_base::openmode __mode)
{
  v4 = std::filebuf::open();
  v5 = (this + *(this->__sb_.__extbuf_ - 3));
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5->__rdstate_ | 4;
  }

  std::ios_base::clear(v5, v6);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x25F894BD0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v2);
  return a1;
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x25F894BD0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v1);

  JUMPOUT(0x25F894DE0);
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x25F894BD0](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x25F894D60);
}

{
  v1 = a1 + 52;
  MEMORY[0x25F894BD0](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v1);

  JUMPOUT(0x25F894DE0);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x25F894BD0](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x25F894D60);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x25F894BD0](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v1 + 54);

  JUMPOUT(0x25F894DE0);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25F894C20](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25F894C30](v13);
  return a1;
}

void sub_25D22CC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25F894C30](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25D22CBF0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_25D22CE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EBC178;
  a2[1] = v2;
  return result;
}

float std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v3) >> 5) <= v2)
  {
    std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v3 + 224 * v2 + 136);
}

uint64_t std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EBC208;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::operator()(uint64_t result, int *a2, int *a3)
{
  v3 = *a2;
  v4 = **(result + 8);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(*(result + 8) + 8) - v4) >> 5);
  if (v5 <= v3 || (v6 = *a3, v5 <= v6))
  {
    std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = v4 + 224 * v3;
  if (*(v7 + 128) == *(v4 + 224 * v6 + 128))
  {
    v8 = *(result + 16);

    return v8(v7);
  }

  return result;
}

uint64_t std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EBC298;
  a2[1] = v2;
  return result;
}

float std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v3) >> 5) <= v2)
  {
    std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v3 + 224 * v2 + 136);
}

uint64_t std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EBC318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::operator()(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = **(a1 + 8);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v4) >> 5);
  if (v5 <= v3 || (v6 = *a3, v5 <= v6))
  {
    std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *(a1 + 16);

  return v7(v4 + 224 * v3, v4 + 224 * v6);
}

uint64_t std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _GLOBAL__sub_I_OUBoxUtils_mm()
{
  v0 = objc_autoreleasePoolPush();
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];

  objc_autoreleasePoolPop(v0);
}

void OUDataLoader::OUDataLoader(std::string *this, __int128 *a2)
{
  v107[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = 1065353216;
  v85 = this + 1;
  v4 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  v86 = this;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/metadata.json", v4];
  v81 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  obj = v99 = 0u;
  v87 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
  if (v87)
  {
    v93 = 0;
    v6 = *v99;
    v82 = *(MEMORY[0x277D82808] + 24);
    v83 = *MEMORY[0x277D82808];
    v84 = *v99;
    v7 = v5;
    while (1)
    {
      if (v6 != v84)
      {
        objc_enumerationMutation(obj);
      }

      v90 = *(*(&v98 + 1) + 8 * v93);
      v8 = [v90 UTF8String];
      v9 = strlen(v8);
      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        operator new();
      }

      *(&__dst[0].__r_.__value_.__s + 23) = v9;
      if (v9)
      {
        memmove(__dst, v8, v9);
      }

      __dst[0].__r_.__value_.__s.__data_[v10] = 0;
      v102.__r_.__value_.__r.__words[0] = __dst;
      v11 = std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v85, __dst, &std::piecewise_construct, &v102);
      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst[0].__r_.__value_.__l.__data_);
      }

      v91 = [obj objectForKey:v90];
      v92 = [v91 objectForKey:@"type"];
      v12 = v92;
      v89 = v11 + 5;
      std::string::__assign_external((v11 + 5), [v92 UTF8String]);
      v13 = [v91 objectForKey:@"shape"];
      v11[11] = 1;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v94 objects:v103 count:16];
      if (v15)
      {
        v16 = *v95;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v95 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = [*(*(&v94 + 1) + 8 * i) intValue];
            v19 = v18;
            v21 = v11[9];
            v20 = v11[10];
            if (v21 >= v20)
            {
              v23 = v11[8];
              v24 = v21 - v23;
              v25 = (v21 - v23) >> 3;
              v26 = v25 + 1;
              if ((v25 + 1) >> 61)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v27 = v20 - v23;
              if (v27 >> 2 > v26)
              {
                v26 = v27 >> 2;
              }

              v28 = v27 >= 0x7FFFFFFFFFFFFFF8;
              v29 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v28)
              {
                v29 = v26;
              }

              if (v29)
              {
                _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m((v11 + 8), v29);
              }

              v30 = (v21 - v23) >> 3;
              v31 = (8 * v25);
              v32 = (8 * v25 - 8 * v30);
              *v31 = v18;
              v22 = v31 + 1;
              memcpy(v32, v23, v24);
              v33 = v11[8];
              v11[8] = v32;
              v11[9] = v22;
              v11[10] = 0;
              if (v33)
              {
                operator delete(v33);
              }

              v5 = v7;
            }

            else
            {
              *v21 = v18;
              v22 = v21 + 8;
            }

            v11[9] = v22;
            v11[11] = (v11[11] * v19);
          }

          v15 = [v14 countByEnumeratingWithState:&v94 objects:v103 count:16];
        }

        while (v15);
      }

      v34 = v86;
      if (SHIBYTE(v86->__r_.__value_.__r.__words[2]) < 0)
      {
        v34 = v86->__r_.__value_.__r.__words[0];
      }

      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%@.bin", v34, v90];
      v36 = v35;
      std::ifstream::basic_ifstream(__dst, [v35 UTF8String], 12);
      if (v106)
      {
        v102.__r_.__value_.__s.__data_[0] = 0;
        while (std::istream::peek() != -1)
        {
          std::istream::read();
          v38 = v11[13];
          v37 = v11[14];
          if (v38 >= v37)
          {
            v40 = v11[12];
            v41 = (v38 - v40);
            v42 = v38 - v40 + 1;
            if (v42 < 0)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v43 = v37 - v40;
            if (2 * v43 > v42)
            {
              v42 = 2 * v43;
            }

            if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v44 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v44 = v42;
            }

            if (v44)
            {
              operator new();
            }

            v45 = v38 - v40;
            *v41 = v102.__r_.__value_.__s.__data_[0];
            v39 = v41 + 1;
            memcpy(0, v40, v45);
            v11[12] = 0;
            v11[13] = v41 + 1;
            v11[14] = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            *v38 = v102.__r_.__value_.__s.__data_[0];
            v39 = v38 + 1;
          }

          v11[13] = v39;
        }

        if (!std::filebuf::close())
        {
          std::ios_base::clear((__dst + *(__dst[0].__r_.__value_.__r.__words[0] - 24)), *(&__dst[1].__r_.__value_.__r.__words[1] + *(__dst[0].__r_.__value_.__r.__words[0] - 24)) | 4);
        }
      }

      __dst[0].__r_.__value_.__r.__words[0] = v83;
      *(__dst[0].__r_.__value_.__r.__words + *(v83 - 24)) = v82;
      MEMORY[0x25F894BD0](&__dst[0].__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x25F894D60](v107);

      v46 = *(v11 + 63);
      if ((*(v11 + 63) & 0x80000000) == 0)
      {
        if (*(v11 + 63) > 5u)
        {
          if (v46 == 6)
          {
            if (*v89 == 1953393013 && *(v11 + 22) == 13366)
            {
              goto LABEL_143;
            }

            if (*v89 == 1953393013 && *(v11 + 22) == 12851)
            {
              goto LABEL_144;
            }

            if (*v89 != 1953393013 || *(v11 + 22) != 13873)
            {
LABEL_174:
              exception = __cxa_allocate_exception(0x10uLL);
              std::operator+<char>();
              v79 = std::string::append(&v102, ") .", 3uLL);
              v80 = *&v79->__r_.__value_.__l.__data_;
              __dst[0].__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
              *&__dst[0].__r_.__value_.__l.__data_ = v80;
              v79->__r_.__value_.__l.__size_ = 0;
              v79->__r_.__value_.__r.__words[2] = 0;
              v79->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, __dst);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
            }
          }

          else
          {
            if (v46 != 7)
            {
              goto LABEL_174;
            }

            if (*v89 == 1634692198 && *(v11 + 43) == 875983969)
            {
LABEL_143:
              v74 = 8;
              goto LABEL_164;
            }

            if (*v89 == 1634692198 && *(v11 + 43) == 842232929)
            {
LABEL_144:
              v74 = 4;
              goto LABEL_164;
            }

            if (*v89 != 1634692198 || *(v11 + 43) != 909210721)
            {
              goto LABEL_174;
            }
          }

LABEL_154:
          v74 = 2;
          goto LABEL_164;
        }

        v47 = v11 + 5;
        if (v46 != 4)
        {
          if (v46 != 5)
          {
            goto LABEL_174;
          }

          if (*v89 == 913600105 && *(v11 + 44) == 52)
          {
            goto LABEL_143;
          }

          if (*v89 == 863268457 && *(v11 + 44) == 50)
          {
            goto LABEL_144;
          }

          goto LABEL_134;
        }

        goto LABEL_162;
      }

      v50 = v11[6];
      if (v50 == 5)
      {
        v66 = *v89;
        if (**v89 == 913600105 && *(*v89 + 4) == 52)
        {
          goto LABEL_143;
        }

        v68 = *v66;
        v54 = v66[4];
        v55 = v68 == 863268457;
        v56 = 50;
      }

      else if (v50 == 6)
      {
        v63 = *v89;
        if (**v89 == 1953393013 && *(*v89 + 2) == 13366)
        {
          goto LABEL_143;
        }

        v65 = *v63;
        v54 = v63[2];
        v55 = v65 == 1953393013;
        v56 = 12851;
      }

      else
      {
        if (v50 != 7)
        {
          goto LABEL_121;
        }

        v51 = *v89;
        if (**v89 == 1634692198 && *(*v89 + 3) == 875983969)
        {
          goto LABEL_143;
        }

        v53 = *v51;
        v54 = *(v51 + 3);
        v55 = v53 == 1634692198;
        v56 = 842232929;
      }

      if (v55 && v54 == v56)
      {
        goto LABEL_144;
      }

LABEL_121:
      if (v11[6] == 7 && **v89 == 1634692198 && *(*v89 + 3) == 909210721)
      {
        goto LABEL_154;
      }

      if (v11[6] == 6)
      {
        if (**v89 == 1953393013 && *(*v89 + 2) == 13873)
        {
          goto LABEL_154;
        }

        if ((v46 & 0x80) == 0)
        {
          v47 = v11 + 5;
          if (v46 != 4)
          {
            if (v46 != 5)
            {
              goto LABEL_174;
            }

LABEL_134:
            if (*v89 == 829714025 && *(v11 + 44) == 54)
            {
              goto LABEL_154;
            }

LABEL_138:
            if (*v89 != 1953393013 || *(v11 + 44) != 56)
            {
              goto LABEL_174;
            }

            goto LABEL_163;
          }

          goto LABEL_162;
        }
      }

      if (v11[6] == 5)
      {
        if (**v89 == 829714025 && *(*v89 + 4) == 54)
        {
          goto LABEL_154;
        }

        if ((v46 & 0x80) == 0)
        {
          v47 = v11 + 5;
          if (v46 != 4)
          {
            if (v46 != 5)
            {
              goto LABEL_174;
            }

            goto LABEL_138;
          }

          goto LABEL_162;
        }
      }

      if (v11[6] != 5 || (**v89 == 1953393013 ? (v76 = *(*v89 + 4) == 56) : (v76 = 0), !v76))
      {
        if (v11[6] != 4)
        {
          goto LABEL_174;
        }

        v47 = *v89;
LABEL_162:
        if (*v47 != 947154537)
        {
          goto LABEL_174;
        }
      }

LABEL_163:
      v74 = 1;
LABEL_164:
      if (v11[13] - v11[12] != v74 * v11[11])
      {
        v77 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x25F894AD0](v77, "[OUDataLoader] mismatching data size; bin file might be corrupted.");
        __cxa_throw(v77, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (++v93 >= v87)
      {
        v87 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
        if (!v87)
        {
          break;
        }

        v93 = 0;
      }

      v6 = *v99;
    }
  }
}

void sub_25D22E10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::~__hash_table(a16);
  if (*(a17 + 23) < 0)
  {
    operator delete(*a17);
  }

  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,OUDataLoader::DataArray>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 12);
    if (v3)
    {
      *(__p + 13) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 8);
    if (v4)
    {
      *(__p + 9) = v4;
      operator delete(v4);
    }

    if (__p[63] < 0)
    {
      operator delete(*(__p + 5));
    }

    if (__p[39] < 0)
    {
      operator delete(*(__p + 2));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x25F894BC0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_25D22E75C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x25F894D60](v1);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_OUDataLoader_mm()
{
  v0 = objc_autoreleasePoolPush();
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];

  objc_autoreleasePoolPop(v0);
}

uint64_t std::vector<int>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void ou3dod::OU3DSparseSSDetector::createForEspressoCPU(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v35, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  v4 = v35;
  for (i = v36; v4 != i; ++v4)
  {
    *v4 = (v3 - 1 + *v4) / v3;
  }

  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  memset(v31, 0, sizeof(v31));
  std::string::__assign_external(v31, "sparse_voxelssd_cpu.espresso.net", 0x20uLL);
  v6 = qword_28155B600;
  if (!qword_28155B600)
  {
LABEL_36:
    for (j = qword_28155B5D8; j; j = *j)
    {
      v20 = (j + 16);
      v21 = j + 16;
      if (*(j + 39) < 0)
      {
        v21 = *v20;
      }

      v22 = *(v21 + 1);
      LODWORD(v25.__r_.__value_.__l.__data_) = -1;
      std::vector<int>::vector[abi:ne200100](&v29, 3uLL, &v25);
      v23 = v29;
      *v29 = v35[v22 - 48];
      if (*(j + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(j + 16), *(j + 24));
        v23 = v29;
      }

      else
      {
        *&v25.__r_.__value_.__l.__data_ = *v20;
        v25.__r_.__value_.__r.__words[2] = *(j + 32);
      }

      __p = 0;
      v27 = 0;
      v28 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v23, v30, (v30 - v23) >> 2);
      std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](&v33, &v25);
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }
    }

    [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  while (1)
  {
    v7 = (v6 + 16);
    v8 = *(v6 + 39);
    if (v8 < 0)
    {
      v11 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v8 != 13 || (*v11 == 0x765F657372617073 ? (v12 = *(v11 + 5) == 0x736C65786F765F65) : (v12 = 0), !v12))
      {
        v10 = v11 + 1;
        goto LABEL_17;
      }
    }

    else if (v8 != 13 || (*v7 == 0x765F657372617073 ? (v9 = *(v6 + 21) == 0x736C65786F765F65) : (v9 = 0), !v9))
    {
      v10 = (v6 + 17);
      v11 = (v6 + 16);
LABEL_17:
      v13 = *v10;
      v14 = *(v11 + v8 - 1);
      switch(v14)
      {
        case '1':
          v15 = v13 - 48;
          break;
        case 'r':
          v15 = v13 - 49;
          break;
        case '2':
          v15 = v13 - 47;
          break;
        default:
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x25F894AD0](exception, "[3DOD IS] unexpected post-script.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v16 = v15;
      v17 = 5;
      goto LABEL_24;
    }

    v16 = 0;
    v17 = 3;
LABEL_24:
    LODWORD(v25.__r_.__value_.__l.__data_) = -1;
    std::vector<int>::vector[abi:ne200100](&v29, v17, &v25);
    v18 = v29;
    *v29 = v35[v16];
    if (*(v6 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *(v6 + 16), *(v6 + 24));
      v18 = v29;
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = *v7;
      v25.__r_.__value_.__r.__words[2] = *(v6 + 32);
    }

    __p = 0;
    v27 = 0;
    v28 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v18, v30, (v30 - v18) >> 2);
    std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](&v31[24], &v25);
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    v6 = *v6;
    if (!v6)
    {
      goto LABEL_36;
    }
  }
}

void sub_25D22ED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24)
{
  *a10 = 0;
  (*(*v25 + 8))(v25, a2, a3, a4, a5, a6, a7, a8);

  OUEspressoInference::ModelInfo::~ModelInfo(&a24);
  v28 = *(v26 - 112);
  if (v28)
  {
    *(v26 - 104) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__emplace_back_slow_path<OUEspressoInference::ModelInfo::BlobInfo>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(a2 + 24) = 0uLL;
    *(a2 + 5) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void OUEspressoInference::ModelInfo::BlobInfo::~BlobInfo(OUEspressoInference::ModelInfo::BlobInfo *this)
{
  v2 = *(this + 3);
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

void ou3dod::OU3DSparseSSDetector::createForEspressoANETunneled()
{
  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  std::string::__assign_external(v8, "sparse_voxelssd_ane.espresso.net", 0x20uLL);
  for (i = qword_28155B600; i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v4, *(i + 16), *(i + 24));
    }

    else
    {
      v4 = *(i + 16);
    }

    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](&v8[1], &v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  for (j = qword_28155B5D8; j; j = *j)
  {
    if (*(j + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v4, *(j + 16), *(j + 24));
    }

    else
    {
      v4 = *(j + 16);
    }

    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](&v9, &v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_25D22F430(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (__p)
  {
    ou3dod::OU3DAnchorFreeDetector::createForOnline(__p);
  }

  MEMORY[0x25F894DE0](v35, 0x10B1C40E4B8FA47, a3, a4, a5, a6, a7, a8);

  OUEspressoInference::ModelInfo::~ModelInfo(&a34);
  _Unwind_Resume(a1);
}

uint64_t ou3dod::OU3DSparseSSDetector::OU3DSparseSSDetector(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v5 = ou3dod::OU3DODInterface::OU3DODInterface(a1, a2);
  *v5 = &unk_286EBC398;
  v6 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  *(v5 + 9) = a3[6];
  v9 = a3[1];
  v10 = a3[2];
  *(v5 + 3) = *a3;
  *(v5 + 4) = v9;
  *(v5 + 7) = v7;
  *(v5 + 8) = v8;
  *(v5 + 5) = v10;
  *(v5 + 6) = v6;
  if (*(v5 + 152) == 1)
  {
    v11 = *(a1 + 48) + 3;
  }

  else
  {
    v11 = 3;
  }

  *(a1 + 160) = v11;
  _ZNSt3__16vectorINS0_IDv3_iNS_9allocatorIS1_EEEENS2_IS4_EEEC2B8ne200100Em((a1 + 168), (*(a1 + 116) + 1));
  *(a1 + 192) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 248) = 1065353216;
  std::vector<std::span<float,18446744073709551615ul>>::vector[abi:ne200100]((a1 + 256), (*(a1 + 116) + 1));
  std::vector<std::span<float,18446744073709551615ul>>::vector[abi:ne200100]((a1 + 280), (*(a1 + 116) + 1));
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 464) = 1065353216;
  *(a1 + 472) = 1;
  v12 = *(a1 + 80);
  if (*&v12 != COERCE_FLOAT(HIDWORD(*(a1 + 80))) || *&v12 != *(&v12 + 2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD IS] Expect the voxel size is identical across all three dimensions.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_25D22F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(v3 + 432);

  v5 = *(v3 + 400);
  if (v5)
  {
    *(v3 + 408) = v5;
    operator delete(v5);
  }

  v6 = *(v3 + 376);
  if (v6)
  {
    *(v3 + 384) = v6;
    operator delete(v6);
  }

  v7 = *(v3 + 352);
  if (v7)
  {
    *(v3 + 360) = v7;
    operator delete(v7);
  }

  v8 = *(v3 + 328);
  if (v8)
  {
    *(v3 + 336) = v8;
    operator delete(v8);
  }

  v9 = *(v3 + 304);
  if (v9)
  {
    *(v3 + 312) = v9;
    operator delete(v9);
  }

  v10 = *(v3 + 280);
  if (v10)
  {
    *(v3 + 288) = v10;
    operator delete(v10);
  }

  v11 = *(a3 + 64);
  if (v11)
  {
    *(v3 + 264) = v11;
    operator delete(v11);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(a3 + 24);
  v12 = *a3;
  if (*a3)
  {
    *(v3 + 200) = v12;
    operator delete(v12);
  }

  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  ou3dod::OU3DODInterface::~OU3DODInterface(v3);
  _Unwind_Resume(a1);
}

void ou3dod::OU3DSparseSSDetector::Preprocess(ou3dod::OU3DSparseSSDetector *this, OUPointCloudCpp *a2)
{
  IsValid = OUPointCloudCpp::IsValid(a2);
  if (IsValid)
  {
    ou3dod::OU3DSparseSSDetector::VoxelizePointCloud(this, a2, *(this + 20));
  }

  v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding(IsValid, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    ou3dod::OU3DSparseSSDetector::Preprocess(v6);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, &unk_25D2878C2);
  __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
}

void ou3dod::OU3DSparseSSDetector::VoxelizePointCloud(ou3dod::OU3DSparseSSDetector *this, const OUPointCloudCpp *a2, float a3)
{
  v42 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "sparse_voxels");
  v6 = **(this + 24);
  memset(v36, 0, sizeof(v36));
  v37 = 1065353216;
  v7 = *(this + 21);
  v7[1] = *v7;
  memset(&v35, 0, sizeof(v35));
  std::vector<int>::reserve(&v35, v6);
  v10 = *a2;
  if (*(a2 + 1) != *a2)
  {
    v11 = 0;
    do
    {
      v12 = 0;
      v13 = *(a2 + 3);
      v14 = *(v10 + 16 * v11);
      while (1)
      {
        v34[2] = v14;
        if (v12 > 2)
        {
          break;
        }

        ++v12;
      }

      v15 = 0;
      v16 = *(v13 + 16 * v11);
      while (1)
      {
        v34[1] = v16;
        if (v15 > 2)
        {
          break;
        }

        ++v15;
      }

      v17 = 0;
      *buf = 0;
      *&buf[8] = 0;
      v18 = 0uLL;
      do
      {
        v19 = vcvtms_s32_f32(*(v13 + 16 * v11 + 4 * (v17 & 3)) / a3);
        v34[0] = v18;
        *(v34 & 0xFFFFFFFFFFFFFFF3 | (4 * (v17 & 3))) = v19;
        v18 = v34[0];
        *&buf[8] = DWORD2(v34[0]);
        *buf = *&v34[0];
        ++v17;
      }

      while (v17 != 3);
      v8 = _ZNKSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_21__hash_const_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(v36, buf);
      if (!v8)
      {
        _ZNSt3__112__hash_tableIDv3_iN5utils8SimdHashIS1_EENS2_9SimdEqualIS1_EENS_9allocatorIS1_EEE25__emplace_unique_key_argsIS1_JRKS1_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS1_PvEEEEbEERKT_DpOT0_(v36, buf, buf);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v7, buf);
        end = v35.__end_;
        if (v35.__end_ >= v35.__end_cap_.__value_)
        {
          begin = v35.__begin_;
          v23 = v35.__end_ - v35.__begin_;
          v24 = v35.__end_ - v35.__begin_;
          v25 = v24 + 1;
          if ((v24 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v26 = v35.__end_cap_.__value_ - v35.__begin_;
          if ((v35.__end_cap_.__value_ - v35.__begin_) >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
          v28 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v28 = v25;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v35, v28);
          }

          *(4 * v24) = v11;
          v21 = (4 * v24 + 4);
          memcpy(0, begin, v23);
          v8 = v35.__begin_;
          v35.__begin_ = 0;
          v35.__end_ = v21;
          v35.__end_cap_.__value_ = 0;
          if (v8)
          {
            operator delete(v8);
          }
        }

        else
        {
          *v35.__end_ = v11;
          v21 = end + 1;
        }

        v35.__end_ = v21;
      }

      v10 = *a2;
      ++v11;
    }

    while (v11 < (*(a2 + 1) - *a2) >> 4);
  }

  v29 = (v7[1] - *v7) >> 4;
  if (v29 > v6)
  {
    v30 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v8, v9);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "SparseSSD";
      *&buf[12] = 2048;
      *&buf[14] = v29;
      v40 = 1024;
      v41 = v6;
      _os_log_impl(&dword_25D1DB000, v30, OS_LOG_TYPE_INFO, "[3DOD][%s] Voxel count %lu > capacity %d, triggers resampling; this would cause regression to detection and/or segmentation.", buf, 0x1Cu);
    }

    utils::Resample(buf, v29, v6);
    v31 = *buf;
    if (*&buf[8] != *buf)
    {
      v32 = 0;
      do
      {
        v33 = *(v31 + 8 * v32);
        *(*v7 + 16 * v32) = *(*v7 + 16 * v33);
        v35.__begin_[v32++] = v35.__begin_[v33];
        v31 = *buf;
      }

      while (v32 < (*&buf[8] - *buf) >> 3);
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v7, v6);
    std::vector<float>::resize(&v35, v6);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  OUDnnInferenceInterface::GetInputSpan<float,void>();
}

void sub_25D22FDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a19);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void ou3dod::OU3DSparseSSDetector::ComputeNeighborMaps(ou3dod::OU3DSparseSSDetector *this, unsigned int a2, double a3, int32x4_t a4)
{
  v32[0] = this;
  if (a2)
  {
    memset(v30, 0, sizeof(v30));
    v31 = 1065353216;
    v4 = *(this + 21);
    v5 = (v4 + 24);
    v4[2].i64[0] = v4[1].i64[1];
    if (v4->i64[1] != v4->i64[0])
    {
      v6 = 0;
      do
      {
        v7 = 0;
        LODWORD(v28[1]) = 0;
        v28[0] = 0;
        v8 = *(v4->i64[0] + 16 * v6);
        v9 = 0uLL;
        do
        {
          v22 = v8;
          v10 = vcvtms_s32_f32(*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) * 0.5);
          v23 = v9;
          *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) = v10;
          v11 = v23;
          HIDWORD(v11) = HIDWORD(v9);
          ++v7;
          v9 = v11;
        }

        while (v7 != 3);
        *v28 = v23;
        if (!_ZNKSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_21__hash_const_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(v30, v28))
        {
          _ZNSt3__112__hash_tableIDv3_iN5utils8SimdHashIS1_EENS2_9SimdEqualIS1_EENS_9allocatorIS1_EEE25__emplace_unique_key_argsIS1_JRKS1_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS1_PvEEEEbEERKT_DpOT0_(v30, v28, v28);
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v5, v28);
        }

        ++v6;
      }

      while (v6 < (v4->i64[1] - v4->i64[0]) >> 4);
    }

    std::to_string(&v24, 0);
    v13 = std::string::insert(&v24, 0, "l", 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v25, "_k3_s1", 6uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    ou3dod::OU3DSparseSSDetector::ComputeNeighborMaps::$_0::operator()(v32, &__p, v28, v4->i64, 1, 3u, 0);
  }

  v17 = *(this + 21);
  std::to_string(&__p, 0);
  v18 = std::string::insert(&__p, 0, "l", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v27, "_k3_s1", 6uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v29 = v20->__r_.__value_.__r.__words[2];
  *v28 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  ou3dod::OU3DSparseSSDetector::ComputeNeighborMaps::$_0::operator()(v32, v28, v30, v17->i64, 1, 3u, 0);
}

void sub_25D2304E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v52 - 160);
  _Unwind_Resume(a1);
}

int32x4_t *anonymous namespace::NeighborMapHelper::InitCoordToIndexMap@<X0>(int32x4_t *result@<X0>, __int32 a2@<W1>, uint64_t a3@<X8>, int32x4_t a4@<Q1>)
{
  v5.i32[1] = 0;
  v5.i64[1] = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = result->i64[1] - result->i64[0];
  if ((v6 >> 4) >= 1)
  {
    v7 = result;
    v8 = 0;
    v5.i32[0] = 1;
    a4.i32[0] = a2;
    v9 = vdupq_lane_s32(*&vceqq_s32(a4, v5), 0);
    v10.i64[0] = 0x100000001;
    v10.i64[1] = 0x100000001;
    v12 = vbicq_s8(v10, v9);
    v11 = (v6 >> 4) & 0x7FFFFFFF;
    do
    {
      v13 = vshlq_u32(*(v7->i64[0] + 16 * v8), v12);
      v14 = &v13;
      result = _ZNSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS2_JRKNS_21piecewise_construct_tENS_5tupleIJOS2_EEENSK_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEEbEERKT_DpOT0_(a3, &v13, &std::piecewise_construct, &v14);
      result[2].i32[0] = v8++;
    }

    while (v11 != v8);
  }

  return result;
}

void ou3dod::OU3DSparseSSDetector::ComputeNeighborMaps(unsigned int)::$_0::operator()(uint64_t *a1, float *a2, uint64_t a3, uint64_t *a4, int a5, unsigned int a6, char a7)
{
  v12 = *a1;
  v43 = 0;
  v44 = &v43;
  v45 = 0x4812000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = "";
  v13 = (a6 * a6 * a6 * ((a4[1] - *a4) >> 4));
  LODWORD(block[0]) = -1;
  std::vector<int>::vector[abi:ne200100](v49, v13, block);
  std::vector<int>::vector[abi:ne200100](&v41, a6);
  v14 = v41;
  if (a6 >= 1)
  {
    v15 = (a6 + 3) & 0xFFFFFFFC;
    v16 = vdupq_n_s64(a6 - 1);
    v17 = xmmword_25D277E50;
    v18 = xmmword_25D277E60;
    v19 = v41 + 8;
    v20 = -1;
    v21 = vdupq_n_s64(4uLL);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v16, v18));
      if (vuzp1_s16(v22, *v16.i8).u8[0])
      {
        *(v19 - 2) = v20;
      }

      if (vuzp1_s16(v22, *&v16).i8[2])
      {
        *(v19 - 1) = v20 + 1;
      }

      if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
      {
        *v19 = v20 + 2;
        v19[1] = v20 + 3;
      }

      v17 = vaddq_s64(v17, v21);
      v18 = vaddq_s64(v18, v21);
      v20 += 4;
      v19 += 4;
      v15 -= 4;
    }

    while (v15);
  }

  v23 = a3;
  v30 = a2;
  v24 = dispatch_get_global_queue(0, 0);
  v26 = *a4;
  v25 = a4[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12_GLOBAL__N_117NeighborMapHelper7ComputeERKNSt3__113unordered_mapIDv3_iiN5utils8SimdHashIS3_EENS4_9SimdEqualIS3_EENS1_9allocatorINS1_4pairIKS3_iEEEEEERKNS1_6vectorIS3_NS9_IS3_EEEEjib_block_invoke;
  block[3] = &unk_286EBC3D8;
  v40 = a7;
  v38 = a6;
  v39 = a5;
  block[5] = a4;
  __p = 0;
  v35 = 0;
  v36 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v14, v42, (v42 - v14) >> 2);
  v37 = v23;
  block[4] = &v43;
  dispatch_apply((v25 - v26) >> 4, v24, block);
  v32 = 0;
  v31 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v31, v44[6], v44[7], (v44[7] - v44[6]) >> 2);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  _Block_object_dispose(&v43, 8);
  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }

  block[0] = v30;
  v27 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v12 + 216), v30, &std::piecewise_construct, block, &v43);
  v28 = v27[5];
  if (v28)
  {
    v27[6] = v28;
    operator delete(v28);
    v27[5] = 0;
    v27[6] = 0;
    v27[7] = 0;
  }

  *(v27 + 5) = v31;
  v27[7] = v32;
  OUDnnInferenceInterface::GetInputSpan<float,void>();
}

void ou3dod::OU3DSparseSSDetector::ParseNetOutput(ou3dod::OU3DSparseSSDetector *this)
{
  v2 = *(this + 39);
  if (v2 > 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = qword_25D278DE0[v2];
  }

  v3 = *(this + 29);
  if ((v3 & 0x80000000) == 0)
  {
    std::to_string(&v19, v3);
    v4 = std::string::insert(&v19, 0, "l", 1uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v20, "_", 1uLL);
    __p = *v6;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&v20, size + 7);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v20;
    }

    else
    {
      v9 = v20.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if (v7 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v9, p_p, size);
    }

    strcpy(v9 + size, "preds_1");
    OUDnnInferenceInterface::GetOutputSpan<float,void>();
  }

  *(this + 39) = *(this + 38);
  *(this + 42) = *(this + 41);
  *(this + 45) = *(this + 44);
  *(this + 48) = *(this + 47);
  std::vector<box3d>::reserve(this + 38, 0);
  std::vector<int>::reserve((this + 328), 0);
  std::vector<int>::reserve((this + 352), 0);
  std::vector<box3d>::reserve(this + 47, (*(*(this + 21) + 8) - **(this + 21)) >> 4);
  __p.__r_.__value_.__r.__words[0] = this;
  __p.__r_.__value_.__l.__size_ = v18;
  v11 = *(this + 29);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = *(this + 20);
    v13.n128_f64[0] = exp2(v11) * v12;
    v13.n128_f32[0] = v13.n128_f64[0];
    if (v11)
    {
      v14 = v11 - 1;
      v15 = 16 * v11;
      v16 = 24 * v11;
      do
      {
        ou3dod::OU3DSparseSSDetector::ParseNetOutput(void)::$_0::operator()(&__p, this + 304, this + 41, (*(this + 21) + v16), (*(this + 32) + v15), v13);
        std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 44, *(this + 45), *(*(this + 35) + v15), (*(*(this + 35) + v15) + 4 * *(*(this + 35) + v15 + 8)), *(*(this + 35) + v15 + 8));
        v17 = *(this + 20);
        v13.n128_f64[0] = exp2(v14) * v17;
        v13.n128_f32[0] = v13.n128_f64[0];
        --v14;
        v16 -= 24;
        v15 -= 16;
      }

      while (v15);
    }

    ou3dod::OU3DSparseSSDetector::ParseNetOutput(void)::$_0::operator()(&__p, this + 376, 0, *(this + 21), *(this + 32), v13);
  }
}

void sub_25D231110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<box3d>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 7)
  {
    if (!(a2 >> 57))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(a1, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

void ou3dod::OU3DSparseSSDetector::ParseNetOutput(void)::$_0::operator()(uint64_t *a1, uint64_t a2, const void **a3, uint64_t *a4, void *a5, __n128 a6)
{
  v91 = *MEMORY[0x277D85DE8];
  v6 = *a4;
  if (a4[1] != *a4)
  {
    v10 = 0;
    v11 = 0;
    v70 = *a1;
    do
    {
      v74 = *(v6 + 16 * v10);
      v12 = (*a5 + 4 * v11);
      v13 = *(v70 + 156);
      v14 = expf(*v12);
      v15 = expf(v12[1]);
      v16 = expf(v12[2]);
      v17 = expf(v12[3]);
      v18 = expf(v12[4]);
      v19 = expf(v12[5]);
      if (v13 == 2)
      {
        v21 = 0;
        v22 = -1;
        v23 = -3.4028e38;
        do
        {
          if (v12[v21 + 6] > v23)
          {
            v23 = v12[v21 + 6];
            v22 = v21;
          }

          ++v21;
        }

        while (v21 != 12);
        v24 = v22;
        v25 = expf(v12[v22 + 18]);
        v20 = (v25 + (v24 * 0.5236)) - floor((v25 + (v24 * 0.5236)) / 6.28318531) * 6.28318531;
      }

      else
      {
        v20 = 0.0;
        if (v13 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::invalid_argument::invalid_argument[abi:ne200100](exception, "[OU3D IS] Not implemented.");
          __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
        }
      }

      v26 = 0;
      v27.i32[3] = a6.n128_i32[3];
      v27.f32[0] = v15 - v14;
      v27.f32[1] = v17 - v16;
      v27.f32[2] = v19 - v18;
      v30.i64[0] = 0x3F0000003F000000;
      v30.i64[1] = 0x3F0000003F000000;
      v29 = vmulq_f32(v27, v30);
      v28 = vaddq_f32(vmulq_n_f32(vcvtq_f32_s32(v74), a6.n128_f32[0]), v29);
      v29.f32[0] = (v14 + v15) * 0.5;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      *&v83 = -((v18 + v19) * 0.5);
      *(&v83 + 1) = (v18 + v19) * 0.5;
      v30.f32[0] = -v29.f32[0];
      v31 = v30;
      v32 = v29;
      v33 = &v77;
      do
      {
        v34 = *(&v83 + v26);
        v31.f32[1] = -((v16 + v17) * 0.5);
        v35 = v31;
        v35.i32[2] = v34;
        v30.f32[1] = (v16 + v17) * 0.5;
        v36 = v30;
        v36.i32[2] = v34;
        v33[-2] = vaddq_f32(v28, v35);
        v33[-1] = vaddq_f32(v28, v36);
        v32.f32[1] = v30.f32[1];
        v37 = v32;
        v37.i32[2] = v34;
        v29.f32[1] = v31.f32[1];
        v38 = v29;
        v38.i32[2] = v34;
        v26 += 4;
        *v33 = vaddq_f32(v28, v37);
        v33[1] = vaddq_f32(v28, v38);
        v33 += 4;
      }

      while (v26 != 8);
      v87 = v79;
      v88 = v80;
      v89 = v81;
      v90 = v82;
      v83 = v75;
      v84 = v76;
      v85 = v77;
      v86 = v78;
      v39 = *(a2 + 8);
      v40 = *(a2 + 16);
      if (v39 >= v40)
      {
        v46 = (v39 - *a2) >> 7;
        v47 = v46 + 1;
        if ((v46 + 1) >> 57)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v48 = v40 - *a2;
        if (v48 >> 6 > v47)
        {
          v47 = v48 >> 6;
        }

        if (v48 >= 0x7FFFFFFFFFFFFF80)
        {
          v49 = 0x1FFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(a2, v49);
        }

        v50 = (v46 << 7);
        v51 = v88;
        v50[4] = v87;
        v50[5] = v51;
        v52 = v90;
        v50[6] = v89;
        v50[7] = v52;
        v53 = v84;
        *v50 = v83;
        v50[1] = v53;
        v54 = v86;
        v50[2] = v85;
        v50[3] = v54;
        v45 = (v46 << 7) + 128;
        v55 = *(a2 + 8) - *a2;
        v56 = v50 - v55;
        memcpy(v50 - v55, *a2, v55);
        v57 = *a2;
        *a2 = v56;
        *(a2 + 8) = v45;
        *(a2 + 16) = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      else
      {
        v41 = v88;
        v39[4] = v87;
        v39[5] = v41;
        v42 = v90;
        v39[6] = v89;
        v39[7] = v42;
        v43 = v84;
        *v39 = v83;
        v39[1] = v43;
        v44 = v86;
        v39[2] = v85;
        v39[3] = v44;
        v45 = (v39 + 8);
      }

      *(a2 + 8) = v45;
      if (a3)
      {
        v59 = a3[1];
        v58 = a3[2];
        if (v59 >= v58)
        {
          v61 = *a3;
          v62 = v59 - *a3;
          v63 = v62 >> 2;
          v64 = (v62 >> 2) + 1;
          if (v64 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v65 = v58 - v61;
          if (v65 >> 1 > v64)
          {
            v64 = v65 >> 1;
          }

          v66 = v65 >= 0x7FFFFFFFFFFFFFFCLL;
          v67 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v66)
          {
            v67 = v64;
          }

          if (v67)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v67);
          }

          *(4 * v63) = v20;
          v60 = (4 * v63 + 4);
          memcpy(0, v61, v62);
          v68 = *a3;
          *a3 = 0;
          a3[1] = v60;
          a3[2] = 0;
          if (v68)
          {
            operator delete(v68);
          }
        }

        else
        {
          *v59 = v20;
          v60 = v59 + 1;
        }

        a3[1] = v60;
      }

      ++v10;
      v11 += a1[1];
      v6 = *a4;
    }

    while (v10 < (a4[1] - *a4) >> 4);
  }
}

void ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(ou3dod::OU3DSparseSSDetector *this)
{
  v143 = *MEMORY[0x277D85DE8];
  v2 = *(this + 33);
  v3 = *(this + 34);
  v4 = (*(this + 39) - *(this + 38)) >> 7;
  LODWORD(__p[0]) = 0;
  std::vector<int>::vector[abi:ne200100](&v123, v4, __p);
  v6 = (v2 - v3);
  v7 = *(this + 39) - *(this + 38);
  v8 = v7 >> 7;
  if ((v7 >> 7) >= 1)
  {
    v9 = 0;
    v5 = vdupq_n_s64(((v7 >> 7) & 0x7FFFFFFF) - 1);
    v10 = xmmword_25D277E50;
    v11 = xmmword_25D277E60;
    v12 = v123.__begin_ + 2;
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v5, v11));
      if (vuzp1_s16(v14, v5.n128_u64[0]).u8[0])
      {
        *(v12 - 2) = v9;
      }

      if (vuzp1_s16(v14, *&v5).i8[2])
      {
        *(v12 - 1) = v9 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(*&v5, *&v10))).i32[1])
      {
        *v12 = v9 + 2;
        v12[1] = v9 + 3;
      }

      v9 += 4;
      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
    }

    while (((v8 + 3) & 0xFFFFFFFC) != v9);
  }

  if (v8 > *(this + 32))
  {
    LODWORD(v140) = -8388609;
    std::vector<float>::vector[abi:ne200100](__p, v8, &v140);
    v15 = *(this + 39) - *(this + 38);
    if ((v15 >> 7) >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = __p[0];
      if (v6 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = (v2 - v3);
      }

      v20 = (v15 >> 7) & 0x7FFFFFFF;
      do
      {
        if (v2 != v3)
        {
          v21 = v18[v16];
          v22 = (*(this + 44) + 4 * v17);
          v17 += v19;
          v23 = v19;
          do
          {
            v24 = *v22;
            if (v21 < *v22)
            {
              v18[v16] = v24;
              v21 = v24;
            }

            ++v22;
            --v23;
          }

          while (v23);
        }

        ++v16;
      }

      while (v16 != v20);
    }

    v25 = *(this + 32);
    begin = v123.__begin_;
    end = v123.__end_;
    v140 = __p;
    if (v25)
    {
      v28 = &v123.__begin_[v25];
      if (v25 != 1)
      {
        v29 = (v25 - 2) >> 1;
        v30 = &v123.__begin_[v29];
        v31 = v29 + 1;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_0 &,std::__wrap_iter<int *>>(begin, &v140, v25, v30--);
          --v31;
        }

        while (v31);
      }

      if (v28 != end)
      {
        v32 = &begin[v25];
        do
        {
          v33 = *v32;
          v34 = *begin;
          if (*(__p[0] + v33) > *(__p[0] + v34))
          {
            *v32 = v34;
            *begin = v33;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_0 &,std::__wrap_iter<int *>>(begin, &v140, v25, begin);
          }

          ++v32;
        }

        while (v32 != end);
      }

      if (v25 != 1)
      {
        do
        {
          v35 = 0;
          v36 = *begin;
          v37 = v140;
          v38 = begin;
          do
          {
            v39 = v38;
            v38 += v35 + 1;
            v40 = 2 * v35;
            v35 = (2 * v35) | 1;
            v41 = v40 + 2;
            if (v41 < v25 && *(*v37 + *v38) > *(*v37 + v38[1]))
            {
              ++v38;
              v35 = v41;
            }

            *v39 = *v38;
          }

          while (v35 <= ((v25 - 2) >> 1));
          if (v38 == --v28)
          {
            *v38 = v36;
          }

          else
          {
            *v38 = *v28;
            *v28 = v36;
            v42 = (v38 - begin + 4) >> 2;
            v43 = v42 < 2;
            v44 = v42 - 2;
            if (!v43)
            {
              v45 = v44 >> 1;
              v46 = &begin[v45];
              v47 = *v46;
              v48 = *v37;
              v49 = *v38;
              v50 = v48[v49];
              if (v48[v47] > v50)
              {
                do
                {
                  *v38 = v47;
                  v38 = v46;
                  if (!v45)
                  {
                    break;
                  }

                  v45 = (v45 - 1) >> 1;
                  v46 = &begin[v45];
                  v47 = *v46;
                }

                while (v48[v47] > v50);
                *v38 = v49;
              }
            }
          }

          v43 = v25-- <= 2;
        }

        while (!v43);
      }
    }

    std::vector<float>::resize(&v123, *(this + 32));
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v121 = 0;
  v122 = 0uLL;
  if (v6 < 1)
  {
    v91 = 0;
    v90 = 0;
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      v119 = 0;
      v120 = 0uLL;
      v52 = v123.__begin_;
      v53 = v123.__end_;
      if (v123.__begin_ == v123.__end_)
      {
        v67 = 0;
      }

      else
      {
        v54 = 0;
        do
        {
          v55 = *v52;
          v56 = *(*(this + 44) + 4 * v55 * v6 + 4 * i);
          if (v56 > *(this + 35))
          {
            v57 = (*(this + 38) + (v55 << 7));
            v128 = v57[4];
            v129 = v57[5];
            v130 = v57[6];
            v131 = v57[7];
            *__p = *v57;
            v125 = v57[1];
            v126 = v57[2];
            v127 = v57[3];
            v58 = *(*(this + 41) + 4 * v55);
            if (v54 >= *(&v120 + 1))
            {
              v59 = 0x8E38E38E38E38E39 * ((v54 - v119) >> 4);
              v60 = v59 + 1;
              if ((v59 + 1) > 0x1C71C71C71C71C7)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              if (0x1C71C71C71C71C72 * ((*(&v120 + 1) - v119) >> 4) > v60)
              {
                v60 = 0x1C71C71C71C71C72 * ((*(&v120 + 1) - v119) >> 4);
              }

              if (0x8E38E38E38E38E39 * ((*(&v120 + 1) - v119) >> 4) >= 0xE38E38E38E38E3)
              {
                v61 = 0x1C71C71C71C71C7;
              }

              else
              {
                v61 = v60;
              }

              std::__split_buffer<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore,std::allocator<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore> &>::__split_buffer(&v140, v61, v59, &v119);
              v62 = v142;
              *(v142 + 64) = v128;
              *(v62 + 80) = v129;
              *(v62 + 96) = v130;
              *(v62 + 112) = v131;
              *v62 = *__p;
              *(v62 + 16) = v125;
              *(v62 + 32) = v126;
              *(v62 + 48) = v127;
              *(v62 + 128) = v58;
              *(v62 + 132) = i;
              *(v62 + 136) = v56;
              *&v142 = v62 + 144;
              v63 = v141 - (v120 - v119);
              memcpy(v63, v119, v120 - v119);
              v64 = v119;
              v65 = *(&v120 + 1);
              v119 = v63;
              v66 = v142;
              v120 = v142;
              *&v142 = v64;
              *(&v142 + 1) = v65;
              v140 = v64;
              v141 = v64;
              if (v64)
              {
                v115 = v66;
                operator delete(v64);
                v66 = v115;
              }

              v54 = v66;
            }

            else
            {
              memmove(v54, v57, 0x80uLL);
              *(v54 + 128) = v58;
              *(v54 + 132) = i;
              *(v54 + 136) = v56;
              v54 += 144;
            }

            *&v120 = v54;
          }

          ++v52;
        }

        while (v52 != v53);
        v67 = 954437177 * ((v54 - v119) >> 4);
      }

      __p[0] = &unk_286EBC418;
      __p[1] = &v119;
      v125.n128_u64[1] = __p;
      v140 = &unk_286EBC498;
      v141 = &v119;
      *(&v142 + 1) = &v140;
      NonMaximumSuppression(__p, v67, &v140, &v117, *(this + 36));
      std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v140);
      std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](__p);
      v68 = v117;
      v69 = v118;
      if (v117 != v118)
      {
        v70 = v122.n128_u64[0];
        do
        {
          v71 = (v119 + 144 * *v68);
          if (v70 >= v122.n128_u64[1])
          {
            v77 = 0x8E38E38E38E38E39 * ((v70 - v121) >> 4);
            v78 = v77 + 1;
            if ((v77 + 1) > 0x1C71C71C71C71C7)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            if (0x1C71C71C71C71C72 * ((v122.n128_u64[1] - v121) >> 4) > v78)
            {
              v78 = 0x1C71C71C71C71C72 * ((v122.n128_u64[1] - v121) >> 4);
            }

            if (0x8E38E38E38E38E39 * ((v122.n128_u64[1] - v121) >> 4) >= 0xE38E38E38E38E3)
            {
              v79 = 0x1C71C71C71C71C7;
            }

            else
            {
              v79 = v78;
            }

            std::__split_buffer<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore,std::allocator<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore> &>::__split_buffer(__p, v79, v77, &v121);
            v80 = v125.n128_u64[0];
            *v125.n128_u64[0] = *v71;
            v81 = v71[4];
            v83 = v71[1];
            v82 = v71[2];
            v80[3] = v71[3];
            v80[4] = v81;
            v80[1] = v83;
            v80[2] = v82;
            v84 = v71[8];
            v86 = v71[5];
            v85 = v71[6];
            v80[7] = v71[7];
            v80[8] = v84;
            v80[5] = v86;
            v80[6] = v85;
            v125.n128_u64[0] = (v80 + 9);
            v87 = __p[1] - (v122.n128_u64[0] - v121);
            memcpy(v87, v121, v122.n128_u64[0] - v121);
            v88 = v121;
            v89 = v122.n128_u64[1];
            v121 = v87;
            v5 = v125;
            v122 = v125;
            v125.n128_u64[0] = v88;
            v125.n128_u64[1] = v89;
            __p[0] = v88;
            __p[1] = v88;
            if (v88)
            {
              v116 = v5;
              operator delete(v88);
              v5 = v116;
            }

            v70 = v5.n128_u64[0];
          }

          else
          {
            *v70 = *v71;
            v72 = v71[1];
            v73 = v71[2];
            v74 = v71[4];
            *(v70 + 3) = v71[3];
            *(v70 + 4) = v74;
            *(v70 + 1) = v72;
            *(v70 + 2) = v73;
            v5 = v71[5];
            v75 = v71[6];
            v76 = v71[8];
            *(v70 + 7) = v71[7];
            *(v70 + 8) = v76;
            *(v70 + 5) = v5;
            *(v70 + 6) = v75;
            v70 += 144;
          }

          v122.n128_u64[0] = v70;
          ++v68;
        }

        while (v68 != v69);
        v68 = v117;
      }

      if (v68)
      {
        v118 = v68;
        operator delete(v68);
      }

      if (v119)
      {
        *&v120 = v119;
        operator delete(v119);
      }
    }

    v90 = v121;
    v91 = v122.n128_u64[0];
  }

  v92 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v91 - v90) >> 4));
  if (v91 == v90)
  {
    v93 = 0;
  }

  else
  {
    v93 = v92;
  }

  std::__introsort<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,false>(v90, v91, v93, 1, v5);
  if (0x8E38E38E38E38E39 * ((v122.n128_u64[0] - v121) >> 4) >= *(this + 31))
  {
    v94 = *(this + 31);
  }

  else
  {
    v94 = 0x8E38E38E38E38E39 * ((v122.n128_u64[0] - v121) >> 4);
  }

  std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](this + 8, *(this + 1));
  std::vector<OUBox3d>::reserve(this + 1, v94);
  std::vector<float>::resize((this + 400), v94);
  v95 = v121;
  if (v94)
  {
    v96 = 0;
    v97 = 0;
    v98 = 4 * v94;
    do
    {
      v99 = &v95[v96];
      v100 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(kSparseSSDObjectLabels, &v95[v96 + 132]);
      if (!v100)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v101 = *(v121 + v96 + 136);
      v102 = [MEMORY[0x277CCAD78] UUID];
      LODWORD(v119) = 0;
      std::vector<float>::vector[abi:ne200100](&v140, 0x15uLL, &v119);
      if (*(this + 473))
      {
        v103 = @"online";
      }

      else
      {
        v103 = @"offline";
      }

      OUBox3d::OUBox3d(__p, v99, v100 + 3, v102, &v140, v103, v101);
      v104 = *(this + 2);
      if (v104 >= *(this + 3))
      {
        v114 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(this + 8, __p);
      }

      else
      {
        v105 = *__p;
        v106 = v125;
        v107 = v127;
        *(v104 + 32) = v126;
        *(v104 + 48) = v107;
        *v104 = v105;
        *(v104 + 16) = v106;
        v108 = v128;
        v109 = v129;
        v110 = v131;
        *(v104 + 96) = v130;
        *(v104 + 112) = v110;
        *(v104 + 64) = v108;
        *(v104 + 80) = v109;
        v111 = v132;
        v132 = 0;
        *(v104 + 128) = v111;
        *(v104 + 136) = v133;
        v112 = v134;
        v134 = 0u;
        *(v104 + 176) = 0;
        *(v104 + 144) = v112;
        *(v104 + 160) = 0u;
        *(v104 + 160) = *v135;
        *(v104 + 176) = v136;
        *v135 = 0u;
        v136 = 0;
        *(v104 + 184) = v137[0];
        *(v104 + 192) = *&v137[1];
        memset(v137, 0, sizeof(v137));
        v113 = v138;
        v138 = 0;
        *(v104 + 208) = v113;
        *(v104 + 216) = v139;
        v114 = v104 + 224;
        *(this + 2) = v104 + 224;
      }

      *(this + 2) = v114;

      if (v137[0])
      {
        operator delete(v137[0]);
      }

      if (v135[0])
      {
        v135[1] = v135[0];
        operator delete(v135[0]);
      }

      if (v140)
      {
        v141 = v140;
        operator delete(v140);
      }

      v95 = v121;
      *(*(this + 50) + v97) = *(v121 + v96 + 128);
      v97 += 4;
      v96 += 144;
    }

    while (v98 != v97);
  }

  else if (!v121)
  {
    goto LABEL_115;
  }

  v122.n128_u64[0] = v95;
  operator delete(v95);
LABEL_115:
  if (v123.__begin_)
  {
    v123.__end_ = v123.__begin_;
    operator delete(v123.__begin_);
  }
}

void sub_25D2320F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dod::OU3DSparseSSDetector::InstanceSegmentation(ou3dod::OU3DSparseSSDetector *this)
{
  v2 = *(this + 21);
  v4 = *v2;
  v3 = v2[1];
  v5 = (v3 - *v2) >> 4;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  v7 = *(this + 53);
  *(this + 53) = v6;

  if (v3 == v4)
  {
    LODWORD(v34[0]) = 50397727;
    BYTE4(v34[0]) = 0;
    std::unordered_set<SemanticLabelv5>::unordered_set(v35, v34, 5);
  }

  else
  {
    v33 = v3;
    v8 = 0;
    if (v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5;
    }

    do
    {
      v10 = objc_alloc_init(OU3DVoxel);
      v11.i64[0] = 0x3F0000003F000000;
      v11.i64[1] = 0x3F0000003F000000;
      [(OU3DVoxel *)v10 setCenter:*vmulq_f32(*(this + 5), vaddq_f32(vcvtq_f32_s32(*(**(this + 21) + 16 * v8)), v11)).i64];
      [(OU3DVoxel *)v10 setSize:*(this + 10)];
      [*(this + 53) addObject:v10];

      ++v8;
    }

    while (v9 != v8);
    v12 = 0;
    v13 = 0;
    v14 = *(this + 35);
    do
    {
      LODWORD(v34[0]) = 0;
      v15 = *(this + 33);
      if (v15 < 2)
      {
        ++v13;
      }

      else
      {
        v16 = (*v14 + 4 * v13);
        v17 = *v16;
        v18 = 1;
        do
        {
          v19 = v16[v18];
          if (v19 > v17)
          {
            LODWORD(v34[0]) = v18;
            v17 = v19;
          }

          ++v18;
        }

        while (v15 != v18);
        v13 += v15 - 2 + 2;
      }

      v20 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(kSparseSSDSemanticLabels, v34);
      if (!v20)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v21 = *(v20 + 20);
      v22 = [*(this + 53) objectAtIndexedSubscript:v12];
      [v22 setSemantic_label:v21];

      ++v12;
    }

    while (v12 != v9);
    LODWORD(v34[0]) = 50397727;
    BYTE4(v34[0]) = 0;
    std::unordered_set<SemanticLabelv5>::unordered_set(v35, v34, 5);
    if (v33 != v4)
    {
      v23 = 0;
      if (v5 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v5;
      }

      do
      {
        v25 = [*(this + 53) objectAtIndexedSubscript:{v23, v33}];
        LOBYTE(v34[0]) = [v25 semantic_label];
        if (!std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::find<unsigned char>(v35, v34))
        {
          v27 = *(this + 1);
          if (*(this + 2) != v27)
          {
            v28 = 0;
            v29 = (*(this + 47) + (v23 << 7));
            v30 = 144;
            while (1)
            {
              box3dIou(v34, v29, (v27 + v30 - 144), 0, v26);
              LODWORD(v31) = v34[0];
              if (*v34 > *(this + 37))
              {
                break;
              }

              ++v28;
              v27 = *(this + 1);
              v30 += 224;
              if (v28 >= 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - v27) >> 5))
              {
                goto LABEL_21;
              }
            }

            [v25 setObject_id:{*(v27 + v30), v31}];
          }
        }

LABEL_21:

        ++v23;
      }

      while (v23 != v24);
    }
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v35);
}

void sub_25D23249C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ou3dod::OU3DSparseSSDetector::Postprocess(ou3dod::OU3DSparseSSDetector *this)
{
  ou3dod::OU3DSparseSSDetector::ParseNetOutput(this);
  ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(this);
  ou3dod::OU3DSparseSSDetector::InstanceSegmentation(this);
  v2 = *(this + 1);
  if (*(this + 2) != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      _KR00_8 = __sincosf_stret(*(*(this + 50) + 4 * v4));
      v6 = 0;
      v7.i64[0] = 0x3F0000003F000000;
      v7.i64[1] = 0x3F0000003F000000;
      v8 = vmulq_f32(vaddq_f32(*(v2 + 224 * v4), *(v2 + 224 * v4 + 32)), v7);
      _S4 = -_KR00_8.__sinval;
      v10 = v2 + v3;
      do
      {
        v11 = *(v10 + v6);
        _Q6 = vsubq_f32(v11, v8);
        __asm { FMLA            S7, S4, V6.S[1] }

        *(v10 + v6 + 8) = v11.i32[2];
        v11.i32[0] = _S7;
        __asm { FMLA            S16, S1, V6.S[1] }

        v11.i32[1] = _S16;
        *(v10 + v6) = v11.i64[0];
        v6 += 16;
      }

      while (v6 != 128);
      ++v4;
      v2 = *(this + 1);
      v3 += 224;
    }

    while (v4 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - v2) >> 5));
  }
}

void ou3dod::OU3DSparseSSDetector::~OU3DSparseSSDetector(id *this)
{
  ou3dod::OU3DSparseSSDetector::~OU3DSparseSSDetector(this);

  JUMPOUT(0x25F894DE0);
}

{
  *this = &unk_286EBC398;
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table((this + 54));

  v2 = this[50];
  if (v2)
  {
    this[51] = v2;
    operator delete(v2);
  }

  v3 = this[47];
  if (v3)
  {
    this[48] = v3;
    operator delete(v3);
  }

  v4 = this[44];
  if (v4)
  {
    this[45] = v4;
    operator delete(v4);
  }

  v5 = this[41];
  if (v5)
  {
    this[42] = v5;
    operator delete(v5);
  }

  v6 = this[38];
  if (v6)
  {
    this[39] = v6;
    operator delete(v6);
  }

  v7 = this[35];
  if (v7)
  {
    this[36] = v7;
    operator delete(v7);
  }

  v8 = this[32];
  if (v8)
  {
    this[33] = v8;
    operator delete(v8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table((this + 27));
  v9 = this[24];
  if (v9)
  {
    this[25] = v9;
    operator delete(v9);
  }

  v10 = this + 21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  ou3dod::OU3DODInterface::~OU3DODInterface(this);
}

uint64_t std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__emplace_back_slow_path<OUEspressoInference::ModelInfo::BlobInfo>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>,OUEspressoInference::ModelInfo::BlobInfo*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<OUEspressoInference::ModelInfo::BlobInfo>::~__split_buffer(&v15);
  return v14;
}

void sub_25D232758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<OUEspressoInference::ModelInfo::BlobInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>,OUEspressoInference::ModelInfo::BlobInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(v5);
      v5 += 48;
    }
  }
}

uint64_t std::__split_buffer<OUEspressoInference::ModelInfo::BlobInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *_ZNSt3__16vectorINS0_IDv3_iNS_9allocatorIS1_EEEENS2_IS4_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
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

uint64_t *std::vector<std::span<float,18446744073709551615ul>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::span<float,18446744073709551615ul>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25D232950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::span<float,18446744073709551615ul>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::span<float,18446744073709551615ul>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

int32x4_t *_ZNSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS2_JRKNS_21piecewise_construct_tENS_5tupleIJOS2_EEENSK_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEEbEERKT_DpOT0_(void *a1, int32x4_t *a2, uint64_t a3, int32x4_t **a4)
{
  v4 = a2->i32[0] ^ (HIDWORD(a2->i64[0]) << 7) ^ (a2->i64[1] << 14);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = a2->i32[0] ^ (HIDWORD(a2->i64[0]) << 7) ^ (a2->i64[1] << 14);
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = v4 & (*&v5 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10->u64[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
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

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = v10->i64[0];
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  v12 = vceqq_s32(v10[1], *a2);
  v12.i32[3] = v12.i32[2];
  if ((vminvq_u32(v12) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  return v10;
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

int32x4_t *___ZN12_GLOBAL__N_117NeighborMapHelper7ComputeERKNSt3__113unordered_mapIDv3_iiN5utils8SimdHashIS3_EENS4_9SimdEqualIS3_EENS1_9allocatorINS1_4pairIKS3_iEEEEEERKNS1_6vectorIS3_NS9_IS3_EEEEjib_block_invoke(int32x4_t *result, uint64_t a2, int32x4_t a3)
{
  v3 = result;
  v4 = *(*result[2].i64[1] + 16 * a2);
  if ((result[5].i8[8] & 1) == 0)
  {
    v5 = &result[5].i32[1];
    a3 = vld1q_dup_f32(v5);
    v4 = vmulq_s32(a3, v4);
  }

  v6 = result[3].i64[0];
  v7 = result[3].i64[1];
  if (v6 != v7)
  {
    v8 = result[5].i32[0] * a2 * result[5].i32[0] * result[5].i32[0];
    v16 = v4;
    do
    {
      v9 = *(v3 + 48);
      v10 = *(v3 + 56);
      if (v9 != v10)
      {
        a3.i32[0] = *v6;
        v15 = a3;
        do
        {
          v11 = *(v3 + 48);
          v12 = *(v3 + 56);
          if (v11 != v12)
          {
            v13 = v15;
            v13.i32[1] = *v9;
            v13.i32[2] = v15.i32[2];
            v17 = v13;
            do
            {
              v14 = v17;
              v14.i32[2] = *v11;
              v18 = vaddq_s32(v14, v4);
              result = _ZNKSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_21__hash_const_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(*(v3 + 72), &v18);
              if (result)
              {
                *(*(*(*(v3 + 32) + 8) + 48) + 4 * v8) = result[2].i32[0];
              }

              ++v8;
              ++v11;
              v4 = v16;
            }

            while (v11 != v12);
          }

          ++v9;
        }

        while (v9 != v10);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t *__copy_helper_block_ea8_48c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = (a1 + 48);
  v2[2] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
}

void __destroy_helper_block_ea8_48c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

int32x4_t *_ZNKSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_21__hash_const_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(void *a1, int32x4_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2->i32[0] ^ (HIDWORD(a2->i64[0]) << 7) ^ (a2->i64[1] << 14);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.u32[0];
  if (v4.u32[0] > 1uLL)
  {
    v6 = a2->i32[0] ^ (HIDWORD(a2->i64[0]) << 7) ^ (a2->i64[1] << 14);
    if (v3 >= *&v2)
    {
      v6 = v3 % *&v2;
    }
  }

  else
  {
    v6 = v3 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = result->i64[0])
  {
    v9 = result->u64[1];
    if (v3 == v9)
    {
      v10 = vceqq_s32(result[1], *a2);
      v10.i32[3] = v10.i32[2];
      if ((vminvq_u32(v10) & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      if (v5 > 1)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7;
      v7 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
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

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_0 &,std::__wrap_iter<int *>>(uint64_t result, uint64_t **a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 | 1;
      v7 = (result + 4 * (v5 | 1));
      v8 = v5 + 2;
      v9 = **a2;
      if (v8 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 4 * v11);
      if (*(v9 + 4 * v10) <= v12)
      {
        do
        {
          *a4 = v10;
          a4 = v7;
          if (v4 < v6)
          {
            break;
          }

          v13 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v14 = v13 + 2;
          if (v14 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v14;
          }

          v10 = *v7;
        }

        while (*(v9 + 4 * v10) <= v12);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t *std::__split_buffer<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore,std::allocator<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore> &>::__split_buffer(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *a1 = 0;
  a1[1] = 144 * a3;
  a1[2] = 144 * a3;
  a1[3] = 0;
  return a1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,false>(unint64_t a1, _OWORD *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 9;
  v10 = a2 - 18;
  v11 = a2 - 27;
  v328 = a2 - 74;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0x8E38E38E38E38E39 * ((a2 - v12) >> 4);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u32[0] = *(a2 - 2);
        if (result.n128_f32[0] > *(v12 + 136))
        {
          v379 = *v12;
          v475 = *(v12 + 48);
          v507 = *(v12 + 64);
          v411 = *(v12 + 16);
          v443 = *(v12 + 32);
          v603 = *(v12 + 112);
          v635 = *(v12 + 128);
          v539 = *(v12 + 80);
          v571 = *(v12 + 96);
          *v12 = *(a2 - 9);
          v225 = *(a2 - 8);
          v226 = *(a2 - 7);
          v227 = *(a2 - 5);
          *(v12 + 48) = *(a2 - 6);
          *(v12 + 64) = v227;
          *(v12 + 16) = v225;
          *(v12 + 32) = v226;
          v228 = *(a2 - 4);
          v229 = *(a2 - 3);
          v230 = *(a2 - 1);
          *(v12 + 112) = *(a2 - 2);
          *(v12 + 128) = v230;
          *(v12 + 80) = v228;
          *(v12 + 96) = v229;
          *(a2 - 9) = v379;
          *(a2 - 6) = v475;
          *(a2 - 5) = v507;
          *(a2 - 8) = v411;
          *(a2 - 7) = v443;
          result = v539;
          *(a2 - 2) = v603;
          *(a2 - 1) = v635;
          *(a2 - 4) = v539;
          *(a2 - 3) = v571;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,0>(v12, (v12 + 144), (v12 + 288), a2 - 9).n128_u64[0];
      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,0>(v12, (v12 + 144), (v12 + 288), (v12 + 432), a2 - 9).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 3455)
    {
      v238 = (v12 + 144);
      v240 = v12 == a2 || v238 == a2;
      if (a4)
      {
        if (!v240)
        {
          v241 = 0;
          v242 = v12;
          do
          {
            v243 = v238;
            result.n128_u32[0] = *(v242 + 280);
            if (result.n128_f32[0] > *(v242 + 136))
            {
              v381 = *v238;
              v477 = v238[3];
              v509 = v238[4];
              v413 = v238[1];
              v445 = v238[2];
              v637 = *(v238 + 16);
              v573 = v238[6];
              v605 = v238[7];
              v541 = v238[5];
              v244 = *(v242 + 284);
              v245 = v241;
              while (1)
              {
                v246 = (v12 + v245);
                v247 = *(v12 + v245 + 112);
                *(v246 + 15) = *(v12 + v245 + 96);
                *(v246 + 16) = v247;
                *(v246 + 17) = *(v12 + v245 + 128);
                v248 = *(v12 + v245 + 48);
                *(v246 + 11) = *(v12 + v245 + 32);
                *(v246 + 12) = v248;
                v249 = *(v12 + v245 + 80);
                *(v246 + 13) = *(v12 + v245 + 64);
                *(v246 + 14) = v249;
                v250 = *(v12 + v245 + 16);
                *(v246 + 9) = *(v12 + v245);
                *(v246 + 10) = v250;
                if (!v245)
                {
                  break;
                }

                v245 -= 144;
                if (result.n128_f32[0] <= *(v246 - 2))
                {
                  v251 = v12 + v245 + 144;
                  goto LABEL_130;
                }
              }

              v251 = v12;
LABEL_130:
              *v251 = v381;
              *(v251 + 48) = v477;
              *(v251 + 64) = v509;
              *(v251 + 16) = v413;
              *(v251 + 32) = v445;
              *(v251 + 128) = v637;
              *(v251 + 96) = v573;
              *(v251 + 112) = v605;
              *(v251 + 80) = v541;
              *(v251 + 136) = result.n128_u32[0];
              *(v251 + 140) = v244;
            }

            v238 = v243 + 9;
            v241 += 144;
            v242 = v243;
          }

          while (v243 + 9 != a2);
        }
      }

      else if (!v240)
      {
        do
        {
          v312 = v238;
          result.n128_u32[0] = *(a1 + 280);
          if (result.n128_f32[0] > *(a1 + 136))
          {
            v386 = *v238;
            v482 = v238[3];
            v514 = v238[4];
            v418 = v238[1];
            v450 = v238[2];
            v642 = *(v238 + 16);
            v578 = v238[6];
            v610 = v238[7];
            v546 = v238[5];
            v313 = *(a1 + 284);
            do
            {
              v314 = *(v238 - 2);
              v238[6] = *(v238 - 3);
              v238[7] = v314;
              v238[8] = *(v238 - 1);
              v315 = *(v238 - 6);
              v238[2] = *(v238 - 7);
              v238[3] = v315;
              v316 = *(v238 - 4);
              v238[4] = *(v238 - 5);
              v238[5] = v316;
              v317 = *(v238 - 8);
              *v238 = *(v238 - 9);
              v238[1] = v317;
              LODWORD(v317) = *(v238 - 38);
              v238 -= 9;
            }

            while (result.n128_f32[0] > *&v317);
            *v238 = v386;
            v238[3] = v482;
            v238[4] = v514;
            v238[1] = v418;
            v238[2] = v450;
            *(v238 + 16) = v642;
            v238[6] = v578;
            v238[7] = v610;
            v238[5] = v546;
            *(v238 + 34) = result.n128_u32[0];
            *(v238 + 35) = v313;
          }

          v238 = (v312 + 144);
          a1 = v312;
        }

        while ((v312 + 144) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v252 = (v14 - 2) >> 1;
        v253 = v252;
        do
        {
          v254 = v253;
          if (v252 >= v253)
          {
            v255 = (2 * v253) | 1;
            v256 = v12 + 144 * v255;
            if (2 * v253 + 2 < v14 && *(v256 + 136) > *(v256 + 280))
            {
              v256 += 144;
              v255 = 2 * v253 + 2;
            }

            v257 = v12 + 144 * v253;
            v258 = *(v257 + 136);
            if (*(v256 + 136) <= v258)
            {
              v382 = *v257;
              v478 = *(v257 + 48);
              v510 = *(v257 + 64);
              v414 = *(v257 + 16);
              v446 = *(v257 + 32);
              v638 = *(v257 + 128);
              v574 = *(v257 + 96);
              v606 = *(v257 + 112);
              v542 = *(v257 + 80);
              v259 = *(v257 + 140);
              do
              {
                v260 = v257;
                v257 = v256;
                *v260 = *v256;
                v261 = *(v256 + 16);
                v262 = *(v256 + 32);
                v263 = *(v256 + 64);
                v260[3] = *(v256 + 48);
                v260[4] = v263;
                v260[1] = v261;
                v260[2] = v262;
                v264 = *(v256 + 80);
                v265 = *(v256 + 96);
                v266 = *(v256 + 128);
                v260[7] = *(v256 + 112);
                v260[8] = v266;
                v260[5] = v264;
                v260[6] = v265;
                if (v252 < v255)
                {
                  break;
                }

                v267 = 2 * v255;
                v255 = (2 * v255) | 1;
                v256 = v12 + 144 * v255;
                v268 = v267 + 2;
                if (v268 < v14 && *(v256 + 136) > *(v256 + 280))
                {
                  v256 += 144;
                  v255 = v268;
                }
              }

              while (*(v256 + 136) <= v258);
              *v257 = v382;
              *(v257 + 48) = v478;
              *(v257 + 64) = v510;
              *(v257 + 16) = v414;
              *(v257 + 32) = v446;
              *(v257 + 128) = v638;
              *(v257 + 96) = v574;
              *(v257 + 112) = v606;
              *(v257 + 80) = v542;
              *(v257 + 136) = v258;
              *(v257 + 140) = v259;
            }
          }

          v253 = v254 - 1;
        }

        while (v254);
        v269 = 0x8E38E38E38E38E39 * (v13 >> 4);
        do
        {
          v270 = 0;
          v383 = *v12;
          v479 = *(v12 + 48);
          v511 = *(v12 + 64);
          v415 = *(v12 + 16);
          v447 = *(v12 + 32);
          v607 = *(v12 + 112);
          v639 = *(v12 + 128);
          v543 = *(v12 + 80);
          v575 = *(v12 + 96);
          v271 = v12;
          do
          {
            v272 = &v271[9 * v270];
            v273 = v272 + 36;
            v274 = (2 * v270) | 1;
            v270 = 2 * v270 + 2;
            if (v270 >= v269)
            {
              v270 = v274;
            }

            else
            {
              v275 = v272[70];
              v276 = v272[106];
              v277 = v272 + 72;
              if (v275 <= v276)
              {
                v270 = v274;
              }

              else
              {
                v273 = v277;
              }
            }

            *v271 = *v273;
            v278 = v273[1];
            v279 = v273[2];
            v280 = v273[4];
            v271[3] = v273[3];
            v271[4] = v280;
            v271[1] = v278;
            v271[2] = v279;
            v281 = v273[5];
            v282 = v273[6];
            v283 = v273[8];
            v271[7] = v273[7];
            v271[8] = v283;
            v271[5] = v281;
            v271[6] = v282;
            v271 = v273;
          }

          while (v270 <= ((v269 - 2) >> 1));
          a2 -= 9;
          if (v273 == a2)
          {
            *v273 = v383;
            v273[3] = v479;
            v273[4] = v511;
            v273[1] = v415;
            v273[2] = v447;
            result = v543;
            v273[7] = v607;
            v273[8] = v639;
            v273[5] = v543;
            v273[6] = v575;
          }

          else
          {
            *v273 = *a2;
            v284 = a2[1];
            v285 = a2[2];
            v286 = a2[4];
            v273[3] = a2[3];
            v273[4] = v286;
            v273[1] = v284;
            v273[2] = v285;
            v287 = a2[5];
            v288 = a2[6];
            v289 = a2[8];
            v273[7] = a2[7];
            v273[8] = v289;
            v273[5] = v287;
            v273[6] = v288;
            *a2 = v383;
            a2[3] = v479;
            a2[4] = v511;
            a2[1] = v415;
            a2[2] = v447;
            result = v543;
            a2[7] = v607;
            a2[8] = v639;
            a2[5] = v543;
            a2[6] = v575;
            v290 = v273 - v12 + 144;
            if (v290 >= 145)
            {
              v291 = (-2 - 0x71C71C71C71C71C7 * (v290 >> 4)) >> 1;
              v292 = v12 + 144 * v291;
              result.n128_u32[0] = *(v273 + 34);
              if (*(v292 + 136) > result.n128_f32[0])
              {
                v331 = *v273;
                v340 = v273[3];
                v343 = v273[4];
                v334 = v273[1];
                v337 = v273[2];
                v355 = *(v273 + 16);
                v349 = v273[6];
                v352 = v273[7];
                v346 = v273[5];
                v293 = *(v273 + 35);
                do
                {
                  v294 = v273;
                  v273 = v292;
                  *v294 = *v292;
                  v295 = *(v292 + 16);
                  v296 = *(v292 + 32);
                  v297 = *(v292 + 64);
                  v294[3] = *(v292 + 48);
                  v294[4] = v297;
                  v294[1] = v295;
                  v294[2] = v296;
                  v298 = *(v292 + 80);
                  v299 = *(v292 + 96);
                  v300 = *(v292 + 128);
                  v294[7] = *(v292 + 112);
                  v294[8] = v300;
                  v294[5] = v298;
                  v294[6] = v299;
                  if (!v291)
                  {
                    break;
                  }

                  v291 = (v291 - 1) >> 1;
                  v292 = v12 + 144 * v291;
                }

                while (*(v292 + 136) > result.n128_f32[0]);
                *v273 = v331;
                v273[3] = v340;
                v273[4] = v343;
                v273[1] = v334;
                v273[2] = v337;
                *(v273 + 16) = v355;
                v273[6] = v349;
                v273[7] = v352;
                v273[5] = v346;
                *(v273 + 34) = result.n128_u32[0];
                *(v273 + 35) = v293;
              }
            }
          }
        }

        while (v269-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 144 * (v14 >> 1);
    v17 = *(a2 - 2);
    if (v13 >= 0x4801)
    {
      v18 = *(v16 + 136);
      if (v18 <= *(v12 + 136))
      {
        if (v17 > v18)
        {
          v358 = *v16;
          v454 = *(v16 + 48);
          v486 = *(v16 + 64);
          v390 = *(v16 + 16);
          v422 = *(v16 + 32);
          v582 = *(v16 + 112);
          v614 = *(v16 + 128);
          v518 = *(v16 + 80);
          v550 = *(v16 + 96);
          *v16 = *v9;
          v32 = *(a2 - 8);
          v33 = *(a2 - 7);
          v34 = *(a2 - 5);
          *(v16 + 48) = *(a2 - 6);
          *(v16 + 64) = v34;
          *(v16 + 16) = v32;
          *(v16 + 32) = v33;
          v35 = *(a2 - 4);
          v36 = *(a2 - 3);
          v37 = *(a2 - 1);
          *(v16 + 112) = *(a2 - 2);
          *(v16 + 128) = v37;
          *(v16 + 80) = v35;
          *(v16 + 96) = v36;
          *v9 = v358;
          *(a2 - 6) = v454;
          *(a2 - 5) = v486;
          *(a2 - 8) = v390;
          *(a2 - 7) = v422;
          *(a2 - 2) = v582;
          *(a2 - 1) = v614;
          *(a2 - 4) = v518;
          *(a2 - 3) = v550;
          if (*(v16 + 136) > *(v12 + 136))
          {
            v359 = *v12;
            v455 = *(v12 + 48);
            v487 = *(v12 + 64);
            v391 = *(v12 + 16);
            v423 = *(v12 + 32);
            v583 = *(v12 + 112);
            v615 = *(v12 + 128);
            v519 = *(v12 + 80);
            v551 = *(v12 + 96);
            *v12 = *v16;
            v38 = *(v16 + 16);
            v39 = *(v16 + 32);
            v40 = *(v16 + 64);
            *(v12 + 48) = *(v16 + 48);
            *(v12 + 64) = v40;
            *(v12 + 16) = v38;
            *(v12 + 32) = v39;
            v41 = *(v16 + 80);
            v42 = *(v16 + 96);
            v43 = *(v16 + 128);
            *(v12 + 112) = *(v16 + 112);
            *(v12 + 128) = v43;
            *(v12 + 80) = v41;
            *(v12 + 96) = v42;
            *v16 = v359;
            *(v16 + 48) = v455;
            *(v16 + 64) = v487;
            *(v16 + 16) = v391;
            *(v16 + 32) = v423;
            *(v16 + 112) = v583;
            *(v16 + 128) = v615;
            *(v16 + 80) = v519;
            *(v16 + 96) = v551;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          v356 = *v12;
          v452 = *(v12 + 48);
          v484 = *(v12 + 64);
          v388 = *(v12 + 16);
          v420 = *(v12 + 32);
          v580 = *(v12 + 112);
          v612 = *(v12 + 128);
          v516 = *(v12 + 80);
          v548 = *(v12 + 96);
          *v12 = *v9;
          v19 = *(a2 - 8);
          v20 = *(a2 - 7);
          v21 = *(a2 - 5);
          *(v12 + 48) = *(a2 - 6);
          *(v12 + 64) = v21;
          *(v12 + 16) = v19;
          *(v12 + 32) = v20;
          v22 = *(a2 - 4);
          v23 = *(a2 - 3);
          v24 = *(a2 - 1);
          *(v12 + 112) = *(a2 - 2);
          *(v12 + 128) = v24;
          *(v12 + 80) = v22;
          *(v12 + 96) = v23;
          goto LABEL_26;
        }

        v362 = *v12;
        v458 = *(v12 + 48);
        v490 = *(v12 + 64);
        v394 = *(v12 + 16);
        v426 = *(v12 + 32);
        v586 = *(v12 + 112);
        v618 = *(v12 + 128);
        v522 = *(v12 + 80);
        v554 = *(v12 + 96);
        *v12 = *v16;
        v56 = *(v16 + 16);
        v57 = *(v16 + 32);
        v58 = *(v16 + 64);
        *(v12 + 48) = *(v16 + 48);
        *(v12 + 64) = v58;
        *(v12 + 16) = v56;
        *(v12 + 32) = v57;
        v59 = *(v16 + 80);
        v60 = *(v16 + 96);
        v61 = *(v16 + 128);
        *(v12 + 112) = *(v16 + 112);
        *(v12 + 128) = v61;
        *(v12 + 80) = v59;
        *(v12 + 96) = v60;
        *v16 = v362;
        *(v16 + 48) = v458;
        *(v16 + 64) = v490;
        *(v16 + 16) = v394;
        *(v16 + 32) = v426;
        *(v16 + 112) = v586;
        *(v16 + 128) = v618;
        *(v16 + 80) = v522;
        *(v16 + 96) = v554;
        if (*(a2 - 2) > *(v16 + 136))
        {
          v356 = *v16;
          v452 = *(v16 + 48);
          v484 = *(v16 + 64);
          v388 = *(v16 + 16);
          v420 = *(v16 + 32);
          v580 = *(v16 + 112);
          v612 = *(v16 + 128);
          v516 = *(v16 + 80);
          v548 = *(v16 + 96);
          *v16 = *v9;
          v62 = *(a2 - 8);
          v63 = *(a2 - 7);
          v64 = *(a2 - 5);
          *(v16 + 48) = *(a2 - 6);
          *(v16 + 64) = v64;
          *(v16 + 16) = v62;
          *(v16 + 32) = v63;
          v65 = *(a2 - 4);
          v66 = *(a2 - 3);
          v67 = *(a2 - 1);
          *(v16 + 112) = *(a2 - 2);
          *(v16 + 128) = v67;
          *(v16 + 80) = v65;
          *(v16 + 96) = v66;
LABEL_26:
          *v9 = v356;
          *(a2 - 6) = v452;
          *(a2 - 5) = v484;
          *(a2 - 8) = v388;
          *(a2 - 7) = v420;
          *(a2 - 2) = v580;
          *(a2 - 1) = v612;
          *(a2 - 4) = v516;
          *(a2 - 3) = v548;
        }
      }

      v68 = v12 + 144 * v15;
      v69 = v68 - 144;
      v70 = *(v68 - 8);
      v71 = *(a2 - 38);
      if (v70 <= *(v12 + 280))
      {
        if (v71 > v70)
        {
          v364 = *v69;
          v460 = *(v68 - 96);
          v492 = *(v68 - 80);
          v396 = *(v68 - 128);
          v428 = *(v68 - 112);
          v588 = *(v68 - 32);
          v620 = *(v68 - 16);
          v524 = *(v68 - 64);
          v556 = *(v68 - 48);
          *v69 = *v10;
          v78 = *(a2 - 17);
          v79 = *(a2 - 16);
          v80 = *(a2 - 14);
          *(v68 - 96) = *(a2 - 15);
          *(v68 - 80) = v80;
          *(v68 - 128) = v78;
          *(v68 - 112) = v79;
          v81 = *(a2 - 13);
          v82 = *(a2 - 12);
          v83 = *(a2 - 10);
          *(v68 - 32) = *(a2 - 11);
          *(v68 - 16) = v83;
          *(v68 - 64) = v81;
          *(v68 - 48) = v82;
          *v10 = v364;
          *(a2 - 15) = v460;
          *(a2 - 14) = v492;
          *(a2 - 17) = v396;
          *(a2 - 16) = v428;
          *(a2 - 11) = v588;
          *(a2 - 10) = v620;
          *(a2 - 13) = v524;
          *(a2 - 12) = v556;
          if (*(v68 - 8) > *(v12 + 280))
          {
            v429 = *(v12 + 176);
            v461 = *(v12 + 192);
            v589 = *(v12 + 256);
            v621 = *(v12 + 272);
            v525 = *(v12 + 224);
            v557 = *(v12 + 240);
            v493 = *(v12 + 208);
            v365 = *(v12 + 144);
            v397 = *(v12 + 160);
            *(v12 + 144) = *v69;
            v84 = *(v68 - 128);
            v85 = *(v68 - 112);
            v86 = *(v68 - 80);
            *(v12 + 192) = *(v68 - 96);
            *(v12 + 208) = v86;
            *(v12 + 160) = v84;
            *(v12 + 176) = v85;
            v87 = *(v68 - 64);
            v88 = *(v68 - 48);
            v89 = *(v68 - 16);
            *(v12 + 256) = *(v68 - 32);
            *(v12 + 272) = v89;
            *(v12 + 224) = v87;
            *(v12 + 240) = v88;
            *v69 = v365;
            *(v68 - 96) = v461;
            *(v68 - 80) = v493;
            *(v68 - 128) = v397;
            *(v68 - 112) = v429;
            *(v68 - 32) = v589;
            *(v68 - 16) = v621;
            *(v68 - 64) = v525;
            *(v68 - 48) = v557;
          }
        }
      }

      else
      {
        if (v71 > v70)
        {
          v427 = *(v12 + 176);
          v459 = *(v12 + 192);
          v587 = *(v12 + 256);
          v619 = *(v12 + 272);
          v523 = *(v12 + 224);
          v555 = *(v12 + 240);
          v491 = *(v12 + 208);
          v363 = *(v12 + 144);
          v395 = *(v12 + 160);
          *(v12 + 144) = *v10;
          v72 = *(a2 - 17);
          v73 = *(a2 - 16);
          v74 = *(a2 - 14);
          *(v12 + 192) = *(a2 - 15);
          *(v12 + 208) = v74;
          *(v12 + 160) = v72;
          *(v12 + 176) = v73;
          v75 = *(a2 - 13);
          v76 = *(a2 - 12);
          v77 = *(a2 - 10);
          *(v12 + 256) = *(a2 - 11);
          *(v12 + 272) = v77;
          *(v12 + 224) = v75;
          *(v12 + 240) = v76;
          goto LABEL_38;
        }

        v431 = *(v12 + 176);
        v463 = *(v12 + 192);
        v591 = *(v12 + 256);
        v623 = *(v12 + 272);
        v527 = *(v12 + 224);
        v559 = *(v12 + 240);
        v495 = *(v12 + 208);
        v367 = *(v12 + 144);
        v399 = *(v12 + 160);
        *(v12 + 144) = *v69;
        v102 = *(v68 - 128);
        v103 = *(v68 - 112);
        v104 = *(v68 - 80);
        *(v12 + 192) = *(v68 - 96);
        *(v12 + 208) = v104;
        *(v12 + 160) = v102;
        *(v12 + 176) = v103;
        v105 = *(v68 - 64);
        v106 = *(v68 - 48);
        v107 = *(v68 - 16);
        *(v12 + 256) = *(v68 - 32);
        *(v12 + 272) = v107;
        *(v12 + 224) = v105;
        *(v12 + 240) = v106;
        *v69 = v367;
        *(v68 - 96) = v463;
        *(v68 - 80) = v495;
        *(v68 - 128) = v399;
        *(v68 - 112) = v431;
        *(v68 - 32) = v591;
        *(v68 - 16) = v623;
        *(v68 - 64) = v527;
        *(v68 - 48) = v559;
        if (*(a2 - 38) > *(v68 - 8))
        {
          v363 = *v69;
          v459 = *(v68 - 96);
          v491 = *(v68 - 80);
          v395 = *(v68 - 128);
          v427 = *(v68 - 112);
          v587 = *(v68 - 32);
          v619 = *(v68 - 16);
          v523 = *(v68 - 64);
          v555 = *(v68 - 48);
          *v69 = *v10;
          v108 = *(a2 - 17);
          v109 = *(a2 - 16);
          v110 = *(a2 - 14);
          *(v68 - 96) = *(a2 - 15);
          *(v68 - 80) = v110;
          *(v68 - 128) = v108;
          *(v68 - 112) = v109;
          v111 = *(a2 - 13);
          v112 = *(a2 - 12);
          v113 = *(a2 - 10);
          *(v68 - 32) = *(a2 - 11);
          *(v68 - 16) = v113;
          *(v68 - 64) = v111;
          *(v68 - 48) = v112;
LABEL_38:
          *v10 = v363;
          *(a2 - 15) = v459;
          *(a2 - 14) = v491;
          *(a2 - 17) = v395;
          *(a2 - 16) = v427;
          *(a2 - 11) = v587;
          *(a2 - 10) = v619;
          *(a2 - 13) = v523;
          *(a2 - 12) = v555;
        }
      }

      v114 = v12 + 144 * v15;
      v115 = (v114 + 144);
      v116 = *(v114 + 280);
      v117 = *v328;
      if (v116 <= *(v12 + 424))
      {
        if (v117 > v116)
        {
          v369 = *v115;
          v465 = *(v114 + 192);
          v497 = *(v114 + 208);
          v401 = *(v114 + 160);
          v433 = *(v114 + 176);
          v593 = *(v114 + 256);
          v625 = *(v114 + 272);
          v529 = *(v114 + 224);
          v561 = *(v114 + 240);
          *v115 = *v11;
          v124 = *(a2 - 26);
          v125 = *(a2 - 25);
          v126 = *(a2 - 23);
          *(v114 + 192) = *(a2 - 24);
          *(v114 + 208) = v126;
          *(v114 + 160) = v124;
          *(v114 + 176) = v125;
          v127 = *(a2 - 22);
          v128 = *(a2 - 21);
          v129 = *(a2 - 19);
          *(v114 + 256) = *(a2 - 20);
          *(v114 + 272) = v129;
          *(v114 + 224) = v127;
          *(v114 + 240) = v128;
          *v11 = v369;
          *(a2 - 24) = v465;
          *(a2 - 23) = v497;
          *(a2 - 26) = v401;
          *(a2 - 25) = v433;
          *(a2 - 20) = v593;
          *(a2 - 19) = v625;
          *(a2 - 22) = v529;
          *(a2 - 21) = v561;
          if (*(v114 + 280) > *(v12 + 424))
          {
            v434 = *(v12 + 320);
            v466 = *(v12 + 336);
            v594 = *(v12 + 400);
            v626 = *(v12 + 416);
            v530 = *(v12 + 368);
            v562 = *(v12 + 384);
            v498 = *(v12 + 352);
            v370 = *(v12 + 288);
            v402 = *(v12 + 304);
            *(v12 + 288) = *v115;
            v130 = *(v114 + 160);
            v131 = *(v114 + 176);
            v132 = *(v114 + 208);
            *(v12 + 336) = *(v114 + 192);
            *(v12 + 352) = v132;
            *(v12 + 304) = v130;
            *(v12 + 320) = v131;
            v133 = *(v114 + 224);
            v134 = *(v114 + 240);
            v135 = *(v114 + 272);
            *(v12 + 400) = *(v114 + 256);
            *(v12 + 416) = v135;
            *(v12 + 368) = v133;
            *(v12 + 384) = v134;
            *v115 = v370;
            *(v114 + 192) = v466;
            *(v114 + 208) = v498;
            *(v114 + 160) = v402;
            *(v114 + 176) = v434;
            *(v114 + 256) = v594;
            *(v114 + 272) = v626;
            *(v114 + 224) = v530;
            *(v114 + 240) = v562;
          }
        }
      }

      else
      {
        if (v117 > v116)
        {
          v432 = *(v12 + 320);
          v464 = *(v12 + 336);
          v592 = *(v12 + 400);
          v624 = *(v12 + 416);
          v528 = *(v12 + 368);
          v560 = *(v12 + 384);
          v496 = *(v12 + 352);
          v368 = *(v12 + 288);
          v400 = *(v12 + 304);
          *(v12 + 288) = *v11;
          v118 = *(a2 - 26);
          v119 = *(a2 - 25);
          v120 = *(a2 - 23);
          *(v12 + 336) = *(a2 - 24);
          *(v12 + 352) = v120;
          *(v12 + 304) = v118;
          *(v12 + 320) = v119;
          v121 = *(a2 - 22);
          v122 = *(a2 - 21);
          v123 = *(a2 - 19);
          *(v12 + 400) = *(a2 - 20);
          *(v12 + 416) = v123;
          *(v12 + 368) = v121;
          *(v12 + 384) = v122;
          goto LABEL_47;
        }

        v435 = *(v12 + 320);
        v467 = *(v12 + 336);
        v595 = *(v12 + 400);
        v627 = *(v12 + 416);
        v531 = *(v12 + 368);
        v563 = *(v12 + 384);
        v499 = *(v12 + 352);
        v371 = *(v12 + 288);
        v403 = *(v12 + 304);
        *(v12 + 288) = *v115;
        v136 = *(v114 + 160);
        v137 = *(v114 + 176);
        v138 = *(v114 + 208);
        *(v12 + 336) = *(v114 + 192);
        *(v12 + 352) = v138;
        *(v12 + 304) = v136;
        *(v12 + 320) = v137;
        v139 = *(v114 + 224);
        v140 = *(v114 + 240);
        v141 = *(v114 + 272);
        *(v12 + 400) = *(v114 + 256);
        *(v12 + 416) = v141;
        *(v12 + 368) = v139;
        *(v12 + 384) = v140;
        *v115 = v371;
        *(v114 + 192) = v467;
        *(v114 + 208) = v499;
        *(v114 + 160) = v403;
        *(v114 + 176) = v435;
        *(v114 + 256) = v595;
        *(v114 + 272) = v627;
        *(v114 + 224) = v531;
        *(v114 + 240) = v563;
        if (*v328 > *(v114 + 280))
        {
          v368 = *v115;
          v464 = *(v114 + 192);
          v496 = *(v114 + 208);
          v400 = *(v114 + 160);
          v432 = *(v114 + 176);
          v592 = *(v114 + 256);
          v624 = *(v114 + 272);
          v528 = *(v114 + 224);
          v560 = *(v114 + 240);
          *v115 = *v11;
          v142 = *(a2 - 26);
          v143 = *(a2 - 25);
          v144 = *(a2 - 23);
          *(v114 + 192) = *(a2 - 24);
          *(v114 + 208) = v144;
          *(v114 + 160) = v142;
          *(v114 + 176) = v143;
          v145 = *(a2 - 22);
          v146 = *(a2 - 21);
          v147 = *(a2 - 19);
          *(v114 + 256) = *(a2 - 20);
          *(v114 + 272) = v147;
          *(v114 + 224) = v145;
          *(v114 + 240) = v146;
LABEL_47:
          *v11 = v368;
          *(a2 - 24) = v464;
          *(a2 - 23) = v496;
          *(a2 - 26) = v400;
          *(a2 - 25) = v432;
          *(a2 - 20) = v592;
          *(a2 - 19) = v624;
          *(a2 - 22) = v528;
          *(a2 - 21) = v560;
        }
      }

      v148 = *(v16 + 136);
      v149 = *(v114 + 280);
      if (v148 <= *(v69 + 136))
      {
        if (v149 > v148)
        {
          v373 = *v16;
          v469 = *(v16 + 48);
          v501 = *(v16 + 64);
          v405 = *(v16 + 16);
          v437 = *(v16 + 32);
          v597 = *(v16 + 112);
          v629 = *(v16 + 128);
          v533 = *(v16 + 80);
          v565 = *(v16 + 96);
          v154 = *(v114 + 192);
          *(v16 + 32) = *(v114 + 176);
          *(v16 + 48) = v154;
          v155 = *(v114 + 272);
          *(v16 + 112) = *(v114 + 256);
          *(v16 + 128) = v155;
          v156 = *(v114 + 240);
          *(v16 + 80) = *(v114 + 224);
          *(v16 + 96) = v156;
          *(v16 + 64) = *(v114 + 208);
          v157 = *(v114 + 160);
          *v16 = *v115;
          *(v16 + 16) = v157;
          *v115 = v373;
          *(v114 + 192) = v469;
          *(v114 + 208) = v501;
          *(v114 + 160) = v405;
          *(v114 + 176) = v437;
          *(v114 + 256) = v597;
          *(v114 + 272) = v629;
          *(v114 + 224) = v533;
          *(v114 + 240) = v565;
          if (*(v16 + 136) > *(v69 + 136))
          {
            v374 = *v69;
            v470 = *(v69 + 48);
            v502 = *(v69 + 64);
            v406 = *(v69 + 16);
            v438 = *(v69 + 32);
            v598 = *(v69 + 112);
            v630 = *(v69 + 128);
            v534 = *(v69 + 80);
            v566 = *(v69 + 96);
            v158 = *(v16 + 48);
            *(v69 + 32) = *(v16 + 32);
            *(v69 + 48) = v158;
            v159 = *(v16 + 128);
            *(v69 + 112) = *(v16 + 112);
            *(v69 + 128) = v159;
            v160 = *(v16 + 96);
            *(v69 + 80) = *(v16 + 80);
            *(v69 + 96) = v160;
            *(v69 + 64) = *(v16 + 64);
            v161 = *(v16 + 16);
            *v69 = *v16;
            *(v69 + 16) = v161;
            *v16 = v374;
            *(v16 + 48) = v470;
            *(v16 + 64) = v502;
            *(v16 + 16) = v406;
            *(v16 + 32) = v438;
            *(v16 + 112) = v598;
            *(v16 + 128) = v630;
            *(v16 + 80) = v534;
            *(v16 + 96) = v566;
          }
        }
      }

      else
      {
        if (v149 > v148)
        {
          v372 = *v69;
          v468 = *(v69 + 48);
          v500 = *(v69 + 64);
          v404 = *(v69 + 16);
          v436 = *(v69 + 32);
          v596 = *(v69 + 112);
          v628 = *(v69 + 128);
          v532 = *(v69 + 80);
          v564 = *(v69 + 96);
          v150 = *(v114 + 192);
          *(v69 + 32) = *(v114 + 176);
          *(v69 + 48) = v150;
          v151 = *(v114 + 272);
          *(v69 + 112) = *(v114 + 256);
          *(v69 + 128) = v151;
          v152 = *(v114 + 240);
          *(v69 + 80) = *(v114 + 224);
          *(v69 + 96) = v152;
          *(v69 + 64) = *(v114 + 208);
          v153 = *(v114 + 160);
          *v69 = *v115;
          *(v69 + 16) = v153;
          goto LABEL_56;
        }

        v375 = *v69;
        v471 = *(v69 + 48);
        v503 = *(v69 + 64);
        v407 = *(v69 + 16);
        v439 = *(v69 + 32);
        v599 = *(v69 + 112);
        v631 = *(v69 + 128);
        v535 = *(v69 + 80);
        v567 = *(v69 + 96);
        v162 = *(v16 + 48);
        *(v69 + 32) = *(v16 + 32);
        *(v69 + 48) = v162;
        v163 = *(v16 + 128);
        *(v69 + 112) = *(v16 + 112);
        *(v69 + 128) = v163;
        v164 = *(v16 + 96);
        *(v69 + 80) = *(v16 + 80);
        *(v69 + 96) = v164;
        *(v69 + 64) = *(v16 + 64);
        v165 = *(v16 + 16);
        *v69 = *v16;
        *(v69 + 16) = v165;
        *v16 = v375;
        *(v16 + 48) = v471;
        *(v16 + 64) = v503;
        *(v16 + 16) = v407;
        *(v16 + 32) = v439;
        *(v16 + 112) = v599;
        *(v16 + 128) = v631;
        *(v16 + 80) = v535;
        *(v16 + 96) = v567;
        if (*(v114 + 280) > *(v16 + 136))
        {
          v372 = *v16;
          v468 = *(v16 + 48);
          v500 = *(v16 + 64);
          v404 = *(v16 + 16);
          v436 = *(v16 + 32);
          v596 = *(v16 + 112);
          v628 = *(v16 + 128);
          v532 = *(v16 + 80);
          v564 = *(v16 + 96);
          v166 = *(v114 + 192);
          *(v16 + 32) = *(v114 + 176);
          *(v16 + 48) = v166;
          v167 = *(v114 + 272);
          *(v16 + 112) = *(v114 + 256);
          *(v16 + 128) = v167;
          v168 = *(v114 + 240);
          *(v16 + 80) = *(v114 + 224);
          *(v16 + 96) = v168;
          *(v16 + 64) = *(v114 + 208);
          v169 = *(v114 + 160);
          *v16 = *v115;
          *(v16 + 16) = v169;
LABEL_56:
          *v115 = v372;
          *(v114 + 192) = v468;
          *(v114 + 208) = v500;
          *(v114 + 160) = v404;
          *(v114 + 176) = v436;
          *(v114 + 256) = v596;
          *(v114 + 272) = v628;
          *(v114 + 224) = v532;
          *(v114 + 240) = v564;
        }
      }

      v376 = *v12;
      v472 = *(v12 + 48);
      v504 = *(v12 + 64);
      v408 = *(v12 + 16);
      v440 = *(v12 + 32);
      v600 = *(v12 + 112);
      v632 = *(v12 + 128);
      v536 = *(v12 + 80);
      v568 = *(v12 + 96);
      *v12 = *v16;
      v170 = *(v16 + 16);
      v171 = *(v16 + 32);
      v172 = *(v16 + 64);
      *(v12 + 48) = *(v16 + 48);
      *(v12 + 64) = v172;
      *(v12 + 16) = v170;
      *(v12 + 32) = v171;
      v173 = *(v16 + 80);
      v174 = *(v16 + 96);
      v175 = *(v16 + 128);
      *(v12 + 112) = *(v16 + 112);
      *(v12 + 128) = v175;
      *(v12 + 80) = v173;
      *(v12 + 96) = v174;
      *v16 = v376;
      *(v16 + 48) = v472;
      *(v16 + 64) = v504;
      *(v16 + 16) = v408;
      *(v16 + 32) = v440;
      result = v536;
      *(v16 + 112) = v600;
      *(v16 + 128) = v632;
      *(v16 + 80) = v536;
      *(v16 + 96) = v568;
      goto LABEL_58;
    }

    v25 = *(v12 + 136);
    if (v25 <= *(v16 + 136))
    {
      if (v17 > v25)
      {
        v360 = *v12;
        v456 = *(v12 + 48);
        v488 = *(v12 + 64);
        v392 = *(v12 + 16);
        v424 = *(v12 + 32);
        v584 = *(v12 + 112);
        v616 = *(v12 + 128);
        v520 = *(v12 + 80);
        v552 = *(v12 + 96);
        *v12 = *v9;
        v44 = *(a2 - 8);
        v45 = *(a2 - 7);
        v46 = *(a2 - 5);
        *(v12 + 48) = *(a2 - 6);
        *(v12 + 64) = v46;
        *(v12 + 16) = v44;
        *(v12 + 32) = v45;
        v47 = *(a2 - 4);
        v48 = *(a2 - 3);
        v49 = *(a2 - 1);
        *(v12 + 112) = *(a2 - 2);
        *(v12 + 128) = v49;
        *(v12 + 80) = v47;
        *(v12 + 96) = v48;
        *v9 = v360;
        *(a2 - 6) = v456;
        *(a2 - 5) = v488;
        *(a2 - 8) = v392;
        *(a2 - 7) = v424;
        result = v520;
        *(a2 - 2) = v584;
        *(a2 - 1) = v616;
        *(a2 - 4) = v520;
        *(a2 - 3) = v552;
        if (*(v12 + 136) > *(v16 + 136))
        {
          v361 = *v16;
          v457 = *(v16 + 48);
          v489 = *(v16 + 64);
          v393 = *(v16 + 16);
          v425 = *(v16 + 32);
          v585 = *(v16 + 112);
          v617 = *(v16 + 128);
          v521 = *(v16 + 80);
          v553 = *(v16 + 96);
          *v16 = *v12;
          v50 = *(v12 + 16);
          v51 = *(v12 + 32);
          v52 = *(v12 + 64);
          *(v16 + 48) = *(v12 + 48);
          *(v16 + 64) = v52;
          *(v16 + 16) = v50;
          *(v16 + 32) = v51;
          v53 = *(v12 + 80);
          v54 = *(v12 + 96);
          v55 = *(v12 + 128);
          *(v16 + 112) = *(v12 + 112);
          *(v16 + 128) = v55;
          *(v16 + 80) = v53;
          *(v16 + 96) = v54;
          *v12 = v361;
          *(v12 + 48) = v457;
          *(v12 + 64) = v489;
          *(v12 + 16) = v393;
          *(v12 + 32) = v425;
          result = v521;
          *(v12 + 112) = v585;
          *(v12 + 128) = v617;
          *(v12 + 80) = v521;
          *(v12 + 96) = v553;
        }
      }

      goto LABEL_58;
    }

    if (v17 > v25)
    {
      v357 = *v16;
      v453 = *(v16 + 48);
      v485 = *(v16 + 64);
      v389 = *(v16 + 16);
      v421 = *(v16 + 32);
      v581 = *(v16 + 112);
      v613 = *(v16 + 128);
      v517 = *(v16 + 80);
      v549 = *(v16 + 96);
      *v16 = *v9;
      v26 = *(a2 - 8);
      v27 = *(a2 - 7);
      v28 = *(a2 - 5);
      *(v16 + 48) = *(a2 - 6);
      *(v16 + 64) = v28;
      *(v16 + 16) = v26;
      *(v16 + 32) = v27;
      v29 = *(a2 - 4);
      v30 = *(a2 - 3);
      v31 = *(a2 - 1);
      *(v16 + 112) = *(a2 - 2);
      *(v16 + 128) = v31;
      *(v16 + 80) = v29;
      *(v16 + 96) = v30;
LABEL_35:
      *v9 = v357;
      *(a2 - 6) = v453;
      *(a2 - 5) = v485;
      *(a2 - 8) = v389;
      *(a2 - 7) = v421;
      result = v517;
      *(a2 - 2) = v581;
      *(a2 - 1) = v613;
      *(a2 - 4) = v517;
      *(a2 - 3) = v549;
      goto LABEL_58;
    }

    v366 = *v16;
    v462 = *(v16 + 48);
    v494 = *(v16 + 64);
    v398 = *(v16 + 16);
    v430 = *(v16 + 32);
    v590 = *(v16 + 112);
    v622 = *(v16 + 128);
    v526 = *(v16 + 80);
    v558 = *(v16 + 96);
    *v16 = *v12;
    v90 = *(v12 + 16);
    v91 = *(v12 + 32);
    v92 = *(v12 + 64);
    *(v16 + 48) = *(v12 + 48);
    *(v16 + 64) = v92;
    *(v16 + 16) = v90;
    *(v16 + 32) = v91;
    v93 = *(v12 + 80);
    v94 = *(v12 + 96);
    v95 = *(v12 + 128);
    *(v16 + 112) = *(v12 + 112);
    *(v16 + 128) = v95;
    *(v16 + 80) = v93;
    *(v16 + 96) = v94;
    *v12 = v366;
    *(v12 + 48) = v462;
    *(v12 + 64) = v494;
    *(v12 + 16) = v398;
    *(v12 + 32) = v430;
    result = v526;
    *(v12 + 112) = v590;
    *(v12 + 128) = v622;
    *(v12 + 80) = v526;
    *(v12 + 96) = v558;
    if (*(a2 - 2) > *(v12 + 136))
    {
      v357 = *v12;
      v453 = *(v12 + 48);
      v485 = *(v12 + 64);
      v389 = *(v12 + 16);
      v421 = *(v12 + 32);
      v581 = *(v12 + 112);
      v613 = *(v12 + 128);
      v517 = *(v12 + 80);
      v549 = *(v12 + 96);
      *v12 = *v9;
      v96 = *(a2 - 8);
      v97 = *(a2 - 7);
      v98 = *(a2 - 5);
      *(v12 + 48) = *(a2 - 6);
      *(v12 + 64) = v98;
      *(v12 + 16) = v96;
      *(v12 + 32) = v97;
      v99 = *(a2 - 4);
      v100 = *(a2 - 3);
      v101 = *(a2 - 1);
      *(v12 + 112) = *(a2 - 2);
      *(v12 + 128) = v101;
      *(v12 + 80) = v99;
      *(v12 + 96) = v100;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = *(v12 + 136);
LABEL_61:
      v176 = 0;
      v329 = *v12;
      v338 = *(v12 + 48);
      v341 = *(v12 + 64);
      v332 = *(v12 + 16);
      v335 = *(v12 + 32);
      v353 = *(v12 + 128);
      v347 = *(v12 + 96);
      v350 = *(v12 + 112);
      v344 = *(v12 + 80);
      v177 = *(v12 + 140);
      do
      {
        v178 = *(v12 + v176 + 280);
        v176 += 144;
      }

      while (v178 > result.n128_f32[0]);
      v179 = v12 + v176;
      v180 = a2;
      if (v176 == 144)
      {
        v183 = a2;
        while (v179 < v183)
        {
          v181 = v183 - 36;
          v184 = *(v183 - 2);
          v183 -= 36;
          if (v184 > result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v181 = v183;
      }

      else
      {
        do
        {
          v181 = v180 - 36;
          v182 = *(v180 - 2);
          v180 -= 36;
        }

        while (v182 <= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v179;
      if (v179 < v181)
      {
        v185 = v181;
        do
        {
          v377 = *v12;
          v473 = *(v12 + 48);
          v505 = *(v12 + 64);
          v409 = *(v12 + 16);
          v441 = *(v12 + 32);
          v601 = *(v12 + 112);
          v633 = *(v12 + 128);
          v537 = *(v12 + 80);
          v569 = *(v12 + 96);
          *v12 = *v185;
          v186 = *(v185 + 1);
          v187 = *(v185 + 2);
          v188 = *(v185 + 4);
          *(v12 + 48) = *(v185 + 3);
          *(v12 + 64) = v188;
          *(v12 + 16) = v186;
          *(v12 + 32) = v187;
          v189 = *(v185 + 5);
          v190 = *(v185 + 6);
          v191 = *(v185 + 8);
          *(v12 + 112) = *(v185 + 7);
          *(v12 + 128) = v191;
          *(v12 + 80) = v189;
          *(v12 + 96) = v190;
          *v185 = v377;
          *(v185 + 3) = v473;
          *(v185 + 4) = v505;
          *(v185 + 1) = v409;
          *(v185 + 2) = v441;
          *(v185 + 7) = v601;
          *(v185 + 8) = v633;
          *(v185 + 5) = v537;
          *(v185 + 6) = v569;
          do
          {
            v192 = *(v12 + 280);
            v12 += 144;
          }

          while (v192 > result.n128_f32[0]);
          do
          {
            v193 = *(v185 - 2);
            v185 -= 36;
          }

          while (v193 <= result.n128_f32[0]);
        }

        while (v12 < v185);
      }

      v194 = (v12 - 144);
      if (v12 - 144 != a1)
      {
        *a1 = *v194;
        v195 = *(v12 - 128);
        v196 = *(v12 - 112);
        v197 = *(v12 - 80);
        *(a1 + 48) = *(v12 - 96);
        *(a1 + 64) = v197;
        *(a1 + 16) = v195;
        *(a1 + 32) = v196;
        v198 = *(v12 - 64);
        v199 = *(v12 - 48);
        v200 = *(v12 - 16);
        *(a1 + 112) = *(v12 - 32);
        *(a1 + 128) = v200;
        *(a1 + 80) = v198;
        *(a1 + 96) = v199;
      }

      *v194 = v329;
      *(v12 - 96) = v338;
      *(v12 - 80) = v341;
      *(v12 - 128) = v332;
      *(v12 - 112) = v335;
      *(v12 - 16) = v353;
      *(v12 - 48) = v347;
      *(v12 - 32) = v350;
      *(v12 - 64) = v344;
      *(v12 - 8) = result.n128_u32[0];
      *(v12 - 4) = v177;
      if (v179 < v181)
      {
        goto LABEL_82;
      }

      v201 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *>(a1, (v12 - 144));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *>(v12, a2))
      {
        a2 = (v12 - 144);
        if (!v201)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v201)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,false>(a1, (v12 - 144), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = *(v12 + 136);
      if (*(v12 - 8) > result.n128_f32[0])
      {
        goto LABEL_61;
      }

      v330 = *v12;
      v339 = *(v12 + 48);
      v342 = *(v12 + 64);
      v333 = *(v12 + 16);
      v336 = *(v12 + 32);
      v354 = *(v12 + 128);
      v348 = *(v12 + 96);
      v351 = *(v12 + 112);
      v345 = *(v12 + 80);
      if (result.n128_f32[0] <= *(a2 - 2))
      {
        v204 = v12 + 144;
        do
        {
          v12 = v204;
          if (v204 >= a2)
          {
            break;
          }

          v205 = *(v204 + 136);
          v204 += 144;
        }

        while (result.n128_f32[0] <= v205);
      }

      else
      {
        v202 = v12;
        do
        {
          v12 = v202 + 144;
          v203 = *(v202 + 280);
          v202 += 144;
        }

        while (result.n128_f32[0] <= v203);
      }

      v206 = a2;
      if (v12 < a2)
      {
        v207 = a2;
        do
        {
          v206 = v207 - 36;
          v208 = *(v207 - 2);
          v207 -= 36;
        }

        while (result.n128_f32[0] > v208);
      }

      v209 = *(a1 + 140);
      while (v12 < v206)
      {
        v378 = *v12;
        v474 = *(v12 + 48);
        v506 = *(v12 + 64);
        v410 = *(v12 + 16);
        v442 = *(v12 + 32);
        v602 = *(v12 + 112);
        v634 = *(v12 + 128);
        v538 = *(v12 + 80);
        v570 = *(v12 + 96);
        *v12 = *v206;
        v210 = *(v206 + 1);
        v211 = *(v206 + 2);
        v212 = *(v206 + 4);
        *(v12 + 48) = *(v206 + 3);
        *(v12 + 64) = v212;
        *(v12 + 16) = v210;
        *(v12 + 32) = v211;
        v213 = *(v206 + 5);
        v214 = *(v206 + 6);
        v215 = *(v206 + 8);
        *(v12 + 112) = *(v206 + 7);
        *(v12 + 128) = v215;
        *(v12 + 80) = v213;
        *(v12 + 96) = v214;
        *v206 = v378;
        *(v206 + 3) = v474;
        *(v206 + 4) = v506;
        *(v206 + 1) = v410;
        *(v206 + 2) = v442;
        *(v206 + 7) = v602;
        *(v206 + 8) = v634;
        *(v206 + 5) = v538;
        *(v206 + 6) = v570;
        do
        {
          v216 = *(v12 + 280);
          v12 += 144;
        }

        while (result.n128_f32[0] <= v216);
        do
        {
          v217 = *(v206 - 2);
          v206 -= 36;
        }

        while (result.n128_f32[0] > v217);
      }

      v218 = (v12 - 144);
      if (v12 - 144 != a1)
      {
        *a1 = *v218;
        v219 = *(v12 - 128);
        v220 = *(v12 - 112);
        v221 = *(v12 - 80);
        *(a1 + 48) = *(v12 - 96);
        *(a1 + 64) = v221;
        *(a1 + 16) = v219;
        *(a1 + 32) = v220;
        v222 = *(v12 - 64);
        v223 = *(v12 - 48);
        v224 = *(v12 - 16);
        *(a1 + 112) = *(v12 - 32);
        *(a1 + 128) = v224;
        *(a1 + 80) = v222;
        *(a1 + 96) = v223;
      }

      a4 = 0;
      *v218 = v330;
      *(v12 - 96) = v339;
      *(v12 - 80) = v342;
      *(v12 - 128) = v333;
      *(v12 - 112) = v336;
      *(v12 - 16) = v354;
      *(v12 - 48) = v348;
      *(v12 - 32) = v351;
      *(v12 - 64) = v345;
      *(v12 - 8) = result.n128_u32[0];
      *(v12 - 4) = v209;
    }
  }

  result.n128_u32[0] = *(v12 + 280);
  v231 = *(a2 - 2);
  if (result.n128_f32[0] <= *(v12 + 136))
  {
    if (v231 > result.n128_f32[0])
    {
      v448 = *(v12 + 176);
      v480 = *(v12 + 192);
      v608 = *(v12 + 256);
      v640 = *(v12 + 272);
      v544 = *(v12 + 224);
      v576 = *(v12 + 240);
      v512 = *(v12 + 208);
      v384 = *(v12 + 144);
      v416 = *(v12 + 160);
      *(v12 + 144) = *v9;
      v302 = *(a2 - 8);
      v303 = *(a2 - 7);
      v304 = *(a2 - 5);
      *(v12 + 192) = *(a2 - 6);
      *(v12 + 208) = v304;
      *(v12 + 160) = v302;
      *(v12 + 176) = v303;
      v305 = *(a2 - 4);
      v306 = *(a2 - 3);
      v307 = *(a2 - 1);
      *(v12 + 256) = *(a2 - 2);
      *(v12 + 272) = v307;
      *(v12 + 224) = v305;
      *(v12 + 240) = v306;
      *v9 = v384;
      *(a2 - 6) = v480;
      *(a2 - 5) = v512;
      *(a2 - 8) = v416;
      *(a2 - 7) = v448;
      result = v544;
      *(a2 - 2) = v608;
      *(a2 - 1) = v640;
      *(a2 - 4) = v544;
      *(a2 - 3) = v576;
      result.n128_u32[0] = *(v12 + 280);
      if (result.n128_f32[0] > *(v12 + 136))
      {
        v385 = *v12;
        v481 = *(v12 + 48);
        v513 = *(v12 + 64);
        v417 = *(v12 + 16);
        v449 = *(v12 + 32);
        v609 = *(v12 + 112);
        v641 = *(v12 + 128);
        v545 = *(v12 + 80);
        v577 = *(v12 + 96);
        v308 = *(v12 + 192);
        *(v12 + 32) = *(v12 + 176);
        *(v12 + 48) = v308;
        v309 = *(v12 + 272);
        *(v12 + 112) = *(v12 + 256);
        *(v12 + 128) = v309;
        v310 = *(v12 + 240);
        *(v12 + 80) = *(v12 + 224);
        *(v12 + 96) = v310;
        *(v12 + 64) = *(v12 + 208);
        v311 = *(v12 + 160);
        *v12 = *(v12 + 144);
        *(v12 + 16) = v311;
        *(v12 + 240) = v577;
        *(v12 + 256) = v609;
        *(v12 + 272) = v641;
        *(v12 + 176) = v449;
        *(v12 + 192) = v481;
        *(v12 + 208) = v513;
        *(v12 + 224) = v545;
        result = v417;
        *(v12 + 144) = v385;
        *(v12 + 160) = v417;
      }
    }
  }

  else
  {
    if (v231 <= result.n128_f32[0])
    {
      v387 = *v12;
      v483 = *(v12 + 48);
      v515 = *(v12 + 64);
      v419 = *(v12 + 16);
      v451 = *(v12 + 32);
      v611 = *(v12 + 112);
      v643 = *(v12 + 128);
      v547 = *(v12 + 80);
      v579 = *(v12 + 96);
      v318 = *(v12 + 192);
      *(v12 + 32) = *(v12 + 176);
      *(v12 + 48) = v318;
      v319 = *(v12 + 272);
      *(v12 + 112) = *(v12 + 256);
      *(v12 + 128) = v319;
      v320 = *(v12 + 240);
      *(v12 + 80) = *(v12 + 224);
      *(v12 + 96) = v320;
      *(v12 + 64) = *(v12 + 208);
      v321 = *(v12 + 160);
      *v12 = *(v12 + 144);
      *(v12 + 16) = v321;
      *(v12 + 240) = v579;
      *(v12 + 256) = v611;
      *(v12 + 272) = v643;
      *(v12 + 176) = v451;
      *(v12 + 192) = v483;
      *(v12 + 208) = v515;
      *(v12 + 224) = v547;
      result = v419;
      *(v12 + 144) = v387;
      *(v12 + 160) = v419;
      result.n128_u32[0] = *(a2 - 2);
      if (result.n128_f32[0] <= *(v12 + 280))
      {
        return result;
      }

      v444 = *(v12 + 176);
      v476 = *(v12 + 192);
      v604 = *(v12 + 256);
      v636 = *(v12 + 272);
      v540 = *(v12 + 224);
      v572 = *(v12 + 240);
      v508 = *(v12 + 208);
      v380 = *(v12 + 144);
      v412 = *(v12 + 160);
      *(v12 + 144) = *v9;
      v322 = *(a2 - 8);
      v323 = *(a2 - 7);
      v324 = *(a2 - 5);
      *(v12 + 192) = *(a2 - 6);
      *(v12 + 208) = v324;
      *(v12 + 160) = v322;
      *(v12 + 176) = v323;
      v325 = *(a2 - 4);
      v326 = *(a2 - 3);
      v327 = *(a2 - 1);
      *(v12 + 256) = *(a2 - 2);
      *(v12 + 272) = v327;
      *(v12 + 224) = v325;
      *(v12 + 240) = v326;
    }

    else
    {
      v380 = *v12;
      v476 = *(v12 + 48);
      v508 = *(v12 + 64);
      v412 = *(v12 + 16);
      v444 = *(v12 + 32);
      v604 = *(v12 + 112);
      v636 = *(v12 + 128);
      v540 = *(v12 + 80);
      v572 = *(v12 + 96);
      *v12 = *v9;
      v232 = *(a2 - 8);
      v233 = *(a2 - 7);
      v234 = *(a2 - 5);
      *(v12 + 48) = *(a2 - 6);
      *(v12 + 64) = v234;
      *(v12 + 16) = v232;
      *(v12 + 32) = v233;
      v235 = *(a2 - 4);
      v236 = *(a2 - 3);
      v237 = *(a2 - 1);
      *(v12 + 112) = *(a2 - 2);
      *(v12 + 128) = v237;
      *(v12 + 80) = v235;
      *(v12 + 96) = v236;
    }

    *v9 = v380;
    *(a2 - 6) = v476;
    *(a2 - 5) = v508;
    *(a2 - 8) = v412;
    *(a2 - 7) = v444;
    result = v540;
    *(a2 - 2) = v604;
    *(a2 - 1) = v636;
    *(a2 - 4) = v540;
    *(a2 - 3) = v572;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,0>(float *a1, float *a2, float *a3, __int128 *a4)
{
  v4 = a2[34];
  v5 = a3[34];
  if (v4 <= a1[34])
  {
    if (v5 > v4)
    {
      v98 = *(a2 + 6);
      v105 = *(a2 + 7);
      v112 = *(a2 + 8);
      v70 = *(a2 + 2);
      v77 = *(a2 + 3);
      v84 = *(a2 + 4);
      v91 = *(a2 + 5);
      v56 = *a2;
      v63 = *(a2 + 4);
      *a2 = *a3;
      v12 = *(a3 + 1);
      v13 = *(a3 + 2);
      v14 = *(a3 + 4);
      *(a2 + 3) = *(a3 + 3);
      *(a2 + 4) = v14;
      *(a2 + 1) = v12;
      *(a2 + 2) = v13;
      v15 = *(a3 + 5);
      v16 = *(a3 + 6);
      v17 = *(a3 + 8);
      *(a2 + 7) = *(a3 + 7);
      *(a2 + 8) = v17;
      *(a2 + 5) = v15;
      *(a2 + 6) = v16;
      *(a3 + 6) = v98;
      *(a3 + 7) = v105;
      *(a3 + 8) = v112;
      *(a3 + 2) = v70;
      *(a3 + 3) = v77;
      *(a3 + 4) = v84;
      *(a3 + 5) = v91;
      result = v63;
      *a3 = v56;
      *(a3 + 1) = v63;
      if (a2[34] > a1[34])
      {
        v99 = *(a1 + 6);
        v106 = *(a1 + 7);
        v113 = *(a1 + 8);
        v71 = *(a1 + 2);
        v78 = *(a1 + 3);
        v85 = *(a1 + 4);
        v92 = *(a1 + 5);
        v57 = *a1;
        v64 = *(a1 + 4);
        *a1 = *a2;
        v19 = *(a2 + 1);
        v20 = *(a2 + 2);
        v21 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v21;
        *(a1 + 1) = v19;
        *(a1 + 2) = v20;
        v22 = *(a2 + 5);
        v23 = *(a2 + 6);
        v24 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v24;
        *(a1 + 5) = v22;
        *(a1 + 6) = v23;
        *(a2 + 6) = v99;
        *(a2 + 7) = v106;
        *(a2 + 8) = v113;
        *(a2 + 2) = v71;
        *(a2 + 3) = v78;
        *(a2 + 4) = v85;
        *(a2 + 5) = v92;
        result = v64;
        *a2 = v57;
        *(a2 + 1) = v64;
      }
    }
  }

  else
  {
    if (v5 > v4)
    {
      v97 = *(a1 + 6);
      v104 = *(a1 + 7);
      v111 = *(a1 + 8);
      v69 = *(a1 + 2);
      v76 = *(a1 + 3);
      v83 = *(a1 + 4);
      v90 = *(a1 + 5);
      v55 = *a1;
      v62 = *(a1 + 4);
      *a1 = *a3;
      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      v8 = *(a3 + 4);
      *(a1 + 3) = *(a3 + 3);
      *(a1 + 4) = v8;
      *(a1 + 1) = v6;
      *(a1 + 2) = v7;
      v9 = *(a3 + 5);
      v10 = *(a3 + 6);
      v11 = *(a3 + 8);
      *(a1 + 7) = *(a3 + 7);
      *(a1 + 8) = v11;
      *(a1 + 5) = v9;
      *(a1 + 6) = v10;
LABEL_9:
      *(a3 + 6) = v97;
      *(a3 + 7) = v104;
      *(a3 + 8) = v111;
      *(a3 + 2) = v69;
      *(a3 + 3) = v76;
      *(a3 + 4) = v83;
      *(a3 + 5) = v90;
      result = v62;
      *a3 = v55;
      *(a3 + 1) = v62;
      goto LABEL_10;
    }

    v100 = *(a1 + 6);
    v107 = *(a1 + 7);
    v114 = *(a1 + 8);
    v72 = *(a1 + 2);
    v79 = *(a1 + 3);
    v86 = *(a1 + 4);
    v93 = *(a1 + 5);
    v58 = *a1;
    v65 = *(a1 + 4);
    *a1 = *a2;
    v25 = *(a2 + 1);
    v26 = *(a2 + 2);
    v27 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v27;
    *(a1 + 1) = v25;
    *(a1 + 2) = v26;
    v28 = *(a2 + 5);
    v29 = *(a2 + 6);
    v30 = *(a2 + 8);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 8) = v30;
    *(a1 + 5) = v28;
    *(a1 + 6) = v29;
    *(a2 + 6) = v100;
    *(a2 + 7) = v107;
    *(a2 + 8) = v114;
    *(a2 + 2) = v72;
    *(a2 + 3) = v79;
    *(a2 + 4) = v86;
    *(a2 + 5) = v93;
    result = v65;
    *a2 = v58;
    *(a2 + 1) = v65;
    if (a3[34] > a2[34])
    {
      v97 = *(a2 + 6);
      v104 = *(a2 + 7);
      v111 = *(a2 + 8);
      v69 = *(a2 + 2);
      v76 = *(a2 + 3);
      v83 = *(a2 + 4);
      v90 = *(a2 + 5);
      v55 = *a2;
      v62 = *(a2 + 4);
      *a2 = *a3;
      v31 = *(a3 + 1);
      v32 = *(a3 + 2);
      v33 = *(a3 + 4);
      *(a2 + 3) = *(a3 + 3);
      *(a2 + 4) = v33;
      *(a2 + 1) = v31;
      *(a2 + 2) = v32;
      v34 = *(a3 + 5);
      v35 = *(a3 + 6);
      v36 = *(a3 + 8);
      *(a2 + 7) = *(a3 + 7);
      *(a2 + 8) = v36;
      *(a2 + 5) = v34;
      *(a2 + 6) = v35;
      goto LABEL_9;
    }
  }

LABEL_10:
  result.n128_u32[0] = *(a4 + 34);
  if (result.n128_f32[0] > a3[34])
  {
    v101 = *(a3 + 6);
    v108 = *(a3 + 7);
    v115 = *(a3 + 8);
    v73 = *(a3 + 2);
    v80 = *(a3 + 3);
    v87 = *(a3 + 4);
    v94 = *(a3 + 5);
    v59 = *a3;
    v66 = *(a3 + 1);
    *a3 = *a4;
    v37 = a4[1];
    v38 = a4[2];
    v39 = a4[4];
    *(a3 + 3) = a4[3];
    *(a3 + 4) = v39;
    *(a3 + 1) = v37;
    *(a3 + 2) = v38;
    v40 = a4[5];
    v41 = a4[6];
    v42 = a4[8];
    *(a3 + 7) = a4[7];
    *(a3 + 8) = v42;
    *(a3 + 5) = v40;
    *(a3 + 6) = v41;
    a4[6] = v101;
    a4[7] = v108;
    a4[8] = v115;
    a4[2] = v73;
    a4[3] = v80;
    a4[4] = v87;
    a4[5] = v94;
    result = v66;
    *a4 = v59;
    a4[1] = v66;
    result.n128_f32[0] = a3[34];
    if (result.n128_f32[0] > a2[34])
    {
      v102 = *(a2 + 6);
      v109 = *(a2 + 7);
      v116 = *(a2 + 8);
      v74 = *(a2 + 2);
      v81 = *(a2 + 3);
      v88 = *(a2 + 4);
      v95 = *(a2 + 5);
      v60 = *a2;
      v67 = *(a2 + 4);
      *a2 = *a3;
      v43 = *(a3 + 1);
      v44 = *(a3 + 2);
      v45 = *(a3 + 4);
      *(a2 + 3) = *(a3 + 3);
      *(a2 + 4) = v45;
      *(a2 + 1) = v43;
      *(a2 + 2) = v44;
      v46 = *(a3 + 5);
      v47 = *(a3 + 6);
      v48 = *(a3 + 8);
      *(a2 + 7) = *(a3 + 7);
      *(a2 + 8) = v48;
      *(a2 + 5) = v46;
      *(a2 + 6) = v47;
      *(a3 + 6) = v102;
      *(a3 + 7) = v109;
      *(a3 + 8) = v116;
      *(a3 + 2) = v74;
      *(a3 + 3) = v81;
      *(a3 + 4) = v88;
      *(a3 + 5) = v95;
      result = v67;
      *a3 = v60;
      *(a3 + 1) = v67;
      result.n128_f32[0] = a2[34];
      if (result.n128_f32[0] > a1[34])
      {
        v103 = *(a1 + 6);
        v110 = *(a1 + 7);
        v117 = *(a1 + 8);
        v75 = *(a1 + 2);
        v82 = *(a1 + 3);
        v89 = *(a1 + 4);
        v96 = *(a1 + 5);
        v61 = *a1;
        v68 = *(a1 + 4);
        *a1 = *a2;
        v49 = *(a2 + 1);
        v50 = *(a2 + 2);
        v51 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v51;
        *(a1 + 1) = v49;
        *(a1 + 2) = v50;
        v52 = *(a2 + 5);
        v53 = *(a2 + 6);
        v54 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v54;
        *(a1 + 5) = v52;
        *(a1 + 6) = v53;
        *(a2 + 6) = v103;
        *(a2 + 7) = v110;
        *(a2 + 8) = v117;
        *(a2 + 2) = v75;
        *(a2 + 3) = v82;
        *(a2 + 4) = v89;
        *(a2 + 5) = v96;
        result = v68;
        *a2 = v61;
        *(a2 + 1) = v68;
      }
    }
  }

  return result;
}