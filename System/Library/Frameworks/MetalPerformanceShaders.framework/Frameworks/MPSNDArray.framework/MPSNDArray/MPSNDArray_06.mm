void sub_239A698A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20)
{
  if (__p)
  {
    operator delete(__p);
    if (!a20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!a20)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::find<void *>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v6)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v13 = result[1];
      if (v13 == v6)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::piecewise_construct_t const&<>>(float *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = HIDWORD(*a2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = *(a1 + 2);
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v12[1];
      if (v14 == v7)
      {
        if (v12[2] == v4)
        {
          return v12;
        }
      }

      else if ((v14 & (*&v8 - 1)) != v10)
      {
        goto LABEL_23;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (v12[2] != v4)
  {
    goto LABEL_12;
  }

  return v12;
}

void std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke_0(uint64_t a1, void *a2)
{
  v3 = [a2 userDictionary];
  v4 = *(a1 + 32);

  return [v3 removeObjectForKey:v4];
}

void EncodeTextureMatrixMultiplication(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v443 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  if (v7)
  {
    v9 = *(a1 + 168);
  }

  else
  {
    v9 = *(a1 + 176);
  }

  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v326 = *(*(*(a1 + *MEMORY[0x277CD7370]) + 32) + 8);
  if (!v326)
  {
    if (*(a1 + 208) == 5)
    {
      v326 = *(a1 + 200);
    }

    else
    {
      v326 = 0;
    }
  }

  v307 = *(a1 + *MEMORY[0x277CD7350]);
  v318 = *(a1 + 192);
  v321 = a1;
  v323 = *(a1 + 184);
  v333 = [*(a4 + 232) graph];
  v10 = [v9 hasMinValue];
  v11 = [*(a4 + 232) inputTensorAtIndex:0];
  v12 = [*(a4 + 232) inputTensorAtIndex:1];
  v13 = 0;
  if (v10)
  {
    v13 = [*(a4 + 232) inputTensorAtIndex:2];
  }

  v339 = a4;
  v344 = [*(a4 + 232) outputTensorAtIndex:0];
  v14 = v11[4];
  v15 = v12[4];
  if (v13)
  {
    v16 = v13[4];
  }

  else
  {
    v16 = 0;
  }

  v337 = v10;
  v328 = a2;
  v17 = **(v333 + 64);
  v18 = *(*(v333 + 64) + 8);
  v19 = v18 - v17;
  if (v18 == v17)
  {
    v22 = -1;
    v23 = -1;
    v24 = -1;
LABEL_32:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_34;
  }

  v20 = 0;
  v21 = v19 >> 3;
  if (v21 <= 1)
  {
    v21 = 1;
  }

  v22 = -1;
  v23 = -1;
  v24 = -1;
  do
  {
    v25 = *(v17 + 8 * v20);
    if (v25 == v14)
    {
      v22 = v20;
    }

    if (v25 == v15)
    {
      v23 = v20;
    }

    if ((v337 & (v25 == v16)) != 0)
    {
      v24 = v20;
    }

    ++v20;
  }

  while (v21 != v20);
  if (v22 == -1 || v23 == -1)
  {
    goto LABEL_32;
  }

LABEL_34:
  v338 = *(v14 + 96);
  if (v338 != 2)
  {
    if (*(v15 + 96) == 2)
    {
      v30 = **(v333 + 64);
      if (*(*(v333 + 64) + 8) == v30)
      {
        goto LABEL_701;
      }

      v28 = *(*v30 + 76);
      v29 = v22;
      v22 = v23;
      if (!v337)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      LOWORD(v28) = -1;
      v29 = -1;
      v22 = -1;
      if (!v337)
      {
        goto LABEL_41;
      }
    }

LABEL_48:
    v32 = **(v333 + 64);
    if ((*(*(v333 + 64) + 8) - v32) > 0x10)
    {
      v31 = *(*(v32 + 16) + 76);
      v320 = v28;
      if (v338 != 2)
      {
        goto LABEL_50;
      }

LABEL_42:
      if (!v7 && MTLReportFailureTypeEnabled())
      {
        goto LABEL_346;
      }

      goto LABEL_51;
    }

LABEL_701:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = **(v333 + 64);
  if ((*(*(v333 + 64) + 8) - v27) <= 8)
  {
    goto LABEL_701;
  }

  v28 = *(*(v27 + 8) + 76);
  v29 = v23;
  if (v337)
  {
    goto LABEL_48;
  }

LABEL_41:
  LOWORD(v31) = -1;
  v320 = v28;
  if (v338 == 2)
  {
    goto LABEL_42;
  }

LABEL_50:
  if (!v8 && MTLReportFailureTypeEnabled())
  {
LABEL_346:
    MTLReportFailure();
  }

LABEL_51:
  v33 = *(v339 + 16);
  [v33 objectAtIndexedSubscript:v22];
  v34 = [v33 objectAtIndexedSubscript:v22];
  if ((*(v34 + *MEMORY[0x277CD73E8]) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v35 = [v33 objectAtIndexedSubscript:v22];
  v346 = *(v35 + *MEMORY[0x277CD7460]);
  v341 = [v33 objectAtIndexedSubscript:v29];
  if (v337)
  {
    v331 = [v33 objectAtIndexedSubscript:v24];
  }

  else
  {
    v331 = 0;
  }

  v343 = *(v339 + 208);
  v36 = v11[2];
  v38 = *v36;
  v37 = v36[1];
  if (v37 != v38)
  {
    if (((v37 - v38) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v39 = v12[2];
  v41 = *v39;
  v40 = v39[1];
  v319 = v31;
  if (v40 != v41)
  {
    if (((v40 - v41) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v42 = v344[2];
  v44 = *v42;
  v43 = v42[1];
  if (v43 != v44)
  {
    if (((v43 - v44) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*v11 >= 4uLL)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v11 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (*v12 >= 4uLL)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v12 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (*v344 >= 4uLL)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v344 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v331)
  {
    if (*v13 >= 4uLL && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v45 = v13[2];
    v47 = *v45;
    v46 = v45[1];
    if (v46 != v47)
    {
      if (((v46 - v47) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (*v13 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (MEMORY[0] != MEMORY[8] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v48 = MEMORY[0x277CD7410];
  if (v338 == 2)
  {
    if ((*(v341 + *MEMORY[0x277CD73D8]) != 1 || BYTE1(*(v341 + *MEMORY[0x277CD73D8]))) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v49 = *(v35 + *MEMORY[0x277CD73D8]);
    v50.i32[0] = v49;
    v50.i32[1] = BYTE1(v49);
    *&v49 = vmvn_s8(vceq_s32(vand_s8(v50, 0xFF000000FFLL), 0x100000000));
    if (((v49 | DWORD1(v49)) & 1) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v341 + *v48 + 4 * (*(v341 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v341 + *v48 + 4 * (*(v341 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v35 + *v48 + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v35 + *v48 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v341 + *v48 + 4 * (*(v341 + *MEMORY[0x277CD73D8]) & 0xF)) != *&v343[4 * (*&v343[*MEMORY[0x277CD73D8]] & 0xF) + *v48] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v35 + *v48 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) != *&v343[4 * (v343[*MEMORY[0x277CD73D8] + 1] & 0xF) + *v48] && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_372:
      MTLReportFailure();
    }
  }

  else
  {
    if ((*(v341 + *MEMORY[0x277CD73D8]) || BYTE1(*(v341 + *MEMORY[0x277CD73D8])) != 1) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v51 = *(v35 + *MEMORY[0x277CD73D8]);
    v52.i32[0] = v51;
    v52.i32[1] = BYTE1(v51);
    *&v51 = vmvn_s8(vceq_s32(vand_s8(v52, 0xFF000000FFLL), 1));
    if (((v51 | DWORD1(v51)) & 1) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v341 + *v48 + 4 * (*(v341 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v341 + *v48 + 4 * (*(v341 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v35 + *v48 + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v35 + *v48 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v341 + *v48 + 4 * (*(v341 + *MEMORY[0x277CD73D8] + 1) & 0xF)) != *&v343[4 * (v343[*MEMORY[0x277CD73D8] + 1] & 0xF) + *v48] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v35 + *v48 + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) != *&v343[4 * (*&v343[*MEMORY[0x277CD73D8]] & 0xF) + *v48] && MTLReportFailureTypeEnabled())
    {
      goto LABEL_372;
    }
  }

  if (*(v341 + *MEMORY[0x277CD73D8] + 2) != 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v53 = MEMORY[0x277CD73F0];
  if (*(v341 + *MEMORY[0x277CD73F0]) >= 4uLL && *(v341 + *v48 + 4 * (*(v341 + *MEMORY[0x277CD73D8] + 3) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v35 + *MEMORY[0x277CD73D8] + 2) != 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v35 + *v53) >= 4uLL && *(v35 + *v48 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 3) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[0] != *&v343[4 * (*&v343[*MEMORY[0x277CD73D8]] & 0xF) + *v48] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[8] != *&v343[4 * (v343[*MEMORY[0x277CD73D8] + 1] & 0xF) + *v48] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ([objc_msgSend(v346 objectAtIndexedSubscript:{0), "pixelFormat"}] >= 0xDE)
  {
    [objc_msgSend(v346 objectAtIndexedSubscript:{0), "pixelFormat"}];
  }

  if (([objc_msgSend(v346 objectAtIndexedSubscript:{0), "pixelFormat"}] < 0xDE || objc_msgSend(objc_msgSend(v346, "objectAtIndexedSubscript:", 0), "pixelFormat") >= 0xED) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v337)
  {
    if (*(v331 + *v48 + 4 * (*(v331 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v331 + *v48 + 4 * (*(v331 + *MEMORY[0x277CD73D8] + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v338 == 2)
  {
    v54 = 8;
  }

  else
  {
    v54 = 0;
  }

  if (v338 == 2)
  {
    v55 = 0;
  }

  else
  {
    v55 = 8;
  }

  v56 = *v54;
  v340 = *v55;
  v57 = MEMORY[0];
  v58 = *(v35 + *v48 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 2) & 0xF));
  if (v58 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v346 count];
  if ([v346 count] % v58 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v59 = [v346 count];
  v60 = v59 / v58;
  if (v59 >= v58)
  {
    v62 = 0;
    v61 = 0;
    v64 = MEMORY[0x277CD73D0];
    do
    {
      v62 += [objc_msgSend(v346 objectAtIndexedSubscript:{v61), "width"}];
      v63 = *(v35 + *v64);
      if (v62 >= v63)
      {
        break;
      }

      ++v61;
    }

    while (v61 < v60);
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v63 = *(v35 + *MEMORY[0x277CD73D0]);
  }

  if (v62 != v63 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v336 = v60 / (v61 + 1);
  v345 = v61 + 1;
  if (v60 % (v61 + 1) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v59 >= v58)
  {
    v65 = 0;
    v66 = 0;
    v68 = MEMORY[0x277CD73D0];
    do
    {
      v66 += [objc_msgSend(v346 objectAtIndexedSubscript:{v65), "height"}];
      v67 = *(v35 + 4 + *v68);
      if (v66 >= v67)
      {
        break;
      }

      v65 += v345;
    }

    while (v65 < v60);
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v67 = *(v35 + *MEMORY[0x277CD73D0] + 4);
  }

  if (v66 != v67 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v65 / v345 + 1 != v336 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v69 = [v346 objectAtIndexedSubscript:0];
  v70 = [v69 pixelFormat];
  v329 = [v69 width];
  v304 = v70;
  v334 = [v69 height];
  v71 = *(v341 + *MEMORY[0x277CD7410] + 4 * (*(v341 + *MEMORY[0x277CD73D8] + 2) & 0xF));
  [v346 count];
  v72 = v336 * v345;
  if ([v346 count] % (v336 * v345) && MTLReportFailureTypeEnabled())
  {
    v290 = v336 * v345;
    v292 = [v346 count];
    MTLReportFailure();
  }

  v73 = [v346 count];
  if (v71 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v74 = v73 / v72;
  if (v73 / v72 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v338 == 2)
  {
    MPSGetLinearOffsetBytes(v341, 0, 3, 0, 0);
    if (v340 != *(v341 + *MEMORY[0x277CD7410] + 4 * (*(v341 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v57 != *(v341 + *MEMORY[0x277CD7410] + 4 * (*(v341 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v57 != *(v35 + *MEMORY[0x277CD7410] + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v56 != *(v35 + *MEMORY[0x277CD7410] + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_398:
      MTLReportFailure();
    }
  }

  else
  {
    MPSGetLinearOffsetBytes(v341, 0, 3, 0, 0);
    if (v340 != *(v341 + *MEMORY[0x277CD7410] + 4 * (*(v341 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v57 != *(v341 + *MEMORY[0x277CD7410] + 4 * (*(v341 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v56 != *(v35 + *MEMORY[0x277CD7410] + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v57 != *(v35 + *MEMORY[0x277CD7410] + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_398;
    }
  }

  v75 = MEMORY[0x277CD73C8];
  if (*(v341 + *MEMORY[0x277CD73C8]) != 268435472 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v35 + *v75) != 268435472 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v76 = (v35 + *MEMORY[0x277CD7418]);
  v78 = *v76;
  v77 = v76[1];
  v79 = *MEMORY[0x277CD7408];
  v80 = *(v341 + v79);
  v316 = v80;
  if (v71 != 1)
  {
    v315 = *(v341 + *MEMORY[0x277CD73D0] + 4) * v80;
    v81 = v323;
    v82 = v329;
    v83 = v331;
    if (v331)
    {
      goto LABEL_152;
    }

LABEL_156:
    v317 = 0;
    v314 = 0;
    if (v81)
    {
      goto LABEL_157;
    }

    goto LABEL_159;
  }

  v315 = 0;
  v81 = v323;
  v82 = v329;
  v83 = v331;
  if (!v331)
  {
    goto LABEL_156;
  }

LABEL_152:
  v84 = *(v83 + v79);
  v314 = v84;
  if (v74 == 1)
  {
    v317 = 0;
    if (!v81)
    {
      goto LABEL_159;
    }

LABEL_157:
    v322 = [v81 normFusionType];
    v85 = [v81 hasScale];
    goto LABEL_160;
  }

  v317 = *(v83 + *MEMORY[0x277CD73D0] + 4) * v84;
  if (v81)
  {
    goto LABEL_157;
  }

LABEL_159:
  v85 = 0;
  v322 = 0;
LABEL_160:
  v86 = v78 % v82;
  v379 = __PAIR64__(v340, v56);
  v380 = v57 | 0x100000000;
  v87 = v77 % v334;
  v381 = v85;
  BYTE1(v381) = v85;
  v88 = v326;
  if (!v326)
  {
    if (v304 == 228)
    {
      if (qword_27DF85EE4 == v379 && unk_27DF85EEC == v380 && dword_27DF85EF4 == v381)
      {
        v117 = 0;
      }

      else if (qword_27DF85EF8 == v379 && unk_27DF85F00 == v380 && dword_27DF85F08 == v381)
      {
        v117 = 1;
      }

      else if (qword_27DF85F0C == v379 && unk_27DF85F14 == v380 && dword_27DF85F1C == v381)
      {
        v117 = 2;
      }

      else if (qword_27DF85F20 == v379 && unk_27DF85F28 == v380 && dword_27DF85F30 == v381)
      {
        v117 = 3;
      }

      else if (qword_27DF85F34 == v379 && unk_27DF85F3C == v380 && dword_27DF85F44 == v381)
      {
        v117 = 4;
      }

      else if (qword_27DF85F48 == v379 && unk_27DF85F50 == v380 && dword_27DF85F58 == v381)
      {
        v117 = 5;
      }

      else if (qword_27DF85F5C == v379 && unk_27DF85F64 == v380 && dword_27DF85F6C == v381)
      {
        v117 = 6;
      }

      else if (qword_27DF85F70 == v379 && unk_27DF85F78 == v380 && dword_27DF85F80 == v381)
      {
        v117 = 7;
      }

      else if (qword_27DF85F84 == v379 && unk_27DF85F8C == v380 && dword_27DF85F94 == v381)
      {
        v117 = 8;
      }

      else if (qword_27DF85F98 == v379 && unk_27DF85FA0 == v380 && dword_27DF85FA8 == v381)
      {
        v117 = 9;
      }

      else if (qword_27DF85FAC == v379 && unk_27DF85FB4 == v380 && dword_27DF85FBC == v381)
      {
        v117 = 10;
      }

      else if (qword_27DF85FC0 == v379 && unk_27DF85FC8 == v380 && dword_27DF85FD0 == v381)
      {
        v117 = 11;
      }

      else if (qword_27DF85FD4 == v379 && unk_27DF85FDC == v380 && dword_27DF85FE4 == v381)
      {
        v117 = 12;
      }

      else
      {
        if (qword_27DF85FE8 != v379 || unk_27DF85FF0 != v380 || dword_27DF85FF8 != v381)
        {
LABEL_273:
          v88 = 0;
          goto LABEL_401;
        }

        v117 = 13;
      }

      v88 = (&RhodesDParams8x5 + 60 * v117);
    }

    else
    {
      v118 = 0;
      v119 = &qword_27DF85FFC;
      while (1)
      {
        v120 = *v119 == v379 && v119[1] == v380;
        if (v120 && *(v119 + 4) == v381)
        {
          break;
        }

        v118 -= 60;
        v119 = (v119 + 20);
        if (v118 == -4020)
        {
          goto LABEL_273;
        }
      }

      v88 = (&RhodesDParams6x6 - v118);
    }

LABEL_401:
    v324 = v85;
    v313 = v78 % v82;
    v311 = v77 % v334;
    v312 = v78 / v82;
    v310 = v77 / v334;
    if (v340 > 8)
    {
      goto LABEL_404;
    }

LABEL_402:
    if (v88)
    {
      if (v88[12])
      {
        goto LABEL_404;
      }

      v309 = v88[10];
      v194 = 0x20 / v309;
      if (!v88[9])
      {
        v198 = 0;
        v195 = 0;
        v196 = 1;
        goto LABEL_580;
      }

      v195 = v88[11] != 0;
      v196 = 2;
LABEL_579:
      v198 = 1;
LABEL_580:
      v306 = v88[1];
      v303 = *v88;
      v199 = *v88 * v196 * v194 * v88[2];
      v200 = v88[4];
      if (v195)
      {
        v201 = 2;
      }

      else
      {
        v201 = 1;
      }

      if (!v198)
      {
        v201 = 0;
      }

      v332 = v88[2];
      v297 = v196;
      if (v56)
      {
        v202 = v199 - 1;
        if (v334 - v87 >= v56)
        {
          v203 = v56;
        }

        else
        {
          v203 = v334 - v87;
        }

        v204 = v203 % v199 != 0;
        v205 = (v202 + v203) / v199;
        if (v56 <= v203)
        {
          v188 = (v202 + v203) / v199;
        }

        else
        {
          v206 = 0;
          v188 = (v202 + v203) / v199;
          do
          {
            LODWORD(v207) = v203 + v334;
            if (v203 + v334 >= v56)
            {
              v207 = v56;
            }

            else
            {
              v207 = v207;
            }

            v204 |= v207 - v203 != (v207 - v203) / v199 * v199;
            if (!v203)
            {
              LOWORD(v205) = (v207 - v203 + v202) / v199;
            }

            v188 += (v207 - v203 + v202) / v199;
            --v206;
            LODWORD(v203) = v207;
          }

          while (v56 > v207);
        }
      }

      else
      {
        v188 = 0;
        LOWORD(v205) = 0;
      }

      v208 = v88[5] << v200 << v201;
      v327 = v88[3];
      v209 = (v88[3] * v306);
      if (v57)
      {
        v210 = v329 - v86 >= v57 ? v57 : v329 - v86;
        if (v57 > v210)
        {
          v211 = 0;
          do
          {
            LODWORD(v210) = v210 + v329;
            if (v210 >= v57)
            {
              v210 = v57;
            }

            else
            {
              v210 = v210;
            }

            --v211;
          }

          while (v57 > v210);
        }
      }

      v212 = 0;
      v213 = v208 * v309;
      v214 = (v340 + v209 - 1) / v209;
      v298 = v214;
      if (!((v188 * v199) >> 16) && !((v209 * v214) >> 16))
      {
        v212 = (v213 + v57 - 1) / v213 * v213 < 0x10000;
      }

      v215 = *MEMORY[0x277CD7418];
      v216 = *(v35 + v215);
      v217 = *(v35 + v215 + 16);
      v218 = *(v35 + v215 + 32);
      v219 = *MEMORY[0x277CD73D8];
      v220 = *(v35 + v219);
      v363 = *(v35 + v215 + 48);
      v362[2] = v218;
      v362[1] = v217;
      v362[0] = v216;
      v221 = v220 & 0xF;
      v222 = *(v362 + v221);
      v223 = *MEMORY[0x277CD7410];
      v224 = *(v35 + v223);
      v225 = *(v35 + v223 + 16);
      v226 = *(v35 + v223 + 32);
      v369 = *(v35 + v223 + 48);
      v368[2] = v226;
      v368[1] = v225;
      v368[0] = v224;
      v227 = (*(v368 + v221) + v222) < 0x10000 && v212;
      v361[3] = v363;
      v361[2] = v218;
      v361[1] = v217;
      v361[0] = v216;
      v228 = BYTE1(v220) & 0xF;
      v229 = *(v361 + v228);
      v367[3] = v369;
      v367[2] = v226;
      v367[1] = v225;
      v367[0] = v224;
      LODWORD(v228) = *(v367 + v228) + v229;
      v230 = (v341 + v215);
      v231 = *v230;
      v232 = v230[1];
      v233 = v230[2];
      v234 = *(v341 + v219);
      v366 = v230[3];
      v365[2] = v233;
      v365[1] = v232;
      v365[0] = v231;
      v235 = v234 & 0xF;
      LODWORD(v219) = *(v365 + v235);
      v236 = *(v341 + v223);
      v237 = *(v341 + v223 + 16);
      v238 = *(v341 + v223 + 32);
      v372 = *(v341 + v223 + 48);
      v371[2] = v238;
      v371[1] = v237;
      v371[0] = v236;
      LODWORD(v235) = v219 + *(v371 + v235);
      v364[3] = v366;
      v364[2] = v233;
      v364[1] = v232;
      v364[0] = v231;
      v239 = BYTE1(v234) & 0xF;
      v240 = *(v364 + v239);
      v370[3] = v372;
      v370[2] = v238;
      v370[1] = v237;
      v370[0] = v236;
      if ((v235 | v228 | (v240 + *(v370 + v239))) < 0x10000)
      {
        v241 = v227;
      }

      else
      {
        v241 = 0;
      }

      if (v241 == 1)
      {
        MPSGetUShortDivisorMagicNumber();
        v243 = vmovl_u16(v242);
      }

      else
      {
        MPSGetUIntDivisorMagicNumber();
      }

      v243.i32[3] = 0;
      v244 = v200;
      v245 = 1 << v200;
      v246 = &v343[*MEMORY[0x277CD7428]];
      v247 = *v246;
      v248 = v246[1];
      v249 = v246[2];
      v250 = v246[3];
      v251 = v246[4];
      v252 = v246[5];
      v253 = v246[6];
      v254 = v246[7];
      v255 = &v343[*MEMORY[0x277CD73D8]];
      v256 = v255[1] & 0xF;
      v360[7] = v254;
      v360[6] = v253;
      v360[5] = v252;
      v360[4] = v251;
      v360[3] = v250;
      v360[2] = v249;
      v360[1] = v248;
      v360[0] = v247;
      v257 = *(v360 + v256);
      v258 = v255[2] & 0xF;
      v359[7] = v254;
      v359[6] = v253;
      v359[5] = v252;
      v359[4] = v251;
      v359[3] = v250;
      v359[2] = v249;
      v359[1] = v248;
      v359[0] = v247;
      v259 = *(v359 + v258);
      v382 = v56;
      v383 = v340;
      v384 = v57;
      v385 = v320;
      v386 = v319;
      v387 = v315;
      v388 = v316;
      v389 = v317;
      v390 = v314;
      v391 = v257;
      v392 = v259;
      v393 = v329;
      v394 = v334;
      v395 = v61 + 1;
      v396 = v336;
      v397 = v243;
      v398 = v312;
      v399 = v310;
      v400 = v313;
      v401 = v311;
      v402 = v205;
      LOBYTE(v342) = v244;
      if (v244)
      {
        v260 = 4 * ((v309 + 31) / v309);
        v261 = v327 * v332;
        v262 = v303 * v297 * v261;
        v263 = (v245 >> 1) * v306;
        if (!v322)
        {
          v335 = v263 * v262 * v260;
LABEL_627:
          v330 = v298;
          goto LABEL_628;
        }

        v335 = v263 * (v262 + v261) * v260;
      }

      else
      {
        v335 = 0;
      }

      if ((v322 & 0xFFFFFFFD) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_627;
    }

    if (v56 <= 0x80)
    {
      v189 = v340;
      if (v340 >= 4)
      {
        v190 = 3;
      }

      else
      {
        v190 = 4;
      }

      v191 = 4;
      v192 = 1;
      v193 = 1;
      goto LABEL_578;
    }

    if (v56 <= 0x380)
    {
      v189 = v340;
      if (v340 >= 4)
      {
        v192 = 1;
      }

      else
      {
        v192 = 4;
      }

      v193 = 2;
      if (v340 < 4)
      {
        v191 = 2;
      }

      else
      {
        v191 = 3;
      }

      if (v340 >= 4)
      {
        v190 = 2;
      }

      else
      {
        v190 = 4;
      }

      goto LABEL_578;
    }

    if (v56 < 0xB81)
    {
      v191 = 1;
      v193 = 2;
      v192 = 4;
      v190 = 4;
LABEL_553:
      v189 = v340;
LABEL_578:
      v195 = 0;
      *&v429[0] = __PAIR64__(v189, v193);
      v194 = 1;
      *(&v429[0] + 1) = v192 | 0x100000000;
      *&v429[1] = __PAIR64__(v190, v191);
      *(&v429[1] + 8) = xmmword_239B0A890;
      *(&v429[2] + 1) = 32;
      v196 = 2;
      v309 = 32;
      v88 = v429;
      goto LABEL_579;
    }

    if (v56 > 0x1C00)
    {
      v189 = v340;
      v192 = 1;
      if (v340 == 1)
      {
        v191 = 2;
      }

      else
      {
        v191 = 1;
      }

      v190 = 2;
      v193 = 3;
      goto LABEL_578;
    }

    v189 = v340;
    if (v340 > 3)
    {
      switch(v340)
      {
        case 4:
          v191 = 0;
          v192 = 2;
          if (v57 < 0x381)
          {
            v190 = 2;
          }

          else
          {
            v190 = 3;
          }

          v193 = 2;
          goto LABEL_578;
        case 5:
          v190 = 4;
          v193 = 2;
          goto LABEL_577;
        case 6:
          v190 = 4;
          v193 = 2;
          v192 = 1;
          v191 = 1;
          goto LABEL_553;
      }
    }

    else
    {
      if ((v340 - 2) < 2)
      {
        v190 = 2;
        v193 = 4;
LABEL_577:
        v192 = 1;
        v191 = 1;
        goto LABEL_578;
      }

      if (v340 == 1)
      {
        v191 = 0;
        v190 = 3;
        v192 = 2;
        v193 = 2;
        goto LABEL_553;
      }
    }

    if (v340 < 7)
    {
      v191 = 0;
      v190 = 3;
      v193 = 2;
    }

    else
    {
      v191 = v340 == 7;
      v190 = 2;
      v193 = 4;
    }

    v192 = 1;
    goto LABEL_553;
  }

  v324 = v85;
  v313 = v78 % v82;
  v311 = v77 % v334;
  v312 = v78 / v82;
  v310 = v77 / v334;
  if (v340 <= 8)
  {
    goto LABEL_402;
  }

LABEL_404:
  v122 = *(v307 + 1472);
  if (v122 <= 21 && v88 != 0)
  {
    v128 = v88[6] != 0;
    v129 = v334;
LABEL_424:
    v124 = *v88;
    v125 = v88[1];
    v126 = v88[2];
    v127 = v88[3];
    goto LABEL_425;
  }

  v128 = v122 < 22;
  v129 = v334;
  if (v88)
  {
    goto LABEL_424;
  }

  if (v56 <= 0x800)
  {
    v124 = 2;
  }

  else
  {
    v124 = 4;
  }

  if (v122 < 18)
  {
    v197 = v57 < 0x4000 && v56 > 0x4000;
    v127 = 1;
    if (v197)
    {
      v126 = 1;
    }

    else
    {
      v126 = 2;
    }

    v125 = v124;
  }

  else
  {
    if (v122 > 21)
    {
      v125 = 1;
    }

    else
    {
      v125 = v124;
    }

    if (v122 <= 21)
    {
      v124 = 4;
    }

    else
    {
      v124 = 2;
    }

    if (v122 <= 21)
    {
      v126 = 1;
    }

    else
    {
      v126 = 2;
    }

    v127 = v126;
  }

LABEL_425:
  if (v122 <= 21)
  {
    v130 = 3;
  }

  else
  {
    v130 = 4;
  }

  v131 = v128 ^ 1;
  v132 = (v124 * v126) << v130 << (v128 ^ 1);
  v133 = (v127 * v125) << v130;
  if (v88)
  {
    v305 = v125;
    v308 = v124;
    v134 = v88[4];
    v135 = 3;
    if (v122 > 21)
    {
      v135 = 4;
    }

    v136 = v57 >> v135;
    v137 = v136 - 1;
    if (v136 <= 1)
    {
      goto LABEL_432;
    }

LABEL_470:
    v138 = 64 - __clz(v137);
    if (v88)
    {
      goto LABEL_433;
    }

    goto LABEL_471;
  }

  LODWORD(v140) = v124 << v130 << v131;
  if (v56 >= v132)
  {
    v140 = v132;
  }

  else
  {
    v140 = v140;
  }

  if (v56 < v132)
  {
    v126 = 1;
  }

  v141 = v56 >= v140;
  if (v56 >= v140)
  {
    v140 = v140;
  }

  else
  {
    v140 = ((2 * v126) << v130 << v131);
  }

  if (!v141)
  {
    v124 = 2;
  }

  if (v56 >= v140)
  {
    v132 = v140;
  }

  else
  {
    v132 = v126 << v130 << v131;
  }

  if (v56 < v140)
  {
    v142 = 1;
  }

  else
  {
    v142 = v124;
  }

  v308 = v142;
  LODWORD(v143) = v125 << v130;
  if (v340 >= v133)
  {
    v143 = v133;
  }

  else
  {
    v143 = v143;
  }

  if (v340 < v133)
  {
    v127 = 1;
  }

  v144 = v340 >= v143;
  if (v340 >= v143)
  {
    v143 = v143;
  }

  else
  {
    v143 = ((2 * v127) << v130);
  }

  if (v144)
  {
    v145 = v125;
  }

  else
  {
    v145 = 2;
  }

  if (v340 >= v143)
  {
    v133 = v143;
  }

  else
  {
    v133 = v127 << v130;
  }

  if (v340 < v143)
  {
    v146 = 1;
  }

  else
  {
    v146 = v145;
  }

  v305 = v146;
  v134 = 2 * ((v122 - 22) > 0xFFFFFFFB);
  v147 = 3;
  if (v122 > 21)
  {
    v147 = 4;
  }

  v136 = v57 >> v147;
  v137 = v136 - 1;
  if (v136 > 1)
  {
    goto LABEL_470;
  }

LABEL_432:
  v138 = (v136 == 0) << 63;
  if (v88)
  {
LABEL_433:
    v139 = v88[5];
    goto LABEL_479;
  }

LABEL_471:
  if (v57 > 0x4000)
  {
    v148 = 1;
  }

  else
  {
    v148 = 2;
  }

  if (v122 > 21)
  {
    v148 = 2;
  }

  if (v138 >= v148)
  {
    LOBYTE(v138) = v148;
  }

  v139 = 1 << v138;
LABEL_479:
  v342 = v134;
  v149 = v139 << v134 << v128;
  v301 = v128;
  v302 = v122;
  LODWORD(v332) = v126;
  LODWORD(v327) = v127;
  if (v56)
  {
    v150 = v132 - 1;
    v151 = v129 - (v77 % v334);
    if (v151 >= v56)
    {
      v152 = v56;
    }

    else
    {
      v152 = v151;
    }

    v153 = v152 % v132 != 0;
    v154 = (v150 + v152) / v132;
    if (v56 <= v152)
    {
      v157 = (v150 + v152) / v132;
    }

    else
    {
      v155 = v133;
      v156 = 0;
      v157 = (v150 + v152) / v132;
      do
      {
        LODWORD(v158) = v152 + v129;
        if (v152 + v129 >= v56)
        {
          v158 = v56;
        }

        else
        {
          v158 = v158;
        }

        v153 |= (v158 - v152) % v132 != 0;
        if (!v152)
        {
          LOWORD(v154) = (v158 - v152 + v150) / v132;
        }

        v157 += (v158 - v152 + v150) / v132;
        --v156;
        LODWORD(v152) = v158;
      }

      while (v56 > v158);
      v133 = v155;
    }

    v159 = v149 << v130;
    v160 = v86;
    if (!v57)
    {
      goto LABEL_505;
    }

    goto LABEL_496;
  }

  LOWORD(v154) = 0;
  v157 = 0;
  v159 = v149 << v130;
  v160 = v86;
  if (v57)
  {
LABEL_496:
    if (v329 - v160 >= v57)
    {
      v161 = v57;
    }

    else
    {
      v161 = (v329 - v160);
    }

    v162 = v161 % v159 != 0;
    if (v57 > v161)
    {
      v163 = 0;
      do
      {
        LODWORD(v164) = v161 + v329;
        if (v161 + v329 >= v57)
        {
          v164 = v57;
        }

        else
        {
          v164 = v164;
        }

        v162 |= (v164 - v161) % v159 != 0;
        --v163;
        LODWORD(v161) = v164;
      }

      while (v57 > v164);
    }
  }

LABEL_505:
  v165 = (v340 + v133 - 1) / v133;
  v295 = v128 ^ 1;
  v300 = v133;
  if (v88)
  {
    v167 = v88[13];
    v166 = v88[14];
  }

  else
  {
    if (v157 <= 4)
    {
      v167 = 1;
    }

    else
    {
      v167 = 2;
    }

    if (v165 <= 4)
    {
      v166 = 1;
    }

    else
    {
      v166 = 2;
    }
  }

  v296 = (v165 + v166 - 1) / v166;
  MPSGetUIntDivisorMagicNumber();
  v299 = v168;
  MPSGetUIntDivisorMagicNumber();
  v169 = &v343[*MEMORY[0x277CD7428]];
  v170 = *v169;
  v171 = v169[1];
  v172 = v169[2];
  v173 = v169[3];
  v174 = v169[4];
  v175 = v169[5];
  v176 = v169[6];
  v177 = v169[7];
  v178 = &v343[*MEMORY[0x277CD73D8]];
  v179 = v178[1] & 0xF;
  v358[7] = v177;
  v358[6] = v176;
  v358[5] = v175;
  v358[4] = v174;
  v358[3] = v173;
  v358[2] = v172;
  v358[1] = v171;
  v358[0] = v170;
  v180 = *(v358 + v179);
  v181 = v178[2] & 0xF;
  v357[7] = v177;
  v357[6] = v176;
  v357[5] = v175;
  v357[4] = v174;
  v357[3] = v173;
  v357[2] = v172;
  v357[1] = v171;
  v357[0] = v170;
  v182 = *(v357 + v181);
  v405 = v57;
  v406 = v320;
  v407 = v319;
  v408 = v315;
  v409 = v316;
  v410 = v317;
  v411 = v314;
  v412 = v180;
  v413 = v182;
  v414 = v329;
  v415 = v334;
  v416 = v61 + 1;
  v422 = __clz(v166) ^ 0x3F;
  v424 = v312;
  v425 = v310;
  v426 = v313;
  v427 = v311;
  v428 = v154;
  v183 = v299;
  HIDWORD(v183) = 0;
  HIDWORD(v184) = 0;
  v403 = v56;
  v404 = v340;
  v417 = v336;
  if (v302 <= 17)
  {
    v185 = 2 * v159 * v300;
  }

  else
  {
    v185 = 0;
  }

  v418 = v183;
  v419 = v184;
  v420 = v166;
  v421 = v167;
  v423 = 0x3000200010000;
  v332 = v332;
  v327 = v327;
  if (v342)
  {
    v186 = 8;
    if (v302 > 21)
    {
      v186 = 10;
    }

    if (v185 <= v305 * v308 * v332 * v327 * (((1 << v342) >> 1) << (v186 | v295)))
    {
      v185 = v305 * v308 * v332 * v327 * (((1 << v342) >> 1) << (v186 | v295));
    }
  }

  v335 = v185;
  if (v301 && *&v343[*MEMORY[0x277CD73C8]] == 268435472 && !*v178)
  {
    v187 = [*(v339 + 232) finalOp];
    (*(*v187 + 16))(v187);
  }

  if ((v322 != 0) | v324 & 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v330 = v166 * v167;
  v188 = v296 * ((v157 + v167 - 1) / v167);
LABEL_628:
  v264 = *&v343[*MEMORY[0x277CD73C8]];
  if (v264 > 285212703)
  {
    if (v264 <= 536870915)
    {
      if (v264 > 301989895)
      {
        if (v264 == 301989896)
        {
          v265 = 16;
          goto LABEL_672;
        }

        if (v264 == 335544328)
        {
          v265 = 17;
          goto LABEL_672;
        }
      }

      else
      {
        if (v264 == 285212704)
        {
          v265 = 13;
          goto LABEL_672;
        }

        if (v264 == 285212736)
        {
          v265 = 14;
          goto LABEL_672;
        }
      }
    }

    else if (v264 <= 536870927)
    {
      if (v264 == 536870916)
      {
        v265 = 0;
        goto LABEL_672;
      }

      if (v264 == 536870920)
      {
        v265 = 1;
        goto LABEL_672;
      }
    }

    else
    {
      switch(v264)
      {
        case 536870928:
          v265 = 2;
          goto LABEL_672;
        case 536870944:
          v265 = 3;
          goto LABEL_672;
        case 536870976:
          v265 = 4;
          goto LABEL_672;
      }
    }
  }

  else if (v264 <= 31)
  {
    if (v264 > 7)
    {
      if (v264 == 8)
      {
        v265 = 6;
        goto LABEL_672;
      }

      if (v264 == 16)
      {
        v265 = 7;
        goto LABEL_672;
      }
    }

    else
    {
      if (v264 == -1879048176)
      {
        v265 = 12;
        goto LABEL_672;
      }

      if (v264 == 4)
      {
        v265 = 5;
        goto LABEL_672;
      }
    }
  }

  else if (v264 <= 268435463)
  {
    if (v264 == 32)
    {
      v265 = 8;
      goto LABEL_672;
    }

    if (v264 == 64)
    {
      v265 = 9;
      goto LABEL_672;
    }
  }

  else
  {
    switch(v264)
    {
      case 268435464:
        v265 = 15;
        goto LABEL_672;
      case 268435472:
        v265 = 10;
        goto LABEL_672;
      case 268435488:
        v265 = 11;
        goto LABEL_672;
    }
  }

  v265 = 18;
LABEL_672:
  v266 = [v346 count];
  *&v267 = -1;
  *(&v267 + 1) = -1;
  v378 = v267;
  v375 = v267;
  v374 = v267;
  v377 = v267;
  v376 = v267;
  *&v378 = *(v333 + 72) | 0x10000;
  *(&v375 + 1) = v265;
  *&v374 = v266;
  v293 = *(v321 + *MEMORY[0x277CD7360]);
  v294 = *(v321 + *MEMORY[0x277CD7368]);
  v291 = *(v339 + 232);
  MPSLibrary::CreateUberShaderKey();
  [v328 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v291, v293, v294, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v328, v339, 3, 1, 0);
  v268 = [v346 count];
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v439 = 0u;
  v438 = 0u;
  v437 = 0u;
  v436 = 0u;
  v435 = 0u;
  v434 = 0u;
  v433 = 0u;
  v432 = 0u;
  v431 = 0u;
  v430 = 0u;
  memset(v429, 0, sizeof(v429));
  if (v266)
  {
    v269 = v268;
    for (i = 0; i < v266; i += v272)
    {
      if (v269 <= i)
      {
        v271 = 0;
        if (v266 - i >= 0x20)
        {
          v272 = 32;
        }

        else
        {
          v272 = v266 - i;
        }

        v273 = v272;
        if (!v272)
        {
          goto LABEL_683;
        }
      }

      else
      {
        if (v269 - i >= 0x20)
        {
          v271 = 32;
        }

        else
        {
          v271 = v269 - i;
        }

        [v346 getObjects:v429 range:{i, v271}];
        if (v266 - i >= 0x20)
        {
          v272 = 32;
        }

        else
        {
          v272 = v266 - i;
        }

        v273 = v272 - v271;
        if (v272 == v271)
        {
          goto LABEL_683;
        }
      }

      bzero(v429 + 8 * v271, 8 * v273);
LABEL_683:
      [v328 setTextures:v429 withRange:{i, v272}];
    }
  }

  objc_msgSend_setBytes_length_atIndex_(v328);
  [v328 setBuffer:objc_msgSend(v343 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v343, 0, 3, 0, 0) + *(v339 + 192), 26}];
  if ((atomic_load_explicit(&qword_27DF86830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86830))
  {
    unk_27DF868B8 = 0u;
    xmmword_27DF868A8 = 0u;
    dword_27DF868C8 = 1065353216;
    qword_27DF868D0 = 850045863;
    unk_27DF868D8 = 0u;
    unk_27DF868E8 = 0u;
    unk_27DF868F8 = 0u;
    qword_27DF86908 = 0;
    __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF868A8, &dword_2399F7000);
    __cxa_guard_release(&qword_27DF86830);
  }

  [v328 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF868A8 offset:objc_msgSend(objc_msgSend(a3 atIndex:{"commandQueue"), "device"), 0x10uLL, 0), 0, 25}];
  if (v324)
  {
    makeStrideBytes();
    v274 = *&v318[*MEMORY[0x277CD73D8]];
    v356[7] = v434;
    v356[6] = v433;
    v356[5] = v432;
    v356[4] = v431;
    v356[3] = v430;
    v356[2] = v429[2];
    v356[1] = v429[1];
    v356[0] = v429[0];
    v275 = v274 & 0xF;
    v276 = *(v356 + v275);
    v355[7] = v434;
    v355[6] = v433;
    v355[5] = v432;
    v355[4] = v431;
    v355[3] = v430;
    v355[1] = v429[1];
    v355[2] = v429[2];
    v355[0] = v429[0];
    v277 = BYTE1(v274) & 0xF;
    v278 = *(v355 + v277);
    v354[6] = v433;
    v354[7] = v434;
    v354[4] = v431;
    v354[5] = v432;
    v354[2] = v429[2];
    v354[3] = v430;
    v354[0] = v429[0];
    v354[1] = v429[1];
    v279 = BYTE2(v274) & 0xF;
    v280 = *(v354 + v279);
    v353[6] = v433;
    v353[7] = v434;
    v353[4] = v431;
    v353[5] = v432;
    v353[2] = v429[2];
    v353[3] = v430;
    v353[0] = v429[0];
    v353[1] = v429[1];
    v281 = BYTE3(v274) & 0xF;
    v282 = *(v353 + v281);
    v283 = &v318[*MEMORY[0x277CD7418]];
    v284 = *v283;
    v285 = *(v283 + 1);
    v286 = *(v283 + 3);
    v351 = *(v283 + 2);
    v352 = v286;
    v350[0] = v284;
    v350[1] = v285;
    v287 = *(v350 + v275);
    v349[2] = v351;
    v349[3] = v286;
    v349[0] = v284;
    v349[1] = v285;
    v288 = *(v349 + v277);
    v348[2] = v351;
    v348[3] = v286;
    v348[0] = v284;
    v348[1] = v285;
    v289 = *(v348 + v279);
    v347[2] = v351;
    v347[3] = v286;
    v347[0] = v284;
    v347[1] = v285;
    [v328 setBuffer:objc_msgSend(v318 offset:"buffer") atIndex:{v278 * v288 + v276 * v287 + v280 * v289 + v282 * *(v347 + v281) + objc_msgSend(v318, "offset"), 24}];
  }

  if (v335)
  {
    [v328 setThreadgroupMemoryLength:(v335 + 15) & 0xFFFFFFF0 atIndex:0];
  }

  [v328 setBuffer:0 offset:0 atIndex:27];
  *&v429[0] = v330;
  *(&v429[0] + 1) = v188;
  *&v429[1] = 1;
  v373[0] = (32 << v342);
  v373[1] = v327;
  v373[2] = v332;
  [v328 dispatchThreadgroups:v429 threadsPerThreadgroup:v373];
  MPSLibrary::ReleaseComputeState();
  operator delete(0);
  operator delete(0);
}

void sub_239A6DAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
    v65 = a62;
    if (!a62)
    {
LABEL_3:
      v66 = a63;
      if (!a63)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v65 = a62;
    if (!a62)
    {
      goto LABEL_3;
    }
  }

  operator delete(v65);
  v66 = a63;
  if (!a63)
  {
LABEL_4:
    v67 = a64;
    if (!a64)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v66);
  v67 = a64;
  if (!a64)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v67);
  _Unwind_Resume(a1);
}

uint64_t isI8GEMVSupported(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if ((!v1 || [*(a1 + 40) quantizationDataType] != 536870920 || -[MPSNDArrayQuantizationDescriptor quantizationScheme](v1, "quantizationScheme") != 1) && (!v2 || -[MPSNDArrayQuantizationDescriptor quantizationDataType](v2, "quantizationDataType") != 536870920 || -[MPSNDArrayQuantizationDescriptor quantizationScheme](v2, "quantizationScheme") != 1))
    {
      return 1;
    }

    v64 = 0;
    v5 = [*(*(a1 + 56) + 232) graph];
    if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v5, v1, &v68, v2, &v65, &v64, v6) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v7 = v65;
    v8 = [*(*(a1 + 56) + 16) objectAtIndexedSubscript:v68];
    v9 = [*(*(a1 + 56) + 16) objectAtIndexedSubscript:v7];
    if (v70 != -1 || v67 != -1)
    {
      return 0;
    }

    v10 = v9;
    v11 = v69;
    v12 = v66;
    if (v69 == -1)
    {
      v13 = 0;
      if (v66 != -1)
      {
LABEL_17:
        v14 = [*(*(a1 + 56) + 16) objectAtIndexedSubscript:v12];
        if (v11 == -1)
        {
          goto LABEL_31;
        }

LABEL_21:
        v15 = *MEMORY[0x277CD7410];
        v16 = *(v8 + v15);
        v17 = *(v8 + v15 + 16);
        v18 = *MEMORY[0x277CD73D8];
        v19 = *(v8 + v18);
        v20 = *(v8 + v15 + 32);
        v21 = *(v8 + v15 + 48);
        v62[2] = v20;
        v62[3] = v21;
        v62[0] = v16;
        v62[1] = v17;
        v22 = *(v62 + (v19 & 0xF));
        v23 = (v13 + v15);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = *(v13 + v18);
        v63[2] = v26;
        v63[3] = v27;
        v63[0] = v24;
        v63[1] = v25;
        if (v22 / *(v63 + (v28 & 0xF)) != 1 && ((v22 / *(v63 + (v28 & 0xF))) & 3) != 0)
        {
          return 0;
        }

        v61[0] = v16;
        v61[1] = v17;
        v61[2] = v20;
        v61[3] = v21;
        v30 = *(v61 + (BYTE1(v19) & 0xF));
        v60[0] = v24;
        v60[1] = v25;
        v60[2] = v26;
        v60[3] = v27;
        v31 = v30 / *(v60 + (BYTE1(v28) & 0xF));
        if (v31 != 1 && (v31 & 3) != 0)
        {
          return 0;
        }

LABEL_31:
        if (v12 != -1)
        {
          v33 = *MEMORY[0x277CD7410];
          v34 = *(v10 + v33);
          v35 = *(v10 + v33 + 16);
          v36 = *(v10 + v33 + 32);
          v37 = *(v10 + v33 + 48);
          v38 = *MEMORY[0x277CD73D8];
          v39 = *(v10 + v38);
          v55[2] = v36;
          v55[3] = v37;
          v55[0] = v34;
          v55[1] = v35;
          v40 = *(v55 + (BYTE1(v39) & 0xF));
          v41 = (v14 + v33);
          v42 = *v41;
          v43 = v41[1];
          v44 = v41[3];
          v45 = *(v14 + v38);
          v58 = v41[2];
          v59 = v44;
          v57[0] = v42;
          v57[1] = v43;
          v46 = *(v57 + (v45 & 0xF));
          v56[2] = v58;
          v56[3] = v44;
          v56[0] = v42;
          v56[1] = v43;
          v47 = *(v56 + (BYTE1(v45) & 0xF));
          if (v46 != 1 || v47 != 1)
          {
            v54[0] = v34;
            v54[1] = v35;
            v54[2] = v36;
            v54[3] = v37;
            v49 = *(v54 + (v39 & 0xF)) / v46;
            if (v49 != 1 && (v49 & 3) != 0)
            {
              return 0;
            }

            v51 = v40 / v47;
            if (v51 != 1 && (v51 & 3) != 0)
            {
              return 0;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v13 = [*(*(a1 + 56) + 16) objectAtIndexedSubscript:v69];
      if (v12 != -1)
      {
        goto LABEL_17;
      }
    }

    v14 = 0;
    if (v11 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  return 0;
}

uint64_t EncodeMatrixVectorMultiplyInt8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v408 = v8;
  v457 = v9;
  v609 = *MEMORY[0x277D85DE8];
  v440 = *(v7 + *MEMORY[0x277CD7350]);
  v10 = *(v7 + 168);
  v452 = v7;
  v11 = *(v7 + 176);
  v458 = v12;
  v13 = [*(v12 + 232) graph];
  v453 = v10;
  v448 = v11;
  if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v13, v10, &v604, v11, &v599, 0, v14) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = [*(v458 + 232) graph];
  v16 = **(v15 + 56);
  if (*(*(v15 + 56) + 8) == v16)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(*(*v16 + 24) + 8) == **(*v16 + 24))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v17 = v604;
  v18 = v599;
  v19 = [*(v458 + 16) objectAtIndexedSubscript:v604];
  v20 = [*(v458 + 16) objectAtIndexedSubscript:v18];
  v456 = *(v458 + 208);
  makeStrideBytes();
  v21 = *(v19 + *MEMORY[0x277CD73D8]);
  v531[7] = v541;
  v531[6] = v540;
  v531[5] = v539;
  v531[4] = v538;
  v531[3] = v537;
  v531[2] = v536;
  v531[1] = v535;
  v531[0] = v534;
  v22 = *(v531 + (v21 & 0xF));
  *&v23 = v22;
  v530[7] = v541;
  v530[6] = v540;
  v530[5] = v539;
  v530[4] = v538;
  v530[3] = v537;
  v530[2] = v536;
  v530[1] = v535;
  v530[0] = v534;
  v24 = *(v530 + (BYTE1(v21) & 0xF));
  *(&v23 + 1) = v24;
  v597 = v23;
  v529[7] = v541;
  v529[6] = v540;
  v529[5] = v539;
  v529[4] = v538;
  v529[3] = v537;
  v529[2] = v536;
  v529[1] = v535;
  v529[0] = v534;
  v25 = *(v529 + (BYTE2(v21) & 0xF));
  v598 = v25;
  makeStrideBytes();
  v26 = *(v20 + *MEMORY[0x277CD73D8]);
  v528[7] = v541;
  v528[6] = v540;
  v528[5] = v539;
  v528[4] = v538;
  v528[3] = v537;
  v528[2] = v536;
  v528[1] = v535;
  v528[0] = v534;
  v27 = *(v528 + (v26 & 0xF));
  *&v28 = v27;
  v527[7] = v541;
  v527[6] = v540;
  v527[5] = v539;
  v527[4] = v538;
  v527[3] = v537;
  v527[2] = v536;
  v527[1] = v535;
  v527[0] = v534;
  v29 = *(v527 + (BYTE1(v26) & 0xF));
  *(&v28 + 1) = v29;
  v595 = v28;
  v526[7] = v541;
  v526[6] = v540;
  v526[5] = v539;
  v526[4] = v538;
  v526[3] = v537;
  v526[2] = v536;
  v526[1] = v535;
  v526[0] = v534;
  v30 = *(v526 + (BYTE2(v26) & 0xF));
  v596 = v30;
  makeStrideBytes();
  v31 = *MEMORY[0x277CD73D8];
  v32 = *&v456[v31];
  v525[7] = v541;
  v525[6] = v540;
  v525[5] = v539;
  v525[4] = v538;
  v525[3] = v537;
  v525[2] = v536;
  v525[1] = v535;
  v525[0] = v534;
  v372 = *(v525 + (v32 & 0xF));
  v524[7] = v541;
  v524[6] = v540;
  v524[5] = v539;
  v524[4] = v538;
  v524[3] = v537;
  v524[2] = v536;
  v524[1] = v535;
  v524[0] = v534;
  v409 = *(v524 + (BYTE1(v32) & 0xF));
  v523[7] = v541;
  v523[6] = v540;
  v523[5] = v539;
  v523[4] = v538;
  v523[3] = v537;
  v523[2] = v536;
  v523[1] = v535;
  v523[0] = v534;
  v410 = *(v523 + (BYTE2(v32) & 0xF));
  v33 = *MEMORY[0x277CD7418];
  v34 = *(v19 + v33);
  v35 = *(v19 + v33 + 16);
  v36 = *(v19 + v33 + 32);
  v37 = *(v19 + v31);
  v38 = v37;
  v522 = *(v19 + v33 + 48);
  v521[2] = v36;
  v521[1] = v35;
  v521[0] = v34;
  v39 = *(v521 + (v37 & 0xF));
  v40 = BYTE1(v37);
  v520[3] = v522;
  v520[2] = v36;
  v520[1] = v35;
  v520[0] = v34;
  v41 = *(v520 + (BYTE1(v37) & 0xF));
  v519[3] = v522;
  v519[2] = v36;
  v519[1] = v35;
  v519[0] = v34;
  v42 = *(v519 + (BYTE2(v37) & 0xF));
  v43 = v24 * v41;
  v44 = *(v458 + 8);
  v45 = *(v44 + 80 * v17 + 64);
  v46 = *(v20 + v33);
  v47 = *(v20 + v33 + 16);
  v48 = *(v20 + v33 + 32);
  v49 = *(v20 + v31);
  v50 = v49;
  v518 = *(v20 + v33 + 48);
  v517[2] = v48;
  v517[1] = v47;
  v517[0] = v46;
  v51 = *(v517 + (v49 & 0xF));
  v52 = BYTE1(v49);
  v516[3] = v518;
  v516[2] = v48;
  v516[1] = v47;
  v516[0] = v46;
  v53 = *(v516 + (BYTE1(v49) & 0xF));
  v515[3] = v518;
  v515[2] = v48;
  v515[1] = v47;
  v515[0] = v46;
  v54 = *(v515 + (BYTE2(v49) & 0xF));
  v55 = v29 * v53;
  v56 = *(v44 + 80 * v18 + 64);
  v57 = &v456[v33];
  v58 = *v57;
  v59 = v57[1];
  v60 = v57[2];
  v61 = *&v456[v31];
  v62 = v61;
  v514 = v57[3];
  v513[2] = v60;
  v513[1] = v59;
  v513[0] = v58;
  v371 = *(v513 + (v61 & 0xF));
  v63 = BYTE1(v61);
  v512[3] = v514;
  v512[2] = v60;
  v512[1] = v59;
  v512[0] = v58;
  v370 = *(v512 + (BYTE1(v61) & 0xF));
  v64 = BYTE2(v61);
  v511[3] = v514;
  v511[2] = v60;
  v511[1] = v59;
  v511[0] = v58;
  v368 = *(v511 + (BYTE2(v61) & 0xF));
  v369 = *(v458 + 192);
  v65 = *MEMORY[0x277CD7410];
  v66 = *(v19 + v65);
  v67 = *(v19 + v65 + 16);
  v68 = *(v19 + v65 + 32);
  v69 = *(v19 + v65 + 48);
  v510[3] = v69;
  v510[2] = v68;
  v510[1] = v67;
  v510[0] = v66;
  v70 = *(v510 | (4 * (v40 == 1)));
  if (v70 >= *(v20 + v65 + 4 * (v50 != 0)))
  {
    v70 = *(v20 + v65 + 4 * (v50 != 0));
  }

  if (v40 >= v38)
  {
    if (v38)
    {
      v72 = 0;
    }

    else
    {
      v72 = v40 == 1;
    }

    v71 = !v72;
  }

  else
  {
    v71 = 1;
  }

  v420 = v71;
  v73 = v43 + v22 * v39;
  v74 = v55 + v27 * v51;
  v75 = v50;
  v76 = v50 != 0;
  if (v52 != 1)
  {
    v76 = 1;
  }

  if (v75 > v52)
  {
    v76 = 1;
  }

  v442 = v76;
  v77 = *MEMORY[0x277CD73C8];
  v78 = *(v20 + v77);
  if (v78 > 285212703)
  {
    v79 = v448;
    if (v78 <= 536870915)
    {
      if (v78 > 301989895)
      {
        if (v78 == 301989896)
        {
          v80 = 512;
          goto LABEL_62;
        }

        if (v78 == 335544328)
        {
          v80 = 544;
          goto LABEL_62;
        }
      }

      else
      {
        if (v78 == 285212704)
        {
          v80 = 416;
          goto LABEL_62;
        }

        if (v78 == 285212736)
        {
          v80 = 448;
          goto LABEL_62;
        }
      }
    }

    else if (v78 <= 536870927)
    {
      if (v78 == 536870916)
      {
        v390 = 0;
        goto LABEL_63;
      }

      if (v78 == 536870920)
      {
        v80 = 32;
        goto LABEL_62;
      }
    }

    else
    {
      switch(v78)
      {
        case 536870928:
          v80 = 64;
          goto LABEL_62;
        case 536870944:
          v80 = 96;
          goto LABEL_62;
        case 536870976:
          v80 = 128;
          goto LABEL_62;
      }
    }

LABEL_61:
    v80 = 576;
    goto LABEL_62;
  }

  v79 = v448;
  if (v78 <= 31)
  {
    if (v78 > 7)
    {
      if (v78 == 8)
      {
        v80 = 192;
        goto LABEL_62;
      }

      if (v78 == 16)
      {
        v80 = 224;
        goto LABEL_62;
      }
    }

    else
    {
      if (v78 == -1879048176)
      {
        v80 = 384;
        goto LABEL_62;
      }

      if (v78 == 4)
      {
        v80 = 160;
        goto LABEL_62;
      }
    }

    goto LABEL_61;
  }

  if (v78 <= 268435463)
  {
    if (v78 == 32)
    {
      v80 = 256;
      goto LABEL_62;
    }

    if (v78 == 64)
    {
      v80 = 288;
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (v78 == 268435464)
  {
    v80 = 480;
    goto LABEL_62;
  }

  if (v78 == 268435472)
  {
    v80 = 320;
    goto LABEL_62;
  }

  if (v78 != 268435488)
  {
    goto LABEL_61;
  }

  v80 = 352;
LABEL_62:
  v390 = v80;
LABEL_63:
  v81 = v73 + v25 * v42;
  v82 = v74 + v30 * v54;
  v83 = *(v19 + v77);
  if (v83 > 285212703)
  {
    if (v83 <= 536870915)
    {
      if (v83 > 301989895)
      {
        if (v83 == 301989896)
        {
          v84 = 0x4000;
          goto LABEL_107;
        }

        if (v83 == 335544328)
        {
          v84 = 17408;
          goto LABEL_107;
        }
      }

      else
      {
        if (v83 == 285212704)
        {
          v84 = 13312;
          goto LABEL_107;
        }

        if (v83 == 285212736)
        {
          v84 = 14336;
          goto LABEL_107;
        }
      }
    }

    else if (v83 <= 536870927)
    {
      if (v83 == 536870916)
      {
        v389 = 0;
        goto LABEL_108;
      }

      if (v83 == 536870920)
      {
        v84 = 1024;
        goto LABEL_107;
      }
    }

    else
    {
      switch(v83)
      {
        case 536870928:
          v84 = 2048;
          goto LABEL_107;
        case 536870944:
          v84 = 3072;
          goto LABEL_107;
        case 536870976:
          v84 = 4096;
          goto LABEL_107;
      }
    }

LABEL_106:
    v84 = 18432;
    goto LABEL_107;
  }

  if (v83 <= 31)
  {
    if (v83 > 7)
    {
      if (v83 == 8)
      {
        v84 = 6144;
        goto LABEL_107;
      }

      if (v83 == 16)
      {
        v84 = 7168;
        goto LABEL_107;
      }
    }

    else
    {
      if (v83 == -1879048176)
      {
        v84 = 12288;
        goto LABEL_107;
      }

      if (v83 == 4)
      {
        v84 = 5120;
        goto LABEL_107;
      }
    }

    goto LABEL_106;
  }

  if (v83 <= 268435463)
  {
    if (v83 == 32)
    {
      v84 = 0x2000;
      goto LABEL_107;
    }

    if (v83 == 64)
    {
      v84 = 9216;
      goto LABEL_107;
    }

    goto LABEL_106;
  }

  if (v83 == 268435464)
  {
    v84 = 15360;
    goto LABEL_107;
  }

  if (v83 == 268435472)
  {
    v84 = 10240;
    goto LABEL_107;
  }

  if (v83 != 268435488)
  {
    goto LABEL_106;
  }

  v84 = 11264;
LABEL_107:
  v389 = v84;
LABEL_108:
  v85 = v81 + v45;
  v86 = v82 + v56;
  v87 = *&v456[v77];
  if (v87 > 285212703)
  {
    if (v87 > 536870915)
    {
      if (v87 <= 536870927)
      {
        if (v87 == 536870916)
        {
          v388 = 0;
          v88 = v453;
          goto LABEL_154;
        }

        v88 = v453;
        if (v87 == 536870920)
        {
          v89 = 1;
          goto LABEL_153;
        }
      }

      else
      {
        if (v87 == 536870928)
        {
          v90 = 2;
          goto LABEL_149;
        }

        if (v87 == 536870944)
        {
          v90 = 3;
          goto LABEL_149;
        }

        v88 = v453;
        if (v87 == 536870976)
        {
          v89 = 4;
          goto LABEL_153;
        }
      }

LABEL_152:
      v89 = 18;
      goto LABEL_153;
    }

    if (v87 > 301989895)
    {
      if (v87 != 301989896)
      {
        v88 = v453;
        if (v87 == 335544328)
        {
          v89 = 17;
          goto LABEL_153;
        }

        goto LABEL_152;
      }

      v90 = 16;
    }

    else
    {
      if (v87 != 285212704)
      {
        v88 = v453;
        if (v87 == 285212736)
        {
          v89 = 14;
          goto LABEL_153;
        }

        goto LABEL_152;
      }

      v90 = 13;
    }

LABEL_149:
    v388 = v90;
    v88 = v453;
    goto LABEL_154;
  }

  if (v87 <= 31)
  {
    if (v87 > 7)
    {
      v88 = v453;
      if (v87 == 8)
      {
        v89 = 6;
        goto LABEL_153;
      }

      if (v87 == 16)
      {
        v89 = 7;
        goto LABEL_153;
      }

      goto LABEL_152;
    }

    if (v87 != -1879048176)
    {
      v88 = v453;
      if (v87 == 4)
      {
        v89 = 5;
        goto LABEL_153;
      }

      goto LABEL_152;
    }

    v90 = 12;
    goto LABEL_149;
  }

  if (v87 <= 268435463)
  {
    v88 = v453;
    if (v87 == 32)
    {
      v89 = 8;
      goto LABEL_153;
    }

    if (v87 == 64)
    {
      v89 = 9;
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  if (v87 == 268435464)
  {
    v90 = 15;
    goto LABEL_149;
  }

  if (v87 == 268435472)
  {
    v90 = 10;
    goto LABEL_149;
  }

  v88 = v453;
  if (v87 != 268435488)
  {
    goto LABEL_152;
  }

  v89 = 11;
LABEL_153:
  v388 = v89;
LABEL_154:
  v91 = *&v456[v65];
  v92 = *&v456[v65 + 16];
  v93 = *&v456[v65 + 32];
  v509 = *&v456[v65 + 48];
  v508[2] = v93;
  v508[1] = v92;
  v508[0] = v91;
  v94 = *(v508 + (v62 & 0xF));
  v507[3] = v509;
  v507[2] = v93;
  v507[1] = v92;
  v507[0] = v91;
  v95 = *(v507 + (v63 & 0xF));
  v506[0] = v66;
  v506[1] = v67;
  v506[2] = v68;
  v506[3] = v69;
  v445 = *(v506 + (v38 & 0xF));
  v96 = v94 == v70;
  v454 = v94 == v70;
  v505[3] = v509;
  v505[2] = v93;
  v505[1] = v92;
  v505[0] = v91;
  v405 = *(v505 + (v64 & 0xF));
  if (v94 == v70)
  {
    v97 = v95;
  }

  else
  {
    v97 = v94;
  }

  v444 = v97;
  if (v94 == v70)
  {
    v98 = v19;
  }

  else
  {
    v98 = v20;
  }

  v437 = v98;
  if (v94 == v70)
  {
    v99 = v20;
  }

  else
  {
    v99 = v19;
  }

  v100 = !v442;
  if (v94 == v70)
  {
    v101 = v86;
  }

  else
  {
    v101 = v85;
  }

  v378 = v101;
  if (v94 == v70)
  {
    v102 = v85;
  }

  else
  {
    v102 = v86;
  }

  v377 = v102;
  v103 = &v595;
  if (v94 == v70)
  {
    v104 = &v597;
  }

  else
  {
    v104 = &v595;
  }

  if (!v96)
  {
    v103 = &v597;
  }

  v593 = *v104;
  v594 = *(v104 + 2);
  v591 = *v103;
  v592 = *(v103 + 2);
  v441 = v99;
  v451 = v70;
  if (v88 && (v105 = [(MPSNDArrayAffineQuantizationDescriptor *)v88 hasMinValue], v79 = v448, v105))
  {
    v393 = 1;
  }

  else if (v79)
  {
    v393 = [(MPSNDArrayAffineQuantizationDescriptor *)v79 hasMinValue];
  }

  else
  {
    v393 = 0;
  }

  v416 = v607;
  v432 = v608;
  v417 = v601;
  v418 = v606;
  v106 = v600;
  v415 = v602;
  v431 = v603;
  v422 = v600;
  v367 = v605;
  if (v605 == -1)
  {
    v107 = 0;
    if (v606.i64[0] != -1)
    {
LABEL_182:
      v108 = [*(v458 + 16) objectAtIndexedSubscript:?];
      v106 = v422;
      if (v422 != -1)
      {
        goto LABEL_183;
      }

      goto LABEL_189;
    }
  }

  else
  {
    v107 = [*(v458 + 16) objectAtIndexedSubscript:?];
    v106 = v422;
    if (v418.i64[0] != -1)
    {
      goto LABEL_182;
    }
  }

  v108 = 0;
  if (v106 != -1)
  {
LABEL_183:
    v109 = [*(v458 + 16) objectAtIndexedSubscript:v106];
    if (v417.i64[0] != -1)
    {
      goto LABEL_184;
    }

    goto LABEL_190;
  }

LABEL_189:
  v109 = 0;
  if (v417.i64[0] != -1)
  {
LABEL_184:
    v449 = [*(v458 + 16) objectAtIndexedSubscript:?];
    if (v416 != -1)
    {
      goto LABEL_185;
    }

LABEL_191:
    v433 = 0;
    if (v432 == -1)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

LABEL_190:
  v449 = 0;
  if (v416 == -1)
  {
    goto LABEL_191;
  }

LABEL_185:
  v433 = [*(v458 + 16) objectAtIndexedSubscript:?];
  if (v432 != -1)
  {
LABEL_192:
    [*(v458 + 16) objectAtIndexedSubscript:v432];
  }

LABEL_193:
  if (v415 == -1)
  {
    v423 = 0;
    if (v431 == -1)
    {
      goto LABEL_198;
    }

    goto LABEL_197;
  }

  v423 = [*(v458 + 16) objectAtIndexedSubscript:?];
  if (v431 != -1)
  {
LABEL_197:
    [*(v458 + 16) objectAtIndexedSubscript:v431];
  }

LABEL_198:
  if (v107)
  {
    if (*(v19 + *MEMORY[0x277CD7410] + 4 * (*(v19 + *MEMORY[0x277CD73D8]) & 0xF)) % *(v107 + *MEMORY[0x277CD7410] + 4 * (*(v107 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    makeStrideBytes();
    v110 = MEMORY[0x277CD73D8];
    v111 = *MEMORY[0x277CD73D8];
    v112 = *(v107 + v111);
    v504[7] = v541;
    v504[6] = v540;
    v504[5] = v539;
    v504[4] = v538;
    v504[3] = v537;
    v504[2] = v536;
    v504[1] = v535;
    v504[0] = v534;
    v413 = *(v504 + (v112 & 0xF));
    v503[7] = v541;
    v503[6] = v540;
    v503[5] = v539;
    v503[4] = v538;
    v503[3] = v537;
    v503[2] = v536;
    v503[1] = v535;
    v503[0] = v534;
    v411 = *(v503 + (BYTE1(v112) & 0xF));
    v502[7] = v541;
    v502[6] = v540;
    v502[5] = v539;
    v502[4] = v538;
    v502[3] = v537;
    v502[2] = v536;
    v502[1] = v535;
    v502[0] = v534;
    v446 = *(v502 + (BYTE2(v112) & 0xF));
    v113 = *MEMORY[0x277CD7410];
    v114 = *(v19 + v113);
    v115 = *(v19 + v113 + 16);
    v116 = *(v19 + v113 + 32);
    v117 = *(v19 + v111);
    v501 = *(v19 + v113 + 48);
    v500[2] = v116;
    v500[1] = v115;
    v500[0] = v114;
    v438 = *(v500 + (v117 & 0xF));
    v118 = (v107 + v113);
    v119 = *v118;
    v120 = v118[1];
    v121 = v118[2];
    v122 = *(v107 + v111);
    v498 = v118[3];
    v497[2] = v121;
    v497[1] = v120;
    v497[0] = v119;
    v123 = *(v497 + (v122 & 0xF));
    v499[3] = v501;
    v499[2] = v116;
    v499[1] = v115;
    v499[0] = v114;
    v124 = *(v499 + (BYTE1(v117) & 0xF));
    v496[3] = v498;
    v496[2] = v121;
    v496[1] = v120;
    v496[0] = v119;
    v125 = *(v496 + (BYTE1(v122) & 0xF));
    v425 = *(v107 + *MEMORY[0x277CD73C8]);
    if (v433)
    {
      makeStrideBytes();
      v110 = MEMORY[0x277CD73D8];
      v126 = *(v433 + *MEMORY[0x277CD73D8]);
      v495[7] = v541;
      v495[6] = v540;
      v495[5] = v539;
      v495[4] = v538;
      v495[3] = v537;
      v495[2] = v536;
      v495[1] = v535;
      v495[0] = v534;
      v382 = *(v495 + (v126 & 0xF));
      v494[7] = v541;
      v494[6] = v540;
      v494[5] = v539;
      v494[4] = v538;
      v494[3] = v537;
      v494[2] = v536;
      v494[1] = v535;
      v494[0] = v534;
      v385 = *(v494 + (BYTE1(v126) & 0xF));
      v493[7] = v541;
      v493[6] = v540;
      v493[5] = v539;
      v493[4] = v538;
      v493[3] = v537;
      v493[2] = v536;
      v493[1] = v535;
      v493[0] = v534;
      v391 = *(v493 + (BYTE2(v126) & 0xF));
      v127 = *(v433 + *MEMORY[0x277CD73C8]);
      if (v425 != 536870920)
      {
        v341 = *(v433 + *MEMORY[0x277CD73C8]);
        v342 = MTLReportFailureTypeEnabled();
        v110 = MEMORY[0x277CD73D8];
        v127 = v341;
        if (v342)
        {
          MTLReportFailure();
          v110 = MEMORY[0x277CD73D8];
          v127 = v341;
        }
      }

      LOWORD(v128) = v127;
      if ((v127 & 0x10000000) == 0)
      {
        v343 = MTLReportFailureTypeEnabled();
        v110 = MEMORY[0x277CD73D8];
        if (v343)
        {
          MTLReportFailure();
          v110 = MEMORY[0x277CD73D8];
        }
      }

      v129 = *MEMORY[0x277CD7410];
      v130 = *(v433 + v129);
      v131 = *(v433 + v129 + 16);
      v132 = *(v433 + v129 + 32);
      v133 = *(v433 + v129 + 48);
      v134 = *v110;
      v135 = *(v433 + v134 + 1) & 0xF;
      v492[3] = v133;
      v492[2] = v132;
      v492[1] = v131;
      v492[0] = v130;
      v136 = *(v492 + v135);
      v137 = v454;
      if (v454)
      {
        v138 = 0;
      }

      else
      {
        v138 = v136;
      }

      if (!v454)
      {
        v136 = 0;
      }

      v406 = v136;
      v139 = *(v433 + v134);
      v491[3] = v133;
      v491[2] = v132;
      v491[1] = v131;
      v491[0] = v130;
      v140 = *(v107 + v129 + 4 * (*(v107 + v134) & 0xF)) / *(v491 + (v139 & 0xF));
      v403 = v140;
      if (v140 != 1)
      {
        if ((v140 & 3) != 0)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v137 = v454;
          v110 = MEMORY[0x277CD73D8];
        }

        else
        {
          v137 = v454;
        }
      }
    }

    else
    {
      v138 = 0;
      v406 = 0;
      v403 = 1;
      LOWORD(v128) = 32;
      v137 = v454;
    }

    v402 = v438 / v123;
    if (v137)
    {
      v160 = v107;
    }

    else
    {
      v160 = 0;
    }

    v439 = v160;
    v394 = v124 / v125;
    v141 = v138;
    if (v108)
    {
LABEL_233:
      makeStrideBytes();
      v110 = MEMORY[0x277CD73D8];
      v161 = *(v108 + *MEMORY[0x277CD73D8]);
      v490[7] = v541;
      v490[6] = v540;
      v490[5] = v539;
      v490[4] = v538;
      v490[3] = v537;
      v490[2] = v536;
      v490[1] = v535;
      v490[0] = v534;
      v400 = *(v490 + (v161 & 0xF));
      v489[7] = v541;
      v489[6] = v540;
      v489[5] = v539;
      v489[4] = v538;
      v489[3] = v537;
      v489[2] = v536;
      v489[1] = v535;
      v489[0] = v534;
      v398 = *(v489 + (BYTE1(v161) & 0xF));
      v488[7] = v541;
      v488[6] = v540;
      v488[5] = v539;
      v488[4] = v538;
      v488[3] = v537;
      v488[2] = v536;
      v488[1] = v535;
      v488[0] = v534;
      v429 = *(v488 + (BYTE2(v161) & 0xF));
      if (v109)
      {
        goto LABEL_234;
      }

LABEL_214:
      v427 = 0;
      v142 = 0;
      v396 = 0;
      v436 = 1;
      v435 = 1;
      v143 = 1;
      if (v449)
      {
        goto LABEL_249;
      }

      goto LABEL_215;
    }
  }

  else
  {
    v446 = 0;
    v411 = 0;
    v413 = 0;
    v439 = 0;
    v141 = 0;
    v406 = 0;
    v403 = 1;
    LOWORD(v128) = 32;
    LOWORD(v425) = 32;
    v394 = 1;
    v402 = 1;
    v110 = MEMORY[0x277CD73D8];
    if (v108)
    {
      goto LABEL_233;
    }
  }

  v429 = 0;
  v398 = 0;
  v400 = 0;
  if (!v109)
  {
    goto LABEL_214;
  }

LABEL_234:
  v162 = v141;
  if (*(v20 + *MEMORY[0x277CD7410] + 4 * (*(v20 + *v110) & 0xF)) % *(v109 + *MEMORY[0x277CD7410] + 4 * (*(v109 + *v110) & 0xF)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  makeStrideBytes();
  v163 = *MEMORY[0x277CD73D8];
  v164 = *(v109 + v163);
  v487[7] = v541;
  v487[6] = v540;
  v487[5] = v539;
  v487[4] = v538;
  v487[3] = v537;
  v487[2] = v536;
  v487[1] = v535;
  v487[0] = v534;
  v396 = *(v487 + (v164 & 0xF));
  v486[7] = v541;
  v486[6] = v540;
  v486[5] = v539;
  v486[4] = v538;
  v486[3] = v537;
  v486[2] = v536;
  v486[1] = v535;
  v486[0] = v534;
  v142 = *(v486 + (BYTE1(v164) & 0xF));
  v485[7] = v541;
  v485[6] = v540;
  v485[5] = v539;
  v485[4] = v538;
  v485[3] = v537;
  v485[2] = v536;
  v485[1] = v535;
  v485[0] = v534;
  v427 = *(v485 + (BYTE2(v164) & 0xF));
  v165 = *MEMORY[0x277CD7410];
  v166 = *(v20 + v165);
  v167 = *(v20 + v165 + 16);
  v168 = *(v20 + v165 + 32);
  v169 = *(v20 + v163);
  v484 = *(v20 + v165 + 48);
  v483[2] = v168;
  v483[1] = v167;
  v483[0] = v166;
  v170 = *(v483 + (v169 & 0xF));
  v171 = (v109 + v165);
  v172 = *v171;
  v173 = v171[1];
  v174 = v171[2];
  v175 = *(v109 + v163);
  v481 = v171[3];
  v480[2] = v174;
  v480[1] = v173;
  v480[0] = v172;
  v176 = *(v480 + (v175 & 0xF));
  v482[3] = v484;
  v482[2] = v168;
  v482[1] = v167;
  v482[0] = v166;
  v177 = *(v482 + (BYTE1(v169) & 0xF));
  v479[3] = v481;
  v479[2] = v174;
  v479[1] = v173;
  v479[0] = v172;
  v178 = *(v479 + (BYTE1(v175) & 0xF));
  v425 = *(v109 + *MEMORY[0x277CD73C8]);
  if (v423)
  {
    makeStrideBytes();
    v179 = MEMORY[0x277CD73D8];
    v180 = v423;
    v181 = *(v423 + *MEMORY[0x277CD73D8]);
    v478[7] = v541;
    v478[6] = v540;
    v478[5] = v539;
    v478[4] = v538;
    v478[3] = v537;
    v478[2] = v536;
    v478[1] = v535;
    v478[0] = v534;
    v376 = *(v478 + (v181 & 0xF));
    v477[7] = v541;
    v477[6] = v540;
    v477[5] = v539;
    v477[4] = v538;
    v477[3] = v537;
    v477[2] = v536;
    v477[1] = v535;
    v477[0] = v534;
    v374 = *(v477 + (BYTE1(v181) & 0xF));
    v476[7] = v541;
    v476[6] = v540;
    v476[5] = v539;
    v476[4] = v538;
    v476[3] = v537;
    v476[2] = v536;
    v476[1] = v535;
    v476[0] = v534;
    v379 = *(v476 + (BYTE2(v181) & 0xF));
    if (v425 != 536870920)
    {
      v344 = MTLReportFailureTypeEnabled();
      v179 = MEMORY[0x277CD73D8];
      v180 = v423;
      if (v344)
      {
        MTLReportFailure();
        v179 = MEMORY[0x277CD73D8];
        v180 = v423;
      }
    }

    v128 = *(v180 + *MEMORY[0x277CD73C8]);
    v182 = *MEMORY[0x277CD7410];
    v183 = *(v180 + v182);
    v184 = *(v180 + v182 + 16);
    v185 = *(v180 + v182 + 32);
    v186 = *(v180 + v182 + 48);
    v187 = *v179;
    v188 = *(v180 + v187);
    v475[3] = v186;
    v475[2] = v185;
    v475[1] = v184;
    v475[0] = v183;
    if (v454)
    {
      v162 = *(v475 + (v188 & 0xF));
    }

    v189 = v406;
    if (!v454)
    {
      v189 = *(v475 + (v188 & 0xF));
    }

    v406 = v189;
    v474[3] = v186;
    v474[2] = v185;
    v474[1] = v184;
    v474[0] = v183;
    v190 = *(v109 + v182 + 4 * (*(v109 + v187 + 1) & 0xF)) / *(v474 + (BYTE1(v188) & 0xF));
    v436 = v190;
    if (v190 != 1 && (v190 & 3) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    v436 = 1;
  }

  v191 = v439;
  if (!v454)
  {
    v191 = v109;
  }

  v439 = v191;
  v192 = v177 / v178;
  v143 = v170 / v176;
  v435 = v192;
  v141 = v162;
  if (v449)
  {
LABEL_249:
    makeStrideBytes();
    v193 = *(v449 + *MEMORY[0x277CD73D8]);
    v473[7] = v541;
    v473[6] = v540;
    v473[5] = v539;
    v473[4] = v538;
    v473[3] = v537;
    v473[2] = v536;
    v473[1] = v535;
    v473[0] = v534;
    v146 = *(v473 + (v193 & 0xF));
    v472[7] = v541;
    v472[6] = v540;
    v472[5] = v539;
    v472[4] = v538;
    v472[3] = v537;
    v472[2] = v536;
    v472[1] = v535;
    v472[0] = v534;
    v145 = *(v472 + (BYTE1(v193) & 0xF));
    v471[7] = v541;
    v471[6] = v540;
    v471[5] = v539;
    v471[4] = v538;
    v471[3] = v537;
    v471[2] = v536;
    v471[1] = v535;
    v471[0] = v534;
    v144 = *(v471 + (BYTE2(v193) & 0xF));
    v147 = v452;
    v148 = v454;
    v149 = v433;
    v150 = v423;
    if (v454)
    {
      goto LABEL_250;
    }

    goto LABEL_216;
  }

LABEL_215:
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = v452;
  v148 = v454;
  v149 = v433;
  v150 = v423;
  if (v454)
  {
LABEL_250:
    v194 = v382;
    v195 = v385;
    if (!v149)
    {
      v194 = 0;
      v195 = 0;
    }

    v588 = v413;
    v589 = v411;
    if (v149)
    {
      v196 = v391;
    }

    else
    {
      v196 = 0;
    }

    v197 = v376;
    if (!v150)
    {
      v197 = 0;
    }

    v585 = v396;
    v586 = v142;
    v582 = v400;
    v583 = v398;
    v579 = v146;
    v580 = v145;
    v576 = v194;
    v577 = v195;
    v198 = v374;
    if (!v150)
    {
      v198 = 0;
    }

    v573 = v197;
    v574 = v198;
    v590 = v446;
    v587 = v427;
    if (v150)
    {
      v158 = v379;
    }

    else
    {
      v158 = 0;
    }

    v159 = !v442;
    v584 = v429;
    v100 = v420 ^ 1;
    v380 = v446;
    v383 = v144;
    v581 = v144;
    v414 = v403;
    v412 = v402;
    v386 = v196;
    v578 = v196;
    goto LABEL_263;
  }

LABEL_216:
  v151 = v150 == 0;
  v153 = v374;
  v152 = v376;
  if (!v150)
  {
    v152 = 0;
    v153 = 0;
  }

  v588 = v396;
  v589 = v142;
  v154 = v379;
  if (v151)
  {
    v154 = 0;
  }

  v155 = v149 == 0;
  v156 = v382;
  if (v155)
  {
    v156 = 0;
  }

  v585 = v413;
  v586 = v411;
  v582 = v146;
  v583 = v145;
  v579 = v400;
  v580 = v398;
  v576 = v152;
  v577 = v153;
  v157 = v385;
  if (v155)
  {
    v157 = 0;
  }

  v573 = v156;
  v574 = v157;
  if (v155)
  {
    v158 = 0;
  }

  else
  {
    v158 = v391;
  }

  v590 = v427;
  v159 = v420 ^ 1;
  v587 = v446;
  v427 = v446;
  v380 = v590;
  v383 = v429;
  v581 = v429;
  LODWORD(v429) = v144;
  v414 = v436;
  v584 = v144;
  v436 = v403;
  v412 = v435;
  v435 = v402;
  v386 = v154;
  v578 = v154;
LABEL_263:
  v199 = *(&v582 + v100);
  v200 = *(&v579 + v159);
  v201 = *(&v573 + v159);
  v202 = *(&v576 + v100);
  v575 = v158;
  v364 = v200;
  v365 = v201;
  v362 = v199;
  v363 = v202;
  v360 = *(&v588 + v100);
  v361 = *(&v585 + v159);
  if (v148)
  {
    v203 = *(v147 + 168);
    if (v203)
    {
      if ([*(v147 + 168) quantizationScheme] == 1)
      {
        if (v107 && (v204 = *(v107 + *MEMORY[0x277CD73D8]), v205 = (v107 + *MEMORY[0x277CD7410]), v206 = *v205, v207 = v205[1], v208 = v205[2], v209 = v205[3], v466[3] = v209, v466[2] = v208, v466[1] = v207, v466[0] = v206, *(v466 + (v204 & 0xF)) == 1))
        {
          v465[0] = v206;
          v465[1] = v207;
          v465[2] = v208;
          v465[3] = v209;
          v210 = *(v465 + (BYTE1(v204) & 0xF)) != 1;
          v211 = [v203 hasZeroPoint];
          if (v210)
          {
            v212 = 4;
          }

          else
          {
            v212 = 3;
          }
        }

        else
        {
          v211 = [v203 hasZeroPoint];
          v210 = 1;
          v212 = 4;
        }

        if (!v211)
        {
          v212 = v210;
        }
      }

      else
      {
        v212 = 6;
      }

      v404 = v212;
      v148 = v454;
      v223 = *(v452 + 176);
      if (v223)
      {
        goto LABEL_288;
      }
    }

    else
    {
      v404 = 6;
      v223 = *(v452 + 176);
      if (v223)
      {
LABEL_288:
        if ([v223 quantizationScheme] == 1)
        {
          if (v109 && (v228 = *(v109 + *MEMORY[0x277CD73D8]), v229 = (v109 + *MEMORY[0x277CD7410]), v230 = *v229, v231 = v229[1], v232 = v229[2], v233 = v229[3], v464[3] = v233, v464[2] = v232, v464[1] = v231, v464[0] = v230, *(v464 + (v228 & 0xF)) == 1))
          {
            v463[0] = v230;
            v463[1] = v231;
            v463[2] = v232;
            v463[3] = v233;
            v234 = *(v463 + (BYTE1(v228) & 0xF)) != 1;
            v235 = [v223 hasZeroPoint];
            if (v234)
            {
              v236 = 4;
            }

            else
            {
              v236 = 3;
            }
          }

          else
          {
            v235 = [v223 hasZeroPoint];
            v234 = 1;
            v236 = 4;
          }

          if (v235)
          {
            v224 = v236;
          }

          else
          {
            v224 = v234;
          }
        }

        else
        {
          v224 = 6;
        }

        v225 = v451;
        v226 = MEMORY[0x277CD73D8];
        v148 = v454;
        goto LABEL_313;
      }
    }

    v224 = 6;
    v225 = v451;
    v226 = MEMORY[0x277CD73D8];
LABEL_313:
    v247 = (*(v440 + 1476) >> 6) & 1;
    v248 = 1;
    v450 = 32;
    v447 = 1;
    goto LABEL_321;
  }

  v213 = *(v147 + 176);
  if (v213)
  {
    if ([*(v147 + 176) quantizationScheme] == 1)
    {
      if (v109 && (v214 = *(v109 + *MEMORY[0x277CD73D8]), v215 = (v109 + *MEMORY[0x277CD7410]), v216 = *v215, v217 = v215[1], v218 = v215[2], v219 = v215[3], v470[3] = v219, v470[2] = v218, v470[1] = v217, v470[0] = v216, *(v470 + (v214 & 0xF)) == 1))
      {
        v469[0] = v216;
        v469[1] = v217;
        v469[2] = v218;
        v469[3] = v219;
        v220 = *(v469 + (BYTE1(v214) & 0xF)) != 1;
        v221 = [v213 hasZeroPoint];
        if (v220)
        {
          v222 = 4;
        }

        else
        {
          v222 = 3;
        }
      }

      else
      {
        v221 = [v213 hasZeroPoint];
        v220 = 1;
        v222 = 4;
      }

      if (!v221)
      {
        v222 = v220;
      }
    }

    else
    {
      v222 = 6;
    }

    v404 = v222;
    v148 = v454;
    v227 = *(v452 + 168);
    if (!v227)
    {
      goto LABEL_305;
    }
  }

  else
  {
    v404 = 6;
    v227 = *(v452 + 168);
    if (!v227)
    {
      goto LABEL_305;
    }
  }

  v237 = [v227 quantizationScheme];
  v148 = v454;
  if (v237 == 1)
  {
    if (v107 && (v238 = *(v107 + *MEMORY[0x277CD73D8]), v239 = (v107 + *MEMORY[0x277CD7410]), v240 = *v239, v241 = v239[1], v242 = v239[2], v243 = v239[3], v468[3] = v243, v468[2] = v242, v468[1] = v241, v468[0] = v240, *(v468 + (v238 & 0xF)) == 1))
    {
      v467[0] = v240;
      v467[1] = v241;
      v467[2] = v242;
      v467[3] = v243;
      v244 = *(v467 + (BYTE1(v238) & 0xF)) != 1;
      v245 = [v227 hasZeroPoint];
      if (v244)
      {
        v246 = 4;
      }

      else
      {
        v246 = 3;
      }
    }

    else
    {
      v245 = [v227 hasZeroPoint];
      v244 = 1;
      v246 = 4;
    }

    if (v245)
    {
      v224 = v246;
    }

    else
    {
      v224 = v244;
    }

    v247 = (*(v440 + 1476) >> 6) & 1;
    v225 = v451;
    v226 = MEMORY[0x277CD73D8];
    v148 = v454;
    if (v442)
    {
      v248 = 1;
      v450 = 32;
      v447 = 1;
      goto LABEL_321;
    }

LABEL_320:
    v248 = 0;
    v450 = 16;
    v447 = 16;
    goto LABEL_321;
  }

LABEL_305:
  v247 = (*(v440 + 1476) >> 6) & 1;
  v224 = 6;
  if (!v442)
  {
    v225 = v451;
    v226 = MEMORY[0x277CD73D8];
    goto LABEL_320;
  }

  v248 = 1;
  v450 = 32;
  v447 = 1;
  v225 = v451;
  v226 = MEMORY[0x277CD73D8];
LABEL_321:
  v249 = 0;
  v250 = v442 & (v420 ^ 1) & !v148;
  if (v250 != 1 || v224 != 6)
  {
    goto LABEL_344;
  }

  v251 = (v439 + *MEMORY[0x277CD7410]);
  v252 = *v251;
  v253 = v251[1];
  v254 = *(v439 + *v226);
  v255 = v251[2];
  v256 = v251[3];
  v462[3] = v256;
  v462[2] = v255;
  v462[1] = v253;
  v462[0] = v252;
  if (*(v462 + (v254 & 0xF)) == 1)
  {
    v461[0] = v252;
    v461[1] = v253;
    v461[2] = v255;
    v461[3] = v256;
    v257 = *(v461 + (BYTE1(v254) & 0xF)) != 1;
    v258 = v404;
    if (v404 == 3)
    {
      goto LABEL_328;
    }
  }

  else
  {
    v257 = 1;
    v258 = v404;
    if (v404 == 3)
    {
      goto LABEL_328;
    }
  }

  if (v258)
  {
    v249 = 0;
    goto LABEL_344;
  }

LABEL_328:
  v249 = 0;
  if ((v445 & 3) != 0)
  {
    v257 = 1;
  }

  if (((v257 | v393) & 1) != 0 || v433 || v423 || v225 > 0x10)
  {
LABEL_344:
    v260 = *(v440 + 1472);
    if (v260 >= 24)
    {
      goto LABEL_336;
    }

    goto LABEL_345;
  }

  v259 = *MEMORY[0x277CD73C8];
  if (*&v441[v259] == 268435472)
  {
    v249 = *(v439 + v259) == 268435472;
    v260 = *(v440 + 1472);
    if (v260 >= 24)
    {
LABEL_336:
      if (v248)
      {
        v261 = 1;
      }

      else
      {
        v261 = 8;
      }

      v348 = v225 > 8;
      if (v225 <= 8)
      {
        v262 = 8;
      }

      else
      {
        v262 = 16;
      }

      v392 = v262;
LABEL_369:
      v267 = 0;
      v434 = 0;
      v274 = 4 * v450;
      v275 = v445 & 0xFFFFFFFC;
      v266 = 8;
      v349 = 16;
      v272 = 1;
      v265 = 1;
      v273 = v394;
LABEL_370:
      v399 = v265;
      v401 = v261;
      v424 = 0;
      v276 = v275;
      v356 = v272;
      LODWORD(v275) = v275 / v274;
      goto LABEL_371;
    }
  }

  else
  {
    v249 = 0;
    v260 = *(v440 + 1472);
    if (v260 >= 24)
    {
      goto LABEL_336;
    }
  }

LABEL_345:
  if (v248)
  {
    v261 = 1;
  }

  else
  {
    v261 = 8;
  }

  v348 = v225 > 8;
  if (v225 <= 8)
  {
    v263 = 8;
  }

  else
  {
    v263 = 16;
  }

  v392 = v263;
  v264 = !v249;
  if (v260 < 11)
  {
    v264 = 1;
  }

  if (v264)
  {
    goto LABEL_369;
  }

  if (v225 <= 3)
  {
    LOBYTE(v250) = 0;
  }

  if (v250)
  {
    v265 = 2;
    v266 = 128;
    if (v225 - 9 >= 8)
    {
      if (v225 - 4 <= 4)
      {
        v335 = v445 >> 10 > 6 && v444 == 7168;
        v336 = v335;
        v273 = v394;
        if (v335 && v405 == 1)
        {
          v267 = 0;
          v272 = 4;
          v261 = 1;
          v349 = 24;
          v265 = 1;
        }

        else
        {
          if (v405 != 3)
          {
            v336 = 0;
          }

          if (v336)
          {
            v272 = 4;
            v267 = 1;
            v349 = 24;
            v261 = 1;
            v265 = 1;
          }

          else
          {
            v267 = 0;
            v265 = 1;
            v349 = 16;
            v266 = 8;
            if (v445 >> 10 < 7)
            {
              v272 = 1;
            }

            else
            {
              v272 = 1;
              if (v444 >> 10 >= 7)
              {
                v272 = 8;
                v267 = 1;
                v349 = 32;
                v266 = 128;
                v261 = 1;
              }
            }
          }
        }

        goto LABEL_495;
      }

      v267 = 1;
      v349 = 16;
      v261 = 2;
      v272 = 1;
    }

    else
    {
      v267 = 0;
      v268 = v444 == 7168;
      v269 = v405 == 1;
      v270 = !v268 || !v269;
      if (v268 && v269)
      {
        v266 = 256;
      }

      else
      {
        v266 = 128;
      }

      if (v268 && v269)
      {
        v271 = 24;
      }

      else
      {
        v271 = 40;
      }

      v349 = v271;
      if (v270)
      {
        v272 = 2;
      }

      else
      {
        v272 = 4;
      }

      v261 = 1;
      v265 = 1;
    }

    v273 = v394;
LABEL_495:
    v308 = 32 * v261 * v265 * v272;
    goto LABEL_496;
  }

  if (v225 == 3)
  {
    v308 = 32;
    v266 = 4;
  }

  else if (v225 == 4)
  {
    v308 = 64;
    v266 = 1;
  }

  else
  {
    v308 = 32;
    v266 = 8;
  }

  v273 = v394;
  v267 = 0;
  v261 = v308 >> 5;
  v265 = 1;
  v349 = 16;
  v272 = 1;
LABEL_496:
  if (*(v452 + 208) == 3)
  {
    v337 = *(v452 + 200);
    if (v337)
    {
      v266 = v337[4];
      v267 = *(v337 + 29);
      v392 = *v337;
      v349 = v337[2];
      v261 = v337[8];
      v265 = v337[10];
      v272 = v337[12];
      if (v250)
      {
        v308 = v337[6];
      }

      else
      {
        if (v266 >= 8)
        {
          v266 = 8;
        }

        v308 = 32 * v261;
      }
    }
  }

  v450 = v308;
  v338 = *MEMORY[0x277CD73C8];
  v339 = *&v441[v338];
  if (v339 == 268435488)
  {
    v340 = *(v439 + v338);
    if (v340 == 268435472)
    {
      v275 = v445 & 0xFFFFFFFC;
      v434 = 1;
      if ((v250 & 1) == 0)
      {
        goto LABEL_507;
      }

      goto LABEL_513;
    }

    if (v340 == 268435488)
    {
      v275 = v445 & 0xFFFFFFFC;
      v434 = 1;
      if ((v250 & 1) == 0)
      {
        goto LABEL_507;
      }

      goto LABEL_513;
    }

    goto LABEL_512;
  }

  if (v339 != 268435472 || *(v439 + v338) != 268435488)
  {
LABEL_512:
    v275 = v445 & 0xFFFFFFFC;
    v434 = 1;
    if ((v250 & 1) == 0)
    {
      goto LABEL_507;
    }

    goto LABEL_513;
  }

  v275 = v445 & 0xFFFFFFFC;
  v434 = 1;
  if ((v250 & 1) == 0)
  {
LABEL_507:
    v274 = 128;
    goto LABEL_370;
  }

LABEL_513:
  v399 = v265;
  v401 = v261;
  v274 = 8;
  v424 = 1;
  v276 = v275;
  v356 = 1;
LABEL_371:
  v419 = v276;
  v395 = v266;
  v397 = v275;
  v359 = v266;
  v366 = v267;
  v375 = v272;
  v373 = v274;
  if (v148)
  {
    v277 = v420;
  }

  else
  {
    v277 = v442;
  }

  v278 = *(&v593 | (8 * (v277 ^ 1u)));
  if (v148)
  {
    v279 = v273;
  }

  else
  {
    v279 = v143;
  }

  HIDWORD(v357) = v279;
  v358 = v278;
  if (v148)
  {
    v280 = v143;
  }

  else
  {
    v280 = v273;
  }

  LODWORD(v357) = v280;
  if (v148)
  {
    v281 = v442;
  }

  else
  {
    v281 = v420;
  }

  v443 = *(&v591 | (8 * (v281 ^ 1u)));
  [v452 alpha];
  v283 = v282;
  v284 = v425 >> 3;
  v285 = v128 >> 3;
  v286 = *MEMORY[0x277CD7410];
  v287 = *MEMORY[0x277CD73D8];
  v288 = *&v456[4 * (v456[v287 + 2] & 0xF) + v286];
  v289 = v386 / v285;
  v290 = *&v437[v286];
  v291 = *&v437[v286 + 16];
  v292 = *&v437[v286 + 48];
  v293 = v437[v287 + 2] & 0xF;
  v459[2] = *&v437[v286 + 32];
  v459[3] = v292;
  v459[0] = v290;
  v459[1] = v291;
  if (*(v459 + v293) == 1)
  {
    v294 = 0;
  }

  else
  {
    v294 = v594;
  }

  v295 = &v441[v286];
  v296 = *v295;
  v297 = v295[1];
  v298 = v295[2];
  v299 = v295[3];
  v300 = v441[v287 + 2] & 0xF;
  v460[2] = v298;
  v460[3] = v299;
  v460[0] = v296;
  v460[1] = v297;
  if (*(v460 + v300) == 1)
  {
    v301 = 0;
  }

  else
  {
    v301 = v592;
  }

  if (DWORD2(v290) == 1)
  {
    v302 = 0;
  }

  else
  {
    v302 = v380 / v284;
  }

  if (DWORD2(v290) == 1)
  {
    v303 = 0;
  }

  else
  {
    v303 = v429;
  }

  if (DWORD2(v296) == 1)
  {
    v304 = 0;
  }

  else
  {
    v304 = v427 / v284;
  }

  if (DWORD2(v296) == 1)
  {
    v305 = 0;
  }

  else
  {
    v305 = v383;
  }

  if (v141)
  {
    v352 = v451 / v141;
  }

  else
  {
    v352 = 0;
  }

  v426 = v128 >> 3;
  v428 = v288;
  v430 = v303;
  v421 = v304;
  v387 = v305;
  v355 = v284;
  v381 = v294;
  v353 = v301;
  v354 = v302;
  if (v406)
  {
    v351 = v444 / v406;
  }

  else
  {
    v351 = 0;
  }

  if (DWORD2(v290) == 1)
  {
    LODWORD(v289) = 0;
  }

  v407 = v289;
  if (DWORD2(v296) == 1)
  {
    v306 = 0;
  }

  else
  {
    v306 = v158 / v285;
  }

  v384 = v306;
  if (v248)
  {
    v307 = 0;
  }

  else
  {
    v307 = 4;
  }

  if (v447 != 1 << v307 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v452 alpha];
  [v437 dataType];
  [v441 dataType];
  [v456 dataType];
  v309 = [*(v458 + 232) finalOp];
  (*(*v309 + 16))(v309);
  if (!v439)
  {
    v350 = v248 & v247;
    goto LABEL_432;
  }

  v310 = *(v439 + *MEMORY[0x277CD73C8]);
  if (v310 > 301989895)
  {
    if (v310 == 301989896)
    {
      goto LABEL_430;
    }

    if (v310 == 536870920)
    {
LABEL_429:
      v350 = v248 & v247;
      goto LABEL_432;
    }
  }

  else if (v310 != -1879048176)
  {
    if (v310 != 268435464)
    {
      if (v310 != 268435472)
      {
        goto LABEL_431;
      }

LABEL_430:
      v350 = v248 & v247;
      goto LABEL_432;
    }

    goto LABEL_429;
  }

LABEL_431:
  v350 = v248 & v247;
LABEL_432:
  v311 = [*(v458 + 232) finalOp];
  (*(*v311 + 16))(v311);
  *&v312 = -1;
  *(&v312 + 1) = -1;
  v570 = v312;
  v569 = v312;
  v568 = v312;
  v566 = -1;
  v565 = v312;
  v567 = v389 | v390 | v388;
  *&v570 = [*(v458 + 16) count] | ((*(v458 + 112) != 0) << 8) | 0x10000;
  v313 = (v373 + v419 - 1) / v373;
  v455 = v444 - 1;
  v314 = v307;
  v315 = (v447 + v444 - 1) >> v307;
  if (v434)
  {
    v346 = *(v452 + *MEMORY[0x277CD7360]);
    v347 = *(v452 + *MEMORY[0x277CD7368]);
    v345 = *(v458 + 232);
    MPSLibrary::CreateUberShaderKey();
  }

  else
  {
    v316 = (((v373 + v419 - 1) / v373) & 0x1F) << 6;
    if (v313 >= 0x20)
    {
      v316 = 0;
    }

    v317 = (32 * (v405 != 1)) | (16 * (v315 != 1)) | v316;
    v318 = ((v313 - v397) & 1) << 11;
    if (v313 >= 0x20)
    {
      v318 = 0;
    }

    v566 = v317 | v318 | ((v419 % (4 * (v450 << v314)) == 0) << 12);
    v346 = *(v452 + *MEMORY[0x277CD7360]);
    v347 = *(v452 + *MEMORY[0x277CD7368]);
    v345 = *(v458 + 232);
    MPSLibrary::CreateUberShaderKey();
  }

  v319 = v315;
  v320 = v401;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSSetNDArraysOnComputeEncoder(v457, v458, 3, 0, 0);
  [v457 setComputePipelineState:{PipelineStateForMPSKey, v345, v346, v347, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  [v457 setBuffer:objc_msgSend(v441 offset:"buffer") atIndex:{v378, 29}];
  [v457 setBuffer:objc_msgSend(v437 offset:"buffer") atIndex:{v377, 28}];
  if (v434)
  {
    v322 = v395;
    v323 = 2 * (v392 * v395);
    if (!v366)
    {
      v323 = 0;
    }

    if (v375 < 2)
    {
      if (!v366)
      {
LABEL_453:
        if ((v348 & v424) != 0)
        {
          v327 = 3;
        }

        else
        {
          v327 = 0;
        }

        if ((atomic_load_explicit(&qword_27DF86838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86838))
        {
          unk_27DF86920 = 0u;
          xmmword_27DF86910 = 0u;
          dword_27DF86930 = 1065353216;
          qword_27DF86938 = 850045863;
          qword_27DF86970 = 0;
          xmmword_27DF86940 = 0u;
          unk_27DF86950 = 0u;
          xmmword_27DF86960 = 0u;
          __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86910, &dword_2399F7000);
          __cxa_guard_release(&qword_27DF86838);
        }

        os_unfair_lock_lock(&_MergedGlobals_31);
        Buffer = MPSBufferCache::getBuffer(&xmmword_27DF86910, [objc_msgSend(v408 "commandQueue")], (4 * v322) << v327, 0);
        [v457 setBuffer:Buffer offset:0 atIndex:27];
        if (Buffer)
        {
          v329 = [v408 userDictionary];
          v330 = [v329 objectForKey:@"_MPSCommandBufferRetainListKey"];
          if (!v330)
          {
            v331 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v329 setObject:v331 forKey:@"_MPSCommandBufferRetainListKey"];

            *&v534 = MEMORY[0x277D85DD0];
            *(&v534 + 1) = 3221225472;
            *&v535 = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke_0;
            *(&v535 + 1) = &unk_278AFFDB8;
            *&v536 = @"_MPSCommandBufferRetainListKey";
            [v408 addCompletedHandler:&v534];
            v330 = v331;
            v320 = v401;
          }

          [v330 addObject:Buffer];
        }

        os_unfair_lock_unlock(&_MergedGlobals_31);
        goto LABEL_462;
      }

      v325 = 0;
    }

    else
    {
      if (v424)
      {
        v324 = v349 * v392 * (v375 - 1);
      }

      else
      {
        v324 = v451 * v401 * (v375 - 1);
      }

      v325 = 4 * v324;
    }

    if (v323 <= v325)
    {
      v326 = v325;
    }

    else
    {
      v326 = v323;
    }

    [v457 setThreadgroupMemoryLength:v326 atIndex:0];
    v322 = v395;
    goto LABEL_453;
  }

LABEL_462:
  [v457 setBuffer:objc_msgSend(v456 offset:"buffer") atIndex:{v409 * v370 + v372 * v371 + v410 * v368 + v369, 26}];
  *&v535 = v443;
  DWORD2(v535) = v409;
  HIDWORD(v536) = v353;
  *&v538 = __PAIR64__(v313, v419);
  *(&v540 + 1) = v357;
  *(&v541 + 1) = __PAIR64__(v354, v362);
  v332 = v283;
  *&v534 = __PAIR64__(v444, v451);
  *(&v534 + 1) = __PAIR64__(v358, v445);
  *(&v535 + 3) = v332;
  LODWORD(v536) = 0;
  *(&v536 + 4) = __PAIR64__(v381, v428);
  LODWORD(v537) = 0;
  DWORD1(v537) = v410;
  *(&v537 + 1) = 1;
  DWORD2(v538) = v397 / (v356 * v359) * v356 * v359;
  HIDWORD(v538) = v445;
  v539 = 0uLL;
  *&v540 = 0;
  LODWORD(v541) = 0;
  DWORD1(v541) = v360 / v355;
  v542 = v430;
  v543 = v361 / v355;
  v544 = v364;
  v545 = v421;
  v546 = v387;
  v547 = v412;
  v548 = v435;
  v549 = v352;
  v550 = v351;
  v551 = v363 / v426;
  v552 = v407;
  v553 = v365 / v426;
  v554 = v384;
  v555 = v412 * v414;
  v556 = v435 * v436;
  v557 = v367;
  v558 = vmovn_s64(v418);
  v559 = v416;
  v560 = v432;
  v561 = v422;
  v562 = vmovn_s64(v417);
  v563 = v415;
  v564 = v431;
  objc_msgSend_setBytes_length_atIndex_(v457);
  v572 = 0;
  v571 = 0;
  objc_msgSend_setBytes_length_atIndex_(v457);
  if (v434)
  {
    if (v424)
    {
      LODWORD(v333) = v399 * v401;
      v319 = (v455 + v349) / v349;
    }

    else
    {
      v333 = v399 * v401;
      v319 = (v455 + v333) / v320 * v399;
    }

    v450 = 32 * v375 * v333;
    v447 = 1;
  }

  if ((v350 & 1) == 0)
  {
    [v457 setThreadgroupMemoryLength:4 * v451 * v447 * v450 atIndex:0];
  }

  v533[0] = 1;
  v533[1] = v319;
  v533[2] = v405;
  v532[0] = v450;
  v532[1] = v447;
  v532[2] = 1;
  [v457 dispatchThreadgroups:v533 threadsPerThreadgroup:v532];
  return MPSLibrary::ReleaseComputeState();
}

const char *___ZL28EncodeMatrixMultiplyQ4IntoQ8PKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfo_block_invoke()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  result = getenv("MPS_MATMUL_TILEK");
  v3 = result;
  if (v0)
  {
    result = atol(v0);
    v4 = 64 - __clz(result - 1);
    if (result <= 1uLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    _MergedGlobals_32 = v5;
  }

  if (v1)
  {
    result = atol(v1);
    v6 = 64 - __clz(result - 1);
    if (result <= 1uLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    word_27DF85EDA = v7;
  }

  if (v3)
  {
    result = atol(v3);
    v8 = 64 - __clz(result - 1);
    if (result <= 1uLL)
    {
      LOWORD(v9) = 0;
    }

    else
    {
      LOWORD(v9) = v8;
    }
  }

  else
  {
    LOWORD(v9) = word_27DF85EDC;
  }

  v10 = _MergedGlobals_32;
  if (_MergedGlobals_32 <= 5u)
  {
    v10 = 5;
  }

  if (v10 >= 8)
  {
    LOWORD(v10) = 8;
  }

  _MergedGlobals_32 = v10;
  v11 = word_27DF85EDA;
  if (word_27DF85EDA <= 5u)
  {
    v11 = 5;
  }

  if (v11 >= 8)
  {
    LOWORD(v11) = 8;
  }

  word_27DF85EDA = v11;
  v9 = v9;
  if (v9 <= 5u)
  {
    v9 = 5;
  }

  if (v9 >= 8)
  {
    LOWORD(v9) = 8;
  }

  word_27DF85EDC = v9;
  word_27DF85EDE = v10 - 1;
  word_27DF85EE0 = v11 - 1;
  return result;
}

uint64_t MPSNDArrayQ4IntoQ8MatrixMultiplyFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v9 type:85 atIndex:115];
  AddFunctionConstantList(v6, a3);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t isDescSupportedByLUTGEMV(MPSNDArrayQuantizationDescriptor *a1)
{
  if (![(MPSNDArrayQuantizationDescriptor *)a1 quantizationScheme])
  {
    return 1;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 8 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 536870920 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 4 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 536870916 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 2 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 536870914)
  {
    return 0;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)a1 quantizationScheme]== 2)
  {
    return [-[MPSNDArrayQuantizationDescriptor vectorAxes](a1 "vectorAxes")] == 0;
  }

  return [(MPSNDArrayQuantizationDescriptor *)a1 quantizationScheme]== 1 && ([(MPSNDArrayQuantizationDescriptor *)a1 hasDoubleQuantScale]& 1) == 0 && ([(MPSNDArrayQuantizationDescriptor *)a1 hasDoubleQuantMinVal]& 1) == 0 && ([(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 536870920 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 8 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 536870916 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 4 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 536870914 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 4);
}

uint64_t EncodeRandomStateUpdate(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v29 = v7;
  v30 = v7;
  v27 = v7;
  v28 = v7;
  v26 = v7;
  v8 = [*(a4 + 232) inputTensorAtIndex:0];
  v9 = [*(a4 + 232) outputTensorAtIndex:0];
  v10 = *(v8 + 8);
  if (v10 > 285212703)
  {
    if (v10 <= 536870915)
    {
      if (v10 > 301989895)
      {
        if (v10 == 301989896)
        {
          v11 = 512;
          v12 = *(v9 + 8);
          if (v12 <= 285212703)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v10 != 335544328)
          {
            goto LABEL_81;
          }

          v11 = 544;
          v12 = *(v9 + 8);
          if (v12 <= 285212703)
          {
            goto LABEL_60;
          }
        }
      }

      else if (v10 == 285212704)
      {
        v11 = 416;
        v12 = *(v9 + 8);
        if (v12 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v10 != 285212736)
        {
          goto LABEL_81;
        }

        v11 = 448;
        v12 = *(v9 + 8);
        if (v12 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_82;
    }

    if (v10 > 536870927)
    {
      switch(v10)
      {
        case 536870928:
          v11 = 64;
          v12 = *(v9 + 8);
          if (v12 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870944:
          v11 = 96;
          v12 = *(v9 + 8);
          if (v12 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870976:
          v11 = 128;
          v12 = *(v9 + 8);
          if (v12 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        default:
          goto LABEL_81;
      }

      goto LABEL_82;
    }

    v11 = 0;
    if (v10 != 536870916)
    {
      if (v10 != 536870920)
      {
        goto LABEL_81;
      }

      v11 = 32;
      v12 = *(v9 + 8);
      if (v12 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }

LABEL_59:
    v12 = *(v9 + 8);
    if (v12 > 285212703)
    {
      goto LABEL_82;
    }

    goto LABEL_60;
  }

  if (v10 <= 31)
  {
    if (v10 > 7)
    {
      if (v10 == 8)
      {
        v11 = 192;
        v12 = *(v9 + 8);
        if (v12 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v10 != 16)
        {
          goto LABEL_81;
        }

        v11 = 224;
        v12 = *(v9 + 8);
        if (v12 <= 285212703)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v10 == -1879048176)
    {
      v11 = 384;
      v12 = *(v9 + 8);
      if (v12 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_81;
      }

      v11 = 160;
      v12 = *(v9 + 8);
      if (v12 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_82;
  }

  if (v10 <= 268435463)
  {
    if (v10 != 32)
    {
      if (v10 != 64)
      {
        goto LABEL_81;
      }

      v11 = 288;
      v12 = *(v9 + 8);
      if (v12 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }

    v11 = 256;
    goto LABEL_59;
  }

  switch(v10)
  {
    case 268435464:
      v11 = 480;
      v12 = *(v9 + 8);
      if (v12 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435472:
      v11 = 320;
      v12 = *(v9 + 8);
      if (v12 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435488:
      v11 = 352;
      v12 = *(v9 + 8);
      if (v12 > 285212703)
      {
        break;
      }

LABEL_60:
      if (v12 <= 31)
      {
        if (v12 > 7)
        {
          if (v12 == 8)
          {
            v13 = 6;
            goto LABEL_104;
          }

          if (v12 == 16)
          {
            v13 = 7;
            goto LABEL_104;
          }
        }

        else
        {
          if (v12 == -1879048176)
          {
            v13 = 12;
            goto LABEL_104;
          }

          if (v12 == 4)
          {
            v13 = 5;
            goto LABEL_104;
          }
        }
      }

      else if (v12 <= 268435463)
      {
        if (v12 == 32)
        {
          v13 = 8;
          goto LABEL_104;
        }

        if (v12 == 64)
        {
          v13 = 9;
          goto LABEL_104;
        }
      }

      else
      {
        switch(v12)
        {
          case 268435464:
            v13 = 15;
            goto LABEL_104;
          case 268435472:
            v13 = 10;
            goto LABEL_104;
          case 268435488:
            v13 = 11;
            goto LABEL_104;
        }
      }

      goto LABEL_103;
    default:
LABEL_81:
      v11 = 576;
      v12 = *(v9 + 8);
      if (v12 > 285212703)
      {
        break;
      }

      goto LABEL_60;
  }

LABEL_82:
  if (v12 <= 536870915)
  {
    if (v12 > 301989895)
    {
      if (v12 == 301989896)
      {
        v13 = 16;
        goto LABEL_104;
      }

      if (v12 == 335544328)
      {
        v13 = 17;
        goto LABEL_104;
      }
    }

    else
    {
      if (v12 == 285212704)
      {
        v13 = 13;
        goto LABEL_104;
      }

      if (v12 == 285212736)
      {
        v13 = 14;
        goto LABEL_104;
      }
    }
  }

  else if (v12 <= 536870927)
  {
    if (v12 == 536870916)
    {
      v13 = 0;
      goto LABEL_104;
    }

    if (v12 == 536870920)
    {
      v13 = 1;
      goto LABEL_104;
    }
  }

  else
  {
    switch(v12)
    {
      case 536870928:
        v13 = 2;
        goto LABEL_104;
      case 536870944:
        v13 = 3;
        goto LABEL_104;
      case 536870976:
        v13 = 4;
        goto LABEL_104;
    }
  }

LABEL_103:
  v13 = 18;
LABEL_104:
  *(&v27 + 1) = v13 | v11;
  *&v30 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  *&v27 = 0;
  v18 = *&a1[*MEMORY[0x277CD7360]];
  v19 = *&a1[*MEMORY[0x277CD7368]];
  v17 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  [a2 setComputePipelineState:{PipelineStateForMPSKey, v17, v18, v19, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  v15 = [a1 counterStride];
  v25 = [a1 skipElements] * v15;
  v24 = [a1 incrementKey];
  objc_msgSend_setBytes_length_atIndex_(a2);
  objc_msgSend_setBytes_length_atIndex_(a2);
  v22 = xmmword_239B0C080;
  v23 = 1;
  v20 = xmmword_239B0C068;
  v21 = 1;
  [a2 dispatchThreadgroups:&v22 threadsPerThreadgroup:&v20];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeRandomUniform(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  [a1 minimum];
  v9 = v8;
  [a1 maximum];
  *&v12 = 0x100000000;
  *(&v12 + 1) = __PAIR64__(v10, v9);
  v13 = 0;
  v14 = [a1 minimumInteger];
  v15 = [a1 maximumInteger];
  return EncodeRandomInternal(a1, a2, a3, a4, &v12);
}

uint64_t EncodeRandomTruncatedNormal(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 samplingMethod];
  [a1 minimum];
  v10 = v9;
  [a1 mean];
  if (v8)
  {
    v12 = v10 - v11;
    [a1 standardDeviation];
    v14 = v12 / v13;
    [a1 maximum];
    v16 = v15;
    [a1 mean];
    v18 = v16 - v17;
    [a1 standardDeviation];
    v19 = 2;
    v21 = v18 / v20;
  }

  else
  {
    v22 = v11;
    [a1 standardDeviation];
    v14 = (erf((v10 - v22) / (v23 * 1.41421354)) + 1.0) * 0.5;
    [a1 maximum];
    v25 = v24;
    [a1 mean];
    v27 = v26;
    [a1 standardDeviation];
    v21 = (erf((v25 - v27) / (v28 * 1.41421354)) + 1.0) * 0.5;
    v19 = 1;
  }

  [a1 mean];
  v30 = v29;
  [a1 standardDeviation];
  *&v33 = v19 | 0x10000000000;
  *(&v33 + 1) = __PAIR64__(v31, v30);
  v34 = v14;
  v35 = v21;
  v36 = 0;
  v37 = 0;
  return EncodeRandomInternal(a1, a2, a3, a4, &v33);
}

uint64_t EncodeRandomNormal(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a1 samplingMethod])
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  [a1 mean];
  v10 = v9;
  [a1 standardDeviation];
  *&v13 = v8 | 0x100000000;
  *(&v13 + 1) = __PAIR64__(v11, v10);
  v14 = 0x3F80000000000000;
  v15 = 0;
  v16 = 0;
  return EncodeRandomInternal(a1, a2, a3, a4, &v13);
}

uint64_t EncodeRandomInternal(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v71 = v9;
  v72 = v9;
  v69 = v9;
  v70 = v9;
  v68 = v9;
  v10 = [*(a4 + 232) inputTensorAtIndex:0];
  v11 = [*(a4 + 232) outputTensorAtIndex:0];
  v12 = *(v10 + 8);
  if (v12 > 285212703)
  {
    if (v12 <= 536870915)
    {
      if (v12 > 301989895)
      {
        if (v12 == 301989896)
        {
          v13 = 512;
          goto LABEL_45;
        }

        if (v12 == 335544328)
        {
          v13 = 544;
          goto LABEL_45;
        }
      }

      else
      {
        if (v12 == 285212704)
        {
          v13 = 416;
          goto LABEL_45;
        }

        if (v12 == 285212736)
        {
          v13 = 448;
          goto LABEL_45;
        }
      }
    }

    else if (v12 <= 536870927)
    {
      if (v12 == 536870916)
      {
        v13 = 0;
        goto LABEL_45;
      }

      if (v12 == 536870920)
      {
        v13 = 32;
        goto LABEL_45;
      }
    }

    else
    {
      switch(v12)
      {
        case 536870928:
          v13 = 64;
          goto LABEL_45;
        case 536870944:
          v13 = 96;
          goto LABEL_45;
        case 536870976:
          v13 = 128;
          goto LABEL_45;
      }
    }
  }

  else if (v12 <= 31)
  {
    if (v12 > 7)
    {
      if (v12 == 8)
      {
        v13 = 192;
        goto LABEL_45;
      }

      if (v12 == 16)
      {
        v13 = 224;
        goto LABEL_45;
      }
    }

    else
    {
      if (v12 == -1879048176)
      {
        v13 = 384;
        goto LABEL_45;
      }

      if (v12 == 4)
      {
        v13 = 160;
        goto LABEL_45;
      }
    }
  }

  else if (v12 <= 268435463)
  {
    if (v12 == 32)
    {
      v13 = 256;
      goto LABEL_45;
    }

    if (v12 == 64)
    {
      v13 = 288;
      goto LABEL_45;
    }
  }

  else
  {
    switch(v12)
    {
      case 268435464:
        v13 = 480;
        goto LABEL_45;
      case 268435472:
        v13 = 320;
        goto LABEL_45;
      case 268435488:
        v13 = 352;
        goto LABEL_45;
    }
  }

  v13 = 576;
LABEL_45:
  v14 = *(v11 + 8);
  v52 = a2;
  v51 = v11;
  if (v14 <= 285212703)
  {
    if (v14 <= 31)
    {
      if (v14 <= 7)
      {
        if (v14 == -1879048176)
        {
          v15 = 12;
          goto LABEL_85;
        }

        if (v14 != 4)
        {
          goto LABEL_116;
        }

        v22 = 5;
        goto LABEL_90;
      }

      if (v14 == 8)
      {
        v22 = 6;
        goto LABEL_90;
      }

      if (v14 == 16)
      {
        v22 = 7;
        goto LABEL_90;
      }
    }

    else
    {
      if (v14 > 268435463)
      {
        if (v14 != 268435464)
        {
          if (v14 == 268435472)
          {
            v15 = 10;
            goto LABEL_85;
          }

          if (v14 == 268435488)
          {
            v15 = 11;
LABEL_85:
            v17 = v15 | v13;
            v20 = v14 == 536870944;
            v16 = v14 == 268435472;
            v23 = *(a5 + 4) - *(a5 + 3);
            v19 = ((v23 + 1) & v23) == 0;
            v21 = 4;
            goto LABEL_97;
          }

          goto LABEL_116;
        }

        v22 = 15;
LABEL_90:
        v16 = 0;
        v20 = 0;
        v17 = v22 | v13;
        v24 = *(a5 + 4) - *(a5 + 3);
        v19 = ((v24 + 1) & v24) == 0;
        goto LABEL_91;
      }

      if (v14 == 32)
      {
        v22 = 8;
        goto LABEL_90;
      }

      if (v14 == 64)
      {
        v22 = 9;
        goto LABEL_90;
      }
    }

LABEL_116:
    v17 = v13 | 0x12u;
    v20 = 0;
    v16 = v14 == 268435472;
    v41 = *(a5 + 4) - *(a5 + 3);
    v19 = ((v41 + 1) & v41) == 0;
    goto LABEL_91;
  }

  if (v14 <= 536870915)
  {
    if (v14 > 301989895)
    {
      if (v14 == 301989896)
      {
        v22 = 16;
        goto LABEL_90;
      }

      if (v14 == 335544328)
      {
        v22 = 17;
        goto LABEL_90;
      }
    }

    else
    {
      if (v14 == 285212704)
      {
        v22 = 13;
        goto LABEL_90;
      }

      if (v14 == 285212736)
      {
        v22 = 14;
        goto LABEL_90;
      }
    }

    goto LABEL_116;
  }

  if (v14 <= 536870927)
  {
    if (v14 == 536870916)
    {
      v22 = 0;
      goto LABEL_90;
    }

    if (v14 == 536870920)
    {
      v22 = 1;
      goto LABEL_90;
    }

    goto LABEL_116;
  }

  if (v14 == 536870928)
  {
    v22 = 2;
    goto LABEL_90;
  }

  if (v14 == 536870944)
  {
    v15 = 3;
    goto LABEL_85;
  }

  if (v14 != 536870976)
  {
    goto LABEL_116;
  }

  v16 = 0;
  v17 = v13 | 4u;
  v18 = *(a5 + 4) - *(a5 + 3);
  v19 = ((v18 + 1) & v18) == 0;
  v20 = 1;
  if (_MPSUseInt64Calculations())
  {
    v21 = 2;
    goto LABEL_97;
  }

LABEL_91:
  v25 = _MPSUseInt64Calculations();
  v26 = MTLReportFailureTypeEnabled();
  if (v25)
  {
    if (v26)
    {
      goto LABEL_95;
    }
  }

  else if (v26)
  {
LABEL_95:
    MTLReportFailure();
  }

  v21 = 0;
LABEL_97:
  *(&v69 + 1) = v17;
  v27 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  if (v16)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  if (v19)
  {
    v29 = 4;
  }

  else
  {
    v29 = 0;
  }

  *&v72 = v27;
  *&v69 = v28 | v29 | v20 | (8 * v21);
  v49 = *(a1 + *MEMORY[0x277CD7360]);
  v50 = *(a1 + *MEMORY[0x277CD7368]);
  v48 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v31 = PipelineStateForMPSKey;
  [v52 setComputePipelineState:{PipelineStateForMPSKey, v48, v49, v50, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v32 = [v31 maxTotalThreadsPerThreadgroup];
  if (v32 >= 0x20)
  {
    v33 = 32;
  }

  else
  {
    v33 = v32;
  }

  v34 = *v51;
  if (*v51)
  {
    v35 = v51[2];
    v36 = *v35;
    v37 = **v35;
    if (v34 == 1)
    {
      v38 = 1;
      v39 = 1;
    }

    else
    {
      v39 = v36[1];
      if (v34 < 3)
      {
        v38 = 1;
        v34 = 1;
      }

      else
      {
        v38 = v36[2];
        if (v34 == 3)
        {
          v34 = 1;
        }

        else
        {
          v34 = v36[3];
        }
      }
    }
  }

  else
  {
    v38 = 1;
    v37 = 1;
    v39 = 1;
    v34 = 1;
  }

  v42 = *(*(a1 + *MEMORY[0x277CD7350]) + 1480) << 7;
  v64 = 0;
  v43 = a5[1];
  v57 = *a5;
  v58 = v43;
  v59 = *(a5 + 4);
  v60 = v37;
  v61 = v39;
  if ((v33 * v21 + v39 * v37 * v38 * v34 - 1) / (v33 * v21) >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = (v33 * v21 + v39 * v37 * v38 * v34 - 1) / (v33 * v21);
  }

  v62 = v38;
  v63 = v34;
  MPSGetUIntDivisorMagicNumber();
  v65 = v45;
  MPSGetUIntDivisorMagicNumber();
  v66 = v46;
  MPSGetUIntDivisorMagicNumber();
  v67 = v47;
  MPSSetNDArraysOnComputeEncoder(v52, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v52);
  v55 = v44;
  v56 = vdupq_n_s64(1uLL);
  v53 = v33;
  v54 = v56;
  [v52 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v53];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeGridSample(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v79 = *(a1 + 144);
  v80 = *(a1 + 148);
  v7 = *(a1 + 152);
  v8 = *(a1 + 156);
  v9 = *(a1 + 160);
  v82 = *(a1 + 161);
  v81 = *(a1 + 162);
  v10 = *(a1 + 168);
  v11 = [*(a4 + 232) graph];
  v12 = **(v11 + 56);
  if (*(*(v11 + 56) + 8) == v12)
  {
    goto LABEL_207;
  }

  v14 = *(*v12 + 8);
  v13 = *v14;
  if ((v14[1] - *v14) <= 8)
  {
    goto LABEL_206;
  }

  v15 = *v13;
  v16 = v13[1];
  v17 = [*(a4 + 232) graph];
  v18 = **(v17 + 56);
  if (*(*(v17 + 56) + 8) == v18)
  {
LABEL_207:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = *(*v18 + 24);
  v19 = *v20;
  if (*(v20 + 8) == *v20)
  {
LABEL_206:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *v19;
  if (*(a1 + *MEMORY[0x277CD7378]))
  {
    goto LABEL_21;
  }

  if (*v15 != 4 && MTLReportFailureTypeEnabled())
  {
    v68 = *v15;
    MTLReportFailure();
  }

  v22 = v9;
  if (*v16 != 4 && MTLReportFailureTypeEnabled())
  {
    v68 = *v16;
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(v16);
  BaseTensor::GetDimensionSize(v15);
  DimensionSize = BaseTensor::GetDimensionSize(v16);
  if (DimensionSize != BaseTensor::GetDimensionSize(v15) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = BaseTensor::GetDimensionSize(v16);
  if (v7 == 1)
  {
    if (v24 == BaseTensor::GetDimensionSize(v21))
    {
      BaseTensor::GetDimensionSize(v16);
      BaseTensor::GetDimensionSize(v21);
    }

    v25 = BaseTensor::GetDimensionSize(v16);
    if (v25 == BaseTensor::GetDimensionSize(v21))
    {
      v26 = BaseTensor::GetDimensionSize(v16);
      if (v26 == BaseTensor::GetDimensionSize(v21))
      {
        goto LABEL_20;
      }
    }

    if ((MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_20;
    }

    v77 = v7;
    v27 = v8;
  }

  else
  {
    if (v24 == BaseTensor::GetDimensionSize(v21))
    {
      BaseTensor::GetDimensionSize(v16);
      BaseTensor::GetDimensionSize(v21);
    }

    v28 = BaseTensor::GetDimensionSize(v16);
    if (v28 == BaseTensor::GetDimensionSize(v21))
    {
      v29 = BaseTensor::GetDimensionSize(v16);
      if (v29 == BaseTensor::GetDimensionSize(v21))
      {
        goto LABEL_20;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_20;
    }

    v77 = v7;
    v27 = v8;
  }

  v75 = BaseTensor::GetDimensionSize(v16);
  v67 = BaseTensor::GetDimensionSize(v16);
  v72 = BaseTensor::GetDimensionSize(v21);
  v74 = BaseTensor::GetDimensionSize(v21);
  v68 = v75;
  v70 = v67;
  MTLReportFailure();
  v8 = v27;
  v7 = v77;
LABEL_20:
  BaseTensor::GetDimensionSize(v16);
  v9 = v22;
  if (BaseTensor::GetDimensionSize(v16) != 2 && MTLReportFailureTypeEnabled())
  {
    v68 = BaseTensor::GetDimensionSize(v16);
    MTLReportFailure();
  }

LABEL_21:
  v30 = *(v15 + 2);
  if (v30 > 285212703)
  {
    if (v30 <= 536870915)
    {
      if (v30 > 301989895)
      {
        if (v30 == 301989896)
        {
          v31 = 512;
          v32 = *(v16 + 2);
          if (v32 <= 285212703)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v30 != 335544328)
          {
            goto LABEL_102;
          }

          v31 = 544;
          v32 = *(v16 + 2);
          if (v32 <= 285212703)
          {
            goto LABEL_81;
          }
        }
      }

      else if (v30 == 285212704)
      {
        v31 = 416;
        v32 = *(v16 + 2);
        if (v32 <= 285212703)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v30 != 285212736)
        {
          goto LABEL_102;
        }

        v31 = 448;
        v32 = *(v16 + 2);
        if (v32 <= 285212703)
        {
          goto LABEL_81;
        }
      }
    }

    else if (v30 <= 536870927)
    {
      if (v30 == 536870916)
      {
        v31 = 0;
        v32 = *(v16 + 2);
        if (v32 > 285212703)
        {
          goto LABEL_103;
        }

        goto LABEL_81;
      }

      if (v30 != 536870920)
      {
        goto LABEL_102;
      }

      v31 = 32;
      v32 = *(v16 + 2);
      if (v32 <= 285212703)
      {
        goto LABEL_81;
      }
    }

    else
    {
      switch(v30)
      {
        case 536870928:
          v31 = 64;
          v32 = *(v16 + 2);
          if (v32 <= 285212703)
          {
            goto LABEL_81;
          }

          break;
        case 536870944:
          v31 = 96;
          v32 = *(v16 + 2);
          if (v32 <= 285212703)
          {
            goto LABEL_81;
          }

          break;
        case 536870976:
          v31 = 128;
          v32 = *(v16 + 2);
          if (v32 <= 285212703)
          {
            goto LABEL_81;
          }

          break;
        default:
          goto LABEL_102;
      }
    }
  }

  else if (v30 <= 31)
  {
    if (v30 > 7)
    {
      if (v30 == 8)
      {
        v31 = 192;
        v32 = *(v16 + 2);
        if (v32 <= 285212703)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v30 != 16)
        {
          goto LABEL_102;
        }

        v31 = 224;
        v32 = *(v16 + 2);
        if (v32 <= 285212703)
        {
          goto LABEL_81;
        }
      }
    }

    else if (v30 == -1879048176)
    {
      v31 = 384;
      v32 = *(v16 + 2);
      if (v32 <= 285212703)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v30 != 4)
      {
        goto LABEL_102;
      }

      v31 = 160;
      v32 = *(v16 + 2);
      if (v32 <= 285212703)
      {
        goto LABEL_81;
      }
    }
  }

  else if (v30 <= 268435463)
  {
    if (v30 == 32)
    {
      v31 = 256;
      v32 = *(v16 + 2);
      if (v32 <= 285212703)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v30 != 64)
      {
        goto LABEL_102;
      }

      v31 = 288;
      v32 = *(v16 + 2);
      if (v32 <= 285212703)
      {
        goto LABEL_81;
      }
    }
  }

  else
  {
    switch(v30)
    {
      case 268435464:
        v31 = 480;
        v32 = *(v16 + 2);
        if (v32 <= 285212703)
        {
          goto LABEL_81;
        }

        break;
      case 268435472:
        v31 = 320;
        v32 = *(v16 + 2);
        if (v32 <= 285212703)
        {
          goto LABEL_81;
        }

        break;
      case 268435488:
        v31 = 352;
        v32 = *(v16 + 2);
        if (v32 > 285212703)
        {
          break;
        }

LABEL_81:
        if (v32 <= 31)
        {
          if (v32 > 7)
          {
            if (v32 == 8)
            {
              v33 = 192;
              goto LABEL_125;
            }

            if (v32 == 16)
            {
              v33 = 224;
              goto LABEL_125;
            }
          }

          else
          {
            if (v32 == -1879048176)
            {
              v33 = 384;
              goto LABEL_125;
            }

            if (v32 == 4)
            {
              v33 = 160;
              goto LABEL_125;
            }
          }
        }

        else if (v32 <= 268435463)
        {
          if (v32 == 32)
          {
            v33 = 256;
            goto LABEL_125;
          }

          if (v32 == 64)
          {
            v33 = 288;
            goto LABEL_125;
          }
        }

        else
        {
          switch(v32)
          {
            case 268435464:
              v33 = 480;
              goto LABEL_125;
            case 268435472:
              v33 = 320;
              goto LABEL_125;
            case 268435488:
              v33 = 352;
              goto LABEL_125;
          }
        }

        goto LABEL_124;
      default:
LABEL_102:
        v31 = 576;
        v32 = *(v16 + 2);
        if (v32 > 285212703)
        {
          break;
        }

        goto LABEL_81;
    }
  }

LABEL_103:
  if (v32 <= 536870915)
  {
    if (v32 > 301989895)
    {
      if (v32 == 301989896)
      {
        v33 = 512;
        goto LABEL_125;
      }

      if (v32 == 335544328)
      {
        v33 = 544;
        goto LABEL_125;
      }
    }

    else
    {
      if (v32 == 285212704)
      {
        v33 = 416;
        goto LABEL_125;
      }

      if (v32 == 285212736)
      {
        v33 = 448;
        goto LABEL_125;
      }
    }
  }

  else if (v32 <= 536870927)
  {
    if (v32 == 536870916)
    {
      v33 = 0;
      goto LABEL_125;
    }

    if (v32 == 536870920)
    {
      v33 = 32;
      goto LABEL_125;
    }
  }

  else
  {
    switch(v32)
    {
      case 536870928:
        v33 = 64;
        goto LABEL_125;
      case 536870944:
        v33 = 96;
        goto LABEL_125;
      case 536870976:
        v33 = 128;
        goto LABEL_125;
    }
  }

LABEL_124:
  v33 = 576;
LABEL_125:
  v34 = v33 | v31;
  v35 = *(v21 + 2);
  if (v35 > 285212703)
  {
    if (v35 <= 536870915)
    {
      if (v35 > 301989895)
      {
        if (v35 == 301989896)
        {
          v36 = 16;
          goto LABEL_169;
        }

        if (v35 == 335544328)
        {
          v36 = 17;
          goto LABEL_169;
        }
      }

      else
      {
        if (v35 == 285212704)
        {
          v36 = 13;
          goto LABEL_169;
        }

        if (v35 == 285212736)
        {
          v36 = 14;
          goto LABEL_169;
        }
      }
    }

    else if (v35 <= 536870927)
    {
      if (v35 == 536870916)
      {
        v36 = 0;
        goto LABEL_169;
      }

      if (v35 == 536870920)
      {
        v36 = 1;
        goto LABEL_169;
      }
    }

    else
    {
      switch(v35)
      {
        case 536870928:
          v36 = 2;
          goto LABEL_169;
        case 536870944:
          v36 = 3;
          goto LABEL_169;
        case 536870976:
          v36 = 4;
          goto LABEL_169;
      }
    }
  }

  else if (v35 <= 31)
  {
    if (v35 > 7)
    {
      if (v35 == 8)
      {
        v36 = 6;
        goto LABEL_169;
      }

      if (v35 == 16)
      {
        v36 = 7;
        goto LABEL_169;
      }
    }

    else
    {
      if (v35 == -1879048176)
      {
        v36 = 12;
        goto LABEL_169;
      }

      if (v35 == 4)
      {
        v36 = 5;
        goto LABEL_169;
      }
    }
  }

  else if (v35 <= 268435463)
  {
    if (v35 == 32)
    {
      v36 = 8;
      goto LABEL_169;
    }

    if (v35 == 64)
    {
      v36 = 9;
      goto LABEL_169;
    }
  }

  else
  {
    switch(v35)
    {
      case 268435464:
        v36 = 15;
        goto LABEL_169;
      case 268435472:
        v36 = 10;
        goto LABEL_169;
      case 268435488:
        v36 = 11;
        goto LABEL_169;
    }
  }

  v36 = 18;
LABEL_169:
  v76 = a2;
  *&v37 = -1;
  *(&v37 + 1) = -1;
  v93 = v37;
  v94 = v37;
  v90 = -1;
  v92 = v37;
  v89 = v37;
  v91 = v34 | v36;
  v78 = a4;
  *&v94 = [*(a4 + 16) count] | 0x10000;
  v90 = (2 * v80) | (16 * v7) | (32 * v8) | (v9 << 8) | (v82 << 7) | (v81 << 9) | v79;
  v38 = BaseTensor::GetDimensionSize(v21);
  v39 = BaseTensor::GetDimensionSize(v21);
  v40 = BaseTensor::GetDimensionSize(v21);
  v41 = BaseTensor::GetDimensionSize(v21);
  v42 = BaseTensor::GetDimensionSize(v15);
  if (v7 == 1)
  {
    v43 = BaseTensor::GetDimensionSize(v15);
    LODWORD(v44) = v38;
    *&v45 = __PAIR64__(v42, v38);
    *(&v45 + 1) = __PAIR64__(v41, v43);
    v46 = v40;
    v47 = v39;
  }

  else
  {
    *&v45 = __PAIR64__(BaseTensor::GetDimensionSize(v15), v42);
    *(&v45 + 1) = __PAIR64__(v41, v40);
    LODWORD(v44) = v38;
    v46 = v39;
    v47 = v38;
    v38 = v40;
  }

  DWORD1(v44) = v39;
  *(&v44 + 1) = __PAIR64__(v41, v40);
  v88 = 0;
  v85 = v44;
  v86 = v45;
  *&v48 = v10;
  v87 = v48;
  v71 = *(a1 + *MEMORY[0x277CD7360]);
  v73 = *(a1 + *MEMORY[0x277CD7368]);
  v69 = *(v78 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v50 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v50 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  v52 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v53 = 256;
  if (v52 < 0x100)
  {
    v53 = v52;
  }

  v54 = v53 > 2 * v51;
  v55 = v53 / v51;
  if (v54)
  {
    v56 = v55;
  }

  else
  {
    v56 = 1;
  }

  v57 = v47 * v46;
  if (v7)
  {
    v58 = v57;
  }

  else
  {
    v58 = v38;
  }

  if (v7)
  {
    v59 = v38;
  }

  else
  {
    v59 = v57;
  }

  v60 = v41;
  for (i = v51; i > v59; v56 *= 2)
  {
    i >>= 1;
  }

  v62 = 1;
  while (v56 > v58)
  {
    v56 >>= 1;
    v62 *= 2;
  }

  for (; v62 > v41; v62 >>= 1)
  {
    if (v51 > (v56 * i * v62) >> 1)
    {
      break;
    }
  }

  v63 = (v59 + i - 1) / i;
  v64 = (v58 + v56 - 1) / v56;
  v65 = (v60 + v62 - 1) / v62;
  MPSSetNDArraysOnComputeEncoder(v76, v78, 4, 0, 0);
  [v76 setComputePipelineState:PipelineStateForMPSKey];
  objc_msgSend_setBytes_length_atIndex_(v76);
  v84[0] = v63;
  v84[1] = v64;
  v84[2] = v65;
  v83[0] = i;
  v83[1] = v56;
  v83[2] = v62;
  [v76 dispatchThreadgroups:v84 threadsPerThreadgroup:v83];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeGridSampleGradient(uint64_t a1, void *a2, uint64_t a3, id *a4)
{
  v4 = a4;
  [a4[28] objectAtIndexedSubscript:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_238;
  }

  v7 = *(a1 + 156);
  v8 = *(a1 + 144);
  v9 = *(a1 + 160);
  v10 = *(a1 + 161);
  v11 = [v4[29] graph];
  v12 = **(v11 + 56);
  if (*(*(v11 + 56) + 8) == v12)
  {
    goto LABEL_250;
  }

  v14 = *(*v12 + 8);
  v13 = *v14;
  v15 = v14[1] - *v14;
  if (v15 <= 8 || v15 == 16)
  {
LABEL_249:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v91 = *v13;
  v87 = v13[1];
  v16 = v13[2];
  v17 = [v4[29] graph];
  v18 = **(v17 + 56);
  if (*(*(v17 + 56) + 8) == v18)
  {
LABEL_250:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = *(*v18 + 24);
  v19 = *v20;
  if (*(v20 + 8) == *v20)
  {
    goto LABEL_249;
  }

  v86 = v8;
  v90 = a2;
  v21 = *v19;
  v81 = v10;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (*v91 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = v87;
    if (*v87 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    BaseTensor::GetDimensionSize(v87);
    BaseTensor::GetDimensionSize(v91);
    DimensionSize = BaseTensor::GetDimensionSize(v87);
    if (DimensionSize != BaseTensor::GetDimensionSize(v91) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v24 = BaseTensor::GetDimensionSize(v87);
    if (v24 == BaseTensor::GetDimensionSize(v16))
    {
      BaseTensor::GetDimensionSize(v87);
      BaseTensor::GetDimensionSize(v16);
    }

    v25 = BaseTensor::GetDimensionSize(v87);
    if (v25 != BaseTensor::GetDimensionSize(v16) || (v26 = BaseTensor::GetDimensionSize(v87), v26 != BaseTensor::GetDimensionSize(v16)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        BaseTensor::GetDimensionSize(v87);
        BaseTensor::GetDimensionSize(v87);
        BaseTensor::GetDimensionSize(v16);
        BaseTensor::GetDimensionSize(v16);
        v22 = v87;
        MTLReportFailure();
      }
    }

    BaseTensor::GetDimensionSize(v22);
    if (BaseTensor::GetDimensionSize(v22) != 2 && MTLReportFailureTypeEnabled())
    {
      BaseTensor::GetDimensionSize(v87);
      MTLReportFailure();
    }
  }

  v82 = v7;
  v80 = v4;
  v27 = v9;
  v28 = BaseTensor::GetDimensionSize(v21);
  v29 = BaseTensor::GetDimensionSize(v21);
  v84 = BaseTensor::GetDimensionSize(v16);
  v79 = v16;
  v88 = BaseTensor::GetDimensionSize(v16);
  v30 = BaseTensor::GetDimensionSize(v21);
  v83 = v21;
  v31 = BaseTensor::GetDimensionSize(v21);
  v32 = v28;
  v33 = v30;
  v34 = v30 * v28;
  v89 = v31;
  v35 = v29;
  v85 = v34;
  v36 = v31 * v29 * v34;
  LODWORD(v95) = v31 * v29 * v34;
  v37 = MPSGetTemporaryBufferFromCommandBufferCache();
  v73 = *(a1 + *MEMORY[0x277CD7360]);
  v76 = *(a1 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v39 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  if (v39 >= 0x100)
  {
    v40 = 256;
  }

  else
  {
    v40 = v39;
  }

  [v90 setComputePipelineState:PipelineStateForMPSKey];
  objc_msgSend_setBytes_length_atIndex_(v90);
  [v90 setBuffer:v37 offset:0 atIndex:28];
  *v101 = (v36 + v40 - 1) / v40;
  *&v101[8] = vdupq_n_s64(1uLL);
  *v98 = v40;
  *&v98[8] = *&v101[8];
  [v90 dispatchThreadgroups:v101 threadsPerThreadgroup:v98];
  MPSLibrary::ReleaseComputeState();
  v41 = *(v91 + 2);
  if (v41 > 285212703)
  {
    if (v41 <= 536870915)
    {
      v42 = v27;
      v43 = v82;
      v44 = v35;
      if (v41 > 301989895)
      {
        v4 = v80;
        v45 = v81;
        v46 = v79;
        if (v41 == 301989896)
        {
          v48 = 512;
          goto LABEL_70;
        }

        v47 = v90;
        if (v41 == 335544328)
        {
          v48 = 544;
          v49 = *(v87 + 2);
          if (v49 <= 285212703)
          {
            goto LABEL_139;
          }

          goto LABEL_71;
        }
      }

      else
      {
        v4 = v80;
        v45 = v81;
        v46 = v79;
        if (v41 == 285212704)
        {
          v48 = 416;
          goto LABEL_70;
        }

        v47 = v90;
        if (v41 == 285212736)
        {
          v48 = 448;
          v49 = *(v87 + 2);
          if (v49 <= 285212703)
          {
            goto LABEL_139;
          }

          goto LABEL_71;
        }
      }
    }

    else
    {
      v42 = v27;
      v43 = v82;
      v44 = v35;
      if (v41 <= 536870927)
      {
        v48 = 0;
        v4 = v80;
        v45 = v81;
        v47 = v90;
        v46 = v79;
        if (v41 != 536870916)
        {
          if (v41 == 536870920)
          {
            v48 = 32;
            v49 = *(v87 + 2);
            if (v49 <= 285212703)
            {
              goto LABEL_139;
            }

            goto LABEL_71;
          }

          goto LABEL_173;
        }

        goto LABEL_138;
      }

      v4 = v80;
      v45 = v81;
      v46 = v79;
      if (v41 == 536870928)
      {
        v48 = 64;
        goto LABEL_70;
      }

      v47 = v90;
      if (v41 == 536870944)
      {
        v48 = 96;
        v49 = *(v87 + 2);
        if (v49 <= 285212703)
        {
          goto LABEL_139;
        }

        goto LABEL_71;
      }

      if (v41 == 536870976)
      {
        v48 = 128;
        v49 = *(v87 + 2);
        if (v49 <= 285212703)
        {
          goto LABEL_139;
        }

        goto LABEL_71;
      }
    }
  }

  else
  {
    if (v41 > 31)
    {
      v42 = v27;
      v43 = v82;
      v44 = v35;
      if (v41 > 268435463)
      {
        v4 = v80;
        v45 = v81;
        v46 = v79;
        if (v41 != 268435464)
        {
          v47 = v90;
          if (v41 == 268435472)
          {
            v48 = 320;
            v49 = *(v87 + 2);
            if (v49 <= 285212703)
            {
              goto LABEL_139;
            }

            goto LABEL_71;
          }

          if (v41 == 268435488)
          {
            v48 = 352;
            v49 = *(v87 + 2);
            if (v49 > 285212703)
            {
              goto LABEL_71;
            }

LABEL_139:
            if (v49 <= 31)
            {
              if (v49 > 7)
              {
                if (v49 == 8)
                {
                  v48 |= 0xC0uLL;
                  v50 = *(v46 + 2);
                  if (v50 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                }

                if (v49 == 16)
                {
                  v48 |= 0xE0uLL;
                  v50 = *(v46 + 2);
                  if (v50 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                }
              }

              else
              {
                if (v49 == -1879048176)
                {
                  v48 |= 0x180uLL;
                  v50 = *(v46 + 2);
                  if (v50 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                }

                if (v49 == 4)
                {
                  v48 |= 0xA0uLL;
                  v50 = *(v46 + 2);
                  if (v50 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                }
              }
            }

            else if (v49 <= 268435463)
            {
              if (v49 == 32)
              {
                v48 |= 0x100uLL;
                v50 = *(v46 + 2);
                if (v50 <= 285212703)
                {
                  goto LABEL_109;
                }

                goto LABEL_92;
              }

              if (v49 == 64)
              {
                v48 |= 0x120uLL;
                v50 = *(v46 + 2);
                if (v50 <= 285212703)
                {
                  goto LABEL_109;
                }

                goto LABEL_92;
              }
            }

            else
            {
              switch(v49)
              {
                case 268435464:
                  v48 |= 0x1E0uLL;
                  v50 = *(v46 + 2);
                  if (v50 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                case 268435472:
                  v48 |= 0x140uLL;
                  v50 = *(v46 + 2);
                  if (v50 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                case 268435488:
                  v48 |= 0x160uLL;
                  v50 = *(v46 + 2);
                  if (v50 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
              }
            }

LABEL_219:
            v48 |= 0x240uLL;
            v50 = *(v46 + 2);
            if (v50 <= 285212703)
            {
              goto LABEL_109;
            }

LABEL_92:
            if (v50 <= 536870915)
            {
              if (v50 > 301989895)
              {
                if (v50 == 301989896)
                {
                  v51 = 512;
                  goto LABEL_176;
                }

                if (v50 == 335544328)
                {
                  v51 = 544;
                  goto LABEL_176;
                }
              }

              else
              {
                if (v50 == 285212704)
                {
                  v51 = 416;
                  goto LABEL_176;
                }

                if (v50 == 285212736)
                {
                  v51 = 448;
                  goto LABEL_176;
                }
              }
            }

            else if (v50 <= 536870927)
            {
              if (v50 == 536870916)
              {
                v51 = 0;
                goto LABEL_176;
              }

              if (v50 == 536870920)
              {
                v51 = 32;
                goto LABEL_176;
              }
            }

            else
            {
              switch(v50)
              {
                case 536870928:
                  v51 = 64;
                  goto LABEL_176;
                case 536870944:
                  v51 = 96;
                  goto LABEL_176;
                case 536870976:
                  v51 = 128;
                  goto LABEL_176;
              }
            }

            goto LABEL_175;
          }

          goto LABEL_173;
        }

        v48 = 480;
LABEL_70:
        v47 = v90;
        v49 = *(v87 + 2);
        if (v49 > 285212703)
        {
          goto LABEL_71;
        }

        goto LABEL_139;
      }

      v4 = v80;
      v45 = v81;
      v46 = v79;
      if (v41 != 32)
      {
        v47 = v90;
        if (v41 == 64)
        {
          v48 = 288;
          v49 = *(v87 + 2);
          if (v49 <= 285212703)
          {
            goto LABEL_139;
          }

          goto LABEL_71;
        }

        goto LABEL_173;
      }

      v48 = 256;
      v47 = v90;
LABEL_138:
      v49 = *(v87 + 2);
      if (v49 > 285212703)
      {
        goto LABEL_71;
      }

      goto LABEL_139;
    }

    v42 = v27;
    v43 = v82;
    v44 = v35;
    if (v41 > 7)
    {
      v4 = v80;
      v45 = v81;
      v46 = v79;
      if (v41 == 8)
      {
        v48 = 192;
        goto LABEL_70;
      }

      v47 = v90;
      if (v41 == 16)
      {
        v48 = 224;
        v49 = *(v87 + 2);
        if (v49 <= 285212703)
        {
          goto LABEL_139;
        }

        goto LABEL_71;
      }
    }

    else
    {
      v4 = v80;
      v45 = v81;
      v46 = v79;
      if (v41 == -1879048176)
      {
        v48 = 384;
        goto LABEL_70;
      }

      v47 = v90;
      if (v41 == 4)
      {
        v48 = 160;
        v49 = *(v87 + 2);
        if (v49 <= 285212703)
        {
          goto LABEL_139;
        }

        goto LABEL_71;
      }
    }
  }

LABEL_173:
  v48 = 576;
  v49 = *(v87 + 2);
  if (v49 <= 285212703)
  {
    goto LABEL_139;
  }

LABEL_71:
  if (v49 <= 536870915)
  {
    if (v49 > 301989895)
    {
      if (v49 == 301989896)
      {
        v48 |= 0x200uLL;
        v50 = *(v46 + 2);
        if (v50 > 285212703)
        {
          goto LABEL_92;
        }

        goto LABEL_109;
      }

      if (v49 == 335544328)
      {
        v48 |= 0x220uLL;
        v50 = *(v46 + 2);
        if (v50 <= 285212703)
        {
          goto LABEL_109;
        }

        goto LABEL_92;
      }
    }

    else
    {
      if (v49 == 285212704)
      {
        v48 |= 0x1A0uLL;
        v50 = *(v46 + 2);
        if (v50 > 285212703)
        {
          goto LABEL_92;
        }

        goto LABEL_109;
      }

      if (v49 == 285212736)
      {
        v48 |= 0x1C0uLL;
        v50 = *(v46 + 2);
        if (v50 <= 285212703)
        {
          goto LABEL_109;
        }

        goto LABEL_92;
      }
    }

    goto LABEL_219;
  }

  if (v49 <= 536870927)
  {
    if (v49 == 536870916)
    {
      v50 = *(v46 + 2);
      if (v50 > 285212703)
      {
        goto LABEL_92;
      }

      goto LABEL_109;
    }

    if (v49 == 536870920)
    {
      v48 |= 0x20uLL;
      v50 = *(v46 + 2);
      if (v50 <= 285212703)
      {
        goto LABEL_109;
      }

      goto LABEL_92;
    }

    goto LABEL_219;
  }

  if (v49 == 536870928)
  {
    v48 |= 0x40uLL;
    v50 = *(v46 + 2);
    if (v50 <= 285212703)
    {
      goto LABEL_109;
    }

    goto LABEL_92;
  }

  if (v49 == 536870944)
  {
    v48 |= 0x60uLL;
    v50 = *(v46 + 2);
    if (v50 <= 285212703)
    {
      goto LABEL_109;
    }

    goto LABEL_92;
  }

  if (v49 != 536870976)
  {
    goto LABEL_219;
  }

  v48 |= 0x80uLL;
  v50 = *(v46 + 2);
  if (v50 > 285212703)
  {
    goto LABEL_92;
  }

LABEL_109:
  if (v50 <= 31)
  {
    if (v50 > 7)
    {
      if (v50 == 8)
      {
        v51 = 192;
        goto LABEL_176;
      }

      if (v50 == 16)
      {
        v51 = 224;
        goto LABEL_176;
      }
    }

    else
    {
      if (v50 == -1879048176)
      {
        v51 = 384;
        goto LABEL_176;
      }

      if (v50 == 4)
      {
        v51 = 160;
        goto LABEL_176;
      }
    }
  }

  else if (v50 <= 268435463)
  {
    if (v50 == 32)
    {
      v51 = 256;
      goto LABEL_176;
    }

    if (v50 == 64)
    {
      v51 = 288;
      goto LABEL_176;
    }
  }

  else
  {
    switch(v50)
    {
      case 268435464:
        v51 = 480;
        goto LABEL_176;
      case 268435472:
        v51 = 320;
        goto LABEL_176;
      case 268435488:
        v51 = 352;
        goto LABEL_176;
    }
  }

LABEL_175:
  v51 = 576;
LABEL_176:
  v52 = v48 | v51;
  v53 = *(v83 + 2);
  if (v53 > 285212703)
  {
    if (v53 <= 536870915)
    {
      if (v53 > 301989895)
      {
        if (v53 == 301989896)
        {
          v54 = 16;
          goto LABEL_222;
        }

        if (v53 == 335544328)
        {
          v54 = 17;
          goto LABEL_222;
        }
      }

      else
      {
        if (v53 == 285212704)
        {
          v54 = 13;
          goto LABEL_222;
        }

        if (v53 == 285212736)
        {
          v54 = 14;
          goto LABEL_222;
        }
      }
    }

    else if (v53 <= 536870927)
    {
      if (v53 == 536870916)
      {
        v54 = 0;
        goto LABEL_222;
      }

      if (v53 == 536870920)
      {
        v54 = 1;
        goto LABEL_222;
      }
    }

    else
    {
      switch(v53)
      {
        case 536870928:
          v54 = 2;
          goto LABEL_222;
        case 536870944:
          v54 = 3;
          goto LABEL_222;
        case 536870976:
          v54 = 4;
          goto LABEL_222;
      }
    }

LABEL_221:
    v54 = 18;
    goto LABEL_222;
  }

  if (v53 <= 31)
  {
    if (v53 > 7)
    {
      if (v53 == 8)
      {
        v54 = 6;
        goto LABEL_222;
      }

      if (v53 == 16)
      {
        v54 = 7;
        goto LABEL_222;
      }
    }

    else
    {
      if (v53 == -1879048176)
      {
        v54 = 12;
        goto LABEL_222;
      }

      if (v53 == 4)
      {
        v54 = 5;
        goto LABEL_222;
      }
    }

    goto LABEL_221;
  }

  if (v53 <= 268435463)
  {
    if (v53 == 32)
    {
      v54 = 8;
      goto LABEL_222;
    }

    if (v53 == 64)
    {
      v54 = 9;
      goto LABEL_222;
    }

    goto LABEL_221;
  }

  if (v53 == 268435464)
  {
    v54 = 15;
    goto LABEL_222;
  }

  if (v53 == 268435472)
  {
    v54 = 10;
    goto LABEL_222;
  }

  if (v53 != 268435488)
  {
    goto LABEL_221;
  }

  v54 = 11;
LABEL_222:
  *&v55 = -1;
  *(&v55 + 1) = -1;
  v104 = v55;
  v105 = v55;
  *&v101[16] = -1;
  v103 = v55;
  *v101 = v55;
  v102 = v52 | v54;
  *&v105 = [v4[2] count] | 0x10100;
  *&v101[16] = (16 * v43) | (v42 << 7) | (v45 << 6) | v86;
  *&v56 = __PAIR64__(v84, v32);
  *&v57 = __PAIR64__(v33, v32);
  *(&v57 + 1) = __PAIR64__(v44, v89);
  *(&v56 + 1) = __PAIR64__(v44, v88);
  v99 = 0;
  v100 = 0;
  *v98 = v57;
  *&v98[16] = v56;
  v74 = *(a1 + *MEMORY[0x277CD7360]);
  v77 = *(a1 + *MEMORY[0x277CD7368]);
  v71 = v4[29];
  MPSLibrary::CreateUberShaderKey();
  v58 = MPSLibrary::GetPipelineStateForMPSKey();
  v59 = [v58 threadExecutionWidth];
  if (v59 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v59;
  }

  v61 = [v58 maxTotalThreadsPerThreadgroup];
  v62 = 256;
  if (v61 < 0x100)
  {
    v62 = v61;
  }

  if (v62 <= 2 * v60)
  {
    v63 = 1;
  }

  else
  {
    v63 = v62 / v60;
  }

  MPSSetNDArraysOnComputeEncoder(v47, v4, 4, 0, 0);
  [v47 setComputePipelineState:v58];
  objc_msgSend_setBytes_length_atIndex_(v47);
  v95 = (v60 + v84 * v32 - 1) / v60;
  v96 = (v63 + v88 - 1) / v63;
  v97 = v44;
  v92 = v60;
  v93 = v63;
  v64 = 1;
  v94 = 1;
  [v47 dispatchThreadgroups:&v95 threadsPerThreadgroup:&v92];
  MPSLibrary::ReleaseComputeState();
  v75 = *(a1 + *MEMORY[0x277CD7360]);
  v78 = *(a1 + *MEMORY[0x277CD7368]);
  v72 = v4[29];
  MPSLibrary::CreateUberShaderKey();
  v65 = MPSLibrary::GetPipelineStateForMPSKey();
  v66 = [v65 threadExecutionWidth];
  if (v66 <= 1)
  {
    v67 = 1;
  }

  else
  {
    v67 = v66;
  }

  v68 = [v65 maxTotalThreadsPerThreadgroup];
  v69 = 256;
  if (v68 < 0x100)
  {
    v69 = v68;
  }

  if (v69 > 2 * v67)
  {
    v64 = v69 / v67;
  }

  [v47 setComputePipelineState:v65];
  v95 = (v67 + v85 - 1) / v67;
  v96 = (v64 + v89 - 1) / v64;
  v97 = v44;
  v92 = v67;
  v93 = v64;
  v94 = 1;
  [v47 dispatchThreadgroups:&v95 threadsPerThreadgroup:&v92];
  MPSLibrary::ReleaseComputeState();
LABEL_238:
  [v4[28] objectAtIndexedSubscript:1];
  objc_opt_class();
  objc_opt_isKindOfClass();
  return 0;
}

uint64_t MPSNDArrayGridSampleConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v7 = v6;
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10))));
  v13 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v13 != 0 || (v12 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v6 setConstantValue:&v19 type:33 atIndex:126];
      v8 = *a3;
    }

    if (v8 != -1)
    {
      v19 = v8;
      [v7 setConstantValue:&v19 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v19 = a3[2];
      [v7 setConstantValue:&v19 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v19 = a3[3];
      [v7 setConstantValue:&v19 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v19 = a3[4];
      [v7 setConstantValue:&v19 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v19 = a3[5];
      [v7 setConstantValue:&v19 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v19 = a3[8];
      [v7 setConstantValue:&v19 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v19 = a3[9];
      [v7 setConstantValue:&v19 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v19 = a3[6];
      [v7 setConstantValue:&v19 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v19 = a3[7];
      [v7 setConstantValue:&v19 type:33 atIndex:116];
    }
  }

  v17 = _MPSNewSpecializedFunction();

  return v17;
}

{
  v6 = MPSCreateFunctionConstantValues();
  v7 = v6;
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10))));
  v13 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v13 != 0 || (v12 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v6 setConstantValue:&v19 type:33 atIndex:126];
      v8 = *a3;
    }

    if (v8 != -1)
    {
      v19 = v8;
      [v7 setConstantValue:&v19 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v19 = a3[2];
      [v7 setConstantValue:&v19 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v19 = a3[3];
      [v7 setConstantValue:&v19 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v19 = a3[4];
      [v7 setConstantValue:&v19 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v19 = a3[5];
      [v7 setConstantValue:&v19 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v19 = a3[8];
      [v7 setConstantValue:&v19 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v19 = a3[9];
      [v7 setConstantValue:&v19 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v19 = a3[6];
      [v7 setConstantValue:&v19 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v19 = a3[7];
      [v7 setConstantValue:&v19 type:33 atIndex:116];
    }
  }

  v17 = _MPSNewSpecializedFunction();

  return v17;
}

uint64_t EncodeArrayNeuron(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v11 = v8;
  v12 = *(a4 + 208);
  v13 = MEMORY[0x277CD7410];
  v14 = *MEMORY[0x277CD7410];
  v15 = *MEMORY[0x277CD7410];
  v16 = MEMORY[0x277CD73D8];
  if (*&v8[v15] == 1)
  {
    v9 = 0;
    if (*&v8[v14 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v10 = 0;
    if (*&v12[v15] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v4 = 0;
    if (*&v12[v14 + 4] != 1)
    {
      goto LABEL_25;
    }

LABEL_23:
    LODWORD(v21) = 0;
    goto LABEL_29;
  }

  if (*&v8[*MEMORY[0x277CD73D8]] == 1)
  {
    v9 = *&v8[*MEMORY[0x277CD7400]];
    if (*&v8[v14 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v8[*MEMORY[0x277CD73D8]])
  {
    v9 = [v8 dataType] >> 3;
    v14 = *v13;
    v15 = *v13;
  }

  if (*&v11[v15 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v11[*v16 + 1])
  {
    v4 = v9;
    v17 = [v11 dataType];
    v9 = v4;
    v10 = v17 >> 3;
    v14 = *v13;
    if (*&v12[*v13] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v11[*v16 + 1] != 1)
  {
    if (*&v12[v15] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = *&v11[*MEMORY[0x277CD7400]];
  if (*&v12[v15] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v12[*v16] == 1)
  {
    v4 = *&v12[*MEMORY[0x277CD7400]];
    if (*&v12[v14 + 4] != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!*&v12[*v16])
  {
    v18 = v9;
    v19 = v10;
    v20 = [v12 dataType];
    v10 = v19;
    v9 = v18;
    v4 = v20 >> 3;
    v14 = *v13;
  }

  if (*&v12[v14 + 4] == 1)
  {
    goto LABEL_23;
  }

LABEL_25:
  v21 = &v12[*v16];
  if (v21[1])
  {
    if (v21[1] == 1)
    {
      LODWORD(v21) = *&v12[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v22 = v9;
    v23 = v10;
    v24 = [v12 dataType];
    v10 = v23;
    v9 = v22;
    LODWORD(v21) = v24 >> 3;
  }

LABEL_29:
  v25 = *(*(a4 + 8) + 64);
  v26 = *(a4 + 192);
  v27 = *MEMORY[0x277CD73C8];
  v28 = *&v11[v27];
  if (v28 > 285212703)
  {
    if (v28 <= 536870915)
    {
      if (v28 > 301989895)
      {
        if (v28 == 301989896)
        {
          v29 = 512;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v28 != 335544328)
          {
            goto LABEL_110;
          }

          v29 = 544;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }
        }
      }

      else if (v28 == 285212704)
      {
        v29 = 416;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v28 != 285212736)
        {
          goto LABEL_110;
        }

        v29 = 448;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }
      }
    }

    else if (v28 <= 536870927)
    {
      if (v28 == 536870916)
      {
        v29 = 0;
        v30 = *&v12[v27];
        if (v30 > 285212703)
        {
          goto LABEL_111;
        }

        goto LABEL_89;
      }

      if (v28 != 536870920)
      {
        goto LABEL_110;
      }

      v29 = 32;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }

    else
    {
      switch(v28)
      {
        case 536870928:
          v29 = 64;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }

          break;
        case 536870944:
          v29 = 96;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }

          break;
        case 536870976:
          v29 = 128;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }

          break;
        default:
          goto LABEL_110;
      }
    }
  }

  else if (v28 <= 31)
  {
    if (v28 > 7)
    {
      if (v28 == 8)
      {
        v29 = 192;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v28 != 16)
        {
          goto LABEL_110;
        }

        v29 = 224;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }
      }
    }

    else if (v28 == -1879048176)
    {
      v29 = 384;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v28 != 4)
      {
        goto LABEL_110;
      }

      v29 = 160;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }
  }

  else if (v28 <= 268435463)
  {
    if (v28 == 32)
    {
      v29 = 256;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v28 != 64)
      {
        goto LABEL_110;
      }

      v29 = 288;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }
  }

  else
  {
    switch(v28)
    {
      case 268435464:
        v29 = 480;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }

        break;
      case 268435472:
        v29 = 320;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }

        break;
      case 268435488:
        v29 = 352;
        v30 = *&v12[v27];
        if (v30 > 285212703)
        {
          break;
        }

LABEL_89:
        if (v30 <= 31)
        {
          if (v30 > 7)
          {
            if (v30 == 8)
            {
              v31 = 6;
              goto LABEL_133;
            }

            if (v30 == 16)
            {
              v31 = 7;
              goto LABEL_133;
            }
          }

          else
          {
            if (v30 == -1879048176)
            {
              v31 = 12;
              goto LABEL_133;
            }

            if (v30 == 4)
            {
              v31 = 5;
              goto LABEL_133;
            }
          }
        }

        else if (v30 <= 268435463)
        {
          if (v30 == 32)
          {
            v31 = 8;
            goto LABEL_133;
          }

          if (v30 == 64)
          {
            v31 = 9;
            goto LABEL_133;
          }
        }

        else
        {
          switch(v30)
          {
            case 268435464:
              v31 = 15;
              goto LABEL_133;
            case 268435472:
              v31 = 10;
              goto LABEL_133;
            case 268435488:
              v31 = 11;
              goto LABEL_133;
          }
        }

        goto LABEL_132;
      default:
LABEL_110:
        v29 = 576;
        v30 = *&v12[v27];
        if (v30 > 285212703)
        {
          break;
        }

        goto LABEL_89;
    }
  }

LABEL_111:
  if (v30 <= 536870915)
  {
    if (v30 > 301989895)
    {
      if (v30 == 301989896)
      {
        v31 = 16;
        goto LABEL_133;
      }

      if (v30 == 335544328)
      {
        v31 = 17;
        goto LABEL_133;
      }
    }

    else
    {
      if (v30 == 285212704)
      {
        v31 = 13;
        goto LABEL_133;
      }

      if (v30 == 285212736)
      {
        v31 = 14;
        goto LABEL_133;
      }
    }
  }

  else if (v30 <= 536870927)
  {
    if (v30 == 536870916)
    {
      v31 = 0;
      goto LABEL_133;
    }

    if (v30 == 536870920)
    {
      v31 = 1;
      goto LABEL_133;
    }
  }

  else
  {
    switch(v30)
    {
      case 536870928:
        v31 = 2;
        goto LABEL_133;
      case 536870944:
        v31 = 3;
        goto LABEL_133;
      case 536870976:
        v31 = 4;
        goto LABEL_133;
    }
  }

LABEL_132:
  v31 = 18;
LABEL_133:
  v32 = v29 | v31;
  v33 = *(a1 + 664);
  *&v34 = -1;
  *(&v34 + 1) = -1;
  v69 = v34;
  v70 = v34;
  v66 = -1;
  v68 = v34;
  v65 = v34;
  v67 = v32 | (v33 << 16);
  v35 = &v12[*v13];
  v36 = *v35;
  v37 = *(v35 + 1);
  v56 = *v35;
  v57 = v37;
  v58 = v10;
  v59 = v21;
  v60 = 0;
  v61 = v9;
  v62 = v4;
  v63 = 0;
  v64 = v33;
  v38 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v40 = [ComputeState threadExecutionWidth];
  if (v40 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  v42 = [ComputeState maxTotalThreadsPerThreadgroup];
  v43 = 256;
  if (v42 < 0x100)
  {
    v43 = v42;
  }

  if (v43 > 2 * v41)
  {
    v38 = v43 / v41;
  }

  v44 = v37 - 1;
  if (v36 == 1 && v37 >= 2)
  {
    v38 *= v41;
    v45 = 1;
    v41 = 1;
    v46 = (v38 + v44) / v38;
  }

  else
  {
    v47 = (v38 + v44) / v38;
    v48 = v38 * v41;
    v49 = (v38 * v41 + v36 - 1) / (v38 * v41);
    v50 = 1;
    if (v37 == 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v47;
    }

    if (v37 != 1)
    {
      v49 = (v41 + v36 - 1) / v41;
      v50 = v38;
      v48 = v41;
    }

    v52 = v36 >= 2;
    if (v36 >= 2)
    {
      v46 = v51;
    }

    else
    {
      v46 = v47;
    }

    if (v36 >= 2)
    {
      v45 = v49;
    }

    else
    {
      v45 = (v41 + v36 - 1) / v41;
    }

    if (v52)
    {
      v38 = v50;
    }

    if (v52)
    {
      v41 = v48;
    }
  }

  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v11 offset:"buffer") atIndex:{v25, 0}];
  [a2 setBuffer:objc_msgSend(v12 offset:"buffer") atIndex:{v26, 1}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v55[0] = v45;
  v55[1] = v46;
  v55[2] = 1;
  v54[0] = v41;
  v54[1] = v38;
  v54[2] = 1;
  [a2 dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayNeuronGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v71 = *(a4 + 112);
  v72 = *(a4 + 208);
  v12 = MEMORY[0x277CD7410];
  v13 = *MEMORY[0x277CD7410];
  v14 = *MEMORY[0x277CD7410];
  v70 = v8;
  v15 = MEMORY[0x277CD73D8];
  if (*&v8[v14] == 1)
  {
    v11 = 0;
    if (*&v8[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v5 = 0;
    if (*&v72[v14] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v9 = 0;
    v21 = v13;
    if (*&v72[v13 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v8[*MEMORY[0x277CD73D8]] == 1)
  {
    v11 = *&v8[*MEMORY[0x277CD7400]];
    if (*&v8[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v8[*MEMORY[0x277CD73D8]])
  {
    v16 = MEMORY[0x277CD7410];
    v17 = [v8 dataType];
    v12 = v16;
    v11 = v17 >> 3;
    v13 = *v16;
    v14 = *v16;
  }

  if (*&v70[v14 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v70[*v15 + 1])
  {
    v18 = v12;
    v19 = v11;
    v20 = [v70 dataType];
    v11 = v19;
    v12 = v18;
    v5 = v20 >> 3;
    v13 = *v18;
    if (*&v72[*v18] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v70[*v15 + 1] != 1)
  {
    if (*&v72[v14] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v5 = *&v70[*MEMORY[0x277CD7400]];
  if (*&v72[v14] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v72[*v15] == 1)
  {
    v9 = *&v72[*MEMORY[0x277CD7400]];
    v21 = v13;
    if (*&v72[v13 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v72[*v15])
    {
      v22 = v12;
      v23 = v11;
      v24 = [v72 dataType];
      v11 = v23;
      v12 = v22;
      v9 = v24 >> 3;
      v13 = *v22;
    }

    v21 = v13;
    if (*&v72[v13 + 4] == 1)
    {
LABEL_23:
      v10 = 0;
      if (*&v71[v21] != 1)
      {
        goto LABEL_34;
      }

LABEL_31:
      v6 = 0;
      if (*&v71[v13 + 4] != 1)
      {
        goto LABEL_40;
      }

LABEL_38:
      LODWORD(v34) = 0;
      goto LABEL_44;
    }
  }

LABEL_26:
  if (!v72[*v15 + 1])
  {
    v25 = v12;
    v26 = v11;
    v27 = v9;
    v28 = [v72 dataType];
    v9 = v27;
    v11 = v26;
    v12 = v25;
    v10 = v28 >> 3;
    v13 = *v25;
    if (*&v71[*v25] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v72[*v15 + 1] != 1)
  {
    if (*&v71[v21] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v10 = *&v72[*MEMORY[0x277CD7400]];
  if (*&v71[v21] == 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (*&v71[*v15] == 1)
  {
    v6 = *&v71[*MEMORY[0x277CD7400]];
    if (*&v71[v13 + 4] != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!*&v71[*v15])
  {
    v29 = v12;
    v30 = v11;
    v31 = v9;
    v32 = v10;
    v33 = [v71 dataType];
    v10 = v32;
    v9 = v31;
    v11 = v30;
    v12 = v29;
    v6 = v33 >> 3;
    v13 = *v29;
  }

  if (*&v71[v13 + 4] == 1)
  {
    goto LABEL_38;
  }

LABEL_40:
  v34 = &v71[*v15];
  if (v34[1])
  {
    if (v34[1] == 1)
    {
      LODWORD(v34) = *&v71[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v35 = v5;
    v36 = v12;
    v37 = v11;
    v38 = v9;
    v39 = v10;
    v40 = [v71 dataType];
    v10 = v39;
    v9 = v38;
    v11 = v37;
    v12 = v36;
    LODWORD(v34) = v40 >> 3;
    v5 = v35;
  }

LABEL_44:
  v41 = *(*(a4 + 8) + 64);
  v42 = *(a4 + 96);
  v43 = *MEMORY[0x277CD73C8];
  v44 = *&v70[v43];
  if (v44 > 285212703)
  {
    if (v44 <= 536870915)
    {
      if (v44 > 301989895)
      {
        if (v44 == 301989896)
        {
          v45 = 512;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (v44 != 335544328)
          {
            goto LABEL_125;
          }

          v45 = 544;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }
        }
      }

      else if (v44 == 285212704)
      {
        v45 = 416;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v44 != 285212736)
        {
          goto LABEL_125;
        }

        v45 = 448;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }
    }

    else if (v44 <= 536870927)
    {
      if (v44 == 536870916)
      {
        v45 = 0;
        v46 = *&v71[v43];
        if (v46 > 285212703)
        {
          goto LABEL_126;
        }

        goto LABEL_104;
      }

      if (v44 != 536870920)
      {
        goto LABEL_125;
      }

      v45 = 32;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }

    else
    {
      switch(v44)
      {
        case 536870928:
          v45 = 64;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }

          break;
        case 536870944:
          v45 = 96;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }

          break;
        case 536870976:
          v45 = 128;
          v46 = *&v71[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }

          break;
        default:
          goto LABEL_125;
      }
    }
  }

  else if (v44 <= 31)
  {
    if (v44 > 7)
    {
      if (v44 == 8)
      {
        v45 = 192;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v44 != 16)
        {
          goto LABEL_125;
        }

        v45 = 224;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }
    }

    else if (v44 == -1879048176)
    {
      v45 = 384;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v44 != 4)
      {
        goto LABEL_125;
      }

      v45 = 160;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }
  }

  else if (v44 <= 268435463)
  {
    if (v44 == 32)
    {
      v45 = 256;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v44 != 64)
      {
        goto LABEL_125;
      }

      v45 = 288;
      v46 = *&v71[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }
  }

  else
  {
    switch(v44)
    {
      case 268435464:
        v45 = 480;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }

        break;
      case 268435472:
        v45 = 320;
        v46 = *&v71[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }

        break;
      case 268435488:
        v45 = 352;
        v46 = *&v71[v43];
        if (v46 > 285212703)
        {
          break;
        }

LABEL_104:
        if (v46 <= 31)
        {
          if (v46 > 7)
          {
            if (v46 == 8)
            {
              v47 = 6144;
              goto LABEL_148;
            }

            if (v46 == 16)
            {
              v47 = 7168;
              goto LABEL_148;
            }
          }

          else
          {
            if (v46 == -1879048176)
            {
              v47 = 12288;
              goto LABEL_148;
            }

            if (v46 == 4)
            {
              v47 = 5120;
              goto LABEL_148;
            }
          }
        }

        else if (v46 <= 268435463)
        {
          if (v46 == 32)
          {
            v47 = 0x2000;
            goto LABEL_148;
          }

          if (v46 == 64)
          {
            v47 = 9216;
            goto LABEL_148;
          }
        }

        else
        {
          switch(v46)
          {
            case 268435464:
              v47 = 15360;
              goto LABEL_148;
            case 268435472:
              v47 = 10240;
              goto LABEL_148;
            case 268435488:
              v47 = 11264;
              goto LABEL_148;
          }
        }

        goto LABEL_147;
      default:
LABEL_125:
        v45 = 576;
        v46 = *&v71[v43];
        if (v46 > 285212703)
        {
          break;
        }

        goto LABEL_104;
    }
  }

LABEL_126:
  if (v46 <= 536870915)
  {
    if (v46 > 301989895)
    {
      if (v46 == 301989896)
      {
        v47 = 0x4000;
        goto LABEL_148;
      }

      if (v46 == 335544328)
      {
        v47 = 17408;
        goto LABEL_148;
      }
    }

    else
    {
      if (v46 == 285212704)
      {
        v47 = 13312;
        goto LABEL_148;
      }

      if (v46 == 285212736)
      {
        v47 = 14336;
        goto LABEL_148;
      }
    }
  }

  else if (v46 <= 536870927)
  {
    if (v46 == 536870916)
    {
      v47 = 0;
      goto LABEL_148;
    }

    if (v46 == 536870920)
    {
      v47 = 1024;
      goto LABEL_148;
    }
  }

  else
  {
    switch(v46)
    {
      case 536870928:
        v47 = 2048;
        goto LABEL_148;
      case 536870944:
        v47 = 3072;
        goto LABEL_148;
      case 536870976:
        v47 = 4096;
        goto LABEL_148;
    }
  }

LABEL_147:
  v47 = 18432;
LABEL_148:
  v48 = *&v72[v43];
  v66 = *(a4 + 192);
  if (v48 > 285212703)
  {
    if (v48 <= 536870915)
    {
      if (v48 > 301989895)
      {
        if (v48 == 301989896)
        {
          v50 = 16;
          v49 = a5;
          goto LABEL_192;
        }

        v49 = a5;
        if (v48 == 335544328)
        {
          v50 = 17;
          goto LABEL_192;
        }
      }

      else
      {
        if (v48 == 285212704)
        {
          v50 = 13;
          v49 = a5;
          goto LABEL_192;
        }

        v49 = a5;
        if (v48 == 285212736)
        {
          v50 = 14;
          goto LABEL_192;
        }
      }
    }

    else if (v48 <= 536870927)
    {
      if (v48 == 536870916)
      {
        v50 = 0;
        v49 = a5;
        goto LABEL_192;
      }

      v49 = a5;
      if (v48 == 536870920)
      {
        v50 = 1;
        goto LABEL_192;
      }
    }

    else
    {
      if (v48 == 536870928)
      {
        v50 = 2;
        v49 = a5;
        goto LABEL_192;
      }

      if (v48 == 536870944)
      {
        v50 = 3;
        v49 = a5;
        goto LABEL_192;
      }

      v49 = a5;
      if (v48 == 536870976)
      {
        v50 = 4;
        goto LABEL_192;
      }
    }
  }

  else if (v48 <= 31)
  {
    if (v48 > 7)
    {
      v49 = a5;
      if (v48 == 8)
      {
        v50 = 6;
        goto LABEL_192;
      }

      if (v48 == 16)
      {
        v50 = 7;
        goto LABEL_192;
      }
    }

    else
    {
      if (v48 == -1879048176)
      {
        v50 = 12;
        v49 = a5;
        goto LABEL_192;
      }

      v49 = a5;
      if (v48 == 4)
      {
        v50 = 5;
        goto LABEL_192;
      }
    }
  }

  else if (v48 <= 268435463)
  {
    v49 = a5;
    if (v48 == 32)
    {
      v50 = 8;
      goto LABEL_192;
    }

    if (v48 == 64)
    {
      v50 = 9;
      goto LABEL_192;
    }
  }

  else
  {
    if (v48 == 268435464)
    {
      v50 = 15;
      v49 = a5;
      goto LABEL_192;
    }

    if (v48 == 268435472)
    {
      v50 = 10;
      v49 = a5;
      goto LABEL_192;
    }

    v49 = a5;
    if (v48 == 268435488)
    {
      v50 = 11;
      goto LABEL_192;
    }
  }

  v50 = 18;
LABEL_192:
  v51 = 0x2000000;
  if (!v49)
  {
    v51 = 0;
  }

  v52 = *(a1 + 144);
  *&v53 = -1;
  *(&v53 + 1) = -1;
  v88 = v53;
  v89 = v53;
  v85 = -1;
  v87 = v53;
  v84 = v53;
  v86 = v45 | v47 | v50 | v51 | (v52 << 16);
  v54 = &v72[*v12];
  v55 = *v54;
  v56 = *(v54 + 1);
  v75 = *v54;
  v76 = v56;
  v77 = v5;
  v78 = v10;
  v79 = v34;
  v80 = v11;
  v81 = v9;
  v82 = v6;
  v83 = v52;
  v57 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v59 = [ComputeState threadExecutionWidth];
  if (v59 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v59;
  }

  v61 = [ComputeState maxTotalThreadsPerThreadgroup];
  v62 = 256;
  if (v61 < 0x100)
  {
    v62 = v61;
  }

  v63 = v62 > 2 * v60;
  v64 = v62 / v60;
  if (v63)
  {
    v57 = v64;
  }

  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v70 offset:"buffer") atIndex:{v41, 0}];
  [a2 setBuffer:objc_msgSend(v71 offset:"buffer") atIndex:{v42, 1}];
  [a2 setBuffer:objc_msgSend(v72 offset:"buffer") atIndex:{v66, 2}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v74[0] = (v55 + v60 - 1) / v60;
  v74[1] = (v56 + v57 - 1) / v57;
  v74[2] = 1;
  v73[0] = v60;
  v73[1] = v57;
  v73[2] = 1;
  [a2 dispatchThreadgroups:v74 threadsPerThreadgroup:v73];
  MPSLibrary::ReleaseComputeState();
  return 0;
}