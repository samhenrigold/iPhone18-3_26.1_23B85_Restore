void sub_239AE281C(_Unwind_Exception *a1)
{
  if (STACK[0x6A0])
  {
    operator delete(STACK[0x6A0]);
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

  operator delete(v2);
  if (!v1)
  {
LABEL_5:
    MPSAutoCache::~MPSAutoCache(&STACK[0xADB8]);
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(v1);
  goto LABEL_5;
}

uint64_t EncodeStencil(int32x4_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[12].i64[0];
  v7 = a1[12].i64[1];
  v96 = a1[10];
  v97 = a1[11];
  v98 = a1[14];
  v99 = a1[15];
  v9 = a1[9].i32[1];
  v11 = a1[13].i64[0];
  v10 = a1[13].i64[1];
  v12 = a1[9].i32[0];
  v13 = a1[9].i32[2];
  v14 = [*(a4 + 232) graph];
  v15 = **(v14 + 56);
  if (*(*(v14 + 56) + 8) == v15)
  {
    goto LABEL_156;
  }

  v17 = *(*v15 + 8);
  v16 = *v17;
  v18 = *(v17 + 8) - *v17;
  if (!v18 || (v95 = v12, v18 <= 8))
  {
LABEL_155:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v19 = *v16;
  v94 = v16[1];
  v20 = [*(a4 + 232) graph];
  v21 = **(v20 + 56);
  if (*(*(v20 + 56) + 8) == v21)
  {
LABEL_156:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v23 = *(*v21 + 24);
  v22 = *v23;
  if (*(v23 + 8) == *v23)
  {
    goto LABEL_155;
  }

  v88 = v19;
  v89 = v11;
  v90 = v10;
  v91 = v8;
  v92 = a1;
  v93 = v7;
  v84 = a2;
  v24 = *v22;
  v25 = 0;
  if ([*(a4 + 16) count])
  {
    v26 = 0;
    v27 = 5;
    do
    {
      v29 = [objc_msgSend(*(a4 + 16) objectAtIndexedSubscript:{v26), "dataType"}];
      if (v29 > 285212703)
      {
        if (v29 <= 536870915)
        {
          if (v29 > 301989895)
          {
            if (v29 == 301989896)
            {
              v28 = 16;
            }

            else
            {
              if (v29 != 335544328)
              {
                goto LABEL_52;
              }

              v28 = 17;
            }
          }

          else if (v29 == 285212704)
          {
            v28 = 13;
          }

          else
          {
            if (v29 != 285212736)
            {
              goto LABEL_52;
            }

            v28 = 14;
          }
        }

        else if (v29 <= 536870927)
        {
          if (v29 == 536870916)
          {
            v28 = 0;
          }

          else
          {
            if (v29 != 536870920)
            {
LABEL_52:
              v28 = 18;
              goto LABEL_9;
            }

            v28 = 1;
          }
        }

        else
        {
          switch(v29)
          {
            case 536870928:
              v28 = 2;
              break;
            case 536870944:
              v28 = 3;
              break;
            case 536870976:
              v28 = 4;
              break;
            default:
              goto LABEL_52;
          }
        }
      }

      else if (v29 <= 31)
      {
        if (v29 > 7)
        {
          if (v29 == 8)
          {
            v28 = 6;
          }

          else
          {
            if (v29 != 16)
            {
              goto LABEL_52;
            }

            v28 = 7;
          }
        }

        else if (v29 == -1879048176)
        {
          v28 = 12;
        }

        else
        {
          if (v29 != 4)
          {
            goto LABEL_52;
          }

          v28 = 5;
        }
      }

      else if (v29 <= 268435463)
      {
        if (v29 == 32)
        {
          v28 = 8;
        }

        else
        {
          if (v29 != 64)
          {
            goto LABEL_52;
          }

          v28 = 9;
        }
      }

      else
      {
        switch(v29)
        {
          case 268435464:
            v28 = 15;
            break;
          case 268435472:
            v28 = 10;
            break;
          case 268435488:
            v28 = 11;
            break;
          default:
            goto LABEL_52;
        }
      }

LABEL_9:
      ++v26;
      v25 |= (v28 << v27);
      v27 += 5;
    }

    while (v26 < [*(a4 + 16) count]);
  }

  v30 = v24[2];
  if (v30 > 285212703)
  {
    v31 = v95;
    v32 = v94;
    if (v30 <= 536870915)
    {
      if (v30 > 301989895)
      {
        if (v30 == 301989896)
        {
          v33 = v24;
          v34 = 16;
          goto LABEL_97;
        }

        if (v30 == 335544328)
        {
          v33 = v24;
          v34 = 17;
          goto LABEL_97;
        }
      }

      else
      {
        if (v30 == 285212704)
        {
          v33 = v24;
          v34 = 13;
          goto LABEL_97;
        }

        if (v30 == 285212736)
        {
          v33 = v24;
          v34 = 14;
          goto LABEL_97;
        }
      }
    }

    else if (v30 <= 536870927)
    {
      if (v30 == 536870916)
      {
        v33 = v24;
        v34 = 0;
        goto LABEL_97;
      }

      if (v30 == 536870920)
      {
        v33 = v24;
        v34 = 1;
        goto LABEL_97;
      }
    }

    else
    {
      switch(v30)
      {
        case 536870928:
          v33 = v24;
          v34 = 2;
          goto LABEL_97;
        case 536870944:
          v33 = v24;
          v34 = 3;
          goto LABEL_97;
        case 536870976:
          v33 = v24;
          v34 = 4;
          goto LABEL_97;
      }
    }
  }

  else
  {
    v31 = v95;
    v32 = v94;
    if (v30 <= 31)
    {
      if (v30 > 7)
      {
        if (v30 == 8)
        {
          v33 = v24;
          v34 = 6;
          goto LABEL_97;
        }

        if (v30 == 16)
        {
          v33 = v24;
          v34 = 7;
          goto LABEL_97;
        }
      }

      else
      {
        if (v30 == -1879048176)
        {
          v33 = v24;
          v34 = 12;
          goto LABEL_97;
        }

        if (v30 == 4)
        {
          v33 = v24;
          v34 = 5;
          goto LABEL_97;
        }
      }
    }

    else if (v30 <= 268435463)
    {
      if (v30 == 32)
      {
        v33 = v24;
        v34 = 8;
        goto LABEL_97;
      }

      if (v30 == 64)
      {
        v33 = v24;
        v34 = 9;
        goto LABEL_97;
      }
    }

    else
    {
      switch(v30)
      {
        case 268435464:
          v33 = v24;
          v34 = 15;
          goto LABEL_97;
        case 268435472:
          v33 = v24;
          v34 = 10;
          goto LABEL_97;
        case 268435488:
          v33 = v24;
          v34 = 11;
          goto LABEL_97;
      }
    }
  }

  v33 = v24;
  v34 = 18;
LABEL_97:
  *&v35 = -1;
  *(&v35 + 1) = -1;
  v119 = v35;
  v120 = v35;
  v116 = -1;
  v118 = v35;
  v115 = v35;
  v117 = v34 | v25;
  *&v120 = [*(a4 + 16) count] | 0x10000;
  DimensionSize = BaseTensor::GetDimensionSize(v32);
  v37 = BaseTensor::GetDimensionSize(v32);
  v38 = BaseTensor::GetDimensionSize(v32);
  v39 = BaseTensor::GetDimensionSize(v32);
  v40 = v39;
  v86 = DimensionSize;
  v48 = v39 < 9 && v90 < 5 && v38 < 9 && v89 < 5 && v37 < 9 && v93 < 5 && DimensionSize < 9 && v91 < 5;
  LODWORD(v49) = ((v93 << 18) + 786432) & 0xC0000 | ((v91 << 16) + 196608) & 0x30000 | ((v89 << 20) + 3145728) & 0x300000 | ((v90 << 22) + 12582912) & 0xC00000 | (2 * (v9 & 7)) | ((v31 & 0xF) << 24) | (16 * DimensionSize + 112) & 0x70 | ((v37 << 7) + 896) & 0x380 | ((v38 << 10) + 7168) & 0x1C00 | ((v39 << 13) - 0x2000) & 0xE000 | v48;
  if (v99.i64[1] > 1uLL || v99.i64[0] > 1uLL || v98.i64[1] > 1uLL || v98.i64[0] > 1uLL)
  {
    v49 = v49 | 0x10000000;
  }

  else
  {
    v49 = v49;
  }

  v116 = v49;
  v53 = v33;
  v54 = BaseTensor::GetDimensionSize(v33);
  v55 = BaseTensor::GetDimensionSize(v33);
  v56 = BaseTensor::GetDimensionSize(v53);
  v57 = BaseTensor::GetDimensionSize(v53);
  v82 = v54;
  v83 = v55;
  *&v58 = __PAIR64__(v55, v54);
  v85 = v56;
  *(&v58 + 1) = __PAIR64__(v57, v56);
  v87 = v58;
  v59 = BaseTensor::GetDimensionSize(v88);
  v60 = BaseTensor::GetDimensionSize(v88);
  v61 = BaseTensor::GetDimensionSize(v88);
  v62 = BaseTensor::GetDimensionSize(v88);
  *&v63 = __PAIR64__(v60, v59);
  *(&v63 + 1) = __PAIR64__(v62, v61);
  v102 = v63;
  v103 = v87;
  v104 = 0u;
  v105 = 0u;
  v106 = vuzp1q_s32(v96, v97);
  *&v64 = __PAIR64__(v37, v86);
  *(&v64 + 1) = __PAIR64__(v40, v38);
  *&v65 = __PAIR64__(v93, v91);
  v107 = v64;
  *(&v65 + 1) = __PAIR64__(v90, v89);
  v108 = v65;
  v109 = vuzp1q_s32(v98, v99);
  v110 = v13;
  v111 = 0;
  v113 = 0;
  v112 = 0;
  v114 = 0;
  v80 = *(v92->i64 + *MEMORY[0x277CD7360]);
  v81 = *(v92->i64 + *MEMORY[0x277CD7368]);
  v79 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v67 = PipelineStateForMPSKey;
  [v84 setComputePipelineState:{PipelineStateForMPSKey, v79, v80, v81, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v68 = [v67 threadExecutionWidth];
  if (v68 <= 1)
  {
    v69 = 1;
  }

  else
  {
    v69 = v68;
  }

  if (v69 > v82 || v82 <= 3 && v69 > v83)
  {
    if (v68 <= 1)
    {
      v69 = 1;
    }

    else
    {
      v69 >>= 1;
    }
  }

  v70 = [v67 maxTotalThreadsPerThreadgroup];
  v71 = 256;
  if (v70 < 0x100)
  {
    v71 = v70;
  }

  if (v71 <= 2 * v69)
  {
    v72 = 1;
    v73 = v83;
    if (v69 <= v82)
    {
      goto LABEL_147;
    }

LABEL_150:
    v74 = v85;
    if (v69 <= v73 || v69 <= v85)
    {
      v75 = v72;
      v72 = v69;
      v69 = 1;
    }

    else
    {
      v75 = 1;
    }

    goto LABEL_154;
  }

  v72 = v71 / v69;
  v73 = v83;
  if (v69 > v82)
  {
    goto LABEL_150;
  }

LABEL_147:
  v74 = v85;
  v75 = 1;
LABEL_154:
  v77 = (v73 + v72 - 1) / v72;
  v78 = (v74 + v75 - 1) / v75;
  MPSSetNDArraysOnComputeEncoder(v84, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v84);
  v101[0] = (v82 + v69 - 1) / v69;
  v101[1] = v77;
  v101[2] = v78;
  v100[0] = v69;
  v100[1] = v72;
  v100[2] = v75;
  [v84 dispatchThreadgroups:v101 threadsPerThreadgroup:v100];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodePooling(uint64_t a1, void *a2, uint64_t a3, id *a4)
{
  v4 = a1;
  v5 = *(a1 + *MEMORY[0x277CD7350]);
  v6 = *(a1 + 696);
  v285 = *(a1 + 680);
  v286 = v6;
  v7 = *(a1 + 760);
  v283 = *(a1 + 744);
  v284 = v7;
  v8 = *(a1 + 728);
  v281 = *(a1 + 712);
  v282 = v8;
  v9 = *(a1 + 792);
  v10 = *(a1 + 668);
  v11 = *(a1 + 672);
  v279 = *(a1 + 776);
  v280 = v9;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 0x10) != 0 && [a4[2] count])
  {
    v273 = v5;
    v12 = [a4[2] objectAtIndexedSubscript:0];
    v13 = a4[26];
    if ((v10 - 1) > 4)
    {
      v14 = "Default";
    }

    else
    {
      v14 = off_278B0E788[v10 - 1];
    }

    v15 = *MEMORY[0x277CD73D0];
    v16 = (v12 + v15);
    v17 = MEMORY[0x277CD73C8];
    v18 = &v13[v15];
    v267 = v16[3];
    v264 = v16[2];
    v259 = *v16;
    v261 = v16[1];
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v22 = *v18;
    v21 = *(v18 + 1);
    v23 = dataTypeToString(*(v12 + *MEMORY[0x277CD73C8]));
    v24 = dataTypeToString(*&v13[*v17]);
    v4 = a1;
    MPSKernel_LogInfo(a1, 3uLL, "-test MPSNDArrayPoolingTest -srcShapes [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s -dstDataTypes %s -strides [%u,%u,%u,%u] -kernelPooling [%u,%u,%u,%u] -dilation [%u,%u,%u,%u] -poolingMode %s\n", v267, v264, v261, v259, v19, v20, v21, v22, v23, v24, DWORD2(v284), v284, DWORD2(v283), v283, DWORD2(v286), v286, DWORD2(v285), v285, DWORD2(v280), v280, DWORD2(v279), v279, v14);
    v5 = v273;
  }

  if (v11 && v10 != 1 && v10 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  MEMORY[0x23EE7C450](v278, a3, 0);
  v25 = [a4[29] graph];
  v26 = **(v25 + 56);
  if (*(*(v25 + 56) + 8) == v26)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = *(*v26 + 8);
  v27 = *v28;
  if (*(v28 + 8) == *v28)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = *v27;
  v30 = [a4[29] graph];
  v31 = **(v30 + 56);
  if (*(*(v30 + 56) + 8) == v31)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = *(*v31 + 24);
  v32 = *v33;
  if (*(v33 + 8) == *v33)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = *v32;
  v256 = *(v29 + 2);
  DimensionSize = BaseTensor::GetDimensionSize(*v32);
  v36 = BaseTensor::GetDimensionSize(v34);
  v37 = BaseTensor::GetDimensionSize(v34);
  v38 = BaseTensor::GetDimensionSize(v34);
  if (*(v4 + 664) == 1)
  {
    v39 = *(a4[26] + *MEMORY[0x277CD73D0]);
  }

  else
  {
    v39.i64[0] = __PAIR64__(v36, DimensionSize);
    v39.i64[1] = __PAIR64__(v38, v37);
  }

  v252 = v39;
  v40 = BaseTensor::GetDimensionSize(v29);
  v41 = BaseTensor::GetDimensionSize(v29);
  v42 = BaseTensor::GetDimensionSize(v29);
  v43 = BaseTensor::GetDimensionSize(v29);
  v44 = v284;
  v45 = *(v5 + 1482) << 16;
  v46 = 1;
  if (*(&v284 + 1) <= 0x10uLL)
  {
    v47 = 1;
  }

  else
  {
    v47 = 2;
  }

  if (v45 <= 0x200000)
  {
    v48 = v47;
  }

  else
  {
    v48 = v47 + 1;
  }

  if (v284 <= 0x10)
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  if (v45 <= 0x200000)
  {
    v50 = v49;
  }

  else
  {
    v50 = v49 + 1;
  }

  v51 = *(&v283 + 1);
  v52 = v283;
  if (*(&v283 + 1) <= 0x10uLL)
  {
    v53 = 1;
  }

  else
  {
    v53 = 2;
  }

  if (v45 <= 0x200000)
  {
    v54 = v53;
  }

  else
  {
    v54 = v53 + 1;
  }

  if (v283 > 0x10)
  {
    v46 = 2;
  }

  v56 = *(&v285 + 1);
  v55 = v285;
  v57 = *(&v286 + 1);
  v58 = v286;
  v59 = *(&v281 + 1);
  v60 = v281;
  v62 = DWORD2(v282);
  v61 = v282;
  v255 = *(&v279 + 1);
  v260 = v279;
  v245 = *(&v280 + 1);
  v246 = v280;
  if (v45 <= 0x200000)
  {
    v63 = v46;
  }

  else
  {
    v63 = v46 + 1;
  }

  v64 = v283 << v63;
  _CF = v285 > 8 && v285 >= v64;
  v66 = _CF;
  v68 = *(&v285 + 1) > 8uLL && *(&v285 + 1) >= *(&v283 + 1) << v54;
  v70 = v286 > 8 && v286 >= v284 << v50;
  v262 = *(&v284 + 1);
  v72 = *(&v286 + 1) > 8uLL && *(&v286 + 1) >= *(&v284 + 1) << v48;
  v73.i64[0] = __PAIR64__(v41, v40);
  v73.i64[1] = __PAIR64__(v43, v42);
  v268 = v73;
  v74 = *(a1 + 672);
  if (!v74)
  {
    TempBuffer = 0;
    if (*(a1 + 668) == 5 || !((*(&v285 + 1) * v285 * v286 * *(&v286 + 1) > 0xFFuLL) | ((v72 || v70) | v68 | v66) & 1))
    {
      v241 = DWORD2(v282);
      v242 = v282;
      v243 = v281;
      v247 = *(&v285 + 1);
      v248 = v285;
      v249 = v283;
      v250 = v284;
      v254 = *(&v283 + 1);
      v274 = v252;
      v251 = 0;
      v258 = 0;
      goto LABEL_116;
    }

    if (v66)
    {
      v60 = 0;
      v76 = 0;
      v77 = v252;
      v77.i32[0] = v40;
      v274 = v77;
      v55 = 1;
      v52 = 1;
      v260 = 1;
      v251 = 1;
      if (!v68)
      {
LABEL_72:
        if (*(&v285 + 1) <= 1uLL && !*(&v281 + 1) && *(&v283 + 1) == 1 && v252.i32[1] == v41)
        {
          v59 = 0;
          v51 = 1;
          v258 = v251;
          if (v70)
          {
            goto LABEL_94;
          }

LABEL_85:
          if (v286 > 1 || v282 || v284 != 1 || v252.i32[2] != v42)
          {
            if (v72)
            {
              v242 = v282;
              LODWORD(v243) = v60;
              DWORD2(v243) = v59;
              v247 = v56;
              v248 = v55;
              v249 = v52;
              v250 = v284;
              v254 = v51;
              v62 = 0;
              v258 |= 8u;
              ++v251;
              v78 = v274;
              v78.i32[3] = v43;
              v274 = v78;
LABEL_98:
              v262 = 1;
              v57 = 1;
              v245 = 1;
LABEL_115:
              TempBuffer = MPSAutoCache::GetTempBuffer(v278, 4 * (v274.i32[0] * v274.i32[1] * v274.i32[2] * v274.i32[3]), 0);
              v241 = v62;
              v74 = *(a1 + 672);
              goto LABEL_116;
            }

            v76 = 1;
            if (*(&v286 + 1) > 1uLL)
            {
              goto LABEL_114;
            }

            goto LABEL_102;
          }

LABEL_95:
          if (v72)
          {
            v258 |= 8u;
            ++v251;
            v81 = v274;
            v81.i32[3] = v43;
            v274 = v81;
            if (v76)
            {
              LODWORD(v243) = v60;
              DWORD2(v243) = v59;
              v247 = v56;
              v248 = v55;
              v254 = v51;
              v242 = 0;
              v62 = 0;
              v249 = v52;
              v250 = 1;
              goto LABEL_98;
            }

LABEL_330:
            v147 = 0;
            TempBuffer = 0;
            if (!v258)
            {
              goto LABEL_468;
            }

            goto LABEL_409;
          }

          v61 = 0;
          v44 = 1;
          if (*(&v286 + 1) > 1uLL)
          {
LABEL_114:
            LODWORD(v243) = v60;
            DWORD2(v243) = v59;
            v249 = v52;
            v250 = v44;
            v254 = v51;
            v247 = v56;
            v248 = v55;
            v242 = v61;
            if (!v258)
            {
              v241 = v62;
              v74 = 0;
              v258 = 0;
              TempBuffer = 0;
              goto LABEL_116;
            }

            goto LABEL_115;
          }

LABEL_102:
          if (!*(&v282 + 1))
          {
            v82 = *(&v284 + 1);
            _ZF = *(&v284 + 1) == 1 && v252.i32[3] == v43;
            if (_ZF)
            {
              v84 = v76;
            }

            else
            {
              v84 = 1;
            }

            if (_ZF)
            {
              v82 = 1;
            }

            v262 = v82;
            if ((v84 & 1) == 0)
            {
              goto LABEL_330;
            }

            v62 = 0;
          }

          goto LABEL_114;
        }

        v76 = 1;
        v258 = v251;
        if (!v70)
        {
          goto LABEL_85;
        }

LABEL_94:
        v258 |= 4u;
        ++v251;
        v80 = v274;
        v80.i32[2] = v42;
        v274 = v80;
        v58 = 1;
        v246 = 1;
        goto LABEL_95;
      }
    }

    else
    {
      if (v285 <= 1 && !v281 && v283 == 1 && v252.i32[0] == v40)
      {
        v60 = 0;
        v76 = 0;
        v251 = 0;
        v52 = 1;
      }

      else
      {
        v251 = 0;
        v76 = 1;
      }

      v274 = v252;
      if (!v68)
      {
        goto LABEL_72;
      }
    }

    v59 = 0;
    v258 = v251++ | 2;
    v79 = v274;
    v79.i32[1] = v41;
    v274 = v79;
    v51 = 1;
    v56 = 1;
    v255 = 1;
    if (!v70)
    {
      goto LABEL_85;
    }

    goto LABEL_94;
  }

  v241 = DWORD2(v282);
  v242 = v282;
  v243 = v281;
  v247 = *(&v285 + 1);
  v248 = v285;
  v249 = v283;
  v250 = v284;
  v254 = *(&v283 + 1);
  v251 = 0;
  v258 = 0;
  TempBuffer = 0;
  v274 = v252;
LABEL_116:
  v244 = *(a1 + *MEMORY[0x277CD7350]);
  v85 = *(a1 + 668);
  v86 = *(a1 + 676);
  *&v87 = -1;
  *(&v87 + 1) = -1;
  v308 = v87;
  v309 = v87;
  v306 = 0xFFFFFFFFFFFFFFFFLL;
  v307 = v87;
  v305 = v87;
  *&v309 = [a4[2] count] | 0x10000;
  v88 = v260 > 1;
  if (v260 < 2)
  {
    v89 = v254;
    v88 = v255 > 1;
    v90 = v250;
    v92 = v247;
    v91 = v248;
    if (v255 <= 1)
    {
      v88 = v246 > 1 || v245 > 1;
    }
  }

  else
  {
    v89 = v254;
    v90 = v250;
    v92 = v247;
    v91 = v248;
  }

  if ((v249 < 2 || v91 >= 5 || (v274.i32[0] <= 0xFu ? (v94 = v91 >= 3) : (v94 = 0), v94)) && (v89 < 2 || v92 > 4 || (v274.i32[1] <= 0xFu ? (v95 = v92 >= 3) : (v95 = 0), v95)) && (v58 < 5 ? (v96 = v90 > 1) : (v96 = 0), !v96 && v57 < 2))
  {
    v97 = v41;
    v98 = v40;
    v99 = !v88;
  }

  else
  {
    v97 = v41;
    v98 = v40;
    v99 = 0;
  }

  v102 = v249 < 3 && v89 < 3 && v90 < 3;
  v103 = v102 & v99;
  v104 = v92 * v91;
  v105 = v92 * v91 * v58;
  v106 = v274.u32[0];
  v265 = v274.u32[1];
  v107 = v274.i32[0] * v274.i32[1];
  v108 = v274.i32[0] * v274.i32[1] * v274.i32[2];
  if ((v108 * v274.i32[3]) <= 0x1F || v249 * v89 * v90 * v105 >= 0xD9)
  {
    v103 = 0;
  }

  v111 = v249 * v89 > 0xF || v107 < 4;
  v112 = v104 >= 0x40 && v111;
  if (v104 >= 0x40)
  {
    v103 &= !v111;
  }

  v114 = v274.i32[2] < 8u || v107 > 0x7FF;
  v122 = v57 < 9 && v262 < 5 && v58 < 9 && v90 < 5 && v92 < 9 && v89 < 5 && v91 < 9 && v249 < 5;
  v239 = v58 - 1;
  v123 = v58 == 1;
  if (v88)
  {
    v124 = 0x2000000;
  }

  else
  {
    v124 = 0;
  }

  v240 = v114 && v123;
  if (v114 && v123)
  {
    v125 = 0x4000000;
  }

  else
  {
    v125 = 0;
  }

  v308 = 0uLL;
  v126 = 1.0;
  *&v306 = v122 | ((v262 << 22) + 12582912) & 0xC00000 | (16 * v91 + 112) & 0x70 | ((v90 << 20) + 3145728) & 0x300000 | ((v89 << 18) + 786432) & 0xC0000 | ((v249 << 16) + 196608) & 0x30000 | ((v92 << 7) + 896) & 0x380 | ((v58 << 10) + 7168) & 0x1C00 | ((v57 << 13) - 0x2000) & 0xE000 | ((v256 == 268435472) << 27) | (v74 << 28) | v125 & 0xFFFFFFF1 | (2 * (v85 & 7)) | (((v86 & 0xDFFFFFFF) == 32) << 24) | v124;
  if ((v85 & 0xFFFFFFFE) == 2)
  {
    v126 = 1.0 / (v57 * v105);
  }

  LODWORD(v127) = 1;
  LODWORD(v128) = 1;
  DWORD1(v128) = v98;
  DWORD2(v128) = v97 * v98;
  HIDWORD(v128) = v42 * v97 * v98;
  DWORD1(v127) = v274.i32[0];
  *(&v127 + 1) = __PAIR64__(v108, v107);
  *&v129 = __PAIR64__(DWORD2(v243), v243);
  *(&v129 + 1) = __PAIR64__(v241, v242);
  *&v130 = __PAIR64__(v92, v91);
  *(&v130 + 1) = __PAIR64__(v57, v58);
  v295 = v128;
  v296 = v127;
  *&v127 = __PAIR64__(v89, v249);
  *(&v127 + 1) = __PAIR64__(v262, v90);
  *&v128 = __PAIR64__(v255, v260);
  v297 = v129;
  v298 = v130;
  *(&v128 + 1) = __PAIR64__(v245, v246);
  v293 = v268;
  v294 = v274;
  v299 = v127;
  v300 = v128;
  v301 = v126;
  v302 = 0;
  v303 = 0uLL;
  v304 = 0;
  if (*(a1 + 664) == 1)
  {
    v131 = a4[26];
    v132 = *&v131[*MEMORY[0x277CD7400]];
    v133 = *&v131[*MEMORY[0x277CD7410]];
    v134 = *&v131[*MEMORY[0x277CD73C8]] >> 3;
    if (v132 != v134 * v133)
    {
      LODWORD(v135) = 1;
      DWORD1(v135) = v132 / v134;
      DWORD2(v135) = v132 / v134 * v274.i32[1];
      HIDWORD(v135) = DWORD2(v135) * v274.i32[2];
      v296 = v135;
    }
  }

  v136 = v122 & v103;
  if (v74)
  {
    v137 = v274.u32[2];
    v138 = 0;
    v136 = (*(v244 + 1472) < 24) & v136;
  }

  else
  {
    v138 = v112;
    v137 = v274.u32[2];
  }

  v237 = 0;
  v238 = 0;
  v235 = *(a1 + *MEMORY[0x277CD7360]);
  v236 = *(a1 + *MEMORY[0x277CD7368]);
  v234 = a4[29];
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    [a2 setComputePipelineState:{v234, v235, v236, 0, 0}];
    MPSLibrary::ReleaseMPSKey();
    v139 = [PipelineStateForMPSKey threadExecutionWidth];
    v140 = v139;
    if (v139 <= 1)
    {
      v141 = 1;
    }

    else
    {
      v141 = v139;
    }

    if (v141 >= 0x20)
    {
      v142 = 32;
    }

    else
    {
      v142 = v141;
    }

    if (v142 > v274.u32[0] || (v143 = v142, v274.i32[0] <= 3u) && (v143 = v142, v142 > v274.u32[1]))
    {
      if (v139 <= 1)
      {
        v143 = 1;
      }

      else
      {
        v143 = v142 >> 1;
      }
    }

    v144 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v145 = 256;
    if (v144 < 0x100)
    {
      v145 = v144;
    }

    if (v145 <= 2 * v143)
    {
      v146 = 1;
    }

    else
    {
      v146 = v145 / v143;
    }

    v148 = v137;
    v149 = 4 * v142;
    v151 = v142 > (2 * v274.i32[0]) || v149 < v274.u32[0] || v149 > v145;
    if (!v151 && v274.u8[0] % v142)
    {
      v146 = 4;
      v143 = v274.u32[0];
    }

    if (v143 <= v274.u32[0] || (v143 > v274.u32[1] ? (v152 = v143 > v137) : (v152 = 0), v152))
    {
      v157 = v274.u32[1];
      if (v274.u32[1] <= 1uLL)
      {
        v157 = 1;
      }

      if (v146 <= v157)
      {
        v154 = v146;
      }

      else
      {
        v154 = v146;
        do
        {
          if (v154 * v143 < 2 * v142)
          {
            break;
          }

          v154 >>= 1;
        }

        while (v154 > v157);
      }

      if (v274.u32[0] <= 1uLL)
      {
        v158 = 1;
      }

      else
      {
        v158 = v274.u32[0];
      }

      for (; v143 > v158; v143 >>= 1)
      {
        if (v143 * v154 < 2 * v142)
        {
          break;
        }
      }

      if (v274.i32[1] <= 0xFu && v274.u32[1] % v154 && v143 * v274.u32[1] <= v145)
      {
        v154 = v274.u32[1];
      }

      v146 = 1;
      if (!v136)
      {
        goto LABEL_253;
      }
    }

    else
    {
      v153 = 2 * v142;
      if (v137 > 2 * v142)
      {
        v153 = v137;
      }

      do
      {
        v154 = v143;
        v143 >>= 1;
      }

      while (v154 >= v153);
      v143 = 1;
      if (!v136)
      {
LABEL_253:
        if (!v138)
        {
          v162 = ((v148 * v274.i32[3]) + v146 - 1) / v146;
          v265 = (v274.u32[1] + v154 - 1) / v154;
          v106 = (v274.u32[0] + v143 - 1) / v143;
          goto LABEL_404;
        }

        if (v248 >= v142)
        {
          v155 = v142;
        }

        else
        {
          v155 = v248;
        }

        if (v145 <= 2 * v155)
        {
          v156 = 1;
        }

        else
        {
          v156 = v145 / v155;
        }

        v168 = v247 >> 2;
        if (v247 >> 2 <= 1)
        {
          v168 = 1;
        }

        if (v247 < v156)
        {
          v156 = v168;
        }

        v169 = v156 * 2 * v155 > v145 || v240;
        v170 = 1;
        if (!v169)
        {
          v170 = 2;
        }

        v171 = 32000;
        if (*(v244 + 1472) < 7)
        {
          v171 = 16000;
        }

        if (v248 < 0x11)
        {
          v154 = 1;
        }

        else
        {
          v154 = v156;
        }

        if (v248 >= 0x11)
        {
          v143 = v155;
        }

        else
        {
          v143 = v248;
        }

        if (v248 < 0x11)
        {
          v170 = 16;
        }

        v172 = v154 * v143;
        v173 = !v169;
        if (v248 < 0x11)
        {
          v173 = 4;
        }

        v174 = (4 * (v172 << v173) + 15) & 0xFFFFFFFFFFFFFFF0;
        if (v174 <= v171)
        {
          v175 = v274.u32[3];
        }

        else
        {
          v175 = v274.u32[3];
          if (v170 < 2)
          {
            v170 = 1;
          }

          else
          {
            v170 >>= (v154 << v173) * v143 >= 2 * v142;
          }

          if (v154 >= 2)
          {
            if (v170 * v172 >= 2 * v142)
            {
              v154 >>= 1;
            }

            else
            {
              v154 = v156;
            }
          }

          if (v143 >= 2)
          {
            v143 >>= v170 * v143 * v154 >= 2 * v142;
          }
        }

        if (v240)
        {
          v146 = 1;
        }

        else
        {
          v146 = v170;
        }

        v195 = (v146 + v148 - 1) / v146;
        v162 = v195 * v175;
        HIDWORD(v303) = v195;
        *&v196 = 1.0 / v195;
        v304 = v196;
LABEL_403:
        [a2 setThreadgroupMemoryLength:v174 atIndex:0];
LABEL_404:
        MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
        objc_msgSend_setBytes_length_atIndex_(a2);
        if (*(a1 + 664) == 1)
        {
          [a2 setBuffer:objc_msgSend(a4[26] offset:"buffer") atIndex:{0, 28}];
        }

        if (TempBuffer)
        {
          [a2 setBuffer:TempBuffer offset:0 atIndex:27];
        }

        v290 = v106;
        v291 = v265;
        v292 = v162;
        v287 = v143;
        v288 = v154;
        v289 = v146;
        [a2 dispatchThreadgroups:&v290 threadsPerThreadgroup:&v287];
        MPSLibrary::ReleaseComputeState();
        v147 = 0;
        v268 = v274;
        if (!v258)
        {
          goto LABEL_468;
        }

        goto LABEL_409;
      }
    }

    if (v142 <= v274.u32[0] && (v274.i32[0] > 3u || v142 <= v274.u32[1]))
    {
      v160 = v142 >> 1;
      v161 = v142;
    }

    else
    {
      v160 = v142 >> 1;
      if (v140 <= 1)
      {
        v161 = 1;
      }

      else
      {
        v161 = v142 >> 1;
      }
    }

    if (v140 <= 1)
    {
      v160 = 1;
    }

    if (v274.i32[0] > 0x3Fu || v249 == 1)
    {
      v161 = v160;
    }

    if (v145 <= 2 * v161)
    {
      v164 = 1;
      if (v107 <= 0x7FF && !v240)
      {
LABEL_297:
        if (v107 > 0x18F)
        {
          v167 = 8;
          v164 = 4;
          v161 = 4;
          v166 = v239;
          if (v274.u32[0] >= 4uLL)
          {
            goto LABEL_338;
          }
        }

        else
        {
          v161 = (v274.u32[0] + 1) >> 1;
          v164 = (v274.u32[1] + 1) >> 1;
          v165 = v161 * v164;
          v166 = v239;
          if (v142 < 2 * v165 || v142 > v148)
          {
            _CF = v145 >= 8 * v165;
            v167 = 2;
            if (_CF)
            {
              v167 = 8;
            }

            if (v161 <= v274.u32[0])
            {
              goto LABEL_338;
            }
          }

          else
          {
            v167 = v142;
            if (v161 <= v274.u32[0])
            {
              goto LABEL_338;
            }
          }
        }

LABEL_336:
        v176 = 1;
        if (v161 <= v274.u32[1] || v161 <= v148)
        {
          v167 = v164;
          goto LABEL_346;
        }

LABEL_338:
        v178 = v248 > 1 && v161 > 0x1F;
        v176 = v161 >> v178;
        v161 = v164;
LABEL_346:
        v179 = v247 - 1;
        v181 = v247 > 1 && v161 > 0x1F;
        v182 = v161 >> v181;
        v183 = v182 > 1;
        if (v182 < v274.u32[1])
        {
          v154 = v182;
          v184 = v176 > 1;
          if (v176 < v274.u32[0])
          {
LABEL_368:
            v143 = v176;
LABEL_369:
            if (v240)
            {
              v185 = 1;
            }

            else
            {
              v185 = v167;
            }

            if (*(v244 + 1472) >= 7)
            {
              v186 = 32000;
            }

            else
            {
              v186 = 16000;
            }

            v187 = 1;
            if (v256 != 268435472)
            {
              v187 = 2;
            }

            if (((((((v179 + 2 * v254 * v154) * (v248 - 1 + 2 * v249 * v143)) * (v166 + v185 * v250)) << v187) + 15) & 0xFFFFFFFFFFFFFFF0) <= v186)
            {
              v188 = v274.u32[3];
            }

            else
            {
              v188 = v274.u32[3];
              if (v185 >= 2)
              {
                v185 >>= v154 * v185 * v143 >= 2 * v142;
              }

              if (v183)
              {
                v154 >>= v143 * v154 * v185 >= 2 * v142;
              }

              if (v184)
              {
                v143 >>= v185 * v143 * v154 >= 2 * v142;
              }
            }

            if (v240)
            {
              v146 = 1;
            }

            else
            {
              v146 = v185;
            }

            v106 = (v274.u32[0] + 2 * v143 - 1) / (2 * v143);
            v265 = (v274.u32[1] + 2 * v154 - 1) / (2 * v154);
            v189 = (v146 + v148 - 1) / v146;
            v162 = v189 * v188;
            v190.f32[0] = (v248 - 1 + 2 * v143 * v249);
            *&v302 = v190.f32[0];
            *(&v302 + 1) = (v179 + 2 * v154 * v254);
            *&v303 = (v166 + v146 * v250);
            v191 = *(&v302 + 1) * v190.f32[0];
            v190.f32[1] = *(&v302 + 1) * v190.f32[0];
            __asm { FMOV            V3.2S, #1.0 }

            *(&v303 + 4) = vdiv_f32(_D3, v190);
            HIDWORD(v303) = v189;
            v190.f32[0] = 1.0 / v189;
            v304 = v190.i32[0];
            v174 = (((v191 * *&v303) << v187) + 15) & 0xFFFFFFFFFFFFFFF0;
            goto LABEL_403;
          }
        }

        else if (v182 < 2)
        {
          v154 = v182;
LABEL_361:
          v184 = v176 > 1;
          if (v176 < v274.u32[0])
          {
            goto LABEL_368;
          }
        }

        else
        {
          while (v182 * v176 >= 2 * v142)
          {
            v154 = v182 >> 1;
            v183 = v182 > 3;
            if (v182 >= 4)
            {
              v182 >>= 1;
              if (v154 >= v274.u32[1])
              {
                continue;
              }
            }

            goto LABEL_361;
          }

          v183 = 1;
          v154 = v182;
          v184 = v176 > 1;
          if (v176 < v274.u32[0])
          {
            goto LABEL_368;
          }
        }

        if (v176 >= 2)
        {
          while (v176 * v154 >= 2 * v142)
          {
            v143 = v176 >> 1;
            v184 = v176 > 3;
            if (v176 >= 4)
            {
              v176 >>= 1;
              if (v143 >= v274.u32[0])
              {
                continue;
              }
            }

            goto LABEL_369;
          }

          v184 = 1;
        }

        goto LABEL_368;
      }
    }

    else
    {
      v164 = v145 / v161;
      if (v107 <= 0x7FF && !v240)
      {
        goto LABEL_297;
      }
    }

    v167 = 1;
    v166 = v239;
    if (v161 <= v274.u32[0])
    {
      goto LABEL_338;
    }

    goto LABEL_336;
  }

  v147 = -1;
  v268 = v274;
  if (!v258)
  {
    goto LABEL_468;
  }

LABEL_409:
  if (!v147)
  {
    v197 = 0;
    v198 = (v256 == 268435472) << 27;
    v266 = 1;
    while (1)
    {
      while (((v258 >> v197) & 1) == 0 || v147)
      {
        ++v197;
        v198 += 16;
        if (v197 == 4)
        {
          goto LABEL_468;
        }
      }

      v276 = v252;
      v199 = *(&v276 & 0xFFFFFFFFFFFFFFF3 | (4 * (v197 & 3)));
      v277 = v274;
      *(&v277 & 0xFFFFFFFFFFFFFFF3 | (4 * (v197 & 3))) = v199;
      v274 = v277;
      v263 = TempBuffer;
      v257 = v199;
      if (v266 >= v251)
      {
        v201 = 0;
      }

      else
      {
        v200 = vmul_s32(*v277.i8, *&vextq_s8(v277, v277, 8uLL));
        v201 = MPSAutoCache::GetTempBuffer(v278, 4 * (v200.i32[0] * v200.i32[1]), 0);
      }

      v202 = *(&v285 + v197);
      v203 = *(&v283 + v197);
      v204 = *(&v279 + v197);
      v205 = *(&v281 + v197);
      v206 = *(a1 + *MEMORY[0x277CD7350]);
      v207 = *(a1 + 668);
      *&v208 = -1;
      *(&v208 + 1) = -1;
      v308 = v208;
      v309 = v208;
      v306 = 0xFFFFFFFFFFFFFFFFLL;
      v307 = v208;
      v305 = v208;
      *&v309 = [a4[2] count] | 0x10000;
      v209 = v274.i32[0] * v274.i32[1];
      v210 = v274.u32[2];
      v213 = (v274.i32[2] < 8u || v209 > 0x7FF) && v197 != 2;
      v214 = (2 * *(v206 + 1476)) & (*(v206 + 1476) >> 3) & 0x80;
      if (v203 > 4 || (v215 = (*(v206 + 1472) & 0xFFFFFFFE) != 24, v202 < 8 * v203) || v204 > 1 || v207 == 1 || v207 == 4)
      {
        v215 = 0;
      }

      if (v213)
      {
        v216 = 0x4000000;
      }

      else
      {
        v216 = 0;
      }

      *&v306 = v214 | (v198 + (v216 & 0xFFFFFFF1 | ((v204 > 1) << 25) | ((v203 << 16) + 196608) & 0x30000 | (2 * (v207 & 7)))) | v215;
      v308 = 0uLL;
      LODWORD(v217) = 1;
      DWORD1(v217) = v268.i32[0];
      LODWORD(v218) = 1;
      DWORD1(v218) = v274.i32[0];
      v219 = 1.0 / v202;
      if ((v207 & 0xFFFFFFFE) != 2)
      {
        v219 = 1.0;
      }

      HIDWORD(v218) = v209 * v274.i32[2];
      v293 = v268;
      v294 = v274;
      HIDWORD(v217) = v268.i32[0] * v268.i32[1] * v268.i32[2];
      DWORD2(v217) = v268.i32[0] * v268.i32[1];
      v295 = v217;
      DWORD2(v218) = v274.i32[0] * v274.i32[1];
      v296 = v218;
      v297 = v205;
      v298 = v202;
      v299 = v203;
      v300 = v204;
      v301 = v219;
      v302 = 0;
      v303 = 0uLL;
      v304 = 0;
      v237 = 0;
      v238 = 0;
      v235 = *(a1 + *MEMORY[0x277CD7360]);
      v236 = *(a1 + *MEMORY[0x277CD7368]);
      v234 = a4[29];
      MPSLibrary::CreateUberShaderKey();
      v220 = MPSLibrary::GetPipelineStateForMPSKey();
      if (v220)
      {
        break;
      }

      v147 = -1;
LABEL_467:
      v275 = v268;
      *(&v275 & 0xFFFFFFFFFFFFFFF3 | (4 * (v197 & 3))) = v257;
      v268 = v275;
      ++v266;
      ++v197;
      v198 += 16;
      TempBuffer = v201;
      if (v197 == 4)
      {
        goto LABEL_468;
      }
    }

    [a2 setComputePipelineState:{v220, v234, v235, v236, 0, 0}];
    MPSLibrary::ReleaseMPSKey();
    v221 = [v220 threadExecutionWidth];
    v222 = [v220 maxTotalThreadsPerThreadgroup];
    if (!v197)
    {
      v225 = 256;
      if (v222 < 0x100)
      {
        v225 = v222;
      }

      v226 = v225 > v274.u32[0] || v215;
      if (v221 <= 1)
      {
        v227 = 1;
      }

      else
      {
        v227 = v221;
      }

      if (v227 >= 0x20)
      {
        v227 = 32;
      }

      if (v226)
      {
        v228 = v227;
      }

      else
      {
        v228 = v225;
      }

      v229 = v274.u32[3];
      v230 = 1;
      v231 = v274.u32[1];
      goto LABEL_459;
    }

    if (v197 == 1)
    {
      v223 = v274.u32[2];
      v224 = v274.u32[0];
    }

    else
    {
      v223 = v274.u32[1];
      v224 = v274.u32[0];
      if (v197 != 2)
      {
LABEL_458:
        v231 = (v224 + 15) >> 4;
        v229 = v210;
        v210 = v223;
        v228 = 16;
        v230 = 16;
LABEL_459:
        MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
        objc_msgSend_setBytes_length_atIndex_(a2);
        if (v263)
        {
          [a2 setBuffer:v263 offset:0 atIndex:28];
        }

        if (v201)
        {
          [a2 setBuffer:v201 offset:0 atIndex:27];
        }

        if (v197)
        {
          v232 = v228 + 1;
        }

        else
        {
          v232 = v228;
        }

        [a2 setThreadgroupMemoryLength:8 * v230 * v232 atIndex:0];
        v290 = v231;
        v291 = v210;
        v292 = v229;
        v287 = v228;
        v288 = v230;
        v289 = 1;
        [a2 dispatchThreadgroups:&v290 threadsPerThreadgroup:&v287];
        MPSLibrary::ReleaseComputeState();
        v147 = 0;
        goto LABEL_467;
      }
    }

    LODWORD(v210) = v274.i32[3];
    goto LABEL_458;
  }

LABEL_468:
  MPSAutoCache::~MPSAutoCache(v278);
  return v147;
}

uint64_t EncodePoolingGradient(uint64_t a1, void *a2, uint64_t a3, uint32x4_t *a4)
{
  v4 = a3;
  v5 = a2;
  v202 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v157 = *(a1 + 680);
  v148 = *(a1 + 688);
  v160 = *(a1 + 744);
  v161 = *(a1 + 760);
  v162 = *(a1 + 668);
  v152 = *(a1 + 728);
  v149 = *(a1 + 696);
  v151 = *(a1 + 712);
  v139 = *(a1 + 665);
  v140 = *(a1 + 792);
  v145 = *(a1 + 776);
  v8 = a4[13];
  v185 = a4[12];
  v186 = v8;
  v187 = a4[14];
  v9 = a4[9];
  v181 = a4[8];
  v182 = v9;
  v10 = a4[11];
  v183 = a4[10];
  v184 = v10;
  v11 = a4[5];
  v177 = a4[4];
  v178 = v11;
  v12 = a4[7];
  v179 = a4[6];
  v180 = v12;
  v13 = a4[1];
  v173 = *a4;
  v174 = v13;
  v14 = MEMORY[0x277CD7378];
  v16 = a4[2];
  v15 = a4[3];
  *(a1 + *MEMORY[0x277CD7378]) = 16;
  v175 = v16;
  v176 = v15;
  if ((*(a1 + *v14) & 0x10) != 0)
  {
    v154 = v7;
    if ((v162 - 1) > 4)
    {
      v17 = "Default";
    }

    else
    {
      v17 = off_278B0E788[v162 - 1];
    }

    v18 = *MEMORY[0x277CD73D0];
    v19 = (v186.i64[0] + v18);
    v20 = (v180.i64[0] + v18);
    v163 = v19[3];
    v21 = v19[1];
    v158 = v19[2];
    v22 = *v19;
    v23 = v20[2];
    v24 = v20[3];
    v26 = *v20;
    v25 = v20[1];
    v27 = dataTypeToString(*(v186.i64[0] + *MEMORY[0x277CD73C8]));
    v28 = dataTypeToString(*(v180.i64[0] + *MEMORY[0x277CD73C8]));
    MPSKernel_LogInfo(a1, 3uLL, "-test MPSNDArrayPoolingTest -srcShapes [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s -dstDataTypes %s -strides [%u,%u,%u,%u] -kernelPooling [%u,%u,%u,%u] -offset [%u,%u,%u,%u] -poolingMode %s -gradient\n", v163, v158, v21, v22, v24, v23, v25, v26, v27, v28, v161.i32[2], v161.i32[0], v160.i32[2], v160.i32[0], v149.i32[2], v149.i32[0], v148, v157, v152.i32[2], v152.i32[0], v151.i32[2], v151.i32[0], v17);
    v5 = a2;
    v4 = a3;
    v7 = v154;
  }

  v29 = [v187.i64[1] graph];
  v30 = **(v29 + 56);
  if (*(*(v29 + 56) + 8) == v30)
  {
    goto LABEL_266;
  }

  v32 = *(*v30 + 8);
  v31 = *v32;
  if (*(v32 + 8) - *v32 <= 8uLL)
  {
    goto LABEL_265;
  }

  v33 = *v31;
  v34 = v31[1];
  v35 = [v187.i64[1] graph];
  v36 = **(v35 + 56);
  if (*(*(v35 + 56) + 8) == v36)
  {
LABEL_266:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = *(*v36 + 24);
  v37 = *v38;
  if (*(v38 + 8) == *v38)
  {
LABEL_265:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v39 = *v37;
  DimensionSize = BaseTensor::GetDimensionSize(*v37);
  v153 = BaseTensor::GetDimensionSize(v39);
  v164 = BaseTensor::GetDimensionSize(v39);
  v41 = BaseTensor::GetDimensionSize(v39);
  v147 = BaseTensor::GetDimensionSize(v34);
  v146 = BaseTensor::GetDimensionSize(v34);
  v159 = BaseTensor::GetDimensionSize(v34);
  v42 = BaseTensor::GetDimensionSize(v34);
  v43 = v145.i64[0] > 1uLL;
  v138 = v187.i64[1];
  if (v145.i64[0] < 2uLL)
  {
    v43 = v145.i64[1] > 1uLL;
    v44 = v157;
    if (v145.i64[1] <= 1uLL)
    {
      v43 = v140.i64[0] > 1uLL;
      if (v140.i64[0] <= 1uLL)
      {
        v43 = v140.i64[1] > 1uLL;
      }
    }
  }

  else
  {
    v44 = v157;
  }

  v45 = 0;
  v136 = v149.u64[1];
  v47 = v162 == 1 && v149.i64[1] == 1;
  v48 = v149.i64[0];
  v49 = v149.i64[0] == 1 && v47;
  v50.i64[0] = v160.i64[0];
  v50.i64[1] = v152.i64[1];
  v51 = vmovn_s32(vuzp1q_s32(vceqq_s64(v50, xmmword_239B0A0D0), vceqq_s64(v161, vdupq_n_s64(1uLL))));
  v52 = vzip1q_s64(v151, v152);
  v53 = vmovn_s64(vtstq_s64(v52, v52));
  v54 = (v42 == v41) & ~(v53.i32[1] | ~(v49 & v51.i16[3] & v51.i16[2] & v51.i16[1]) | v43);
  if (v159 != v164)
  {
    v54 = 0;
  }

  v156 = v54;
  if (v47 && v44 == 1 && (v51.i8[6] & 1) != 0 && (v51.i8[0] & 1) != 0 && (v51.i8[2] & 1) != 0 && (v53.i8[0] & 1) == 0 && !v43 && v42 == v41)
  {
    v45 = (v147 == DimensionSize) & (v54 ^ 1);
  }

  v141 = *(v7 + 1472);
  v155 = (v162 == 1) & (v45 | v54);
  if (v155 == 1)
  {
    v133 = v42;
    v55 = v43;
    if (v139)
    {
      v143 = v45;
      v56 = [v174.i64[0] objectAtIndexedSubscript:0];
      LODWORD(v44) = v157;
      v57 = v148;
      v43 = v55;
      v48 = v149.i64[0];
      v42 = v133;
    }

    else
    {
      v131 = v33;
      v144 = *(a1 + 672);
      if (v45)
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }

      *(a1 + 672) = v63;
      *(a1 + 676) = 536870944;
      *(a1 + 664) = 1;
      v199 = v185;
      v200 = v186;
      v201 = v187;
      *v196 = v181;
      *&v196[16] = v182;
      v198 = v184;
      v197 = v183;
      v192 = v177;
      v193 = v178;
      v194 = v179;
      v195.i64[1] = v180.i64[1];
      v188 = v173;
      v189 = v174;
      v190 = v175;
      v191 = v176;
      v195.i64[0] = 0;
      v64 = [objc_msgSend(v180.i64[0] "descriptor")];
      v65 = *(v180.i64[0] + *MEMORY[0x277CD7400]) == (*(v180.i64[0] + *MEMORY[0x277CD73C8]) >> 3) * *(v180.i64[0] + *MEMORY[0x277CD7410]);
      v66 = [MEMORY[0x277CD7268] descriptorWithDataType:536870944 shape:v64];
      [v66 setPreferPackedRows:v65];
      v67 = v66;
      v5 = a2;
      v68 = v45;
      v56 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v4 descriptor:v67];
      v200.i64[0] = v56;
      v69 = EncodePooling(a1, a2, v4, &v188);
      *(a1 + 672) = v144;
      *(a1 + 664) = 0;
      if (v69)
      {
        return -1;
      }

      v143 = v68;
      LODWORD(v44) = v157;
      v57 = v148;
      v43 = v55;
      v48 = v149.i64[0];
      v42 = v133;
      v33 = v131;
    }
  }

  else
  {
    v143 = v45;
    v56 = 0;
    v57 = v148;
  }

  v58 = __PAIR64__(v57, v44);
  v59.i64[0] = __PAIR64__(v153, DimensionSize);
  v60.i32[0] = v147;
  v61 = *(v33 + 8);
  if (v61 > 285212703)
  {
    if (v61 <= 536870915)
    {
      if (v61 > 301989895)
      {
        if (v61 == 301989896)
        {
          v62 = 512;
          goto LABEL_88;
        }

        if (v61 == 335544328)
        {
          v62 = 544;
          goto LABEL_88;
        }
      }

      else
      {
        if (v61 == 285212704)
        {
          v62 = 416;
          goto LABEL_88;
        }

        if (v61 == 285212736)
        {
          v62 = 448;
          goto LABEL_88;
        }
      }
    }

    else if (v61 <= 536870927)
    {
      if (v61 == 536870916)
      {
        v62 = 0;
        goto LABEL_88;
      }

      if (v61 == 536870920)
      {
        v62 = 32;
        goto LABEL_88;
      }
    }

    else
    {
      switch(v61)
      {
        case 536870928:
          v62 = 64;
          goto LABEL_88;
        case 536870944:
          v62 = 96;
          goto LABEL_88;
        case 536870976:
          v62 = 128;
          goto LABEL_88;
      }
    }
  }

  else if (v61 <= 31)
  {
    if (v61 > 7)
    {
      if (v61 == 8)
      {
        v62 = 192;
        goto LABEL_88;
      }

      if (v61 == 16)
      {
        v62 = 224;
        goto LABEL_88;
      }
    }

    else
    {
      if (v61 == -1879048176)
      {
        v62 = 384;
        goto LABEL_88;
      }

      if (v61 == 4)
      {
        v62 = 160;
        goto LABEL_88;
      }
    }
  }

  else if (v61 <= 268435463)
  {
    if (v61 == 32)
    {
      v62 = 256;
      goto LABEL_88;
    }

    if (v61 == 64)
    {
      v62 = 288;
      goto LABEL_88;
    }
  }

  else
  {
    switch(v61)
    {
      case 268435464:
        v62 = 480;
        goto LABEL_88;
      case 268435472:
        v62 = 320;
        goto LABEL_88;
      case 268435488:
        v62 = 352;
        goto LABEL_88;
    }
  }

  v62 = 576;
LABEL_88:
  v60.i32[1] = v146;
  v59.i32[2] = v164;
  v70 = *(v34 + 2);
  if (v70 > 285212703)
  {
    if (v70 <= 536870915)
    {
      if (v70 > 301989895)
      {
        if (v70 == 301989896)
        {
          v71 = 0x4000;
          goto LABEL_132;
        }

        if (v70 == 335544328)
        {
          v71 = 17408;
          goto LABEL_132;
        }
      }

      else
      {
        if (v70 == 285212704)
        {
          v71 = 13312;
          goto LABEL_132;
        }

        if (v70 == 285212736)
        {
          v71 = 14336;
          goto LABEL_132;
        }
      }
    }

    else if (v70 <= 536870927)
    {
      if (v70 == 536870916)
      {
        v71 = 0;
        goto LABEL_132;
      }

      if (v70 == 536870920)
      {
        v71 = 1024;
        goto LABEL_132;
      }
    }

    else
    {
      switch(v70)
      {
        case 536870928:
          v71 = 2048;
          goto LABEL_132;
        case 536870944:
          v71 = 3072;
          goto LABEL_132;
        case 536870976:
          v71 = 4096;
          goto LABEL_132;
      }
    }
  }

  else if (v70 <= 31)
  {
    if (v70 > 7)
    {
      if (v70 == 8)
      {
        v71 = 6144;
        goto LABEL_132;
      }

      if (v70 == 16)
      {
        v71 = 7168;
        goto LABEL_132;
      }
    }

    else
    {
      if (v70 == -1879048176)
      {
        v71 = 12288;
        goto LABEL_132;
      }

      if (v70 == 4)
      {
        v71 = 5120;
        goto LABEL_132;
      }
    }
  }

  else if (v70 <= 268435463)
  {
    if (v70 == 32)
    {
      v71 = 0x2000;
      goto LABEL_132;
    }

    if (v70 == 64)
    {
      v71 = 9216;
      goto LABEL_132;
    }
  }

  else
  {
    switch(v70)
    {
      case 268435464:
        v71 = 15360;
        goto LABEL_132;
      case 268435472:
        v71 = 10240;
        goto LABEL_132;
      case 268435488:
        v71 = 11264;
        goto LABEL_132;
    }
  }

  v71 = 18432;
LABEL_132:
  v60.i32[2] = v159;
  v59.i32[3] = v41;
  v72 = v71 | v62;
  v73 = *(v39 + 2);
  v135 = v59;
  v150 = vmovn_hight_s64(v58, v149);
  if (v73 > 285212703)
  {
    v74 = v136;
    if (v73 <= 536870915)
    {
      v75 = v4;
      if (v73 > 301989895)
      {
        v76 = v5;
        if (v73 == 301989896)
        {
          v77 = v48;
          v78 = v43;
          v79 = 16;
          goto LABEL_176;
        }

        if (v73 == 335544328)
        {
          v77 = v48;
          v78 = v43;
          v79 = 17;
          goto LABEL_176;
        }
      }

      else
      {
        v76 = v5;
        if (v73 == 285212704)
        {
          v77 = v48;
          v78 = v43;
          v79 = 13;
          goto LABEL_176;
        }

        if (v73 == 285212736)
        {
          v77 = v48;
          v78 = v43;
          v79 = 14;
          goto LABEL_176;
        }
      }
    }

    else if (v73 <= 536870927)
    {
      v75 = v4;
      v76 = v5;
      if (v73 == 536870916)
      {
        v77 = v48;
        v78 = v43;
        v79 = 0;
        goto LABEL_176;
      }

      if (v73 == 536870920)
      {
        v77 = v48;
        v78 = v43;
        v79 = 1;
        goto LABEL_176;
      }
    }

    else
    {
      v75 = v4;
      if (v73 == 536870928)
      {
        v76 = v5;
        v77 = v48;
        v78 = v43;
        v79 = 2;
        goto LABEL_176;
      }

      v76 = v5;
      if (v73 == 536870944)
      {
        v77 = v48;
        v78 = v43;
        v79 = 3;
        goto LABEL_176;
      }

      if (v73 == 536870976)
      {
        v77 = v48;
        v78 = v43;
        v79 = 4;
        goto LABEL_176;
      }
    }
  }

  else
  {
    v74 = v136;
    if (v73 <= 31)
    {
      v75 = v4;
      if (v73 > 7)
      {
        v76 = v5;
        if (v73 == 8)
        {
          v77 = v48;
          v78 = v43;
          v79 = 6;
          goto LABEL_176;
        }

        if (v73 == 16)
        {
          v77 = v48;
          v78 = v43;
          v79 = 7;
          goto LABEL_176;
        }
      }

      else
      {
        v76 = v5;
        if (v73 == -1879048176)
        {
          v77 = v48;
          v78 = v43;
          v79 = 12;
          goto LABEL_176;
        }

        if (v73 == 4)
        {
          v77 = v48;
          v78 = v43;
          v79 = 5;
          goto LABEL_176;
        }
      }
    }

    else if (v73 <= 268435463)
    {
      v75 = v4;
      v76 = v5;
      if (v73 == 32)
      {
        v77 = v48;
        v78 = v43;
        v79 = 8;
        goto LABEL_176;
      }

      if (v73 == 64)
      {
        v77 = v48;
        v78 = v43;
        v79 = 9;
        goto LABEL_176;
      }
    }

    else
    {
      v75 = v4;
      if (v73 == 268435464)
      {
        v76 = v5;
        v77 = v48;
        v78 = v43;
        v79 = 15;
        goto LABEL_176;
      }

      v76 = v5;
      if (v73 == 268435472)
      {
        v77 = v48;
        v78 = v43;
        v79 = 10;
        goto LABEL_176;
      }

      if (v73 == 268435488)
      {
        v77 = v48;
        v78 = v43;
        v79 = 11;
        goto LABEL_176;
      }
    }
  }

  v77 = v48;
  v78 = v43;
  v79 = 18;
LABEL_176:
  v60.i32[3] = v42;
  v137 = v60;
  *&v80 = -1;
  *(&v80 + 1) = -1;
  v172 = v80;
  v168 = -1;
  v170 = v80;
  v167 = v80;
  v169 = v72 | v79;
  v171 = 0uLL;
  v81 = [v174.i64[0] count] | 0x10100;
  v82 = vcgeq_u32(v135, v150);
  v90 = v74 < 9 && v161.i64[1] < 5uLL && v77 < 9 && v161.i64[0] < 5uLL && v148 < 9 && v160.i64[1] < 5uLL && v157 < 9 && v160.i64[0] < 5uLL;
  v91 = vminvq_u32(v82) >> 31;
  if (v78)
  {
    v92 = 0x2000000;
  }

  else
  {
    v92 = 0;
  }

  *&v172 = v81;
  v168 = (2 * (v162 & 7)) | ((v161.i32[2] << 22) + 12582912) & 0xC00000 | ((v148 << 7) + 896) & 0x380 | (16 * v157 + 112) & 0x70 | ((v77 << 10) + 7168) & 0x1C00 | ((v160.i32[0] << 16) + 196608) & 0x30000 | ((v74 << 13) - 0x2000) & 0xE000 | ((v160.i32[2] << 18) + 786432) & 0xC0000 | ((v161.i32[0] << 20) + 3145728) & 0x300000 | v92 | v90 | (v91 << 24);
  v93 = 1.0;
  if ((v162 & 0xFFFFFFFE) == 2)
  {
    v93 = 1.0 / (v148 * v157 * v77 * v74);
  }

  v94 = v153 * DimensionSize;
  v95.i32[0] = 1;
  v95.i32[1] = DimensionSize;
  v95.i32[2] = v153 * DimensionSize;
  v95.i32[3] = v153 * DimensionSize * v164;
  v96.i32[0] = 1;
  v96.i32[1] = v147;
  v96.i32[2] = v146 * v147;
  v96.i32[3] = v146 * v147 * v159;
  v188 = v135;
  v189 = v137;
  v190 = v95;
  v191 = v96;
  v192 = vuzp1q_s32(v151, v152);
  v193 = v150;
  v194 = vuzp1q_s32(v160, v161);
  v195 = vuzp1q_s32(v145, v140);
  *v196 = v93;
  __asm { FMOV            V1.4S, #1.0 }

  memset(&v196[4], 0, 28);
  v197 = vdivq_f32(_Q1, vcvtq_f32_u32(v194));
  v198 = v135;
  if (v143)
  {
    MPSGetUIntDivisorMagicNumber();
    v199 = v100;
  }

  MPSGetUIntDivisorMagicNumber();
  v200 = v101;
  v102 = *MEMORY[0x277CD73C8];
  if (v155)
  {
    v103 = *(v56 + *MEMORY[0x277CD7400]);
    v104 = *(v56 + v102) >> 3;
    if (v103 != (*(v56 + v102) >> 3) * *(v56 + *MEMORY[0x277CD7410]))
    {
      v105.i32[0] = 1;
      v105.i32[1] = v103 / v104;
      v105.i32[2] = v103 / v104 * v146;
      v105.i32[3] = v105.i32[2] * v159;
      v191 = v105;
    }
  }

  v134 = v56;
  v129 = *(a1 + *MEMORY[0x277CD7360]);
  v130 = *(a1 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v107 = PipelineStateForMPSKey;
  [v76 setComputePipelineState:{PipelineStateForMPSKey, v138, v129, v130, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v108 = [v107 threadExecutionWidth];
  if (v108 <= 1)
  {
    v109 = 1;
  }

  else
  {
    v109 = v108;
  }

  if (v109 > DimensionSize || (v110 = v109, DimensionSize <= 3) && (v110 = v109, v109 > v153))
  {
    if (v108 <= 1)
    {
      v110 = 1;
    }

    else
    {
      v110 = v109 >> 1;
    }
  }

  v111 = [v107 maxTotalThreadsPerThreadgroup];
  v112 = 256;
  if (v111 < 0x100)
  {
    v112 = v111;
  }

  if (v112 <= 2 * v110)
  {
    v113 = 1;
    if (v110 <= DimensionSize)
    {
      goto LABEL_224;
    }

LABEL_227:
    v117 = v153;
    v115 = v164;
    if (v110 <= v153 || v110 <= v164)
    {
      v114 = v41;
      v116 = v113;
      v113 = v110;
      v110 = 1;
    }

    else
    {
      v114 = v41;
      v116 = 1;
    }

    goto LABEL_231;
  }

  v113 = v112 / v110;
  if (v110 > DimensionSize)
  {
    goto LABEL_227;
  }

LABEL_224:
  v114 = v41;
  v115 = v164;
  v116 = 1;
  v117 = v153;
LABEL_231:
  if (v116 >= v115)
  {
    v119 = v115;
  }

  else
  {
    v119 = v116;
  }

  if (v110 * v113 >= v109)
  {
    v120 = v119;
  }

  else
  {
    v120 = v116;
  }

  if (v113 >= v117)
  {
    v121 = v117;
  }

  else
  {
    v121 = v113;
  }

  if (v120 * v110 >= v109)
  {
    v122 = v121;
  }

  else
  {
    v122 = v113;
  }

  v123 = DimensionSize - 1;
  v124 = (v110 + v123) / v110;
  v125 = (v117 + v122 - 1) / v122;
  v126 = (v115 + v120 - 1) / v120;
  if (v155)
  {
    v127 = (v109 + v123) / v109;
    v128 = v114 * v164;
    if (!v143)
    {
      v127 = v124;
      v117 = (v117 + v122 - 1) / v122;
      v128 = (v115 + v120 - 1) / v120;
    }

    v120 = 1;
    v122 = 1;
    if (v156)
    {
      v124 = (v109 + v94 - 1) / v109;
    }

    else
    {
      v124 = v127;
    }

    if (v156)
    {
      v125 = v115;
    }

    else
    {
      v125 = v117;
    }

    if (v156)
    {
      v126 = v114;
    }

    else
    {
      v126 = v128;
    }

    v110 = v109;
  }

  [a2 setComputePipelineState:v107];
  MPSSetNDArraysOnComputeEncoder(a2, &v173, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  if (v155)
  {
    [a2 setBuffer:-[MPSTemporaryNDArray buffer](v134 offset:"buffer") atIndex:{0, 28}];
    [a2 setBuffer:objc_msgSend(v180.i64[0] offset:"buffer") atIndex:{0, 27}];
    if (v141 <= 23)
    {
      if ((atomic_load_explicit(&_MergedGlobals_17, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_17))
      {
        xmmword_27DF86AF0 = 0u;
        xmmword_27DF86AE0 = 0u;
        dword_27DF86B00 = 1065353216;
        qword_27DF86B08 = 850045863;
        xmmword_27DF86B10 = 0u;
        unk_27DF86B20 = 0u;
        xmmword_27DF86B30 = 0u;
        qword_27DF86B40 = 0;
        __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86AE0, &dword_2399F7000);
        __cxa_guard_release(&_MergedGlobals_17);
      }

      [a2 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86AE0 offset:objc_msgSend(objc_msgSend(v75 atIndex:{"commandQueue"), "device"), 0x10uLL, &__block_literal_global_6), 0, 26}];
      if ((atomic_load_explicit(&qword_27DF86AC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86AC8))
      {
        xmmword_27DF86B58 = 0u;
        xmmword_27DF86B48 = 0u;
        dword_27DF86B68 = 1065353216;
        qword_27DF86B70 = 850045863;
        xmmword_27DF86B78 = 0u;
        unk_27DF86B88 = 0u;
        xmmword_27DF86B98 = 0u;
        qword_27DF86BA8 = 0;
        __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86B48, &dword_2399F7000);
        __cxa_guard_release(&qword_27DF86AC8);
      }

      [a2 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86AE0 offset:objc_msgSend(objc_msgSend(v75 atIndex:{"commandQueue"), "device"), 0x10uLL, 0), 0, 25}];
    }
  }

  v166[0] = v124;
  v166[1] = v125;
  v166[2] = v126;
  v165[0] = v110;
  v165[1] = v122;
  v165[2] = v120;
  [a2 dispatchThreadgroups:v166 threadsPerThreadgroup:v165];
  MPSLibrary::ReleaseComputeState();
  result = 0;
  if (v155)
  {
    if ((v139 & 1) == 0)
    {
      MPSDecrementReadCount(v134);
      return 0;
    }
  }

  return result;
}

uint64_t EncodePoolingMultiDestinationBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v14 = v10;
  v15 = v7;
  if (*(v7 + 120) == 1)
  {
    v16 = v9;
    v307 = v8;
    v17 = *(v7 + *MEMORY[0x277CD7350]);
    v18 = *(v7 + 136);
    v308 = *(v7 + 144);
    v311 = *(v7 + 200);
    v312 = *(v7 + 216);
    v319 = *(v7 + 152);
    v320 = *(v7 + 160);
    v19 = *(v7 + 124);
    v309 = *(v7 + 168);
    v310 = *(v7 + 184);
    v305 = *(v7 + 248);
    v314 = *(v7 + 232);
    v20 = [*(v10 + 16) objectAtIndexedSubscript:1];
    v323 = [*(v14 + 40) objectAtIndexedSubscript:0];
    v21 = [*(v14 + 16) objectAtIndexedSubscript:0];
    v22 = 0;
    if ([*(v14 + 16) count] == 3)
    {
      v22 = [*(v14 + 16) objectAtIndexedSubscript:2];
    }

    if (v19 != 1 && v19 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v23 = v314;
    v24 = v16;
    if (!v22)
    {
      v293 = MTLReportFailureTypeEnabled();
      v24 = v16;
      v23 = v314;
      if (v293)
      {
        MTLReportFailure();
        v24 = v16;
        v23 = v314;
      }
    }

    v25 = *MEMORY[0x277CD7410];
    v26 = *&v323[v25];
    v27 = *&v323[v25 + 16];
    v28 = *&v323[v25 + 32];
    v29 = *&v323[v25 + 48];
    v30 = *MEMORY[0x277CD73D8];
    v31 = *&v323[v30];
    v398[3] = v29;
    v398[2] = v28;
    v398[1] = v27;
    v398[0] = v26;
    v318 = *(v398 + (v31 & 0xF));
    v32 = &v20[v25];
    v33 = *v32;
    v34 = *(v32 + 1);
    v35 = *(v32 + 2);
    v36 = *(v32 + 3);
    v37 = *&v20[v30];
    v399[3] = v36;
    v399[2] = v35;
    v399[1] = v34;
    v399[0] = v33;
    v38 = v23.i64[0] > 1uLL;
    if (v23.i64[0] < 2uLL)
    {
      v38 = v23.i64[1] > 1uLL;
      if (v23.i64[1] <= 1uLL)
      {
        v38 = v305.i64[0] > 1uLL;
        if (v305.i64[0] <= 1uLL)
        {
          v38 = v305.i64[1] > 1uLL;
        }
      }
    }

    v39 = 0;
    v40 = *(v399 + (v37 & 0xF));
    v397[0] = v26;
    v397[1] = v27;
    v397[2] = v28;
    v397[3] = v29;
    v321 = *(v397 + (BYTE1(v31) & 0xF));
    v396[0] = v26;
    v396[1] = v27;
    v396[2] = v28;
    v396[3] = v29;
    v41 = *(v396 + (BYTE2(v31) & 0xF));
    v395[0] = v33;
    v395[1] = v34;
    v395[2] = v35;
    v395[3] = v36;
    v317 = *(v395 + (BYTE1(v37) & 0xF));
    v394[0] = v33;
    v394[1] = v34;
    v394[2] = v35;
    v394[3] = v36;
    v42 = *(v394 + (BYTE2(v37) & 0xF));
    v393[0] = v26;
    v393[1] = v27;
    v393[2] = v28;
    v393[3] = v29;
    v43 = *(v393 + (BYTE3(v31) & 0xF));
    v392[0] = v33;
    v392[1] = v34;
    v392[2] = v35;
    v392[3] = v36;
    v44 = *(v392 + (BYTE3(v37) & 0xF));
    v46 = v19 == 1 && v320 == 1;
    v47 = v319 == 1 && v46;
    v48.i64[0] = v311.i64[0];
    v48.i64[1] = v310.i64[1];
    v49 = vuzp1q_s32(vceqq_s64(v48, xmmword_239B0A0D0), vceqq_s64(v312, vdupq_n_s64(1uLL)));
    *v49.i8 = vmovn_s32(v49);
    v50 = vzip1q_s64(v309, v310);
    v51 = vmovn_s64(vtstq_s64(v50, v50));
    v313 = v41;
    v52 = (v44 == v43) & ~(v51.i32[1] | ~(v47 & v49.i16[3] & v49.i16[2] & v49.i16[1]) | v38);
    if (v42 != v41)
    {
      v52 = 0;
    }

    v315 = v52;
    v316 = v42;
    if (v46 && v18 == 1 && (v49.i8[6] & 1) != 0 && (v49.i8[0] & 1) != 0 && (v49.i8[2] & 1) != 0 && (v51.i8[0] & 1) == 0 && !v38 && v44 == v43)
    {
      v39 = (v40 == v318) & (v52 ^ 1);
    }

    v306 = *(v17 + 1472);
    v53 = *MEMORY[0x277CD73C8];
    v54 = *(v21 + v53);
    if (v54 > 285212703)
    {
      if (v54 <= 536870915)
      {
        if (v54 > 301989895)
        {
          if (v54 == 301989896)
          {
            v55 = 16;
            v56 = *(v22 + v53);
            if (v56 > 285212703)
            {
              goto LABEL_80;
            }

            goto LABEL_103;
          }

          if (v54 == 335544328)
          {
            v55 = 17;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
          }
        }

        else
        {
          if (v54 == 285212704)
          {
            v55 = 13;
            v56 = *(v22 + v53);
            if (v56 > 285212703)
            {
              goto LABEL_80;
            }

            goto LABEL_103;
          }

          if (v54 == 285212736)
          {
            v55 = 14;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
          }
        }
      }

      else if (v54 <= 536870927)
      {
        if (v54 == 536870916)
        {
          v55 = 0;
          v56 = *(v22 + v53);
          if (v56 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_103;
        }

        if (v54 == 536870920)
        {
          v55 = 1;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }
      }

      else
      {
        switch(v54)
        {
          case 536870928:
            v55 = 2;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
          case 536870944:
            v55 = 3;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
          case 536870976:
            v55 = 4;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
        }
      }
    }

    else if (v54 <= 31)
    {
      if (v54 > 7)
      {
        if (v54 == 8)
        {
          v55 = 6;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }

        if (v54 == 16)
        {
          v55 = 7;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }
      }

      else
      {
        if (v54 == -1879048176)
        {
          v55 = 12;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }

        if (v54 == 4)
        {
          v55 = 5;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }
      }
    }

    else if (v54 <= 268435463)
    {
      if (v54 == 32)
      {
        v55 = 8;
        v56 = *(v22 + v53);
        if (v56 <= 285212703)
        {
          goto LABEL_103;
        }

        goto LABEL_80;
      }

      if (v54 == 64)
      {
        v55 = 9;
        v56 = *(v22 + v53);
        if (v56 <= 285212703)
        {
          goto LABEL_103;
        }

        goto LABEL_80;
      }
    }

    else
    {
      switch(v54)
      {
        case 268435464:
          v55 = 15;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        case 268435472:
          v55 = 10;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        case 268435488:
          v55 = 11;
          v56 = *(v22 + v53);
          if (v56 > 285212703)
          {
            goto LABEL_80;
          }

LABEL_103:
          if (v56 <= 31)
          {
            if (v56 > 7)
            {
              if (v56 == 8)
              {
                v58 = 192;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              }

              if (v56 == 16)
              {
                v58 = 224;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              }
            }

            else
            {
              if (v56 == -1879048176)
              {
                v58 = 384;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              }

              if (v56 == 4)
              {
                v58 = 160;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              }
            }
          }

          else if (v56 <= 268435463)
          {
            if (v56 == 32)
            {
              v58 = 256;
              v59 = *&v20[v53];
              if (v59 <= 285212703)
              {
                goto LABEL_141;
              }

              goto LABEL_124;
            }

            if (v56 == 64)
            {
              v58 = 288;
              v59 = *&v20[v53];
              if (v59 <= 285212703)
              {
                goto LABEL_141;
              }

              goto LABEL_124;
            }
          }

          else
          {
            switch(v56)
            {
              case 268435464:
                v58 = 480;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              case 268435472:
                v58 = 320;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              case 268435488:
                v58 = 352;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
            }
          }

LABEL_197:
          v58 = 576;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

LABEL_124:
          if (v59 <= 536870915)
          {
            if (v59 > 301989895)
            {
              if (v59 == 301989896)
              {
                v60 = 0x4000;
                goto LABEL_200;
              }

              if (v59 == 335544328)
              {
                v60 = 17408;
                goto LABEL_200;
              }
            }

            else
            {
              if (v59 == 285212704)
              {
                v60 = 13312;
                goto LABEL_200;
              }

              if (v59 == 285212736)
              {
                v60 = 14336;
                goto LABEL_200;
              }
            }
          }

          else if (v59 <= 536870927)
          {
            if (v59 == 536870916)
            {
              v60 = 0;
              goto LABEL_200;
            }

            if (v59 == 536870920)
            {
              v60 = 1024;
              goto LABEL_200;
            }
          }

          else
          {
            switch(v59)
            {
              case 536870928:
                v60 = 2048;
                goto LABEL_200;
              case 536870944:
                v60 = 3072;
                goto LABEL_200;
              case 536870976:
                v60 = 4096;
                goto LABEL_200;
            }
          }

          goto LABEL_199;
      }
    }

    v55 = 18;
    v56 = *(v22 + v53);
    if (v56 <= 285212703)
    {
      goto LABEL_103;
    }

LABEL_80:
    if (v56 <= 536870915)
    {
      if (v56 > 301989895)
      {
        if (v56 == 301989896)
        {
          v58 = 512;
          v59 = *&v20[v53];
          if (v59 > 285212703)
          {
            goto LABEL_124;
          }

          goto LABEL_141;
        }

        if (v56 == 335544328)
        {
          v58 = 544;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_124;
        }
      }

      else
      {
        if (v56 == 285212704)
        {
          v58 = 416;
          v59 = *&v20[v53];
          if (v59 > 285212703)
          {
            goto LABEL_124;
          }

          goto LABEL_141;
        }

        if (v56 == 285212736)
        {
          v58 = 448;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_124;
        }
      }
    }

    else if (v56 <= 536870927)
    {
      if (v56 == 536870916)
      {
        v58 = 0;
        v59 = *&v20[v53];
        if (v59 > 285212703)
        {
          goto LABEL_124;
        }

        goto LABEL_141;
      }

      if (v56 == 536870920)
      {
        v58 = 32;
        v59 = *&v20[v53];
        if (v59 <= 285212703)
        {
          goto LABEL_141;
        }

        goto LABEL_124;
      }
    }

    else
    {
      switch(v56)
      {
        case 536870928:
          v58 = 64;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_124;
        case 536870944:
          v58 = 96;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_124;
        case 536870976:
          v58 = 128;
          v59 = *&v20[v53];
          if (v59 > 285212703)
          {
            goto LABEL_124;
          }

LABEL_141:
          if (v59 <= 31)
          {
            if (v59 > 7)
            {
              if (v59 == 8)
              {
                v60 = 6144;
                goto LABEL_200;
              }

              if (v59 == 16)
              {
                v60 = 7168;
                goto LABEL_200;
              }
            }

            else
            {
              if (v59 == -1879048176)
              {
                v60 = 12288;
                goto LABEL_200;
              }

              if (v59 == 4)
              {
                v60 = 5120;
                goto LABEL_200;
              }
            }
          }

          else if (v59 <= 268435463)
          {
            if (v59 == 32)
            {
              v60 = 0x2000;
              goto LABEL_200;
            }

            if (v59 == 64)
            {
              v60 = 9216;
              goto LABEL_200;
            }
          }

          else
          {
            switch(v59)
            {
              case 268435464:
                v60 = 15360;
                goto LABEL_200;
              case 268435472:
                v60 = 10240;
                goto LABEL_200;
              case 268435488:
                v60 = 11264;
                goto LABEL_200;
            }
          }

LABEL_199:
          v60 = 18432;
LABEL_200:
          v61 = v58 | v55;
          v62 = *&v323[v53];
          v304 = v24;
          v302 = v19;
          v303 = v39;
          v301 = v38;
          if (v62 > 285212703)
          {
            if (v62 <= 536870915)
            {
              if (v62 > 301989895)
              {
                if (v62 == 301989896)
                {
                  v63 = 16;
                  goto LABEL_244;
                }

                if (v62 == 335544328)
                {
                  v63 = 17;
                  goto LABEL_244;
                }
              }

              else
              {
                if (v62 == 285212704)
                {
                  v63 = 13;
                  goto LABEL_244;
                }

                if (v62 == 285212736)
                {
                  v63 = 14;
                  goto LABEL_244;
                }
              }
            }

            else if (v62 <= 536870927)
            {
              if (v62 == 536870916)
              {
                v299 = 0;
                goto LABEL_245;
              }

              if (v62 == 536870920)
              {
                v63 = 1;
                goto LABEL_244;
              }
            }

            else
            {
              switch(v62)
              {
                case 536870928:
                  v63 = 2;
                  goto LABEL_244;
                case 536870944:
                  v63 = 3;
                  goto LABEL_244;
                case 536870976:
                  v63 = 4;
                  goto LABEL_244;
              }
            }
          }

          else if (v62 <= 31)
          {
            if (v62 > 7)
            {
              if (v62 == 8)
              {
                v63 = 6;
                goto LABEL_244;
              }

              if (v62 == 16)
              {
                v63 = 7;
                goto LABEL_244;
              }
            }

            else
            {
              if (v62 == -1879048176)
              {
                v63 = 12;
                goto LABEL_244;
              }

              if (v62 == 4)
              {
                v63 = 5;
                goto LABEL_244;
              }
            }
          }

          else if (v62 <= 268435463)
          {
            if (v62 == 32)
            {
              v63 = 8;
              goto LABEL_244;
            }

            if (v62 == 64)
            {
              v63 = 9;
              goto LABEL_244;
            }
          }

          else
          {
            switch(v62)
            {
              case 268435464:
                v63 = 15;
                goto LABEL_244;
              case 268435472:
                v63 = 10;
                goto LABEL_244;
              case 268435488:
                v63 = 11;
LABEL_244:
                v299 = v63;
LABEL_245:
                v49.i32[0] = v318;
                v334 = v49;
                v300 = v40;
                v49.i32[0] = v40;
                v324 = v49;
                v49.i32[0] = v18;
                v329 = v49;
                v64 = v61 | v60;
                v298 = v14;
                v65 = *(v14 + 48);
                makeStrideBytes();
                v66 = MEMORY[0x277CD73D0];
                v67 = (v21 + *MEMORY[0x277CD73D0]);
                v68.i64[0] = 0x100000001;
                v68.i64[1] = 0x100000001;
                v69 = vceqq_s32(*v67, v68);
                v70.i64[0] = v69.i32[0];
                v70.i64[1] = v69.i32[1];
                v71 = v70;
                v72 = vceqq_s32(v67[1], v68);
                v70.i64[0] = v72.i32[0];
                v70.i64[1] = v72.i32[1];
                v73 = v70;
                v74 = vceqq_s32(v67[2], v68);
                v70.i64[0] = v74.i32[0];
                v70.i64[1] = v74.i32[1];
                v75 = v70;
                v76 = vceqq_s32(v67[3], v68);
                v70.i64[0] = v76.i32[0];
                v70.i64[1] = v76.i32[1];
                v77 = v70;
                v70.i64[0] = v69.i32[2];
                v70.i64[1] = v69.i32[3];
                v78 = v70;
                v70.i64[0] = v72.i32[2];
                v70.i64[1] = v72.i32[3];
                v79 = v70;
                v70.i64[0] = v74.i32[2];
                v70.i64[1] = v74.i32[3];
                v80 = v70;
                v70.i64[0] = v76.i32[2];
                v70.i64[1] = v76.i32[3];
                v81 = vbicq_s8(v409, v70);
                v82 = vbicq_s8(v407, v80);
                v83 = vbicq_s8(v405, v79);
                v84 = vbicq_s8(v403, v78);
                v85 = vbicq_s8(v408, v77);
                v86 = vbicq_s8(v406, v75);
                v87 = vbicq_s8(v404, v73);
                v88 = *(v21 + *MEMORY[0x277CD73C8]);
                v89 = *(v21 + *MEMORY[0x277CD73D8]);
                v90 = BYTE1(*(v21 + *MEMORY[0x277CD73D8]));
                v91 = vbicq_s8(v402, v71);
                v92 = BYTE2(*(v21 + *MEMORY[0x277CD73D8]));
                v93 = BYTE3(*(v21 + *MEMORY[0x277CD73D8]));
                if ((v88 & 0xFFF8) != 0)
                {
                  v94 = v88 >> 3;
                  v391[0] = v91;
                  v391[1] = v84;
                  v391[2] = v87;
                  v391[3] = v83;
                  v391[4] = v86;
                  v391[5] = v82;
                  v391[6] = v85;
                  v391[7] = v81;
                  v95 = *(v391 + (v89 & 0xF)) / v94;
                  v390[0] = v91;
                  v390[1] = v84;
                  v390[2] = v87;
                  v390[3] = v83;
                  v390[4] = v86;
                  v390[5] = v82;
                  v390[6] = v85;
                  v390[7] = v81;
                  v96 = *(v390 + (v90 & 0xF));
                  v389[0] = v91;
                  v389[1] = v84;
                  v389[2] = v87;
                  v389[3] = v83;
                  v389[4] = v86;
                  v389[5] = v82;
                  v389[6] = v85;
                  v389[7] = v81;
                  v97 = *(v389 + (v92 & 0xF)) / v94;
                  v388[0] = v91;
                  v388[1] = v84;
                  v388[2] = v87;
                  v388[3] = v83;
                  v388[4] = v86;
                  v388[5] = v82;
                  v388[6] = v85;
                  v388[7] = v81;
                  v98 = v97;
                  v99 = *(v388 + (v93 & 0xF)) / v94;
                  v100 = v95;
                  v101 = v96 / v94;
                }

                else
                {
                  v387[0] = v91;
                  v387[1] = v84;
                  v387[2] = v87;
                  v387[3] = v83;
                  v387[4] = v86;
                  v387[5] = v82;
                  v387[6] = v85;
                  v387[7] = v81;
                  v386[0] = v91;
                  v386[1] = v84;
                  v386[2] = v87;
                  v386[3] = v83;
                  v386[4] = v86;
                  v386[5] = v82;
                  v386[6] = v85;
                  v386[7] = v81;
                  v385[0] = v91;
                  v385[1] = v84;
                  v385[2] = v87;
                  v385[3] = v83;
                  v385[4] = v86;
                  v385[5] = v82;
                  v385[6] = v85;
                  v385[7] = v81;
                  v384[0] = v91;
                  v384[1] = v84;
                  v384[2] = v87;
                  v384[3] = v83;
                  v384[4] = v86;
                  v384[5] = v82;
                  v384[6] = v85;
                  v384[7] = v81;
                  v98 = *(v385 + (v92 & 0xF));
                  v99 = *(v384 + (v93 & 0xF));
                  v100 = *(v387 + (v89 & 0xF));
                  v101 = *(v386 + (v90 & 0xF));
                }

                v102 = v334;
                v102.i32[1] = v321;
                v335 = v102;
                v103 = v324;
                v103.i32[1] = v317;
                v325 = v103;
                v104 = v329;
                v104.i32[1] = v308;
                v330 = v104;
                v105 = v64 & 0xF0FFFFFF | ((v65 & 0xF) << 24);
                v106 = (v21 + *MEMORY[0x277CD7410]);
                v107 = *v106;
                v108 = v106[1];
                v109 = v106[2];
                v383 = v106[3];
                v382[2] = v109;
                v382[1] = v108;
                v382[0] = v107;
                v110 = v100 * (*(v382 + (v89 & 0xF)) - 1);
                v381[3] = v383;
                v381[2] = v109;
                v381[1] = v108;
                v381[0] = v107;
                v111 = v110 + v101 * (*(v381 + (v90 & 0xF)) - 1);
                v380[3] = v383;
                v380[2] = v109;
                v380[1] = v108;
                v380[0] = v107;
                v112 = v111 + v98 * (*(v380 + (v92 & 0xF)) - 1);
                v379[3] = v383;
                v379[2] = v109;
                v379[1] = v108;
                v379[0] = v107;
                v113 = (HIDWORD(v100) != 0) | (2 * (HIDWORD(v101) != 0)) | (4 * (HIDWORD(v98) != 0)) | (8 * (HIDWORD(v99) != 0)) | (16 * ((v112 + v99 * (*(v379 + (v93 & 0xF)) - 1)) >> 32 != 0));
                makeStrideBytes();
                v114 = (v22 + *v66);
                v115.i64[0] = 0x100000001;
                v115.i64[1] = 0x100000001;
                v116 = vceqq_s32(*v114, v115);
                v117.i64[0] = v116.i32[0];
                v117.i64[1] = v116.i32[1];
                v118 = v117;
                v119 = vceqq_s32(v114[1], v115);
                v117.i64[0] = v119.i32[0];
                v117.i64[1] = v119.i32[1];
                v120 = v117;
                v121 = vceqq_s32(v114[2], v115);
                v117.i64[0] = v121.i32[0];
                v117.i64[1] = v121.i32[1];
                v122 = v117;
                v123 = vceqq_s32(v114[3], v115);
                v117.i64[0] = v123.i32[0];
                v117.i64[1] = v123.i32[1];
                v124 = v117;
                v117.i64[0] = v116.i32[2];
                v117.i64[1] = v116.i32[3];
                v125 = v117;
                v117.i64[0] = v119.i32[2];
                v117.i64[1] = v119.i32[3];
                v126 = v117;
                v117.i64[0] = v121.i32[2];
                v117.i64[1] = v121.i32[3];
                v127 = v117;
                v117.i64[0] = v123.i32[2];
                v117.i64[1] = v123.i32[3];
                v128 = vbicq_s8(v409, v117);
                v129 = vbicq_s8(v407, v127);
                v130 = vbicq_s8(v405, v126);
                v131 = vbicq_s8(v403, v125);
                v132 = vbicq_s8(v408, v124);
                v133 = vbicq_s8(v406, v122);
                v134 = vbicq_s8(v404, v120);
                v135 = *(v22 + *MEMORY[0x277CD73C8]);
                v136 = *(v22 + *MEMORY[0x277CD73D8]);
                v137 = BYTE1(*(v22 + *MEMORY[0x277CD73D8]));
                v138 = vbicq_s8(v402, v118);
                v139 = BYTE2(*(v22 + *MEMORY[0x277CD73D8]));
                v140 = BYTE3(*(v22 + *MEMORY[0x277CD73D8]));
                if ((v135 & 0xFFF8) != 0)
                {
                  v141 = v135 >> 3;
                  v378[0] = v138;
                  v378[1] = v131;
                  v378[2] = v134;
                  v378[3] = v130;
                  v378[4] = v133;
                  v378[5] = v129;
                  v378[6] = v132;
                  v378[7] = v128;
                  v142 = *(v378 + (v136 & 0xF)) / v141;
                  v377[0] = v138;
                  v377[1] = v131;
                  v377[2] = v134;
                  v377[3] = v130;
                  v377[4] = v133;
                  v377[5] = v129;
                  v377[6] = v132;
                  v377[7] = v128;
                  v143 = *(v377 + (v137 & 0xF));
                  v376[0] = v138;
                  v376[1] = v131;
                  v376[2] = v134;
                  v376[3] = v130;
                  v376[4] = v133;
                  v376[5] = v129;
                  v376[6] = v132;
                  v376[7] = v128;
                  v144 = *(v376 + (v139 & 0xF)) / v141;
                  v375[0] = v138;
                  v375[1] = v131;
                  v375[2] = v134;
                  v375[3] = v130;
                  v375[4] = v133;
                  v375[5] = v129;
                  v375[6] = v132;
                  v375[7] = v128;
                  v145 = v144;
                  v146 = *(v375 + (v140 & 0xF)) / v141;
                  v147 = v142;
                  v148 = v143 / v141;
                }

                else
                {
                  v374[0] = v138;
                  v374[1] = v131;
                  v374[2] = v134;
                  v374[3] = v130;
                  v374[4] = v133;
                  v374[5] = v129;
                  v374[6] = v132;
                  v374[7] = v128;
                  v373[0] = v138;
                  v373[1] = v131;
                  v373[2] = v134;
                  v373[3] = v130;
                  v373[4] = v133;
                  v373[5] = v129;
                  v373[6] = v132;
                  v373[7] = v128;
                  v372[0] = v138;
                  v372[1] = v131;
                  v372[2] = v134;
                  v372[3] = v130;
                  v372[4] = v133;
                  v372[5] = v129;
                  v372[6] = v132;
                  v372[7] = v128;
                  v371[0] = v138;
                  v371[1] = v131;
                  v371[2] = v134;
                  v371[3] = v130;
                  v371[4] = v133;
                  v371[5] = v129;
                  v371[6] = v132;
                  v371[7] = v128;
                  v145 = *(v372 + (v139 & 0xF));
                  v146 = *(v371 + (v140 & 0xF));
                  v147 = *(v374 + (v136 & 0xF));
                  v148 = *(v373 + (v137 & 0xF));
                }

                v149 = v335;
                v149.i32[2] = v313;
                v336 = v149;
                v150 = v325;
                v150.i32[2] = v316;
                v326 = v150;
                v151 = v330;
                v151.i32[2] = v319;
                v331 = v151;
                v152 = (v22 + *MEMORY[0x277CD7410]);
                v153 = *v152;
                v154 = v152[1];
                v155 = v152[2];
                v370 = v152[3];
                v369[2] = v155;
                v369[1] = v154;
                v369[0] = v153;
                v156 = v147 * (*(v369 + (v136 & 0xF)) - 1);
                v368[3] = v370;
                v368[2] = v155;
                v368[1] = v154;
                v368[0] = v153;
                v157 = v156 + v148 * (*(v368 + (v137 & 0xF)) - 1);
                v367[3] = v370;
                v367[2] = v155;
                v367[1] = v154;
                v367[0] = v153;
                v158 = v157 + v145 * (*(v367 + (v139 & 0xF)) - 1);
                v366[3] = v370;
                v366[2] = v155;
                v366[1] = v154;
                v366[0] = v153;
                v159 = (32 * (HIDWORD(v147) != 0)) | ((HIDWORD(v148) != 0) << 6) | ((HIDWORD(v145) != 0) << 7) | ((HIDWORD(v146) != 0) << 8) | (((v158 + v146 * (*(v366 + (v140 & 0xF)) - 1)) >> 32 != 0) << 9) | v113;
                makeStrideBytes();
                v160 = &v20[*v66];
                v161.i64[0] = 0x100000001;
                v161.i64[1] = 0x100000001;
                v162 = vceqq_s32(*v160, v161);
                v163.i64[0] = v162.i32[0];
                v163.i64[1] = v162.i32[1];
                v164 = v163;
                v165 = vceqq_s32(v160[1], v161);
                v163.i64[0] = v165.i32[0];
                v163.i64[1] = v165.i32[1];
                v166 = v163;
                v167 = vceqq_s32(v160[2], v161);
                v163.i64[0] = v167.i32[0];
                v163.i64[1] = v167.i32[1];
                v168 = v163;
                v169 = vceqq_s32(v160[3], v161);
                v163.i64[0] = v169.i32[0];
                v163.i64[1] = v169.i32[1];
                v170 = v163;
                v163.i64[0] = v162.i32[2];
                v163.i64[1] = v162.i32[3];
                v171 = v163;
                v163.i64[0] = v165.i32[2];
                v163.i64[1] = v165.i32[3];
                v172 = v163;
                v163.i64[0] = v167.i32[2];
                v163.i64[1] = v167.i32[3];
                v173 = v163;
                v163.i64[0] = v169.i32[2];
                v163.i64[1] = v169.i32[3];
                v174 = vbicq_s8(v409, v163);
                v175 = vbicq_s8(v407, v173);
                v176 = vbicq_s8(v405, v172);
                v177 = vbicq_s8(v403, v171);
                v178 = vbicq_s8(v408, v170);
                v179 = vbicq_s8(v406, v168);
                v180 = vbicq_s8(v404, v166);
                v181 = *&v20[*MEMORY[0x277CD73C8]];
                v182 = *&v20[*MEMORY[0x277CD73D8]];
                v183 = BYTE1(*&v20[*MEMORY[0x277CD73D8]]);
                v184 = vbicq_s8(v402, v164);
                v185 = BYTE2(*&v20[*MEMORY[0x277CD73D8]]);
                v186 = BYTE3(*&v20[*MEMORY[0x277CD73D8]]);
                v297 = v21;
                if ((v181 & 0xFFF8) != 0)
                {
                  v187 = v181 >> 3;
                  v365[0] = v184;
                  v365[1] = v177;
                  v365[2] = v180;
                  v365[3] = v176;
                  v365[4] = v179;
                  v365[5] = v175;
                  v365[6] = v178;
                  v365[7] = v174;
                  v188 = *(v365 + (v182 & 0xF)) / v187;
                  v364[0] = v184;
                  v364[1] = v177;
                  v364[2] = v180;
                  v364[3] = v176;
                  v364[4] = v179;
                  v364[5] = v175;
                  v364[6] = v178;
                  v364[7] = v174;
                  v189 = *(v364 + (v183 & 0xF));
                  v363[0] = v184;
                  v363[1] = v177;
                  v363[2] = v180;
                  v363[3] = v176;
                  v363[4] = v179;
                  v363[5] = v175;
                  v363[6] = v178;
                  v363[7] = v174;
                  v190 = *(v363 + (v185 & 0xF)) / v187;
                  v362[0] = v184;
                  v362[1] = v177;
                  v362[2] = v180;
                  v362[3] = v176;
                  v362[4] = v179;
                  v362[5] = v175;
                  v362[6] = v178;
                  v362[7] = v174;
                  v191 = v190;
                  v192 = *(v362 + (v186 & 0xF)) / v187;
                  v193 = v188;
                  v194 = v189 / v187;
                }

                else
                {
                  v361[0] = v184;
                  v361[1] = v177;
                  v361[2] = v180;
                  v361[3] = v176;
                  v361[4] = v179;
                  v361[5] = v175;
                  v361[6] = v178;
                  v361[7] = v174;
                  v360[0] = v184;
                  v360[1] = v177;
                  v360[2] = v180;
                  v360[3] = v176;
                  v360[4] = v179;
                  v360[5] = v175;
                  v360[6] = v178;
                  v360[7] = v174;
                  v359[0] = v184;
                  v359[1] = v177;
                  v359[2] = v180;
                  v359[3] = v176;
                  v359[4] = v179;
                  v359[5] = v175;
                  v359[6] = v178;
                  v359[7] = v174;
                  v358[0] = v184;
                  v358[1] = v177;
                  v358[2] = v180;
                  v358[3] = v176;
                  v358[4] = v179;
                  v358[5] = v175;
                  v358[6] = v178;
                  v358[7] = v174;
                  v191 = *(v359 + (v185 & 0xF));
                  v192 = *(v358 + (v186 & 0xF));
                  v193 = *(v361 + (v182 & 0xF));
                  v194 = *(v360 + (v183 & 0xF));
                }

                v296 = v43;
                v195 = v336;
                v195.i32[3] = v43;
                v337 = v195;
                v196 = v326;
                v196.i32[3] = v44;
                v327 = v196;
                v197 = v331;
                v197.i32[3] = v320;
                v332 = v197;
                v198 = &v20[*MEMORY[0x277CD7410]];
                v199 = *v198;
                v200 = *(v198 + 1);
                v201 = *(v198 + 2);
                v357 = *(v198 + 3);
                v356[2] = v201;
                v356[1] = v200;
                v356[0] = v199;
                v202 = v193 * (*(v356 + (v182 & 0xF)) - 1);
                v355[3] = v357;
                v355[2] = v201;
                v355[1] = v200;
                v355[0] = v199;
                v203 = v202 + v194 * (*(v355 + (v183 & 0xF)) - 1);
                v354[3] = v357;
                v354[2] = v201;
                v354[1] = v200;
                v354[0] = v199;
                v204 = v203 + v191 * (*(v354 + (v185 & 0xF)) - 1);
                v353[3] = v357;
                v353[2] = v201;
                v353[1] = v200;
                v353[0] = v199;
                v205 = v159 | ((HIDWORD(v193) != 0) << 10) | ((HIDWORD(v194) != 0) << 11) | ((HIDWORD(v191) != 0) << 12) | ((HIDWORD(v192) != 0) << 13) | (((v204 + v192 * (*(v353 + (v186 & 0xF)) - 1)) >> 32 != 0) << 14);
                makeStrideBytes();
                v206 = &v323[*v66];
                v207.i64[0] = 0x100000001;
                v207.i64[1] = 0x100000001;
                v208 = vceqq_s32(*v206, v207);
                v209.i64[0] = v208.i32[0];
                v209.i64[1] = v208.i32[1];
                v210 = v209;
                v211 = vceqq_s32(v206[1], v207);
                v209.i64[0] = v211.i32[0];
                v209.i64[1] = v211.i32[1];
                v212 = v209;
                v213 = vceqq_s32(v206[2], v207);
                v209.i64[0] = v213.i32[0];
                v209.i64[1] = v213.i32[1];
                v214 = v209;
                v215 = vceqq_s32(v206[3], v207);
                v209.i64[0] = v215.i32[0];
                v209.i64[1] = v215.i32[1];
                v216 = v209;
                v209.i64[0] = v208.i32[2];
                v209.i64[1] = v208.i32[3];
                v217 = v209;
                v209.i64[0] = v211.i32[2];
                v209.i64[1] = v211.i32[3];
                v218 = v209;
                v209.i64[0] = v213.i32[2];
                v209.i64[1] = v213.i32[3];
                v219 = v209;
                v209.i64[0] = v215.i32[2];
                v209.i64[1] = v215.i32[3];
                v220 = vbicq_s8(v409, v209);
                v221 = vbicq_s8(v407, v219);
                v222 = vbicq_s8(v405, v218);
                v223 = vbicq_s8(v403, v217);
                v224 = vbicq_s8(v408, v216);
                v225 = vbicq_s8(v406, v214);
                v226 = vbicq_s8(v404, v212);
                v227 = *&v323[*MEMORY[0x277CD73C8]];
                v228 = *&v323[*MEMORY[0x277CD73D8]];
                v229 = BYTE1(*&v323[*MEMORY[0x277CD73D8]]);
                v230 = vbicq_s8(v402, v210);
                v231 = BYTE2(*&v323[*MEMORY[0x277CD73D8]]);
                v232 = BYTE3(*&v323[*MEMORY[0x277CD73D8]]);
                if ((v227 & 0xFFF8) != 0)
                {
                  v233 = v227 >> 3;
                  v352[0] = v230;
                  v352[1] = v223;
                  v352[2] = v226;
                  v352[3] = v222;
                  v352[4] = v225;
                  v352[5] = v221;
                  v352[6] = v224;
                  v352[7] = v220;
                  v234 = *(v352 + (v228 & 0xF)) / v233;
                  v351[0] = v230;
                  v351[1] = v223;
                  v351[2] = v226;
                  v351[3] = v222;
                  v351[4] = v225;
                  v351[5] = v221;
                  v351[6] = v224;
                  v351[7] = v220;
                  v235 = *(v351 + (v229 & 0xF));
                  v350[0] = v230;
                  v350[1] = v223;
                  v350[2] = v226;
                  v350[3] = v222;
                  v350[4] = v225;
                  v350[5] = v221;
                  v350[6] = v224;
                  v350[7] = v220;
                  v236 = *(v350 + (v231 & 0xF)) / v233;
                  v349[0] = v230;
                  v349[1] = v223;
                  v349[2] = v226;
                  v349[3] = v222;
                  v349[4] = v225;
                  v349[5] = v221;
                  v349[6] = v224;
                  v349[7] = v220;
                  v237 = v236;
                  v238 = *(v349 + (v232 & 0xF)) / v233;
                  v239 = v234;
                  v240 = v235 / v233;
                }

                else
                {
                  v348[0] = v230;
                  v348[1] = v223;
                  v348[2] = v226;
                  v348[3] = v222;
                  v348[4] = v225;
                  v348[5] = v221;
                  v348[6] = v224;
                  v348[7] = v220;
                  v347[0] = v230;
                  v347[1] = v223;
                  v347[2] = v226;
                  v347[3] = v222;
                  v347[4] = v225;
                  v347[5] = v221;
                  v347[6] = v224;
                  v347[7] = v220;
                  v346[0] = v230;
                  v346[1] = v223;
                  v346[2] = v226;
                  v346[3] = v222;
                  v346[4] = v225;
                  v346[5] = v221;
                  v346[6] = v224;
                  v346[7] = v220;
                  v345[0] = v230;
                  v345[1] = v223;
                  v345[2] = v226;
                  v345[3] = v222;
                  v345[4] = v225;
                  v345[5] = v221;
                  v345[6] = v224;
                  v345[7] = v220;
                  v237 = *(v346 + (v231 & 0xF));
                  v238 = *(v345 + (v232 & 0xF));
                  v239 = *(v348 + (v228 & 0xF));
                  v240 = *(v347 + (v229 & 0xF));
                }

                v241 = &v323[*MEMORY[0x277CD7410]];
                v242 = *v241;
                v243 = *(v241 + 1);
                v244 = *(v241 + 3);
                v343 = *(v241 + 2);
                v344 = v244;
                v342[0] = v242;
                v342[1] = v243;
                v245 = v239 * (*(v342 + (v228 & 0xF)) - 1);
                v341[2] = v343;
                v341[3] = v244;
                v341[0] = v242;
                v341[1] = v243;
                v246 = v245 + v240 * (*(v341 + (v229 & 0xF)) - 1);
                v340[2] = v343;
                v340[3] = v244;
                v340[0] = v242;
                v340[1] = v243;
                v247 = v246 + v237 * (*(v340 + (v231 & 0xF)) - 1);
                v248 = (HIDWORD(v239) != 0) | (2 * (HIDWORD(v240) != 0)) | (4 * (HIDWORD(v237) != 0)) | (8 * (HIDWORD(v238) != 0));
                v339[2] = v343;
                v339[3] = v244;
                v339[0] = v242;
                v339[1] = v243;
                v249 = (v247 + v238 * (*(v339 + (v232 & 0xF)) - 1)) >> 32 != 0;
                *&v250 = -1;
                *(&v250 + 1) = -1;
                v425[1] = -1;
                v419 = v250;
                v420 = v250;
                v421 = v105;
                v422 = v299;
                v423 = v205;
                v424 = v248 | (16 * v249);
                v425[0] = 65539;
                v251 = vcgeq_u32(v337, v332);
                v259 = v320 < 9 && v312.i64[1] < 5uLL && v319 < 9 && v312.i64[0] < 5uLL && v308 < 9 && v311.i64[1] < 5uLL && v18 < 9 && v311.i64[0] < 5uLL;
                v260 = vminvq_u32(v251) >> 31;
                if (v301)
                {
                  v261 = 0x2000000;
                }

                else
                {
                  v261 = 0;
                }

                *&v420 = (2 * (v302 & 7)) | ((v312.i32[2] << 22) + 12582912) & 0xC00000 | ((v308 << 7) + 896) & 0x380 | (16 * v18 + 112) & 0x70 | ((v319 << 10) + 7168) & 0x1C00 | ((v320 << 13) - 0x2000) & 0xE000 | ((v311.i32[0] << 16) + 196608) & 0x30000 | ((v312.i32[0] << 20) + 3145728) & 0x300000 | ((v311.i32[2] << 18) + 786432) & 0xC0000 | v261 | v259 | (v260 << 24);
                v262 = v318 * v321;
                v263.i32[0] = 1;
                v264.i32[0] = 1;
                v264.i32[1] = v318;
                v264.i32[2] = v318 * v321;
                v264.i32[3] = v318 * v321 * v313;
                v263.i32[1] = v300;
                v263.i32[2] = v300 * v317;
                v263.i32[3] = v300 * v317 * v316;
                v402 = v337;
                v403 = v327;
                v404 = v264;
                v405 = v263;
                v406 = vuzp1q_s32(v309, v310);
                v407 = v332;
                v408 = vuzp1q_s32(v311, v312);
                v409 = vuzp1q_s32(v314, v305);
                v411 = 0;
                __asm { FMOV            V1.4S, #1.0 }

                v413 = 0;
                v412 = 0;
                v410 = 1065353216;
                v414 = 0;
                v415 = vdivq_f32(_Q1, vcvtq_f32_u32(v408));
                v416 = v337;
                if (v303)
                {
                  MPSGetUIntDivisorMagicNumber();
                  v417 = v268;
                }

                MPSGetUIntDivisorMagicNumber();
                v418 = v269;
                v270 = *(v22 + *MEMORY[0x277CD7400]);
                v271 = *(v22 + *MEMORY[0x277CD73C8]);
                v272 = v271 >> 3;
                if (v270 != (v271 >> 3) * *(v22 + *MEMORY[0x277CD7410]))
                {
                  v273.i32[0] = 1;
                  v273.i32[1] = v270 / v272;
                  v273.i32[2] = v270 / v272 * v317;
                  v273.i32[3] = v273.i32[2] * v316;
                  v405 = v273;
                }

                v294 = *(v15 + *MEMORY[0x277CD7360]);
                v295 = *(v15 + *MEMORY[0x277CD7368]);
                MPSLibrary::CreateUberShaderKey();
                PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                if (!PipelineStateForMPSKey)
                {
                  return -1;
                }

                v275 = PipelineStateForMPSKey;
                [v307 setComputePipelineState:{PipelineStateForMPSKey, 0, v294, v295, 0, 0}];
                MPSLibrary::ReleaseMPSKey();
                v276 = [v275 threadExecutionWidth];
                if (v276 <= 1)
                {
                  v277 = 1;
                }

                else
                {
                  v277 = v276;
                }

                if (v277 > v318 || (v278 = v277, v318 <= 3) && (v278 = v277, v277 > v321))
                {
                  if (v276 <= 1)
                  {
                    v278 = 1;
                  }

                  else
                  {
                    v278 = v277 >> 1;
                  }
                }

                v279 = [v275 maxTotalThreadsPerThreadgroup];
                v280 = 256;
                if (v279 < 0x100)
                {
                  v280 = v279;
                }

                if (v280 <= 2 * v278)
                {
                  v281 = 1;
                  if (v278 <= v318)
                  {
                    goto LABEL_307;
                  }
                }

                else
                {
                  v281 = v280 / v278;
                  if (v278 <= v318)
                  {
                    goto LABEL_307;
                  }
                }

                if (v278 <= v321 || v278 <= v313)
                {
                  v282 = v281;
                  v281 = v278;
                  v278 = 1;
                  goto LABEL_309;
                }

LABEL_307:
                v282 = 1;
LABEL_309:
                if (v282 >= v313)
                {
                  v283 = v313;
                }

                else
                {
                  v283 = v282;
                }

                if (v278 * v281 >= v277)
                {
                  v284 = v283;
                }

                else
                {
                  v284 = v282;
                }

                if (v281 >= v321)
                {
                  v285 = v321;
                }

                else
                {
                  v285 = v281;
                }

                if (v284 * v278 >= v277)
                {
                  v286 = v285;
                }

                else
                {
                  v286 = v281;
                }

                v287 = (v278 + v318 - 1) / v278;
                v288 = (v321 + v286 - 1) / v286;
                v289 = (v313 + v284 - 1) / v284;
                if ((v303 | v315))
                {
                  if (v303)
                  {
                    v289 = (v296 * v313);
                    v288 = v321;
                    v287 = (v277 + v318 - 1) / v277;
                  }

                  v290 = v22;
                  if (v315)
                  {
                    v284 = 1;
                    v322 = 1;
                    v278 = v277;
                    v333 = v313;
                    v328 = v296;
                    v338 = (v277 + v262 - 1) / v277;
                  }

                  else
                  {
                    v328 = v289;
                    v333 = v288;
                    v338 = v287;
                    v284 = 1;
                    v322 = 1;
                    v278 = v277;
                  }
                }

                else
                {
                  v322 = v286;
                  v328 = (v313 + v284 - 1) / v284;
                  v333 = v288;
                  v338 = (v278 + v318 - 1) / v278;
                  v290 = v22;
                }

                v291 = v307;
                [v307 setComputePipelineState:v275];
                v292 = malloc_type_calloc(0x50uLL, 4uLL, 0x100004052888210uLL);
                [v307 setBuffer:objc_msgSend(v297 offset:"buffer") atIndex:{*(*(v298 + 8) + 64) + MPSGetLinearOffsetBytes(v297, 0, 4, v292, 0), 0}];
                [v307 setBuffer:objc_msgSend(v290 offset:"buffer") atIndex:{*(*(v298 + 8) + 224) + MPSGetLinearOffsetBytes(v290, 0, 4, v292 + 80, 0), 1}];
                [v307 setBuffer:objc_msgSend(v20 offset:"buffer") atIndex:{*(*(v298 + 8) + 144) + MPSGetLinearOffsetBytes(v20, 0, 4, v292 + 160, 0), 2}];
                [v307 setBuffer:objc_msgSend(v323 offset:"buffer") atIndex:{*(*(v298 + 32) + 64) + MPSGetLinearOffsetBytes(v323, 0, 4, v292 + 240, 0), 3}];
                objc_msgSend_setBytes_length_atIndex_(v307);
                free(v292);
                objc_msgSend_setBytes_length_atIndex_(v307);
                if ((v303 | v315))
                {
                  [v307 setBuffer:objc_msgSend(v290 offset:"buffer") atIndex:{0, 28}];
                  [v307 setBuffer:objc_msgSend(v20 offset:"buffer") atIndex:{0, 27}];
                  if (v306 <= 23)
                  {
                    if ((atomic_load_explicit(&qword_27DF86AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86AD0))
                    {
                      xmmword_27DF86BC0 = 0u;
                      xmmword_27DF86BB0 = 0u;
                      dword_27DF86BD0 = 1065353216;
                      qword_27DF86BD8 = 850045863;
                      xmmword_27DF86BE0 = 0u;
                      unk_27DF86BF0 = 0u;
                      xmmword_27DF86C00 = 0u;
                      qword_27DF86C10 = 0;
                      __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86BB0, &dword_2399F7000);
                      __cxa_guard_release(&qword_27DF86AD0);
                    }

                    v291 = v307;
                    [v307 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86BB0 offset:objc_msgSend(objc_msgSend(v304 atIndex:{"commandQueue"), "device"), 0x10uLL, &__block_literal_global_159), 0, 26}];
                    if ((atomic_load_explicit(&qword_27DF86AD8, memory_order_acquire) & 1) == 0)
                    {
                      if (__cxa_guard_acquire(&qword_27DF86AD8))
                      {
                        xmmword_27DF86C18 = 0u;
                        unk_27DF86C28 = 0u;
                        dword_27DF86C38 = 1065353216;
                        qword_27DF86C40 = 850045863;
                        xmmword_27DF86C48 = 0u;
                        unk_27DF86C58 = 0u;
                        xmmword_27DF86C68 = 0u;
                        qword_27DF86C78 = 0;
                        __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86C18, &dword_2399F7000);
                        __cxa_guard_release(&qword_27DF86AD8);
                      }
                    }

                    [v307 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86C18 offset:objc_msgSend(objc_msgSend(v304 atIndex:{"commandQueue"), "device"), 0x10uLL, 0), 0, 25}];
                  }
                }

                v401[0] = v338;
                v401[1] = v333;
                v401[2] = v328;
                v400[0] = v278;
                v400[1] = v322;
                v400[2] = v284;
                [v291 dispatchThreadgroups:v401 threadsPerThreadgroup:v400];
                MPSLibrary::ReleaseComputeState();
                return 0;
            }
          }

          v63 = 18;
          goto LABEL_244;
      }
    }

    goto LABEL_197;
  }

  return EncodePoolingMultiDestination(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t EncodePoolingMultiDestination(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v364 = v10;
  v380 = v11;
  v12 = *(v7 + *MEMORY[0x277CD7350]);
  v352 = *(v7 + 136);
  v351 = *(v7 + 144);
  v363 = *(v7 + 152);
  v365 = *(v7 + 160);
  v349 = *(v7 + 208);
  v350 = *(v7 + 200);
  v359 = *(v7 + 216);
  v348 = *(v7 + 224);
  v346 = *(v7 + 168);
  v345 = *(v7 + 176);
  v344 = *(v7 + 184);
  v347 = *(v7 + 192);
  v342 = *(v7 + 240);
  v343 = *(v7 + 232);
  v340 = *(v7 + 256);
  v341 = *(v7 + 248);
  v379 = v7;
  v13 = *(v7 + 124);
  if (v13 != 1 && v13 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  MEMORY[0x23EE7C450](v438, v364, 0);
  v14 = [*(v9 + 16) objectAtIndexedSubscript:0];
  v15 = [*(v9 + 40) objectAtIndexedSubscript:0];
  v16 = [*(v9 + 40) objectAtIndexedSubscript:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();
  v19 = v18;
  v20 = MEMORY[0x277CD7410];
  v21 = *MEMORY[0x277CD7410];
  v22 = *(v14 + v21);
  v23 = *(v14 + v21 + 16);
  v24 = *(v14 + v21 + 32);
  v25 = *MEMORY[0x277CD73D8];
  v26 = *(v14 + v25);
  v437 = *(v14 + v21 + 48);
  v436[2] = v24;
  v436[1] = v23;
  v436[0] = v22;
  v355 = *(v436 + (v26 & 0xF));
  v435[3] = v437;
  v435[2] = v24;
  v435[1] = v23;
  v435[0] = v22;
  v357 = *(v435 + (BYTE1(v26) & 0xF));
  v434[3] = v437;
  v434[2] = v24;
  v434[1] = v23;
  v434[0] = v22;
  v356 = *(v434 + (BYTE2(v26) & 0xF));
  v433[3] = v437;
  v433[2] = v24;
  v433[1] = v23;
  v433[0] = v22;
  v27 = *(v433 + (BYTE3(v26) & 0xF));
  if (isKindOfClass)
  {
    if ((v18 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v28 = v20;
    v29 = (v16 + *v20);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v16 + *MEMORY[0x277CD73D8]);
    v33 = v29[2];
    v427 = v29[3];
    v426[2] = v33;
    v426[1] = v31;
    v426[0] = v30;
    v425[3] = v427;
    v425[2] = v33;
    v425[1] = v31;
    v425[0] = v30;
    v424[3] = v427;
    v424[2] = v33;
    v424[1] = v31;
    v424[0] = v30;
    v423[3] = v427;
    v423[2] = v33;
    v423[1] = v31;
    v423[0] = v30;
    v30.i32[0] = *(v426 + (v32 & 0xF));
    v30.i32[1] = *(v425 + (BYTE1(v32) & 0xF));
    v30.i32[2] = *(v424 + (BYTE2(v32) & 0xF));
    v30.i32[3] = *(v423 + (BYTE3(v32) & 0xF));
    v371 = v30;
  }

  else
  {
    v34 = *(v15 + v21);
    v35 = *(v15 + v21 + 16);
    v36 = *(v15 + v21 + 32);
    v37 = *(v15 + v25);
    v432 = *(v15 + v21 + 48);
    v431[2] = v36;
    v431[1] = v35;
    v431[0] = v34;
    v38 = *(v431 + (v37 & 0xF));
    v430[3] = v432;
    v430[2] = v36;
    v430[1] = v35;
    v430[0] = v34;
    v429[3] = v432;
    v429[2] = v36;
    v429[1] = v35;
    v429[0] = v34;
    v428[3] = v432;
    v428[2] = v36;
    v428[1] = v35;
    v428[0] = v34;
    v34.i32[0] = v38;
    v34.i32[1] = *(v430 + (BYTE1(v37) & 0xF));
    v34.i32[2] = *(v429 + (BYTE2(v37) & 0xF));
    v34.i32[3] = *(v428 + (BYTE3(v37) & 0xF));
    v371 = v34;
    if (v18)
    {
      v28 = MEMORY[0x277CD7410];
    }

    else
    {
      v28 = MEMORY[0x277CD7410];
      if (*(v16 + v21 + 4 * (*(v16 + v25) & 0xF)) != v38 && MTLReportFailureTypeEnabled())
      {
        v321 = 0;
        MTLReportFailure();
      }

      if (*(v16 + *v20 + 4 * (*(v16 + *MEMORY[0x277CD73D8] + 1) & 0xF)) != *(v15 + *v20 + 4 * (*(v15 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        v321 = 1;
        MTLReportFailure();
      }

      if (*(v16 + *v20 + 4 * (*(v16 + *MEMORY[0x277CD73D8] + 2) & 0xF)) != *(v15 + *v20 + 4 * (*(v15 + *MEMORY[0x277CD73D8] + 2) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        v321 = 2;
        MTLReportFailure();
      }

      if (*(v16 + *v20 + 4 * (*(v16 + *MEMORY[0x277CD73D8] + 3) & 0xF)) != *(v15 + *v20 + 4 * (*(v15 + *MEMORY[0x277CD73D8] + 3) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        v321 = 3;
        MTLReportFailure();
      }
    }
  }

  v39.i64[0] = __PAIR64__(v357, v355);
  v39.i64[1] = __PAIR64__(v27, v356);
  v40 = *(v12 + 1482) << 16;
  v41 = 1;
  if (v348 <= 0x10)
  {
    v42 = 1;
  }

  else
  {
    v42 = 2;
  }

  if (v40 > 0x200000)
  {
    ++v42;
  }

  if (v359 <= 0x10)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  if (v40 > 0x200000)
  {
    ++v43;
  }

  if (v349 <= 0x10)
  {
    v44 = 1;
  }

  else
  {
    v44 = 2;
  }

  if (v40 > 0x200000)
  {
    ++v44;
  }

  if (v350 > 0x10)
  {
    v41 = 2;
  }

  v358 = *(v14 + *MEMORY[0x277CD73C8]);
  if (v40 <= 0x200000)
  {
    v45 = v41;
  }

  else
  {
    v45 = v41 + 1;
  }

  v46 = v350 << v45;
  _CF = v352 > 8 && v352 >= v46;
  v48 = _CF;
  v50 = v351 > 8 && v351 >= v349 << v44;
  v52 = v363 > 8 && v363 >= v359 << v43;
  v54 = v365 > 8 && v365 >= v348 << v42;
  v366 = v39;
  if ((v19 & 1) == 0)
  {
    v362 = 0;
    v372 = 0;
    v368 = 0;
    v354 = v365;
    v59 = v363;
    v373 = v359;
    v374 = v351;
    v376 = v350;
    v377 = v352;
    v375 = v349;
    v329 = v347;
    v330 = v348;
    v331 = v344;
    v332 = v345;
    v339 = v340;
    v333 = v346;
    v334 = v341;
    v336 = v342;
    v337 = v343;
    v382 = v371;
    goto LABEL_71;
  }

  v368 = 0;
  v362 = 0;
  if (v379[31] == 5 || !((v351 * v352 * v363 * v365 > 0xFF) | ((v54 || v52) | v50 | v48) & 1))
  {
    v354 = v365;
    v59 = v363;
    v330 = v348;
    v373 = v359;
    v374 = v351;
    v375 = v349;
    v376 = v350;
    v377 = v352;
    v329 = v347;
    v331 = v344;
    v332 = v345;
    v339 = v340;
    v333 = v346;
    v334 = v341;
    v336 = v342;
    v337 = v343;
    v382 = v371;
    v372 = 0;
    goto LABEL_71;
  }

  if (v48)
  {
    v55 = 0;
    v56 = 0;
    v57 = v371;
    v57.i32[0] = v355;
    v382 = v57;
    v377 = 1;
    v376 = 1;
    v337 = 1;
    v362 = 1;
    if (!v50)
    {
      goto LABEL_63;
    }

LABEL_128:
    v58 = 0;
    v372 = v362++ | 2;
    v70 = v382;
    v70.i32[1] = v357;
    v382 = v70;
    v374 = 1;
    v375 = 1;
    v336 = 1;
    if (v52)
    {
      goto LABEL_129;
    }

LABEL_119:
    if (v363 > 1 || v344 || v359 != 1 || v371.i32[2] != v356)
    {
      if (v54)
      {
        v332 = v58;
        v333 = v55;
        v329 = 0;
        v372 |= 8u;
        ++v362;
        v73 = v382;
        v73.i32[3] = v27;
        v382 = v73;
        v354 = 1;
        v334 = v341;
        v331 = v344;
        v373 = v359;
        v59 = v363;
        goto LABEL_134;
      }

      v56 = 1;
      v334 = v341;
      v65 = v344;
      v373 = v359;
      v59 = v363;
      v66 = v347;
      v67 = v348;
      v68 = v348;
      v69 = v365;
      if (v365 > 1)
      {
        goto LABEL_201;
      }

      goto LABEL_192;
    }

    v59 = v363;
    v334 = v341;
    if (v54)
    {
      goto LABEL_130;
    }

LABEL_124:
    v65 = 0;
    v373 = 1;
    v66 = v347;
    v67 = v348;
    v68 = v348;
    v69 = v365;
    if (v365 > 1)
    {
LABEL_201:
      v331 = v65;
      v332 = v58;
      v333 = v55;
      v329 = v66;
      v330 = v68;
      if (v372)
      {
        v354 = v69;
        v74 = v340;
        goto LABEL_203;
      }

      v372 = 0;
      v368 = 0;
      v354 = v69;
      v339 = v340;
LABEL_71:
      v60 = MEMORY[0x277CD7350];
      goto LABEL_72;
    }

LABEL_192:
    v66 = v347;
    v68 = v67;
    if (!v347)
    {
      if (v67 == 1 && v371.i32[3] == v27)
      {
        v68 = 1;
      }

      else
      {
        v56 = 1;
        v68 = v67;
      }

      if ((v56 & 1) == 0)
      {
LABEL_204:
        v78 = 0;
        v368 = 0;
        if (!v372)
        {
          goto LABEL_579;
        }

LABEL_552:
        v305 = v365;
        if (v78)
        {
          goto LABEL_579;
        }

        if (v372)
        {
          if (v362 < 2)
          {
            TempBuffer = 0;
          }

          else
          {
            v309 = vextq_s8(v382, v371, 4uLL);
            *v309.i8 = vmul_s32(*v309.i8, *&vextq_s8(v309, v309, 8uLL));
            TempBuffer = MPSAutoCache::GetTempBuffer(v438, 4 * (v309.i32[0] * v309.i32[1]), 0);
          }

          v311 = v382;
          v311.i32[0] = v371.i32[0];
          v382 = v311;
          v78 = EncodePoolingMultiDestination1DPass(v379, v380, v364, v9, 0, v352, v350, v343, v346, v368, TempBuffer, v358 == 268435472);
          v306 = 2;
          v368 = TempBuffer;
          v305 = v365;
          v307 = v363;
          v308 = v359;
          if ((v372 & 2) == 0)
          {
            goto LABEL_563;
          }
        }

        else
        {
          v78 = 0;
          v306 = 1;
          v307 = v363;
          v308 = v359;
          if ((v372 & 2) == 0)
          {
            goto LABEL_563;
          }
        }

        if (!v78)
        {
          if (v306 >= v362)
          {
            v313 = 0;
          }

          else
          {
            v312 = vuzp1q_s32(v382, vextq_s8(v382, v371, 0xCuLL));
            *v312.i8 = vmul_s32(*v312.i8, *&vextq_s8(v312, v312, 8uLL));
            v313 = MPSAutoCache::GetTempBuffer(v438, 4 * (v312.i32[0] * v312.i32[1]), 0);
          }

          v314 = v382;
          v314.i32[1] = v371.i32[1];
          v382 = v314;
          v78 = EncodePoolingMultiDestination1DPass(v379, v380, v364, v9, 1, v351, v349, v342, v345, v368, v313, v358 == 268435472);
          ++v306;
          v305 = v365;
          v307 = v363;
          v308 = v359;
          if ((v372 & 4) == 0)
          {
            goto LABEL_570;
          }

          goto LABEL_567;
        }

LABEL_563:
        v313 = v368;
        if ((v372 & 4) == 0)
        {
          goto LABEL_570;
        }

LABEL_567:
        if (!v78)
        {
          if (v306 >= v362)
          {
            v317 = 0;
          }

          else
          {
            v315 = vrev64q_s32(v382);
            v316 = v315;
            v316.i32[3] = v371.i32[2];
            *v315.i8 = vmul_s32(*v315.i8, *&vextq_s8(v316, v316, 8uLL));
            v317 = MPSAutoCache::GetTempBuffer(v438, 4 * (v315.i32[0] * v315.i32[1]), 0);
            v307 = v363;
            v308 = v359;
          }

          v318 = v382;
          v318.i32[2] = v371.i32[2];
          v382 = v318;
          v78 = EncodePoolingMultiDestination1DPass(v379, v380, v364, v9, 2, v307, v308, v341, v344, v313, v317, v358 == 268435472);
          ++v306;
          v305 = v365;
          if ((v372 & 8) == 0)
          {
            goto LABEL_579;
          }

          goto LABEL_574;
        }

LABEL_570:
        v317 = v313;
        if ((v372 & 8) == 0)
        {
          goto LABEL_579;
        }

LABEL_574:
        if (!v78)
        {
          if (v306 >= v362)
          {
            v319 = 0;
          }

          else
          {
            v319 = MPSAutoCache::GetTempBuffer(v438, 4 * (v382.i32[1] * v371.i32[3] * v382.i32[0] * v382.i32[2]), 0);
            v305 = v365;
          }

          v78 = EncodePoolingMultiDestination1DPass(v379, v380, v364, v9, 3, v305, v348, v340, v347, v317, v319, v358 == 268435472);
        }

        goto LABEL_579;
      }

      v66 = 0;
      v69 = v365;
    }

    goto LABEL_201;
  }

  if (v352 <= 1 && !v346 && v350 == 1 && v371.i32[0] == v355)
  {
    v55 = 0;
    v56 = 0;
    v362 = 0;
    v376 = 1;
    v377 = v352;
  }

  else
  {
    v362 = 0;
    v56 = 1;
    v376 = v350;
    v377 = v352;
    v55 = v346;
  }

  v337 = v343;
  v382 = v371;
  if (v50)
  {
    goto LABEL_128;
  }

LABEL_63:
  if (v351 > 1 || v345 || v349 != 1 || v371.i32[1] != v357)
  {
    v56 = 1;
    v374 = v351;
    v375 = v349;
    v58 = v345;
    v336 = v342;
    v372 = v362;
    if (v52)
    {
      goto LABEL_129;
    }

    goto LABEL_119;
  }

  v58 = 0;
  v375 = 1;
  v374 = v351;
  v336 = v342;
  v372 = v362;
  if (!v52)
  {
    goto LABEL_119;
  }

LABEL_129:
  v372 |= 4u;
  ++v362;
  v71 = v382;
  v71.i32[2] = v356;
  v382 = v71;
  v59 = 1;
  v334 = 1;
  if (!v54)
  {
    goto LABEL_124;
  }

LABEL_130:
  v372 |= 8u;
  ++v362;
  v72 = v382;
  v72.i32[3] = v27;
  v382 = v72;
  if ((v56 & 1) == 0)
  {
    goto LABEL_204;
  }

  v332 = v58;
  v333 = v55;
  v331 = 0;
  v329 = 0;
  v373 = 1;
  v354 = 1;
LABEL_134:
  v330 = 1;
  v74 = 1;
LABEL_203:
  v339 = v74;
  v60 = MEMORY[0x277CD7350];
  v368 = MPSAutoCache::GetTempBuffer(v438, 4 * (v382.i32[0] * v382.i32[1] * v382.i32[2] * v382.i32[3]), 0);
LABEL_72:
  v338 = *(v379 + *v60);
  v327 = v379[31];
  v328 = v379[32];
  v326 = v379[33];
  v381 = v9;
  v378 = [*(v9 + 16) objectAtIndexedSubscript:{0, v321}];
  v370 = [*(v9 + 40) objectAtIndexedSubscript:0];
  v369 = [*(v9 + 40) objectAtIndexedSubscript:1];
  objc_opt_class();
  v361 = objc_opt_isKindOfClass();
  objc_opt_class();
  v360 = objc_opt_isKindOfClass();
  v61 = *MEMORY[0x277CD73C8];
  v62 = *&v378[v61];
  if (v62 <= 285212703)
  {
    v63 = v9;
    if (v62 <= 31)
    {
      if (v62 > 7)
      {
        if (v62 == 8)
        {
          v64 = 6;
          if (v361)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        }

        if (v62 == 16)
        {
          v64 = 7;
          if (v361)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        }
      }

      else
      {
        if (v62 == -1879048176)
        {
          v64 = 12;
          if (v361)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        }

        if (v62 == 4)
        {
          v64 = 5;
          if (v361)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        }
      }
    }

    else if (v62 <= 268435463)
    {
      if (v62 == 32)
      {
        v64 = 8;
        if (v361)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }

      if (v62 == 64)
      {
        v64 = 9;
        if (v361)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }
    }

    else
    {
      switch(v62)
      {
        case 268435464:
          v64 = 15;
          if (v361)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        case 268435472:
          v64 = 10;
          if (v361)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        case 268435488:
          v64 = 11;
          if (v361)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
      }
    }

    goto LABEL_155;
  }

  v63 = v9;
  if (v62 <= 536870915)
  {
    if (v62 > 301989895)
    {
      if (v62 == 301989896)
      {
        v64 = 16;
        if (v361)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }

      if (v62 == 335544328)
      {
        v64 = 17;
        if (v361)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }
    }

    else
    {
      if (v62 == 285212704)
      {
        v64 = 13;
        if (v361)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }

      if (v62 == 285212736)
      {
        v64 = 14;
        if (v361)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }
    }

    goto LABEL_155;
  }

  if (v62 > 536870927)
  {
    switch(v62)
    {
      case 536870928:
        v64 = 2;
        if (v361)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      case 536870944:
        v64 = 3;
        if (v361)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      case 536870976:
        v64 = 4;
        if (v361)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
    }

    goto LABEL_155;
  }

  if (v62 != 536870916)
  {
    if (v62 == 536870920)
    {
      v64 = 1;
      if (v361)
      {
        goto LABEL_189;
      }

      goto LABEL_156;
    }

LABEL_155:
    v64 = 18;
    if (v361)
    {
      goto LABEL_189;
    }

    goto LABEL_156;
  }

  v64 = 0;
  if (v361)
  {
    goto LABEL_189;
  }

LABEL_156:
  v75 = *&v370[v61];
  if (v75 > 285212703)
  {
    if (v75 <= 536870915)
    {
      if (v75 > 301989895)
      {
        if (v75 == 301989896)
        {
          v76 = 16;
          goto LABEL_217;
        }

        if (v75 == 335544328)
        {
          v76 = 17;
          goto LABEL_217;
        }
      }

      else
      {
        if (v75 == 285212704)
        {
          v76 = 13;
          goto LABEL_217;
        }

        if (v75 == 285212736)
        {
          v76 = 14;
          goto LABEL_217;
        }
      }

      goto LABEL_216;
    }

    if (v75 > 536870927)
    {
      switch(v75)
      {
        case 536870928:
          v76 = 2;
          goto LABEL_217;
        case 536870944:
          v76 = 3;
          goto LABEL_217;
        case 536870976:
          v76 = 4;
          goto LABEL_217;
      }

      goto LABEL_216;
    }

    if (v75 != 536870916)
    {
      if (v75 == 536870920)
      {
        v76 = 1;
        goto LABEL_217;
      }

      goto LABEL_216;
    }

LABEL_189:
    v353 = 0;
    if (v360)
    {
      goto LABEL_263;
    }

    goto LABEL_218;
  }

  if (v75 <= 31)
  {
    if (v75 > 7)
    {
      if (v75 == 8)
      {
        v76 = 6;
        goto LABEL_217;
      }

      if (v75 == 16)
      {
        v76 = 7;
        goto LABEL_217;
      }
    }

    else
    {
      if (v75 == -1879048176)
      {
        v76 = 12;
        goto LABEL_217;
      }

      if (v75 == 4)
      {
        v76 = 5;
        goto LABEL_217;
      }
    }
  }

  else if (v75 <= 268435463)
  {
    if (v75 == 32)
    {
      v76 = 8;
      goto LABEL_217;
    }

    if (v75 == 64)
    {
      v76 = 9;
      goto LABEL_217;
    }
  }

  else
  {
    switch(v75)
    {
      case 268435464:
        v76 = 15;
        goto LABEL_217;
      case 268435472:
        v76 = 10;
        goto LABEL_217;
      case 268435488:
        v76 = 11;
        goto LABEL_217;
    }
  }

LABEL_216:
  v76 = 18;
LABEL_217:
  v353 = v76;
  if (v360)
  {
    goto LABEL_263;
  }

LABEL_218:
  v79 = *&v369[v61];
  if (v79 > 285212703)
  {
    if (v79 <= 536870915)
    {
      if (v79 > 301989895)
      {
        if (v79 == 301989896)
        {
          v80 = 512;
          goto LABEL_262;
        }

        if (v79 == 335544328)
        {
          v80 = 544;
          goto LABEL_262;
        }
      }

      else
      {
        if (v79 == 285212704)
        {
          v80 = 416;
          goto LABEL_262;
        }

        if (v79 == 285212736)
        {
          v80 = 448;
          goto LABEL_262;
        }
      }
    }

    else if (v79 <= 536870927)
    {
      if (v79 == 536870916)
      {
        v80 = 0;
        goto LABEL_262;
      }

      if (v79 == 536870920)
      {
        v80 = 32;
        goto LABEL_262;
      }
    }

    else
    {
      switch(v79)
      {
        case 536870928:
          v80 = 64;
          goto LABEL_262;
        case 536870944:
          v80 = 96;
          goto LABEL_262;
        case 536870976:
          v80 = 128;
          goto LABEL_262;
      }
    }

LABEL_261:
    v80 = 576;
    goto LABEL_262;
  }

  if (v79 <= 31)
  {
    if (v79 > 7)
    {
      if (v79 == 8)
      {
        v80 = 192;
        goto LABEL_262;
      }

      if (v79 == 16)
      {
        v80 = 224;
        goto LABEL_262;
      }
    }

    else
    {
      if (v79 == -1879048176)
      {
        v80 = 384;
        goto LABEL_262;
      }

      if (v79 == 4)
      {
        v80 = 160;
        goto LABEL_262;
      }
    }

    goto LABEL_261;
  }

  if (v79 <= 268435463)
  {
    if (v79 == 32)
    {
      v80 = 256;
      goto LABEL_262;
    }

    if (v79 == 64)
    {
      v80 = 288;
      goto LABEL_262;
    }

    goto LABEL_261;
  }

  if (v79 == 268435464)
  {
    v80 = 480;
    goto LABEL_262;
  }

  if (v79 == 268435472)
  {
    v80 = 320;
    goto LABEL_262;
  }

  if (v79 != 268435488)
  {
    goto LABEL_261;
  }

  v80 = 352;
LABEL_262:
  v353 |= v80;
LABEL_263:
  v324 = *(v63 + 48);
  makeStrideBytes();
  v81 = MEMORY[0x277CD73D0];
  v82 = &v378[*MEMORY[0x277CD73D0]];
  v83.i64[0] = 0x100000001;
  v83.i64[1] = 0x100000001;
  v84 = vceqq_s32(*v82, v83);
  v85.i64[0] = v84.i32[0];
  v85.i64[1] = v84.i32[1];
  v86 = v85;
  v87 = vceqq_s32(v82[1], v83);
  v85.i64[0] = v87.i32[0];
  v85.i64[1] = v87.i32[1];
  v88 = v85;
  v89 = vceqq_s32(v82[2], v83);
  v85.i64[0] = v89.i32[0];
  v85.i64[1] = v89.i32[1];
  v90 = v85;
  v91 = vceqq_s32(v82[3], v83);
  v85.i64[0] = v91.i32[0];
  v85.i64[1] = v91.i32[1];
  v92 = v85;
  v85.i64[0] = v84.i32[2];
  v85.i64[1] = v84.i32[3];
  v93 = v85;
  v85.i64[0] = v87.i32[2];
  v85.i64[1] = v87.i32[3];
  v94 = v85;
  v85.i64[0] = v89.i32[2];
  v85.i64[1] = v89.i32[3];
  v95 = v85;
  v85.i64[0] = v91.i32[2];
  v85.i64[1] = v91.i32[3];
  v96 = vbicq_s8(v448, v85);
  v97 = vbicq_s8(v446, v95);
  v98 = vbicq_s8(v444, v94);
  v99 = vbicq_s8(v442, v93);
  v100 = vbicq_s8(v447, v92);
  v101 = vbicq_s8(v445, v90);
  v102 = vbicq_s8(v443, v88);
  v103 = vbicq_s8(v441, v86);
  v104 = *&v378[*MEMORY[0x277CD73D8]];
  v105 = *&v378[*MEMORY[0x277CD73C8]];
  if ((v105 & 0xFFF8) != 0)
  {
    v106 = v105 >> 3;
    v107 = *&v378[*MEMORY[0x277CD73D8]];
    v422[0] = v103;
    v422[1] = v99;
    v422[2] = v102;
    v422[3] = v98;
    v422[4] = v101;
    v422[5] = v97;
    v422[6] = v100;
    v422[7] = v96;
    v108 = *(v422 + (v104 & 0xF));
    v109 = BYTE1(v104);
    v421[0] = v103;
    v421[1] = v99;
    v421[2] = v102;
    v421[3] = v98;
    v421[4] = v101;
    v421[5] = v97;
    v421[6] = v100;
    v421[7] = v96;
    v110 = *(v421 + (BYTE1(v104) & 0xF));
    v420[0] = v103;
    v420[1] = v99;
    v420[2] = v102;
    v420[3] = v98;
    v420[4] = v101;
    v420[5] = v97;
    v420[6] = v100;
    v420[7] = v96;
    v111 = *(v420 + (BYTE2(v104) & 0xF)) / v106;
    v419[0] = v103;
    v419[1] = v99;
    v419[2] = v102;
    v419[3] = v98;
    v419[4] = v101;
    v419[5] = v97;
    v419[6] = v100;
    v419[7] = v96;
    v112 = v111;
    v113 = *(v419 + (BYTE3(v104) & 0xF)) / v106;
    v114 = v108 / v106;
    v115 = v110 / v106;
    v116 = BYTE3(v104);
    v117 = BYTE2(v104);
  }

  else
  {
    v107 = *&v378[*MEMORY[0x277CD73D8]];
    v418[0] = v103;
    v418[1] = v99;
    v418[2] = v102;
    v418[3] = v98;
    v418[4] = v101;
    v418[5] = v97;
    v418[6] = v100;
    v418[7] = v96;
    v109 = BYTE1(v104);
    v417[0] = v103;
    v417[1] = v99;
    v417[2] = v102;
    v417[3] = v98;
    v417[4] = v101;
    v417[5] = v97;
    v417[6] = v100;
    v417[7] = v96;
    v117 = BYTE2(v104);
    v416[0] = v103;
    v416[1] = v99;
    v416[2] = v102;
    v416[3] = v98;
    v416[4] = v101;
    v416[5] = v97;
    v416[6] = v100;
    v416[7] = v96;
    v415[0] = v103;
    v415[1] = v99;
    v415[2] = v102;
    v415[3] = v98;
    v415[4] = v101;
    v415[5] = v97;
    v415[6] = v100;
    v415[7] = v96;
    v112 = *(v416 + (BYTE2(v104) & 0xF));
    v113 = *(v415 + (BYTE3(v104) & 0xF));
    v114 = *(v418 + (v104 & 0xF));
    v116 = BYTE3(v104);
    v115 = *(v417 + (BYTE1(v104) & 0xF));
  }

  v118 = &v378[*v28];
  v119 = *v118;
  v120 = *(v118 + 1);
  v121 = *(v118 + 2);
  v122 = HIDWORD(v114) != 0;
  v414 = *(v118 + 3);
  v413[2] = v121;
  v413[1] = v120;
  v413[0] = v119;
  v123 = v114 * (*(v413 + (v107 & 0xF)) - 1);
  v124 = HIDWORD(v115) != 0;
  v412[3] = v414;
  v412[2] = v121;
  v412[1] = v120;
  v412[0] = v119;
  v125 = v123 + v115 * (*(v412 + (v109 & 0xF)) - 1);
  v126 = HIDWORD(v112) != 0;
  v411[3] = v414;
  v411[2] = v121;
  v411[1] = v120;
  v411[0] = v119;
  v127 = v125 + v112 * (*(v411 + (v117 & 0xF)) - 1);
  v410[3] = v414;
  v410[2] = v121;
  v410[1] = v120;
  v410[0] = v119;
  v128 = HIDWORD(v113) != 0;
  v129 = (v127 + v113 * (*(v410 + (v116 & 0xF)) - 1)) >> 32 != 0;
  if (v361)
  {
    v130 = 0;
    if (v360)
    {
      goto LABEL_277;
    }

    goto LABEL_273;
  }

  makeStrideBytes();
  v131 = &v370[*v81];
  v132.i64[0] = 0x100000001;
  v132.i64[1] = 0x100000001;
  v133 = vceqq_s32(*v131, v132);
  v134.i64[0] = v133.i32[0];
  v134.i64[1] = v133.i32[1];
  v135 = v134;
  v136 = vceqq_s32(v131[1], v132);
  v134.i64[0] = v136.i32[0];
  v134.i64[1] = v136.i32[1];
  v137 = v134;
  v138 = vceqq_s32(v131[2], v132);
  v134.i64[0] = v138.i32[0];
  v134.i64[1] = v138.i32[1];
  v139 = v134;
  v140 = vceqq_s32(v131[3], v132);
  v134.i64[0] = v140.i32[0];
  v134.i64[1] = v140.i32[1];
  v141 = v134;
  v134.i64[0] = v133.i32[2];
  v134.i64[1] = v133.i32[3];
  v142 = v134;
  v134.i64[0] = v136.i32[2];
  v134.i64[1] = v136.i32[3];
  v143 = v134;
  v134.i64[0] = v138.i32[2];
  v134.i64[1] = v138.i32[3];
  v144 = v134;
  v134.i64[0] = v140.i32[2];
  v134.i64[1] = v140.i32[3];
  v145 = vbicq_s8(v448, v134);
  v146 = vbicq_s8(v446, v144);
  v147 = vbicq_s8(v444, v143);
  v148 = vbicq_s8(v442, v142);
  v149 = vbicq_s8(v447, v141);
  v150 = vbicq_s8(v445, v139);
  v151 = vbicq_s8(v443, v137);
  v152 = *&v370[*MEMORY[0x277CD73C8]];
  v153 = *&v370[*MEMORY[0x277CD73D8]];
  v154 = BYTE1(*&v370[*MEMORY[0x277CD73D8]]);
  v155 = vbicq_s8(v441, v135);
  v156 = BYTE2(*&v370[*MEMORY[0x277CD73D8]]);
  v157 = BYTE3(*&v370[*MEMORY[0x277CD73D8]]);
  if ((v152 & 0xFFF8) != 0)
  {
    v158 = v152 >> 3;
    v409[0] = v155;
    v409[1] = v148;
    v409[2] = v151;
    v409[3] = v147;
    v409[4] = v150;
    v409[5] = v146;
    v409[6] = v149;
    v409[7] = v145;
    v159 = *(v409 + (v153 & 0xF)) / v158;
    v408[0] = v155;
    v408[1] = v148;
    v408[2] = v151;
    v408[3] = v147;
    v408[4] = v150;
    v408[5] = v146;
    v408[6] = v149;
    v408[7] = v145;
    v160 = *(v408 + (v154 & 0xF));
    v407[0] = v155;
    v407[1] = v148;
    v407[2] = v151;
    v407[3] = v147;
    v407[4] = v150;
    v407[5] = v146;
    v407[6] = v149;
    v407[7] = v145;
    v161 = *(v407 + (v156 & 0xF)) / v158;
    v406[0] = v155;
    v406[1] = v148;
    v406[2] = v151;
    v406[3] = v147;
    v406[4] = v150;
    v406[5] = v146;
    v406[6] = v149;
    v406[7] = v145;
    v162 = v161;
    v163 = *(v406 + (v157 & 0xF)) / v158;
    v164 = v159;
    v165 = v160 / v158;
  }

  else
  {
    v405[0] = v155;
    v405[1] = v148;
    v405[2] = v151;
    v405[3] = v147;
    v405[4] = v150;
    v405[5] = v146;
    v405[6] = v149;
    v405[7] = v145;
    v404[0] = v155;
    v404[1] = v148;
    v404[2] = v151;
    v404[3] = v147;
    v404[4] = v150;
    v404[5] = v146;
    v404[6] = v149;
    v404[7] = v145;
    v403[0] = v155;
    v403[1] = v148;
    v403[2] = v151;
    v403[3] = v147;
    v403[4] = v150;
    v403[5] = v146;
    v403[6] = v149;
    v403[7] = v145;
    v402[0] = v155;
    v402[1] = v148;
    v402[2] = v151;
    v402[3] = v147;
    v402[4] = v150;
    v402[5] = v146;
    v402[6] = v149;
    v402[7] = v145;
    v162 = *(v403 + (v156 & 0xF));
    v163 = *(v402 + (v157 & 0xF));
    v164 = *(v405 + (v153 & 0xF));
    v165 = *(v404 + (v154 & 0xF));
  }

  v166 = &v370[*v28];
  v167 = *v166;
  v168 = *(v166 + 1);
  v169 = *(v166 + 2);
  v401 = *(v166 + 3);
  v400[2] = v169;
  v400[1] = v168;
  v400[0] = v167;
  v170 = v164 * (*(v400 + (v153 & 0xF)) - 1);
  v399[3] = v401;
  v399[2] = v169;
  v399[1] = v168;
  v399[0] = v167;
  v171 = v170 + v165 * (*(v399 + (v154 & 0xF)) - 1);
  v398[3] = v401;
  v398[2] = v169;
  v398[1] = v168;
  v398[0] = v167;
  v172 = v171 + v162 * (*(v398 + (v156 & 0xF)) - 1);
  v397[3] = v401;
  v397[2] = v169;
  v397[1] = v168;
  v397[0] = v167;
  v130 = (HIDWORD(v164) != 0) | (2 * (HIDWORD(v165) != 0)) | (4 * (HIDWORD(v162) != 0)) | (8 * (HIDWORD(v163) != 0)) | (16 * ((v172 + v163 * (*(v397 + (v157 & 0xF)) - 1)) >> 32 != 0));
  if ((v360 & 1) == 0)
  {
LABEL_273:
    makeStrideBytes();
    v173 = &v369[*v81];
    v174.i64[0] = 0x100000001;
    v174.i64[1] = 0x100000001;
    v175 = vceqq_s32(*v173, v174);
    v176.i64[0] = v175.i32[0];
    v176.i64[1] = v175.i32[1];
    v177 = v176;
    v178 = vceqq_s32(v173[1], v174);
    v176.i64[0] = v178.i32[0];
    v176.i64[1] = v178.i32[1];
    v179 = v176;
    v180 = vceqq_s32(v173[2], v174);
    v176.i64[0] = v180.i32[0];
    v176.i64[1] = v180.i32[1];
    v181 = v176;
    v182 = vceqq_s32(v173[3], v174);
    v176.i64[0] = v182.i32[0];
    v176.i64[1] = v182.i32[1];
    v183 = v176;
    v176.i64[0] = v175.i32[2];
    v176.i64[1] = v175.i32[3];
    v184 = v176;
    v176.i64[0] = v178.i32[2];
    v176.i64[1] = v178.i32[3];
    v185 = v176;
    v176.i64[0] = v180.i32[2];
    v176.i64[1] = v180.i32[3];
    v186 = v176;
    v176.i64[0] = v182.i32[2];
    v176.i64[1] = v182.i32[3];
    v187 = vbicq_s8(v448, v176);
    v188 = vbicq_s8(v446, v186);
    v189 = vbicq_s8(v444, v185);
    v190 = vbicq_s8(v442, v184);
    v191 = vbicq_s8(v447, v183);
    v192 = vbicq_s8(v445, v181);
    v193 = vbicq_s8(v443, v179);
    v194 = *&v369[*MEMORY[0x277CD73D8]];
    v195 = *&v369[*MEMORY[0x277CD73C8]];
    v196 = vbicq_s8(v441, v177);
    if ((v195 & 0xFFF8) != 0)
    {
      v197 = v195 >> 3;
      v396[0] = v196;
      v396[1] = v190;
      v396[2] = v193;
      v396[3] = v189;
      v396[4] = v192;
      v396[5] = v188;
      v396[6] = v191;
      v396[7] = v187;
      v198 = *(v396 + (v194 & 0xF)) / v197;
      v395[0] = v196;
      v395[1] = v190;
      v395[2] = v193;
      v395[3] = v189;
      v395[4] = v192;
      v395[5] = v188;
      v395[6] = v191;
      v395[7] = v187;
      v199 = *(v395 + (BYTE1(v194) & 0xF));
      v394[0] = v196;
      v394[1] = v190;
      v394[2] = v193;
      v394[3] = v189;
      v394[4] = v192;
      v394[5] = v188;
      v394[6] = v191;
      v394[7] = v187;
      v200 = *(v394 + (BYTE2(v194) & 0xF)) / v197;
      v393[0] = v196;
      v393[1] = v190;
      v393[2] = v193;
      v393[3] = v189;
      v393[4] = v192;
      v393[5] = v188;
      v393[6] = v191;
      v393[7] = v187;
      v201 = v200;
      v202 = *(v393 + (BYTE3(v194) & 0xF)) / v197;
      v203 = v198;
      v204 = v199 / v197;
      v205 = v194;
    }

    else
    {
      v392[0] = v196;
      v392[1] = v190;
      v392[2] = v193;
      v392[3] = v189;
      v392[4] = v192;
      v392[5] = v188;
      v392[6] = v191;
      v392[7] = v187;
      v391[0] = v196;
      v391[1] = v190;
      v391[2] = v193;
      v391[3] = v189;
      v391[4] = v192;
      v391[5] = v188;
      v391[6] = v191;
      v391[7] = v187;
      v390[0] = v196;
      v390[1] = v190;
      v390[2] = v193;
      v390[3] = v189;
      v390[4] = v192;
      v390[5] = v188;
      v390[6] = v191;
      v390[7] = v187;
      v389[0] = v196;
      v389[1] = v190;
      v389[2] = v193;
      v389[3] = v189;
      v389[4] = v192;
      v389[5] = v188;
      v389[6] = v191;
      v389[7] = v187;
      v201 = *(v390 + (BYTE2(v194) & 0xF));
      v202 = *(v389 + (BYTE3(v194) & 0xF));
      v203 = *(v392 + (v194 & 0xF));
      v205 = v194;
      v204 = *(v391 + (BYTE1(v194) & 0xF));
    }

    v206 = &v369[*v28];
    v207 = *v206;
    v208 = *(v206 + 1);
    v209 = *(v206 + 3);
    v387 = *(v206 + 2);
    v388 = v209;
    v386[0] = v207;
    v386[1] = v208;
    v210 = v203 * (*(v386 + (v205 & 0xF)) - 1);
    v385[2] = v387;
    v385[3] = v209;
    v385[0] = v207;
    v385[1] = v208;
    v211 = v210 + v204 * (*(v385 + (BYTE1(v194) & 0xF)) - 1);
    v384[2] = v387;
    v384[3] = v209;
    v384[0] = v207;
    v384[1] = v208;
    v212 = v211 + v201 * (*(v384 + (BYTE2(v194) & 0xF)) - 1);
    v383[2] = v387;
    v383[3] = v209;
    v383[0] = v207;
    v383[1] = v208;
    v130 |= (32 * (HIDWORD(v203) != 0)) | ((HIDWORD(v204) != 0) << 6) | ((HIDWORD(v201) != 0) << 7) | ((HIDWORD(v202) != 0) << 8) | (((v212 + v202 * (*(v383 + (BYTE3(v194) & 0xF)) - 1)) >> 32 != 0) << 9);
  }

LABEL_277:
  *&v213 = -1;
  *(&v213 + 1) = -1;
  v459 = v213;
  v453 = v213;
  v454 = v213;
  v455 = v64 & 0xF0FFFFFF | ((v324 & 0xF) << 24);
  v456 = v353;
  v457 = (v122 || 2 * v124) | (4 * v126) | (8 * v128) | (16 * v129);
  v458 = v130;
  *&v213 = vcnt_s8(*(v381 + 48));
  LOWORD(v213) = vaddlv_u8(*&v213);
  *&v459 = (v213 << 16) | 1u;
  v214 = v337 > 1;
  if (v337 < 2)
  {
    v216 = v334;
    v215 = v336;
    v214 = v336 > 1;
    v217 = v354;
    if (v336 <= 1)
    {
      v214 = v334 > 1 || v339 > 1;
    }
  }

  else
  {
    v216 = v334;
    v215 = v336;
    v217 = v354;
  }

  v219 = v382.u32[1];
  v221 = (v376 < 2 || v377 >= 5 || v382.i32[0] <= 0xFu && v377 >= 3) && (v375 < 2 || v374 > 4 || v382.i32[1] <= 0xFu && v374 >= 3) && (v59 < 5 ? (v220 = v373 > 1) : (v220 = 0), !v220 && v217 < 2) && !v214;
  v224 = v376 < 3 && v375 < 3 && v373 < 3;
  v225 = v224 & v221;
  v226 = v377 * v374 * v59;
  v227 = v382.u32[0];
  v228 = v382.i32[0] * v382.i32[1];
  v229 = v382.i32[0] * v382.i32[1] * v382.i32[2];
  if ((v229 * v382.i32[3]) <= 0x1F || v373 * v226 * v376 * v375 >= 0xD9)
  {
    v225 = 0;
  }

  if (v377 * v374 < 0x40)
  {
    v232 = 0;
  }

  else
  {
    v232 = v376 * v375 > 0xF || v228 < 4;
    v225 &= !v232;
  }

  v234 = v382.i32[2] < 8u || v228 > 0x7FF;
  v242 = v354 < 9 && v330 < 5 && v59 < 9 && v373 < 5 && v374 < 9 && v375 < 5 && v377 < 9 && v376 < 5;
  v325 = v59 - 1;
  v243 = v59 == 1;
  if (v214)
  {
    v244 = 0x2000000;
  }

  else
  {
    v244 = 0;
  }

  v335 = v234 && v243;
  if (v234 && v243)
  {
    v245 = 0x4000000;
  }

  else
  {
    v245 = 0;
  }

  *&v454 = ((v59 << 10) + 7168) & 0x1C00 | ((v354 << 13) - 0x2000) & 0xE000 | ((v374 << 7) + 896) & 0x380 | (16 * v377 + 112) & 0x70 | ((v330 << 22) + 12582912) & 0xC00000 | ((v373 << 20) + 3145728) & 0x300000 | ((v375 << 18) + 786432) & 0xC0000 | ((v376 << 16) + 196608) & 0x30000 | v242 | v244 | (2 * (v327 & 7)) | ((v358 == 268435472) << 27) | (v328 << 28) | (((v326 & 0xDFFFFFFF) == 32) << 24) | v245;
  v246 = 1.0;
  if ((v327 & 0xFFFFFFFE) == 2)
  {
    v246 = 1.0 / (v226 * v354);
  }

  v247.i32[0] = 1;
  v248.i32[0] = 1;
  v248.i32[1] = v355;
  v248.i32[2] = v355 * v357;
  v248.i32[3] = v355 * v357 * v356;
  v247.i32[1] = v382.i32[0];
  v247.i64[1] = __PAIR64__(v229, v228);
  v249.i64[0] = __PAIR64__(v332, v333);
  v249.i64[1] = __PAIR64__(v329, v331);
  v443 = v248;
  v444 = v247;
  v247.i64[0] = __PAIR64__(v374, v377);
  v250 = v242 & v225;
  v247.i64[1] = __PAIR64__(v354, v59);
  v445 = v249;
  v446 = v247;
  v247.i64[0] = __PAIR64__(v375, v376);
  v247.i64[1] = __PAIR64__(v330, v373);
  v248.i64[0] = __PAIR64__(v215, v337);
  v441 = v366;
  v442 = v382;
  v248.i64[1] = __PAIR64__(v339, v216);
  v447 = v247;
  v448 = v248;
  v449 = v246;
  v450 = 0;
  v451 = 0uLL;
  v452 = 0;
  if (v328)
  {
    v251 = 0;
    v250 = (*(v338 + 1472) < 24) & v250;
  }

  else
  {
    v251 = v232;
  }

  v322 = *(v379 + *MEMORY[0x277CD7360]);
  v323 = *(v379 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    v78 = -1;
    v9 = v381;
    if (!v372)
    {
      goto LABEL_579;
    }

    goto LABEL_552;
  }

  [v380 setComputePipelineState:{0, v322, v323, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v252 = [PipelineStateForMPSKey threadExecutionWidth];
  v253 = v252;
  if (v252 <= 1)
  {
    v254 = 1;
  }

  else
  {
    v254 = v252;
  }

  if (v254 >= 0x20)
  {
    v255 = 32;
  }

  else
  {
    v255 = v254;
  }

  if (v255 > v382.u32[0] || (v256 = v255, v382.i32[0] <= 3u) && (v256 = v255, v255 > v382.u32[1]))
  {
    if (v252 <= 1)
    {
      v256 = 1;
    }

    else
    {
      v256 = v255 >> 1;
    }
  }

  v257 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v258 = 256;
  if (v257 < 0x100)
  {
    v258 = v257;
  }

  if (v258 <= 2 * v256)
  {
    v259 = 1;
    v260 = v382.u32[2];
    v261 = v251;
    if (v255 > (2 * v382.i32[0]))
    {
      goto LABEL_390;
    }
  }

  else
  {
    v259 = v258 / v256;
    v260 = v382.u32[2];
    v261 = v251;
    if (v255 > (2 * v382.i32[0]))
    {
      goto LABEL_390;
    }
  }

  if (4 * v255 >= v382.u32[0] && 4 * v255 <= v258 && v382.u8[0] % v255)
  {
    v259 = 4;
    v256 = v382.u32[0];
  }

LABEL_390:
  if (v256 > v382.u32[0] && (v256 <= v382.u32[1] || v256 <= v260))
  {
    v267 = 2 * v255;
    if (v260 > 2 * v255)
    {
      v267 = v260;
    }

    do
    {
      v263 = v256;
      v256 >>= 1;
    }

    while (v263 >= v267);
    v256 = 1;
    if (v250)
    {
LABEL_415:
      if (v255 <= v382.u32[0] && (v382.i32[0] > 3u || v255 <= v382.u32[1]))
      {
        v266 = v255;
      }

      else if (v253 <= 1)
      {
        v266 = 1;
      }

      else
      {
        v266 = v255 >> 1;
      }

      if (v253 <= 1)
      {
        v271 = 1;
      }

      else
      {
        v271 = v255 >> 1;
      }

      if (v382.i32[0] <= 0x3Fu && v376 != 1)
      {
        v271 = v266;
      }

      if (v258 <= 2 * v271)
      {
        v273 = 1;
        v274 = v325;
        if (v228 <= 0x7FF && !v335)
        {
LABEL_443:
          if (v228 > 0x18F)
          {
            v273 = 4;
            v276 = 8;
            v271 = 4;
            if (v382.u32[0] >= 4uLL)
            {
              goto LABEL_481;
            }
          }

          else
          {
            v271 = (v382.u32[0] + 1) >> 1;
            v273 = (v382.u32[1] + 1) >> 1;
            v275 = v271 * v273;
            if (v255 < 2 * v275 || v255 > v260)
            {
              _CF = v258 >= 8 * v275;
              v276 = 2;
              if (_CF)
              {
                v276 = 8;
              }

              if (v271 <= v382.u32[0])
              {
                goto LABEL_481;
              }
            }

            else
            {
              v276 = v255;
              if (v271 <= v382.u32[0])
              {
                goto LABEL_481;
              }
            }
          }

LABEL_479:
          v284 = 1;
          if (v271 <= v382.u32[1] || v271 <= v260)
          {
            v276 = v273;
            goto LABEL_489;
          }

LABEL_481:
          v286 = v377 > 1 && v271 > 0x1F;
          v284 = v271 >> v286;
          v271 = v273;
LABEL_489:
          v287 = v374 - 1;
          v289 = v374 > 1 && v271 > 0x1F;
          v290 = v271 >> v289;
          v291 = v290 > 1;
          if (v290 < v382.u32[1])
          {
            v263 = v290;
            v292 = v284 > 1;
            if (v284 < v382.u32[0])
            {
LABEL_511:
              v256 = v284;
LABEL_512:
              if (v335)
              {
                v293 = 1;
              }

              else
              {
                v293 = v276;
              }

              if (*(v338 + 1472) >= 7)
              {
                v294 = 32000;
              }

              else
              {
                v294 = 16000;
              }

              v295 = 1;
              if (v358 != 268435472)
              {
                v295 = 2;
              }

              if (((((((v287 + 2 * v375 * v263) * (v377 - 1 + 2 * v376 * v256)) * (v274 + v293 * v373)) << v295) + 15) & 0xFFFFFFFFFFFFFFF0) > v294)
              {
                if (v293 >= 2)
                {
                  v293 >>= v263 * v293 * v256 >= 2 * v255;
                }

                if (v291)
                {
                  v263 >>= v256 * v263 * v293 >= 2 * v255;
                }

                if (v292)
                {
                  v256 >>= v293 * v256 * v263 >= 2 * v255;
                }
              }

              if (v335)
              {
                v259 = 1;
              }

              else
              {
                v259 = v293;
              }

              v227 = (v382.u32[0] + 2 * v256 - 1) / (2 * v256);
              v219 = (v382.u32[1] + 2 * v263 - 1) / (2 * v263);
              v296 = (v259 + v260 - 1) / v259;
              v270 = v296 * v382.u32[3];
              v297.f32[0] = (v377 - 1 + 2 * v256 * v376);
              LODWORD(v450) = v297.i32[0];
              *(&v450 + 1) = (v287 + 2 * v263 * v375);
              *&v451 = (v274 + v259 * v373);
              v298 = *(&v450 + 1) * v297.f32[0];
              v297.f32[1] = *(&v450 + 1) * v297.f32[0];
              __asm { FMOV            V3.2S, #1.0 }

              *(&v451 + 4) = vdiv_f32(_D3, v297);
              HIDWORD(v451) = v296;
              v297.f32[0] = 1.0 / v296;
              v452 = v297.i32[0];
              v283 = (((v298 * *&v451) << v295) + 15) & 0xFFFFFFFFFFFFFFF0;
              goto LABEL_544;
            }
          }

          else if (v290 < 2)
          {
            v263 = v290;
LABEL_504:
            v292 = v284 > 1;
            if (v284 < v382.u32[0])
            {
              goto LABEL_511;
            }
          }

          else
          {
            while (v290 * v284 >= 2 * v255)
            {
              v263 = v290 >> 1;
              v291 = v290 > 3;
              if (v290 >= 4)
              {
                v290 >>= 1;
                if (v263 >= v382.u32[1])
                {
                  continue;
                }
              }

              goto LABEL_504;
            }

            v291 = 1;
            v263 = v290;
            v292 = v284 > 1;
            if (v284 < v382.u32[0])
            {
              goto LABEL_511;
            }
          }

          if (v284 >= 2)
          {
            while (v284 * v263 >= 2 * v255)
            {
              v256 = v284 >> 1;
              v292 = v284 > 3;
              if (v284 >= 4)
              {
                v284 >>= 1;
                if (v256 >= v382.u32[0])
                {
                  continue;
                }
              }

              goto LABEL_512;
            }

            v292 = 1;
          }

          goto LABEL_511;
        }
      }

      else
      {
        v273 = v258 / v271;
        v274 = v325;
        if (v228 <= 0x7FF && !v335)
        {
          goto LABEL_443;
        }
      }

      v276 = 1;
      if (v271 <= v382.u32[0])
      {
        goto LABEL_481;
      }

      goto LABEL_479;
    }
  }

  else
  {
    if (v382.u32[1] <= 1uLL)
    {
      v262 = 1;
    }

    else
    {
      v262 = v382.u32[1];
    }

    if (v259 <= v262)
    {
      v263 = v259;
    }

    else
    {
      v263 = v259;
      do
      {
        if (v263 * v256 < 2 * v255)
        {
          break;
        }

        v263 >>= 1;
      }

      while (v263 > v262);
    }

    if (v382.u32[0] <= 1uLL)
    {
      v264 = 1;
    }

    else
    {
      v264 = v382.u32[0];
    }

    for (; v256 > v264; v256 >>= 1)
    {
      if (v256 * v263 < 2 * v255)
      {
        break;
      }
    }

    if (v382.i32[1] <= 0xFu && v382.u32[1] % v263 && v256 * v382.u32[1] <= v258)
    {
      v263 = v382.u32[1];
    }

    v259 = 1;
    if (v250)
    {
      goto LABEL_415;
    }
  }

  if (!v261)
  {
    v270 = ((v260 * v382.i32[3]) + v259 - 1) / v259;
    v219 = (v382.u32[1] + v263 - 1) / v263;
    v227 = (v382.u32[0] + v256 - 1) / v256;
    goto LABEL_545;
  }

  if (v377 >= v255)
  {
    v268 = v255;
  }

  else
  {
    v268 = v377;
  }

  if (v258 <= 2 * v268)
  {
    v269 = 1;
  }

  else
  {
    v269 = v258 / v268;
  }

  v277 = v374 >> 2;
  if (v374 >> 2 <= 1)
  {
    v277 = 1;
  }

  if (v374 < v269)
  {
    v269 = v277;
  }

  v278 = v269 * 2 * v268 > v258 || v335;
  v279 = 1;
  if (!v278)
  {
    v279 = 2;
  }

  v280 = 32000;
  if (*(v338 + 1472) < 7)
  {
    v280 = 16000;
  }

  if (v377 < 0x11)
  {
    v263 = 1;
  }

  else
  {
    v263 = v269;
  }

  if (v377 >= 0x11)
  {
    v256 = v268;
  }

  else
  {
    v256 = v377;
  }

  if (v377 < 0x11)
  {
    v279 = 16;
  }

  v281 = v263 * v256;
  v282 = !v278;
  if (v377 < 0x11)
  {
    v282 = 4;
  }

  v283 = (4 * (v281 << v282) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v283 > v280)
  {
    if (v279 < 2)
    {
      v279 = 1;
    }

    else
    {
      v279 >>= (v263 << v282) * v256 >= 2 * v255;
    }

    if (v263 >= 2)
    {
      if (v279 * v281 >= 2 * v255)
      {
        v263 >>= 1;
      }

      else
      {
        v263 = v269;
      }
    }

    if (v256 >= 2)
    {
      v256 >>= v279 * v256 * v263 >= 2 * v255;
    }
  }

  if (v335)
  {
    v259 = 1;
  }

  else
  {
    v259 = v279;
  }

  v302 = (v259 + v260 - 1) / v259;
  v270 = v302 * v382.u32[3];
  HIDWORD(v451) = v302;
  *&v303 = 1.0 / v302;
  v452 = v303;
LABEL_544:
  [v380 setThreadgroupMemoryLength:v283 atIndex:0];
LABEL_545:
  v304 = malloc_type_calloc(0x3CuLL, 4uLL, 0x100004052888210uLL);
  [v380 setBuffer:objc_msgSend(v378 offset:"buffer") atIndex:{*(*(v381 + 8) + 64) + MPSGetLinearOffsetBytes(v378, 0, 4, v304, 0), 0}];
  if (v368)
  {
    [v380 setBuffer:v368 offset:0 atIndex:27];
  }

  if ((v361 & 1) == 0)
  {
    [v380 setBuffer:objc_msgSend(v370 offset:"buffer") atIndex:{*(*(v381 + 32) + 64) + MPSGetLinearOffsetBytes(v370, 0, 4, v304 + 80, 0), 1}];
  }

  if ((v360 & 1) == 0)
  {
    [v380 setBuffer:objc_msgSend(v369 offset:"buffer") atIndex:{*(*(v381 + 32) + 144) + MPSGetLinearOffsetBytes(v369, 0, 4, v304 + 80 * (*(v381 + 48) & 1u) + 80, 0), (*(v381 + 48) & 1) + 1}];
  }

  objc_msgSend_setBytes_length_atIndex_(v380);
  objc_msgSend_setBytes_length_atIndex_(v380);
  v440[0] = v227;
  v440[1] = v219;
  v440[2] = v270;
  v439[0] = v256;
  v439[1] = v263;
  v439[2] = v259;
  [v380 dispatchThreadgroups:v440 threadsPerThreadgroup:v439];
  MPSLibrary::ReleaseComputeState();
  free(v304);
  v78 = 0;
  v9 = v381;
  if (v372)
  {
    goto LABEL_552;
  }

LABEL_579:
  MPSAutoCache::~MPSAutoCache(v438);
  return v78;
}

uint64_t MPSNDArrayPoolingFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v9 + 4 type:33 atIndex:89];
  AddFunctionConstantList(v6, a3);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t EncodePoolingMultiDestination1DPass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v212 = v13;
  v213 = v14;
  v211 = v15;
  v216 = v16;
  v18 = v17;
  v217 = v19;
  v210 = v20;
  v22 = v21;
  v23 = v12;
  v208 = *(v12 + *MEMORY[0x277CD7350]);
  v209 = *(v12 + 124);
  v24 = [*(v17 + 16) objectAtIndexedSubscript:0];
  v25 = [*(v18 + 40) objectAtIndexedSubscript:0];
  v26 = [*(v18 + 40) objectAtIndexedSubscript:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v28 = v24;
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();
  v30 = v29;
  *&v31 = -1;
  *(&v31 + 1) = -1;
  v277 = v31;
  v278 = v31;
  v276 = v31;
  v274 = v31;
  v275 = v31;
  v32 = *MEMORY[0x277CD73C8];
  v33 = *(v24 + v32);
  if (v33 > 285212703)
  {
    if (v33 <= 536870915)
    {
      if (v33 > 301989895)
      {
        if (v33 == 301989896)
        {
          v34 = 16;
          v214 = v22;
          v215 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        }

        if (v33 == 335544328)
        {
          v34 = 17;
          v214 = v22;
          v215 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        }
      }

      else
      {
        if (v33 == 285212704)
        {
          v34 = 13;
          v214 = v22;
          v215 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        }

        if (v33 == 285212736)
        {
          v34 = 14;
          v214 = v22;
          v215 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        }
      }
    }

    else if (v33 <= 536870927)
    {
      if (v33 == 536870916)
      {
        v34 = 0;
        v214 = v22;
        v215 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }

      if (v33 == 536870920)
      {
        v34 = 1;
        v214 = v22;
        v215 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }
    }

    else
    {
      switch(v33)
      {
        case 536870928:
          v34 = 2;
          v214 = v22;
          v215 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        case 536870944:
          v34 = 3;
          v214 = v22;
          v215 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        case 536870976:
          v34 = 4;
          v214 = v22;
          v215 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
      }
    }
  }

  else if (v33 <= 31)
  {
    if (v33 > 7)
    {
      if (v33 == 8)
      {
        v34 = 6;
        v214 = v22;
        v215 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }

      if (v33 == 16)
      {
        v34 = 7;
        v214 = v22;
        v215 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (v33 == -1879048176)
      {
        v34 = 12;
        v214 = v22;
        v215 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }

      if (v33 == 4)
      {
        v34 = 5;
        v214 = v22;
        v215 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }
    }
  }

  else if (v33 <= 268435463)
  {
    if (v33 == 32)
    {
      v34 = 8;
      v214 = v22;
      v215 = isKindOfClass;
      if (isKindOfClass)
      {
        goto LABEL_96;
      }

      goto LABEL_63;
    }

    if (v33 == 64)
    {
      v34 = 9;
      v214 = v22;
      v215 = isKindOfClass;
      if (isKindOfClass)
      {
        goto LABEL_96;
      }

      goto LABEL_63;
    }
  }

  else
  {
    switch(v33)
    {
      case 268435464:
        v34 = 15;
        v214 = v22;
        v215 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      case 268435472:
        v34 = 10;
        v214 = v22;
        v215 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      case 268435488:
        v34 = 11;
        v214 = v22;
        v215 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
    }
  }

  v34 = 18;
  v214 = v22;
  v215 = isKindOfClass;
  if (isKindOfClass)
  {
    goto LABEL_96;
  }

LABEL_63:
  v35 = *(v25 + v32);
  if (v35 > 285212703)
  {
    if (v35 <= 536870915)
    {
      if (v35 > 301989895)
      {
        if (v35 == 301989896)
        {
          v36 = 16;
          goto LABEL_97;
        }

        if (v35 == 335544328)
        {
          v36 = 17;
          goto LABEL_97;
        }
      }

      else
      {
        if (v35 == 285212704)
        {
          v36 = 13;
          goto LABEL_97;
        }

        if (v35 == 285212736)
        {
          v36 = 14;
          goto LABEL_97;
        }
      }

      goto LABEL_150;
    }

    if (v35 > 536870927)
    {
      switch(v35)
      {
        case 536870928:
          v36 = 2;
          goto LABEL_97;
        case 536870944:
          v36 = 3;
          goto LABEL_97;
        case 536870976:
          v36 = 4;
          goto LABEL_97;
      }

      goto LABEL_150;
    }

    if (v35 != 536870916)
    {
      if (v35 == 536870920)
      {
        v36 = 1;
        goto LABEL_97;
      }

      goto LABEL_150;
    }

LABEL_96:
    v36 = 0;
    goto LABEL_97;
  }

  if (v35 <= 31)
  {
    if (v35 > 7)
    {
      if (v35 == 8)
      {
        v36 = 6;
        goto LABEL_97;
      }

      if (v35 == 16)
      {
        v36 = 7;
        goto LABEL_97;
      }
    }

    else
    {
      if (v35 == -1879048176)
      {
        v36 = 12;
        goto LABEL_97;
      }

      if (v35 == 4)
      {
        v36 = 5;
        goto LABEL_97;
      }
    }
  }

  else if (v35 <= 268435463)
  {
    if (v35 == 32)
    {
      v36 = 8;
      goto LABEL_97;
    }

    if (v35 == 64)
    {
      v36 = 9;
      goto LABEL_97;
    }
  }

  else
  {
    switch(v35)
    {
      case 268435464:
        v36 = 15;
        goto LABEL_97;
      case 268435472:
        v36 = 10;
        goto LABEL_97;
      case 268435488:
        v36 = 11;
        goto LABEL_97;
    }
  }

LABEL_150:
  v36 = 18;
LABEL_97:
  v37 = MEMORY[0x277CD73C8];
  if (v29)
  {
    goto LABEL_153;
  }

  v38 = *(v26 + v32);
  if (v38 > 285212703)
  {
    if (v38 <= 536870915)
    {
      if (v38 > 301989895)
      {
        if (v38 == 301989896)
        {
          v39 = 512;
          goto LABEL_152;
        }

        if (v38 == 335544328)
        {
          v39 = 544;
          goto LABEL_152;
        }
      }

      else
      {
        if (v38 == 285212704)
        {
          v39 = 416;
          goto LABEL_152;
        }

        if (v38 == 285212736)
        {
          v39 = 448;
          goto LABEL_152;
        }
      }
    }

    else if (v38 <= 536870927)
    {
      if (v38 == 536870916)
      {
        v39 = 0;
        goto LABEL_152;
      }

      if (v38 == 536870920)
      {
        v39 = 32;
        goto LABEL_152;
      }
    }

    else
    {
      switch(v38)
      {
        case 536870928:
          v39 = 64;
          goto LABEL_152;
        case 536870944:
          v39 = 96;
          goto LABEL_152;
        case 536870976:
          v39 = 128;
          goto LABEL_152;
      }
    }

LABEL_151:
    v39 = 576;
    goto LABEL_152;
  }

  if (v38 <= 31)
  {
    if (v38 > 7)
    {
      if (v38 == 8)
      {
        v39 = 192;
        goto LABEL_152;
      }

      if (v38 == 16)
      {
        v39 = 224;
        goto LABEL_152;
      }
    }

    else
    {
      if (v38 == -1879048176)
      {
        v39 = 384;
        goto LABEL_152;
      }

      if (v38 == 4)
      {
        v39 = 160;
        goto LABEL_152;
      }
    }

    goto LABEL_151;
  }

  if (v38 <= 268435463)
  {
    if (v38 == 32)
    {
      v39 = 256;
      goto LABEL_152;
    }

    if (v38 == 64)
    {
      v39 = 288;
      goto LABEL_152;
    }

    goto LABEL_151;
  }

  if (v38 == 268435464)
  {
    v39 = 480;
    goto LABEL_152;
  }

  if (v38 == 268435472)
  {
    v39 = 320;
    goto LABEL_152;
  }

  if (v38 != 268435488)
  {
    goto LABEL_151;
  }

  v39 = 352;
LABEL_152:
  v36 |= v39;
LABEL_153:
  v40 = v34 & 0xF0FFFFFF | ((*(v18 + 48) & 0xF) << 24);
  makeStrideBytes();
  v41 = (v28 + *MEMORY[0x277CD73D0]);
  v42.i64[0] = 0x100000001;
  v42.i64[1] = 0x100000001;
  v43 = vceqq_s32(*v41, v42);
  v44.i64[0] = v43.i32[0];
  v44.i64[1] = v43.i32[1];
  v45 = v44;
  v46 = vceqq_s32(v41[1], v42);
  v44.i64[0] = v46.i32[0];
  v44.i64[1] = v46.i32[1];
  v47 = v44;
  v48 = vceqq_s32(v41[2], v42);
  v44.i64[0] = v48.i32[0];
  v44.i64[1] = v48.i32[1];
  v49 = v44;
  v50 = vceqq_s32(v41[3], v42);
  v44.i64[0] = v50.i32[0];
  v44.i64[1] = v50.i32[1];
  v51 = v44;
  v44.i64[0] = v43.i32[2];
  v44.i64[1] = v43.i32[3];
  v52 = v44;
  v44.i64[0] = v46.i32[2];
  v44.i64[1] = v46.i32[3];
  v53 = v44;
  v44.i64[0] = v48.i32[2];
  v44.i64[1] = v48.i32[3];
  v54 = v44;
  v44.i64[0] = v50.i32[2];
  v44.i64[1] = v50.i32[3];
  v55 = vbicq_s8(v268, v44);
  v56 = vbicq_s8(v266, v54);
  v57 = vbicq_s8(v264, v53);
  v58 = vbicq_s8(v262, v52);
  v59 = vbicq_s8(v267, v51);
  v60 = vbicq_s8(v265, v49);
  v61 = vbicq_s8(v263, v47);
  v62 = *(v28 + *v37);
  v63 = *(v28 + *MEMORY[0x277CD73D8]);
  v64 = BYTE1(*(v28 + *MEMORY[0x277CD73D8]));
  v65 = vbicq_s8(v261, v45);
  v66 = BYTE2(*(v28 + *MEMORY[0x277CD73D8]));
  v67 = BYTE3(*(v28 + *MEMORY[0x277CD73D8]));
  if ((v62 & 0xFFF8) != 0)
  {
    v68 = v62 >> 3;
    v258[0] = v65;
    v258[1] = v58;
    v258[2] = v61;
    v258[3] = v57;
    v258[4] = v60;
    v258[5] = v56;
    v258[6] = v59;
    v258[7] = v55;
    v69 = *(v258 + (v63 & 0xF)) / v68;
    v257[0] = v65;
    v257[1] = v58;
    v257[2] = v61;
    v257[3] = v57;
    v257[4] = v60;
    v257[5] = v56;
    v257[6] = v59;
    v257[7] = v55;
    v70 = *(v257 + (v64 & 0xF));
    v256[0] = v65;
    v256[1] = v58;
    v256[2] = v61;
    v256[3] = v57;
    v256[4] = v60;
    v256[5] = v56;
    v256[6] = v59;
    v256[7] = v55;
    v71 = *(v256 + (v66 & 0xF)) / v68;
    v255[0] = v65;
    v255[1] = v58;
    v255[2] = v61;
    v255[3] = v57;
    v255[4] = v60;
    v255[5] = v56;
    v255[6] = v59;
    v255[7] = v55;
    v72 = v71;
    v73 = *(v255 + (v67 & 0xF)) / v68;
    v74 = v69;
    v75 = v70 / v68;
  }

  else
  {
    v254[0] = v65;
    v254[1] = v58;
    v254[2] = v61;
    v254[3] = v57;
    v254[4] = v60;
    v254[5] = v56;
    v254[6] = v59;
    v254[7] = v55;
    v253[0] = v65;
    v253[1] = v58;
    v253[2] = v61;
    v253[3] = v57;
    v253[4] = v60;
    v253[5] = v56;
    v253[6] = v59;
    v253[7] = v55;
    v252[0] = v65;
    v252[1] = v58;
    v252[2] = v61;
    v252[3] = v57;
    v252[4] = v60;
    v252[5] = v56;
    v252[6] = v59;
    v252[7] = v55;
    v251[0] = v65;
    v251[1] = v58;
    v251[2] = v61;
    v251[3] = v57;
    v251[4] = v60;
    v251[5] = v56;
    v251[6] = v59;
    v251[7] = v55;
    v72 = *(v252 + (v66 & 0xF));
    v73 = *(v251 + (v67 & 0xF));
    v74 = *(v254 + (v63 & 0xF));
    v75 = *(v253 + (v64 & 0xF));
  }

  v205 = v28;
  v76 = (v28 + *MEMORY[0x277CD7410]);
  v77 = *v76;
  v78 = v76[1];
  v79 = v76[2];
  v250 = v76[3];
  v249[2] = v79;
  v249[1] = v78;
  v249[0] = v77;
  v80 = v74 * (*(v249 + (v63 & 0xF)) - 1);
  v248[3] = v250;
  v248[2] = v79;
  v248[1] = v78;
  v248[0] = v77;
  v81 = v80 + v75 * (*(v248 + (v64 & 0xF)) - 1);
  v247[3] = v250;
  v247[2] = v79;
  v247[1] = v78;
  v247[0] = v77;
  v82 = v81 + v72 * (*(v247 + (v66 & 0xF)) - 1);
  v246[3] = v250;
  v246[2] = v79;
  v246[1] = v78;
  v246[0] = v77;
  v83 = (HIDWORD(v74) != 0) | (2 * (HIDWORD(v75) != 0)) | (4 * (HIDWORD(v72) != 0)) | (8 * (HIDWORD(v73) != 0));
  v84 = (v82 + v73 * (*(v246 + (v67 & 0xF)) - 1)) >> 32 != 0;
  v203 = v25;
  if (v215)
  {
    v85 = 0;
    v86 = v83 | (16 * v84);
    v204 = v26;
    v206 = v30;
    if (v30)
    {
      goto LABEL_167;
    }

    goto LABEL_163;
  }

  makeStrideBytes();
  v87 = (v25 + *MEMORY[0x277CD73D0]);
  v88.i64[0] = 0x100000001;
  v88.i64[1] = 0x100000001;
  v89 = vceqq_s32(*v87, v88);
  v90.i64[0] = v89.i32[0];
  v90.i64[1] = v89.i32[1];
  v91 = v90;
  v92 = vceqq_s32(v87[1], v88);
  v90.i64[0] = v92.i32[0];
  v90.i64[1] = v92.i32[1];
  v93 = v90;
  v94 = vceqq_s32(v87[2], v88);
  v90.i64[0] = v94.i32[0];
  v90.i64[1] = v94.i32[1];
  v95 = v90;
  v96 = vceqq_s32(v87[3], v88);
  v90.i64[0] = v96.i32[0];
  v90.i64[1] = v96.i32[1];
  v97 = v90;
  v90.i64[0] = v89.i32[2];
  v90.i64[1] = v89.i32[3];
  v98 = v90;
  v90.i64[0] = v92.i32[2];
  v90.i64[1] = v92.i32[3];
  v99 = v90;
  v90.i64[0] = v94.i32[2];
  v90.i64[1] = v94.i32[3];
  v100 = v90;
  v90.i64[0] = v96.i32[2];
  v90.i64[1] = v96.i32[3];
  v101 = vbicq_s8(v268, v90);
  v102 = vbicq_s8(v266, v100);
  v103 = vbicq_s8(v264, v99);
  v104 = vbicq_s8(v262, v98);
  v105 = vbicq_s8(v267, v97);
  v106 = vbicq_s8(v265, v95);
  v107 = vbicq_s8(v263, v93);
  v108 = *(v25 + *v37);
  v109 = *(v25 + *MEMORY[0x277CD73D8]);
  v110 = BYTE1(*(v25 + *MEMORY[0x277CD73D8]));
  v111 = vbicq_s8(v261, v91);
  v112 = BYTE2(*(v25 + *MEMORY[0x277CD73D8]));
  v113 = BYTE3(*(v25 + *MEMORY[0x277CD73D8]));
  if ((v108 & 0xFFF8) != 0)
  {
    v114 = v108 >> 3;
    v245[0] = v111;
    v245[1] = v104;
    v245[2] = v107;
    v245[3] = v103;
    v245[4] = v106;
    v245[5] = v102;
    v245[6] = v105;
    v245[7] = v101;
    v115 = *(v245 + (v109 & 0xF)) / v114;
    v244[0] = v111;
    v244[1] = v104;
    v244[2] = v107;
    v244[3] = v103;
    v244[4] = v106;
    v244[5] = v102;
    v244[6] = v105;
    v244[7] = v101;
    v116 = *(v244 + (v110 & 0xF));
    v243[0] = v111;
    v243[1] = v104;
    v243[2] = v107;
    v243[3] = v103;
    v243[4] = v106;
    v243[5] = v102;
    v243[6] = v105;
    v243[7] = v101;
    v117 = *(v243 + (v112 & 0xF)) / v114;
    v242[0] = v111;
    v242[1] = v104;
    v242[2] = v107;
    v242[3] = v103;
    v242[4] = v106;
    v242[5] = v102;
    v242[6] = v105;
    v242[7] = v101;
    v118 = v117;
    v119 = *(v242 + (v113 & 0xF)) / v114;
    v120 = v115;
    v121 = v116 / v114;
  }

  else
  {
    v241[0] = v111;
    v241[1] = v104;
    v241[2] = v107;
    v241[3] = v103;
    v241[4] = v106;
    v241[5] = v102;
    v241[6] = v105;
    v241[7] = v101;
    v240[0] = v111;
    v240[1] = v104;
    v240[2] = v107;
    v240[3] = v103;
    v240[4] = v106;
    v240[5] = v102;
    v240[6] = v105;
    v240[7] = v101;
    v239[0] = v111;
    v239[1] = v104;
    v239[2] = v107;
    v239[3] = v103;
    v239[4] = v106;
    v239[5] = v102;
    v239[6] = v105;
    v239[7] = v101;
    v238[0] = v111;
    v238[1] = v104;
    v238[2] = v107;
    v238[3] = v103;
    v238[4] = v106;
    v238[5] = v102;
    v238[6] = v105;
    v238[7] = v101;
    v118 = *(v239 + (v112 & 0xF));
    v119 = *(v238 + (v113 & 0xF));
    v120 = *(v241 + (v109 & 0xF));
    v121 = *(v240 + (v110 & 0xF));
  }

  v122 = (v25 + *MEMORY[0x277CD7410]);
  v123 = *v122;
  v124 = v122[1];
  v125 = v122[2];
  v237 = v122[3];
  v236[2] = v125;
  v236[1] = v124;
  v236[0] = v123;
  v126 = v120 * (*(v236 + (v109 & 0xF)) - 1);
  v235[3] = v237;
  v235[2] = v125;
  v235[1] = v124;
  v235[0] = v123;
  v127 = v126 + v121 * (*(v235 + (v110 & 0xF)) - 1);
  v234[3] = v237;
  v234[2] = v125;
  v234[1] = v124;
  v234[0] = v123;
  v128 = v127 + v118 * (*(v234 + (v112 & 0xF)) - 1);
  v233[3] = v237;
  v233[2] = v125;
  v233[1] = v124;
  v233[0] = v123;
  v85 = (HIDWORD(v120) != 0) | (2 * (HIDWORD(v121) != 0)) | (4 * (HIDWORD(v118) != 0)) | (8 * (HIDWORD(v119) != 0)) | (16 * ((v128 + v119 * (*(v233 + (v113 & 0xF)) - 1)) >> 32 != 0));
  v86 = v83 | (16 * v84);
  v204 = v26;
  v206 = v30;
  if ((v30 & 1) == 0)
  {
LABEL_163:
    makeStrideBytes();
    v129 = (v26 + *MEMORY[0x277CD73D0]);
    v130.i64[0] = 0x100000001;
    v130.i64[1] = 0x100000001;
    v131 = vceqq_s32(*v129, v130);
    v132.i64[0] = v131.i32[0];
    v132.i64[1] = v131.i32[1];
    v133 = v132;
    v134 = vceqq_s32(v129[1], v130);
    v132.i64[0] = v134.i32[0];
    v132.i64[1] = v134.i32[1];
    v135 = v132;
    v136 = vceqq_s32(v129[2], v130);
    v132.i64[0] = v136.i32[0];
    v132.i64[1] = v136.i32[1];
    v137 = v132;
    v138 = vceqq_s32(v129[3], v130);
    v132.i64[0] = v138.i32[0];
    v132.i64[1] = v138.i32[1];
    v139 = v132;
    v132.i64[0] = v131.i32[2];
    v132.i64[1] = v131.i32[3];
    v140 = v132;
    v132.i64[0] = v134.i32[2];
    v132.i64[1] = v134.i32[3];
    v141 = v132;
    v132.i64[0] = v136.i32[2];
    v132.i64[1] = v136.i32[3];
    v142 = v132;
    v132.i64[0] = v138.i32[2];
    v132.i64[1] = v138.i32[3];
    v143 = vbicq_s8(v268, v132);
    v144 = vbicq_s8(v266, v142);
    v145 = vbicq_s8(v264, v141);
    v146 = vbicq_s8(v262, v140);
    v147 = vbicq_s8(v267, v139);
    v148 = vbicq_s8(v265, v137);
    v149 = vbicq_s8(v263, v135);
    v150 = *(v26 + *v37);
    v151 = *(v26 + *MEMORY[0x277CD73D8]);
    v152 = BYTE1(*(v26 + *MEMORY[0x277CD73D8]));
    v153 = vbicq_s8(v261, v133);
    v154 = BYTE2(*(v26 + *MEMORY[0x277CD73D8]));
    v155 = BYTE3(*(v26 + *MEMORY[0x277CD73D8]));
    if ((v150 & 0xFFF8) != 0)
    {
      v156 = v150 >> 3;
      v232[0] = v153;
      v232[1] = v146;
      v232[2] = v149;
      v232[3] = v145;
      v232[4] = v148;
      v232[5] = v144;
      v232[6] = v147;
      v232[7] = v143;
      v157 = *(v232 + (v151 & 0xF)) / v156;
      v231[0] = v153;
      v231[1] = v146;
      v231[2] = v149;
      v231[3] = v145;
      v231[4] = v148;
      v231[5] = v144;
      v231[6] = v147;
      v231[7] = v143;
      v158 = *(v231 + (v152 & 0xF));
      v230[0] = v153;
      v230[1] = v146;
      v230[2] = v149;
      v230[3] = v145;
      v230[4] = v148;
      v230[5] = v144;
      v230[6] = v147;
      v230[7] = v143;
      v159 = *(v230 + (v154 & 0xF)) / v156;
      v229[0] = v153;
      v229[1] = v146;
      v229[2] = v149;
      v229[3] = v145;
      v229[4] = v148;
      v229[5] = v144;
      v229[6] = v147;
      v229[7] = v143;
      v160 = v159;
      v161 = *(v229 + (v155 & 0xF)) / v156;
      v162 = v157;
      v163 = v158 / v156;
    }

    else
    {
      v228[0] = v153;
      v228[1] = v146;
      v228[2] = v149;
      v228[3] = v145;
      v228[4] = v148;
      v228[5] = v144;
      v228[6] = v147;
      v228[7] = v143;
      v227[0] = v153;
      v227[1] = v146;
      v227[2] = v149;
      v227[3] = v145;
      v227[4] = v148;
      v227[5] = v144;
      v227[6] = v147;
      v227[7] = v143;
      v226[0] = v153;
      v226[1] = v146;
      v226[2] = v149;
      v226[3] = v145;
      v226[4] = v148;
      v226[5] = v144;
      v226[6] = v147;
      v226[7] = v143;
      v225[0] = v153;
      v225[1] = v146;
      v225[2] = v149;
      v225[3] = v145;
      v225[4] = v148;
      v225[5] = v144;
      v225[6] = v147;
      v225[7] = v143;
      v160 = *(v226 + (v154 & 0xF));
      v161 = *(v225 + (v155 & 0xF));
      v162 = *(v228 + (v151 & 0xF));
      v163 = *(v227 + (v152 & 0xF));
    }

    v164 = (v26 + *MEMORY[0x277CD7410]);
    v165 = *v164;
    v166 = v164[1];
    v167 = v164[3];
    v223 = v164[2];
    v224 = v167;
    v222[0] = v165;
    v222[1] = v166;
    v168 = v162 * (*(v222 + (v151 & 0xF)) - 1);
    v221[2] = v223;
    v221[3] = v167;
    v221[0] = v165;
    v221[1] = v166;
    v169 = v168 + v163 * (*(v221 + (v152 & 0xF)) - 1);
    v220[2] = v223;
    v220[3] = v167;
    v220[0] = v165;
    v220[1] = v166;
    v170 = v169 + v160 * (*(v220 + (v154 & 0xF)) - 1);
    v219[2] = v223;
    v219[3] = v167;
    v219[0] = v165;
    v219[1] = v166;
    v85 |= (32 * (HIDWORD(v162) != 0)) | ((HIDWORD(v163) != 0) << 6) | ((HIDWORD(v160) != 0) << 7) | ((HIDWORD(v161) != 0) << 8) | (((v170 + v161 * (*(v219 + (v155 & 0xF)) - 1)) >> 32 != 0) << 9);
  }

LABEL_167:
  *&v276 = v40;
  *(&v276 + 1) = v36;
  *&v277 = v86;
  *(&v277 + 1) = v85;
  v207 = v18;
  *&v278 = [*(v18 + 16) count] | 0x10000;
  v171 = v217.u32[1];
  v172 = v217.u32[2];
  v173 = v217.i32[0] * v217.i32[1];
  v176 = (v217.i32[2] < 8u || v173 > 0x7FF) && v216 != 2;
  if (v212 > 4 || (v177 = (*(v208 + 1472) & 0xFFFFFFFE) != 24, v211 < 8 * v212) || v213 > 1 || v209 == 1 || v209 == 4)
  {
    v177 = 0;
  }

  if (v176)
  {
    v178 = 0x4000000;
  }

  else
  {
    v178 = 0;
  }

  if (a12)
  {
    v179 = 0x8000000;
  }

  else
  {
    v179 = 0;
  }

  *&v275 = (16 * (v216 & 7)) | ((v213 > 1) << 25) | ((v212 << 16) + 196608) & 0x30000 | v179 & 0xFFFFFFF1 | v178 & 0xFFFFFFF1 | (2 * (v209 & 7)) | (2 * *(v208 + 1476)) & (*(v208 + 1476) >> 3) & 0x80 | v177;
  v180 = 1.0;
  if ((v209 & 0xFFFFFFFE) == 2)
  {
    v180 = 1.0 / v211;
  }

  v261 = v210;
  v262 = v217;
  v181.i32[0] = 1;
  v182.i32[0] = 1;
  v182.i32[1] = v210.i32[0];
  v182.i32[2] = v210.i32[0] * v210.i32[1];
  v182.i32[3] = v210.i32[0] * v210.i32[1] * v210.i32[2];
  v181.i32[1] = v217.i32[0];
  v181.i32[2] = v217.i32[0] * v217.i32[1];
  v181.i32[3] = v173 * v217.i32[2];
  v263 = v182;
  v264 = v181;
  v265 = a9;
  v266 = v211;
  v267 = v212;
  v268 = v213;
  v269 = v180;
  v270 = 0;
  v272 = 0;
  v271 = 0;
  v273 = 0;
  v201 = *(v23 + *MEMORY[0x277CD7360]);
  v202 = *(v23 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v184 = PipelineStateForMPSKey;
  [v214 setComputePipelineState:{PipelineStateForMPSKey, 0, v201, v202, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v185 = [v184 threadExecutionWidth];
  v186 = [v184 maxTotalThreadsPerThreadgroup];
  if (v216)
  {
    if (v216 == 1)
    {
      v171 = v217.u32[2];
      v187 = v205;
    }

    else
    {
      v187 = v205;
      if (v216 != 2)
      {
LABEL_211:
        v218 = (v217.u32[0] + 15) >> 4;
        v192 = 16;
        v193 = v172;
        v172 = v171;
        v194 = 16;
        goto LABEL_212;
      }
    }

    LODWORD(v172) = v217.i32[3];
    goto LABEL_211;
  }

  v189 = 256;
  if (v186 < 0x100)
  {
    v189 = v186;
  }

  v190 = v189 > v217.u32[0] || v177;
  if (v185 <= 1)
  {
    v191 = 1;
  }

  else
  {
    v191 = v185;
  }

  if (v191 >= 0x20)
  {
    v191 = 32;
  }

  if (v190)
  {
    v192 = v191;
  }

  else
  {
    v192 = v189;
  }

  v193 = v217.u32[3];
  v194 = 1;
  v218 = v217.u32[1];
  v187 = v205;
LABEL_212:
  v195 = malloc_type_calloc(0x3CuLL, 4uLL, 0x100004052888210uLL);
  objc_msgSend_setBytes_length_atIndex_(v214);
  if (!a10)
  {
    [v214 setBuffer:objc_msgSend(v187 offset:"buffer") atIndex:{*(*(v207 + 8) + 64) + MPSGetLinearOffsetBytes(v187, 0, 4, v195, 0), 0}];
    v196 = v214;
    v197 = a11;
    if (!a11)
    {
      goto LABEL_215;
    }

    goto LABEL_214;
  }

  [v214 setBuffer:a10 offset:0 atIndex:28];
  v196 = v214;
  v197 = a11;
  if (a11)
  {
LABEL_214:
    [v196 setBuffer:v197 offset:0 atIndex:27];
  }

LABEL_215:
  if ((v215 & 1) == 0)
  {
    v198 = v195 + 80;
    [v196 setBuffer:objc_msgSend(v203 offset:"buffer") atIndex:{*(*(v207 + 32) + 64) + MPSGetLinearOffsetBytes(v203, 0, 4, v198, 0), 1}];
  }

  if ((v206 & 1) == 0)
  {
    v199 = v195 + 80 * (*(v207 + 48) & 1u) + 80;
    [v196 setBuffer:objc_msgSend(v204 offset:"buffer") atIndex:{*(*(v207 + 32) + 144) + MPSGetLinearOffsetBytes(v204, 0, 4, v199, 0), (*(v207 + 48) & 1) + 1}];
  }

  objc_msgSend_setBytes_length_atIndex_(v196);
  if (v216)
  {
    v200 = v192 + 1;
  }

  else
  {
    v200 = v192;
  }

  [v196 setThreadgroupMemoryLength:8 * v194 * v200 atIndex:0];
  v260[0] = v218;
  v260[1] = v172;
  v260[2] = v193;
  v259[0] = v192;
  v259[1] = v194;
  v259[2] = 1;
  [v196 dispatchThreadgroups:v260 threadsPerThreadgroup:v259];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t MPSNDArrayPoolingGradientFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v9 + 4 type:33 atIndex:63];
  AddFunctionConstantList(v6, a3);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

__n128 ___ZL21EncodePoolingGradientPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfob_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contents];
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *v2 = result;
  return result;
}

__n128 ___ZL37EncodePoolingGradientMultiDestinationPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK39NDArrayMultiaryMultiDestinationCallInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contents];
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *v2 = result;
  return result;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::IsWinogradSupported(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 136);
  if (MPSDisableMatrixUnit())
  {
    MPSKernel_LogInfo(v4, 1uLL, "MXU explicitly disabled. Falling back to TEC implementation.");
    return 0;
  }

  v6 = *(a2 + 128);
  if (*(a2 + 120))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(v6 + 232) inputTensorAtIndex:v7];
  v9 = [*(v6 + 232) inputTensorAtIndex:1];
  v10 = [*(v6 + 232) outputTensorAtIndex:0];
  result = 0;
  v11 = *(v8 + 8);
  if ((v11 & 0x10000000) == 0)
  {
    return result;
  }

  v12 = *(v9 + 8);
  v13 = *(v10 + 8);
  if ((v12 & 0x10000000) == 0 || (v13 & 0x10000000) == 0)
  {
    return result;
  }

  v42 = v10;
  IsWinogradSupported = MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(a1, a2);
  v16 = *(a2 + 136);
  if ((*(v16 + 329) & 1) != 0 || (*(v16 + *MEMORY[0x277CD7378]) & 2) != 0)
  {
    v17 = v11 == 268435472 && v12 == 268435472;
    if (v17 && v13 == 268435472)
    {
      MPSKernel_LogInfo(v16, 1uLL, "allowReducedPrecision flag is set. Running A18 MXU Winograd using fp16 precision.\n");
      if (!IsWinogradSupported)
      {
        return 0;
      }

      goto LABEL_35;
    }
  }

  if (qword_27DF86CA8 == -1)
  {
    if (byte_27DF86C81)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v19 = *(a2 + 136);
    dispatch_once(&qword_27DF86CA8, &__block_literal_global_298);
    v16 = v19;
    if (byte_27DF86C81)
    {
LABEL_23:
      MPSKernel_LogInfo(v16, 1uLL, "MPSNDARRAY_WINOGRAD_FP16_INTERMEDIATE is set. Running A18 MXU Winograd using fp16 precision.\n");
      if (!IsWinogradSupported)
      {
        return 0;
      }

      goto LABEL_35;
    }
  }

  if (qword_27DF86CB0 == -1)
  {
    if (byte_27DF86C82)
    {
      goto LABEL_30;
    }

LABEL_33:
    v21 = v16;
    result = MPSForceMatrixUnit();
    if (!result)
    {
      return result;
    }

    MPSKernel_LogInfo(v21, 1uLL, "MPSNDARRAY_CONV_FORCE_MXU is set to 1. Forcing A18 MXU Winograd using fp19 precision.\n");
    if (!IsWinogradSupported)
    {
      return 0;
    }

    goto LABEL_35;
  }

  v20 = v16;
  dispatch_once(&qword_27DF86CB0, &__block_literal_global_301);
  v16 = v20;
  if ((byte_27DF86C82 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  MPSKernel_LogInfo(v16, 1uLL, "MPSNDARRAY_WINOGRAD_FP19_INTERMEDIATE is set. Running A18 MXU Winograd using fp19 precision.\n");
  if (!IsWinogradSupported)
  {
    return 0;
  }

LABEL_35:
  v22 = [*(*(a2 + 128) + 232) graph];
  v23 = *(v22 + 64);
  v24 = *v23;
  v25 = v23[1];
  if (*v23 == v25)
  {
LABEL_44:
    v27 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v27 = 0;
    }

    goto LABEL_46;
  }

  v26 = v22;
  v27 = -1;
  v28 = -1;
  do
  {
    while (1)
    {
      v29 = *v24;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v26);
      v31 = *v24;
      if (v29 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v27 = *(v31 + 76);
      if (v31 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v26) + 32))
      {
        goto LABEL_41;
      }

LABEL_38:
      if (++v24 == v25)
      {
        goto LABEL_42;
      }
    }

    if (v31 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v26) + 32))
    {
      goto LABEL_38;
    }

LABEL_41:
    v32 = *v24++;
    v28 = *(v32 + 76);
  }

  while (v24 != v25);
LABEL_42:
  if (v28 == -1 || v27 == -1)
  {
    goto LABEL_44;
  }

LABEL_46:
  v33 = [*(v6 + 16) objectAtIndexedSubscript:v27];
  v34 = *(v33 + *MEMORY[0x277CD73D8]);
  if (v34 > 3u || BYTE1(v34) > 3u || BYTE2(v34) > 3u || BYTE3(v34) > 3u)
  {
LABEL_57:
    if ((*(*(v42 + 16) + 8) - **(v42 + 16)) >= 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v38 = *(a2 + 8);
  v39 = vceq_s16((*&vzip1_s8(*&v34, *&v34) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if (vminv_u16(v39))
  {
    if (v38 != 1)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v38 || (v39.i8[6] & 1) == 0)
    {
      goto LABEL_57;
    }

    v40 = !BYTE2(*(v33 + *MEMORY[0x277CD73D8])) && v34 == 1;
    if (!v40 || BYTE1(*(v33 + *MEMORY[0x277CD73D8])) != 2)
    {
      goto LABEL_57;
    }
  }

  return 0;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::IsIntrinsicsSupported(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  if (*(a2 + 120))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(v3 + 232) inputTensorAtIndex:v4];
  [*(v3 + 232) inputTensorAtIndex:1];
  [*(v3 + 232) outputTensorAtIndex:0];
  v6 = *(a2 + 136);
  if (!MPSDisableMatrixUnit())
  {
    v7 = *(*(v5 + 16) + 8) - **(v5 + 16);
    if (*(a2 + 8))
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  MPSKernel_LogInfo(v6, 1uLL, "MXU explicitly disabled. Falling back to TEC implementation.");
  return 0;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::IsConvolutionSupported(uint64_t a1, uint64_t a2)
{
  if (mainSourcesHaveRectangularStrides(a2))
  {
    if (MPSNDArrayConvolutionDeviceBehaviorA18::IsIntrinsicsSupported(a1, a2))
    {
      return 1;
    }

    else
    {

      return MPSNDArrayConvolutionDeviceBehaviorA18::IsWinogradSupported(a1, a2);
    }
  }

  else
  {
    MPSKernel_LogInfo(*(a2 + 136), 4uLL, "Non rectangular strides are not supported by A18 convolution. Falling back.\n");
    return 0;
  }
}

BOOL MPSNDArrayConvolutionDeviceBehaviorA18::DoWeightsNeedPhysicalTranspose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + *MEMORY[0x277CD73D8]);
  if (v4.u8[0] > 3u || v4.u8[1] > 3u || BYTE2(*(a3 + *MEMORY[0x277CD73D8])) > 3u || BYTE3(*(a3 + *MEMORY[0x277CD73D8])) > 3u)
  {
    return 1;
  }

  return vmovn_s16(vzip1q_s8(v4, v4)).u32[0] != 50462976 || *(a4 + 12) == 1;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::EncodeNDArrayConvolutionIntrinsics(uint64_t a1, void *a2, uint64_t a3, int32x4_t *a4)
{
  v393 = *MEMORY[0x277D85DE8];
  v323 = a4->u32[2];
  v305 = a4->u32[3];
  v330 = a4[1].u64[0];
  v306 = a4[2].u64[0];
  v307 = a4[2].u64[1];
  v309 = a4[3].u64[0];
  v308 = a4[3].i64[1];
  v301 = a4[4].u64[1];
  v302 = a4[4].u64[0];
  v299 = a4[6].i64[1];
  v303 = a4[7].i64[0];
  v326 = a4[5].u64[0];
  v310 = a4[6].i64[0];
  v312 = a4[5].i64[1];
  v6 = a4[8].i64[0];
  v5 = a4[8].i64[1];
  v327 = a4[7].u8[8];
  v278 = *(v5 + *MEMORY[0x277CD7360]);
  v277 = *(v5 + *MEMORY[0x277CD7368]);
  v315 = a4[1].i64[1];
  if (v327 == 1)
  {
    v288 = *(v5 + 272);
    [v288 setLabel:?];
    v7 = 0;
    v290 = 0;
    v279 = 0;
    v284 = -1;
    goto LABEL_9;
  }

  v288 = *(v5 + 256);
  [v288 setLabel:?];
  v9 = *(v5 + 304);
  if (*(a1 + 160) == 4)
  {
    v10 = *(a1 + 152);
    if (v9 != 4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (v9 == 4)
  {
LABEL_7:
    v10 = *(v5 + 296);
  }

LABEL_8:
  v290 = v10;
  v284 = *(v5 + 312);
  v279 = v284 != -1;
  v7 = &v364;
LABEL_9:
  v319 = [*(v6 + 232) inputTensorAtIndex:0];
  v317 = [*(v6 + 232) inputTensorAtIndex:1];
  v297 = [*(v6 + 232) inputTensorAtIndex:2];
  v333 = [*(v6 + 232) outputTensorAtIndex:0];
  v322 = v6;
  v276 = [*(v6 + 16) count];
  v364 = -1;
  v11 = [*(a4[8].i64[0] + 232) graph];
  v12 = *(v11 + 64);
  v14 = *v12;
  v13 = v12[1];
  if (*v12 == v13)
  {
    goto LABEL_26;
  }

  v15 = v11;
  if (!v299)
  {
    if (v303)
    {
      v16 = -1;
      v17 = -1;
      v337 = -1;
      while (1)
      {
        v65 = *v14;
        CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
        v67 = *v14;
        if (v65 == *(CoreOpInputAtIndex + 32))
        {
          v16 = *(v67 + 76);
        }

        v68 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
        v69 = *v14;
        if (v67 == *(v68 + 32))
        {
          v17 = *(v69 + 76);
          if (v69 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
          {
            goto LABEL_112;
          }

LABEL_117:
          v70 = *v14++;
          v337 = *(v70 + 76);
          if (v14 == v13)
          {
LABEL_118:
            v336 = -1;
            if (!v7)
            {
              goto LABEL_25;
            }

LABEL_23:
            if (v16 != -1)
            {
              *v7 = v16;
              goto LABEL_25;
            }

            goto LABEL_26;
          }
        }

        else
        {
          if (v69 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
          {
            goto LABEL_117;
          }

LABEL_112:
          if (++v14 == v13)
          {
            goto LABEL_118;
          }
        }
      }
    }

    v16 = -1;
    v17 = -1;
    while (1)
    {
      v93 = *v14;
      v94 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v95 = *v14;
      if (v93 == *(v94 + 32))
      {
        v16 = *(v95 + 76);
        if (v95 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
        {
          goto LABEL_176;
        }

LABEL_179:
        v96 = *v14++;
        v17 = *(v96 + 76);
        if (v14 == v13)
        {
LABEL_180:
          v337 = -1;
          v336 = -1;
          if (!v7)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }
      }

      else
      {
        if (v95 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
        {
          goto LABEL_179;
        }

LABEL_176:
        if (++v14 == v13)
        {
          goto LABEL_180;
        }
      }
    }
  }

  if (!v303)
  {
    v16 = -1;
    v17 = -1;
    v336 = -1;
    while (1)
    {
      v87 = *v14;
      v88 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v89 = *v14;
      if (v87 == *(v88 + 32))
      {
        v16 = *(v89 + 76);
      }

      v90 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v91 = *v14;
      if (v89 == *(v90 + 32))
      {
        v17 = *(v91 + 76);
        if (v91 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
        {
          goto LABEL_154;
        }

LABEL_159:
        v92 = *v14++;
        v336 = *(v92 + 76);
        if (v14 == v13)
        {
LABEL_160:
          v337 = -1;
          if (!v7)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }
      }

      else
      {
        if (v91 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
        {
          goto LABEL_159;
        }

LABEL_154:
        if (++v14 == v13)
        {
          goto LABEL_160;
        }
      }
    }
  }

  v16 = -1;
  v17 = -1;
  v336 = -1;
  v337 = -1;
  do
  {
    while (1)
    {
      v18 = *v14;
      v19 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v20 = *v14;
      if (v18 == *(v19 + 32))
      {
        v16 = *(v20 + 76);
      }

      v21 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v22 = *v14;
      if (v20 == *(v21 + 32))
      {
        v17 = *(v22 + 76);
      }

      v23 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v24 = *v14;
      if (v22 != *(v23 + 32))
      {
        break;
      }

      v336 = *(v24 + 76);
      if (v24 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
      {
        goto LABEL_21;
      }

LABEL_14:
      if (++v14 == v13)
      {
        goto LABEL_22;
      }
    }

    if (v24 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
    {
      goto LABEL_14;
    }

LABEL_21:
    v25 = *v14++;
    v337 = *(v25 + 76);
  }

  while (v14 != v13);
LABEL_22:
  if (v7)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (v17 == -1)
  {
LABEL_26:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v337 = -1;
    v336 = -1;
    v17 = -1;
  }

  v26 = [*(v322 + 16) objectAtIndexedSubscript:v17];
  v275 = *(*(v322 + 8) + 80 * v17 + 64);
  if (v327)
  {
    v27 = *(v322 + 112);
    v28 = v322 + 32;
  }

  else
  {
    v27 = [*(v322 + 16) objectAtIndexedSubscript:v364];
    v28 = *(v322 + 8) + 80 * v364;
  }

  v29 = *(v28 + 64);
  v30 = *&v27[*MEMORY[0x277CD73D8]];
  v31 = v30.u8[0];
  v32 = v30.u8[1];
  v33 = v30.u8[2];
  v34 = v30.u8[3];
  if (v30.u8[0] > 3u || v30.u8[1] > 3u || v30.u8[2] > 3u || v30.u8[3] > 3u)
  {
    goto LABEL_43;
  }

  v50 = vceq_s16((*&vzip1_s8(*v30.i8, *v30.i8) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if (vminv_u16(v50))
  {
    if (v323 == -1)
    {
      v32 = 1;
      goto LABEL_43;
    }

    v41 = v323;
    goto LABEL_48;
  }

  if (v323 == 1)
  {
    if (v50.i8[6])
    {
      v97 = v33 == 1 && v31 == 2;
      if (v97 && v32 == 0)
      {
        v332 = 0;
        goto LABEL_49;
      }
    }

LABEL_43:
    v30.i16[0] = v31;
    v30.i16[1] = v32;
    v30.i16[2] = v33;
    v30.i16[3] = v34;
    if (vmovn_s16(v30).u32[0] != 50462976)
    {
      v38 = [objc_msgSend(v27 "descriptor")];
      v39 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v27[*MEMORY[0x277CD73C8]] shape:v38];
      v40 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v39];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v27 setReadCount:{objc_msgSend(v27, "readCount") + 1}];
      }

      v365 = v27;
      [v288 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v365 kernelDAGObject:{1), 0, v40, 0}];
      v27 = v40;
    }

    v41 = v323;
    goto LABEL_48;
  }

  if (v323 || (v50.i8[6] & 1) == 0)
  {
    goto LABEL_43;
  }

  v51 = !v33 && v31 == 1;
  if (!v51 || v32 != 2)
  {
    goto LABEL_43;
  }

  v41 = 1;
LABEL_48:
  v332 = v41;
LABEL_49:
  v314 = (*(*a1 + 48))(a1, v27, v26, a4);
  if (v314)
  {
    v42 = *(v317 + 16);
    v366 = 0;
    v367 = 0;
    v365 = 0;
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

    v26 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v288, a3, a2, v26, &v365, v305, 0);
    if (v365)
    {
      v366 = v365;
      operator delete(v365);
    }
  }

  if (!v26)
  {
    return MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(a1, a2, a3, a4);
  }

  v45 = SHIDWORD(v312);
  if (v327)
  {
    v286 = v309 * v312 + v310;
    v45 = v308 * SHIDWORD(v312) + SHIDWORD(v310);
    v46 = v297;
    v47 = v330;
    v330 = v315;
  }

  else
  {
    v286 = v312;
    v47 = v315;
    v46 = v319;
  }

  v320 = v46;
  v49 = *(v46 + 8);
  v300 = *(v317 + 8);
  v287 = *(v333 + 8);
  v294 = v49;
  if (v49 > 301989895)
  {
    if (v49 != 301989896 && v49 != 335544328 && v49 != 536870920)
    {
LABEL_82:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  else if (((v49 - 268435464) > 0x18 || ((1 << (v49 - 8)) & 0x1000101) == 0) && v49 != -1879048176 && v49 != 8)
  {
    goto LABEL_82;
  }

  if (v300 > 301989895)
  {
    if (v300 != 301989896 && v300 != 335544328 && v300 != 536870920)
    {
LABEL_93:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  else if (((v300 - 268435464) > 0x18 || ((1 << (v300 - 8)) & 0x1000101) == 0) && v300 != -1879048176 && v300 != 8)
  {
    goto LABEL_93;
  }

  if (v323 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v332 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v320 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v317 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v333 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v53 = *(v320 + 16);
  v55 = *v53;
  v54 = v53[1];
  if (v54 != v55)
  {
    if (((v54 - v55) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v71 = *(v317 + 16);
  v73 = *v71;
  v72 = v71[1];
  if (v72 != v73)
  {
    if (((v72 - v73) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v74 = *(v333 + 16);
  v76 = *v74;
  v75 = v74[1];
  if (v75 != v76)
  {
    if (((v75 - v76) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v323)
  {
    v56 = 8;
    v57 = 8;
    v58 = 16;
    v59 = 0;
    v60 = 0;
    v61 = 16;
    v267 = v29;
    v269 = v27;
    v283 = v45;
    if (!v305)
    {
      goto LABEL_124;
    }

    goto LABEL_108;
  }

  v60 = 16;
  v59 = 16;
  v58 = 8;
  v57 = 0;
  v56 = 0;
  v61 = 16;
  v267 = v29;
  v269 = v27;
  v283 = v45;
  if (v305)
  {
LABEL_108:
    v62 = 24;
    v63 = 8;
    v64 = 0;
    goto LABEL_125;
  }

LABEL_124:
  v64 = 16;
  v61 = 8;
  v63 = 24;
  v62 = 0;
LABEL_125:
  v77 = *v60;
  v78 = *v59;
  v311 = *v58;
  v292 = *v57;
  v313 = MEMORY[0x18];
  v282 = *v56;
  v281 = *v58;
  v79 = MEMORY[0x18];
  v80 = *v62;
  v81 = *v61 * v326;
  v82 = *v64;
  v83 = *v63;
  if (v327)
  {
    if (v81 != v47 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v80 != v330 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_735;
    }
  }

  else
  {
    if (v81 != v330 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v80 != v47 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_735:
      MTLReportFailure();
    }
  }

  if (v83 != v307 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v82 != v306 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v79 != v313 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v77 != v330 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v78 != v47 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v84 = *(v320 + 8);
  if (v84 > 285212703)
  {
    if (v84 <= 536870915)
    {
      if (v84 > 301989895)
      {
        if (v84 == 301989896)
        {
          v85 = 512;
          v86 = *(v317 + 8);
          if (v86 > 285212703)
          {
            goto LABEL_212;
          }

          goto LABEL_231;
        }

        if (v84 != 335544328)
        {
          goto LABEL_269;
        }

        v85 = 544;
        v86 = *(v317 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }
      }

      else
      {
        if (v84 == 285212704)
        {
          v85 = 416;
          v86 = *(v317 + 8);
          if (v86 > 285212703)
          {
            goto LABEL_212;
          }

          goto LABEL_231;
        }

        if (v84 != 285212736)
        {
          goto LABEL_269;
        }

        v85 = 448;
        v86 = *(v317 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }
      }
    }

    else if (v84 <= 536870927)
    {
      if (v84 == 536870916)
      {
        v85 = 0;
        v86 = *(v317 + 8);
        if (v86 > 285212703)
        {
          goto LABEL_212;
        }

        goto LABEL_231;
      }

      if (v84 != 536870920)
      {
        goto LABEL_269;
      }

      v85 = 32;
      v86 = *(v317 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }

    else
    {
      switch(v84)
      {
        case 536870928:
          v85 = 64;
          v86 = *(v317 + 8);
          if (v86 <= 285212703)
          {
            goto LABEL_231;
          }

          break;
        case 536870944:
          v85 = 96;
          v86 = *(v317 + 8);
          if (v86 <= 285212703)
          {
            goto LABEL_231;
          }

          break;
        case 536870976:
          v85 = 128;
          v86 = *(v317 + 8);
          if (v86 <= 285212703)
          {
            goto LABEL_231;
          }

          break;
        default:
          goto LABEL_269;
      }
    }
  }

  else if (v84 <= 31)
  {
    if (v84 > 7)
    {
      if (v84 == 8)
      {
        v85 = 192;
        v86 = *(v317 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }
      }

      else
      {
        if (v84 != 16)
        {
          goto LABEL_269;
        }

        v85 = 224;
        v86 = *(v317 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }
      }
    }

    else if (v84 == -1879048176)
    {
      v85 = 384;
      v86 = *(v317 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }

    else
    {
      if (v84 != 4)
      {
        goto LABEL_269;
      }

      v85 = 160;
      v86 = *(v317 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }
  }

  else if (v84 <= 268435463)
  {
    if (v84 == 32)
    {
      v85 = 256;
      v86 = *(v317 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }

    else
    {
      if (v84 != 64)
      {
        goto LABEL_269;
      }

      v85 = 288;
      v86 = *(v317 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }
  }

  else
  {
    switch(v84)
    {
      case 268435464:
        v85 = 480;
        v86 = *(v317 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }

        break;
      case 268435472:
        v85 = 320;
        v86 = *(v317 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }

        break;
      case 268435488:
        v85 = 352;
        v86 = *(v317 + 8);
        if (v86 > 285212703)
        {
          break;
        }

LABEL_231:
        if (v86 <= 31)
        {
          if (v86 > 7)
          {
            if (v86 == 8)
            {
              v99 = 6144;
            }

            else
            {
              if (v86 != 16)
              {
                goto LABEL_271;
              }

              v99 = 7168;
            }
          }

          else if (v86 == -1879048176)
          {
            v99 = 12288;
          }

          else
          {
            if (v86 != 4)
            {
              goto LABEL_271;
            }

            v99 = 5120;
          }
        }

        else if (v86 <= 268435463)
        {
          if (v86 == 32)
          {
            v99 = 0x2000;
          }

          else
          {
            if (v86 != 64)
            {
              goto LABEL_271;
            }

            v99 = 9216;
          }
        }

        else
        {
          switch(v86)
          {
            case 268435464:
              v99 = 15360;
              break;
            case 268435472:
              v99 = 10240;
              break;
            case 268435488:
              v99 = 11264;
              goto LABEL_272;
            default:
LABEL_271:
              v99 = 18432;
              break;
          }
        }

        goto LABEL_272;
      default:
LABEL_269:
        v85 = 576;
        v86 = *(v317 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }

        break;
    }
  }

LABEL_212:
  if (v86 <= 536870915)
  {
    if (v86 > 301989895)
    {
      if (v86 != 301989896)
      {
        if (v86 == 335544328)
        {
          v99 = 17408;
          goto LABEL_272;
        }

        goto LABEL_271;
      }

      v99 = 0x4000;
    }

    else
    {
      if (v86 != 285212704)
      {
        if (v86 == 285212736)
        {
          v99 = 14336;
          goto LABEL_272;
        }

        goto LABEL_271;
      }

      v99 = 13312;
    }
  }

  else if (v86 <= 536870927)
  {
    if (v86 != 536870916)
    {
      if (v86 == 536870920)
      {
        v99 = 1024;
        goto LABEL_272;
      }

      goto LABEL_271;
    }

    v99 = 0;
  }

  else
  {
    switch(v86)
    {
      case 536870928:
        v99 = 2048;
        break;
      case 536870944:
        v99 = 3072;
        break;
      case 536870976:
        v99 = 4096;
        break;
      default:
        goto LABEL_271;
    }
  }

LABEL_272:
  v100 = v99 | v85;
  if (v327)
  {
    v101 = *(v297 + 8);
    if (v101 > 285212703)
    {
      if (v101 <= 536870915)
      {
        if (v101 > 301989895)
        {
          if (v101 == 301989896)
          {
            v102 = 0x80000;
          }

          else
          {
            if (v101 != 335544328)
            {
              goto LABEL_316;
            }

            v102 = 557056;
          }
        }

        else if (v101 == 285212704)
        {
          v102 = 425984;
        }

        else
        {
          if (v101 != 285212736)
          {
            goto LABEL_316;
          }

          v102 = 458752;
        }
      }

      else if (v101 <= 536870927)
      {
        if (v101 == 536870916)
        {
          v102 = 0;
        }

        else
        {
          if (v101 != 536870920)
          {
            goto LABEL_316;
          }

          v102 = 0x8000;
        }
      }

      else
      {
        switch(v101)
        {
          case 536870928:
            v102 = 0x10000;
            break;
          case 536870944:
            v102 = 98304;
            break;
          case 536870976:
            v102 = 0x20000;
            break;
          default:
            goto LABEL_316;
        }
      }
    }

    else if (v101 <= 31)
    {
      if (v101 > 7)
      {
        if (v101 == 8)
        {
          v102 = 196608;
        }

        else
        {
          if (v101 != 16)
          {
            goto LABEL_316;
          }

          v102 = 229376;
        }
      }

      else if (v101 == -1879048176)
      {
        v102 = 393216;
      }

      else
      {
        if (v101 != 4)
        {
          goto LABEL_316;
        }

        v102 = 163840;
      }
    }

    else if (v101 <= 268435463)
    {
      if (v101 == 32)
      {
        v102 = 0x40000;
      }

      else
      {
        if (v101 != 64)
        {
          goto LABEL_316;
        }

        v102 = 294912;
      }
    }

    else
    {
      switch(v101)
      {
        case 268435464:
          v102 = 491520;
          break;
        case 268435472:
          v102 = 327680;
          break;
        case 268435488:
          v102 = 360448;
          break;
        default:
LABEL_316:
          v102 = 589824;
          break;
      }
    }

    v100 |= v102;
  }

  v103 = *(v333 + 8);
  v272 = v100;
  if (v103 <= 285212703)
  {
    if (v103 <= 31)
    {
      if (v103 > 7)
      {
        if (v103 == 8)
        {
          v104 = 6;
        }

        else
        {
          if (v103 != 16)
          {
            goto LABEL_361;
          }

          v104 = 7;
        }
      }

      else if (v103 == -1879048176)
      {
        v104 = 12;
      }

      else
      {
        if (v103 != 4)
        {
          goto LABEL_361;
        }

        v104 = 5;
      }
    }

    else if (v103 <= 268435463)
    {
      if (v103 == 32)
      {
        v104 = 8;
      }

      else
      {
        if (v103 != 64)
        {
          goto LABEL_361;
        }

        v104 = 9;
      }
    }

    else
    {
      switch(v103)
      {
        case 268435464:
          v104 = 15;
          break;
        case 268435472:
          v104 = 10;
          break;
        case 268435488:
          v104 = 11;
          goto LABEL_362;
        default:
LABEL_361:
          v104 = 18;
          break;
      }
    }

    goto LABEL_362;
  }

  if (v103 <= 536870915)
  {
    if (v103 > 301989895)
    {
      if (v103 == 301989896)
      {
        v104 = 16;
      }

      else
      {
        if (v103 != 335544328)
        {
          goto LABEL_361;
        }

        v104 = 17;
      }
    }

    else if (v103 == 285212704)
    {
      v104 = 13;
    }

    else
    {
      if (v103 != 285212736)
      {
        goto LABEL_361;
      }

      v104 = 14;
    }

    goto LABEL_362;
  }

  if (v103 > 536870927)
  {
    switch(v103)
    {
      case 536870928:
        v104 = 2;
        break;
      case 536870944:
        v104 = 3;
        break;
      case 536870976:
        v104 = 4;
        break;
      default:
        goto LABEL_361;
    }

    goto LABEL_362;
  }

  if (v103 == 536870916)
  {
    v271 = 0;
  }

  else
  {
    if (v103 != 536870920)
    {
      goto LABEL_361;
    }

    v104 = 1;
LABEL_362:
    v271 = v104;
  }

  v295 = v330 / v326;
  v296 = v47 / v326;
  switch(v294)
  {
    case 8:
LABEL_366:
      v105 = 2;
      v270 = v26;
      if (v300 != 8)
      {
        goto LABEL_371;
      }

      goto LABEL_373;
    case 268435488:
      v105 = 1;
      v270 = v26;
      if (v300 != 8)
      {
        goto LABEL_371;
      }

      goto LABEL_373;
    case 536870920:
      goto LABEL_366;
  }

  v105 = 0;
  v270 = v26;
  if (v300 == 8)
  {
LABEL_373:
    v106 = 2;
    goto LABEL_376;
  }

LABEL_371:
  if (v300 == 268435488)
  {
    v106 = 1;
  }

  else
  {
    if (v300 == 536870920)
    {
      goto LABEL_373;
    }

    v106 = 0;
  }

LABEL_376:
  __s2 = v292;
  v347 = v311;
  v107 = v47 / v326;
  v348 = v330 / v326;
  v349 = v47 / v326;
  v350 = v306;
  v351 = v307;
  v352 = v326;
  v353 = v313;
  v354 = v309;
  v355 = v308;
  v356 = v302;
  v357 = v301;
  v358 = v332;
  v359 = v323;
  v360 = v305;
  v361 = v105;
  v108 = v330 / v326;
  v362 = v106;
  v363 = 0;
  if (v327)
  {
    v107 = v330 / v326;
    v348 = v47 / v326;
    v349 = v330 / v326;
    v108 = v47 / v326;
  }

  v109 = a4[8].i64[1];
  if (!v290)
  {
    v114 = *(a1 + 264);
    if (v114 && (v115 = *(a1 + 272)) != 0)
    {
      while (memcmp(v114, &__s2, 0x48uLL))
      {
        v114 += 108;
        if (!--v115)
        {
          goto LABEL_385;
        }
      }
    }

    else
    {
LABEL_385:
      v116 = *(a1 + 256);
      if (!v116)
      {
LABEL_389:
        v298 = 0;
        v117 = (v313 * v311 * v292);
        if (v108 >= 0x20)
        {
          v118 = 32;
        }

        else
        {
          v118 = 16;
        }

        v316 = v118;
        v119 = 63 - __clz(v117);
        if (v119 >= 6)
        {
          v119 = 6;
        }

        if (v119 <= 4)
        {
          LOBYTE(v119) = 4;
        }

        v120 = 63 - __clz(v107);
        LODWORD(v119) = 1 << v119;
        if (v117)
        {
          v119 = v119;
        }

        else
        {
          v119 = 16;
        }

        v334 = v119;
        if (v120 >= 6)
        {
          v121 = 6;
        }

        else
        {
          v121 = v120;
        }

        if (v121 <= 4)
        {
          LOBYTE(v121) = 4;
        }

        LODWORD(v121) = 1 << v121;
        if (v107)
        {
          v121 = v121;
        }

        else
        {
          v121 = 16;
        }

        v331 = v121;
        if (v117 >= 0x40000 && v107 >= 0x80)
        {
          v298 = 2;
          v316 = 16;
          v334 = 64;
          v331 = 128;
        }

        v289 = 0;
        v112 = 0;
        v273 = 0;
        v274 = 0;
        v122 = v334;
        if (v332)
        {
          v123 = v331;
        }

        else
        {
          v123 = v334;
        }

        if (!v332)
        {
          v122 = v331;
        }

        if (v123 <= 0x10)
        {
          v110 = 1;
        }

        else
        {
          v110 = 2;
        }

        if (v122 <= 0x10)
        {
          v111 = 1;
        }

        else
        {
          v111 = 2;
        }

        if ((*(v109 + *MEMORY[0x277CD7378]) & 0x10) != 0)
        {
          goto LABEL_422;
        }

        goto LABEL_380;
      }

      v114 = *(a1 + 248);
      while (memcmp(v114, &__s2, 0x48uLL))
      {
        v114 += 108;
        if (!--v116)
        {
          goto LABEL_389;
        }
      }
    }

    v334 = *(v114 + 72);
    v331 = *(v114 + 76);
    v110 = *(v114 + 84);
    v316 = *(v114 + 80);
    v111 = *(v114 + 88);
    v298 = *(v114 + 92);
    v274 = *(v114 + 96);
    v273 = *(v114 + 97);
    v112 = *(v114 + 100);
    v289 = *(v114 + 104);
    if ((*(v109 + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      goto LABEL_422;
    }

LABEL_380:
    v113 = v110;
    goto LABEL_423;
  }

  v334 = *v290;
  v331 = v290[1];
  v110 = v290[3];
  v316 = v290[2];
  v111 = v290[4];
  v298 = v290[5];
  v274 = *(v290 + 24);
  v273 = *(v290 + 25);
  v112 = v290[7];
  v289 = *(v290 + 32);
  if ((*(v109 + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    goto LABEL_380;
  }

LABEL_422:
  v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v292, v311, v108, v107, v306, v307, v326, v313, v309, v308, v302, v301, v332, v323, v305, v105, v106, 0];
  v113 = v110;
  MPSKernel_LogInfo(v109, 1uLL, "Direct A18 kernel running key with params:    {%s, %s}\n", [v124 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v334, v331, v316, v110, v111, v298, v274, v273, v112, v289), "UTF8String"));
  v109 = a4[8].i64[1];
LABEL_423:
  if (qword_27DF86CC0 == -1)
  {
    if (byte_27DF86C83 == 1)
    {
LABEL_425:
      if ([v109 conformsToProtocol:&unk_284CCB9C0])
      {
        if (!qword_27DF86CB8)
        {
          qword_27DF86CB8 = objc_alloc_init(MPSNDArrayAutoTuneRecorderObj);
        }

        v125 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&__s2 length:72];
        [qword_27DF86CB8 recordNode:v125 kernelID:1];
      }
    }
  }

  else
  {
    dispatch_once(&qword_27DF86CC0, &__block_literal_global_326);
    if (byte_27DF86C83 == 1)
    {
      goto LABEL_425;
    }
  }

  v126 = v279;
  if (v284 == -1)
  {
    v126 = 0;
  }

  if (!v126)
  {
    goto LABEL_539;
  }

  if ((v284 & 0x8000000000000000) != 0)
  {
    v137 = -1;
    goto LABEL_537;
  }

  if (v284 <= 0xD7F)
  {
    if (v358)
    {
      v127 = v284;
      while (1)
      {
        v128 = 16 << ((v127 / 0x30u) & 3);
        v129 = 16 << (v127 % 3u);
        if (v129 <= v128)
        {
          v130 = 16 * (4u >> (v127 % 3u));
          v131 = (16 << ((v127 / 0xCu) & 3));
          v132 = (v129 - 1) & v128;
          v133 = (4u >> (v127 % 3u)) << (v127 % 3u) != 4 || v130 > v131;
          v134 = !v133 && ((v130 + 255) & v131) == 0;
          if (v134 && v132 == 0)
          {
            break;
          }
        }

        if (++v127 == 3456)
        {
          goto LABEL_469;
        }
      }

      LOBYTE(v136) = v127 % 3u;
      v111 = 4u >> v136;
      v334 = (16 << ((v127 / 0xCu) & 3));
      v331 = (16 << ((v127 / 0x30u) & 3));
    }

    else
    {
      v127 = v284;
      while (1)
      {
        v136 = v127 - 3 * (v127 / 3u);
        v138 = 4u >> (v127 % 3u);
        v139 = (16 << ((v127 / 0x30u) & 3));
        if (16 * v138 <= v139)
        {
          v140 = 16 << ((v127 / 0xCu) & 3);
          v141 = v138 << (v127 % 3u) != 4 || 16 << (v127 % 3u) > v140;
          v142 = !v141 && (((16 << (v127 % 3u)) + 255) & v140) == 0;
          if (v142 && ((16 * v138 - 1) & v139) == 0)
          {
            break;
          }
        }

        if (++v127 == 3456)
        {
          goto LABEL_469;
        }
      }

      v111 = v138;
      v334 = (16 << ((v127 / 0xCu) & 3));
      v331 = (16 << ((v127 / 0x30u) & 3));
    }

    v273 = 0;
    v274 = 0;
    v316 = (16 << (((43691 * v127) & 0x800000) != 0));
    v289 = 1;
    v113 = (1 << v136);
    v112 = v127 / 0x480u;
    v298 = (((43691 * v127) >> 24) - 3 * ((171 * (v127 / 0x180u)) >> 9));
  }

LABEL_469:
  v145 = (v331 & (v331 - 1)) == 0 && v331 < 0x81;
  v148 = (v334 & (v334 - 1)) == 0 && v113 * v111 == 4 && v334 < 0x81 && v145;
  if ((v316 & (v316 - 1)) != 0 || v316 >= 0x21)
  {
    v148 = 0;
  }

  if (!v358)
  {
    if (16 * v113 <= v334)
    {
      v152 = v334 % (16 * v113) == 0;
      v151 = 16 * v111;
      if (16 * v111 <= v331)
      {
        goto LABEL_502;
      }
    }

    else
    {
      v152 = 0;
      v151 = 16 * v111;
      if (16 * v111 <= v331)
      {
LABEL_502:
        if (v148 && v152)
        {
          goto LABEL_503;
        }
      }
    }

LABEL_500:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_504;
  }

  if (16 * v111 <= v334)
  {
    v150 = v334 % (16 * v111) == 0;
    v151 = 16 * v113;
    if (16 * v113 <= v331)
    {
      goto LABEL_497;
    }

    goto LABEL_500;
  }

  v150 = 0;
  v151 = 16 * v113;
  if (16 * v113 > v331)
  {
    goto LABEL_500;
  }

LABEL_497:
  if (!v148 || !v150)
  {
    goto LABEL_500;
  }

LABEL_503:
  if (v331 % v151)
  {
    goto LABEL_500;
  }

LABEL_504:
  if (v284 > 0xD7E)
  {
LABEL_535:
    v137 = -1;
  }

  else
  {
    v137 = v284 + 1;
    if (v358)
    {
      while (1)
      {
        v153 = v137 % 3u;
        v154 = (16 << ((v137 / 0xCu) & 3));
        v155 = 16 << ((v137 / 0x30u) & 3);
        v156 = (4u >> v153) << v153;
        v157 = 16 * (4u >> v153);
        v158 = 16 << v153;
        v159 = v156 != 4 || v157 > v154;
        v160 = !v159 && ((v157 + 255) & v154) == 0;
        v161 = !v160 || v158 > v155;
        if (!v161 && ((v158 + 255) & v155) == 0)
        {
          break;
        }

        if (++v137 == 3456)
        {
          goto LABEL_535;
        }
      }
    }

    else
    {
      while (1)
      {
        v163 = v137 % 3u;
        v164 = 4u >> v163;
        v165 = 16 << ((v137 / 0xCu) & 3);
        v166 = (16 << ((v137 / 0x30u) & 3));
        v167 = v164 << v163;
        v168 = 16 << v163;
        v169 = 16 * v164;
        v170 = v167 != 4 || v168 > v165;
        v171 = !v170 && ((v168 + 255) & v165) == 0;
        v172 = !v171 || v169 > v166;
        if (!v172 && ((v169 + 255) & v166) == 0)
        {
          break;
        }

        if (++v137 == 3456)
        {
          goto LABEL_535;
        }
      }
    }
  }

  if (v137 == v284)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v137 = v284;
  }

LABEL_537:
  *(v109 + 320) = v137;
  if (*(v109 + 328) == 1)
  {
    *(v109 + 328) = 0;
    v174 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", __s2, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363];
    v175 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v334, v331, v316, v113, v111, v298, v274, v273, v112, v289];
    fprintf(*MEMORY[0x277D85DF8], "Direct A18 kernel running auto tune iteration %7ld key with params:    {%s, %s}\n", v284, [v174 UTF8String], objc_msgSend(v175, "UTF8String"));
  }

LABEL_539:
  if (v305)
  {
    v176 = v314;
  }

  else
  {
    v176 = 1;
  }

  v179 = (v309 != 1 || v308 != 1) && v332 == 0;
  v291 = v179;
  v180 = v113;
  if (v176)
  {
    v280 = 0;
  }

  else
  {
    v182 = v306 != 1 || v307 != 1;
    v280 = v182;
  }

  v285 = *(v322 + 208);
  v266 = *(v322 + 192);
  v183 = getenv("MPSNDARRAY_DIRECTCONV_TILEM");
  v184 = getenv("MPSNDARRAY_DIRECTCONV_TILEK");
  v185 = getenv("MPSNDARRAY_DIRECTCONV_TILEN");
  v186 = getenv("MPSNDARRAY_DIRECTCONV_SIMDSX");
  v187 = getenv("MPSNDARRAY_DIRECTCONV_SIMDSY");
  v188 = getenv("MPSNDARRAY_DIRECTCONV_TG_SWIZZLE");
  v189 = getenv("MPSNDARRAY_DIRECTCONV_LM_DATA");
  v190 = getenv("MPSNDARRAY_DIRECTCONV_LICMPTRS");
  getenv("MPSNDARRAY_UNROLL_FACTOR");
  if (v183)
  {
    LODWORD(v334) = atoi(v183);
  }

  if (v184)
  {
    LODWORD(v316) = atoi(v184);
  }

  if (v185)
  {
    LODWORD(v331) = atoi(v185);
  }

  if (v186)
  {
    v180 = atoi(v186);
  }

  if (v187)
  {
    LODWORD(v111) = atoi(v187);
  }

  if (v188)
  {
    LODWORD(v298) = atoi(v188);
  }

  if (v189)
  {
    v291 = atoi(v189) != 0;
  }

  if (v190)
  {
    atoi(v190);
  }

  if (v334 > 0x80 || (v191.i32[0] = v334, v192 = vcnt_s8(v191), v192.i16[0] = vaddlv_u8(v192), v192.i32[0] >= 2u))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (((v331 & (v331 - 1)) != 0 || v331 >= 0x81) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v316 & (v316 - 1)) != 0 || v316 >= 0x21) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v265 = v111 * v180;
  if ((v111 * v180) >= 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v332)
  {
    if (v332 == 1)
    {
      if ((16 * v111 > v334 || v334 % (16 * v111)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((16 * v180 > v331 || v331 % (16 * v180)) && MTLReportFailureTypeEnabled())
      {
        goto LABEL_600;
      }
    }
  }

  else
  {
    if ((16 * v180 > v334 || v334 % (16 * v180)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (16 * v111 > v331 || v331 % (16 * v111)) && (MTLReportFailureTypeEnabled())
    {
LABEL_600:
      MTLReportFailure();
    }
  }

  v193 = [*(v322 + 232) finalOp];
  (*(*v193 + 16))(v193);
  v194 = MEMORY[0x277CD7410];
  if (!v303)
  {
    if (v299)
    {
      goto LABEL_615;
    }

LABEL_613:
    v268 = 0;
    goto LABEL_616;
  }

  v195 = [*(v322 + 16) objectAtIndexedSubscript:v337];
  v196 = v195;
  if (v314 && [v195 numberOfDimensions] != 1)
  {
    v197 = *([*(v322 + 232) inputTensorAtIndex:v337] + 16);
    v366 = 0;
    v367 = 0;
    v365 = 0;
    v199 = *v197;
    v198 = v197[1];
    if (v198 != v199)
    {
      if (((v198 - v199) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v196 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v288, a3, a2, v196, &v365, v305, 0);
    if (v365)
    {
      v366 = v365;
      operator delete(v365);
    }
  }

  v200 = *&v196[*MEMORY[0x277CD73C8]];
  if (v200 == -1879048176)
  {
    if (v299)
    {
      goto LABEL_615;
    }

    goto LABEL_613;
  }

  if (v200 != 268435488)
  {
    if (v299)
    {
      goto LABEL_615;
    }

    goto LABEL_613;
  }

  if (!v299)
  {
    goto LABEL_613;
  }

LABEL_615:
  v268 = (*([*(v322 + 16) objectAtIndexedSubscript:v336] + *v194 + 12) == 1) << 31;
LABEL_616:
  [*(v322 + 232) graph];
  v201 = v306 & 0xF;
  if (v306 > 0xF)
  {
    v201 = 0;
  }

  v202 = 16 * (v307 & 0xF);
  if (v307 > 0xF)
  {
    v202 = 0;
  }

  v203 = (v326 & 3) << 8;
  if (v326 > 3)
  {
    v203 = 0;
  }

  v204 = v309 != v308 || v309 > 7;
  v205 = (v309 & 7) << 10;
  if (v204)
  {
    v205 = 0;
  }

  v206 = (v302 & 3) << 13;
  if (v302 > 7)
  {
    v206 = 0;
  }

  v207 = (v301 & 3) << 15;
  if (v301 > 7)
  {
    v207 = 0;
  }

  v216 = v306 == 1 && v307 == 1 && v286 == 0 && v283 == 0 && v309 == 1 && v308 == 1 && v302 == 1 && v301 == 1 && v282 == v292;
  if (v327)
  {
    v217 = 0;
  }

  else
  {
    v217 = 0x100000;
  }

  if (v216 && v281 == v311)
  {
    v218 = v217;
  }

  else
  {
    v218 = 0;
  }

  v219 = v201 | ((v323 == 0) << 29) | v202 | v205 | v206 | v207 | v203 | (v327 << 17) | ((v332 == 0) << 30) | ((v313 == 1) << 19) | v218;
  if (v332)
  {
    v220 = v295;
  }

  else
  {
    v220 = v292;
  }

  v341[4] = -1;
  v341[3] = -1;
  v341[6] = v271 | v272;
  v344 = v276 | (v327 << 8) | 0x10000u;
  v341[5] = v219 | (v295 << 18) & 0x7C00000 | ((v220 & 3) << 27) | ((v295 < v316) << 18) | v268;
  v342 = 0u;
  v343 = 0u;
  v345 = 0;
  if (v299 | v303)
  {
    v221 = a2;
    v222 = v278;
    v223 = v277;
    if (v299 && v303)
    {
      v224 = v322;
    }

    else
    {
      v224 = v322;
    }
  }

  else
  {
    v221 = a2;
    v222 = v278;
    v223 = v277;
    v224 = v322;
  }

  v263 = v222;
  v264 = v223;
  v262 = *(v224 + 232);
  MPSLibrary::CreateUberShaderKey();
  [v221 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v262, v263, v264, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSGetUIntDivisorMagicNumber();
  v328 = v225;
  MPSGetUIntDivisorMagicNumber();
  v324 = v226;
  MPSGetUIntDivisorMagicNumber();
  v321 = v227;
  MPSGetUIntDivisorMagicNumber();
  v318 = v228;
  v229 = v328;
  HIDWORD(v229) = 0;
  v329 = v229;
  v230 = v324;
  HIDWORD(v230) = 0;
  v325 = v230;
  v391 = 0u;
  v392 = 0u;
  v389 = 0u;
  v390 = 0u;
  v388 = 0u;
  memset(v387, 0, sizeof(v387));
  v385 = 0u;
  v386 = 0u;
  v383 = 0u;
  v384 = 0u;
  v381 = 0u;
  v382 = 0u;
  LODWORD(v365) = v295;
  HIDWORD(v365) = (v295 + 3) & 0xFFFFFFFC;
  LODWORD(v366) = log2(((v295 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  HIDWORD(v366) = (v295 + 15) & 0xFFFFFFF0;
  LODWORD(v367) = v296;
  WORD2(v367) = v306;
  HIWORD(v367) = v307;
  v368 = v326;
  v231 = (v296 + v331 - 1) / v331;
  v369 = v231;
  v371 = __PAIR64__(v281, v282);
  v370 = v313;
  v372 = (v282 + 3) & 0xFFFFFFFC;
  v373 = (v292 + 3) & 0xFFFFFFFC;
  v374 = __PAIR64__(v311, v292);
  v375 = __PAIR64__(v281, v282);
  LODWORD(v232) = v286 - (v302 * (v306 - 1) + 1) / 2;
  DWORD1(v232) = v283 - (v301 * (v307 - 1) + 1) / 2;
  v376 = v232;
  v378 = v308;
  v377 = v309;
  v380 = v301;
  v379 = v302;
  v233 = *MEMORY[0x277CD7400];
  v234 = *&v269[v233];
  v235 = *MEMORY[0x277CD73D0];
  v236 = v234 * *&v269[v235 + 4];
  v238 = v318;
  v237 = v321;
  HIDWORD(v238) = 0;
  v239 = v294 >> 3;
  HIDWORD(v240) = 1;
  LODWORD(v240) = v236 * *&v269[v235 + 8] / v239;
  DWORD1(v240) = v236 / v239;
  HIDWORD(v232) = 1;
  DWORD2(v240) = v234 / v239;
  v382 = v240;
  v241 = *&v285[v233];
  v242 = v241 * *&v285[v235 + 4];
  HIDWORD(v237) = 0;
  v243 = v287 >> 3;
  HIDWORD(v240) = 1;
  LODWORD(v240) = v242 * *&v285[v235 + 8] / v243;
  DWORD1(v240) = v242 / v243;
  DWORD2(v240) = v241 / v243;
  v383 = v240;
  v244 = *&v269[v233];
  v245 = v244 * *&v269[v235 + 4];
  HIDWORD(v240) = 1;
  LODWORD(v240) = v245 * *&v269[v235 + 8] / v239;
  DWORD1(v240) = v245 / v239;
  DWORD2(v240) = v244 / v239;
  v384 = v240;
  v246 = *(&v270->super.super.isa + v233);
  v247 = v270 + v235;
  v248 = v246 * *(v247 + 1);
  v249 = v300 >> 3;
  LODWORD(v232) = v248 * *(v247 + 2) / v249;
  DWORD1(v232) = v248 / v249;
  DWORD2(v232) = v246 / v249;
  v385 = v232;
  v386 = 0uLL;
  *(&v387[2] + 1) = 0;
  *(&v387[1] + 8) = 0u;
  *(v387 + 8) = 0u;
  v388 = v329;
  v389 = v325;
  v390 = v237;
  v391 = v238;
  LODWORD(v387[0]) = 0;
  *&v392 = __PAIR64__(v336, v337);
  MPSSetNDArraysOnComputeEncoder(a2, v322, 4, 0, 0);
  [a2 setBuffer:objc_msgSend(v269 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v269, 0, 4, 0, 0) + v267, 29}];
  if (v314)
  {
    v250 = 0;
  }

  else
  {
    v250 = v275;
  }

  [a2 setBuffer:-[MPSTemporaryNDArray buffer](v270 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v270, 0, 4, 0, 0) + v250, 28}];
  [a2 setBuffer:objc_msgSend(v285 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v285, 0, 4, 0, 0) + v266, 27}];
  v251 = (v294 >> 3) * (v316 * v334);
  if (!v291)
  {
    v251 = 0;
  }

  v252 = (v300 >> 3) * (v331 * v316);
  if (!v280)
  {
    v252 = 0;
  }

  [a2 setThreadgroupMemoryLength:v251 + v252 atIndex:0];
  [a2 setBuffer:0 offset:0 atIndex:25];
  v253 = v373 * v313 * v311;
  if (v332)
  {
    v253 = v313 * v311 * v292;
  }

  v254 = (v334 + v253 - 1) / v334;
  if (v332)
  {
    v255 = v231 * v326;
  }

  else
  {
    v255 = v254;
  }

  if (v332)
  {
    v256 = v254;
  }

  else
  {
    v256 = v231 * v326;
  }

  if (v298 == 2)
  {
    MPSGetUShortDivisorMagicNumber();
    v338 = v258;
    MPSGetUIntDivisorMagicNumber();
    v259 = v338;
    HIWORD(v259) = 0;
    HIDWORD(v260) = 0;
    HIDWORD(v386) = 131074;
    WORD1(v387[0]) = (v256 + 1) >> 1;
    LOWORD(v387[0]) = (v255 + 1) >> 1;
    *(&v387[0] + 1) = v259;
    *(&v261 + 1) = 0x100000001;
    *&v261 = __PAIR64__(v256, v255);
    v387[1] = v260;
    v387[2] = v261;
    v255 = ((v255 + 1) >> 1) * ((v256 + 1) >> 1);
    v257 = 4;
  }

  else if (v298 == 1)
  {
    v257 = v256;
  }

  else
  {
    v257 = v255;
    v255 = v256;
  }

  objc_msgSend_setBytes_length_atIndex_(a2);
  v341[0] = v257;
  v341[1] = v255;
  v341[2] = 1;
  v339 = (32 * v265);
  v340 = vdupq_n_s64(1uLL);
  [a2 dispatchThreadgroups:v341 threadsPerThreadgroup:&v339];
  if (v314)
  {
    MPSDecrementReadCount(v270);
  }

  return 0;
}