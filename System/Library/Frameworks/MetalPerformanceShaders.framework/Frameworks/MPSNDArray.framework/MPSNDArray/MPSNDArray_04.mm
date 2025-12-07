void std::__shared_ptr_pointer<MPSKernelUserDAG *,std::shared_ptr<MPSKernelUserDAG>::__shared_ptr_default_delete<MPSKernelUserDAG,MPSKernelUserDAG>,std::allocator<MPSKernelUserDAG>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE7C8C0);
}

uint64_t std::__shared_ptr_pointer<MPSKernelUserDAG *,std::shared_ptr<MPSKernelUserDAG>::__shared_ptr_default_delete<MPSKernelUserDAG,MPSKernelUserDAG>,std::allocator<MPSKernelUserDAG>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_239A424A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  MPSAutoEncoder::~MPSAutoEncoder(va);
  _Unwind_Resume(a1);
}

void sub_239A424BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void MPSAutoEncoder::~MPSAutoEncoder(id *this)
{
  [*this endEncoding];
}

{
  [*this endEncoding];
}

uint64_t EncodeStridedSliceCommon(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a4;
  v9 = MEMORY[0x277CD73D8];
  if (a4)
  {
    v10 = *(a3 + 112);
    v11 = *MEMORY[0x277CD73D8];
    v12 = *&v10[v11];
    v13 = *(*(*(a3 + 24) + 56) + 4 * (v12 & 0xF));
    v14 = (a3 + 96);
  }

  else
  {
    v10 = [*(a3 + 16) objectAtIndexedSubscript:0];
    v11 = *v9;
    v12 = *&v10[v11];
    v15 = *(a3 + 8);
    v13 = *(v15 + 4 * (v12 & 0xF));
    v14 = (v15 + 64);
  }

  v16 = *(a3 + 208);
  v17 = *v14;
  v18 = *(a3 + 192);
  v19 = *MEMORY[0x277CD73C8];
  v20 = *&v10[v19];
  if (v20 > 285212703)
  {
    if (v20 <= 536870915)
    {
      if (v20 > 301989895)
      {
        if (v20 == 301989896)
        {
          v21 = 512;
          v22 = *&v16[v19];
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v20 != 335544328)
          {
            goto LABEL_85;
          }

          v21 = 544;
          v22 = *&v16[v19];
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }
        }
      }

      else if (v20 == 285212704)
      {
        v21 = 416;
        v22 = *&v16[v19];
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v20 != 285212736)
        {
          goto LABEL_85;
        }

        v21 = 448;
        v22 = *&v16[v19];
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v20 <= 536870927)
    {
      if (v20 == 536870916)
      {
        v21 = 0;
        v22 = *&v16[v19];
        if (v22 > 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_64;
      }

      if (v20 != 536870920)
      {
        goto LABEL_85;
      }

      v21 = 32;
      v22 = *&v16[v19];
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      switch(v20)
      {
        case 536870928:
          v21 = 64;
          v22 = *&v16[v19];
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870944:
          v21 = 96;
          v22 = *&v16[v19];
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870976:
          v21 = 128;
          v22 = *&v16[v19];
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        default:
          goto LABEL_85;
      }
    }
  }

  else if (v20 <= 31)
  {
    if (v20 > 7)
    {
      if (v20 == 8)
      {
        v21 = 192;
        v22 = *&v16[v19];
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v20 != 16)
        {
          goto LABEL_85;
        }

        v21 = 224;
        v22 = *&v16[v19];
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v20 == -1879048176)
    {
      v21 = 384;
      v22 = *&v16[v19];
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v20 != 4)
      {
        goto LABEL_85;
      }

      v21 = 160;
      v22 = *&v16[v19];
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else if (v20 <= 268435463)
  {
    if (v20 == 32)
    {
      v21 = 256;
      v22 = *&v16[v19];
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v20 != 64)
      {
        goto LABEL_85;
      }

      v21 = 288;
      v22 = *&v16[v19];
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    switch(v20)
    {
      case 268435464:
        v21 = 480;
        v22 = *&v16[v19];
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435472:
        v21 = 320;
        v22 = *&v16[v19];
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435488:
        v21 = 352;
        v22 = *&v16[v19];
        if (v22 > 285212703)
        {
          break;
        }

LABEL_64:
        if (v22 <= 31)
        {
          if (v22 > 7)
          {
            if (v22 == 8)
            {
              v23 = 6;
              goto LABEL_108;
            }

            if (v22 == 16)
            {
              v23 = 7;
              goto LABEL_108;
            }
          }

          else
          {
            if (v22 == -1879048176)
            {
              v23 = 12;
              goto LABEL_108;
            }

            if (v22 == 4)
            {
              v23 = 5;
              goto LABEL_108;
            }
          }
        }

        else if (v22 <= 268435463)
        {
          if (v22 == 32)
          {
            v23 = 8;
            goto LABEL_108;
          }

          if (v22 == 64)
          {
            v23 = 9;
            goto LABEL_108;
          }
        }

        else
        {
          switch(v22)
          {
            case 268435464:
              v23 = 15;
              goto LABEL_108;
            case 268435472:
              v23 = 10;
              goto LABEL_108;
            case 268435488:
              v23 = 11;
              goto LABEL_108;
          }
        }

        goto LABEL_107;
      default:
LABEL_85:
        v21 = 576;
        v22 = *&v16[v19];
        if (v22 > 285212703)
        {
          break;
        }

        goto LABEL_64;
    }
  }

LABEL_86:
  if (v22 <= 536870915)
  {
    if (v22 > 301989895)
    {
      if (v22 == 301989896)
      {
        v23 = 16;
        goto LABEL_108;
      }

      if (v22 == 335544328)
      {
        v23 = 17;
        goto LABEL_108;
      }
    }

    else
    {
      if (v22 == 285212704)
      {
        v23 = 13;
        goto LABEL_108;
      }

      if (v22 == 285212736)
      {
        v23 = 14;
        goto LABEL_108;
      }
    }
  }

  else if (v22 <= 536870927)
  {
    if (v22 == 536870916)
    {
      v23 = 0;
      goto LABEL_108;
    }

    if (v22 == 536870920)
    {
      v23 = 1;
      goto LABEL_108;
    }
  }

  else
  {
    switch(v22)
    {
      case 536870928:
        v23 = 2;
        goto LABEL_108;
      case 536870944:
        v23 = 3;
        goto LABEL_108;
      case 536870976:
        v23 = 4;
        goto LABEL_108;
    }
  }

LABEL_107:
  v23 = 18;
LABEL_108:
  v24 = 0x2000000;
  if ((v6 & a5) == 0)
  {
    v24 = 0;
  }

  *&v25 = -1;
  *(&v25 + 1) = -1;
  v83 = v25;
  v84 = v25;
  v80 = -1;
  v82 = v25;
  v79 = v25;
  v81 = v21 | v23 | v24;
  v26 = *MEMORY[0x277CD7410];
  v27 = *MEMORY[0x277CD7418];
  v29 = *&v10[v27 + 32];
  v28 = *&v10[v27 + 48];
  v31 = *&v10[v27];
  v30 = *&v10[v27 + 16];
  v32 = &v16[v27];
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  v36 = *v32;
  v35 = *(v32 + 1);
  if (v6)
  {
    v37 = v12 & 0xF;
    v38 = *&v10[4 * v37 + v26];
    v39 = *&v16[v11];
    v57 = v31;
    v58 = v30;
    v59 = v29;
    v60 = v28;
    v40 = *(&v57 + v37);
    v53 = v36;
    v54 = v35;
    v55 = v34;
    v56 = v33;
    v41 = *(&v53 + (v39 & 0xF));
    if (v13 < 0)
    {
      v41 = v38 + v41 - 1;
    }

    v73 = v38;
    v74 = v13;
    if (v20 > 285212703)
    {
      goto LABEL_114;
    }
  }

  else
  {
    v43 = *&v16[v11] & 0xF;
    v38 = *&v16[4 * v43 + v26];
    v65 = v31;
    v66 = v30;
    v67 = v29;
    v68 = v28;
    v44 = *(&v65 + (v12 & 0xF));
    v61 = v36;
    v62 = v35;
    v63 = v34;
    v64 = v33;
    v41 = *(&v61 + v43);
    v40 = v44 + v38 - 1;
    if (v13 >= 0)
    {
      v40 = v44;
    }

    v73 = v38;
    v74 = v13;
    if (v20 > 285212703)
    {
LABEL_114:
      if (v20 <= 536870915)
      {
        if (v20 > 301989895)
        {
          if (v20 == 301989896)
          {
            v42 = 16;
            goto LABEL_160;
          }

          if (v20 == 335544328)
          {
            v42 = 17;
            goto LABEL_160;
          }
        }

        else
        {
          if (v20 == 285212704)
          {
            v42 = 13;
            goto LABEL_160;
          }

          if (v20 == 285212736)
          {
            v42 = 14;
            goto LABEL_160;
          }
        }
      }

      else if (v20 <= 536870927)
      {
        if (v20 == 536870916)
        {
          v42 = 0;
          goto LABEL_160;
        }

        if (v20 == 536870920)
        {
          v42 = 1;
          goto LABEL_160;
        }
      }

      else
      {
        switch(v20)
        {
          case 536870928:
            v42 = 2;
            goto LABEL_160;
          case 536870944:
            v42 = 3;
            goto LABEL_160;
          case 536870976:
            v42 = 4;
            goto LABEL_160;
        }
      }

      goto LABEL_159;
    }
  }

  if (v20 <= 31)
  {
    if (v20 > 7)
    {
      if (v20 == 8)
      {
        v42 = 6;
        goto LABEL_160;
      }

      if (v20 == 16)
      {
        v42 = 7;
        goto LABEL_160;
      }
    }

    else
    {
      if (v20 == -1879048176)
      {
        v42 = 12;
        goto LABEL_160;
      }

      if (v20 == 4)
      {
        v42 = 5;
        goto LABEL_160;
      }
    }
  }

  else if (v20 <= 268435463)
  {
    if (v20 == 32)
    {
      v42 = 8;
      goto LABEL_160;
    }

    if (v20 == 64)
    {
      v42 = 9;
      goto LABEL_160;
    }
  }

  else
  {
    switch(v20)
    {
      case 268435464:
        v42 = 15;
        goto LABEL_160;
      case 268435472:
        v42 = 10;
        goto LABEL_160;
      case 268435488:
        v42 = 11;
        goto LABEL_160;
    }
  }

LABEL_159:
  v42 = 18;
LABEL_160:
  v45 = 31 - __clz(v20 >> 3);
  if (v20 >> 3)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v75 = v42;
  v76 = v46;
  v77 = v40;
  v78 = v41;
  ComputeState = MPSLibrary::GetComputeState();
  v48 = [ComputeState threadExecutionWidth];
  if (v48 <= 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = v48;
  }

  v50 = 2 * v49;
  v51 = (v49 + v38 - 1) / v49;
  [a2 setComputePipelineState:{ComputeState, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68}];
  [a2 setBuffer:objc_msgSend(v10 offset:"buffer") atIndex:{v17, 0}];
  [a2 setBuffer:objc_msgSend(v16 offset:"buffer") atIndex:{v18, 1}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v71 = v51;
  v72 = vdupq_n_s64(1uLL);
  v69 = v50;
  v70 = v72;
  [a2 dispatchThreadgroups:&v71 threadsPerThreadgroup:&v69];
  return MPSLibrary::ReleaseComputeState();
}

uint64_t EncodeHammingDistance(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + *MEMORY[0x277CD7350]);
  v7 = [*(a4 + 232) graph];
  v8 = **(v7 + 56);
  if (*(*(v7 + 56) + 8) == v8)
  {
    goto LABEL_80;
  }

  v10 = *(*v8 + 8);
  v9 = *v10;
  v11 = v10[1] - *v10;
  if (!v11 || (v180 = a1, v11 <= 8))
  {
LABEL_79:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v13 = *v9;
  v12 = v9[1];
  v14 = [*(a4 + 232) graph];
  v15 = **(v14 + 56);
  if (*(*(v14 + 56) + 8) == v15)
  {
LABEL_80:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v17 = *(*v15 + 24);
  v16 = *v17;
  if (v17[1] == *v17)
  {
    goto LABEL_79;
  }

  v18 = *v16;
  v176 = *(*v16 + 2);
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v255 = v19;
  v256 = v19;
  v253 = 0xFFFFFFFFFFFFFFFFLL;
  v254 = v19;
  v252 = v19;
  *&v256 = [*(a4 + 16) count] | 0x10000;
  DimensionSize = BaseTensor::GetDimensionSize(v18);
  v184 = BaseTensor::GetDimensionSize(v18);
  v153 = BaseTensor::GetDimensionSize(v18);
  v177 = BaseTensor::GetDimensionSize(v18);
  v20 = BaseTensor::GetDimensionSize(v13);
  v173 = BaseTensor::GetDimensionSize(v13);
  LODWORD(v18) = BaseTensor::GetDimensionSize(v13);
  v171 = BaseTensor::GetDimensionSize(v13);
  v166 = BaseTensor::GetDimensionSize(v12);
  v169 = BaseTensor::GetDimensionSize(v12);
  v168 = BaseTensor::GetDimensionSize(v12);
  v172 = v18;
  v167 = BaseTensor::GetDimensionSize(v12);
  if ((*(v6 + 1477) & 4) == 0)
  {
    if (v20 <= 0x200)
    {
      if (v20 <= 0x100)
      {
        if (v20 <= 0x10)
        {
          if (v20 <= 8)
          {
            v23 = 1;
          }

          else
          {
            v23 = 4;
          }

          v181 = 8;
          v21 = 1;
          v22 = 4;
          v24 = v20;
          if (*(v6 + 1482) << 16 == 0x400000)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v181 = 4;
          v21 = 2;
          v22 = 8;
          v23 = 1;
          v24 = v20;
          if (*(v6 + 1482) << 16 == 0x400000)
          {
LABEL_26:
            v181 = 4;
            v187 = 8;
            v23 = 1;
            v189 = 8;
            v186 = 1;
            goto LABEL_27;
          }
        }
      }

      else
      {
        v181 = 4;
        v22 = 8;
        v23 = 2;
        v21 = 2;
        v24 = v20;
        if (*(v6 + 1482) << 16 == 0x400000)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v181 = 4;
      v21 = 2;
      v22 = 16;
      v23 = 1;
      v24 = v20;
      if (*(v6 + 1482) << 16 == 0x400000)
      {
        goto LABEL_26;
      }
    }

    v189 = v22;
    v186 = v21;
    v187 = 8;
    goto LABEL_27;
  }

  v24 = v20;
  if (v20 >= 0x10)
  {
    v23 = 4;
    if (*(v6 + 1472) > 17)
    {
      v25 = 1;
    }

    else
    {
      v25 = 4;
    }

    v181 = v25;
    v186 = 1;
    v189 = 2;
    v187 = 16;
  }

  else
  {
    v187 = 16;
    v23 = 2;
    v189 = 2;
    v186 = 2;
    v181 = 2;
  }

LABEL_27:
  v154 = a2;
  v26 = [*(a4 + 232) graph];
  v27 = *(v26 + 64);
  v28 = *v27;
  v29 = v27[1];
  if (*v27 == v29)
  {
    v32 = 0;
    v36 = v177;
    goto LABEL_77;
  }

  v30 = v26;
  v31 = 0;
  v32 = -1;
  v33 = -1;
  do
  {
    v34 = *v28;
    if (v34 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v30) + 32))
    {
      v32 = v31;
    }

    v35 = *v28;
    if (v35 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v30) + 32))
    {
      v33 = v31;
    }

    if (MPSKernelDAG::GetCoreOpNumberOfInputs(v30) == 3)
    {
      MPSKernelDAG::GetCoreOpInputAtIndex(v30);
    }

    ++v31;
    ++v28;
  }

  while (v28 != v29);
  v36 = v177;
  if (v32 == -1)
  {
    v32 = 0;
LABEL_77:
    v37 = v23;
    v38 = v173;
    v39 = v24;
    v40 = v181;
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v37 = v23;
  v38 = v173;
  v39 = v24;
  v40 = v181;
  if (v33 != -1)
  {
    goto LABEL_41;
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_39:
    MTLReportFailure();
  }

LABEL_40:
  v33 = 0;
LABEL_41:
  v41 = [*(a4 + 16) objectAtIndexedSubscript:v32];
  v42 = [*(a4 + 16) objectAtIndexedSubscript:v33];
  v43 = *(a4 + 208);
  v44 = v42;
  makeStrideElements();
  v174 = vuzp1q_s32(v250, v251);
  v164 = vuzp1q_s32(v248, v249);
  v160 = vuzp1q_s32(v246, v247);
  v158 = vuzp1q_s32(v244, v245);
  makeStrideElements();
  v182 = v237;
  v178 = v236;
  v161 = v238;
  v162 = v239;
  v159 = v241;
  v156 = v243;
  v157 = v240;
  v155 = v242;
  makeStrideElements();
  v45 = v229;
  v46 = v228;
  v47 = v231;
  v48 = v230;
  v49 = v233;
  v50 = v232;
  v51 = v235;
  v52 = v234;
  v53 = *MEMORY[0x277CD73F0];
  v54 = *&v41[v53];
  v55 = MEMORY[0x277CD73D8];
  if (v54)
  {
    v56 = 0;
    v57 = *&v41[*MEMORY[0x277CD73D8]];
    v58 = v158;
    v59 = v160;
    v60 = v164;
    v61 = v174;
    v62 = v186;
    v63 = v189;
    v64 = v187;
    v65 = v169;
    do
    {
      v213 = v57;
      v218[0] = v158;
      v218[1] = v160;
      v218[2] = v164;
      v218[3] = v174;
      v66 = *(v218 + (*(&v213 | v56 & 0xF) & 0xF));
      v214 = v58;
      v215 = v59;
      v216 = v60;
      v217 = v61;
      v214.i32[v56 & 0xF] = v66;
      v61 = v217;
      v60 = v216;
      v59 = v215;
      v58 = v214;
      ++v56;
    }

    while (v54 != v56);
  }

  else
  {
    v58 = v158;
    v59 = v160;
    v60 = v164;
    v61 = v174;
    v62 = v186;
    v63 = v189;
    v64 = v187;
    v65 = v169;
  }

  v67 = vuzp1q_s32(v155, v156);
  v68 = vuzp1q_s32(v157, v159);
  v69 = vuzp1q_s32(v161, v162);
  v70 = *&v44[v53];
  v71 = vuzp1q_s32(v178, v182);
  if (v70)
  {
    v72 = 0;
    v73 = *&v44[*v55];
    v74 = v71;
    v75 = v69;
    v76 = v68;
    v77 = v67;
    do
    {
      v207 = v73;
      v212[0] = v71;
      v212[1] = v69;
      v212[2] = v68;
      v212[3] = v67;
      v78 = *(v212 + (*(&v207 | v72 & 0xF) & 0xF));
      v208 = v74;
      v209 = v75;
      v210 = v76;
      v211 = v77;
      v208.i32[v72 & 0xF] = v78;
      v76 = v210;
      v77 = v211;
      v74 = v208;
      v75 = v209;
      ++v72;
    }

    while (v70 != v72);
    v79 = vuzp1q_s32(v52, v51);
    v80 = vuzp1q_s32(v50, v49);
    v81 = vuzp1q_s32(v48, v47);
    v82 = *&v43[v53];
    v83 = vuzp1q_s32(v46, v45);
    if (v82)
    {
      goto LABEL_51;
    }

LABEL_55:
    v86 = v83;
    v87 = v81;
    v88 = v80;
    v89 = v79;
    goto LABEL_56;
  }

  v74 = v71;
  v75 = v69;
  v76 = v68;
  v77 = v67;
  v79 = vuzp1q_s32(v52, v51);
  v80 = vuzp1q_s32(v50, v49);
  v81 = vuzp1q_s32(v48, v47);
  v82 = *&v43[v53];
  v83 = vuzp1q_s32(v46, v45);
  if (!v82)
  {
    goto LABEL_55;
  }

LABEL_51:
  v84 = 0;
  v85 = *&v43[*v55];
  v86 = v83;
  v87 = v81;
  v88 = v80;
  v89 = v79;
  do
  {
    v201 = v85;
    v206[0] = v83;
    v206[1] = v81;
    v206[2] = v80;
    v206[3] = v79;
    v90 = *(v206 + (*(&v201 | v84 & 0xF) & 0xF));
    v202 = v86;
    v203 = v87;
    v204 = v88;
    v205 = v89;
    v202.i32[v84 & 0xF] = v90;
    v88 = v204;
    v89 = v205;
    v86 = v202;
    v87 = v203;
    ++v84;
  }

  while (v82 != v84);
LABEL_56:
  v175 = (v40 * v64);
  v170 = (v62 * v64);
  v91 = *(a4 + 8);
  v179 = *(v91 + 80 * v32 + 64);
  if (v54)
  {
    v92 = 0;
    v93 = 0;
    v94 = &v41[*MEMORY[0x277CD7418]];
    v96 = *(v94 + 2);
    v95 = *(v94 + 3);
    v98 = *v94;
    v97 = *(v94 + 1);
    v99 = *&v41[*v55];
    v100 = *&v41[*MEMORY[0x277CD73C8]] >> 3;
    do
    {
      v198 = v99;
      v200[0] = v98;
      v200[1] = v97;
      v200[2] = v96;
      v200[3] = v95;
      v101 = *(v200 + (*(&v198 | v92 & 0xF) & 0xF));
      v199[0] = v58;
      v199[1] = v59;
      v199[2] = v60;
      v199[3] = v61;
      v93 += *(v199 + (v92++ & 0xF)) * v100 * v101;
    }

    while (v54 != v92);
    v165 = *(v91 + 80 * v33 + 64);
    if (v70)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v93 = 0;
    v165 = *(v91 + 80 * v33 + 64);
    if (v70)
    {
LABEL_60:
      v102 = 0;
      v103 = 0;
      v104 = &v44[*MEMORY[0x277CD7418]];
      v60 = v104[2];
      v59 = v104[3];
      v106 = *v104;
      v105 = v104[1];
      v107 = *&v44[*v55];
      v108 = *&v44[*MEMORY[0x277CD73C8]] >> 3;
      do
      {
        v195 = v107;
        v197[0] = v106;
        v197[1] = v105;
        v197[2] = v60;
        v197[3] = v59;
        v109 = *(v197 + (*(&v195 | v102 & 0xF) & 0xF));
        v196[0] = v74;
        v196[1] = v75;
        v196[2] = v76;
        v196[3] = v77;
        v103 += *(v196 + (v102++ & 0xF)) * v108 * v109;
      }

      while (v70 != v102);
      goto LABEL_65;
    }
  }

  v103 = 0;
LABEL_65:
  v183 = v44;
  v110 = v58.i32[0];
  v111 = v74.i32[0];
  v163 = *(a4 + 192);
  if (v82)
  {
    v112 = 0;
    v113 = 0;
    v114 = &v43[*MEMORY[0x277CD7418]];
    v60 = v114[2];
    v59 = v114[3];
    v116 = *v114;
    v115 = v114[1];
    v117 = *&v43[*v55];
    v118 = *&v43[*MEMORY[0x277CD73C8]] >> 3;
    do
    {
      v192 = v117;
      v194[0] = v116;
      v194[1] = v115;
      v194[2] = v60;
      v194[3] = v59;
      v119 = *(v194 + (*(&v192 | v112 & 0xF) & 0xF));
      v193[0] = v86;
      v193[1] = v87;
      v193[2] = v88;
      v193[3] = v89;
      v113 += *(v193 + (v112++ & 0xF)) * v118 * v119;
    }

    while (v82 != v112);
  }

  else
  {
    v113 = 0;
  }

  v59.i32[0] = v39;
  v60.i32[0] = 2;
  v120 = v58;
  v120.i32[0] = 0;
  v121 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v60, v59), 0), v120, v58);
  v58.i32[0] = v166;
  v122 = vdupq_lane_s32(*&vcgtq_u32(v60, v58), 0);
  v123 = v74;
  v123.i32[0] = 0;
  v124 = vbslq_s8(v122, v123, v74);
  v122.i32[0] = v38;
  v125 = vdupq_lane_s32(*&vcgtq_u32(v60, v122), 0);
  v126 = v121;
  v126.i32[1] = 0;
  v127 = vbslq_s8(v125, v126, v121);
  v125.i32[0] = v65;
  v128 = vdupq_lane_s32(*&vcgtq_u32(v60, v125), 0);
  v129 = v124;
  v129.i32[1] = 0;
  v130 = vbslq_s8(v128, v129, v124);
  v128.i32[0] = v172;
  v131 = vdupq_lane_s32(*&vcgtq_u32(v60, v128), 0);
  v132 = v127;
  v132.i32[2] = 0;
  v133 = v111 == 1;
  v134 = vbslq_s8(v131, v132, v127);
  v131.i32[0] = v168;
  v135 = vdupq_lane_s32(*&vcgtq_u32(v60, v131), 0);
  v136 = v130;
  v136.i32[2] = 0;
  v137 = vbslq_s8(v135, v136, v130);
  v135.i32[0] = v171;
  v138 = vdupq_lane_s32(*&vcgtq_u32(v60, v135), 0);
  v139 = v134;
  v139.i32[3] = 0;
  v140 = vbslq_s8(v138, v139, v134);
  v138.i32[0] = v167;
  v141 = vdupq_lane_s32(*&vcgtq_u32(v60, v138), 0);
  v142 = v137;
  v142.i32[3] = 0;
  v143 = vbslq_s8(v141, v142, v137);
  v144 = v40 - 1;
  v145 = v36;
  if ((v176 & 0xFFF8) == 0x10)
  {
    v146 = 269484032;
  }

  else
  {
    v146 = 0x100000;
  }

  *&v253 = v146 & 0xFFFFFFF8 | ((v36 == 1) << 19) | ((v37 << 21) + 31457280) & 0x1E00000 | ((v64 << 13) + 516096) & 0x7E000 | ((v63 << 7) + 8064) & 0x1F80 | (16 * v62 + 48) & 0x30 | v144 & 7 | ((((v175 - 1) & v184 | (v170 - 1) & DimensionSize) == 0) << 30) | ((v110 == 1) << 25) | (v133 << 26) | ((v86.i32[0] == 1) << 27) | ((((v170 - 1) & v65 | (v175 - 1) & v38 | (v39 % (v63 * v37))) == 0) << 29);
  v59.i32[1] = v38;
  v59.i64[1] = __PAIR64__(v171, v172);
  v58.i32[1] = v65;
  v58.i64[1] = __PAIR64__(v167, v168);
  v221 = v59;
  v222 = v58;
  v223 = v140;
  v224 = v143;
  v225 = v86;
  v151 = *(v180 + *MEMORY[0x277CD7360]);
  v152 = *(v180 + *MEMORY[0x277CD7368]);
  v150 = *(a4 + 232);
  v147 = v62;
  v190 = v63;
  v188 = v64;
  MPSLibrary::CreateUberShaderKey();
  if (!MPSLibrary::GetPipelineStateForMPSKey())
  {
    return -1;
  }

  [v154 setComputePipelineState:{v150, v151, v152, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v226 = v153;
  v148 = 1.0 / v153;
  v227 = v148;
  MPSSetNDArraysOnComputeEncoder(v154, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v154);
  [v154 setBuffer:objc_msgSend(v41 offset:"buffer") atIndex:{v93 + v179, 28}];
  [v154 setBuffer:objc_msgSend(v183 offset:"buffer") atIndex:{v103 + v165, 27}];
  [v154 setBuffer:objc_msgSend(v43 offset:"buffer") atIndex:{v113 + v163, 26}];
  [v154 setThreadgroupMemoryLength:4 * v37 * v188 * v190 * v147 atIndex:0];
  v220[0] = (DimensionSize + v170 - 1) / v170;
  v220[1] = (v184 + v175 - 1) / v175;
  v220[2] = v145 * v153;
  v219[0] = v190;
  v219[1] = v188;
  v219[2] = 1;
  [v154 dispatchThreadgroups:v220 threadsPerThreadgroup:v219];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t MPSNDArrayConvolution3DDeviceBehavior::EncodeNDArrayConvolution3D(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a4 + 2);
  v225 = *(a4 + 3);
  v232 = a4[13];
  v6 = *(a4 + 160);
  v7 = a4[21];
  v202 = a4[22];
  v8 = [*(v7 + 232) inputTensorAtIndex:0];
  v9 = [*(v7 + 232) inputTensorAtIndex:1];
  v10 = [*(v7 + 232) inputTensorAtIndex:2];
  v11 = [*(v7 + 232) outputTensorAtIndex:0];
  v195 = [*(v7 + 16) count];
  if (*v8 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v9 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v11 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v10 && *v10 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = a4[7];
  v13 = a4[8];
  v230 = a4[9];
  if (v6)
  {
    v185 = a4[17] + v12 * a4[14];
    v187 = a4[18] + v13 * a4[15];
    v189 = a4[19] + a4[9] * a4[16];
    v8 = v10;
  }

  else
  {
    LODWORD(v185) = a4[14];
    LODWORD(v187) = a4[15];
    LODWORD(v189) = a4[16];
  }

  v180 = a4[10];
  v182 = a4[11];
  v183 = a4[12];
  v198 = v5;
  v228 = GetAxisIndexForDataFormat(MPSNDArrayConvolution3DDataFormat)::axis[v5];
  v14 = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution3DWeightsFormat)::axis[v225];
  v15 = *(v8 + 16);
  v17 = *v15;
  v16 = v15[1];
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v222 = v9;
  v18 = *(v9 + 2);
  v20 = *v18;
  v19 = v18[1];
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v21 = *(v11 + 16);
  v23 = *v21;
  v22 = v21[1];
  v212 = v11;
  if (v22 != v23)
  {
    if (((v22 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v24 = (8 * v228);
  v25 = *v24;
  v26 = *(8 * BYTE1(v228));
  v27 = (8 * BYTE2(v228));
  v178 = *v27;
  v28 = (8 * BYTE3(v228));
  v176 = *v28;
  v29 = (8 * BYTE4(v228));
  v174 = *v29;
  v229 = *v24;
  v211 = *v27;
  v218 = *v28;
  v220 = *v29;
  v30 = *(8 * v14);
  v216 = *(8 * BYTE2(v14));
  v214 = *(8 * BYTE3(v14));
  v31 = *(8 * BYTE1(v14)) * v232;
  v32 = *(8 * BYTE4(v14));
  v205 = v26;
  v207 = v26;
  if (v6)
  {
    if (v31 != v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v30 != v205 && MTLReportFailureTypeEnabled())
    {
LABEL_282:
      MTLReportFailure();
    }
  }

  else
  {
    if (v31 != v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v30 != v207 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
      goto LABEL_282;
    }
  }

  if (v25 != v229 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v33 = *(v8 + 8);
  if (v33 > 285212703)
  {
    if (v33 <= 536870915)
    {
      if (v33 > 301989895)
      {
        if (v33 == 301989896)
        {
          v34 = 512;
          v35 = v222[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v33 != 335544328)
          {
            goto LABEL_116;
          }

          v34 = 544;
          v35 = v222[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }
        }
      }

      else if (v33 == 285212704)
      {
        v34 = 416;
        v35 = v222[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v33 != 285212736)
        {
          goto LABEL_116;
        }

        v34 = 448;
        v35 = v222[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }
      }
    }

    else if (v33 <= 536870927)
    {
      if (v33 == 536870916)
      {
        v34 = 0;
        v35 = v222[2];
        if (v35 > 285212703)
        {
          goto LABEL_117;
        }

        goto LABEL_86;
      }

      if (v33 != 536870920)
      {
        goto LABEL_116;
      }

      v34 = 32;
      v35 = v222[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }

    else
    {
      switch(v33)
      {
        case 536870928:
          v34 = 64;
          v35 = v222[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }

          break;
        case 536870944:
          v34 = 96;
          v35 = v222[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }

          break;
        case 536870976:
          v34 = 128;
          v35 = v222[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }

          break;
        default:
          goto LABEL_116;
      }
    }
  }

  else if (v33 <= 31)
  {
    if (v33 > 7)
    {
      if (v33 == 8)
      {
        v34 = 192;
        v35 = v222[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v33 != 16)
        {
          goto LABEL_116;
        }

        v34 = 224;
        v35 = v222[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }
      }
    }

    else if (v33 == -1879048176)
    {
      v34 = 384;
      v35 = v222[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v33 != 4)
      {
        goto LABEL_116;
      }

      v34 = 160;
      v35 = v222[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }
  }

  else if (v33 <= 268435463)
  {
    if (v33 == 32)
    {
      v34 = 256;
      v35 = v222[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v33 != 64)
      {
        goto LABEL_116;
      }

      v34 = 288;
      v35 = v222[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }
  }

  else
  {
    switch(v33)
    {
      case 268435464:
        v34 = 480;
        v35 = v222[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }

        break;
      case 268435472:
        v34 = 320;
        v35 = v222[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }

        break;
      case 268435488:
        v34 = 352;
        v35 = v222[2];
        if (v35 > 285212703)
        {
          break;
        }

LABEL_86:
        if (v35 <= 31)
        {
          if (v35 > 7)
          {
            if (v35 == 8)
            {
              v34 |= 0x1800u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            }

            if (v35 == 16)
            {
              v34 |= 0x1C00u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            }
          }

          else
          {
            if (v35 == -1879048176)
            {
              v34 |= 0x3000u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            }

            if (v35 == 4)
            {
              v34 |= 0x1400u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            }
          }
        }

        else if (v35 <= 268435463)
        {
          if (v35 == 32)
          {
            v34 |= 0x2000u;
            if (v6)
            {
              goto LABEL_169;
            }

            goto LABEL_146;
          }

          if (v35 == 64)
          {
            v34 |= 0x2400u;
            if (v6)
            {
              goto LABEL_169;
            }

            goto LABEL_146;
          }
        }

        else
        {
          switch(v35)
          {
            case 268435464:
              v34 |= 0x3C00u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            case 268435472:
              v34 |= 0x2800u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            case 268435488:
              v34 |= 0x2C00u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
          }
        }

LABEL_168:
        v34 |= 0x4800u;
        if (v6)
        {
          goto LABEL_169;
        }

        goto LABEL_146;
      default:
LABEL_116:
        v34 = 576;
        v35 = v222[2];
        if (v35 > 285212703)
        {
          break;
        }

        goto LABEL_86;
    }
  }

LABEL_117:
  if (v35 <= 536870915)
  {
    if (v35 > 301989895)
    {
      if (v35 == 301989896)
      {
        v34 |= 0x4000u;
        if (!v6)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (v35 != 335544328)
        {
          goto LABEL_168;
        }

        v34 |= 0x4400u;
        if (!v6)
        {
          goto LABEL_146;
        }
      }
    }

    else if (v35 == 285212704)
    {
      v34 |= 0x3400u;
      if (!v6)
      {
        goto LABEL_146;
      }
    }

    else
    {
      if (v35 != 285212736)
      {
        goto LABEL_168;
      }

      v34 |= 0x3800u;
      if (!v6)
      {
        goto LABEL_146;
      }
    }
  }

  else if (v35 <= 536870927)
  {
    if (v35 == 536870916)
    {
      if (v6)
      {
        goto LABEL_169;
      }

      goto LABEL_146;
    }

    if (v35 != 536870920)
    {
      goto LABEL_168;
    }

    v34 |= 0x400u;
    if (!v6)
    {
      goto LABEL_146;
    }
  }

  else
  {
    switch(v35)
    {
      case 536870928:
        v34 |= 0x800u;
        if (!v6)
        {
          goto LABEL_146;
        }

        break;
      case 536870944:
        v34 |= 0xC00u;
        if (!v6)
        {
          goto LABEL_146;
        }

        break;
      case 536870976:
        v34 |= 0x1000u;
        if (v6)
        {
          break;
        }

LABEL_146:
        v36 = *(v11 + 8);
        if (v36 > 285212703)
        {
          goto LABEL_214;
        }

LABEL_147:
        if (v36 <= 31)
        {
          if (v36 > 7)
          {
            if (v36 == 8)
            {
              v37 = 6;
              goto LABEL_236;
            }

            if (v36 == 16)
            {
              v37 = 7;
              goto LABEL_236;
            }
          }

          else
          {
            if (v36 == -1879048176)
            {
              v37 = 12;
              goto LABEL_236;
            }

            if (v36 == 4)
            {
              v37 = 5;
              goto LABEL_236;
            }
          }
        }

        else if (v36 <= 268435463)
        {
          if (v36 == 32)
          {
            v37 = 8;
            goto LABEL_236;
          }

          if (v36 == 64)
          {
            v37 = 9;
            goto LABEL_236;
          }
        }

        else
        {
          switch(v36)
          {
            case 268435464:
              v37 = 15;
              goto LABEL_236;
            case 268435472:
              v37 = 10;
              goto LABEL_236;
            case 268435488:
              v37 = 11;
              goto LABEL_236;
          }
        }

        goto LABEL_235;
      default:
        goto LABEL_168;
    }
  }

LABEL_169:
  v38 = *(v10 + 8);
  if (v38 > 285212703)
  {
    if (v38 <= 536870915)
    {
      if (v38 > 301989895)
      {
        if (v38 == 301989896)
        {
          v39 = 0x80000;
          goto LABEL_213;
        }

        if (v38 == 335544328)
        {
          v39 = 557056;
          goto LABEL_213;
        }
      }

      else
      {
        if (v38 == 285212704)
        {
          v39 = 425984;
          goto LABEL_213;
        }

        if (v38 == 285212736)
        {
          v39 = 458752;
          goto LABEL_213;
        }
      }
    }

    else if (v38 <= 536870927)
    {
      if (v38 == 536870916)
      {
        v39 = 0;
        goto LABEL_213;
      }

      if (v38 == 536870920)
      {
        v39 = 0x8000;
        goto LABEL_213;
      }
    }

    else
    {
      switch(v38)
      {
        case 536870928:
          v39 = 0x10000;
          goto LABEL_213;
        case 536870944:
          v39 = 98304;
          goto LABEL_213;
        case 536870976:
          v39 = 0x20000;
          goto LABEL_213;
      }
    }
  }

  else if (v38 <= 31)
  {
    if (v38 > 7)
    {
      if (v38 == 8)
      {
        v39 = 196608;
        goto LABEL_213;
      }

      if (v38 == 16)
      {
        v39 = 229376;
        goto LABEL_213;
      }
    }

    else
    {
      if (v38 == -1879048176)
      {
        v39 = 393216;
        goto LABEL_213;
      }

      if (v38 == 4)
      {
        v39 = 163840;
        goto LABEL_213;
      }
    }
  }

  else if (v38 <= 268435463)
  {
    if (v38 == 32)
    {
      v39 = 0x40000;
      goto LABEL_213;
    }

    if (v38 == 64)
    {
      v39 = 294912;
      goto LABEL_213;
    }
  }

  else
  {
    switch(v38)
    {
      case 268435464:
        v39 = 491520;
        goto LABEL_213;
      case 268435472:
        v39 = 327680;
        goto LABEL_213;
      case 268435488:
        v39 = 360448;
        goto LABEL_213;
    }
  }

  v39 = 589824;
LABEL_213:
  v34 |= v39;
  v36 = *(v11 + 8);
  if (v36 <= 285212703)
  {
    goto LABEL_147;
  }

LABEL_214:
  if (v36 <= 536870915)
  {
    if (v36 > 301989895)
    {
      if (v36 == 301989896)
      {
        v37 = 16;
        goto LABEL_236;
      }

      if (v36 == 335544328)
      {
        v37 = 17;
        goto LABEL_236;
      }
    }

    else
    {
      if (v36 == 285212704)
      {
        v37 = 13;
        goto LABEL_236;
      }

      if (v36 == 285212736)
      {
        v37 = 14;
        goto LABEL_236;
      }
    }
  }

  else if (v36 <= 536870927)
  {
    if (v36 == 536870916)
    {
      v37 = 0;
      goto LABEL_236;
    }

    if (v36 == 536870920)
    {
      v37 = 1;
      goto LABEL_236;
    }
  }

  else
  {
    switch(v36)
    {
      case 536870928:
        v37 = 2;
        goto LABEL_236;
      case 536870944:
        v37 = 3;
        goto LABEL_236;
      case 536870976:
        v37 = 4;
        goto LABEL_236;
    }
  }

LABEL_235:
  v37 = 18;
LABEL_236:
  v40 = v37 | v34;
  v42 = v230 == 1 && v13 == 1 && v12 == 1;
  v43 = 0x400000;
  if (!v42)
  {
    v43 = 0;
  }

  v340 = -1;
  v341 = -1;
  v342 = v43 | (v6 << 21) | (v198 << 23) | (v225 << 25) | 0xD84E8;
  v343 = v40;
  v344 = 0u;
  v345 = 0u;
  v346 = v195 | (v6 << 8) | 0x10000;
  v347 = 0;
  if ((atomic_load_explicit(&qword_27DF86810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86810))
  {
    v145 = &CommonKernelsConvolution3DForward;
    if (v6)
    {
      v145 = &CommonKernelsConvolution3DGradientWithInput;
    }

    _MergedGlobals_9 = v145;
    __cxa_guard_release(&qword_27DF86810);
  }

  v147 = *(v202 + *MEMORY[0x277CD7360]);
  v148 = *(v202 + *MEMORY[0x277CD7368]);
  v146 = *(v7 + 232);
  MPSLibrary::CreateUberShaderKey();
  v44 = v13;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSGetUIntDivisorMagicNumber();
  v226 = v46;
  v170 = ((v220 + 7) >> 3) * ((v218 + 3) >> 2);
  MPSGetUIntDivisorMagicNumber();
  v203 = v47;
  v48 = v207 / v232;
  v169 = (v207 / v232 + 31) >> 5;
  MPSGetUIntDivisorMagicNumber();
  v208 = v49;
  MPSGetUIntDivisorMagicNumber();
  v199 = v50;
  MPSGetUIntDivisorMagicNumber();
  v196 = v51;
  MPSGetUIntDivisorMagicNumber();
  v193 = v52;
  MPSGetUIntDivisorMagicNumber();
  v191 = v53;
  MPSGetUIntDivisorMagicNumber();
  v172 = v54;
  MPSGetUIntDivisorMagicNumber();
  v171 = v55;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v146, v147, v148, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  v298 = v226;
  v299 = v203;
  v300 = v208;
  v301 = v199;
  v302 = v196;
  v303 = v193;
  v304 = v191;
  v305 = v172;
  v306 = v171;
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  v310 = v205 / v232;
  v311 = v48;
  v312 = v232;
  v313 = v229;
  v314 = v174;
  v315 = v176;
  v316 = v178;
  v317 = v220;
  v318 = v218;
  v319 = v211;
  v320 = 0;
  v321 = 0;
  v322 = v32;
  v323 = v214;
  v324 = v216;
  v325 = v185 - ((v32 - 1) * v180 + 1) / 2;
  v326 = v187 - ((v214 - 1) * v182 + 1) / 2;
  v327 = v189 - ((v216 - 1) * v183 + 1) / 2;
  v328 = v12;
  v329 = v44;
  v330 = v230;
  v331 = v180;
  v332 = v182;
  v333 = v183;
  v334 = v214 * v216 * v32 * ((v205 / v232 + 7) >> 3);
  v335 = 0u;
  v336 = 0u;
  v337 = 0u;
  memset(v338, 0, sizeof(v338));
  v339 = 0;
  MPSSetNDArraysOnComputeEncoder(a2, v7, 4, 0, 0);
  v56 = [*(v7 + 232) graph];
  v57 = *(v56 + 8);
  v58 = *v57;
  v59 = v57[1];
  v210 = v7;
  if (*v57 == v59)
  {
    v63 = 0;
    v68 = v222;
    v67 = v212;
  }

  else
  {
    v60 = v8;
    v61 = v6;
    v62 = 0;
    v63 = -1;
    v64 = -1;
    do
    {
      v65 = *v58;
      if (v65 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v56) + 32))
      {
        v63 = v62;
      }

      v66 = *v58;
      if (v66 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v56) + 32))
      {
        v64 = v62;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v56) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v56);
      }

      ++v62;
      ++v58;
    }

    while (v58 != v59);
    v67 = v212;
    if (v63 == -1)
    {
      v63 = 0;
      v6 = v61;
      v68 = v222;
      v8 = v60;
      v7 = v210;
    }

    else
    {
      v6 = v61;
      v68 = v222;
      v8 = v60;
      v7 = v210;
      if (v64 != -1)
      {
        goto LABEL_262;
      }
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v64 = 0;
LABEL_262:
  DimensionSize = BaseTensor::GetDimensionSize(v67);
  v70 = BaseTensor::GetDimensionSize(v67);
  v71 = BaseTensor::GetDimensionSize(v67);
  v224 = BaseTensor::GetDimensionSize(v67);
  v72 = BaseTensor::GetDimensionSize(v67);
  v223 = BaseTensor::GetDimensionSize(v8);
  v221 = BaseTensor::GetDimensionSize(v8);
  v219 = BaseTensor::GetDimensionSize(v8);
  v217 = BaseTensor::GetDimensionSize(v8);
  v215 = BaseTensor::GetDimensionSize(v8);
  v213 = BaseTensor::GetDimensionSize(v68);
  v209 = BaseTensor::GetDimensionSize(v68);
  v206 = BaseTensor::GetDimensionSize(v68);
  v204 = BaseTensor::GetDimensionSize(v68);
  v73 = BaseTensor::GetDimensionSize(v68);
  v74 = [*(v7 + 16) objectAtIndexedSubscript:v63];
  v200 = v6;
  if (v6)
  {
    v74 = *(v7 + 112);
  }

  v197 = v72;
  v75 = [*(v7 + 16) objectAtIndexedSubscript:v64];
  v76 = *(v7 + 208);
  makeStrideElements();
  makeStrideElements();
  v177 = v73;
  v179 = v71;
  v181 = v70;
  makeStrideElements();
  v77 = vuzp1q_s32(v292, v293);
  v78 = vuzp1q_s32(v286, v287);
  v79 = vuzp1q_s32(v284, v285);
  v80 = vuzp1q_s32(v282, v283);
  v81 = v276;
  v82 = v274;
  v83 = *MEMORY[0x277CD73D8];
  v84 = *(v74 + v83);
  v242[0] = vuzp1q_s32(v290, v291);
  v242[1] = v77;
  v243 = vuzp1q_s32(v294, v295);
  v244 = vuzp1q_s32(v296, v297);
  v85 = v84 & 0xF;
  v194 = *(v242 + v85);
  v240[0] = v242[0];
  v240[1] = v77;
  v240[2] = v243;
  v240[3] = v244;
  v86 = BYTE1(v84) & 0xF;
  v87 = *(v240 + v86);
  v238[0] = v242[0];
  v238[1] = v77;
  v238[2] = v243;
  v238[3] = v244;
  v88 = BYTE2(v84) & 0xF;
  v192 = *(v238 + v88);
  v236[0] = v242[0];
  v236[1] = v77;
  v236[2] = v243;
  v236[3] = v244;
  v89 = BYTE3(v84) & 0xF;
  v188 = *(v236 + v89);
  v234[0] = v242[0];
  v234[1] = v77;
  v234[2] = v243;
  v234[3] = v244;
  v90 = BYTE4(v84) & 0xF;
  v190 = *(v234 + v90);
  v91 = *&v75[v83];
  v255[0] = v80;
  v255[1] = v79;
  v255[2] = v78;
  v256 = vuzp1q_s32(v288, v289);
  v92 = v91 & 0xF;
  v93 = *(v255 + v92);
  v253[0] = v80;
  v253[1] = v79;
  v253[2] = v78;
  v253[3] = v256;
  v94 = BYTE1(v91) & 0xF;
  v186 = *(v253 + v94);
  v251[0] = v80;
  v251[1] = v79;
  v251[2] = v78;
  v251[3] = v256;
  v95 = BYTE2(v91) & 0xF;
  v227 = *(v251 + v95);
  v249[0] = v80;
  v249[1] = v79;
  v249[2] = v78;
  v249[3] = v256;
  v96 = BYTE3(v91) & 0xF;
  v231 = *(v249 + v96);
  v247[0] = v80;
  v247[1] = v79;
  v247[2] = v78;
  v247[3] = v256;
  v97 = *&v76[v83];
  v98 = BYTE4(v91) & 0xF;
  v173 = *(v247 + v98);
  v99 = vuzp1q_s32(v274, v275);
  v100 = vuzp1q_s32(v276, v277);
  v269 = vuzp1q_s32(v280, v281);
  v268 = vuzp1q_s32(v278, v279);
  v267[1] = v100;
  v267[0] = v99;
  v101 = v97.i8[0] & 0xF;
  v102 = *(v267 + v101);
  v265[3] = v269;
  v265[2] = v268;
  v265[1] = v100;
  v265[0] = v99;
  v103 = v97.i8[1] & 0xF;
  v104 = v74;
  v105 = *(v265 + v103);
  v263[3] = v269;
  v263[2] = v268;
  v263[1] = v100;
  v263[0] = v99;
  v106 = v97.i8[2] & 0xF;
  v184 = *(v263 + v106);
  v261[3] = v269;
  v261[2] = v268;
  v261[1] = v100;
  v261[0] = v99;
  v107 = v97.i8[3] & 0xF;
  v175 = *(v261 + v107);
  v259[3] = v269;
  v259[2] = v268;
  v259[1] = v100;
  v259[0] = v99;
  v108 = *MEMORY[0x277CD7418];
  v109 = *&v104[v108];
  v110 = *&v104[v108 + 16];
  v111 = *&v104[v108 + 32];
  v112 = v97.i8[4] & 0xF;
  v113 = *(v259 + v112);
  v114 = *MEMORY[0x277CD73C8];
  v115 = v210[1];
  v168 = *&v104[v114];
  v246 = *&v104[v108 + 48];
  v245[2] = v111;
  v245[1] = v110;
  v245[0] = v109;
  v167 = *(v245 + v85);
  v241[3] = v246;
  v241[2] = v111;
  v241[1] = v110;
  v241[0] = v109;
  v166 = *(v241 + v86);
  v239[3] = v246;
  v239[2] = v111;
  v239[1] = v110;
  v239[0] = v109;
  v165 = *(v239 + v88);
  v237[2] = v111;
  v237[3] = v246;
  v237[0] = v109;
  v237[1] = v110;
  v164 = *(v237 + v89);
  v235[2] = v111;
  v235[3] = v246;
  v235[0] = v109;
  v235[1] = v110;
  v163 = *(v235 + v90);
  v116 = (v115 + 80 * v63 + 64);
  if (v200)
  {
    v116 = v210 + 12;
  }

  v117 = *&v75[v108];
  v118 = *&v75[v108 + 16];
  v119 = *&v75[v108 + 32];
  v201 = *v116;
  v161 = *&v75[v114];
  v162 = *(v115 + 80 * v64 + 64);
  v258 = *&v75[v108 + 48];
  v257[2] = v119;
  v257[1] = v118;
  v257[0] = v117;
  v160 = *(v257 + v92);
  v254[3] = v258;
  v254[2] = v119;
  v254[1] = v118;
  v254[0] = v117;
  v159 = *(v254 + v94);
  v252[3] = v258;
  v252[2] = v119;
  v252[1] = v118;
  v252[0] = v117;
  v158 = *(v252 + v95);
  v250[3] = v258;
  v250[2] = v119;
  v250[1] = v118;
  v250[0] = v117;
  v157 = *(v250 + v96);
  v248[3] = v258;
  v248[2] = v119;
  v248[1] = v118;
  v248[0] = v117;
  v156 = *(v248 + v98);
  v120 = *&v76[v108];
  v121 = *&v76[v108 + 16];
  v122 = *&v76[v108 + 32];
  v123 = *&v76[v108 + 48];
  v154 = *&v76[v114];
  v155 = v210[24];
  v270[3] = v123;
  v270[2] = v122;
  v270[1] = v121;
  v270[0] = v120;
  v153 = *(v270 + v101);
  v266[3] = v123;
  v266[2] = v122;
  v266[1] = v121;
  v266[0] = v120;
  v152 = *(v266 + v103);
  v264[3] = v123;
  v264[2] = v122;
  v264[1] = v121;
  v264[0] = v120;
  v151 = *(v264 + v106);
  v262[3] = v123;
  v262[2] = v122;
  v262[1] = v121;
  v262[0] = v120;
  v150 = *(v262 + v107);
  v260[3] = v123;
  v260[2] = v122;
  v260[1] = v121;
  v260[0] = v120;
  v149 = *(v260 + v112);
  v120.i32[0] = 2;
  v121.i32[0] = v223;
  *&v335 = __PAIR64__(v221, v223);
  v81.i32[0] = v221;
  v99.i32[0] = v219;
  *(&v335 + 1) = __PAIR64__(v217, v219);
  v123.i32[0] = v217;
  v122.i32[0] = v215;
  *&v336 = __PAIR64__(v213, v215);
  v82.i32[0] = v213;
  v97.i32[0] = v209;
  *(&v336 + 1) = __PAIR64__(v206, v209);
  v78.i32[0] = v206;
  v80.i32[0] = v204;
  *&v337 = __PAIR64__(v177, v204);
  v100.i32[0] = v177;
  *(&v337 + 1) = __PAIR64__(v181, DimensionSize);
  v338[0] = v179;
  v338[1] = v224;
  v338[2] = v197;
  *&v338[13] = __PAIR64__(v105, v102);
  v124.i64[0] = __PAIR64__(v87, v194);
  v125.i64[0] = __PAIR64__(v186, v93);
  v124.i64[1] = __PAIR64__(v188, v192);
  v126 = v124;
  v126.i32[0] = 0;
  v127 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v121), 0), v126, v124);
  v125.i64[1] = __PAIR64__(v231, v227);
  v128 = v125;
  v129 = v127;
  v128.i32[0] = 0;
  v129.i32[1] = 0;
  v130 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v82), 0), v128, v125);
  v131 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v81), 0), v129, v127);
  v132 = vcgtq_u32(v120, v97).u64[0];
  v133 = v130;
  v133.i32[1] = 0;
  v134 = vbslq_s8(vdupq_lane_s32(v132, 0), v133, v130);
  v135 = v131;
  v135.i32[2] = 0;
  v136 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v99), 0), v135, v131);
  v77.i32[0] = v190;
  v79.i32[0] = v173;
  v137 = v134;
  v137.i32[2] = 0;
  v138 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v78), 0), v137, v134);
  v139 = v136;
  v139.i32[3] = 0;
  v140 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v123), 0), v139, v136);
  v141 = v138;
  v141.i32[3] = 0;
  v142 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v80), 0), v141, v138);
  v143 = vbicq_s8(v77, vcgtq_u32(v120, v122));
  *&v338[3] = v140;
  *&v338[7] = vextq_s8(vextq_s8(v143, v143, 4uLL), v142, 0xCuLL);
  *&v338[11] = vextq_s8(v142, vbicq_s8(v79, vcgtq_u32(v120, v100)), 0xCuLL).u64[0];
  v338[15] = v184;
  v339 = __PAIR64__(v113, v175);
  [a2 setThreadgroupMemoryLength:2304 atIndex:0];
  objc_msgSend_setBytes_length_atIndex_(a2);
  [a2 setBuffer:objc_msgSend(v104 offset:"buffer") atIndex:{v201 + (v167 * v194 + v166 * v87 + v165 * v192 + v164 * v188 + v163 * v190) * (v168 >> 3), 28}];
  [a2 setBuffer:objc_msgSend(v75 offset:"buffer") atIndex:{v162 + (v160 * v93 + v159 * v186 + v158 * v227 + v157 * v231 + v156 * v173) * (v161 >> 3), 27}];
  [a2 setBuffer:objc_msgSend(v76 offset:"buffer") atIndex:{v155 + (v153 * v102 + v152 * v105 + v151 * v184 + v150 * v175 + v149 * v113) * (v154 >> 3), 26}];
  v273[0] = v170 * v211;
  v273[1] = v169 * v232;
  v273[2] = v229;
  v271 = xmmword_239B0A150;
  v272 = 1;
  [a2 dispatchThreadgroups:v273 threadsPerThreadgroup:&v271];
  operator delete(0);
  operator delete(0);
  operator delete(0);
  return 0;
}

void sub_239A45EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p)
{
  operator delete(__p);
  operator delete(STACK[0x270]);
  if (STACK[0x278])
  {
    operator delete(STACK[0x278]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolution3DDeviceBehavior::EncodeNDArrayConvolution3DGradientWithWeights(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v220 = *(a4 + 2);
  v217 = *(a4 + 3);
  v228 = a4[13];
  v6 = a4[21];
  v5 = a4[22];
  v201 = [*(v6 + 16) count];
  v186 = a4[14];
  v190 = a4[15];
  v192 = a4[16];
  v7 = a4[12];
  v194 = a4[11];
  v226 = a4[7];
  v224 = a4[8];
  v188 = a4[10];
  v222 = a4[9];
  v8 = [*(v6 + 232) inputTensorAtIndex:0];
  v198 = [*(v6 + 232) inputTensorAtIndex:1];
  v9 = [*(v6 + 232) inputTensorAtIndex:2];
  v229 = [*(v6 + 232) outputTensorAtIndex:0];
  if (*v8 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v9 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v229 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = *(v8 + 16);
  v12 = *v10;
  v11 = v10[1];
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(v229 + 16);
  v15 = *v13;
  v14 = v13[1];
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v16 = *(v9 + 16);
  v18 = *v16;
  v17 = v16[1];
  v184 = v7;
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v19 = GetAxisIndexForDataFormat(MPSNDArrayConvolution3DDataFormat)::axis[v220];
  v20 = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution3DWeightsFormat)::axis[v217];
  v21 = (8 * v19);
  v22 = (8 * BYTE1(v19));
  v23 = *v22;
  v24 = (8 * BYTE2(v19));
  v179 = *v24;
  v25 = (8 * BYTE3(v19));
  v177 = *v25;
  v26 = (8 * BYTE4(v19));
  v175 = *v26;
  v214 = *v22;
  v206 = *v24;
  v208 = *v25;
  v27 = *v26;
  v28 = *(8 * v20);
  v29 = *(8 * BYTE1(v20));
  v212 = *(8 * BYTE2(v20));
  v210 = *(8 * BYTE3(v20));
  v30 = *(8 * BYTE4(v20));
  v182 = *v21;
  v180 = *v21;
  if (*v21 != *v21 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v214 != v28 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v205 = v23 / v228;
  if (v23 / v228 != v29 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v31 = *(v8 + 8);
  if (v31 > 285212703)
  {
    if (v31 <= 536870915)
    {
      v32 = v201;
      if (v31 > 301989895)
      {
        if (v31 == 301989896)
        {
          v34 = 512;
          v35 = *(v198 + 8);
          if (v35 <= 285212703)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v33 = v198;
          if (v31 != 335544328)
          {
            goto LABEL_106;
          }

          v34 = 544;
          v35 = *(v198 + 8);
          if (v35 <= 285212703)
          {
            goto LABEL_76;
          }
        }
      }

      else if (v31 == 285212704)
      {
        v34 = 416;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v33 = v198;
        if (v31 != 285212736)
        {
          goto LABEL_106;
        }

        v34 = 448;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      v32 = v201;
      if (v31 <= 536870927)
      {
        if (v31 == 536870916)
        {
          v34 = 0;
          v35 = *(v198 + 8);
          if (v35 > 285212703)
          {
            goto LABEL_107;
          }

          goto LABEL_76;
        }

        v33 = v198;
        if (v31 != 536870920)
        {
          goto LABEL_106;
        }

        v34 = 32;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else if (v31 == 536870928)
      {
        v34 = 64;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else if (v31 == 536870944)
      {
        v34 = 96;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v33 = v198;
        if (v31 != 536870976)
        {
          goto LABEL_106;
        }

        v34 = 128;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }
    }
  }

  else if (v31 <= 31)
  {
    v32 = v201;
    if (v31 > 7)
    {
      v33 = v198;
      if (v31 == 8)
      {
        v34 = 192;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v31 != 16)
        {
          goto LABEL_106;
        }

        v34 = 224;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }
    }

    else if (v31 == -1879048176)
    {
      v34 = 384;
      v35 = *(v198 + 8);
      if (v35 <= 285212703)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v33 = v198;
      if (v31 != 4)
      {
        goto LABEL_106;
      }

      v34 = 160;
      v35 = *(v198 + 8);
      if (v35 <= 285212703)
      {
        goto LABEL_76;
      }
    }
  }

  else
  {
    v32 = v201;
    if (v31 <= 268435463)
    {
      v33 = v198;
      if (v31 == 32)
      {
        v34 = 256;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v31 != 64)
        {
          goto LABEL_106;
        }

        v34 = 288;
        v35 = *(v198 + 8);
        if (v35 <= 285212703)
        {
          goto LABEL_76;
        }
      }
    }

    else if (v31 == 268435464)
    {
      v34 = 480;
      v35 = *(v198 + 8);
      if (v35 <= 285212703)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (v31 != 268435472)
      {
        v33 = v198;
        if (v31 == 268435488)
        {
          v34 = 352;
          v35 = *(v198 + 8);
          if (v35 > 285212703)
          {
            goto LABEL_107;
          }

LABEL_76:
          if (v35 <= 31)
          {
            if (v35 > 7)
            {
              if (v35 == 8)
              {
                v34 |= 0x1800uLL;
                v36 = *(v9 + 8);
                if (v36 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              }

              if (v35 == 16)
              {
                v34 |= 0x1C00uLL;
                v36 = *(v9 + 8);
                if (v36 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              }
            }

            else
            {
              if (v35 == -1879048176)
              {
                v34 |= 0x3000uLL;
                v36 = *(v9 + 8);
                if (v36 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              }

              if (v35 == 4)
              {
                v34 |= 0x1400uLL;
                v36 = *(v9 + 8);
                if (v36 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              }
            }
          }

          else if (v35 <= 268435463)
          {
            if (v35 == 32)
            {
              v34 |= 0x2000uLL;
              v36 = *(v9 + 8);
              if (v36 > 285212703)
              {
                goto LABEL_158;
              }

              goto LABEL_136;
            }

            if (v35 == 64)
            {
              v34 |= 0x2400uLL;
              v36 = *(v9 + 8);
              if (v36 > 285212703)
              {
                goto LABEL_158;
              }

              goto LABEL_136;
            }
          }

          else
          {
            switch(v35)
            {
              case 268435464:
                v34 |= 0x3C00uLL;
                v36 = *(v9 + 8);
                if (v36 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              case 268435472:
                v34 |= 0x2800uLL;
                v36 = *(v9 + 8);
                if (v36 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              case 268435488:
                v34 |= 0x2C00uLL;
                v36 = *(v9 + 8);
                if (v36 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
            }
          }

LABEL_157:
          v34 |= 0x4800uLL;
          v36 = *(v9 + 8);
          if (v36 > 285212703)
          {
            goto LABEL_158;
          }

          goto LABEL_136;
        }

LABEL_106:
        v34 = 576;
        v35 = *(v33 + 8);
        if (v35 > 285212703)
        {
          goto LABEL_107;
        }

        goto LABEL_76;
      }

      v34 = 320;
      v35 = *(v198 + 8);
      if (v35 <= 285212703)
      {
        goto LABEL_76;
      }
    }
  }

LABEL_107:
  if (v35 <= 536870915)
  {
    if (v35 > 301989895)
    {
      if (v35 == 301989896)
      {
        v34 |= 0x4000uLL;
        v36 = *(v9 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_136;
        }
      }

      else
      {
        if (v35 != 335544328)
        {
          goto LABEL_157;
        }

        v34 |= 0x4400uLL;
        v36 = *(v9 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_136;
        }
      }
    }

    else if (v35 == 285212704)
    {
      v34 |= 0x3400uLL;
      v36 = *(v9 + 8);
      if (v36 <= 285212703)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if (v35 != 285212736)
      {
        goto LABEL_157;
      }

      v34 |= 0x3800uLL;
      v36 = *(v9 + 8);
      if (v36 <= 285212703)
      {
        goto LABEL_136;
      }
    }
  }

  else if (v35 <= 536870927)
  {
    if (v35 == 536870916)
    {
      v36 = *(v9 + 8);
      if (v36 > 285212703)
      {
        goto LABEL_158;
      }

      goto LABEL_136;
    }

    if (v35 != 536870920)
    {
      goto LABEL_157;
    }

    v34 |= 0x400uLL;
    v36 = *(v9 + 8);
    if (v36 <= 285212703)
    {
      goto LABEL_136;
    }
  }

  else
  {
    switch(v35)
    {
      case 536870928:
        v34 |= 0x800uLL;
        v36 = *(v9 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_136;
        }

        break;
      case 536870944:
        v34 |= 0xC00uLL;
        v36 = *(v9 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_136;
        }

        break;
      case 536870976:
        v34 |= 0x1000uLL;
        v36 = *(v9 + 8);
        if (v36 > 285212703)
        {
          break;
        }

LABEL_136:
        if (v36 <= 31)
        {
          if (v36 > 7)
          {
            if (v36 == 8)
            {
              v37 = 196608;
              goto LABEL_180;
            }

            if (v36 == 16)
            {
              v37 = 229376;
              goto LABEL_180;
            }
          }

          else
          {
            if (v36 == -1879048176)
            {
              v37 = 393216;
              goto LABEL_180;
            }

            if (v36 == 4)
            {
              v37 = 163840;
              goto LABEL_180;
            }
          }
        }

        else if (v36 <= 268435463)
        {
          if (v36 == 32)
          {
            v37 = 0x40000;
            goto LABEL_180;
          }

          if (v36 == 64)
          {
            v37 = 294912;
            goto LABEL_180;
          }
        }

        else
        {
          switch(v36)
          {
            case 268435464:
              v37 = 491520;
              goto LABEL_180;
            case 268435472:
              v37 = 327680;
              goto LABEL_180;
            case 268435488:
              v37 = 360448;
              goto LABEL_180;
          }
        }

        goto LABEL_179;
      default:
        goto LABEL_157;
    }
  }

LABEL_158:
  if (v36 <= 536870915)
  {
    if (v36 > 301989895)
    {
      if (v36 == 301989896)
      {
        v37 = 0x80000;
        goto LABEL_180;
      }

      if (v36 == 335544328)
      {
        v37 = 557056;
        goto LABEL_180;
      }
    }

    else
    {
      if (v36 == 285212704)
      {
        v37 = 425984;
        goto LABEL_180;
      }

      if (v36 == 285212736)
      {
        v37 = 458752;
        goto LABEL_180;
      }
    }
  }

  else if (v36 <= 536870927)
  {
    if (v36 == 536870916)
    {
      v37 = 0;
      goto LABEL_180;
    }

    if (v36 == 536870920)
    {
      v37 = 0x8000;
      goto LABEL_180;
    }
  }

  else
  {
    switch(v36)
    {
      case 536870928:
        v37 = 0x10000;
        goto LABEL_180;
      case 536870944:
        v37 = 98304;
        goto LABEL_180;
      case 536870976:
        v37 = 0x20000;
        goto LABEL_180;
    }
  }

LABEL_179:
  v37 = 589824;
LABEL_180:
  v38 = v34 | v37;
  v39 = *(v229 + 8);
  if (v39 > 285212703)
  {
    if (v39 <= 536870915)
    {
      if (v39 > 301989895)
      {
        if (v39 == 301989896)
        {
          v40 = 16;
          goto LABEL_224;
        }

        if (v39 == 335544328)
        {
          v40 = 17;
          goto LABEL_224;
        }
      }

      else
      {
        if (v39 == 285212704)
        {
          v40 = 13;
          goto LABEL_224;
        }

        if (v39 == 285212736)
        {
          v40 = 14;
          goto LABEL_224;
        }
      }
    }

    else if (v39 <= 536870927)
    {
      if (v39 == 536870916)
      {
        v40 = 0;
        goto LABEL_224;
      }

      if (v39 == 536870920)
      {
        v40 = 1;
        goto LABEL_224;
      }
    }

    else
    {
      switch(v39)
      {
        case 536870928:
          v40 = 2;
          goto LABEL_224;
        case 536870944:
          v40 = 3;
          goto LABEL_224;
        case 536870976:
          v40 = 4;
          goto LABEL_224;
      }
    }
  }

  else if (v39 <= 31)
  {
    if (v39 > 7)
    {
      if (v39 == 8)
      {
        v40 = 6;
        goto LABEL_224;
      }

      if (v39 == 16)
      {
        v40 = 7;
        goto LABEL_224;
      }
    }

    else
    {
      if (v39 == -1879048176)
      {
        v40 = 12;
        goto LABEL_224;
      }

      if (v39 == 4)
      {
        v40 = 5;
        goto LABEL_224;
      }
    }
  }

  else if (v39 <= 268435463)
  {
    if (v39 == 32)
    {
      v40 = 8;
      goto LABEL_224;
    }

    if (v39 == 64)
    {
      v40 = 9;
      goto LABEL_224;
    }
  }

  else
  {
    switch(v39)
    {
      case 268435464:
        v40 = 15;
        goto LABEL_224;
      case 268435472:
        v40 = 10;
        goto LABEL_224;
      case 268435488:
        v40 = 11;
        goto LABEL_224;
    }
  }

  v40 = 18;
LABEL_224:
  v41 = v38 | v40;
  v43 = v222 == 1 && v224 == 1 && v226 == 1;
  v44 = 3047464;
  if (v43)
  {
    v44 = 7241768;
  }

  v339 = -1;
  v340 = -1;
  v341 = v44 | (v220 << 23) | (v217 << 25);
  v342 = v41;
  v344 = 0u;
  v343 = 0u;
  v345 = v32 | 0x10100;
  v346 = 0;
  v143 = *(v5 + *MEMORY[0x277CD7360]);
  v144 = *(v5 + *MEMORY[0x277CD7368]);
  v142 = *(v6 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v221 = (v30 * v210 * v212);
  MPSGetUIntDivisorMagicNumber();
  v218 = v46;
  v47 = v214 / v228;
  v162 = (v47 + 31) >> 5;
  MPSGetUIntDivisorMagicNumber();
  v215 = v48;
  MPSGetUIntDivisorMagicNumber();
  v202 = v49;
  MPSGetUIntDivisorMagicNumber();
  v199 = v50;
  MPSGetUIntDivisorMagicNumber();
  v196 = v51;
  MPSGetUIntDivisorMagicNumber();
  v173 = v52;
  MPSGetUIntDivisorMagicNumber();
  v171 = v53;
  MPSGetUIntDivisorMagicNumber();
  v169 = v54;
  MPSGetUIntDivisorMagicNumber();
  v167 = v55;
  MPSGetUIntDivisorMagicNumber();
  v165 = v56;
  MPSGetUIntDivisorMagicNumber();
  v163 = v57;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v142, v143, v144, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  v296 = v218;
  v297 = 0u;
  v298 = v215;
  v299 = v202;
  v300 = v199;
  v301 = v196;
  v302 = v173;
  v303 = v171;
  v304 = v169;
  v305 = v167;
  v306 = v165;
  v307 = v163;
  v308 = v23 / v228;
  v309 = v47;
  v310 = v228;
  v311 = v180;
  v312 = v175;
  v313 = v177;
  v314 = v179;
  v315 = v30;
  v316 = v210;
  v317 = v212;
  v318 = v27;
  v319 = v208;
  v320 = v206;
  v321 = v30;
  v322 = v210;
  v323 = v212;
  v324 = v186;
  v325 = v190;
  v326 = v192;
  v327 = v226;
  v328 = v224;
  v329 = v222;
  v330 = v188;
  v331 = v194;
  v332 = v184;
  v333 = ((v206 * v182 * v208 * v27) + 7) >> 3;
  memset(v337, 0, sizeof(v337));
  v335 = 0u;
  v336 = 0u;
  v334 = 0u;
  v338 = 0;
  MPSSetNDArraysOnComputeEncoder(a2, v6, 4, 0, 0);
  v58 = [*(v6 + 232) graph];
  v59 = *(v58 + 8);
  v60 = *v59;
  v61 = v59[1];
  v204 = v6;
  if (*v59 == v61)
  {
    v65 = 0;
    v69 = v229;
  }

  else
  {
    v62 = v8;
    v63 = v9;
    v64 = 0;
    v65 = -1;
    v66 = -1;
    do
    {
      v67 = *v60;
      if (v67 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v58) + 32))
      {
        v65 = v64;
      }

      v68 = *v60;
      if (v68 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v58) + 32))
      {
        v66 = v64;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v58) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v58);
      }

      ++v64;
      ++v60;
    }

    while (v60 != v61);
    if (v65 == -1)
    {
      v65 = 0;
      v9 = v63;
      v8 = v62;
      v69 = v229;
      v6 = v204;
    }

    else
    {
      v9 = v63;
      v8 = v62;
      v69 = v229;
      v6 = v204;
      if (v66 != -1)
      {
        goto LABEL_248;
      }
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_248:
  DimensionSize = BaseTensor::GetDimensionSize(v69);
  v71 = BaseTensor::GetDimensionSize(v69);
  v72 = BaseTensor::GetDimensionSize(v69);
  v73 = BaseTensor::GetDimensionSize(v69);
  v74 = BaseTensor::GetDimensionSize(v69);
  v75 = BaseTensor::GetDimensionSize(v8);
  v225 = BaseTensor::GetDimensionSize(v8);
  v223 = BaseTensor::GetDimensionSize(v8);
  v219 = BaseTensor::GetDimensionSize(v8);
  v216 = BaseTensor::GetDimensionSize(v8);
  v213 = BaseTensor::GetDimensionSize(v9);
  v211 = BaseTensor::GetDimensionSize(v9);
  v209 = BaseTensor::GetDimensionSize(v9);
  v207 = BaseTensor::GetDimensionSize(v9);
  v200 = BaseTensor::GetDimensionSize(v9);
  v203 = v75;
  v76 = [*(v6 + 16) objectAtIndexedSubscript:v65];
  v77 = *(v6 + 112);
  v78 = *(v6 + 208);
  makeStrideElements();
  makeStrideElements();
  v178 = v74;
  v181 = v72;
  v183 = v71;
  v185 = DimensionSize;
  makeStrideElements();
  v79 = vuzp1q_s32(v290, v291);
  v80 = vuzp1q_s32(v284, v285);
  v81 = vuzp1q_s32(v282, v283);
  v82 = vuzp1q_s32(v280, v281);
  v83 = v274;
  v84 = v272;
  v85 = *MEMORY[0x277CD73D8];
  v86 = *(v76 + v85);
  v240[0] = vuzp1q_s32(v288, v289);
  v240[1] = v79;
  v241 = vuzp1q_s32(v292, v293);
  v242 = vuzp1q_s32(v294, v295);
  v87 = v86 & 0xF;
  v197 = *(v240 + v87);
  v238[0] = v240[0];
  v238[1] = v79;
  v238[2] = v241;
  v238[3] = v242;
  v88 = BYTE1(v86) & 0xF;
  v195 = *(v238 + v88);
  v236[0] = v240[0];
  v236[1] = v79;
  v236[2] = v241;
  v236[3] = v242;
  v89 = BYTE2(v86) & 0xF;
  v193 = *(v236 + v89);
  v234[0] = v240[0];
  v234[1] = v79;
  v234[2] = v241;
  v234[3] = v242;
  v90 = BYTE3(v86) & 0xF;
  v189 = *(v234 + v90);
  v232[0] = v240[0];
  v232[1] = v79;
  v232[2] = v241;
  v232[3] = v242;
  v91 = BYTE4(v86) & 0xF;
  v191 = *(v232 + v91);
  v92 = *&v77[v85];
  v253[0] = v82;
  v253[1] = v81;
  v253[2] = v80;
  v254 = vuzp1q_s32(v286, v287);
  v93 = v92.i8[0] & 0xF;
  v94 = *(v253 + v93);
  v251[0] = v82;
  v251[1] = v81;
  v251[2] = v80;
  v251[3] = v254;
  v95 = v92.i8[1] & 0xF;
  v187 = *(v251 + v95);
  v249[0] = v82;
  v249[1] = v81;
  v249[2] = v80;
  v249[3] = v254;
  v96 = v92.i8[2] & 0xF;
  v227 = *(v249 + v96);
  v247[0] = v82;
  v247[1] = v81;
  v247[2] = v80;
  v247[3] = v254;
  v97 = v92.i8[3] & 0xF;
  v230 = *(v247 + v97);
  v245[0] = v82;
  v245[1] = v81;
  v245[2] = v80;
  v245[3] = v254;
  v98 = *&v78[v85];
  v99 = v92.i8[4] & 0xF;
  v100 = *(v245 + v99);
  v101 = vuzp1q_s32(v272, v273);
  v102 = vuzp1q_s32(v274, v275);
  v267 = vuzp1q_s32(v278, v279);
  v266 = vuzp1q_s32(v276, v277);
  v265[1] = v102;
  v265[0] = v101;
  v103 = v98.i8[0] & 0xF;
  v104 = *(v265 + v103);
  v263[3] = v267;
  v263[2] = v266;
  v263[1] = v102;
  v263[0] = v101;
  v105 = v98.i8[1] & 0xF;
  v106 = *(v263 + v105);
  v261[3] = v267;
  v261[2] = v266;
  v261[1] = v102;
  v261[0] = v101;
  v107 = v98.i8[2] & 0xF;
  v176 = *(v261 + v107);
  v259[3] = v267;
  v259[2] = v266;
  v259[1] = v102;
  v259[0] = v101;
  v108 = v98.i8[3] & 0xF;
  v174 = *(v259 + v108);
  v257[3] = v267;
  v257[2] = v266;
  v257[1] = v102;
  v257[0] = v101;
  v109 = v98.i8[4] & 0xF;
  v110 = *(v257 + v109);
  v111 = *MEMORY[0x277CD7418];
  v112 = *(v76 + v111);
  v113 = *(v76 + v111 + 16);
  v114 = *(v76 + v111 + 32);
  v115 = *MEMORY[0x277CD73C8];
  v172 = v76;
  v168 = *(v76 + v115);
  v170 = *(v204[1] + 80 * v65 + 64);
  v244 = *(v76 + v111 + 48);
  v243[2] = v114;
  v243[1] = v113;
  v243[0] = v112;
  v166 = *(v243 + v87);
  v239[3] = v244;
  v239[2] = v114;
  v239[1] = v113;
  v239[0] = v112;
  v164 = *(v239 + v88);
  v237[3] = v244;
  v237[2] = v114;
  v237[0] = v112;
  v237[1] = v113;
  v161 = *(v237 + v89);
  v235[2] = v114;
  v235[3] = v244;
  v235[0] = v112;
  v235[1] = v113;
  v160 = *(v235 + v90);
  v233[2] = v114;
  v233[3] = v244;
  v233[0] = v112;
  v233[1] = v113;
  v159 = *(v233 + v91);
  v116 = *&v77[v111];
  v117 = *&v77[v111 + 16];
  v118 = *&v77[v111 + 32];
  v157 = *&v77[v115];
  v158 = v204[12];
  v256 = *&v77[v111 + 48];
  v255[2] = v118;
  v255[1] = v117;
  v255[0] = v116;
  v156 = *(v255 + v93);
  v252[3] = v256;
  v252[2] = v118;
  v252[1] = v117;
  v252[0] = v116;
  v155 = *(v252 + v95);
  v250[3] = v256;
  v250[2] = v118;
  v250[1] = v117;
  v250[0] = v116;
  v154 = *(v250 + v96);
  v248[3] = v256;
  v248[2] = v118;
  v248[1] = v117;
  v248[0] = v116;
  v153 = *(v248 + v97);
  v246[3] = v256;
  v246[2] = v118;
  v246[1] = v117;
  v246[0] = v116;
  v152 = *(v246 + v99);
  v119 = *&v78[v111];
  v120 = *&v78[v111 + 16];
  v121 = *&v78[v111 + 32];
  v122 = *&v78[v111 + 48];
  v150 = *&v78[v115];
  v151 = v204[24];
  v268[3] = v122;
  v268[2] = v121;
  v268[1] = v120;
  v268[0] = v119;
  v149 = *(v268 + v103);
  v264[3] = v122;
  v264[2] = v121;
  v264[1] = v120;
  v264[0] = v119;
  v148 = *(v264 + v105);
  v262[3] = v122;
  v262[2] = v121;
  v262[1] = v120;
  v262[0] = v119;
  v147 = *(v262 + v107);
  v260[3] = v122;
  v260[2] = v121;
  v260[1] = v120;
  v260[0] = v119;
  v146 = *(v260 + v108);
  v258[3] = v122;
  v258[2] = v121;
  v258[1] = v120;
  v258[0] = v119;
  v145 = *(v258 + v109);
  v119.i32[0] = 2;
  v120.i32[0] = v203;
  *&v334 = __PAIR64__(v225, v203);
  v83.i32[0] = v225;
  v101.i32[0] = v223;
  *(&v334 + 1) = __PAIR64__(v219, v223);
  v122.i32[0] = v219;
  v121.i32[0] = v216;
  *&v335 = __PAIR64__(v213, v216);
  v84.i32[0] = v213;
  v98.i32[0] = v211;
  *(&v335 + 1) = __PAIR64__(v209, v211);
  v80.i32[0] = v209;
  v82.i32[0] = v207;
  *&v336 = __PAIR64__(v200, v207);
  v102.i32[0] = v200;
  *(&v336 + 1) = __PAIR64__(v183, v185);
  v337[0] = v181;
  v337[1] = v73;
  v337[2] = v178;
  *&v337[13] = __PAIR64__(v106, v104);
  v92.i64[0] = __PAIR64__(v195, v197);
  v123.i64[0] = __PAIR64__(v187, v94);
  v92.i64[1] = __PAIR64__(v189, v193);
  v124 = v92;
  v124.i32[0] = 0;
  v125 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v119, v120), 0), v124, v92);
  v123.i64[1] = __PAIR64__(v230, v227);
  v126 = v123;
  v127 = v125;
  v126.i32[0] = 0;
  v127.i32[1] = 0;
  v128 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v119, v84), 0), v126, v123);
  v129 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v119, v83), 0), v127, v125);
  v83.i64[0] = vcgtq_u32(v119, v98).u64[0];
  v130 = v128;
  v130.i32[1] = 0;
  v131 = vbslq_s8(vdupq_lane_s32(*v83.i8, 0), v130, v128);
  v132 = v129;
  v132.i32[2] = 0;
  v133 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v119, v101), 0), v132, v129);
  v79.i32[0] = v191;
  LODWORD(v76) = v100;
  v81.i32[0] = v100;
  v134 = v131;
  v134.i32[2] = 0;
  v135 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v119, v80), 0), v134, v131);
  v136 = v133;
  v136.i32[3] = 0;
  v137 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v119, v122), 0), v136, v133);
  v138 = v135;
  v138.i32[3] = 0;
  v139 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v119, v82), 0), v138, v135);
  v140 = vbicq_s8(v79, vcgtq_u32(v119, v121));
  *&v337[3] = v137;
  *&v337[7] = vextq_s8(vextq_s8(v140, v140, 4uLL), v139, 0xCuLL);
  *&v337[11] = vextq_s8(v139, vbicq_s8(v81, vcgtq_u32(v119, v102)), 0xCuLL).u64[0];
  v337[15] = v176;
  v338 = __PAIR64__(v110, v174);
  [a2 setThreadgroupMemoryLength:2048 atIndex:0];
  objc_msgSend_setBytes_length_atIndex_(a2);
  [a2 setBuffer:objc_msgSend(v172 offset:"buffer") atIndex:{v170 + (v166 * v197 + v164 * v195 + v161 * v193 + v160 * v189 + v159 * v191) * (v168 >> 3), 28}];
  [a2 setBuffer:objc_msgSend(v77 offset:"buffer") atIndex:{v158 + (v156 * v94 + v155 * v187 + v154 * v227 + v153 * v230 + v152 * v76) * (v157 >> 3), 27}];
  [a2 setBuffer:objc_msgSend(v78 offset:"buffer") atIndex:{v151 + (v149 * v104 + v148 * v106 + v147 * v176 + v146 * v174 + v145 * v110) * (v150 >> 3), 26}];
  v271[0] = v221;
  v271[1] = (v205 + 31) >> 5;
  v271[2] = v162 * v228;
  v269 = xmmword_239B0A150;
  v270 = 1;
  [a2 dispatchThreadgroups:v271 threadsPerThreadgroup:&v269];
  operator delete(0);
  operator delete(0);
  operator delete(0);
  return 0;
}

void sub_239A47CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(__p);
  operator delete(STACK[0x250]);
  if (STACK[0x258])
  {
    operator delete(STACK[0x258]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void EncodeNDArrayConvolution3D(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *&a1[*MEMORY[0x277CD7370]];
  v28 = 0;
  v9[21] = v6;
  v10 = [a1 dataFormat];
  v11 = [a1 weightsFormat];
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  objc_msgSend_strideInPixels(a1);
  v15 = v9[18];
  objc_msgSend_strideInPixels(a1);
  v16 = v9[16];
  objc_msgSend_strideInPixels(a1);
  v17 = v9[14];
  objc_msgSend_dilationRates(a1);
  v18 = v9[9];
  objc_msgSend_dilationRates(a1);
  v19 = v9[7];
  objc_msgSend_dilationRates(a1);
  v20 = v9[5];
  v21 = [a1 groups];
  objc_msgSend_offsets(a1);
  v22 = v9[0];
  objc_msgSend_offsets(a1);
  v23 = v8;
  objc_msgSend_offsets(a1);
  v24 = v7;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  LOBYTE(v28) = 0;
  v29 = a4;
  v30 = a1;
  operator new();
}

void EncodeNDArrayConvolution3DGradientWithIntput(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *&a1[*MEMORY[0x277CD7370]];
  v28 = 1;
  v9[30] = v6;
  v10 = [a1 dataFormat];
  v11 = [a1 weightsFormat];
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  objc_msgSend_strideInPixels(a1);
  v15 = v9[27];
  objc_msgSend_strideInPixels(a1);
  v16 = v9[25];
  objc_msgSend_strideInPixels(a1);
  v17 = v9[23];
  objc_msgSend_dilationRates(a1);
  v18 = v9[18];
  objc_msgSend_dilationRates(a1);
  v19 = v9[16];
  objc_msgSend_dilationRates(a1);
  v20 = v9[14];
  v21 = [a1 groups];
  objc_msgSend_offsets(a1);
  v22 = v9[9];
  objc_msgSend_offsets(a1);
  v23 = v9[7];
  objc_msgSend_offsets(a1);
  v24 = v9[5];
  objc_msgSend_kernelOffsets(a1);
  v25 = v9[0];
  objc_msgSend_kernelOffsets(a1);
  v26 = v8;
  objc_msgSend_kernelOffsets(a1);
  v27 = v7;
  v29 = a4;
  v30 = a1;
  operator new();
}

void EncodeNDArrayConvolution3DGradientWithWeights(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *&a1[*MEMORY[0x277CD7370]];
  v29 = 1;
  v10[30] = v7;
  v11 = [a1 dataFormat];
  v12 = [a1 weightsFormat];
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  objc_msgSend_strideInPixels(a1);
  v16 = v10[27];
  objc_msgSend_strideInPixels(a1);
  v17 = v10[25];
  objc_msgSend_strideInPixels(a1);
  v18 = v10[23];
  objc_msgSend_dilationRates(a1);
  v19 = v10[18];
  objc_msgSend_dilationRates(a1);
  v20 = v10[16];
  objc_msgSend_dilationRates(a1);
  v21 = v10[14];
  v22 = [a1 groups];
  objc_msgSend_offsets(a1);
  v23 = v10[9];
  objc_msgSend_offsets(a1);
  v24 = v10[7];
  objc_msgSend_offsets(a1);
  v25 = v10[5];
  objc_msgSend_kernelOffsets(a1);
  v26 = v10[0];
  objc_msgSend_kernelOffsets(a1);
  v27 = v9;
  objc_msgSend_kernelOffsets(a1);
  v28 = v8;
  v30 = a4;
  v31 = a1;
  operator new();
}

void MPSNDArrayConvolution3DLogCommandLine(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*&a1[*MEMORY[0x277CD7380]] >= 4uLL)
  {
    v6 = *(a2 + 168);
    v7 = *(v6 + 232);
    if (*(a2 + 160) == 1)
    {
      [v7 outputTensorAtIndex:{0, a4, a3}];
      [*(v6 + 232) inputTensorAtIndex:1];
      [*(v6 + 232) inputTensorAtIndex:2];
    }

    else
    {
      [v7 inputTensorAtIndex:{0, a4, a3}];
      [*(v6 + 232) inputTensorAtIndex:1];
      [*(v6 + 232) outputTensorAtIndex:0];
    }

    v8 = *(a2 + 8);
    *(&v163.__r_.__value_.__s + 23) = 0;
    v163.__r_.__value_.__s.__data_[0] = 0;
    *(&v159.__r_.__value_.__s + 23) = 12;
    strcpy(&v159, "-dataFormat ");
    if (v8)
    {
      v9 = "NDHWC";
    }

    else
    {
      v9 = "NCDHW";
    }

    v10 = std::string::append(&v159, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v160.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v160.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v160, " ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v162 = v12->__r_.__value_.__r.__words[2];
    v161 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v162 >= 0)
    {
      v14 = &v161;
    }

    else
    {
      v14 = v161;
    }

    if (v162 >= 0)
    {
      v15 = HIBYTE(v162);
    }

    else
    {
      v15 = *(&v161 + 1);
    }

    std::string::append(&v163, v14, v15);
    if (SHIBYTE(v162) < 0)
    {
      operator delete(v161);
      if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_62:
        operator delete(v159.__r_.__value_.__l.__data_);
LABEL_17:
        *(&v159.__r_.__value_.__s + 23) = 15;
        strcpy(&v159, "-weightsFormat ");
        if (*(a2 + 12) == 1)
        {
          v16 = "OIDHW";
        }

        else
        {
          v16 = "DHWIO";
        }

        v17 = std::string::append(&v159, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v160.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v160.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(&v160, " ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v162 = v19->__r_.__value_.__r.__words[2];
        v161 = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if (v162 >= 0)
        {
          v21 = &v161;
        }

        else
        {
          v21 = v161;
        }

        if (v162 >= 0)
        {
          v22 = HIBYTE(v162);
        }

        else
        {
          v22 = *(&v161 + 1);
        }

        std::string::append(&v163, v21, v22);
        if (SHIBYTE(v162) < 0)
        {
          operator delete(v161);
          if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_28:
            if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_65;
          }
        }

        else if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        operator delete(v160.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_29:
          if (*(a2 + 12) == 1)
          {
LABEL_30:
            *(&v153.__r_.__value_.__s + 23) = 15;
            strcpy(&v153, "-kernelSizes \\[");
            std::to_string(&v152, *(a2 + 48));
            if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v152;
            }

            else
            {
              v23 = v152.__r_.__value_.__r.__words[0];
            }

            if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v152.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v152.__r_.__value_.__l.__size_;
            }

            v25 = std::string::append(&v153, v23, size);
            v26 = *&v25->__r_.__value_.__l.__data_;
            v154.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
            *&v154.__r_.__value_.__l.__data_ = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            v27 = std::string::append(&v154, ",");
            v28 = *&v27->__r_.__value_.__l.__data_;
            v155.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
            *&v155.__r_.__value_.__l.__data_ = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v151, *(a2 + 40));
            if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v151;
            }

            else
            {
              v29 = v151.__r_.__value_.__r.__words[0];
            }

            if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v30 = v151.__r_.__value_.__l.__size_;
            }

            v31 = std::string::append(&v155, v29, v30);
            v32 = *&v31->__r_.__value_.__l.__data_;
            v156.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
            *&v156.__r_.__value_.__l.__data_ = v32;
            v31->__r_.__value_.__l.__size_ = 0;
            v31->__r_.__value_.__r.__words[2] = 0;
            v31->__r_.__value_.__r.__words[0] = 0;
            v33 = std::string::append(&v156, ",");
            v34 = *&v33->__r_.__value_.__l.__data_;
            v157.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
            *&v157.__r_.__value_.__l.__data_ = v34;
            v33->__r_.__value_.__l.__size_ = 0;
            v33->__r_.__value_.__r.__words[2] = 0;
            v33->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v150, *(a2 + 32));
            if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v35 = &v150;
            }

            else
            {
              v35 = v150.__r_.__value_.__r.__words[0];
            }

            if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v36 = v150.__r_.__value_.__l.__size_;
            }

            v37 = std::string::append(&v157, v35, v36);
            v38 = *&v37->__r_.__value_.__l.__data_;
            v158.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
            *&v158.__r_.__value_.__l.__data_ = v38;
            v37->__r_.__value_.__l.__size_ = 0;
            v37->__r_.__value_.__r.__words[2] = 0;
            v37->__r_.__value_.__r.__words[0] = 0;
            v39 = std::string::append(&v158, ",");
            v40 = *&v39->__r_.__value_.__l.__data_;
            v159.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
            *&v159.__r_.__value_.__l.__data_ = v40;
            v39->__r_.__value_.__l.__size_ = 0;
            v39->__r_.__value_.__r.__words[2] = 0;
            v39->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v149, *(a2 + 16));
            if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &v149;
            }

            else
            {
              v41 = v149.__r_.__value_.__r.__words[0];
            }

            if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v42 = HIBYTE(v149.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v42 = v149.__r_.__value_.__l.__size_;
            }

            v43 = std::string::append(&v159, v41, v42);
            v44 = *&v43->__r_.__value_.__l.__data_;
            v160.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
            *&v160.__r_.__value_.__l.__data_ = v44;
            v43->__r_.__value_.__l.__size_ = 0;
            v43->__r_.__value_.__r.__words[2] = 0;
            v43->__r_.__value_.__r.__words[0] = 0;
            v45 = std::string::append(&v160, "\\] ");
            v46 = *&v45->__r_.__value_.__l.__data_;
            v162 = v45->__r_.__value_.__r.__words[2];
            v161 = v46;
            v45->__r_.__value_.__l.__size_ = 0;
            v45->__r_.__value_.__r.__words[2] = 0;
            v45->__r_.__value_.__r.__words[0] = 0;
            if (v162 >= 0)
            {
              v47 = &v161;
            }

            else
            {
              v47 = v161;
            }

            if (v162 >= 0)
            {
              v48 = HIBYTE(v162);
            }

            else
            {
              v48 = *(&v161 + 1);
            }

            goto LABEL_96;
          }

LABEL_66:
          *(&v153.__r_.__value_.__s + 23) = 15;
          strcpy(&v153, "-kernelSizes \\[");
          std::to_string(&v152, *(a2 + 16));
          if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &v152;
          }

          else
          {
            v49 = v152.__r_.__value_.__r.__words[0];
          }

          if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v50 = v152.__r_.__value_.__l.__size_;
          }

          v51 = std::string::append(&v153, v49, v50);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v154.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
          *&v154.__r_.__value_.__l.__data_ = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          v53 = std::string::append(&v154, ",");
          v54 = *&v53->__r_.__value_.__l.__data_;
          v155.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
          *&v155.__r_.__value_.__l.__data_ = v54;
          v53->__r_.__value_.__l.__size_ = 0;
          v53->__r_.__value_.__r.__words[2] = 0;
          v53->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v151, *(a2 + 48));
          if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = &v151;
          }

          else
          {
            v55 = v151.__r_.__value_.__r.__words[0];
          }

          if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v56 = v151.__r_.__value_.__l.__size_;
          }

          v57 = std::string::append(&v155, v55, v56);
          v58 = *&v57->__r_.__value_.__l.__data_;
          v156.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
          *&v156.__r_.__value_.__l.__data_ = v58;
          v57->__r_.__value_.__l.__size_ = 0;
          v57->__r_.__value_.__r.__words[2] = 0;
          v57->__r_.__value_.__r.__words[0] = 0;
          v59 = std::string::append(&v156, ",");
          v60 = *&v59->__r_.__value_.__l.__data_;
          v157.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
          *&v157.__r_.__value_.__l.__data_ = v60;
          v59->__r_.__value_.__l.__size_ = 0;
          v59->__r_.__value_.__r.__words[2] = 0;
          v59->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v150, *(a2 + 40));
          if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = &v150;
          }

          else
          {
            v61 = v150.__r_.__value_.__r.__words[0];
          }

          if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v62 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v62 = v150.__r_.__value_.__l.__size_;
          }

          v63 = std::string::append(&v157, v61, v62);
          v64 = *&v63->__r_.__value_.__l.__data_;
          v158.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
          *&v158.__r_.__value_.__l.__data_ = v64;
          v63->__r_.__value_.__l.__size_ = 0;
          v63->__r_.__value_.__r.__words[2] = 0;
          v63->__r_.__value_.__r.__words[0] = 0;
          v65 = std::string::append(&v158, ",");
          v66 = *&v65->__r_.__value_.__l.__data_;
          v159.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
          *&v159.__r_.__value_.__l.__data_ = v66;
          v65->__r_.__value_.__l.__size_ = 0;
          v65->__r_.__value_.__r.__words[2] = 0;
          v65->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v149, *(a2 + 32));
          if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v67 = &v149;
          }

          else
          {
            v67 = v149.__r_.__value_.__r.__words[0];
          }

          if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = HIBYTE(v149.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v68 = v149.__r_.__value_.__l.__size_;
          }

          v69 = std::string::append(&v159, v67, v68);
          v70 = *&v69->__r_.__value_.__l.__data_;
          v160.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
          *&v160.__r_.__value_.__l.__data_ = v70;
          v69->__r_.__value_.__l.__size_ = 0;
          v69->__r_.__value_.__r.__words[2] = 0;
          v69->__r_.__value_.__r.__words[0] = 0;
          v71 = std::string::append(&v160, "\\] ");
          v72 = *&v71->__r_.__value_.__l.__data_;
          v162 = v71->__r_.__value_.__r.__words[2];
          v161 = v72;
          v71->__r_.__value_.__l.__size_ = 0;
          v71->__r_.__value_.__r.__words[2] = 0;
          v71->__r_.__value_.__r.__words[0] = 0;
          if (v162 >= 0)
          {
            v47 = &v161;
          }

          else
          {
            v47 = v161;
          }

          if (v162 >= 0)
          {
            v48 = HIBYTE(v162);
          }

          else
          {
            v48 = *(&v161 + 1);
          }

LABEL_96:
          std::string::append(&v163, v47, v48);
          if (SHIBYTE(v162) < 0)
          {
            operator delete(v161);
            if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_98:
              if ((SHIBYTE(v149.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_99;
              }

              goto LABEL_136;
            }
          }

          else if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          operator delete(v160.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v149.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_99:
            if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_100;
            }

            goto LABEL_137;
          }

LABEL_136:
          operator delete(v149.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_100:
            if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_138;
          }

LABEL_137:
          operator delete(v159.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_101:
            if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_102;
            }

            goto LABEL_139;
          }

LABEL_138:
          operator delete(v158.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_102:
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_103;
            }

            goto LABEL_140;
          }

LABEL_139:
          operator delete(v150.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_103:
            if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_104;
            }

            goto LABEL_141;
          }

LABEL_140:
          operator delete(v157.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_104:
            if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_105;
            }

            goto LABEL_142;
          }

LABEL_141:
          operator delete(v156.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_105:
            if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_106;
            }

            goto LABEL_143;
          }

LABEL_142:
          operator delete(v151.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_106:
            if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_107;
            }

            goto LABEL_144;
          }

LABEL_143:
          operator delete(v155.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_107:
            if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_108;
            }

            goto LABEL_145;
          }

LABEL_144:
          operator delete(v154.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_108:
            if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_109;
            }

            goto LABEL_146;
          }

LABEL_145:
          operator delete(v152.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_109:
            if (*(a2 + 8))
            {
LABEL_110:
              *(&v155.__r_.__value_.__s + 23) = 11;
              strcpy(&v155, "-strides \\[");
              objc_msgSend_strideInPixels(a1);
              std::to_string(&v154, v153.__r_.__value_.__r.__words[2]);
              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v73 = &v154;
              }

              else
              {
                v73 = v154.__r_.__value_.__r.__words[0];
              }

              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v74 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v74 = v154.__r_.__value_.__l.__size_;
              }

              v75 = std::string::append(&v155, v73, v74);
              v76 = *&v75->__r_.__value_.__l.__data_;
              v156.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
              *&v156.__r_.__value_.__l.__data_ = v76;
              v75->__r_.__value_.__l.__size_ = 0;
              v75->__r_.__value_.__r.__words[2] = 0;
              v75->__r_.__value_.__r.__words[0] = 0;
              v77 = std::string::append(&v156, ",");
              v78 = *&v77->__r_.__value_.__l.__data_;
              v157.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
              *&v157.__r_.__value_.__l.__data_ = v78;
              v77->__r_.__value_.__l.__size_ = 0;
              v77->__r_.__value_.__r.__words[2] = 0;
              v77->__r_.__value_.__r.__words[0] = 0;
              objc_msgSend_strideInPixels(a1);
              std::to_string(&v152, v151.__r_.__value_.__l.__size_);
              if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v79 = &v152;
              }

              else
              {
                v79 = v152.__r_.__value_.__r.__words[0];
              }

              if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v80 = v152.__r_.__value_.__l.__size_;
              }

              v81 = std::string::append(&v157, v79, v80);
              v82 = *&v81->__r_.__value_.__l.__data_;
              v158.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
              *&v158.__r_.__value_.__l.__data_ = v82;
              v81->__r_.__value_.__l.__size_ = 0;
              v81->__r_.__value_.__r.__words[2] = 0;
              v81->__r_.__value_.__r.__words[0] = 0;
              v83 = std::string::append(&v158, ",");
              v84 = *&v83->__r_.__value_.__l.__data_;
              v159.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
              *&v159.__r_.__value_.__l.__data_ = v84;
              v83->__r_.__value_.__l.__size_ = 0;
              v83->__r_.__value_.__r.__words[2] = 0;
              v83->__r_.__value_.__r.__words[0] = 0;
              objc_msgSend_strideInPixels(a1);
              std::to_string(&v150, v149.__r_.__value_.__r.__words[0]);
              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v85 = &v150;
              }

              else
              {
                v85 = v150.__r_.__value_.__r.__words[0];
              }

              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v86 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v86 = v150.__r_.__value_.__l.__size_;
              }

              v87 = std::string::append(&v159, v85, v86);
              v88 = *&v87->__r_.__value_.__l.__data_;
              v160.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
              *&v160.__r_.__value_.__l.__data_ = v88;
              v87->__r_.__value_.__l.__size_ = 0;
              v87->__r_.__value_.__r.__words[2] = 0;
              v87->__r_.__value_.__r.__words[0] = 0;
              v89 = std::string::append(&v160, ", 1\\] ");
              v90 = *&v89->__r_.__value_.__l.__data_;
              v162 = v89->__r_.__value_.__r.__words[2];
              v161 = v90;
              v89->__r_.__value_.__l.__size_ = 0;
              v89->__r_.__value_.__r.__words[2] = 0;
              v89->__r_.__value_.__r.__words[0] = 0;
              if (v162 >= 0)
              {
                v91 = &v161;
              }

              else
              {
                v91 = v161;
              }

              if (v162 >= 0)
              {
                v92 = HIBYTE(v162);
              }

              else
              {
                v92 = *(&v161 + 1);
              }

              goto LABEL_171;
            }

LABEL_147:
            *(&v155.__r_.__value_.__s + 23) = 13;
            strcpy(&v155, "-strides \\[1,");
            objc_msgSend_strideInPixels(a1);
            std::to_string(&v154, v153.__r_.__value_.__r.__words[2]);
            if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = &v154;
            }

            else
            {
              v93 = v154.__r_.__value_.__r.__words[0];
            }

            if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v94 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v94 = v154.__r_.__value_.__l.__size_;
            }

            v95 = std::string::append(&v155, v93, v94);
            v96 = *&v95->__r_.__value_.__l.__data_;
            v156.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
            *&v156.__r_.__value_.__l.__data_ = v96;
            v95->__r_.__value_.__l.__size_ = 0;
            v95->__r_.__value_.__r.__words[2] = 0;
            v95->__r_.__value_.__r.__words[0] = 0;
            v97 = std::string::append(&v156, ",");
            v98 = *&v97->__r_.__value_.__l.__data_;
            v157.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
            *&v157.__r_.__value_.__l.__data_ = v98;
            v97->__r_.__value_.__l.__size_ = 0;
            v97->__r_.__value_.__r.__words[2] = 0;
            v97->__r_.__value_.__r.__words[0] = 0;
            objc_msgSend_strideInPixels(a1);
            std::to_string(&v152, v151.__r_.__value_.__l.__size_);
            if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v99 = &v152;
            }

            else
            {
              v99 = v152.__r_.__value_.__r.__words[0];
            }

            if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v100 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v100 = v152.__r_.__value_.__l.__size_;
            }

            v101 = std::string::append(&v157, v99, v100);
            v102 = *&v101->__r_.__value_.__l.__data_;
            v158.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
            *&v158.__r_.__value_.__l.__data_ = v102;
            v101->__r_.__value_.__l.__size_ = 0;
            v101->__r_.__value_.__r.__words[2] = 0;
            v101->__r_.__value_.__r.__words[0] = 0;
            v103 = std::string::append(&v158, ",");
            v104 = *&v103->__r_.__value_.__l.__data_;
            v159.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
            *&v159.__r_.__value_.__l.__data_ = v104;
            v103->__r_.__value_.__l.__size_ = 0;
            v103->__r_.__value_.__r.__words[2] = 0;
            v103->__r_.__value_.__r.__words[0] = 0;
            objc_msgSend_strideInPixels(a1);
            std::to_string(&v150, v149.__r_.__value_.__r.__words[0]);
            if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v105 = &v150;
            }

            else
            {
              v105 = v150.__r_.__value_.__r.__words[0];
            }

            if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v106 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v106 = v150.__r_.__value_.__l.__size_;
            }

            v107 = std::string::append(&v159, v105, v106);
            v108 = *&v107->__r_.__value_.__l.__data_;
            v160.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
            *&v160.__r_.__value_.__l.__data_ = v108;
            v107->__r_.__value_.__l.__size_ = 0;
            v107->__r_.__value_.__r.__words[2] = 0;
            v107->__r_.__value_.__r.__words[0] = 0;
            v109 = std::string::append(&v160, "\\] ");
            v110 = *&v109->__r_.__value_.__l.__data_;
            v162 = v109->__r_.__value_.__r.__words[2];
            v161 = v110;
            v109->__r_.__value_.__l.__size_ = 0;
            v109->__r_.__value_.__r.__words[2] = 0;
            v109->__r_.__value_.__r.__words[0] = 0;
            if (v162 >= 0)
            {
              v91 = &v161;
            }

            else
            {
              v91 = v161;
            }

            if (v162 >= 0)
            {
              v92 = HIBYTE(v162);
            }

            else
            {
              v92 = *(&v161 + 1);
            }

LABEL_171:
            std::string::append(&v163, v91, v92);
            if (SHIBYTE(v162) < 0)
            {
              operator delete(v161);
              if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_173:
                if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_174;
                }

                goto LABEL_208;
              }
            }

            else if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

            operator delete(v160.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_174:
              if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_175;
              }

              goto LABEL_209;
            }

LABEL_208:
            operator delete(v150.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_175:
              if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_176;
              }

              goto LABEL_210;
            }

LABEL_209:
            operator delete(v159.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_176:
              if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_177;
              }

              goto LABEL_211;
            }

LABEL_210:
            operator delete(v158.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_177:
              if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_178;
              }

              goto LABEL_212;
            }

LABEL_211:
            operator delete(v152.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_178:
              if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_179;
              }

              goto LABEL_213;
            }

LABEL_212:
            operator delete(v157.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_179:
              if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_180;
              }

              goto LABEL_214;
            }

LABEL_213:
            operator delete(v156.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_180:
              if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_181;
              }

              goto LABEL_215;
            }

LABEL_214:
            operator delete(v154.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_181:
              if (*(a2 + 8))
              {
LABEL_182:
                *(&v155.__r_.__value_.__s + 23) = 17;
                strcpy(&v155, "-dilationRates \\[");
                objc_msgSend_dilationRates(a1);
                std::to_string(&v154, v153.__r_.__value_.__r.__words[2]);
                if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v111 = &v154;
                }

                else
                {
                  v111 = v154.__r_.__value_.__r.__words[0];
                }

                if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v112 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v112 = v154.__r_.__value_.__l.__size_;
                }

                v113 = std::string::append(&v155, v111, v112);
                v114 = *&v113->__r_.__value_.__l.__data_;
                v156.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
                *&v156.__r_.__value_.__l.__data_ = v114;
                v113->__r_.__value_.__l.__size_ = 0;
                v113->__r_.__value_.__r.__words[2] = 0;
                v113->__r_.__value_.__r.__words[0] = 0;
                v115 = std::string::append(&v156, ",");
                v116 = *&v115->__r_.__value_.__l.__data_;
                v157.__r_.__value_.__r.__words[2] = v115->__r_.__value_.__r.__words[2];
                *&v157.__r_.__value_.__l.__data_ = v116;
                v115->__r_.__value_.__l.__size_ = 0;
                v115->__r_.__value_.__r.__words[2] = 0;
                v115->__r_.__value_.__r.__words[0] = 0;
                objc_msgSend_dilationRates(a1);
                std::to_string(&v152, v151.__r_.__value_.__l.__size_);
                if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v117 = &v152;
                }

                else
                {
                  v117 = v152.__r_.__value_.__r.__words[0];
                }

                if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v118 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v118 = v152.__r_.__value_.__l.__size_;
                }

                v119 = std::string::append(&v157, v117, v118);
                v120 = *&v119->__r_.__value_.__l.__data_;
                v158.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
                *&v158.__r_.__value_.__l.__data_ = v120;
                v119->__r_.__value_.__l.__size_ = 0;
                v119->__r_.__value_.__r.__words[2] = 0;
                v119->__r_.__value_.__r.__words[0] = 0;
                v121 = std::string::append(&v158, ",");
                v122 = *&v121->__r_.__value_.__l.__data_;
                v159.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
                *&v159.__r_.__value_.__l.__data_ = v122;
                v121->__r_.__value_.__l.__size_ = 0;
                v121->__r_.__value_.__r.__words[2] = 0;
                v121->__r_.__value_.__r.__words[0] = 0;
                objc_msgSend_dilationRates(a1);
                std::to_string(&v150, v149.__r_.__value_.__r.__words[0]);
                if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v123 = &v150;
                }

                else
                {
                  v123 = v150.__r_.__value_.__r.__words[0];
                }

                if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v124 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v124 = v150.__r_.__value_.__l.__size_;
                }

                v125 = std::string::append(&v159, v123, v124);
                v126 = *&v125->__r_.__value_.__l.__data_;
                v160.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
                *&v160.__r_.__value_.__l.__data_ = v126;
                v125->__r_.__value_.__l.__size_ = 0;
                v125->__r_.__value_.__r.__words[2] = 0;
                v125->__r_.__value_.__r.__words[0] = 0;
                v127 = std::string::append(&v160, ", 1\\] ");
                v128 = *&v127->__r_.__value_.__l.__data_;
                v162 = v127->__r_.__value_.__r.__words[2];
                v161 = v128;
                v127->__r_.__value_.__l.__size_ = 0;
                v127->__r_.__value_.__r.__words[2] = 0;
                v127->__r_.__value_.__r.__words[0] = 0;
                if (v162 >= 0)
                {
                  v129 = &v161;
                }

                else
                {
                  v129 = v161;
                }

                if (v162 >= 0)
                {
                  v130 = HIBYTE(v162);
                }

                else
                {
                  v130 = *(&v161 + 1);
                }

                goto LABEL_240;
              }

LABEL_216:
              *(&v155.__r_.__value_.__s + 23) = 19;
              strcpy(&v155, "-dilationRates \\[1,");
              objc_msgSend_dilationRates(a1);
              std::to_string(&v154, v153.__r_.__value_.__r.__words[2]);
              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = &v154;
              }

              else
              {
                v131 = v154.__r_.__value_.__r.__words[0];
              }

              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v132 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v132 = v154.__r_.__value_.__l.__size_;
              }

              v133 = std::string::append(&v155, v131, v132);
              v134 = *&v133->__r_.__value_.__l.__data_;
              v156.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
              *&v156.__r_.__value_.__l.__data_ = v134;
              v133->__r_.__value_.__l.__size_ = 0;
              v133->__r_.__value_.__r.__words[2] = 0;
              v133->__r_.__value_.__r.__words[0] = 0;
              v135 = std::string::append(&v156, ",");
              v136 = *&v135->__r_.__value_.__l.__data_;
              v157.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
              *&v157.__r_.__value_.__l.__data_ = v136;
              v135->__r_.__value_.__l.__size_ = 0;
              v135->__r_.__value_.__r.__words[2] = 0;
              v135->__r_.__value_.__r.__words[0] = 0;
              objc_msgSend_dilationRates(a1);
              std::to_string(&v152, v151.__r_.__value_.__l.__size_);
              if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v137 = &v152;
              }

              else
              {
                v137 = v152.__r_.__value_.__r.__words[0];
              }

              if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v138 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v138 = v152.__r_.__value_.__l.__size_;
              }

              v139 = std::string::append(&v157, v137, v138);
              v140 = *&v139->__r_.__value_.__l.__data_;
              v158.__r_.__value_.__r.__words[2] = v139->__r_.__value_.__r.__words[2];
              *&v158.__r_.__value_.__l.__data_ = v140;
              v139->__r_.__value_.__l.__size_ = 0;
              v139->__r_.__value_.__r.__words[2] = 0;
              v139->__r_.__value_.__r.__words[0] = 0;
              v141 = std::string::append(&v158, ",");
              v142 = *&v141->__r_.__value_.__l.__data_;
              v159.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
              *&v159.__r_.__value_.__l.__data_ = v142;
              v141->__r_.__value_.__l.__size_ = 0;
              v141->__r_.__value_.__r.__words[2] = 0;
              v141->__r_.__value_.__r.__words[0] = 0;
              objc_msgSend_dilationRates(a1);
              std::to_string(&v150, v149.__r_.__value_.__r.__words[0]);
              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v143 = &v150;
              }

              else
              {
                v143 = v150.__r_.__value_.__r.__words[0];
              }

              if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v144 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v144 = v150.__r_.__value_.__l.__size_;
              }

              v145 = std::string::append(&v159, v143, v144);
              v146 = *&v145->__r_.__value_.__l.__data_;
              v160.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
              *&v160.__r_.__value_.__l.__data_ = v146;
              v145->__r_.__value_.__l.__size_ = 0;
              v145->__r_.__value_.__r.__words[2] = 0;
              v145->__r_.__value_.__r.__words[0] = 0;
              v147 = std::string::append(&v160, "\\] ");
              v148 = *&v147->__r_.__value_.__l.__data_;
              v162 = v147->__r_.__value_.__r.__words[2];
              v161 = v148;
              v147->__r_.__value_.__l.__size_ = 0;
              v147->__r_.__value_.__r.__words[2] = 0;
              v147->__r_.__value_.__r.__words[0] = 0;
              if (v162 >= 0)
              {
                v129 = &v161;
              }

              else
              {
                v129 = v161;
              }

              if (v162 >= 0)
              {
                v130 = HIBYTE(v162);
              }

              else
              {
                v130 = *(&v161 + 1);
              }

LABEL_240:
              std::string::append(&v163, v129, v130);
              if (SHIBYTE(v162) < 0)
              {
                operator delete(v161);
                if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_242:
                  if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_243;
                  }

                  goto LABEL_254;
                }
              }

              else if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_242;
              }

              operator delete(v160.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_243:
                if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_244;
                }

                goto LABEL_255;
              }

LABEL_254:
              operator delete(v150.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_244:
                if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_245;
                }

                goto LABEL_256;
              }

LABEL_255:
              operator delete(v159.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_245:
                if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_246;
                }

                goto LABEL_257;
              }

LABEL_256:
              operator delete(v158.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_246:
                if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_247;
                }

                goto LABEL_258;
              }

LABEL_257:
              operator delete(v152.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_247:
                if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_248;
                }

                goto LABEL_259;
              }

LABEL_258:
              operator delete(v157.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_248:
                if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_249;
                }

                goto LABEL_260;
              }

LABEL_259:
              operator delete(v156.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_249:
                if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_250;
                }

LABEL_261:
                operator delete(v155.__r_.__value_.__l.__data_);
LABEL_250:
                std::string::append(&v163, "-packed 3 ");
                if (*(a2 + 8))
                {
                  operator new();
                }

                operator new();
              }

LABEL_260:
              operator delete(v154.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_250;
              }

              goto LABEL_261;
            }

LABEL_215:
            operator delete(v155.__r_.__value_.__l.__data_);
            if (*(a2 + 8))
            {
              goto LABEL_182;
            }

            goto LABEL_216;
          }

LABEL_146:
          operator delete(v153.__r_.__value_.__l.__data_);
          if (*(a2 + 8))
          {
            goto LABEL_110;
          }

          goto LABEL_147;
        }

LABEL_65:
        operator delete(v159.__r_.__value_.__l.__data_);
        if (*(a2 + 12) == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_66;
      }
    }

    else if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    operator delete(v160.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }
}

void sub_239A4CD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 97) < 0)
  {
    operator delete(*(v28 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_239A4D988()
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    JUMPOUT(0x239A4D938);
  }

  JUMPOUT(0x239A4D70CLL);
}

void sub_239A4D998()
{
  if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
  {
    JUMPOUT(0x239A4D970);
  }

  JUMPOUT(0x239A4D968);
}

uint64_t EncodeArraySoftMax(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = *(a4 + 208);
  get3DTileStrides(v7, &v56);
  get3DTileStrides(v8, &v53);
  v9 = *(*(a4 + 8) + 64);
  v10 = *MEMORY[0x277CD73C8];
  v11 = *&v7[v10];
  if (v11 > 285212703)
  {
    if (v11 <= 536870915)
    {
      if (v11 > 301989895)
      {
        if (v11 == 301989896)
        {
          v12 = 512;
          goto LABEL_44;
        }

        if (v11 == 335544328)
        {
          v12 = 544;
          goto LABEL_44;
        }
      }

      else
      {
        if (v11 == 285212704)
        {
          v12 = 416;
          goto LABEL_44;
        }

        if (v11 == 285212736)
        {
          v12 = 448;
          goto LABEL_44;
        }
      }
    }

    else if (v11 <= 536870927)
    {
      v12 = 0;
      if (v11 == 536870916)
      {
        goto LABEL_44;
      }

      if (v11 == 536870920)
      {
        v12 = 32;
        goto LABEL_44;
      }
    }

    else
    {
      switch(v11)
      {
        case 536870928:
          v12 = 64;
          goto LABEL_44;
        case 536870944:
          v12 = 96;
          goto LABEL_44;
        case 536870976:
          v12 = 128;
          goto LABEL_44;
      }
    }
  }

  else if (v11 <= 31)
  {
    if (v11 > 7)
    {
      if (v11 == 8)
      {
        v12 = 192;
        goto LABEL_44;
      }

      if (v11 == 16)
      {
        v12 = 224;
        goto LABEL_44;
      }
    }

    else
    {
      if (v11 == -1879048176)
      {
        v12 = 384;
        goto LABEL_44;
      }

      if (v11 == 4)
      {
        v12 = 160;
        goto LABEL_44;
      }
    }
  }

  else if (v11 <= 268435463)
  {
    if (v11 == 32)
    {
      v12 = 256;
      goto LABEL_44;
    }

    if (v11 == 64)
    {
      v12 = 288;
      goto LABEL_44;
    }
  }

  else
  {
    switch(v11)
    {
      case 268435464:
        v12 = 480;
        goto LABEL_44;
      case 268435472:
        v12 = 320;
        goto LABEL_44;
      case 268435488:
        v12 = 352;
        goto LABEL_44;
    }
  }

  v12 = 576;
LABEL_44:
  v13 = *&v8[v10];
  v30 = *(a4 + 192);
  if (v13 > 285212703)
  {
    if (v13 <= 536870915)
    {
      if (v13 > 301989895)
      {
        if (v13 == 301989896)
        {
          v14 = 16;
          goto LABEL_88;
        }

        if (v13 == 335544328)
        {
          v14 = 17;
          goto LABEL_88;
        }
      }

      else
      {
        if (v13 == 285212704)
        {
          v14 = 13;
          goto LABEL_88;
        }

        if (v13 == 285212736)
        {
          v14 = 14;
          goto LABEL_88;
        }
      }
    }

    else if (v13 <= 536870927)
    {
      if (v13 == 536870916)
      {
        v14 = 0;
        goto LABEL_88;
      }

      if (v13 == 536870920)
      {
        v14 = 1;
        goto LABEL_88;
      }
    }

    else
    {
      switch(v13)
      {
        case 536870928:
          v14 = 2;
          goto LABEL_88;
        case 536870944:
          v14 = 3;
          goto LABEL_88;
        case 536870976:
          v14 = 4;
          goto LABEL_88;
      }
    }
  }

  else if (v13 <= 31)
  {
    if (v13 > 7)
    {
      if (v13 == 8)
      {
        v14 = 6;
        goto LABEL_88;
      }

      if (v13 == 16)
      {
        v14 = 7;
        goto LABEL_88;
      }
    }

    else
    {
      if (v13 == -1879048176)
      {
        v14 = 12;
        goto LABEL_88;
      }

      if (v13 == 4)
      {
        v14 = 5;
        goto LABEL_88;
      }
    }
  }

  else if (v13 <= 268435463)
  {
    if (v13 == 32)
    {
      v14 = 8;
      goto LABEL_88;
    }

    if (v13 == 64)
    {
      v14 = 9;
      goto LABEL_88;
    }
  }

  else
  {
    switch(v13)
    {
      case 268435464:
        v14 = 15;
        goto LABEL_88;
      case 268435472:
        v14 = 10;
        goto LABEL_88;
      case 268435488:
        v14 = 11;
        goto LABEL_88;
    }
  }

  v14 = 18;
LABEL_88:
  *&v15 = -1;
  *(&v15 + 1) = -1;
  v51 = v15;
  v52 = v15;
  v50 = v15;
  v47 = v15;
  v48 = -1;
  v49 = v14 | v12;
  v16 = &v8[*MEMORY[0x277CD7410]];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v46 = 0;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v57;
  v37 = v54;
  v38 = 0;
  v39 = v56;
  v40 = v53;
  v41 = 0;
  v42 = v58;
  v43 = v55;
  v44 = 0;
  if ([a1 axis] > 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = [a1 axis];
  }

  v45 = v20;
  objc_opt_class();
  LOBYTE(v46) = objc_opt_isKindOfClass() & 1;
  if (v20 >= 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v20 == 1)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  if (!v20)
  {
    v17 = v18;
  }

  v23 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v25 = [ComputeState threadExecutionWidth];
  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = [ComputeState maxTotalThreadsPerThreadgroup];
  v28 = 256;
  if (v27 < 0x100)
  {
    v28 = v27;
  }

  if (v28 > 2 * v26)
  {
    v23 = v28 / v26;
  }

  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v7 offset:"buffer") atIndex:{v9, 0}];
  [a2 setBuffer:objc_msgSend(v8 offset:"buffer") atIndex:{v30, 1}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v32[0] = (v26 + v17 - 1) / v26;
  v32[1] = (v23 + v22 - 1) / v23;
  v32[2] = 1;
  v31[0] = v26;
  v31[1] = v23;
  v31[2] = 1;
  [a2 dispatchThreadgroups:v32 threadsPerThreadgroup:v31];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArraySoftMaxGradient(char *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v9 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v10 = *(a4 + 112);
  v11 = *(a4 + 208);
  get3DTileStrides(v9, &v70);
  get3DTileStrides(v10, &v67);
  get3DTileStrides(v11, &v64);
  v12 = *(*(a4 + 8) + 64);
  v13 = *(a4 + 96);
  v14 = *MEMORY[0x277CD73C8];
  v15 = *&v9[v14];
  if (v15 > 285212703)
  {
    if (v15 <= 536870915)
    {
      if (v15 > 301989895)
      {
        if (v15 == 301989896)
        {
          v16 = 512;
          v17 = *&v10[v14];
          if (v17 <= 285212703)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v15 != 335544328)
          {
            goto LABEL_81;
          }

          v16 = 544;
          v17 = *&v10[v14];
          if (v17 <= 285212703)
          {
            goto LABEL_60;
          }
        }
      }

      else if (v15 == 285212704)
      {
        v16 = 416;
        v17 = *&v10[v14];
        if (v17 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v15 != 285212736)
        {
          goto LABEL_81;
        }

        v16 = 448;
        v17 = *&v10[v14];
        if (v17 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_82;
    }

    if (v15 > 536870927)
    {
      switch(v15)
      {
        case 536870928:
          v16 = 64;
          v17 = *&v10[v14];
          if (v17 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870944:
          v16 = 96;
          v17 = *&v10[v14];
          if (v17 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870976:
          v16 = 128;
          v17 = *&v10[v14];
          if (v17 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        default:
          goto LABEL_81;
      }

      goto LABEL_82;
    }

    v16 = 0;
    if (v15 != 536870916)
    {
      if (v15 != 536870920)
      {
        goto LABEL_81;
      }

      v16 = 32;
      v17 = *&v10[v14];
      if (v17 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }

LABEL_59:
    v17 = *&v10[v14];
    if (v17 > 285212703)
    {
      goto LABEL_82;
    }

    goto LABEL_60;
  }

  if (v15 <= 31)
  {
    if (v15 > 7)
    {
      if (v15 == 8)
      {
        v16 = 192;
        v17 = *&v10[v14];
        if (v17 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v15 != 16)
        {
          goto LABEL_81;
        }

        v16 = 224;
        v17 = *&v10[v14];
        if (v17 <= 285212703)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v15 == -1879048176)
    {
      v16 = 384;
      v17 = *&v10[v14];
      if (v17 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v15 != 4)
      {
        goto LABEL_81;
      }

      v16 = 160;
      v17 = *&v10[v14];
      if (v17 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_82;
  }

  if (v15 <= 268435463)
  {
    if (v15 != 32)
    {
      if (v15 != 64)
      {
        goto LABEL_81;
      }

      v16 = 288;
      v17 = *&v10[v14];
      if (v17 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }

    v16 = 256;
    goto LABEL_59;
  }

  switch(v15)
  {
    case 268435464:
      v16 = 480;
      v17 = *&v10[v14];
      if (v17 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435472:
      v16 = 320;
      v17 = *&v10[v14];
      if (v17 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435488:
      v16 = 352;
      v17 = *&v10[v14];
      if (v17 > 285212703)
      {
        break;
      }

LABEL_60:
      if (v17 <= 31)
      {
        if (v17 > 7)
        {
          if (v17 == 8)
          {
            v18 = 6144;
            goto LABEL_104;
          }

          if (v17 == 16)
          {
            v18 = 7168;
            goto LABEL_104;
          }
        }

        else
        {
          if (v17 == -1879048176)
          {
            v18 = 12288;
            goto LABEL_104;
          }

          if (v17 == 4)
          {
            v18 = 5120;
            goto LABEL_104;
          }
        }
      }

      else if (v17 <= 268435463)
      {
        if (v17 == 32)
        {
          v18 = 0x2000;
          goto LABEL_104;
        }

        if (v17 == 64)
        {
          v18 = 9216;
          goto LABEL_104;
        }
      }

      else
      {
        switch(v17)
        {
          case 268435464:
            v18 = 15360;
            goto LABEL_104;
          case 268435472:
            v18 = 10240;
            goto LABEL_104;
          case 268435488:
            v18 = 11264;
            goto LABEL_104;
        }
      }

      goto LABEL_103;
    default:
LABEL_81:
      v16 = 576;
      v17 = *&v10[v14];
      if (v17 > 285212703)
      {
        break;
      }

      goto LABEL_60;
  }

LABEL_82:
  if (v17 <= 536870915)
  {
    if (v17 > 301989895)
    {
      if (v17 == 301989896)
      {
        v18 = 0x4000;
        goto LABEL_104;
      }

      if (v17 == 335544328)
      {
        v18 = 17408;
        goto LABEL_104;
      }
    }

    else
    {
      if (v17 == 285212704)
      {
        v18 = 13312;
        goto LABEL_104;
      }

      if (v17 == 285212736)
      {
        v18 = 14336;
        goto LABEL_104;
      }
    }
  }

  else if (v17 <= 536870927)
  {
    if (v17 == 536870916)
    {
      v18 = 0;
      goto LABEL_104;
    }

    if (v17 == 536870920)
    {
      v18 = 1024;
      goto LABEL_104;
    }
  }

  else
  {
    switch(v17)
    {
      case 536870928:
        v18 = 2048;
        goto LABEL_104;
      case 536870944:
        v18 = 3072;
        goto LABEL_104;
      case 536870976:
        v18 = 4096;
        goto LABEL_104;
    }
  }

LABEL_103:
  v18 = 18432;
LABEL_104:
  v19 = *&v11[v14];
  v40 = *(a4 + 192);
  v41 = v9;
  if (v19 > 285212703)
  {
    if (v19 <= 536870915)
    {
      if (v19 > 301989895)
      {
        if (v19 == 301989896)
        {
          v20 = v10;
          v21 = 16;
          goto LABEL_148;
        }

        if (v19 == 335544328)
        {
          v20 = v10;
          v21 = 17;
          goto LABEL_148;
        }
      }

      else
      {
        if (v19 == 285212704)
        {
          v20 = v10;
          v21 = 13;
          goto LABEL_148;
        }

        if (v19 == 285212736)
        {
          v20 = v10;
          v21 = 14;
          goto LABEL_148;
        }
      }
    }

    else if (v19 <= 536870927)
    {
      if (v19 == 536870916)
      {
        v20 = v10;
        v21 = 0;
        goto LABEL_148;
      }

      if (v19 == 536870920)
      {
        v20 = v10;
        v21 = 1;
        goto LABEL_148;
      }
    }

    else
    {
      switch(v19)
      {
        case 536870928:
          v20 = v10;
          v21 = 2;
          goto LABEL_148;
        case 536870944:
          v20 = v10;
          v21 = 3;
          goto LABEL_148;
        case 536870976:
          v20 = v10;
          v21 = 4;
          goto LABEL_148;
      }
    }
  }

  else if (v19 <= 31)
  {
    if (v19 > 7)
    {
      if (v19 == 8)
      {
        v20 = v10;
        v21 = 6;
        goto LABEL_148;
      }

      if (v19 == 16)
      {
        v20 = v10;
        v21 = 7;
        goto LABEL_148;
      }
    }

    else
    {
      if (v19 == -1879048176)
      {
        v20 = v10;
        v21 = 12;
        goto LABEL_148;
      }

      if (v19 == 4)
      {
        v20 = v10;
        v21 = 5;
        goto LABEL_148;
      }
    }
  }

  else if (v19 <= 268435463)
  {
    if (v19 == 32)
    {
      v20 = v10;
      v21 = 8;
      goto LABEL_148;
    }

    if (v19 == 64)
    {
      v20 = v10;
      v21 = 9;
      goto LABEL_148;
    }
  }

  else
  {
    switch(v19)
    {
      case 268435464:
        v20 = v10;
        v21 = 15;
        goto LABEL_148;
      case 268435472:
        v20 = v10;
        v21 = 10;
        goto LABEL_148;
      case 268435488:
        v20 = v10;
        v21 = 11;
        goto LABEL_148;
    }
  }

  v20 = v10;
  v21 = 18;
LABEL_148:
  *&v22 = -1;
  *(&v22 + 1) = -1;
  v62 = v22;
  v63 = v22;
  v23 = 0x2000000;
  if (!a5)
  {
    v23 = 0;
  }

  v61 = v22;
  v58 = v22;
  v59 = v22;
  v60 = v16 | v18 | v21 | v23;
  v24 = v11;
  v25 = &v11[*MEMORY[0x277CD7410]];
  v27 = *v25;
  v26 = *(v25 + 1);
  v28 = *(v25 + 2);
  v46 = v28;
  v47 = v71;
  v48 = v65;
  v49 = v68;
  v44 = v27;
  v45 = v26;
  v50 = v70;
  v51 = v64;
  v52 = v67;
  v53 = v72;
  v54 = v66;
  v55 = v69;
  v29 = [a1 axis];
  v56 = v29;
  objc_opt_class();
  v57 = objc_opt_isKindOfClass() & 1;
  if (v29)
  {
    if (v29 != 1)
    {
      v28 = v26;
    }
  }

  else
  {
    v27 = v26;
  }

  v30 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v32 = [ComputeState threadExecutionWidth];
  if (v32 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = [ComputeState maxTotalThreadsPerThreadgroup];
  v35 = 256;
  if (v34 < 0x100)
  {
    v35 = v34;
  }

  v36 = v35 > 2 * v33;
  v37 = v35 / v33;
  if (v36)
  {
    v30 = v37;
  }

  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v41 offset:"buffer") atIndex:{v12, 0}];
  [a2 setBuffer:objc_msgSend(v20 offset:"buffer") atIndex:{v39, 1}];
  [a2 setBuffer:objc_msgSend(v24 offset:"buffer") atIndex:{v40, 2}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v43[0] = (v33 + v27 - 1) / v33;
  v43[1] = (v30 + v28 - 1) / v30;
  v43[2] = 1;
  v42[0] = v33;
  v42[1] = v30;
  v42[2] = 1;
  [a2 dispatchThreadgroups:v43 threadsPerThreadgroup:v42];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

char *get3DTileStrides(char *result, unint64_t *a2)
{
  v2 = MEMORY[0x277CD7410];
  v3 = *MEMORY[0x277CD7410];
  v5 = *&result[v3];
  v4 = *&result[v3 + 16];
  v6 = MEMORY[0x277CD73D8];
  v7 = *MEMORY[0x277CD73D8];
  v9 = *&result[v3 + 32];
  v8 = *&result[v3 + 48];
  v10 = *&result[v7];
  v31 = v9;
  v32 = v8;
  v29 = v5;
  v30 = v4;
  if (*(&v29 + (v10 & 0xF)) == 1)
  {
    v11 = 0;
LABEL_3:
    *a2 = v11;
    v3 = *v2;
    v9 = *&result[v3 + 32];
    v8 = *&result[v3 + 48];
    v5 = *&result[v3];
    v4 = *&result[v3 + 16];
    v7 = *v6;
    goto LABEL_4;
  }

  switch(v10)
  {
    case 2:
      v11 = *&result[*MEMORY[0x277CD7400]] * *&result[*MEMORY[0x277CD73D0] + 4];
      goto LABEL_3;
    case 1:
      v11 = *&result[*MEMORY[0x277CD7400]];
      goto LABEL_3;
    case 0:
      v16 = result;
      v17 = a2;
      v18 = [result dataType];
      a2 = v17;
      v19 = v18;
      result = v16;
      v11 = v19 >> 3;
      goto LABEL_3;
  }

LABEL_4:
  v12 = result[v7 + 1];
  v25 = v5;
  v26 = v4;
  v27 = v9;
  v28 = v8;
  if (*(&v25 + (v12 & 0xF)) == 1)
  {
    a2[1] = 0;
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      a2[1] = *&result[*MEMORY[0x277CD7400]];
    }

    else if (v12 == 2)
    {
      a2[1] = *&result[*MEMORY[0x277CD7400]] * *&result[*MEMORY[0x277CD73D0] + 4];
    }
  }

  else
  {
    v20 = result;
    v21 = a2;
    v22 = [result dataType];
    a2 = v21;
    v23 = v22;
    result = v20;
    v21[1] = v23 >> 3;
    v3 = *v2;
    v7 = *v6;
  }

  v13 = &result[v3];
  v14 = result[v7 + 2];
  if (*&v13[4 * (v14 & 0xF)] == 1)
  {
    v15 = 0;
LABEL_8:
    a2[2] = v15;
    return result;
  }

  if (!result[v7 + 2])
  {
    v24 = a2;
    result = [result dataType];
    a2 = v24;
    v15 = result >> 3;
    goto LABEL_8;
  }

  if (v14 == 1)
  {
    v15 = *&result[*MEMORY[0x277CD7400]];
    goto LABEL_8;
  }

  if (v14 == 2)
  {
    v15 = *&result[*MEMORY[0x277CD7400]] * *&result[*MEMORY[0x277CD73D0] + 4];
    goto LABEL_8;
  }

  return result;
}

double MPSNDArrayLUTGEMVBehaviors::getNResPerDim(double a1, double a2, int32x4_t a3, int32x4_t a4, uint64_t a5, uint64_t a6, int a7, __int16 a8, int a9, int a10)
{
  v10 = *a6;
  v11 = HIDWORD(*a6);
  v12 = v10 * v11;
  v13 = HIDWORD(*a6) * *(a6 + 8) * v12;
  if (a10)
  {
    v11 = *a6;
  }

  v15 = v12 > 7 && v13 > 0x1FF;
  if (v15 && *(a6 + 48) >= 0x400u)
  {
    if (a9 == 4 || a9 == 2)
    {
      if (a7)
      {
        if (v11 > 3)
        {
          if (v11 <= 5)
          {
            if (v11 == 4)
            {
              v16 = xmmword_239B0A210;
            }

            else
            {
              v16 = xmmword_239B0A200;
            }

            goto LABEL_93;
          }

          if (v11 == 6)
          {
            v16 = xmmword_239B0A1F0;
            goto LABEL_93;
          }

          if (v11 == 7)
          {
            v16 = xmmword_239B0A1E0;
            goto LABEL_93;
          }

LABEL_66:
          v16 = xmmword_239B0A240;
          goto LABEL_93;
        }

        if (v11 == 1)
        {
          v16 = xmmword_239B0A1D0;
          goto LABEL_93;
        }

        if (v11 == 2)
        {
          v16 = xmmword_239B0A230;
          goto LABEL_93;
        }

        if (v11 != 3)
        {
          goto LABEL_66;
        }

        v16 = xmmword_239B0A220;
      }

      else
      {
        v16 = xmmword_239B0A1C0;
      }

LABEL_93:
      if (a10)
      {
        v16.i64[0] = vzip1q_s32(vextq_s8(v16, v16, 4uLL), v16).u64[0];
      }

      v26 = vceqz_s32(vzip1_s32(*(a6 + 32), *(a6 + 16)));
      if ((v26.i8[4] & 1) == 0)
      {
        v27 = *(a6 + 56);
        if (v27 < v16.i32[1])
        {
          v16.i64[0] = __PAIR64__(v27, v16.u32[0]);
        }
      }

      if ((v26.i8[0] & 1) == 0)
      {
        v28 = *(a6 + 68);
        if (v28 < v16.i32[0])
        {
          v16.i64[0] = __PAIR64__(v16.u32[1], v28);
        }
      }

      return *v16.i64;
    }

    if (!a7)
    {
      v16 = xmmword_239B0A1C0;
      if ((a8 & 0xFFE0) == 0)
      {
        if (v11 <= 3)
        {
          switch(v11)
          {
            case 1:
              goto LABEL_93;
            case 2:
              v16 = xmmword_239B0A2A0;
              goto LABEL_93;
            case 3:
              v16 = xmmword_239B0A290;
              goto LABEL_93;
          }
        }

        else
        {
          if (v11 <= 5)
          {
            if (v11 == 4)
            {
              v16 = xmmword_239B0A280;
            }

            else
            {
              v16 = xmmword_239B0A270;
            }

            goto LABEL_93;
          }

          if (v11 == 6)
          {
            v16 = xmmword_239B0A260;
            goto LABEL_93;
          }

          if (v11 == 7)
          {
            v16 = xmmword_239B0A250;
            goto LABEL_93;
          }
        }

        v16 = xmmword_239B0A2B0;
        goto LABEL_93;
      }

      goto LABEL_93;
    }

    if ((a8 & 0xFFE0) != 0)
    {
      if (v11 >= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v11;
      }

      v20.i64[0] = 0x100000001;
      v20.i64[1] = 0x100000001;
      v21.i64[1] = 0x100000001;
      v21.i64[0] = v19 | 0x100000000;
      a3.i32[0] = 2;
      a4.i32[0] = v11;
      v16 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a4, a3), 0), v20, v21);
      goto LABEL_93;
    }

    if (v11 <= 3)
    {
      if (v11 == 1)
      {
        v16 = xmmword_239B0A2C0;
        goto LABEL_93;
      }

      if (v11 == 2)
      {
        v16 = xmmword_239B0A310;
        goto LABEL_93;
      }

      if (v11 != 3)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v11 <= 5)
      {
        if (v11 == 4)
        {
          v16 = xmmword_239B0A300;
        }

        else
        {
          v16 = xmmword_239B0A2F0;
        }

        goto LABEL_93;
      }

      if (v11 != 6)
      {
        if (v11 == 7)
        {
          v16 = xmmword_239B0A2D0;
          goto LABEL_93;
        }

LABEL_87:
        v16 = xmmword_239B0A320;
        goto LABEL_93;
      }
    }

    v16 = xmmword_239B0A2E0;
    goto LABEL_93;
  }

  if (v15)
  {
    v17 = v11 >= 4 && v10 >= 4;
    if (!v17 || (v16.i64[0] = 0x400000004, v13 <= 0x3FF))
    {
      if (v10 < 8)
      {
        if (v10 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        v16.i64[0] = v22 | 0x800000000;
      }

      else
      {
        if (v11 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        v16.i32[0] = 8;
        v16.i32[1] = v18;
      }
    }
  }

  else
  {
    v16.i64[0] = 0x100000001;
    if (v12 >= 8 && v13 >= 0x100)
    {
      if (v10 < 2 || (v16.i64[0] = 0x200000002, v11 <= 1))
      {
        if (v10 <= 3)
        {
          v16.i32[0] = 1;
          a3.i32[0] = v11;
          v23 = vdup_lane_s32(vcgt_u32(*a3.i8, *v16.i8), 0);
          v24 = vsub_s32(vand_s8(v23, 0x200000001), vmvn_s8(v23));
          v25 = vbsl_s8(vdup_lane_s32(vcgt_u32(*a6, *v16.i8), 0), 0x100000002, v24);
          v24.i32[0] = 3;
          *v16.i8 = vbsl_s8(vdup_lane_s32(vcgt_u32(*a3.i8, v24), 0), 0x400000001, v25);
        }

        else
        {
          v16.i64[0] = 0x100000004;
        }
      }
    }
  }

  return *v16.i64;
}

uint64_t EncodeArrayLUTDequant(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    operator new();
  }

  v7 = MEMORY[0x277CD7370];
  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *v9;
  v13 = *(*v9 + 8);
  v11 = *v13;
  v12 = v13[1];
  v14 = v12 - *v13;
  if (v12 == *v13 || (v15 = **(v10 + 24), *(*(v10 + 24) + 8) == v15) || (v197 = a1, v14 <= 8))
  {
LABEL_195:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v207 = v10;
  v16 = *v15;
  v17 = *v11;
  v18 = v11[1];
  DimensionSize = BaseTensor::GetDimensionSize(*v15);
  v214 = BaseTensor::GetDimensionSize(v16);
  v201 = BaseTensor::GetDimensionSize(v16);
  v199 = BaseTensor::GetDimensionSize(v16);
  v19 = BaseTensor::GetDimensionSize(v17);
  LODWORD(v16) = BaseTensor::GetDimensionSize(v17);
  v20 = BaseTensor::GetDimensionSize(v17);
  v212 = BaseTensor::GetDimensionSize(v17);
  *&v21 = __PAIR64__(v16, v19);
  v216 = v21;
  LODWORD(v16) = BaseTensor::GetDimensionSize(v18);
  v211 = BaseTensor::GetDimensionSize(v18);
  v193 = BaseTensor::GetDimensionSize(v18);
  v191 = BaseTensor::GetDimensionSize(v18);
  v22 = 31 - __clz(v16);
  v210 = v16;
  if (v16)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [*(v4 + 232) graph];
  v25 = *(v24 + 64);
  v26 = *v25;
  v27 = v25[1];
  if (*v25 == v27)
  {
    v33 = 0;
  }

  else
  {
    v28 = v24;
    v29 = v4;
    v30 = 0;
    v31 = -1;
    do
    {
      v32 = *v26++;
      if (v32 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v28) + 32))
      {
        v31 = v30;
      }

      ++v30;
    }

    while (v26 != v27);
    if (v31 == -1)
    {
      v33 = 0;
    }

    else
    {
      v33 = v31;
    }

    v4 = v29;
    v7 = MEMORY[0x277CD7370];
  }

  v34 = v216;
  DWORD2(v34) = v20;
  v217 = v34;
  v35 = [*(v4 + 16) objectAtIndexedSubscript:v33];
  v36 = v35;
  v37 = MEMORY[0x277CD73D8];
  if (!v35)
  {
    v40 = 0;
    v41 = v217;
    HIDWORD(v41) = v212;
    v190 = v33;
    if (v23 == 4)
    {
      goto LABEL_27;
    }

LABEL_32:
    if (v23 != 2)
    {
      v196 = 0;
      v213 = 0;
      goto LABEL_48;
    }

    if ((*(v35 + *MEMORY[0x277CD7408]) & 3) == 0 && (*(v35 + *MEMORY[0x277CD7418]) & 3) == 0 && (*(v35 + *MEMORY[0x277CD7410]) & 3) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  v38 = (v35 + *MEMORY[0x277CD73D8]);
  v39 = v38[1] == 0;
  if (!v38[2])
  {
    v39 = 2;
  }

  if (v38[3])
  {
    v40 = v39;
  }

  else
  {
    v40 = 3;
  }

  v41 = v217;
  HIDWORD(v41) = v212;
  v190 = v33;
  if (v23 != 4)
  {
    goto LABEL_32;
  }

LABEL_27:
  if ((*(v35 + *MEMORY[0x277CD7408]) & 1) == 0 && (*(v35 + *MEMORY[0x277CD7418]) & 1) == 0 && (*(v35 + *MEMORY[0x277CD7410]) & 1) == 0)
  {
LABEL_30:
    v213 = 0;
    goto LABEL_37;
  }

LABEL_36:
  v213 = 1;
LABEL_37:
  v42 = v23 == 2 && v40 == 0;
  v43 = v23 == 4 && v40 == 0;
  LOBYTE(v196) = v43;
  BYTE4(v196) = v42;
  if (*(v35 + *MEMORY[0x277CD73C8]) == 8)
  {
    if (v23 == 4)
    {
      v239 = v41;
      *(&v239 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) = 2 * *(&v239 | (4 * v40));
      v41 = v239;
    }

    else
    {
      v240 = v41;
      *(&v240 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) = 4 * *(&v240 | (4 * v40));
      v41 = v240;
    }
  }

LABEL_48:
  v195 = v40;
  v218 = v41;
  if ((*(v197 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v23 > 8 || ((1 << v23) & 0x114) == 0)
    {
      v178 = MTLReportFailureTypeEnabled();
      v41 = v218;
      if (v178)
      {
        v182 = v197;
        MTLReportFailure();
        v41 = v218;
      }
    }

    v44 = v41;
    if (DimensionSize != v41 && v41 != 1)
    {
      v179 = MTLReportFailureTypeEnabled();
      v41 = v218;
      if (v179)
      {
        v188 = 0;
        v189 = v44;
        v184 = 0;
        v186 = DimensionSize;
        v182 = v197;
        MTLReportFailure();
        v41 = v218;
      }
    }

    v45 = DWORD1(v41);
    if (v214 != DWORD1(v41) && DWORD1(v41) != 1)
    {
      v180 = MTLReportFailureTypeEnabled();
      *(&v41 + 1) = *(&v218 + 1);
      if (v180)
      {
        v188 = 1;
        v189 = v45;
        v184 = 1;
        v186 = v214;
        v182 = v197;
        MTLReportFailure();
        *(&v41 + 1) = *(&v218 + 1);
      }
    }

    v46 = DWORD2(v41);
    if (v201 != DWORD2(v41) && DWORD2(v41) != 1)
    {
      v181 = MTLReportFailureTypeEnabled();
      HIDWORD(v41) = HIDWORD(v218);
      if (v181)
      {
        v188 = 2;
        v189 = v46;
        v184 = 2;
        v186 = v201;
        v182 = v197;
        MTLReportFailure();
        HIDWORD(v41) = HIDWORD(v218);
      }
    }

    v47 = HIDWORD(v41);
    if (v199 != HIDWORD(v41) && HIDWORD(v41) != 1 && MTLReportFailureTypeEnabled())
    {
      v188 = 3;
      v189 = v47;
      v184 = 3;
      v186 = v199;
      v182 = v197;
      MTLReportFailure();
    }
  }

  v198 = a2;
  BaseTensor::GetAccessPattern();
  v48 = **(v207 + 8);
  if (*(*(v207 + 8) + 8) == v48)
  {
    goto LABEL_195;
  }

  *&v49 = __PAIR64__(v214, DimensionSize);
  *&v50 = __PAIR64__(v211, v210);
  *(&v49 + 1) = __PAIR64__(v199, v201);
  *(&v50 + 1) = __PAIR64__(v191, v193);
  v203 = v49;
  v208 = v50;
  v192 = *(*v48 + 8);
  v51 = *(v197 + *v7);
  v271 = 0;
  v52 = *(v51 + 32);
  *v53.i64 = (*(*v52 + 24))(v52, &v271);
  v54 = v53.i8[0];
  v238 = v203;
  v55 = *(&v238 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[0] & 3)));
  v237 = v218;
  v56 = *(&v237 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[0] & 3)));
  v236 = v208;
  v57 = *(&v237 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[4] & 3)));
  v58 = *(&v236 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[4] & 3)));
  v59 = v53.i32[1] == 0;
  v61 = v53.i32[1] == 1 || v53.i32[0] != 1;
  v62 = *(&v237 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[8] & 3)));
  v63 = *(&v236 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[8] & 3)));
  if (!v53.i32[2])
  {
    v59 = 2;
  }

  if (v53.i32[2] == 1)
  {
    v61 = 2;
  }

  v194 = v53;
  v64 = v53.i32[3];
  v204 = v55;
  LODWORD(v65) = v55;
  v209 = *(&v238 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[4] & 3)));
  DWORD1(v65) = v209;
  v202 = *(&v238 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[8] & 3)));
  DWORD2(v65) = v202;
  v200 = *(&v238 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[12] & 3)));
  HIDWORD(v65) = v200;
  v53.i32[0] = *(&v236 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[0] & 3)));
  v53.i32[1] = *(&v236 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[4] & 3)));
  v53.i32[2] = *(&v236 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[8] & 3)));
  v66 = *(&v236 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53.i8[12] & 3)));
  HIDWORD(v67) = v66;
  if (v64)
  {
    v68 = v59;
  }

  else
  {
    v68 = 3;
  }

  v69 = v37;
  if (v64 == 1)
  {
    v70 = 3;
  }

  else
  {
    v70 = v61;
  }

  v260 = v218;
  v219 = v65;
  v258 = v65;
  v259 = v67;
  v264 = 0x100000001;
  __asm { FMOV            V0.2S, #1.0 }

  v269 = _D0;
  v270 = 1065353216;
  v75 = vcvtpd_u64_f64(v57 / v63);
  v261 = vcvtpd_u64_f64(v56 / v58);
  v262 = v75;
  v76 = vcvtpd_u64_f64(v62 / v66);
  v265 = 1;
  v263 = v76;
  v77 = 0.0;
  v78 = 1.0 / v261;
  if (v56 == 1)
  {
    v78 = 0.0;
  }

  v79 = 1.0 / v75;
  if (v57 == 1)
  {
    v79 = 0.0;
  }

  v266 = v78;
  v267 = v79;
  if (v62 != 1)
  {
    v80 = 1.0 / v76;
    v77 = v80;
  }

  v268 = v77;
  if (v36)
  {
    v81 = &v36[*MEMORY[0x277CD7410]];
    v82 = *v81;
    v83 = *(v81 + 1);
    v84 = *(v81 + 2);
    v85 = *(v81 + 3);
    v86 = *&v36[*v69];
    v235[3] = v85;
    v235[2] = v84;
    v235[1] = v83;
    v235[0] = v82;
    v87 = *MEMORY[0x277CD7428];
    if (*(v235 + (v86 & 0xF)) == 1)
    {
      v88 = 0;
    }

    else
    {
      v88 = *&v36[8 * (v86 & 0xF) + v87];
    }

    v234[0] = v82;
    v234[1] = v83;
    v234[2] = v84;
    v234[3] = v85;
    v89 = BYTE1(v86) & 0xF;
    v90 = *(v234 + v89);
    v91 = &v36[v87];
    v92 = *v91;
    v93 = *(v91 + 1);
    v94 = *(v91 + 2);
    v95 = *(v91 + 3);
    v96 = *(v91 + 4);
    v97 = *(v91 + 5);
    v98 = *(v91 + 6);
    v99 = *(v91 + 7);
    v231[7] = v99;
    v231[6] = v98;
    v231[4] = v96;
    v231[5] = v97;
    v231[2] = v94;
    v231[3] = v95;
    v231[0] = v92;
    v231[1] = v93;
    v100 = *(v231 + v89);
    v233[0] = v82;
    v233[1] = v83;
    v233[2] = v84;
    v233[3] = v85;
    v101 = BYTE2(v86) & 0xF;
    v102 = *(v233 + v101);
    if (v90 == 1)
    {
      v103 = 0;
    }

    else
    {
      v103 = v100;
    }

    v230[6] = v98;
    v230[7] = v99;
    v230[4] = v96;
    v230[5] = v97;
    v230[2] = v94;
    v230[3] = v95;
    v230[0] = v92;
    v230[1] = v93;
    v104 = *(v230 + v101);
    if (v102 == 1)
    {
      v105 = 0;
    }

    else
    {
      v105 = *(v230 + v101);
    }

    v232[0] = v82;
    v232[1] = v83;
    v232[2] = v84;
    v232[3] = v85;
    v106 = BYTE3(v86) & 0xF;
    v107 = *(v232 + v106);
    v229[6] = v98;
    v229[7] = v99;
    v229[4] = v96;
    v229[5] = v97;
    v229[2] = v94;
    v229[3] = v95;
    v229[0] = v92;
    v229[1] = v93;
    v108 = *(v229 + v106);
    if (v107 == 1)
    {
      v109 = 0;
    }

    else
    {
      v109 = *(v229 + v106);
    }

    v110 = &v36[*MEMORY[0x277CD7418]];
    v111 = *v110;
    v112 = *(v110 + 1);
    v113 = *(v110 + 2);
    v114 = *(v110 + 3);
    v228[6] = v98;
    v228[7] = v99;
    v228[4] = v96;
    v228[5] = v97;
    v228[2] = v94;
    v228[3] = v95;
    v228[0] = v92;
    v228[1] = v93;
    v115 = v86 & 0xF;
    v116 = *(v228 + v115);
    v227[2] = v113;
    v227[3] = v114;
    v227[0] = v111;
    v227[1] = v112;
    v117 = v116 * *(v227 + v115);
    v226[2] = v113;
    v226[3] = v114;
    v226[0] = v111;
    v226[1] = v112;
    v118 = v117 + v100 * *(v226 + v89);
    v225[2] = v113;
    v225[3] = v114;
    v225[0] = v111;
    v225[1] = v112;
    v119 = v118 + v104 * *(v225 + v101);
    v224[2] = v113;
    v224[3] = v114;
    v224[0] = v111;
    v224[1] = v112;
    v120 = v119 + v108 * *(v224 + v106);
    v255 = v103;
    v256 = v105;
    v257 = v109;
    v254 = v88;
    v253 = v120;
    v250 = v103;
    v251 = v105;
    v252 = v109;
    v249 = v88;
    v248 = v120;
  }

  (*(*v52 + 32))(v52, &v258, 1, v192, v23, 1);
  if (v214 >= DimensionSize)
  {
    v125 = DimensionSize;
  }

  else
  {
    v125 = v214;
  }

  v130.i64[1] = 0x100000001;
  v126.i32[0] = 1;
  v126.i32[1] = v121;
  v126.i64[1] = v122 | 0x100000000;
  v127 = v260;
  v123.i32[0] = 5;
  v124.i32[0] = v260;
  v128 = vdupq_lane_s32(*&vcgtq_u32(v123, v124), 0);
  v124.i32[0] = 1;
  v124.i32[1] = v121;
  v124.i32[2] = 0;
  v129 = vbslq_s8(v128, v124, v126);
  v130.i64[0] = v129.i64[0];
  if ((v196 & (v129.i32[2] == 0)) != 0)
  {
    v131 = -1;
  }

  else
  {
    v131 = 0;
  }

  v132 = vbslq_s8(vdupq_n_s32(v131), v130, v129);
  v133.i64[1] = 0x200000002;
  v133.i64[0] = v132.i64[0];
  if ((BYTE4(v196) & (v132.i32[2] < 2)) != 0)
  {
    v134 = -1;
  }

  else
  {
    v134 = 0;
  }

  v135 = vbslq_s8(vdupq_n_s32(v134), v133, v132);
  v136 = v135;
  v136.i32[3] = v132.i32[3];
  if (v23 == 4 && v195 == 1)
  {
    v137 = v194;
    v138 = v219;
    if ((v135.i8[4] & 1) == 0)
    {
      goto LABEL_115;
    }

    v139 = v135.i32[1] + 1;
  }

  else
  {
    v137 = v194;
    v138 = v219;
    if (v23 != 2 || v195 != 1 || (v135.i8[4] & 3) == 0)
    {
      goto LABEL_115;
    }

    v139 = (v135.i32[1] + 3) & 0xFFFFFFFC;
  }

  v132.i64[0] = __PAIR64__(v139, v135.u32[0]);
  v132.i64[1] = __PAIR64__(v132.u32[3], v135.u32[2]);
  v136 = v132;
LABEL_115:
  v223 = v138;
  *(&v223 & 0xFFFFFFFFFFFFFFF3 | (4 * (v68 & 3))) = 1;
  if (v136.i32[1])
  {
    v222 = v223;
    v140 = (*(&v222 | (4 * v70)) + v136.u32[1] - 1) / v136.u32[1];
  }

  else
  {
    LODWORD(v140) = 0;
  }

  v221 = v223;
  *(&v221 & 0xFFFFFFFFFFFFFFF3 | (4 * (v70 & 3))) = v140;
  if (v211 <= 1)
  {
    v141 = v23;
    if (DWORD2(v259) < 2)
    {
      v142 = 0x10000000;
      v220 = 1;
    }

    else
    {
      v220 = v262 % v136.i32[1] == 0;
      v142 = v220 << 28;
    }
  }

  else
  {
    v141 = v23;
    v220 = 0;
    v142 = 0;
  }

  v143 = v192 >> 3;
  v145 = v143 < 2 && v125 > 4;
  v147 = v143 > 1 && v125 > 1 || v145;
  if (v127 < 1024 << v136.i8[8])
  {
    v148 = 1;
  }

  else
  {
    v148 = v147;
  }

  v149 = v127 & ~(-1 << v136.i8[8]);
  if (v204 % v136.i32[0] || (v150 = v209 % v136.i32[1]) != 0)
  {
    v206 = 0;
    v150 = 0x800000;
  }

  else
  {
    v206 = 1;
  }

  v215 = v221;
  v151 = ((v136.i16[0] << 11) + 14336) & 0x3800;
  v152 = ((v136.i32[1] << 14) + 114688) & 0x1C000;
  v153 = vandq_s8(vshlq_u32(vtrn2q_s32(v137, vuzp1q_s32(v137, v136)), xmmword_239B0A330), xmmword_239B0A340);
  v154 = (v149 != 0) << 24;
  if (v148)
  {
    v155 = 0;
  }

  else
  {
    v155 = 0x2000000;
  }

  if (v141 == 4)
  {
    v156 = 1140850688;
  }

  else
  {
    v156 = 0x4000000;
  }

  v157 = vorr_s8(*v153.i8, *&vextq_s8(v153, v153, 8uLL));
  v158 = -1;
  v242[4] = -1;
  v242[3] = -1;
  v243 = 0u;
  v244 = 0u;
  v242[5] = v157.i32[0] | v157.i32[1] | (v195 << 19) | v151 & 0xFFFFFFFC | v54 & 3 | v152 | v156 | ((v202 > 1) << 9) | ((v209 > 1) << 8) | v154 | ((v200 > 1) << 10) | v155 | v150 | v142;
  v245 = 0;
  v246 = [*(v4 + 16) count] | ((*(v4 + 112) != 0) << 8) | 0x10000;
  v247 = 0;
  v185 = *(v197 + *MEMORY[0x277CD7360]);
  v187 = *(v197 + *MEMORY[0x277CD7368]);
  v183 = *(v4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    v160 = PipelineStateForMPSKey;
    v161 = v4;
    [a2 setComputePipelineState:{PipelineStateForMPSKey, v183, v185, v187, 0, 0}];
    MPSLibrary::ReleaseMPSKey();
    v162 = [v160 threadExecutionWidth];
    if (v162 <= 1)
    {
      v163 = 1;
    }

    else
    {
      v163 = v162;
    }

    v164 = [v160 maxTotalThreadsPerThreadgroup];
    v165 = 256;
    if (v164 < 0x100)
    {
      v165 = v164;
    }

    if (v165 <= 2 * v163)
    {
      v167 = v215;
      if (v213)
      {
        v166 = 1;
        v168 = (v163 + v204 - 1) / v163;
        goto LABEL_159;
      }

      v166 = 1;
    }

    else
    {
      v166 = v165 / v163;
      v167 = v215;
      if (v213)
      {
        v168 = (v163 + v204 - 1) / v163;
        if (v163 > v165)
        {
          v169 = 0;
          v166 = 0;
          v170 = v202;
          v171 = v200;
LABEL_179:
          v175 = v170 * v171;
          objc_msgSend_setBytes_length_atIndex_(v198, *&v167);
          [v198 setBuffer:objc_msgSend(v36 offset:"buffer") atIndex:{*(*(v161 + 8) + 80 * v190 + 64), 27}];
          if (v220)
          {
            v176 = (4 * v210 + 15) & 0xFFFFFFFFFFFFFFF0;
          }

          else
          {
            v176 = 0;
          }

          [v198 setThreadgroupMemoryLength:v176 atIndex:0];
          MPSSetNDArraysOnComputeEncoder(v198, v161, 4, 1, v213);
          objc_msgSend_setBytes_length_atIndex_(v198);
          v242[0] = v168;
          v242[1] = v169;
          v242[2] = v175;
          v241[0] = v163;
          v241[1] = v166;
          v241[2] = 1;
          [v198 dispatchThreadgroups:v242 threadsPerThreadgroup:v241];
          MPSLibrary::ReleaseComputeState();
          return 0;
        }

LABEL_159:
        v171 = v200;
        v169 = (v166 + v209 - 1) / v166;
        v170 = v202;
        goto LABEL_179;
      }
    }

    if (v148)
    {
      v172 = SDWORD1(v167);
      if (v166 >= SDWORD1(v167))
      {
        v173 = SDWORD1(v167);
      }

      else
      {
        v173 = v166;
      }

      do
      {
        v166 = v173;
        if (v173 < 2)
        {
          break;
        }

        v173 *= 2;
      }

      while (v166 * v163 < v163);
      if (v206 && SDWORD1(v167) % v166)
      {
        v166 = 1;
      }

      v174 = v220;
      if (DWORD2(v259) <= 1)
      {
        v174 = 0;
      }

      if (v174 != 1)
      {
        v168 = v167;
        if (!v166)
        {
          v169 = 0;
LABEL_178:
          v170 = DWORD2(v167);
          v171 = HIDWORD(v167);
          goto LABEL_179;
        }

LABEL_177:
        v169 = (v172 + v166 - 1) / v166;
        goto LABEL_178;
      }
    }

    else
    {
      v163 *= 8;
      v172 = SDWORD1(v167);
    }

    v168 = v167;
    v166 = 1;
    goto LABEL_177;
  }

  return v158;
}

void sub_239A51490(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
    if ((*(v1 - 97) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 - 97) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 - 120));
  _Unwind_Resume(a1);
}

uint64_t EncodeArrayVectorLUTDequant(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    operator new();
  }

  v7 = *(a1 + 144);
  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *v9;
  v12 = *(*v9 + 8);
  v11 = *v12;
  v13 = v12[1] - *v12;
  if (!v13 || (v15 = *(v10 + 24), v14 = *v15, *(v15 + 8) == *v15) || (v188 = a1, v179 = a2, v13 <= 8))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = *v14;
  v18 = *v11;
  v17 = v11[1];
  DimensionSize = BaseTensor::GetDimensionSize(*v14);
  v187 = BaseTensor::GetDimensionSize(v16);
  v185 = BaseTensor::GetDimensionSize(v16);
  v186 = BaseTensor::GetDimensionSize(v16);
  v174 = DimensionSize;
  v196 = DimensionSize;
  LODWORD(v16) = BaseTensor::GetDimensionSize(v18);
  LODWORD(DimensionSize) = BaseTensor::GetDimensionSize(v18);
  v20 = BaseTensor::GetDimensionSize(v18);
  v21 = BaseTensor::GetDimensionSize(v18);
  *&v22 = __PAIR64__(DimensionSize, v16);
  v200 = v22;
  v175 = v7;
  if (v7 >= 4)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  v184 = v23;
  v24 = BaseTensor::GetDimensionSize(v17);
  v25 = BaseTensor::GetDimensionSize(v17);
  v26 = BaseTensor::GetDimensionSize(v17);
  v180 = BaseTensor::GetDimensionSize(v17);
  v176 = v24;
  v192 = v24;
  v27 = 31 - __clz(v25);
  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = [*(v4 + 232) graph];
  v30 = *(v29 + 64);
  v31 = *v30;
  v32 = v30[1];
  v190 = v4;
  v189 = v28;
  if (*v30 == v32)
  {
    v37 = 0;
  }

  else
  {
    v33 = v29;
    v34 = 0;
    v35 = -1;
    do
    {
      v36 = *v31++;
      if (v36 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v33) + 32))
      {
        v35 = v34;
      }

      ++v34;
    }

    while (v31 != v32);
    if (v35 == -1)
    {
      v37 = 0;
    }

    else
    {
      v37 = v35;
    }

    v4 = v190;
    v28 = v189;
  }

  v197 = __PAIR64__(v187, v196);
  v193 = __PAIR64__(v25, v192);
  v38 = v200;
  DWORD2(v38) = v20;
  v201 = v38;
  v39 = [*(v4 + 16) objectAtIndexedSubscript:v37];
  v40 = v39;
  v41 = MEMORY[0x277CD73D8];
  v42 = v188;
  if (v39)
  {
    v43 = (v39 + *MEMORY[0x277CD73D8]);
    v44 = v43[1] == 0;
    if (!v43[2])
    {
      v44 = 2;
    }

    if (!v43[3])
    {
      v44 = 3;
    }
  }

  else
  {
    v44 = 0;
  }

  *&v46 = v193;
  v45.n128_u64[0] = v197;
  v45.n128_u32[2] = v185;
  DWORD2(v46) = v26;
  v47 = v201;
  HIDWORD(v47) = v21;
  v183 = v44;
  if (v28 == 4)
  {
    v48 = MEMORY[0x277CD7370];
    v49 = v184;
    v191 = (*(v39 + *MEMORY[0x277CD7408]) & 1) != 0 || (*(v39 + *MEMORY[0x277CD7418]) & 1) != 0 || (*(v39 + *MEMORY[0x277CD7410]) & 1) != 0;
    v181 = v44 == 0;
    if (*(v39 + *MEMORY[0x277CD73C8]) == 8)
    {
      v182 = 0;
      v222 = v47;
      *(&v222 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3))) = 2 * *(&v222 | (4 * v44));
      v50 = 1;
      v47 = v222;
      goto LABEL_49;
    }

    v182 = 0;
  }

  else
  {
    v48 = MEMORY[0x277CD7370];
    v49 = v184;
    if (v28 != 2)
    {
      v181 = 0;
      v182 = 0;
      v191 = 0;
      v50 = v39 != 0;
      goto LABEL_49;
    }

    v191 = (*(v39 + *MEMORY[0x277CD7408]) & 3) != 0 || (*(v39 + *MEMORY[0x277CD7418]) & 3) != 0 || (*(v39 + *MEMORY[0x277CD7410]) & 3) != 0;
    v182 = v44 == 0;
    if (*(v39 + *MEMORY[0x277CD73C8]) == 8)
    {
      v181 = 0;
      v223 = v47;
      *(&v223 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3))) = 4 * *(&v223 | (4 * v44));
      v50 = 1;
      v47 = v223;
      goto LABEL_49;
    }

    v181 = 0;
  }

  v50 = 1;
LABEL_49:
  v45.n128_u32[3] = v186;
  HIDWORD(v46) = v180;
  v194 = v46;
  v198 = v45;
  v202 = v47;
  if ((*(v188 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v28 > 8 || ((1 << v28) & 0x114) == 0)
    {
      v160 = MTLReportFailureTypeEnabled();
      v45 = v198;
      v47 = v202;
      if (v160)
      {
        v166 = v188;
        MTLReportFailure();
        v45 = v198;
        v47 = v202;
      }
    }

    v51 = v41;
    if (v175 >= 4)
    {
      v161 = MTLReportFailureTypeEnabled();
      v45 = v198;
      v47 = v202;
      if (v161)
      {
        v166 = v188;
        MTLReportFailure();
        v45 = v198;
        v47 = v202;
      }
    }

    if (!v49)
    {
      goto LABEL_59;
    }

    v52 = v47;
    if (v174 != v47 && v47 != 1)
    {
      v165 = MTLReportFailureTypeEnabled();
      v45 = v198;
      v47 = v202;
      if (v165)
      {
        v172 = 0;
        v173 = v52;
        v168 = 0;
        v170 = v174;
        v166 = v188;
        MTLReportFailure();
        v45 = v198;
        v47 = v202;
      }
    }

    if (v49 != 1)
    {
LABEL_59:
      v53 = DWORD1(v47);
      if (v187 != DWORD1(v47) && DWORD1(v47) != 1)
      {
        v162 = MTLReportFailureTypeEnabled();
        v45 = v198;
        v47 = v202;
        if (v162)
        {
          v172 = 1;
          v173 = v53;
          v168 = 1;
          v170 = v187;
          v166 = v188;
          MTLReportFailure();
          v45 = v198;
          v47 = v202;
        }
      }

      if (v49 == 2)
      {
        goto LABEL_63;
      }
    }

    v54 = DWORD2(v47);
    if (v185 != DWORD2(v47) && DWORD2(v47) != 1)
    {
      v164 = MTLReportFailureTypeEnabled();
      v45 = v198;
      v47 = v202;
      if (v164)
      {
        v172 = 2;
        v173 = v54;
        v168 = 2;
        v170 = v185;
        v166 = v188;
        MTLReportFailure();
        v45 = v198;
        v47 = v202;
      }
    }

    if (v49 != 3)
    {
LABEL_63:
      v55 = HIDWORD(v47);
      if (v186 != HIDWORD(v47) && HIDWORD(v47) != 1)
      {
        v163 = MTLReportFailureTypeEnabled();
        v45 = v198;
        v47 = v202;
        if (v163)
        {
          v172 = 3;
          v173 = v55;
          v168 = 3;
          v170 = v186;
          v166 = v188;
          MTLReportFailure();
          v45 = v198;
          v47 = v202;
        }
      }
    }

    v221 = v47;
    v56 = *(&v221 & 0xFFFFFFFFFFFFFFF3 | (4 * (v49 & 3))) * v176;
    v220 = v45;
    v41 = v51;
    if (v56 != *(&v220 & 0xFFFFFFFFFFFFFFF3 | (4 * (v49 & 3))) && MTLReportFailureTypeEnabled())
    {
      v166 = v188;
      MTLReportFailure();
    }
  }

  BaseTensor::GetAccessPattern();
  v58.i64[0] = 0xFF000000FFLL;
  v58.i64[1] = 0xFF000000FFLL;
  v59 = vandq_s8(vmovl_u16(vzip1_s8(v57, v57)), v58);
  v60 = vandq_s8(vmovl_u16(vzip1_s8(*(*(v4 + 208) + *v41), v59.n128_u64[0])), v58);
  v61 = *(v188 + *v48);
  v254 = 0;
  *&v62 = (*(**(v61 + 32) + 24))(*(v61 + 32), &v254, v59, v60, v198);
  v63 = BYTE4(v62);
  v64 = BYTE8(v62);
  v65 = HIDWORD(v62);
  v219 = v202;
  v66 = (&v218 & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3)));
  v67 = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3)));
  v218 = v194;
  v68 = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE4(v62) & 3)));
  _ZF = DWORD1(v62) != 1 && v62 == 1;
  v70 = !_ZF;
  v71 = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE8(v62) & 3)));
  if (DWORD2(v62))
  {
    v72 = DWORD1(v62) == 0;
  }

  else
  {
    v72 = 2;
  }

  if (DWORD2(v62) == 1)
  {
    LODWORD(v73) = 2;
  }

  else
  {
    LODWORD(v73) = v70;
  }

  LODWORD(v62) = v67;
  DWORD1(v62) = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE4(v62) & 3)));
  DWORD2(v62) = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE8(v62) & 3)));
  v74 = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE12(v62) & 3)));
  HIDWORD(v62) = v74;
  LODWORD(v76) = *v66;
  DWORD1(v76) = *(&v218 & 0xFFFFFFFFFFFFFFF3 | (4 * (v63 & 3)));
  v77 = *(&v218 & 0xFFFFFFFFFFFFFFF3 | (4 * (v65 & 3)));
  *(&v76 + 1) = __PAIR64__(v77, *(&v218 & 0xFFFFFFFFFFFFFFF3 | (4 * (v64 & 3))));
  v243 = v202;
  v241 = v62;
  v242 = v76;
  v247 = 0x100000001;
  v246 = 1;
  v248 = 1;
  __asm { FMOV            V2.2S, #1.0 }

  v82 = vcvtpd_u64_f64(v67 / SDWORD2(v76));
  v252 = _D2;
  v83 = vcvtpd_u64_f64(v68 / v77);
  if (_ZF)
  {
    v84 = 3;
  }

  else
  {
    v84 = v72;
  }

  if (v65 == 1)
  {
    v73 = 3;
  }

  else
  {
    v73 = v73;
  }

  v251 = 1065353216;
  v253 = 1065353216;
  v244 = v82;
  v245 = v83;
  if (v67 == 1)
  {
    v249 = 0.0;
    if (v68 == 1)
    {
      goto LABEL_86;
    }

LABEL_90:
    v95 = 1.0 / v83;
    v250 = v95;
    v177 = v40;
    v178 = v37;
    v199 = v67;
    if (v50)
    {
      goto LABEL_87;
    }

LABEL_91:
    v96 = v181;
    v97 = v182;
    goto LABEL_103;
  }

  v94 = 1.0 / v82;
  v249 = v94;
  if (v68 != 1)
  {
    goto LABEL_90;
  }

LABEL_86:
  v250 = 0.0;
  v177 = v40;
  v178 = v37;
  v199 = v67;
  if (!v50)
  {
    goto LABEL_91;
  }

LABEL_87:
  v85 = &v40[*MEMORY[0x277CD7410]];
  v86 = *v85;
  v87 = *(v85 + 1);
  v88 = *(v85 + 2);
  v89 = *(v85 + 3);
  v90 = *&v40[*v41];
  v217[3] = v89;
  v217[2] = v88;
  v217[1] = v87;
  v217[0] = v86;
  v91 = *MEMORY[0x277CD7428];
  v92 = v74;
  if (*(v217 + (v90 & 0xF)) == 1)
  {
    v93 = 0;
  }

  else
  {
    v93 = *&v40[8 * (v90 & 0xF) + v91];
  }

  v216[0] = v86;
  v216[1] = v87;
  v216[2] = v88;
  v216[3] = v89;
  v98 = BYTE1(v90) & 0xF;
  v99 = *(v216 + v98);
  v100 = &v40[v91];
  v101 = *v100;
  v102 = *(v100 + 1);
  v103 = *(v100 + 2);
  v104 = *(v100 + 3);
  v105 = *(v100 + 4);
  v106 = *(v100 + 5);
  v107 = *(v100 + 6);
  v108 = *(v100 + 7);
  v213[7] = v108;
  v213[5] = v106;
  v213[6] = v107;
  v213[3] = v104;
  v213[4] = v105;
  v213[1] = v102;
  v213[2] = v103;
  v213[0] = v101;
  v109 = *(v213 + v98);
  v215[0] = v86;
  v215[1] = v87;
  v215[2] = v88;
  v215[3] = v89;
  v110 = BYTE2(v90) & 0xF;
  v111 = *(v215 + v110);
  if (v99 == 1)
  {
    v112 = 0;
  }

  else
  {
    v112 = v109;
  }

  v212[6] = v107;
  v212[7] = v108;
  v212[4] = v105;
  v212[5] = v106;
  v212[2] = v103;
  v212[3] = v104;
  v212[0] = v101;
  v212[1] = v102;
  v113 = *(v212 + v110);
  if (v111 == 1)
  {
    v114 = 0;
  }

  else
  {
    v114 = *(v212 + v110);
  }

  v214[0] = v86;
  v214[1] = v87;
  v214[2] = v88;
  v214[3] = v89;
  v115 = BYTE3(v90) & 0xF;
  v116 = *(v214 + v115);
  v211[6] = v107;
  v211[7] = v108;
  v211[4] = v105;
  v211[5] = v106;
  v211[2] = v103;
  v211[3] = v104;
  v211[0] = v101;
  v211[1] = v102;
  v117 = *(v211 + v115);
  if (v116 == 1)
  {
    v118 = 0;
  }

  else
  {
    v118 = *(v211 + v115);
  }

  v119 = &v40[*MEMORY[0x277CD7418]];
  v120 = *v119;
  v121 = *(v119 + 1);
  v122 = *(v119 + 2);
  v123 = *(v119 + 3);
  v210[6] = v107;
  v210[7] = v108;
  v210[4] = v105;
  v210[5] = v106;
  v210[2] = v103;
  v210[3] = v104;
  v210[0] = v101;
  v210[1] = v102;
  v124 = v90 & 0xF;
  v125 = *(v210 + v124);
  v209[2] = v122;
  v209[3] = v123;
  v209[0] = v120;
  v209[1] = v121;
  v126 = v125 * *(v209 + v124);
  v208[2] = v122;
  v208[3] = v123;
  v208[0] = v120;
  v208[1] = v121;
  v127 = v126 + v109 * *(v208 + v98);
  v207[2] = v122;
  v207[3] = v123;
  v207[0] = v120;
  v207[1] = v121;
  v128 = v127 + v113 * *(v207 + v110);
  v206[2] = v122;
  v206[3] = v123;
  v206[0] = v120;
  v206[1] = v121;
  v129 = v128 + v117 * *(v206 + v115);
  v238 = v112;
  v239 = v114;
  v240 = v118;
  v237 = v93;
  v236 = v129;
  v233 = v112;
  v234 = v114;
  v235 = v118;
  v232 = v93;
  v231 = v129;
  v4 = v190;
  v42 = v188;
  v96 = v181;
  v97 = v182;
  v74 = v92;
LABEL_103:
  v130 = v189 == 4;
  if (v96)
  {
    v131 = 0x20000;
  }

  else
  {
    v131 = 0;
  }

  if (v97)
  {
    v131 = 0x40000;
  }

  v132 = v183 == 1;
  v133 = v130 & v132;
  if ((v130 & v132) != 0)
  {
    v134 = 2;
  }

  else
  {
    v134 = 1;
  }

  v135 = v189 == 2;
  v136 = !v135 || !v132;
  if (v135 && v132)
  {
    v137 = 4;
  }

  else
  {
    v137 = v134;
  }

  v204 = v62;
  *(&v204 & 0xFFFFFFFFFFFFFFF3 | (4 * (v84 & 3))) = 1;
  v138 = (&v205 & 0xFFFFFFFFFFFFFFF3 | (4 * (v73 & 3)));
  v205 = v204;
  v139 = v137 + *(&v205 | (4 * v73));
  if (v136)
  {
    v140 = v133;
  }

  else
  {
    v140 = 2;
  }

  *v138 = (v139 - 1) >> v140;
  v203 = v205;
  v195 = v68;
  v141 = v68 > 1;
  v142 = v74;
  v143 = -1;
  v225[4] = -1;
  v225[3] = -1;
  v226 = 0u;
  v227 = 0u;
  v225[5] = v49 & 3 | (v130 << 30) | (v183 << 19) | v131 & 0xFFFFFFC3 | ((v137 << 14) + 114688) & 0x1C000 | (4 * (v63 & 3)) & 0xCF | (16 * (v64 & 3)) | ((v65 & 3) << 6) | (v141 << 8) | ((v71 > 1) << 9) | ((v74 > 1) << 10);
  v228 = 0;
  v229 = [*(v4 + 16) count] | ((*(v4 + 112) != 0) << 8) | 0x10000;
  v230 = 0;
  v169 = *(v42 + *MEMORY[0x277CD7360]);
  v171 = *(v42 + *MEMORY[0x277CD7368]);
  v167 = *(v4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    v145 = PipelineStateForMPSKey;
    [v179 setComputePipelineState:{PipelineStateForMPSKey, v167, v169, v171, 0, 0}];
    MPSLibrary::ReleaseMPSKey();
    v146 = [v145 threadExecutionWidth];
    if (v146 <= 1)
    {
      v147 = 1;
    }

    else
    {
      v147 = v146;
    }

    v148 = [v145 maxTotalThreadsPerThreadgroup];
    v149 = 256;
    if (v148 < 0x100)
    {
      v149 = v148;
    }

    if (v149 <= 2 * v147)
    {
      if (v191)
      {
        v151 = v71;
        v152 = v142;
        v150 = 1;
        v153 = (v147 + v199 - 1) / v147;
LABEL_129:
        v155 = v150 + v195 - 1;
LABEL_140:
        v154 = v155 / v150;
        goto LABEL_141;
      }

      v150 = 1;
    }

    else
    {
      v150 = v149 / v147;
      if (v191)
      {
        v151 = v71;
        v152 = v142;
        v153 = (v147 + v199 - 1) / v147;
        if (v147 > v149)
        {
          v154 = 0;
          v150 = 0;
LABEL_141:
          v158 = v151 * v152;
          objc_msgSend_setBytes_length_atIndex_(v179);
          [v179 setBuffer:objc_msgSend(v177 offset:"buffer") atIndex:{*(*(v190 + 8) + 80 * v178 + 64), 27}];
          MPSSetNDArraysOnComputeEncoder(v179, v190, 4, 1, v191);
          objc_msgSend_setBytes_length_atIndex_(v179);
          v225[0] = v153;
          v225[1] = v154;
          v225[2] = v158;
          v224[0] = v147;
          v224[1] = v150;
          v224[2] = 1;
          [v179 dispatchThreadgroups:v225 threadsPerThreadgroup:v224];
          MPSLibrary::ReleaseComputeState();
          return 0;
        }

        goto LABEL_129;
      }
    }

    if (v150 >= SDWORD1(v203))
    {
      v156 = SDWORD1(v203);
    }

    else
    {
      v156 = v150;
    }

    do
    {
      v157 = v156;
      if (v156 < 2)
      {
        break;
      }

      v156 *= 2;
    }

    while (v157 * v147 < v147);
    if (SDWORD1(v203) % v157)
    {
      v150 = 1;
    }

    else
    {
      v150 = v157;
    }

    v153 = v203;
    v155 = SDWORD1(v203) + v150 - 1;
    v151 = DWORD2(v203);
    v152 = HIDWORD(v203);
    goto LABEL_140;
  }

  return v143;
}

void sub_239A526F0(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
    if ((*(v1 - 97) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 - 97) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 - 120));
  _Unwind_Resume(a1);
}

uint64_t EncodeArrayLUTGEMV(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v11 = v10;
  v12 = v7;
  if (*(v7 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    HIBYTE(v649[2]) = 21;
    strcpy(v649, "MPSNDArrayLUTGEMVTest");
    v648 = 0;
    LOBYTE(v647) = 0;
    MPSKernelLogPerfTestCommandline(v7, v8, v649, &v647);
    if (v648 < 0)
    {
      operator delete(v647);
      if ((SHIBYTE(v649[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((SHIBYTE(v649[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v649[0]);
  }

LABEL_4:
  v513 = *(v12 + 144);
  v519 = *(v12 + 145);
  v13 = *(v12 + 152);
  v14 = *(v12 + 160);
  v15 = [*(v9 + 232) graph];
  v16 = **(v15 + 56);
  if (*(*(v15 + 56) + 8) == v16)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v17 = *v16;
  v19 = *(*v16 + 8);
  v18 = *v19;
  v20 = v19[1] - *v19;
  if (v20 <= 8 || (v497 = v12, v509 = v9, v21 = **(v17 + 24), *(*(v17 + 24) + 8) == v21))
  {
LABEL_470:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v498 = *v18;
  v504 = v18[1];
  v22 = *v21;
  if (!v513)
  {
    v23 = 0;
    v493 = 1;
    v24 = 2;
    v507 = v14;
    v514 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

LABEL_15:
    if ([v13 quantizationScheme] == 1)
    {
      v29 = **(v17 + 8);
      if (v24 >= (*(*(v17 + 8) + 8) - v29) >> 3)
      {
        goto LABEL_470;
      }

      v25 = *(v29 + 8 * v24);
      v30 = [v13 hasZeroPoint];
      if (v30)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      v32 = v31 + v24;
      if (v30)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      if (v30)
      {
        v34 = 3;
      }

      else
      {
        v34 = 1;
      }

      v35 = [v13 hasMinValue];
      v24 = v32 + v35;
      v493 += v33 + v35;
      if (v35)
      {
        v36 = v34 | 4;
      }

      else
      {
        v36 = v34;
      }

      v37 = ([v13 quantizationDataType] >> 26) & 8 | v36;
      [v13 implicitZeroPoint];
      v500 = v37;
      if (!v519)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v25 = 0;
      v500 = 0;
      if (!v519)
      {
        goto LABEL_32;
      }
    }

LABEL_11:
    v26 = **(v17 + 8);
    v27 = v507;
    if (v24 >= (*(*(v17 + 8) + 8) - v26) >> 3)
    {
      goto LABEL_470;
    }

    v28 = *(v26 + 8 * v24++);
    v491 = v17;
    if (!v507)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  if (v20 == 16)
  {
    goto LABEL_470;
  }

  v23 = v18[2];
  v493 = 2;
  v24 = 3;
  v507 = v14;
  v514 = v13;
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_10:
  v25 = 0;
  v500 = 0;
  if (v519)
  {
    goto LABEL_11;
  }

LABEL_32:
  v28 = 0;
  v27 = v507;
  v491 = v17;
  if (!v507)
  {
LABEL_41:
    v512 = 0;
    v39 = 0;
    goto LABEL_42;
  }

LABEL_33:
  if ([v27 quantizationScheme] != 1)
  {
    goto LABEL_41;
  }

  v38 = **(v17 + 8);
  if (v24 >= (*(*(v17 + 8) + 8) - v38) >> 3)
  {
    goto LABEL_470;
  }

  v39 = *(v38 + 8 * v24);
  if ([v27 hasZeroPoint])
  {
    v40 = 3;
  }

  else
  {
    v40 = 1;
  }

  if ([v27 hasMinValue])
  {
    v40 |= 4u;
  }

  v512 = ([v27 quantizationDataType] >> 26) & 8 | v40;
  [v27 implicitZeroPoint];
LABEL_42:
  v486 = v11;
  DimensionSize = BaseTensor::GetDimensionSize(v22);
  v501 = BaseTensor::GetDimensionSize(v22);
  v489 = BaseTensor::GetDimensionSize(v22);
  v487 = BaseTensor::GetDimensionSize(v22);
  v41 = BaseTensor::GetDimensionSize(v498);
  v42 = BaseTensor::GetDimensionSize(v498);
  v478 = BaseTensor::GetDimensionSize(v498);
  v482 = BaseTensor::GetDimensionSize(v498);
  v43 = BaseTensor::GetDimensionSize(v504);
  v476 = BaseTensor::GetDimensionSize(v504);
  v480 = BaseTensor::GetDimensionSize(v504);
  v484 = BaseTensor::GetDimensionSize(v504);
  v511 = 0u;
  if (v23)
  {
    v45 = BaseTensor::GetDimensionSize(v23);
    v46 = BaseTensor::GetDimensionSize(v23);
    v47 = BaseTensor::GetDimensionSize(v23);
    v48 = BaseTensor::GetDimensionSize(v23);
    v49.i64[0] = __PAIR64__(v46, v45);
    v49.i64[1] = __PAIR64__(v48, v47);
    v506 = v49;
    v50 = 31 - __clz(v45);
    if (v45)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    if (v28)
    {
LABEL_47:
      v52 = v51;
      v53 = BaseTensor::GetDimensionSize(v28);
      v54 = BaseTensor::GetDimensionSize(v28);
      v55 = BaseTensor::GetDimensionSize(v28);
      v56 = BaseTensor::GetDimensionSize(v28);
      v51 = v52;
      v57.i64[0] = __PAIR64__(v54, v53);
      v57.i64[1] = __PAIR64__(v56, v55);
      v511 = v57;
      v58 = 31 - __clz(v53);
      if (v53)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      v60 = v514;
      LODWORD(v44) = v41;
      v495 = 0u;
      v496 = 0u;
      if (v25)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v51 = 8;
    v506 = 0uLL;
    if (v28)
    {
      goto LABEL_47;
    }
  }

  v59 = 8;
  v60 = v514;
  LODWORD(v44) = v41;
  v495 = 0u;
  v496 = 0u;
  if (v25)
  {
LABEL_51:
    v520 = v44;
    v61 = BaseTensor::GetDimensionSize(v25);
    v62 = BaseTensor::GetDimensionSize(v25);
    v63 = BaseTensor::GetDimensionSize(v25);
    v64 = BaseTensor::GetDimensionSize(v25);
    v65.i64[0] = __PAIR64__(v62, v61);
    v65.i64[1] = __PAIR64__(v64, v63);
    v495 = v65;
    v66 = [v60 quantizationDataType];
    v44 = v520;
    v51 = v66;
  }

LABEL_52:
  LODWORD(v67) = v43;
  DWORD1(v44) = v42;
  v510 = v51;
  if (v39)
  {
    v521 = v44;
    v515 = v43;
    v68 = BaseTensor::GetDimensionSize(v39);
    v69 = BaseTensor::GetDimensionSize(v39);
    v70 = BaseTensor::GetDimensionSize(v39);
    v71 = BaseTensor::GetDimensionSize(v39);
    v72.i64[0] = __PAIR64__(v69, v68);
    v72.i64[1] = __PAIR64__(v71, v70);
    v496 = v72;
    v73 = [v507 quantizationDataType];
    LODWORD(v67) = v515;
    v44 = v521;
    v51 = v510;
    v59 = v73;
  }

  DWORD1(v67) = v476;
  DWORD2(v44) = v478;
  v645 = 0;
  v646 = 0;
  v643 = 0;
  v644 = 0;
  v74 = v500;
  if (v500)
  {
    v75 = 1;
  }

  else
  {
    v75 = v513;
  }

  if (v512)
  {
    v76 = 1;
  }

  else
  {
    v76 = v519;
  }

  if ((v75 & 1) == 0 && !v76)
  {
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v85 = v482;
    v84 = v484;
    v86 = v480;
    goto LABEL_119;
  }

  v516 = v67;
  v522 = v44;
  GetPlaceHolderIndexInSourceArrayLUT([*(v509 + 232) graph], v75, v76, &v646, &v645, v493, 0);
  if (((v500 | v512) & 2) != 0)
  {
    v74 = v500;
    GetPlaceHolderIndexInSourceArrayLUT([*(v509 + 232) graph], (v500 >> 1) & 1, (v512 >> 1) & 1, &v644, &v643, v493, 1);
  }

  if (!v75)
  {
    v79 = 0;
    v81 = 0;
    v85 = v482;
    v84 = v484;
    if (v76)
    {
      goto LABEL_73;
    }

    goto LABEL_79;
  }

  v81 = [*(v509 + 16) objectAtIndexedSubscript:v646];
  v85 = v482;
  if ((v74 & 2) == 0)
  {
    v79 = 0;
    v84 = v484;
    if (v76)
    {
      goto LABEL_73;
    }

LABEL_79:
    v78 = 0;
    v80 = 0;
    v51 = v510;
    v89 = MEMORY[0x277CD73D8];
    v86 = v480;
    if (!v81)
    {
      goto LABEL_97;
    }

    goto LABEL_80;
  }

  v79 = [*(v509 + 16) objectAtIndexedSubscript:v644];
  v84 = v484;
  if (!v76)
  {
    goto LABEL_79;
  }

LABEL_73:
  v80 = [*(v509 + 16) objectAtIndexedSubscript:v645];
  if ((v512 & 2) == 0)
  {
    v78 = 0;
    v51 = v510;
    v89 = MEMORY[0x277CD73D8];
    v86 = v480;
    if (!v81)
    {
      goto LABEL_97;
    }

LABEL_80:
    v90 = *v89;
    v91 = *(v81 + v90);
    if (v80)
    {
      v92 = (v80 + v90);
      v93 = BYTE1(v91) == 0;
      v94 = v92[1] == 0;
      if (!BYTE2(v91))
      {
        v93 = 2;
      }

      if (!v92[2])
      {
        v94 = 2;
      }

      if (BYTE3(v91))
      {
        v83 = v93;
      }

      else
      {
        v83 = 3;
      }

      if (v92[3])
      {
        v82 = v94;
      }

      else
      {
        v82 = 3;
      }

      if (v51 == 4)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v82 = 0;
      v443 = BYTE1(v91) == 0;
      if (!BYTE2(v91))
      {
        v443 = 2;
      }

      if (BYTE3(v91))
      {
        v83 = v443;
      }

      else
      {
        v83 = 3;
      }

      if (v51 == 4)
      {
        goto LABEL_92;
      }
    }

LABEL_104:
    if (v51 != 2)
    {
      v77 = 0;
      if (v59 == 4)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    if ((*(v81 + *MEMORY[0x277CD7408]) & 3) != 0 || (*(v81 + *MEMORY[0x277CD7418]) & 3) != 0 || (*(v81 + *MEMORY[0x277CD7410]) & 3) != 0)
    {
      goto LABEL_108;
    }

    goto LABEL_455;
  }

  v87 = v80;
  v88 = [*(v509 + 16) objectAtIndexedSubscript:v643];
  v80 = v87;
  v78 = v88;
  v51 = v510;
  v89 = MEMORY[0x277CD73D8];
  v86 = v480;
  if (v81)
  {
    goto LABEL_80;
  }

LABEL_97:
  if (v80)
  {
    v83 = 0;
    v95 = (v80 + *v89);
    v96 = v95[1] == 0;
    if (!v95[2])
    {
      v96 = 2;
    }

    if (v95[3])
    {
      v82 = v96;
    }

    else
    {
      v82 = 3;
    }

    if (v51 != 4)
    {
      goto LABEL_104;
    }
  }

  else
  {
    v82 = 0;
    v83 = 0;
    if (v51 != 4)
    {
      goto LABEL_104;
    }
  }

LABEL_92:
  if ((*(v81 + *MEMORY[0x277CD7408]) & 3) != 0 || (*(v81 + *MEMORY[0x277CD7418]) & 3) != 0 || (*(v81 + *MEMORY[0x277CD7410]) & 3) != 0)
  {
LABEL_108:
    v97 = 1;
    goto LABEL_109;
  }

LABEL_455:
  v97 = 0;
LABEL_109:
  v98 = *(v81 + *v89);
  v99.i32[0] = v98;
  v99.i32[1] = BYTE1(v98);
  *&v98 = vtst_s32(v99, 0xFF000000FFLL);
  v77 = v97 | v98 & BYTE4(v98);
  if (v59 == 4)
  {
LABEL_113:
    if ((*(v80 + *MEMORY[0x277CD7408]) & 3) != 0 || (*(v80 + *MEMORY[0x277CD7418]) & 3) != 0 || (*(v80 + *MEMORY[0x277CD7410]) & 3) != 0)
    {
      v77 = 1;
    }

    v100 = *(v80 + *v89);
    v101.i32[0] = v100;
    v101.i32[1] = BYTE1(v100);
    *&v100 = vtst_s32(v101, 0xFF000000FFLL);
    v77 |= v100 & BYTE4(v100);
    goto LABEL_118;
  }

LABEL_112:
  if (v59 == 2)
  {
    goto LABEL_113;
  }

LABEL_118:
  v44 = v522;
  *&v67 = v516;
LABEL_119:
  DWORD2(v67) = v86;
  HIDWORD(v44) = v85;
  v102 = v51 == 4;
  if (v83)
  {
    v102 = 0;
    v103 = 0;
  }

  else
  {
    v103 = v51 == 2;
  }

  v104 = v82 == 1 && v59 == 4;
  v105 = v82 == 1 && v59 == 2;
  if (v51 == 4 && v81 && *(v81 + *MEMORY[0x277CD73C8]) == 8)
  {
    v584 = v44;
    *(&v584 & 0xFFFFFFFFFFFFFFF3 | (4 * (v83 & 3))) = 2 * *(&v584 | (4 * v83));
    v44 = v584;
  }

  HIDWORD(v67) = v84;
  if (v59 == 4 && v80 && *(v80 + *MEMORY[0x277CD73C8]) == 8)
  {
    v583 = v67;
    *(&v583 & 0xFFFFFFFFFFFFFFF3 | (4 * (v82 & 3))) = 2 * *(&v583 | (4 * v82));
    v67 = v583;
  }

  if (v51 == 2 && v81 && *(v81 + *MEMORY[0x277CD73C8]) == 8)
  {
    v582 = v44;
    *(&v582 & 0xFFFFFFFFFFFFFFF3 | (4 * (v83 & 3))) = 4 * *(&v582 | (4 * v83));
    v44 = v582;
  }

  v483 = v82;
  v485 = v83;
  v479 = v102;
  v481 = v77;
  v477 = v103;
  v474 = v105;
  v475 = v104;
  if (v59 == 2 && v80 && *(v80 + *MEMORY[0x277CD73C8]) == 8)
  {
    v581 = v67;
    *(&v581 & 0xFFFFFFFFFFFFFFF3 | (4 * (v82 & 3))) = 4 * *(&v581 | (4 * v82));
    v67 = v581;
  }

  v106 = DWORD1(v44);
  v107 = DWORD1(v67);
  v508 = v80;
  v523 = v44;
  v517 = v67;
  if ((*(v497 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v51 > 8 || ((1 << v51) & 0x114) == 0)
    {
      v403 = MTLReportFailureTypeEnabled();
      v67 = v517;
      v44 = v523;
      if (v403)
      {
        v456 = v497;
        MTLReportFailure();
        v67 = v517;
        v44 = v523;
      }
    }

    if (v59 > 8 || ((1 << v59) & 0x114) == 0)
    {
      v404 = MTLReportFailureTypeEnabled();
      v67 = v517;
      v44 = v523;
      if (v404)
      {
        v456 = v497;
        MTLReportFailure();
        v67 = v517;
        v44 = v523;
      }
    }

    v108 = DWORD2(v44);
    v109 = v489;
    if (v489 != DWORD2(v44) && DWORD2(v44) != 1)
    {
      v450 = MTLReportFailureTypeEnabled();
      v67 = v517;
      v109 = v489;
      v44 = v523;
      if (v450)
      {
        v462 = 2;
        v463 = v108;
        v458 = 2;
        v460 = v489;
        v456 = v497;
        MTLReportFailure();
        v67 = v517;
        v109 = v489;
        v44 = v523;
      }
    }

    v111 = DWORD2(v67);
    if (v109 != DWORD2(v67) && DWORD2(v67) != 1)
    {
      v451 = MTLReportFailureTypeEnabled();
      v67 = v517;
      v44 = v523;
      if (v451)
      {
        v462 = 2;
        v463 = v111;
        v458 = 2;
        v460 = v489;
        v456 = v497;
        MTLReportFailure();
        v67 = v517;
        v44 = v523;
      }
    }

    v113 = HIDWORD(v44);
    v114 = v487;
    if (v487 != HIDWORD(v44) && HIDWORD(v44) != 1)
    {
      v452 = MTLReportFailureTypeEnabled();
      v67 = v517;
      v114 = v487;
      LODWORD(v44) = v523;
      if (v452)
      {
        v462 = 3;
        v463 = v113;
        v458 = 3;
        v460 = v487;
        v456 = v497;
        MTLReportFailure();
        v67 = v517;
        v114 = v487;
        LODWORD(v44) = v523;
      }
    }

    v116 = HIDWORD(v67);
    if (v114 != HIDWORD(v67) && HIDWORD(v67) != 1)
    {
      v453 = MTLReportFailureTypeEnabled();
      LODWORD(v67) = v517;
      LODWORD(v44) = v523;
      if (v453)
      {
        v462 = 3;
        v463 = v116;
        v458 = 3;
        v460 = v487;
        v456 = v497;
        MTLReportFailure();
        LODWORD(v67) = v517;
        LODWORD(v44) = v523;
      }
    }

    v118 = v67;
    if (DimensionSize != v67)
    {
      v454 = MTLReportFailureTypeEnabled();
      LODWORD(v44) = v523;
      if (v454)
      {
        v458 = DimensionSize;
        v460 = v118;
        v456 = v497;
        MTLReportFailure();
        LODWORD(v44) = v523;
      }
    }

    if (v501 != v106)
    {
      v455 = MTLReportFailureTypeEnabled();
      LODWORD(v44) = v523;
      if (v455)
      {
        v458 = v501;
        v460 = v106;
        v456 = v497;
        MTLReportFailure();
        LODWORD(v44) = v523;
      }
    }

    v119 = v44;
    if (v44 != v107 && MTLReportFailureTypeEnabled())
    {
      v458 = v119;
      v460 = v107;
      v456 = v497;
      MTLReportFailure();
    }
  }

  BaseTensor::GetAccessPattern();
  v472 = v120;
  BaseTensor::GetAccessPattern();
  v124 = **(v491 + 8);
  v125 = *(*(v491 + 8) + 8) - v124;
  if (!v125)
  {
    goto LABEL_470;
  }

  v499 = v59;
  v505 = v81;
  *v494 = v78;
  v492 = v79;
  if (v125 <= 8)
  {
    goto LABEL_470;
  }

  v122.i32[0] = 0;
  v126.n128_u64[0] = __PAIR64__(v501, DimensionSize);
  v126.n128_u64[1] = __PAIR64__(v487, v489);
  v123.i32[0] = v512;
  v127 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v123, v122)), 0), v496, v511);
  v488 = v127;
  v127.i32[0] = v74;
  v468 = v126;
  v470 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v127, v122)), 0), v495, v506);
  v128 = *(*v124 + 8);
  v129 = *(v124[1] + 8);
  v130 = v523 * v106 * SDWORD2(v523) * SHIDWORD(v523);
  if (((v128 >> 3) & 0x1FFE) != 0)
  {
    v131 = v128 >> 3;
  }

  else
  {
    v131 = 1;
  }

  if (((v129 >> 3) & 0x1FFE) != 0)
  {
    v132 = v129 >> 3;
  }

  else
  {
    v132 = 1;
  }

  v133 = v130 * v131;
  v134 = v517 * v107 * SDWORD2(v517) * SHIDWORD(v517) * v132;
  v135 = vzip1_s8(v472, v121);
  v136 = v121.u8[0];
  v137 = vzip1_s8(v121, v121);
  v138.i64[0] = 0xFF000000FFLL;
  v138.i64[1] = 0xFF000000FFLL;
  v139 = vandq_s8(vmovl_u16(vzip1_s8(*(*(v509 + 208) + *MEMORY[0x277CD73D8]), v137)), v138);
  v140 = vbsl_s8(vcgtd_u64(v130 * v131, v134), v135, v137);
  v141 = v472.i8[0] == 0;
  v142 = *(v497 + *MEMORY[0x277CD7370]);
  v642 = 0;
  v143 = *(v142 + 32);
  *v144.i64 = (*(*v143 + 24))(v143, &v642, vandq_s8(vmovl_u16(v140), v138), v139, v126);
  v145 = v144.i8[0];
  LODWORD(v146) = v144.i32[1] == 0;
  v148 = v144.i32[1] == 1 || v144.i32[0] != 1;
  if (!v144.i32[2])
  {
    LODWORD(v146) = 2;
  }

  if (v144.i32[2] == 1)
  {
    v149 = 2;
  }

  else
  {
    v149 = v148;
  }

  if (v144.i32[3])
  {
    v146 = v146;
  }

  else
  {
    v146 = 3;
  }

  v465 = v146;
  if (v144.i32[3] == 1)
  {
    v150 = 3;
  }

  else
  {
    v150 = v149;
  }

  v466 = v150;
  v151 = v136 == 1;
  if (v133 <= v134)
  {
    v152 = v129;
  }

  else
  {
    v152 = v128;
  }

  v473 = v152;
  v580 = v468;
  v153 = *(&v580 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[0] & 3)));
  v154 = (&v576 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[8] & 3)));
  v579 = v523;
  v155 = *(&v579 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[0] & 3)));
  v578 = v517;
  v156 = *(&v578 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[0] & 3)));
  v577 = v470;
  v576 = v488;
  LODWORD(v169) = *(&v577 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[0] & 3)));
  LODWORD(v171) = *(&v576 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[0] & 3)));
  v157 = *(&v579 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[4] & 3)));
  v158 = *(&v578 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[4] & 3)));
  v159 = *(&v577 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[4] & 3)));
  v160 = *(&v576 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[4] & 3)));
  v161 = *(&v579 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[8] & 3)));
  v162 = *(&v578 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[8] & 3)));
  v163 = *(&v577 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[8] & 3)));
  v164 = *v154;
  LODWORD(v165) = v153;
  v471 = *(&v580 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[4] & 3)));
  DWORD1(v165) = v471;
  v467 = *(&v580 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[12] & 3)));
  v469 = *(&v580 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[8] & 3)));
  *(&v165 + 1) = __PAIR64__(v467, v469);
  v166 = *(&v579 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[12] & 3)));
  v167 = *(&v578 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[12] & 3)));
  DWORD1(v169) = v159;
  v168 = *(&v577 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[12] & 3)));
  *(&v169 + 1) = __PAIR64__(v168, v163);
  v170 = *(&v576 & 0xFFFFFFFFFFFFFFF3 | (4 * (v144.i8[12] & 3)));
  DWORD1(v171) = v160;
  *(&v171 + 1) = __PAIR64__(v170, *v154);
  if (v133 > v134)
  {
    v151 = v141;
  }

  v518 = v151;
  v635 = v523;
  if (v133 <= v134)
  {
    v172 = v499;
  }

  else
  {
    v172 = v510;
  }

  v632 = v165;
  v633 = v169;
  v634 = v171;
  *&v173 = 0x100000001;
  *(&v173 + 1) = 0x100000001;
  v636 = v173;
  v637 = v173;
  __asm { FMOV            V1.4S, #1.0 }

  v638 = _Q1;
  v639 = _Q1;
  v490 = v144;
  v464 = v165;
  if (!v513)
  {
    v184 = v492;
    v185 = *v494;
    v186 = v505;
    v187 = v508;
    v188 = MEMORY[0x277CD73D8];
    if (!v74)
    {
      goto LABEL_220;
    }

    v189.i64[0] = v155;
    v189.i64[1] = v157;
    v190 = vcvtq_f64_s64(v189);
    v189.i64[0] = v495.i32[0];
    v189.i64[1] = v495.i32[1];
    v191 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(v190, vcvtq_f64_s64(v189)))));
    *&v636 = v191;
    v189.i64[0] = v161;
    v189.i64[1] = v166;
    v192 = vcvtq_f64_s64(v189);
    v189.i64[0] = v495.i32[2];
    v189.i64[1] = v495.i32[3];
    v193 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(v192, vcvtq_f64_s64(v189)))));
    *(&v636 + 1) = v193;
    if (v155 == 1)
    {
      LODWORD(v638) = 0;
      if (v157 == 1)
      {
        goto LABEL_216;
      }
    }

    else
    {
      v397 = 1.0 / v191.u32[0];
      *&v638 = v397;
      if (v157 == 1)
      {
LABEL_216:
        DWORD1(v638) = 0;
        v194 = 0.0;
        if (v161 == 1)
        {
          goto LABEL_217;
        }

        goto LABEL_337;
      }
    }

    v398 = 1.0 / v191.u32[1];
    *(&v638 + 1) = v398;
    v194 = 0.0;
    if (v161 == 1)
    {
LABEL_217:
      DWORD2(v638) = 0;
      if (v166 == 1)
      {
LABEL_219:
        *(&v638 + 3) = v194;
        goto LABEL_220;
      }

LABEL_218:
      v194 = 1.0 / v193.u32[1];
      goto LABEL_219;
    }

LABEL_337:
    v399 = 1.0 / v193.u32[0];
    *(&v638 + 2) = v399;
    if (v166 == 1)
    {
      goto LABEL_219;
    }

    goto LABEL_218;
  }

  v178 = vcvtpd_u64_f64(v157 / v163);
  *&v636 = __PAIR64__(v178, vcvtpd_u64_f64(v155 / v159));
  v179 = vcvtpd_u64_f64(v161 / v168);
  DWORD2(v636) = v179;
  v180 = 0.0;
  v181 = 1.0 / v636;
  if (v155 == 1)
  {
    v181 = 0.0;
  }

  v182 = 1.0 / v178;
  if (v157 == 1)
  {
    v182 = 0.0;
  }

  *&v638 = __PAIR64__(LODWORD(v182), LODWORD(v181));
  if (v161 != 1)
  {
    v183 = 1.0 / v179;
    v180 = v183;
  }

  *(&v638 + 2) = v180;
  v184 = v492;
  v185 = *v494;
  v186 = v505;
  v187 = v508;
  v188 = MEMORY[0x277CD73D8];
LABEL_220:
  if (v519)
  {
    v195 = vcvtpd_u64_f64(v156 / v160);
    v196 = vcvtpd_u64_f64(v158 / v164);
    *&v637 = __PAIR64__(v196, v195);
    v197 = vcvtpd_u64_f64(v162 / v170);
    DWORD2(v637) = v197;
    if (v156 == 1)
    {
      LODWORD(v639) = 0;
      if (v158 == 1)
      {
        goto LABEL_223;
      }
    }

    else
    {
      v395 = 1.0 / v195;
      *&v639 = v395;
      if (v158 == 1)
      {
LABEL_223:
        DWORD1(v639) = 0;
        v198 = 0.0;
        if (v162 == 1)
        {
LABEL_225:
          *(&v639 + 2) = v198;
          goto LABEL_233;
        }

LABEL_224:
        v198 = 1.0 / v197;
        goto LABEL_225;
      }
    }

    v396 = 1.0 / v196;
    *(&v639 + 1) = v396;
    v198 = 0.0;
    if (v162 == 1)
    {
      goto LABEL_225;
    }

    goto LABEL_224;
  }

  if (v512)
  {
    v199.i64[0] = v156;
    v199.i64[1] = v158;
    v200 = vcvtq_f64_s64(v199);
    v199.i64[0] = v496.i32[0];
    v199.i64[1] = v496.i32[1];
    v201 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(v200, vcvtq_f64_s64(v199)))));
    *&v637 = v201;
    v199.i64[0] = v162;
    v199.i64[1] = v167;
    v202 = vcvtq_f64_s64(v199);
    v199.i64[0] = v496.i32[2];
    v199.i64[1] = v496.i32[3];
    v203 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(v202, vcvtq_f64_s64(v199)))));
    *(&v637 + 1) = v203;
    if (v156 == 1)
    {
      LODWORD(v639) = 0;
      if (v158 == 1)
      {
        goto LABEL_229;
      }
    }

    else
    {
      v400 = 1.0 / v201.u32[0];
      *&v639 = v400;
      if (v158 == 1)
      {
LABEL_229:
        DWORD1(v639) = 0;
        v204 = 0.0;
        if (v162 == 1)
        {
          goto LABEL_230;
        }

        goto LABEL_341;
      }
    }

    v401 = 1.0 / v201.u32[1];
    *(&v639 + 1) = v401;
    v204 = 0.0;
    if (v162 == 1)
    {
LABEL_230:
      DWORD2(v639) = 0;
      if (v167 == 1)
      {
LABEL_232:
        *(&v639 + 3) = v204;
        goto LABEL_233;
      }

LABEL_231:
      v204 = 1.0 / v203.u32[1];
      goto LABEL_232;
    }

LABEL_341:
    v402 = 1.0 / v203.u32[0];
    *(&v639 + 2) = v402;
    if (v167 == 1)
    {
      goto LABEL_232;
    }

    goto LABEL_231;
  }

LABEL_233:
  if (!v186)
  {
    if (!v187)
    {
      goto LABEL_262;
    }

    goto LABEL_249;
  }

  v205 = (v186 + *MEMORY[0x277CD7410]);
  v206 = *v205;
  v207 = v205[1];
  v208 = v205[2];
  v209 = v205[3];
  v210 = *(v186 + *v188);
  v575[3] = v209;
  v575[2] = v208;
  v575[1] = v207;
  v575[0] = v206;
  v211 = *MEMORY[0x277CD7428];
  if (*(v575 + (v210 & 0xF)) == 1)
  {
    v212 = 0;
  }

  else
  {
    v212 = *(v186 + 8 * (v210 & 0xF) + v211);
  }

  v574[0] = v206;
  v574[1] = v207;
  v574[2] = v208;
  v574[3] = v209;
  v213 = BYTE1(v210) & 0xF;
  v214 = *(v574 + v213);
  v215 = (v186 + v211);
  v216 = *v215;
  v217 = v215[1];
  v218 = v215[2];
  v219 = v215[3];
  v220 = v215[4];
  v221 = v215[5];
  v222 = v215[6];
  v223 = v215[7];
  v571[7] = v223;
  v571[6] = v222;
  v571[5] = v221;
  v571[4] = v220;
  v571[3] = v219;
  v571[2] = v218;
  v571[1] = v217;
  v571[0] = v216;
  v224 = *(v571 + v213);
  if (v214 == 1)
  {
    v225 = 0;
  }

  else
  {
    v225 = *(v571 + v213);
  }

  v573[0] = v206;
  v573[1] = v207;
  v573[2] = v208;
  v573[3] = v209;
  v226 = BYTE2(v210) & 0xF;
  v227 = *(v573 + v226);
  v570[7] = v223;
  v570[6] = v222;
  v570[5] = v221;
  v570[4] = v220;
  v570[3] = v219;
  v570[2] = v218;
  v570[1] = v217;
  v570[0] = v216;
  v228 = *(v570 + v226);
  if (v227 == 1)
  {
    v229 = 0;
  }

  else
  {
    v229 = *(v570 + v226);
  }

  v572[0] = v206;
  v572[1] = v207;
  v572[2] = v208;
  v572[3] = v209;
  v230 = *(v572 + (BYTE3(v210) & 0xF));
  v569[7] = v223;
  v569[6] = v222;
  v569[5] = v221;
  v569[4] = v220;
  v569[3] = v219;
  v569[2] = v218;
  v569[1] = v217;
  v569[0] = v216;
  v231 = *(v569 + (BYTE3(v210) & 0xF));
  if (v230 == 1)
  {
    v232 = 0;
  }

  else
  {
    v232 = *(v569 + (BYTE3(v210) & 0xF));
  }

  v233 = (v186 + *MEMORY[0x277CD7418]);
  v234 = *v233;
  v235 = v233[1];
  v236 = v233[2];
  v237 = v233[3];
  v568[7] = v223;
  v568[6] = v222;
  v568[5] = v221;
  v568[4] = v220;
  v568[3] = v219;
  v568[2] = v218;
  v568[1] = v217;
  v568[0] = v216;
  v238 = v210 & 0xF;
  v239 = *(v568 + v238);
  v567[3] = v237;
  v567[2] = v236;
  v567[1] = v235;
  v567[0] = v234;
  v240 = *(v567 + v238);
  v566[3] = v237;
  v566[2] = v236;
  v566[1] = v235;
  v566[0] = v234;
  v241 = v239 * v240 + v224 * *(v566 + v213);
  v565[3] = v237;
  v565[2] = v236;
  v565[1] = v235;
  v565[0] = v234;
  v242 = v241 + v228 * *(v565 + v226);
  v564[3] = v237;
  v564[2] = v236;
  v564[1] = v235;
  v564[0] = v234;
  v243 = v242 + v231 * *(v564 + (BYTE3(v210) & 0xF));
  v624 = v225;
  v625 = v229;
  v626 = v232;
  v623 = v212;
  v622 = v243;
  v614 = v225;
  v615 = v229;
  v616 = v232;
  v613 = v212;
  v612 = v243;
  if (v187)
  {
LABEL_249:
    v244 = &v187[*MEMORY[0x277CD7410]];
    v245 = *v244;
    v246 = v244[1];
    v247 = v244[2];
    v248 = v244[3];
    v249 = *&v187[*v188];
    v563[3] = v248;
    v563[2] = v247;
    v563[1] = v246;
    v563[0] = v245;
    v250 = *MEMORY[0x277CD7428];
    if (*(v563 + (v249 & 0xF)) == 1)
    {
      v251 = 0;
    }

    else
    {
      v251 = *&v187[8 * (v249 & 0xF) + v250];
    }

    v562[0] = v245;
    v562[1] = v246;
    v562[2] = v247;
    v562[3] = v248;
    v252 = BYTE1(v249) & 0xF;
    v253 = *(v562 + v252);
    v254 = &v187[v250];
    v255 = *v254;
    v256 = v254[1];
    v257 = v254[2];
    v258 = v254[3];
    v259 = v254[4];
    v260 = v254[5];
    v261 = v254[6];
    v262 = v254[7];
    v559[7] = v262;
    v559[6] = v261;
    v559[5] = v260;
    v559[4] = v259;
    v559[3] = v258;
    v559[2] = v257;
    v559[1] = v256;
    v559[0] = v255;
    v263 = *(v559 + v252);
    if (v253 == 1)
    {
      v264 = 0;
    }

    else
    {
      v264 = *(v559 + v252);
    }

    v561[0] = v245;
    v561[1] = v246;
    v561[2] = v247;
    v561[3] = v248;
    v265 = BYTE2(v249) & 0xF;
    v266 = *(v561 + v265);
    v558[7] = v262;
    v558[6] = v261;
    v558[5] = v260;
    v558[4] = v259;
    v558[3] = v258;
    v558[2] = v257;
    v558[1] = v256;
    v558[0] = v255;
    v267 = *(v558 + v265);
    if (v266 == 1)
    {
      v268 = 0;
    }

    else
    {
      v268 = *(v558 + v265);
    }

    v560[0] = v245;
    v560[1] = v246;
    v560[2] = v247;
    v560[3] = v248;
    v269 = *(v560 + (BYTE3(v249) & 0xF));
    v557[7] = v262;
    v557[6] = v261;
    v557[5] = v260;
    v557[4] = v259;
    v557[3] = v258;
    v557[2] = v257;
    v557[1] = v256;
    v557[0] = v255;
    v270 = *(v557 + (BYTE3(v249) & 0xF));
    if (v269 == 1)
    {
      v271 = 0;
    }

    else
    {
      v271 = *(v557 + (BYTE3(v249) & 0xF));
    }

    v272 = &v187[*MEMORY[0x277CD7418]];
    v273 = *v272;
    v274 = v272[1];
    v275 = v272[2];
    v276 = v272[3];
    v556[7] = v262;
    v556[6] = v261;
    v556[5] = v260;
    v556[4] = v259;
    v556[3] = v258;
    v556[2] = v257;
    v556[1] = v256;
    v556[0] = v255;
    v277 = v249 & 0xF;
    v278 = *(v556 + v277);
    v555[3] = v276;
    v555[2] = v275;
    v555[1] = v274;
    v555[0] = v273;
    v279 = *(v555 + v277);
    v554[3] = v276;
    v554[2] = v275;
    v554[1] = v274;
    v554[0] = v273;
    v280 = v278 * v279 + v263 * *(v554 + v252);
    v553[3] = v276;
    v553[2] = v275;
    v553[1] = v274;
    v553[0] = v273;
    v281 = v280 + v267 * *(v553 + v265);
    v552[3] = v276;
    v552[2] = v275;
    v552[1] = v274;
    v552[0] = v273;
    v282 = v281 + v270 * *(v552 + (BYTE3(v249) & 0xF));
    v629 = v264;
    v630 = v268;
    v631 = v271;
    v628 = v251;
    v627 = v282;
    v619 = v264;
    v620 = v268;
    v621 = v271;
    v618 = v251;
    v617 = v282;
  }

LABEL_262:
  if (v184)
  {
    v283 = (v184 + *MEMORY[0x277CD7410]);
    v284 = *v283;
    v285 = v283[1];
    v286 = v283[2];
    v287 = v283[3];
    v288 = *(v184 + *v188);
    v551[3] = v287;
    v551[2] = v286;
    v551[1] = v285;
    v551[0] = v284;
    v289 = *MEMORY[0x277CD7428];
    if (*(v551 + (v288 & 0xF)) == 1)
    {
      v290 = 0;
    }

    else
    {
      v290 = *(v184 + v289 + 8 * (v288 & 0xF));
    }

    v550[0] = v284;
    v550[1] = v285;
    v550[2] = v286;
    v550[3] = v287;
    v291 = BYTE1(v288) & 0xF;
    v292 = *(v550 + v291);
    v293 = (v184 + v289);
    v294 = *v293;
    v295 = v293[1];
    v296 = v293[2];
    v297 = v293[3];
    v298 = v293[4];
    v299 = v293[5];
    v300 = v293[6];
    v301 = v293[7];
    v547[7] = v301;
    v547[6] = v300;
    v547[5] = v299;
    v547[4] = v298;
    v547[3] = v297;
    v547[2] = v296;
    v547[1] = v295;
    v547[0] = v294;
    v302 = *(v547 + v291);
    if (v292 == 1)
    {
      v303 = 0;
    }

    else
    {
      v303 = *(v547 + v291);
    }

    v549[0] = v284;
    v549[1] = v285;
    v549[2] = v286;
    v549[3] = v287;
    v304 = BYTE2(v288) & 0xF;
    v305 = *(v549 + v304);
    v546[7] = v301;
    v546[6] = v300;
    v546[5] = v299;
    v546[4] = v298;
    v546[3] = v297;
    v546[2] = v296;
    v546[1] = v295;
    v546[0] = v294;
    v306 = *(v546 + v304);
    if (v305 == 1)
    {
      v307 = 0;
    }

    else
    {
      v307 = *(v546 + v304);
    }

    v548[0] = v284;
    v548[1] = v285;
    v548[2] = v286;
    v548[3] = v287;
    v308 = BYTE3(v288) & 0xF;
    v309 = *(v548 + v308);
    v545[7] = v301;
    v545[6] = v300;
    v545[5] = v299;
    v545[4] = v298;
    v545[3] = v297;
    v545[2] = v296;
    v545[1] = v295;
    v545[0] = v294;
    v310 = *(v545 + v308);
    if (v309 == 1)
    {
      v311 = 0;
    }

    else
    {
      v311 = *(v545 + v308);
    }

    v312 = (v184 + *MEMORY[0x277CD7418]);
    v313 = *v312;
    v314 = v312[1];
    v315 = v312[2];
    v316 = v312[3];
    v544[7] = v301;
    v544[6] = v300;
    v544[5] = v299;
    v544[4] = v298;
    v544[3] = v297;
    v544[2] = v296;
    v544[1] = v295;
    v544[0] = v294;
    v317 = v288 & 0xF;
    v318 = *(v544 + v317);
    v543[3] = v316;
    v543[2] = v315;
    v543[1] = v314;
    v543[0] = v313;
    v319 = v318 * *(v543 + v317);
    v542[3] = v316;
    v542[2] = v315;
    v542[1] = v314;
    v542[0] = v313;
    v320 = v319 + v302 * *(v542 + v291);
    v541[3] = v316;
    v541[2] = v315;
    v541[1] = v314;
    v541[0] = v313;
    v321 = v320 + v306 * *(v541 + v304);
    v540[3] = v316;
    v540[2] = v315;
    v540[1] = v314;
    v540[0] = v313;
    v322 = v321 + v310 * *(v540 + v308);
    v604 = v303;
    v605 = v307;
    v606 = v311;
    v603 = v290;
    v602 = v322;
    v594 = v303;
    v595 = v307;
    v596 = v311;
    v593 = v290;
    v592 = v322;
  }

  if (v185)
  {
    v323 = (v185 + *MEMORY[0x277CD7410]);
    v324 = *v323;
    v325 = v323[1];
    v326 = v323[2];
    v327 = v323[3];
    v328 = *(v185 + *v188);
    v539[3] = v327;
    v539[2] = v326;
    v539[1] = v325;
    v539[0] = v324;
    v329 = *MEMORY[0x277CD7428];
    if (*(v539 + (v328 & 0xF)) == 1)
    {
      v330 = 0;
    }

    else
    {
      v330 = *(v185 + v329 + 8 * (v328 & 0xF));
    }

    v538[0] = v324;
    v538[1] = v325;
    v538[2] = v326;
    v538[3] = v327;
    v331 = BYTE1(v328) & 0xF;
    v332 = *(v538 + v331);
    v333 = (v185 + v329);
    v334 = *v333;
    v335 = v333[1];
    v336 = v333[2];
    v337 = v333[3];
    v338 = v333[4];
    v339 = v333[5];
    v340 = v333[6];
    v341 = v333[7];
    v535[7] = v341;
    v535[6] = v340;
    v535[5] = v339;
    v535[4] = v338;
    v535[3] = v337;
    v535[2] = v336;
    v535[1] = v335;
    v535[0] = v334;
    v342 = *(v535 + v331);
    if (v332 == 1)
    {
      v343 = 0;
    }

    else
    {
      v343 = *(v535 + v331);
    }

    v537[0] = v324;
    v537[1] = v325;
    v537[2] = v326;
    v537[3] = v327;
    v344 = BYTE2(v328) & 0xF;
    v345 = *(v537 + v344);
    v534[7] = v341;
    v534[6] = v340;
    v534[5] = v339;
    v534[4] = v338;
    v534[3] = v337;
    v534[2] = v336;
    v534[1] = v335;
    v534[0] = v334;
    v346 = *(v534 + v344);
    if (v345 == 1)
    {
      v347 = 0;
    }

    else
    {
      v347 = *(v534 + v344);
    }

    v536[0] = v324;
    v536[1] = v325;
    v536[2] = v326;
    v536[3] = v327;
    v348 = BYTE3(v328) & 0xF;
    v349 = *(v536 + v348);
    v533[7] = v341;
    v533[6] = v340;
    v533[4] = v338;
    v533[5] = v339;
    v533[2] = v336;
    v533[3] = v337;
    v533[0] = v334;
    v533[1] = v335;
    v350 = *(v533 + v348);
    if (v349 == 1)
    {
      v351 = 0;
    }

    else
    {
      v351 = *(v533 + v348);
    }

    v352 = (v185 + *MEMORY[0x277CD7418]);
    v353 = *v352;
    v354 = v352[1];
    v355 = v352[2];
    v356 = v352[3];
    v532[6] = v340;
    v532[7] = v341;
    v532[4] = v338;
    v532[5] = v339;
    v532[2] = v336;
    v532[3] = v337;
    v532[0] = v334;
    v532[1] = v335;
    v357 = v328 & 0xF;
    v358 = *(v532 + v357);
    v531[2] = v355;
    v531[3] = v356;
    v531[0] = v353;
    v531[1] = v354;
    v359 = v358 * *(v531 + v357);
    v530[2] = v355;
    v530[3] = v356;
    v530[0] = v353;
    v530[1] = v354;
    v360 = v359 + v342 * *(v530 + v331);
    v529[2] = v355;
    v529[3] = v356;
    v529[0] = v353;
    v529[1] = v354;
    v361 = v360 + v346 * *(v529 + v344);
    v528[2] = v355;
    v528[3] = v356;
    v528[0] = v353;
    v528[1] = v354;
    v362 = v361 + v350 * *(v528 + v348);
    v609 = v343;
    v610 = v347;
    v611 = v351;
    v608 = v330;
    v607 = v362;
    v599 = v343;
    v600 = v347;
    v601 = v351;
    v598 = v330;
    v597 = v362;
  }

  *v363.i64 = (*(*v143 + 32))(v143, &v632, v518, v473, v172, v133 > v134);
  v364 = v635;
  v365.i32[0] = 5;
  v366.i32[0] = v635;
  v367 = vdupq_lane_s32(*&vcgtq_u32(v365, v366), 0);
  v368 = v363;
  v368.i32[2] = 0;
  v370 = vbslq_s8(v367, v368, v363);
  v369.i64[1] = 0x100000001;
  v369.i64[0] = v370.i64[0];
  v370.i32[3] = v363.i32[3];
  if (v501 >= DimensionSize)
  {
    v371 = DimensionSize;
  }

  else
  {
    v371 = v501;
  }

  if (v481 & 1 | (v370.i32[2] != 0 || !v475 && !v479))
  {
    v372 = -1;
  }

  else
  {
    v372 = 0;
  }

  v374 = vbslq_s8(vdupq_n_s32(v372), v370, v369);
  v373.i64[1] = 0x200000002;
  v373.i64[0] = v374.i64[0];
  v374.i32[3] = v363.i32[3];
  if (v481 & 1 | (v374.i32[2] > 1 || !v474 && !v477))
  {
    v375 = -1;
  }

  else
  {
    v375 = 0;
  }

  v376 = vbslq_s8(vdupq_n_s32(v375), v374, v373);
  v377 = v376;
  v377.i32[3] = v363.i32[3];
  if (v510 == 4)
  {
    v379 = v483;
    v378 = v485;
    v380 = v465;
    v381 = v464;
    v382 = v499;
    if (v485 != 1 || v481 & 1 | ((v376.i8[4] & 1) == 0))
    {
      if (v499 != 4)
      {
        goto LABEL_308;
      }
    }

    else
    {
      v363.i64[0] = v376.i64[0] + 0x100000000;
      v363.i64[1] = __PAIR64__(v363.u32[3], v376.u32[2]);
      v377 = v363;
      if (v499 != 4)
      {
        goto LABEL_308;
      }
    }
  }

  else
  {
    v379 = v483;
    v378 = v485;
    v380 = v465;
    v381 = v464;
    v382 = v499;
    if (v499 != 4)
    {
      goto LABEL_308;
    }
  }

  if (!v379 && !(v481 & 1 | ((v377.i8[0] & 1) == 0)))
  {
    v383.i32[0] = v377.i32[0] + 1;
    v383.i32[1] = v377.i32[1];
    v383.i64[1] = v377.i64[1];
    v377 = v383;
  }

LABEL_308:
  if (v510 == 2 && v378 == 1 && !(v481 & 1 | ((v377.i8[4] & 3) == 0)))
  {
    v384.i32[0] = v377.i32[0];
    v384.i32[1] = (v377.i32[1] + 3) & 0xFFFFFFFC;
    v384.i64[1] = v377.i64[1];
    v377 = v384;
  }

  if (v382 == 2 && !v379 && !(v481 & 1 | ((v377.i8[0] & 3) == 0)))
  {
    v385.i32[0] = (v377.i32[0] + 3) & 0xFFFFFFFC;
    v385.i32[1] = v377.i32[1];
    v385.i64[1] = v377.i64[1];
    v377 = v385;
  }

  v386 = v377.u32[0];
  if (v377.i32[0])
  {
    v527 = v381;
    v387 = (*(&v527 | (4 * v380)) + v377.u32[0] - 1) / v377.u32[0];
    v526 = v381;
    *(&v526 & 0xFFFFFFFFFFFFFFF3 | (4 * (v380 & 3))) = v387;
    v388 = v526;
    if (v377.i32[1])
    {
LABEL_318:
      v525 = v388;
      v389 = v466;
      v390 = (v377.u32[1] + *(&v525 | (4 * v466)) - 1) / v377.u32[1];
      goto LABEL_321;
    }
  }

  else
  {
    v526 = v381;
    *(&v526 & 0xFFFFFFFFFFFFFFF3 | (4 * (v380 & 3))) = 0;
    v388 = v526;
    if (v377.i32[1])
    {
      goto LABEL_318;
    }
  }

  LODWORD(v390) = 0;
  v389 = v466;
LABEL_321:
  v524 = v388;
  *(&v524 & 0xFFFFFFFFFFFFFFF3 | (4 * (v389 & 3))) = v390;
  v391.i32[0] = vextq_s8(v511, v511, 8uLL).u32[0];
  v391.i32[1] = v506.i32[1];
  v392 = vcgt_s32(v391, 0x100000001);
  if ((v392.i32[1] | v392.i32[0]))
  {
    v393 = 0;
    v394 = v490;
  }

  else
  {
    v393 = 1;
    v394 = v490;
    if (v513 && DWORD2(v633) >= 2)
    {
      v393 = DWORD1(v636) % v377.i32[1] == 0;
    }

    if (v519 && DWORD1(v634) >= 2 && v637 % v377.i32[0])
    {
      v393 = 0;
    }
  }

  v405 = v473 >> 3;
  v407 = v405 > 1 || v371 < 5;
  v409 = (v405 < 2 || v371 < 2) && v407;
  v410 = v364 >= 1024 << v377.i8[8] && v409;
  v411 = v364 & ~(-1 << v377.i8[8]);
  if (v153 % v377.i32[0])
  {
    v412 = 1;
    v413 = v471;
  }

  else
  {
    v413 = v471;
    v412 = v471 % v377.i32[1] != 0;
    if (!v412 && !v518)
    {
      v412 = (v524 & 0xF) != 0;
    }
  }

  v503 = v524;
  v414 = vandq_s8(vshlq_u32(vtrn2q_s32(v394, vuzp1q_s32(v394, v377)), xmmword_239B0A330), xmmword_239B0A340);
  v415 = vorr_s8(*v414.i8, *&vextq_s8(v414, v414, 8uLL));
  v416 = ((v469 > 1) << 9) | ((v413 > 1) << 8);
  v417 = vand_s8(vadd_s32(vshl_u32(*v377.i8, 0xE0000000BLL), 0x1C00000003800), 0x1C00000003800);
  if (v412)
  {
    v418 = 0x800000;
  }

  else
  {
    v418 = 0;
  }

  v419 = vorr_s8(v417, vdup_lane_s32(v417, 1)).u32[0] | ((v382 == 4) << 31) | ((v510 == 4) << 30);
  v420 = v418 | (v513 << 26) | (v519 << 27);
  if (v518 && v410)
  {
    v421 = 0x2000000;
  }

  else
  {
    v421 = 0;
  }

  v422 = -1;
  v586[3] = -1;
  v586[4] = -1;
  v591 = 0;
  v590 = 0;
  v586[5] = v415.i32[0] | v415.i32[1] | (v379 << 21) | v145 & 3 | (v378 << 19) | v419 | v416 | v421 | v420 | ((v411 != 0) << 24) | ((v467 > 1) << 10) | (v393 << 28);
  v589 = 0;
  v587 = 0u;
  v588 = 0u;
  v590 = [*(v509 + 16) count] | ((*(v509 + 112) != 0) << 8) | 0x10000;
  v591 = 0;
  v459 = *(v497 + *MEMORY[0x277CD7360]);
  v461 = *(v497 + *MEMORY[0x277CD7368]);
  v457 = *(v509 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    v424 = PipelineStateForMPSKey;
    v425 = 4 * vaddq_s32(v511, v506).i32[0];
    [v486 setComputePipelineState:{PipelineStateForMPSKey, v457, v459, v461, 0, 0}];
    MPSLibrary::ReleaseMPSKey();
    v426 = [v424 threadExecutionWidth];
    if (v426 <= 1)
    {
      v427 = 1;
    }

    else
    {
      v427 = v426;
    }

    v428 = [v424 maxTotalThreadsPerThreadgroup];
    v429 = 256;
    if (v428 < 0x100)
    {
      v429 = v428;
    }

    if (v429 <= 2 * v427)
    {
      v430 = 1;
      v431 = v503;
      v432 = v425 + 15;
      if (!v518)
      {
LABEL_380:
        v433 = 16;
        if (v405 > 3)
        {
          v433 = 8;
        }

        if (v431 > 31)
        {
          v430 = v433;
        }

        do
        {
          v434 = v430;
          if (v430 < 2)
          {
            break;
          }

          v430 >>= 1;
        }

        while (v434 > v635);
        if (v427 >= v431)
        {
          v435 = v431;
        }

        else
        {
          v435 = v427;
        }

        v436 = 16;
        if (v405 > 3)
        {
          v436 = 32;
        }

        if (v431 > 31)
        {
          v435 = v436;
        }

        v437 = v486;
        if (v434 < 2)
        {
          v438 = v435;
          if (v412)
          {
            goto LABEL_398;
          }
        }

        else
        {
          do
          {
            v438 = v435;
            v439 = v435 * v434;
            v435 *= 2;
          }

          while (v439 < v427);
          if (v412)
          {
            goto LABEL_398;
          }
        }

        if (v431 % v438)
        {
          v438 = 1;
        }

LABEL_398:
        if (v393 && v519 && DWORD1(v634) >= 2 && v637 % (v438 * v386) && (v438 = v637 / v386, v386 * v438 != v637))
        {
          if (v434 <= 0x20)
          {
            v434 = 32;
          }

          v438 = 1;
        }

        else if (!v438)
        {
          v440 = 0;
          goto LABEL_432;
        }

        v440 = (v431 + v438 - 1) / v438;
LABEL_432:
        v444 = SDWORD1(v431);
        v427 = v438;
        goto LABEL_433;
      }
    }

    else
    {
      v430 = v429 / v427;
      v431 = v503;
      v432 = v425 + 15;
      if (!v518)
      {
        goto LABEL_380;
      }
    }

    if (v410)
    {
      v427 *= 8;
      v441 = SDWORD1(v431);
      v437 = v486;
    }

    else
    {
      v441 = SDWORD1(v431);
      if (v430 >= SDWORD1(v431))
      {
        v442 = SDWORD1(v431);
      }

      else
      {
        v442 = v430;
      }

      do
      {
        v434 = v442;
        if (v442 < 2)
        {
          break;
        }

        v442 *= 2;
      }

      while (v434 * v427 < v427);
      if (!v412 && SDWORD1(v431) % v434)
      {
        v434 = 1;
      }

      v437 = v486;
      if (!v393 || !v513 || DWORD2(v633) < 2)
      {
        v440 = v431;
        if (!v434)
        {
          v444 = 0;
LABEL_433:
          v445 = DWORD2(v431);
          v446 = HIDWORD(v431);
          if (!v393)
          {
            v432 = 12;
          }

          [v437 setThreadgroupMemoryLength:(v432 + 4 * v434 * v427) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
          if (v505)
          {
            v447 = v509;
            [v437 setBuffer:-[BaseTensor buffer](v505 offset:"buffer") atIndex:{*(*(v509 + 8) + 80 * v646 + 64), 27}];
            v448 = v508;
            if (!v508)
            {
              goto LABEL_440;
            }
          }

          else
          {
            v448 = v508;
            v447 = v509;
            if (!v508)
            {
LABEL_441:
              if (*v494 | v492)
              {
                objc_msgSend_setBytes_length_atIndex_(v437);
                v641 = 0;
                v640 = 0;
                if (v492)
                {
                  v640 = v644;
                }

                if (*v494)
                {
                  v641 = v643;
                }
              }

              else
              {
                v641 = 0;
                v640 = 0;
              }

              MPSSetNDArraysOnComputeEncoder(v437, v447, 4, 0, 0);
              objc_msgSend_setBytes_length_atIndex_(v437);
              v586[0] = v440;
              v586[1] = v444;
              v586[2] = v445 * v446;
              v585[0] = v427;
              v585[1] = v434;
              v585[2] = 1;
              [v437 dispatchThreadgroups:v586 threadsPerThreadgroup:v585];
              MPSLibrary::ReleaseComputeState();
              return 0;
            }
          }

          [v437 setBuffer:objc_msgSend(v448 offset:"buffer") atIndex:{*(*(v447 + 8) + 80 * v645 + 64), 26}];
LABEL_440:
          objc_msgSend_setBytes_length_atIndex_(v437);
          goto LABEL_441;
        }

LABEL_430:
        v444 = (v441 + v434 - 1) / v434;
        goto LABEL_433;
      }
    }

    v440 = v431;
    v434 = 1;
    goto LABEL_430;
  }

  return v422;
}