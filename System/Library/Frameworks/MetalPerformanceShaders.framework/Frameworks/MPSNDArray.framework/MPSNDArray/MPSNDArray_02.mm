uint64_t EncodeMatrixMultiplyLinking(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 184) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = [*(a4 + 232) graph];
  v8 = **(v7 + 56);
  if (*(*(v7 + 56) + 8) == v8)
  {
    goto LABEL_170;
  }

  v9 = *v8;
  v11 = *(*v8 + 8);
  v10 = *v11;
  if (*(v11 + 8) - *v11 <= 8uLL)
  {
    goto LABEL_169;
  }

  v12 = *(v10[1] + 8);
  if (v12 > 285212703)
  {
    if (v12 <= 536870915)
    {
      if (v12 > 301989895)
      {
        if (v12 == 301989896)
        {
          v13 = 512;
          v14 = *(*v10 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v12 != 335544328)
          {
            goto LABEL_85;
          }

          v13 = 544;
          v14 = *(*v10 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_64;
          }
        }
      }

      else if (v12 == 285212704)
      {
        v13 = 416;
        v14 = *(*v10 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v12 != 285212736)
        {
          goto LABEL_85;
        }

        v13 = 448;
        v14 = *(*v10 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v12 <= 536870927)
    {
      if (v12 == 536870916)
      {
        v13 = 0;
        v14 = *(*v10 + 8);
        if (v14 > 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_64;
      }

      if (v12 != 536870920)
      {
        goto LABEL_85;
      }

      v13 = 32;
      v14 = *(*v10 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      switch(v12)
      {
        case 536870928:
          v13 = 64;
          v14 = *(*v10 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870944:
          v13 = 96;
          v14 = *(*v10 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870976:
          v13 = 128;
          v14 = *(*v10 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        default:
          goto LABEL_85;
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
        v14 = *(*v10 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v12 != 16)
        {
          goto LABEL_85;
        }

        v13 = 224;
        v14 = *(*v10 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v12 == -1879048176)
    {
      v13 = 384;
      v14 = *(*v10 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_85;
      }

      v13 = 160;
      v14 = *(*v10 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else if (v12 <= 268435463)
  {
    if (v12 == 32)
    {
      v13 = 256;
      v14 = *(*v10 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v12 != 64)
      {
        goto LABEL_85;
      }

      v13 = 288;
      v14 = *(*v10 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    switch(v12)
    {
      case 268435464:
        v13 = 480;
        v14 = *(*v10 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435472:
        v13 = 320;
        v14 = *(*v10 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435488:
        v13 = 352;
        v14 = *(*v10 + 8);
        if (v14 > 285212703)
        {
          break;
        }

LABEL_64:
        if (v14 <= 31)
        {
          if (v14 > 7)
          {
            if (v14 == 8)
            {
              v15 = 6144;
              goto LABEL_108;
            }

            if (v14 == 16)
            {
              v15 = 7168;
              goto LABEL_108;
            }
          }

          else
          {
            if (v14 == -1879048176)
            {
              v15 = 12288;
              goto LABEL_108;
            }

            if (v14 == 4)
            {
              v15 = 5120;
              goto LABEL_108;
            }
          }
        }

        else if (v14 <= 268435463)
        {
          if (v14 == 32)
          {
            v15 = 0x2000;
            goto LABEL_108;
          }

          if (v14 == 64)
          {
            v15 = 9216;
            goto LABEL_108;
          }
        }

        else
        {
          switch(v14)
          {
            case 268435464:
              v15 = 15360;
              goto LABEL_108;
            case 268435472:
              v15 = 10240;
              goto LABEL_108;
            case 268435488:
              v15 = 11264;
              goto LABEL_108;
          }
        }

        goto LABEL_107;
      default:
LABEL_85:
        v13 = 576;
        v14 = *(*v10 + 8);
        if (v14 > 285212703)
        {
          break;
        }

        goto LABEL_64;
    }
  }

LABEL_86:
  if (v14 <= 536870915)
  {
    if (v14 > 301989895)
    {
      if (v14 == 301989896)
      {
        v15 = 0x4000;
        goto LABEL_108;
      }

      if (v14 == 335544328)
      {
        v15 = 17408;
        goto LABEL_108;
      }
    }

    else
    {
      if (v14 == 285212704)
      {
        v15 = 13312;
        goto LABEL_108;
      }

      if (v14 == 285212736)
      {
        v15 = 14336;
        goto LABEL_108;
      }
    }
  }

  else if (v14 <= 536870927)
  {
    if (v14 == 536870916)
    {
      v15 = 0;
      goto LABEL_108;
    }

    if (v14 == 536870920)
    {
      v15 = 1024;
      goto LABEL_108;
    }
  }

  else
  {
    switch(v14)
    {
      case 536870928:
        v15 = 2048;
        goto LABEL_108;
      case 536870944:
        v15 = 3072;
        goto LABEL_108;
      case 536870976:
        v15 = 4096;
        goto LABEL_108;
    }
  }

LABEL_107:
  v15 = 18432;
LABEL_108:
  v16 = **(v9 + 24);
  if (*(*(v9 + 24) + 8) == v16)
  {
    goto LABEL_169;
  }

  v17 = *(*v16 + 8);
  if (v17 > 285212703)
  {
    if (v17 <= 536870915)
    {
      if (v17 > 301989895)
      {
        if (v17 == 301989896)
        {
          v18 = 16;
          goto LABEL_153;
        }

        if (v17 == 335544328)
        {
          v18 = 17;
          goto LABEL_153;
        }
      }

      else
      {
        if (v17 == 285212704)
        {
          v18 = 13;
          goto LABEL_153;
        }

        if (v17 == 285212736)
        {
          v18 = 14;
          goto LABEL_153;
        }
      }
    }

    else if (v17 <= 536870927)
    {
      if (v17 == 536870916)
      {
        v18 = 0;
        goto LABEL_153;
      }

      if (v17 == 536870920)
      {
        v18 = 1;
        goto LABEL_153;
      }
    }

    else
    {
      switch(v17)
      {
        case 536870928:
          v18 = 2;
          goto LABEL_153;
        case 536870944:
          v18 = 3;
          goto LABEL_153;
        case 536870976:
          v18 = 4;
          goto LABEL_153;
      }
    }

LABEL_152:
    v18 = 18;
    goto LABEL_153;
  }

  if (v17 <= 31)
  {
    if (v17 > 7)
    {
      if (v17 == 8)
      {
        v18 = 6;
        goto LABEL_153;
      }

      if (v17 == 16)
      {
        v18 = 7;
        goto LABEL_153;
      }
    }

    else
    {
      if (v17 == -1879048176)
      {
        v18 = 12;
        goto LABEL_153;
      }

      if (v17 == 4)
      {
        v18 = 5;
        goto LABEL_153;
      }
    }

    goto LABEL_152;
  }

  if (v17 <= 268435463)
  {
    if (v17 == 32)
    {
      v18 = 8;
      goto LABEL_153;
    }

    if (v17 == 64)
    {
      v18 = 9;
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  if (v17 == 268435464)
  {
    v18 = 15;
    goto LABEL_153;
  }

  if (v17 == 268435472)
  {
    v18 = 10;
    goto LABEL_153;
  }

  if (v17 != 268435488)
  {
    goto LABEL_152;
  }

  v18 = 11;
LABEL_153:
  BaseTensor::GetAccessPattern();
  v47 = v19;
  if (*(*(v9 + 8) + 8) - **(v9 + 8) <= 8uLL)
  {
    goto LABEL_169;
  }

  BaseTensor::GetAccessPattern();
  v21 = 3;
  if (v20 <= HIBYTE(v20))
  {
    v21 = 1;
  }

  if (v47 <= HIBYTE(v47))
  {
    v22 = 2 * (v20 > HIBYTE(v20));
  }

  else
  {
    v22 = v21;
  }

  if ((*(*(a1 + *MEMORY[0x277CD7350]) + 1476) & 0x400) != 0)
  {
    v23 = (&threadGroupSizeInfoListApple + 32 * v22);
  }

  else
  {
    v23 = (&threadGroupSizeInfoListNonApple + 32 * v22);
  }

  v46 = v23[1];
  v48 = *v23;
  v24 = v15 | v13 | v18;
  v26 = v23[2];
  v25 = v23[3];
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v63 = -1;
  v67 = v27;
  v66 = v27;
  v65 = v27;
  v62 = v27;
  v64 = v24;
  *&v67 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v63 = 0;
  v44 = *(a1 + *MEMORY[0x277CD7360]);
  v45 = *(a1 + *MEMORY[0x277CD7368]);
  v43 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v28 = [*(a4 + 232) graph];
  v29 = **(v28 + 56);
  if (*(*(v28 + 56) + 8) == v29)
  {
    goto LABEL_170;
  }

  v31 = *(*v29 + 24);
  v30 = *v31;
  if (*(v31 + 8) == *v31)
  {
    goto LABEL_169;
  }

  v32 = *v30;
  v33 = [*(a4 + 232) graph];
  v34 = **(v33 + 56);
  if (*(*(v33 + 56) + 8) == v34)
  {
LABEL_170:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v36 = *(*v34 + 8);
  v35 = *v36;
  if (*(v36 + 8) == *v36)
  {
LABEL_169:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v26;
  v38 = v25;
  v39 = *v35;
  DimensionSize = BaseTensor::GetDimensionSize(v32);
  v41 = BaseTensor::GetDimensionSize(v32);
  v51 = DimensionSize;
  v52 = v41;
  v53 = BaseTensor::GetDimensionSize(v39);
  v54 = 0;
  v56 = 0;
  v55 = 0;
  v57 = BaseTensor::GetDimensionSize(v32);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  [a2 setComputePipelineState:MPSLibrary::GetPipelineStateForMPSKey()];
  MPSSetNDArraysOnComputeEncoder(a2, a4, 3, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  v50[0] = (v37 * v48 + DimensionSize - 1) / (v37 * v48);
  v50[1] = (v38 * v46 + v41 - 1) / (v38 * v46);
  v50[2] = 1;
  v49[0] = v48;
  v49[1] = v46;
  v49[2] = 1;
  [a2 dispatchThreadgroups:v50 threadsPerThreadgroup:v49];
  return MPSLibrary::ReleaseMPSKey();
}

void *readSrcTempNDArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 16);
  if (a7 == 1)
  {
    result = [MEMORY[0x277CBEB18] arrayWithArray:{v13, a4, a5, a6, 1, a8}];
    v15 = result;
    if ((a11 & 1) == 0)
    {
      result = [result setObject:objc_msgSend(*(a2 + 16) atIndexedSubscript:{"objectAtIndexedSubscript:", a9), a9}];
    }

    *(a2 + 16) = v15;
  }

  else
  {
    if (a11)
    {
      v18 = a9;
    }

    else
    {
      v18 = a10;
    }

    v19 = [v13 objectAtIndexedSubscript:{v18, a9}];
    v20 = [v19 descriptor];
    v21 = v20;
    v22 = MEMORY[0x277CD73D8];
    v23 = *&v19[*MEMORY[0x277CD73D8]];
    v24 = (v23 > BYTE1(v23)) ^ a11;
    v25 = MEMORY[0x277CD7410];
    v26 = *&v19[4 * v24 + *MEMORY[0x277CD7410]];
    v27 = a8 * a6;
    if (v23 <= BYTE1(v23))
    {
      v28 = (v23 > BYTE1(v23)) ^ a11;
    }

    else
    {
      v28 = v24 ^ 1;
    }

    if (v26 - v27 >= a8)
    {
      v29 = a8;
    }

    else
    {
      v29 = v26 - v27;
    }

    [v20 sliceDimension:v28 withSubrange:{v27, v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 setReadCount:{objc_msgSend(v19, "readCount") + 1}];
    }

    v30 = [v19 safeArrayViewWithCommandBuffer:a3 computeEncoder:a4 descriptor:v21 aliasing:1];
    v31 = [v21 getShape];
    if ([v31 count] >= 5)
    {
      v31 = [v31 subarrayWithRange:{objc_msgSend(v31, "count") - 4, 4}];
    }

    v32 = [MEMORY[0x277CD7268] descriptorWithDataType:*(v30 + *MEMORY[0x277CD73C8]) shape:v31];
    v33 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v32];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 setReadCount:{objc_msgSend(v19, "readCount") + 1}];
    }

    v34 = MEMORY[0x277CD73F0];
    if (*(v30 + *MEMORY[0x277CD73F0]) >= 5uLL)
    {
      v35 = 4;
      do
      {
        v36 = v30 + *v25;
        v42 = *(v30 + *v22);
        *(v36 + 4 * (*(&v42 | v35++ & 0xF) & 0xF)) = 1;
      }

      while (v35 < *(v30 + *v34));
    }

    *(v30 + *MEMORY[0x277CD73F8]) = *(*(a2 + 8) + 80 * v18 + 64);
    v43[0] = v30;
    [a5 encodeToMPSCommandEncoder:a4 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v43 kernelDAGObject:{1), 0, v33, 0}];
    v37 = [MEMORY[0x277CBEB18] arrayWithArray:*(a1 + 16)];
    if ((a11 & 1) == 0)
    {
      [v37 setObject:objc_msgSend(*(a2 + 16) atIndexedSubscript:{"objectAtIndexedSubscript:", v38), v38}];
    }

    [v37 setObject:v33 atIndexedSubscript:v18];
    *(a2 + 16) = v37;
    result = [objc_msgSend(v37 objectAtIndexedSubscript:{v18), "offset"}];
    *(*(a2 + 8) + 80 * v18 + 64) = result;
  }

  return result;
}

uint64_t EncodeArrayMultiply(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = a4[12];
  v10 = a4[13];
  v11 = a4[10];
  v31[11] = a4[11];
  v31[12] = v9;
  v12 = a4[14];
  v31[13] = v10;
  v31[14] = v12;
  v13 = a4[8];
  v14 = a4[9];
  v15 = a4[6];
  v31[7] = a4[7];
  v31[8] = v13;
  v31[9] = v14;
  v31[10] = v11;
  v16 = a4[4];
  v31[5] = a4[5];
  v31[6] = v15;
  v17 = a4[1];
  v31[0] = *a4;
  v31[1] = v17;
  v18 = a4[2];
  v31[3] = a4[3];
  v31[4] = v16;
  v31[2] = v18;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v19 = *(a1 + 184);
    if (v19)
    {
      LODWORD(v19) = [v19 normFusionType];
    }

    if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
    {
      v30 = 20;
      strcpy(__p, "MPSNDArrayMatMulTest");
      v20 = "";
      if (v19 == 2)
      {
        v20 = "-fuseRMS";
      }

      if (v19 == 1)
      {
        v21 = "-fuseSoftmax";
      }

      else
      {
        v21 = v20;
      }

      v22 = strlen(v21);
      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v23 = v22;
      if (v22 >= 0x17)
      {
        operator new();
      }

      v28 = v22;
      if (v22)
      {
        memcpy(&__dst, v21, v22);
      }

      *(&__dst + v23) = 0;
      MPSKernelLogPerfTestCommandline(a1, v31, __p, &__dst);
      if (v28 < 0)
      {
        operator delete(__dst);
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(*__p);
    }
  }

LABEL_18:
  v24 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v25 = (*(*v24 + 16))(v24, a1, a2, a3, a4);
  objc_autoreleasePoolPop(v8);
  return v25;
}

void sub_239A1D180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_239A2033C(_Unwind_Exception *a1)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v1 - 248);
  v4 = *(v1 - 200);
  if (v4)
  {
    *(v1 - 192) = v4;
    operator delete(v4);
    v2 = *(v1 - 136);
    if (v2)
    {
LABEL_6:
      *(v1 - 128) = v2;
      operator delete(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v2 = *(v1 - 136);
    if (v2)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

void sub_239A20530()
{
  if (*(v0 - 224))
  {
    JUMPOUT(0x239A2057CLL);
  }

  JUMPOUT(0x239A20484);
}

void sub_239A20540()
{
  if (*(v0 - 200))
  {
    JUMPOUT(0x239A2058CLL);
  }

  JUMPOUT(0x239A2048CLL);
}

void sub_239A20550()
{
  if (*(v0 - 136))
  {
    JUMPOUT(0x239A2059CLL);
  }

  JUMPOUT(0x239A20494);
}

void sub_239A20560(_Unwind_Exception *a1)
{
  v3 = *(v1 - 248);
  if (v3)
  {
    *(v1 - 240) = v3;
    operator delete(v3);
    v4 = *(v1 - 224);
    if (v4)
    {
      *(v1 - 216) = v4;
      operator delete(v4);
      v5 = *(v1 - 200);
      if (v5)
      {
        *(v1 - 192) = v5;
        operator delete(v5);
        v6 = *(v1 - 136);
        if (v6)
        {
          *(v1 - 128) = v6;
          operator delete(v6);
          std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v1 - 176);
          _Unwind_Resume(a1);
        }

        JUMPOUT(0x239A20494);
      }

      JUMPOUT(0x239A2048CLL);
    }

    JUMPOUT(0x239A20484);
  }

  JUMPOUT(0x239A2047CLL);
}

uint64_t EncodeArrayMultiplyGradient(char *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = 1;
  v9 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v10 = *(a4 + 112);
  v94 = a1;
  v11 = *(a1 + 17);
  v12 = MEMORY[0x277CD73D8];
  v13 = *MEMORY[0x277CD73D8];
  v14 = *(v7 + v13);
  v15 = BYTE1(*(v7 + v13));
  v16 = *(v9 + v13);
  v17 = *(a4 + 208);
  v18 = BYTE1(*(v9 + v13));
  v19 = MEMORY[0x277CD7410];
  if (v14 <= v15)
  {
    v20 = *MEMORY[0x277CD7410];
    v21 = *(v7 + v20);
    v22 = *(v7 + v20 + 16);
    v23 = *(v7 + v20 + 48);
    v113 = *(v7 + v20 + 32);
    v114 = v23;
    v112[0] = v21;
    v112[1] = v22;
    v24 = *(v112 + (v15 & 0xF)) == *(v9 + v20 + 4 * (v18 & 0xF));
    v111[2] = v113;
    v111[3] = v23;
    v111[0] = v21;
    v111[1] = v22;
    v24 = v24 && *(v111 + (v14 & 0xF)) == 1;
    v8 = v24;
  }

  v96 = v10;
  v83 = v8;
  v102 = v11;
  v99 = v9;
  if (v16 <= v18)
  {
    v28 = *MEMORY[0x277CD7410];
    v29 = *(v9 + v28);
    v30 = *(v9 + v28 + 16);
    v31 = *(v9 + v28 + 32);
    v32 = *(v9 + v28 + 48);
    v110[2] = v31;
    v110[3] = v32;
    v110[0] = v29;
    v110[1] = v30;
    if (*(v110 + (v16 & 0xF)) == *(v7 + v28 + 4 * (v14 & 0xF)))
    {
      v109[0] = v29;
      v109[1] = v30;
      v109[2] = v31;
      v109[3] = v32;
      v33 = *(v109 + (v18 & 0xF));
      v34 = v33 == 1;
      if (!v11)
      {
        goto LABEL_18;
      }

      if (v33 == 1)
      {
        goto LABEL_10;
      }
    }

    else if (!v11)
    {
      v34 = 0;
      v82 = 0;
      if (v8)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    v100 = 0;
    v82 = 0;
    v25 = (*(a4 + 8) + 64);
    v26 = (a4 + 96);
    v90 = v8 ^ 1;
    v91 = 1;
    v27 = v10;
    v10 = v7;
    goto LABEL_22;
  }

  if (v11)
  {
LABEL_10:
    v100 = 0;
    v25 = (a4 + 96);
    v26 = (*(a4 + 8) + 64);
    v82 = 1;
    v90 = 1;
    v91 = v8 ^ 1;
    v27 = v7;
    goto LABEL_22;
  }

  v34 = 1;
LABEL_18:
  v82 = v34;
  if (v8)
  {
LABEL_19:
    v90 = v34;
    v91 = 0;
    v25 = (*(a4 + 8) + 144);
    v26 = (a4 + 96);
    v100 = 1;
    v27 = v10;
    v10 = v9;
    goto LABEL_22;
  }

LABEL_21:
  v90 = 0;
  v91 = v34;
  v25 = (a4 + 96);
  v26 = (*(a4 + 8) + 144);
  v100 = 1;
  v27 = v9;
LABEL_22:
  v95 = *v25;
  v93 = *v26;
  makeStrideBytes();
  v35 = *(&v121 + (v10[*v12 + 2] & 0xF));
  makeStrideBytes();
  v36 = *(&v121 + (*(v27 + *v12 + 2) & 0xF));
  makeStrideBytes();
  v37 = *v12;
  v38 = *&v17[v37];
  v39 = *(&v121 + (BYTE2(v38) & 0xF));
  v92 = *(a4 + 192);
  v40 = *MEMORY[0x277CD73C8];
  v41 = *(v27 + v40);
  v42 = v27;
  if (v41 > 285212703)
  {
    if (v41 <= 536870915)
    {
      if (v41 > 301989895)
      {
        if (v41 == 301989896)
        {
          v86 = 512;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }

        if (v41 == 335544328)
        {
          v86 = 544;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }
      }

      else
      {
        if (v41 == 285212704)
        {
          v86 = 416;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }

        if (v41 == 285212736)
        {
          v86 = 448;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }
      }
    }

    else if (v41 <= 536870927)
    {
      if (v41 == 536870916)
      {
        v86 = 0;
        v43 = *&v10[v40];
        if (v43 <= 285212703)
        {
          goto LABEL_105;
        }

        goto LABEL_80;
      }

      if (v41 == 536870920)
      {
        v86 = 32;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }
    }

    else
    {
      switch(v41)
      {
        case 536870928:
          v86 = 64;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        case 536870944:
          v86 = 96;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        case 536870976:
          v86 = 128;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
      }
    }
  }

  else if (v41 <= 31)
  {
    if (v41 > 7)
    {
      if (v41 == 8)
      {
        v86 = 192;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }

      if (v41 == 16)
      {
        v86 = 224;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (v41 == -1879048176)
      {
        v86 = 384;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }

      if (v41 == 4)
      {
        v86 = 160;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }
    }
  }

  else if (v41 <= 268435463)
  {
    if (v41 == 32)
    {
      v86 = 256;
      v43 = *&v10[v40];
      if (v43 <= 285212703)
      {
        goto LABEL_105;
      }

      goto LABEL_80;
    }

    if (v41 == 64)
    {
      v86 = 288;
      v43 = *&v10[v40];
      if (v43 > 285212703)
      {
        goto LABEL_80;
      }

      goto LABEL_105;
    }
  }

  else
  {
    switch(v41)
    {
      case 268435464:
        v86 = 480;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      case 268435472:
        v86 = 320;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      case 268435488:
        v86 = 352;
        v43 = *&v10[v40];
        if (v43 <= 285212703)
        {
          goto LABEL_105;
        }

LABEL_80:
        if (v43 <= 536870915)
        {
          if (v43 > 301989895)
          {
            if (v43 != 301989896)
            {
              v44 = v102;
              v45 = v36;
              v46 = v100;
              v47 = v99;
              if (v43 == 335544328)
              {
                v85 = 17408;
                v48 = *&v17[v40];
                if (v48 > 285212703)
                {
                  goto LABEL_124;
                }

                goto LABEL_160;
              }

              goto LABEL_199;
            }

            v49 = 0x4000;
          }

          else
          {
            if (v43 != 285212704)
            {
              v44 = v102;
              v45 = v36;
              v46 = v100;
              v47 = v99;
              if (v43 == 285212736)
              {
                v85 = 14336;
                v48 = *&v17[v40];
                if (v48 > 285212703)
                {
                  goto LABEL_124;
                }

                goto LABEL_160;
              }

              goto LABEL_199;
            }

            v49 = 13312;
          }
        }

        else
        {
          if (v43 <= 536870927)
          {
            if (v43 != 536870916)
            {
              v44 = v102;
              v45 = v36;
              v46 = v100;
              v47 = v99;
              if (v43 == 536870920)
              {
                v85 = 1024;
                v48 = *&v17[v40];
                if (v48 > 285212703)
                {
                  goto LABEL_124;
                }

                goto LABEL_160;
              }

              goto LABEL_199;
            }

            v85 = 0;
LABEL_159:
            v44 = v102;
            v45 = v36;
            v46 = v100;
            v47 = v99;
            v48 = *&v17[v40];
            if (v48 > 285212703)
            {
              goto LABEL_124;
            }

            goto LABEL_160;
          }

          if (v43 == 536870928)
          {
            v49 = 2048;
          }

          else
          {
            if (v43 != 536870944)
            {
              v44 = v102;
              v45 = v36;
              v46 = v100;
              v47 = v99;
              if (v43 == 536870976)
              {
                v85 = 4096;
                v48 = *&v17[v40];
                if (v48 > 285212703)
                {
                  goto LABEL_124;
                }

                goto LABEL_160;
              }

              goto LABEL_199;
            }

            v49 = 3072;
          }
        }

        goto LABEL_158;
    }
  }

  v86 = 576;
  v43 = *&v10[v40];
  if (v43 > 285212703)
  {
    goto LABEL_80;
  }

LABEL_105:
  if (v43 > 31)
  {
    if (v43 > 268435463)
    {
      if (v43 == 268435464)
      {
        v49 = 15360;
      }

      else
      {
        if (v43 != 268435472)
        {
          v44 = v102;
          v45 = v36;
          v46 = v100;
          v47 = v99;
          if (v43 == 268435488)
          {
            v85 = 11264;
            v48 = *&v17[v40];
            if (v48 > 285212703)
            {
              goto LABEL_124;
            }

LABEL_160:
            if (v48 <= 31)
            {
              if (v48 > 7)
              {
                if (v48 == 8)
                {
                  v84 = 6;
                  v101 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                }

                if (v48 == 16)
                {
                  v84 = 7;
                  v101 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                }
              }

              else
              {
                if (v48 == -1879048176)
                {
                  v84 = 12;
                  v101 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                }

                if (v48 == 4)
                {
                  v84 = 5;
                  v101 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                }
              }
            }

            else if (v48 <= 268435463)
            {
              if (v48 == 32)
              {
                v84 = 8;
                v101 = a4;
                v50 = *v19;
                if (v46)
                {
                  goto LABEL_202;
                }

                goto LABEL_189;
              }

              if (v48 == 64)
              {
                v84 = 9;
                v101 = a4;
                v50 = *v19;
                if (v46)
                {
                  goto LABEL_202;
                }

                goto LABEL_189;
              }
            }

            else
            {
              switch(v48)
              {
                case 268435464:
                  v84 = 15;
                  v101 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                case 268435472:
                  v84 = 10;
                  v101 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                case 268435488:
                  v84 = 11;
                  v101 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
              }
            }

            goto LABEL_201;
          }

          goto LABEL_199;
        }

        v49 = 10240;
      }

      goto LABEL_158;
    }

    if (v43 != 32)
    {
      v44 = v102;
      v45 = v36;
      v46 = v100;
      v47 = v99;
      if (v43 == 64)
      {
        v85 = 9216;
        v48 = *&v17[v40];
        if (v48 > 285212703)
        {
          goto LABEL_124;
        }

        goto LABEL_160;
      }

      goto LABEL_199;
    }

    v49 = 0x2000;
LABEL_158:
    v85 = v49;
    goto LABEL_159;
  }

  if (v43 <= 7)
  {
    if (v43 != -1879048176)
    {
      v44 = v102;
      v45 = v36;
      v46 = v100;
      v47 = v99;
      if (v43 == 4)
      {
        v85 = 5120;
        v48 = *&v17[v40];
        if (v48 <= 285212703)
        {
          goto LABEL_160;
        }

        goto LABEL_124;
      }

      goto LABEL_199;
    }

    v49 = 12288;
    goto LABEL_158;
  }

  if (v43 == 8)
  {
    v49 = 6144;
    goto LABEL_158;
  }

  v44 = v102;
  v45 = v36;
  v46 = v100;
  v47 = v99;
  if (v43 == 16)
  {
    v85 = 7168;
    v48 = *&v17[v40];
    if (v48 <= 285212703)
    {
      goto LABEL_160;
    }

    goto LABEL_124;
  }

LABEL_199:
  v85 = 18432;
  v48 = *&v17[v40];
  if (v48 <= 285212703)
  {
    goto LABEL_160;
  }

LABEL_124:
  if (v48 <= 536870915)
  {
    if (v48 > 301989895)
    {
      if (v48 == 301989896)
      {
        v84 = 16;
        v101 = a4;
        v50 = *v19;
        if (v46)
        {
          goto LABEL_202;
        }

        goto LABEL_189;
      }

      if (v48 == 335544328)
      {
        v84 = 17;
        v101 = a4;
        v50 = *v19;
        if (v46)
        {
          goto LABEL_202;
        }

        goto LABEL_189;
      }
    }

    else
    {
      if (v48 == 285212704)
      {
        v84 = 13;
        v101 = a4;
        v50 = *v19;
        if (v46)
        {
          goto LABEL_202;
        }

        goto LABEL_189;
      }

      if (v48 == 285212736)
      {
        v84 = 14;
        v101 = a4;
        v50 = *v19;
        if (v46)
        {
          goto LABEL_202;
        }

        goto LABEL_189;
      }
    }

    goto LABEL_201;
  }

  if (v48 <= 536870927)
  {
    if (v48 == 536870916)
    {
      v84 = 0;
      v101 = a4;
      v50 = *v19;
      if (!v46)
      {
        goto LABEL_189;
      }

LABEL_202:
      v88 = *(v7 + v50 + 8) == 1;
      if (*(v7 + v50 + 8) == 1)
      {
        LODWORD(v39) = 0;
      }

      v87 = v39;
      if (*(v47 + v50 + 8) == 1)
      {
        if (v83)
        {
          LODWORD(v35) = 0;
        }

        else
        {
          v45 = 0;
        }
      }

      goto LABEL_208;
    }

    if (v48 == 536870920)
    {
      v84 = 1;
      v101 = a4;
      v50 = *v19;
      if (v46)
      {
        goto LABEL_202;
      }

      goto LABEL_189;
    }

LABEL_201:
    v84 = 18;
    v101 = a4;
    v50 = *v19;
    if (!v46)
    {
      goto LABEL_189;
    }

    goto LABEL_202;
  }

  if (v48 == 536870928)
  {
    v84 = 2;
    v101 = a4;
    v50 = *v19;
    if (v46)
    {
      goto LABEL_202;
    }

    goto LABEL_189;
  }

  if (v48 == 536870944)
  {
    v84 = 3;
    v101 = a4;
    v50 = *v19;
    if (v46)
    {
      goto LABEL_202;
    }

    goto LABEL_189;
  }

  if (v48 != 536870976)
  {
    goto LABEL_201;
  }

  v84 = 4;
  v101 = a4;
  v50 = *v19;
  if (v46)
  {
    goto LABEL_202;
  }

LABEL_189:
  v88 = *(v47 + v50 + 8) == 1;
  if (*(v47 + v50 + 8) == 1)
  {
    LODWORD(v39) = 0;
  }

  v87 = v39;
  if (*(v7 + v50 + 8) == 1)
  {
    if (v82)
    {
      v45 = 0;
    }

    else
    {
      LODWORD(v35) = 0;
    }
  }

LABEL_208:
  v51 = v35;
  v52 = v45;
  v53 = BYTE1(v38);
  v54 = v38;
  v55 = *&v17[v50];
  v56 = *&v17[v50 + 16];
  v57 = *&v17[v50 + 48];
  v107 = *&v17[v50 + 32];
  v108 = v57;
  v106[0] = v55;
  v106[1] = v56;
  v58 = *(v106 + (v54 & 0xF));
  v105[2] = v107;
  v105[3] = v57;
  v105[0] = v55;
  v105[1] = v56;
  v59 = *(v105 + (v53 & 0xF));
  v104 = *&v10[v37];
  v60 = v10;
  v61 = *&v10[4 * (*(&v104 | v44 & 0xF) & 0xF) + v50];
  v62 = *MEMORY[0x277CD7400];
  v63 = v17;
  v89 = v17;
  v64 = *&v42[v62];
  v65 = *&v60[v62];
  v66 = *&v63[v62];
  v103 = v42;
  [v94 alpha];
  v68 = v67;
  [v94 beta];
  *&v69 = v69;
  v121 = __PAIR64__(v59, v58);
  v122 = v61;
  v123 = v64;
  v124 = v65;
  v125 = 0;
  v126 = v66;
  v127 = v68;
  v128 = LODWORD(v69);
  v129 = *&v96[4 * (v96[*MEMORY[0x277CD73D8] + 2] & 0xF) + *MEMORY[0x277CD7410]];
  v130 = v52;
  v131 = v51;
  v132 = 0;
  v133 = v87;
  v70 = 2;
  if (v90)
  {
    v70 = 3;
  }

  if (v91)
  {
    v71 = v90;
  }

  else
  {
    v71 = v70;
  }

  v72 = 0x2000000;
  if (!a5)
  {
    v72 = 0;
  }

  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v116[4] = -1;
  v116[3] = -1;
  v116[5] = v88;
  v116[6] = v86 | v85 | v84 | v72;
  v117 = 0u;
  v118 = 0u;
  v119 = [*(v101 + 16) count] | ((*(v101 + 112) == 0) << 8) | 0x10000;
  v120 = 0;
  v80 = *&v94[*MEMORY[0x277CD7360]];
  v81 = *&v94[*MEMORY[0x277CD7368]];
  v79 = *(v101 + 232);
  MPSLibrary::CreateUberShaderKey();
  if ((*(*&v94[*MEMORY[0x277CD7350]] + 1476) & 0x400) != 0)
  {
    v73 = (&threadGroupSizeInfoListApple + 32 * v71);
  }

  else
  {
    v73 = (&threadGroupSizeInfoListNonApple + 32 * v71);
  }

  v74 = *v73;
  v75 = v73[1];
  v76 = v73[2];
  v77 = (v59 + v73[3] * v75 - 1) / (v73[3] * v75);
  [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v79, v80, v81, 0, 0}];
  [a2 setBuffer:objc_msgSend(v103 offset:"buffer") atIndex:{v93, 0}];
  [a2 setBuffer:objc_msgSend(v60 offset:"buffer") atIndex:{v95, 1}];
  [a2 setBuffer:objc_msgSend(v89 offset:"buffer") atIndex:{v92, 3}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v116[0] = (v58 + v76 * v74 - 1) / (v76 * v74);
  v116[1] = v77;
  v116[2] = 1;
  v115[0] = v74;
  v115[1] = v75;
  v115[2] = 1;
  [a2 dispatchThreadgroups:v116 threadsPerThreadgroup:v115];
  MPSLibrary::ReleaseMPSKey();
  return 0;
}

void MPSNDArrayMatMulDeviceBehavior::~MPSNDArrayMatMulDeviceBehavior(void **this)
{
  *this = &unk_284CB2AC0;
  free(this[1]);
}

{
  *this = &unk_284CB2AC0;
  free(this[1]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayMatMulCommonDeviceBehavior::~MPSNDArrayMatMulCommonDeviceBehavior(void **this)
{
  *this = &unk_284CB2AC0;
  free(this[1]);
}

{
  *this = &unk_284CB2AC0;
  free(this[1]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayMatMulA14DeviceBehavior::~MPSNDArrayMatMulA14DeviceBehavior(void **this)
{
  *this = &unk_284CB2AC0;
  free(this[1]);
}

{
  *this = &unk_284CB2AC0;
  free(this[1]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayMatMulA18DeviceBehavior::~MPSNDArrayMatMulA18DeviceBehavior(void **this)
{
  *this = &unk_284CB2AC0;
  free(this[1]);
}

{
  *this = &unk_284CB2AC0;
  free(this[1]);

  JUMPOUT(0x23EE7C8C0);
}

void *MPSNDArrayMatMulDeviceBehavior::MPSNDArrayMatMulDeviceBehavior(void *a1)
{
  *a1 = &unk_284CB2AC0;
  a1[1] = 0;
  v2 = getenv("MPS_AUTO_TUNING_PARAMETERS");
  if (!v2)
  {
    return a1;
  }

  v3 = v2;
  v4 = *v2;
  if (v4 <= 0x34)
  {
    if (v4 == 49)
    {
      v10 = malloc_type_malloc(0x20uLL, 0x1000040C2192D5FuLL);
      a1[1] = v10;
      *v10 = v3[1] - 48;
      v10[1] = v3[2] - 48;
      v10[2] = v3[3] - 48;
      v10[3] = v3[4] - 48;
      v10[4] = v3[5] - 48;
      v10[5] = v3[6] - 48;
      v10[6] = v3[7] - 48;
      *(v10 + 28) = v3[8] != 48;
      *(v10 + 29) = v3[9] != 48;
      *(v10 + 30) = v3[10] != 48;
      return a1;
    }

    else
    {
      if (v4 != 52)
      {
        return a1;
      }

      v7 = malloc_type_malloc(0x44uLL, 0x100004069DB8102uLL);
      a1[1] = v7;
      *v7 = v3[1] - 48;
      v7[1] = v3[2] - 48;
      v7[2] = v3[3] - 48;
      v7[3] = v3[4] - 48;
      v7[4] = v3[5] - 48;
      v7[5] = v3[6] - 48;
      v7[6] = v3[7] - 48;
      v7[7] = v3[8] - 48;
      v7[8] = v3[9] - 48;
      v7[9] = v3[10] - 48;
      v7[10] = v3[11] - 48;
      v7[11] = v3[12] - 48;
      v7[12] = v3[13] - 48;
      v7[13] = v3[14] - 48;
      v7[14] = v3[15] - 48;
      v7[15] = v3[16] - 48;
      v7[16] = v3[18] + 10 * v3[17] - 528;
      return a1;
    }
  }

  else if (v4 == 55)
  {
    v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    a1[1] = v8;
    *v8 = v3[2] + 10 * v3[1] - 528;
    v8[1] = v3[4] + 10 * v3[3] - 528;
    v8[2] = v3[6] + 10 * v3[5] - 528;
    v8[3] = v3[8] + 10 * v3[7] - 528;
    v8[4] = v3[10] + 10 * v3[9] - 528;
    v8[5] = v3[12] + 10 * v3[11] - 528;
    v8[6] = v3[13] - 48;
    v8[7] = v3[14] - 48;
    return a1;
  }

  else
  {
    if (v4 != 54)
    {
      if (v4 == 53)
      {
        v5 = malloc_type_malloc(0x3CuLL, 0x1000040C2DCA394uLL);
        a1[1] = v5;
        *v5 = v3[1] - 48;
        v5[1] = v3[2] - 48;
        v5[2] = v3[3] - 48;
        v5[3] = v3[4] - 48;
        v5[4] = v3[5] - 48;
        v5[5] = v3[7] + 10 * v3[6] - 528;
        v5[6] = v3[8] - 48;
        v5[7] = v3[9] - 48;
        v5[8] = v3[10] - 48;
        v5[9] = v3[11] - 48;
        v5[10] = v3[13] + 10 * v3[12] - 528;
        v5[11] = v3[14] - 48;
        v5[12] = v3[15] - 48;
        v5[13] = v3[16] - 48;
        v5[14] = v3[17] - 48;
      }

      return a1;
    }

    v9 = malloc_type_malloc(0x2CuLL, 0x1000040D4159EFEuLL);
    a1[1] = v9;
    *v9 = v3[1] - 48;
    v9[1] = v3[2] - 48;
    v9[2] = v3[3] - 48;
    v9[3] = v3[4] - 48;
    v9[4] = v3[5] - 48;
    v9[5] = v3[6] - 48;
    v9[6] = v3[7] - 48;
    v9[7] = v3[8] - 48;
    v9[8] = v3[10] + 10 * v3[9] - 528;
    v9[9] = v3[12] + 10 * v3[11] - 528;
    v9[10] = v3[13] - 48;
    return a1;
  }
}

uint64_t EncodeMatrixVectorMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v299 = v8;
  v10 = v9;
  v297 = v11;
  v13 = v12;
  v382 = *MEMORY[0x277D85DE8];
  v253 = *(v7 + *MEMORY[0x277CD7350]);
  v282 = v7;
  v14 = *(v7 + 192);
  v298 = v15;
  v16 = [*(v15 + 232) graph];
  v17 = *(v16 + 64);
  v18 = *v17;
  v19 = v17[1];
  if (*v17 == v19)
  {
    v22 = 0;
  }

  else
  {
    v20 = v16;
    v21 = 0;
    v22 = -1;
    v23 = -1;
    do
    {
      v24 = *v18;
      if (v24 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v20) + 32))
      {
        v22 = v21;
      }

      v25 = *v18;
      if (v25 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v20) + 32))
      {
        v23 = v21;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v20) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v20);
      }

      ++v21;
      ++v18;
    }

    while (v18 != v19);
    if (v22 == -1)
    {
      v22 = 0;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v23 != -1)
    {
      goto LABEL_17;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_15:
    MTLReportFailure();
  }

LABEL_16:
  v23 = 0;
LABEL_17:
  v26 = [*(v298 + 232) graph];
  v27 = **(v26 + 56);
  if (*(*(v26 + 56) + 8) == v27)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v229 = v14;
  v250 = v13;
  if (*(*(*v27 + 24) + 8) == **(*v27 + 24))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  makeStrideBytes();
  v28 = MEMORY[0x277CD73D8];
  v29 = *&v297[*MEMORY[0x277CD73D8]];
  v352[7] = v360[1];
  v352[6] = v360[0];
  v352[5] = v359;
  v352[4] = v358;
  v352[3] = v357;
  v352[2] = v356;
  v352[1] = v355;
  v352[0] = v354;
  v30 = *(v352 + (v29 & 0xF));
  v351[7] = v360[1];
  v351[6] = v360[0];
  v351[5] = v359;
  v351[4] = v358;
  v351[3] = v357;
  v351[2] = v356;
  v351[1] = v355;
  v351[0] = v354;
  v31 = *(v351 + (BYTE1(v29) & 0xF));
  v284 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v31;
  v381[0] = v32;
  v350[7] = v360[1];
  v350[6] = v360[0];
  v350[5] = v359;
  v350[4] = v358;
  v350[3] = v357;
  v350[2] = v356;
  v350[1] = v355;
  v350[0] = v354;
  *&v294 = *(v350 + (BYTE2(v29) & 0xF));
  v349[7] = v360[1];
  v349[6] = v360[0];
  v349[5] = v359;
  v349[4] = v358;
  v349[3] = v357;
  v349[2] = v356;
  v349[1] = v355;
  v349[0] = v354;
  *(&v294 + 1) = *(v349 + (BYTE3(v29) & 0xF));
  v381[1] = v294;
  makeStrideBytes();
  v33 = *&v10[*v28];
  v348[7] = v360[1];
  v348[6] = v360[0];
  v348[5] = v359;
  v348[4] = v358;
  v348[3] = v357;
  v348[2] = v356;
  v348[1] = v355;
  v348[0] = v354;
  v34 = *(v348 + (v33 & 0xF));
  v347[7] = v360[1];
  v347[6] = v360[0];
  v347[5] = v359;
  v347[4] = v358;
  v347[3] = v357;
  v347[2] = v356;
  v347[1] = v355;
  v347[0] = v354;
  v35 = *(v347 + (BYTE1(v33) & 0xF));
  v268 = v34;
  *&v36 = v34;
  *(&v36 + 1) = v35;
  v380[0] = v36;
  v346[7] = v360[1];
  v346[6] = v360[0];
  v346[5] = v359;
  v346[4] = v358;
  v346[3] = v357;
  v346[2] = v356;
  v346[1] = v355;
  v346[0] = v354;
  v288 = *(v346 + (BYTE2(v33) & 0xF));
  *&v36 = v288;
  v345[7] = v360[1];
  v345[6] = v360[0];
  v345[5] = v359;
  v345[4] = v358;
  v345[3] = v357;
  v345[2] = v356;
  v345[1] = v355;
  v345[0] = v354;
  v286 = *(v345 + (BYTE3(v33) & 0xF));
  *(&v36 + 1) = v286;
  v380[1] = v36;
  makeStrideBytes();
  v37 = *v28;
  v38 = *&v299[v37];
  v344[7] = v360[1];
  v344[6] = v360[0];
  v344[5] = v359;
  v344[4] = v358;
  v344[3] = v357;
  v344[2] = v356;
  v344[1] = v355;
  v344[0] = v354;
  v39 = BYTE1(v38) & 0xF;
  v281 = *(v344 + v39);
  v343[7] = v360[1];
  v343[6] = v360[0];
  v343[5] = v359;
  v343[4] = v358;
  v343[3] = v357;
  v343[2] = v356;
  v343[1] = v355;
  v343[0] = v354;
  v40 = BYTE2(v38) & 0xF;
  v278 = *(v343 + v40);
  v342[7] = v360[1];
  v342[6] = v360[0];
  v342[5] = v359;
  v342[4] = v358;
  v342[3] = v357;
  v342[2] = v356;
  v342[1] = v355;
  v342[0] = v354;
  v41 = BYTE3(v38) & 0xF;
  v280 = *(v342 + v41);
  v42 = *MEMORY[0x277CD7418];
  v43 = *&v297[v42];
  v44 = *&v297[v42 + 16];
  v45 = *&v297[v42 + 32];
  v46 = *&v297[v37];
  v341 = *&v297[v42 + 48];
  v340[2] = v45;
  v340[1] = v44;
  v340[0] = v43;
  v276 = v46;
  v47 = *(v340 + (v46 & 0xF));
  v339[3] = v341;
  v339[2] = v45;
  v339[1] = v44;
  v339[0] = v43;
  v274 = BYTE1(v46);
  v48 = *(v339 + (BYTE1(v46) & 0xF));
  v338[3] = v341;
  v338[2] = v45;
  v338[1] = v44;
  v338[0] = v43;
  v49 = BYTE2(v46) & 0xF;
  v50 = *(v338 + v49);
  v337[3] = v341;
  v337[2] = v45;
  v337[1] = v44;
  v337[0] = v43;
  v51 = BYTE3(v46) & 0xF;
  v52 = *(v337 + v51);
  v53 = *(v298 + 8);
  v54 = *(v53 + 80 * v22 + 64);
  v55 = *&v10[v42];
  v56 = *&v10[v42 + 16];
  v57 = *&v10[v42 + 32];
  v58 = *&v10[v37];
  v336 = *&v10[v42 + 48];
  v335[2] = v57;
  v335[1] = v56;
  v335[0] = v55;
  v272 = v58;
  v59 = *(v335 + (v58 & 0xF));
  v334[3] = v336;
  v334[2] = v57;
  v334[1] = v56;
  v334[0] = v55;
  v270 = BYTE1(v58);
  v60 = *(v334 + (BYTE1(v58) & 0xF));
  v333[3] = v336;
  v333[2] = v57;
  v333[1] = v56;
  v333[0] = v55;
  v61 = BYTE2(v58) & 0xF;
  v62 = *(v333 + v61);
  v332[3] = v336;
  v332[2] = v57;
  v332[1] = v56;
  v332[0] = v55;
  v63 = BYTE3(v58) & 0xF;
  v64 = *(v332 + v63);
  v65 = *(v53 + 80 * v23 + 64);
  v322[7] = v360[1];
  v322[6] = v360[0];
  v322[5] = v359;
  v322[4] = v358;
  v322[3] = v357;
  v322[2] = v356;
  v322[1] = v355;
  v322[0] = v354;
  v66 = v38 & 0xF;
  v242 = *(v322 + v66);
  v67 = &v299[v42];
  v68 = *v67;
  v69 = *(v67 + 1);
  v70 = *(v67 + 2);
  v324 = *(v67 + 3);
  v323[2] = v70;
  v323[1] = v69;
  v323[0] = v68;
  v240 = *(v323 + v66);
  v331[3] = v324;
  v331[2] = v70;
  v331[1] = v69;
  v331[0] = v68;
  v238 = *(v331 + v39);
  v330[3] = v324;
  v330[2] = v70;
  v330[1] = v69;
  v330[0] = v68;
  v244 = *(v330 + v40);
  v329[3] = v324;
  v329[2] = v70;
  v329[1] = v69;
  v329[0] = v68;
  v246 = *(v329 + v41);
  v71 = MEMORY[0x277CD7410];
  v72 = *MEMORY[0x277CD7410];
  v73 = *&v297[v72];
  v74 = *&v297[v72 + 16];
  v75 = *&v297[v72 + 32];
  v76 = *&v297[v72 + 48];
  v237 = *(v298 + 192);
  v77 = &v10[v72];
  v78 = *v77;
  v79 = v77[1];
  v80 = v77[2];
  v81 = v77[3];
  v328[3] = v76;
  v328[2] = v75;
  v328[1] = v74;
  v328[0] = v73;
  v82 = *(v328 + v49);
  v327[3] = v76;
  v327[2] = v75;
  v327[1] = v74;
  v327[0] = v73;
  v83 = *(v327 + v51);
  v326[3] = v81;
  v326[2] = v80;
  v326[1] = v79;
  v326[0] = v78;
  v84 = *(v326 + v61);
  v325[3] = v81;
  v325[2] = v80;
  v325[1] = v79;
  v325[0] = v78;
  v85 = *(v325 + v63);
  if (v84 != 1 && v82 != 1 && v82 != v84)
  {
    v292 = v52;
    v259 = v50;
    v261 = v64;
    v263 = v47;
    v266 = v62;
    v222 = MTLReportFailureTypeEnabled();
    v47 = v263;
    v62 = v266;
    v50 = v259;
    v64 = v261;
    v52 = v292;
    v71 = MEMORY[0x277CD7410];
    if (v222)
    {
      MTLReportFailure();
      v47 = v263;
      v62 = v266;
      v50 = v259;
      v64 = v261;
      v52 = v292;
      v71 = MEMORY[0x277CD7410];
    }
  }

  if (v85 != 1 && v83 != 1 && v83 != v85)
  {
    v293 = v52;
    v223 = v64;
    v224 = v50;
    v264 = v47;
    v267 = v62;
    v225 = MTLReportFailureTypeEnabled();
    v47 = v264;
    v62 = v267;
    v50 = v224;
    v64 = v223;
    v52 = v293;
    v71 = MEMORY[0x277CD7410];
    if (v225)
    {
      MTLReportFailure();
      v47 = v264;
      v62 = v267;
      v50 = v224;
      v64 = v223;
      v52 = v293;
      v71 = MEMORY[0x277CD7410];
    }
  }

  v86 = v54 + v31 * v48;
  v87 = *v71;
  v88 = *&v297[v87];
  v89 = *&v297[v87 + 16];
  v90 = *&v297[v87 + 32];
  v91 = *&v297[v87 + 48];
  v92 = *MEMORY[0x277CD73D8];
  v93 = v297[v92 + 1] & 0xF;
  v320[3] = v91;
  v320[2] = v90;
  v320[1] = v89;
  v320[0] = v88;
  v94 = *(v320 + v93);
  v95 = *&v10[v92];
  v96 = *&v10[4 * (v95 & 0xF) + v87];
  if (v94 >= v96)
  {
    v97 = v96;
  }

  else
  {
    v97 = v94;
  }

  v98 = *&v297[v92];
  v99 = *&v299[v87];
  v100 = *&v299[v87 + 16];
  v101 = *&v299[v92];
  v102 = *&v299[v87 + 32];
  v103 = *&v299[v87 + 48];
  v321[3] = v103;
  v321[2] = v102;
  v321[1] = v100;
  v321[0] = v99;
  v290 = *(v321 + (v101 & 0xF));
  if (v97 == v290)
  {
    v104 = v98 > BYTE1(v98);
  }

  else
  {
    v104 = v95 <= BYTE1(v95);
  }

  v105 = v86 + v284 * v47;
  v106 = *MEMORY[0x277CD73C8];
  v107 = *&v10[v106];
  if (v107 > 285212703)
  {
    if (v107 > 536870915)
    {
      if (v107 <= 536870927)
      {
        if (v107 == 536870916)
        {
          v109 = 0;
          goto LABEL_76;
        }

        v108 = v288;
        if (v107 == 536870920)
        {
          v109 = 32;
          goto LABEL_78;
        }
      }

      else
      {
        if (v107 == 536870928)
        {
          v109 = 64;
          goto LABEL_76;
        }

        if (v107 == 536870944)
        {
          v109 = 96;
          goto LABEL_76;
        }

        v108 = v288;
        if (v107 == 536870976)
        {
          v109 = 128;
          goto LABEL_78;
        }
      }

LABEL_77:
      v109 = 576;
      goto LABEL_78;
    }

    if (v107 > 301989895)
    {
      if (v107 != 301989896)
      {
        v108 = v288;
        if (v107 == 335544328)
        {
          v109 = 544;
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      v109 = 512;
    }

    else
    {
      if (v107 != 285212704)
      {
        v108 = v288;
        if (v107 == 285212736)
        {
          v109 = 448;
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      v109 = 416;
    }

LABEL_76:
    v110 = v294;
    v108 = v288;
    goto LABEL_79;
  }

  if (v107 <= 31)
  {
    if (v107 > 7)
    {
      v108 = v288;
      if (v107 == 8)
      {
        v109 = 192;
        goto LABEL_78;
      }

      if (v107 == 16)
      {
        v109 = 224;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (v107 != -1879048176)
    {
      v108 = v288;
      if (v107 == 4)
      {
        v109 = 160;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    v109 = 384;
    goto LABEL_76;
  }

  if (v107 <= 268435463)
  {
    v108 = v288;
    if (v107 == 32)
    {
      v109 = 256;
      goto LABEL_78;
    }

    if (v107 == 64)
    {
      v109 = 288;
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (v107 == 268435464)
  {
    v109 = 480;
    goto LABEL_76;
  }

  if (v107 == 268435472)
  {
    v109 = 320;
    goto LABEL_76;
  }

  v108 = v288;
  if (v107 != 268435488)
  {
    goto LABEL_77;
  }

  v109 = 352;
LABEL_78:
  v110 = v294;
LABEL_79:
  v111 = v105 + v110 * v50;
  v112 = v65 + v35 * v60 + v268 * v59 + v108 * v62;
  v113 = *&v297[v106];
  if (v113 > 285212703)
  {
    if (v113 <= 536870915)
    {
      if (v113 > 301989895)
      {
        if (v113 == 301989896)
        {
          v114 = 0x4000;
          goto LABEL_123;
        }

        if (v113 == 335544328)
        {
          v114 = 17408;
          goto LABEL_123;
        }
      }

      else
      {
        if (v113 == 285212704)
        {
          v114 = 13312;
          goto LABEL_123;
        }

        if (v113 == 285212736)
        {
          v114 = 14336;
          goto LABEL_123;
        }
      }
    }

    else if (v113 <= 536870927)
    {
      if (v113 == 536870916)
      {
        v114 = 0;
        goto LABEL_123;
      }

      if (v113 == 536870920)
      {
        v114 = 1024;
        goto LABEL_123;
      }
    }

    else
    {
      switch(v113)
      {
        case 536870928:
          v114 = 2048;
          goto LABEL_123;
        case 536870944:
          v114 = 3072;
          goto LABEL_123;
        case 536870976:
          v114 = 4096;
          goto LABEL_123;
      }
    }
  }

  else if (v113 <= 31)
  {
    if (v113 > 7)
    {
      if (v113 == 8)
      {
        v114 = 6144;
        goto LABEL_123;
      }

      if (v113 == 16)
      {
        v114 = 7168;
        goto LABEL_123;
      }
    }

    else
    {
      if (v113 == -1879048176)
      {
        v114 = 12288;
        goto LABEL_123;
      }

      if (v113 == 4)
      {
        v114 = 5120;
        goto LABEL_123;
      }
    }
  }

  else if (v113 <= 268435463)
  {
    if (v113 == 32)
    {
      v114 = 0x2000;
      goto LABEL_123;
    }

    if (v113 == 64)
    {
      v114 = 9216;
      goto LABEL_123;
    }
  }

  else
  {
    switch(v113)
    {
      case 268435464:
        v114 = 15360;
        goto LABEL_123;
      case 268435472:
        v114 = 10240;
        goto LABEL_123;
      case 268435488:
        v114 = 11264;
        goto LABEL_123;
    }
  }

  v114 = 18432;
LABEL_123:
  v115 = v111 + *(&v294 + 1) * v52;
  v116 = v112 + v286 * v64;
  v117 = *&v299[v106];
  v236 = v109;
  v233 = v114;
  if (v117 > 285212703)
  {
    if (v117 <= 536870915)
    {
      if (v117 > 301989895)
      {
        if (v117 == 301989896)
        {
          v118 = 16;
          goto LABEL_167;
        }

        if (v117 == 335544328)
        {
          v118 = 17;
          goto LABEL_167;
        }
      }

      else
      {
        if (v117 == 285212704)
        {
          v118 = 13;
          goto LABEL_167;
        }

        if (v117 == 285212736)
        {
          v118 = 14;
          goto LABEL_167;
        }
      }
    }

    else if (v117 <= 536870927)
    {
      if (v117 == 536870916)
      {
        v248 = 0;
        goto LABEL_168;
      }

      if (v117 == 536870920)
      {
        v118 = 1;
        goto LABEL_167;
      }
    }

    else
    {
      switch(v117)
      {
        case 536870928:
          v118 = 2;
          goto LABEL_167;
        case 536870944:
          v118 = 3;
          goto LABEL_167;
        case 536870976:
          v118 = 4;
          goto LABEL_167;
      }
    }

LABEL_166:
    v118 = 18;
    goto LABEL_167;
  }

  if (v117 <= 31)
  {
    if (v117 > 7)
    {
      if (v117 == 8)
      {
        v118 = 6;
        goto LABEL_167;
      }

      if (v117 == 16)
      {
        v118 = 7;
        goto LABEL_167;
      }
    }

    else
    {
      if (v117 == -1879048176)
      {
        v118 = 12;
        goto LABEL_167;
      }

      if (v117 == 4)
      {
        v118 = 5;
        goto LABEL_167;
      }
    }

    goto LABEL_166;
  }

  if (v117 <= 268435463)
  {
    if (v117 == 32)
    {
      v118 = 8;
      goto LABEL_167;
    }

    if (v117 == 64)
    {
      v118 = 9;
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  if (v117 == 268435464)
  {
    v118 = 15;
    goto LABEL_167;
  }

  if (v117 == 268435472)
  {
    v118 = 10;
    goto LABEL_167;
  }

  if (v117 != 268435488)
  {
    goto LABEL_166;
  }

  v118 = 11;
LABEL_167:
  v248 = v118;
LABEL_168:
  v319[0] = v99;
  v319[1] = v100;
  v319[2] = v102;
  v319[3] = v103;
  v119 = *(v319 + (BYTE1(v101) & 0xF));
  v318[0] = v88;
  v318[1] = v89;
  v318[2] = v90;
  v318[3] = v91;
  v120 = *(v318 + (v98 & 0xF));
  if (v97 == v290)
  {
    v121 = v119;
  }

  else
  {
    v121 = v290;
  }

  v122 = v297;
  if (v97 == v290)
  {
    v123 = v297;
  }

  else
  {
    v123 = v10;
  }

  v265 = v123;
  if (v97 == v290)
  {
    v122 = v10;
    v124 = v115;
  }

  else
  {
    v124 = v116;
  }

  if (v97 == v290)
  {
    v115 = v116;
  }

  v234 = v115;
  v235 = v124;
  v125 = v380;
  if (v97 == v290)
  {
    v126 = v381;
  }

  else
  {
    v126 = v380;
  }

  if (v97 != v290)
  {
    v125 = v381;
  }

  v127 = v126[1];
  v378 = *v126;
  v379 = v127;
  v128 = v125[1];
  v376 = *v125;
  v377 = v128;
  v262 = v122;
  v129 = v253;
  if (v290 != v97 && v104)
  {
    LOBYTE(v289) = 0;
    v130 = 1;
    v131 = 16;
    v295 = 16;
    v296 = 16;
    v132 = v282;
    if (v120 < 0x800)
    {
LABEL_186:
      v133 = 1;
      goto LABEL_210;
    }
  }

  else
  {
    LOBYTE(v92) = v120 < 0x101 && v97 == 1;
    v289 = (*(v253 + 1476) >> 6) & 1;
    if ((v92 & v289) != 0)
    {
      v131 = 4;
    }

    else
    {
      v131 = 1;
    }

    v295 = 1;
    v296 = *(v253 + 1482);
    v130 = v131;
    v132 = v282;
    if (v120 < 0x800)
    {
      goto LABEL_186;
    }
  }

  if (v97 >= 4)
  {
    if (v97 >= 6)
    {
      if (v97 == 6)
      {
        v133 = 2;
      }

      else
      {
        v133 = 1;
      }

      if ((v120 & 0x1F) != 0)
      {
        goto LABEL_210;
      }
    }

    else
    {
      v133 = 4;
      if ((v120 & 0x1F) != 0)
      {
        goto LABEL_210;
      }
    }
  }

  else
  {
    v133 = 8;
    if ((v120 & 0x1F) != 0)
    {
      goto LABEL_210;
    }
  }

  if ((((v133 << 7) - 1) & v120) != 0)
  {
    v135 = 1 << (__clz(((v120 >> 7) - 1) ^ (v120 >> 7)) ^ 0x3F);
    if (v133 >= v135)
    {
      v133 = v135;
    }
  }

LABEL_210:
  v251 = *(v253 + 1482);
  v230 = v131;
  if (*(v132 + 52))
  {
    v136 = *(v132 + 25);
    if (v136)
    {
      v137 = *(v136 + 8);
      if (v137)
      {
        v133 = v137;
      }
    }
  }

  v232 = v133;
  v317[0] = v99;
  v317[1] = v100;
  v317[2] = v102;
  v317[3] = v103;
  v138 = *(v317 + (BYTE2(v101) & 0xF));
  v316[0] = v99;
  v316[1] = v100;
  v316[2] = v102;
  v316[3] = v103;
  v258 = *(v316 + (BYTE3(v101) & 0xF));
  v257 = v138;
  v269 = v138 * v258;
  v139 = *(v132 + 23);
  v260 = (v295 + (v130 + v121 - 1) / v130 - 1) / v295;
  v255 = v97;
  v285 = v121;
  v287 = v120 & 0xFFFFFFFC;
  if (v139)
  {
    v140 = v104;
    v141 = [v139 normFusionType];
    v142 = *(v132 + 23);
    if (v142)
    {
      v256 = [v142 hasScale];
      if (v97 < 8 && v140)
      {
LABEL_220:
        v144 = *(v132 + 23);
        if (v144)
        {
          if (((v290 != v97) ^ [v144 isLeftFused]))
          {
            v145 = 0;
          }

          else if ([*(v132 + 23) normFusionType] >= 2)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v145 = 1;
            v132 = v282;
            v129 = v253;
          }

          else
          {
            v145 = 1;
          }
        }

        else
        {
          v145 = 0;
        }

        v147 = v230;
        goto LABEL_241;
      }
    }

    else
    {
      v256 = 0;
      if (v97 < 8 && v140)
      {
        goto LABEL_220;
      }
    }

    v147 = v230;
    if (v141 == 2)
    {
      v231 = 0;
      if (v289)
      {
        v149 = 0;
        v254 = 1;
        v150 = 1;
        LOBYTE(v289) = 1;
      }

      else
      {
        LOBYTE(v289) = 0;
        v149 = 4 * v97 * v295 * v296;
        v254 = 1;
        v150 = 1;
      }
    }

    else
    {
      v231 = 0;
      v149 = 0;
      v254 = 1;
      v150 = 1;
    }

    goto LABEL_272;
  }

  v145 = 0;
  if (v97 >= 8 || !v104)
  {
    v149 = 0;
    v254 = 1;
    v256 = 0;
    v231 = 0;
    v150 = 1;
    v147 = v131;
    goto LABEL_272;
  }

  v256 = 0;
  v147 = v131;
LABEL_241:
  v151 = 4;
  v152 = 8;
  if (v121 >= 0x81)
  {
    v153 = 4;
  }

  else
  {
    v153 = 8;
  }

  if (v121 < 0x81)
  {
    v152 = 4;
  }

  v296 = v152;
  v154 = v121 - 1 + 4 * v152;
  if (v121 >= 0x81)
  {
    v151 = 5;
  }

  v254 = v154 >> v151;
  v155 = (v154 >> v151) * v269;
  v156 = 6 * v97;
  if (!v145)
  {
    v156 = 4 * v97;
  }

  LODWORD(v157) = 0x8000 / ((4 * v156 * v251) & 0xFFF8u);
  if (v157 >= 0x10)
  {
    v157 = 16;
  }

  else
  {
    v157 = v157;
  }

  v158 = 1;
  do
  {
    v159 = v153;
    v161 = v155 * v158 >= 16 * *(v129 + 1480);
    v158 *= 2;
    v153 *= 2;
    v161 = v161 || v158 > v157 || v153 >= v120;
  }

  while (!v161);
  LOBYTE(v289) = 0;
  v162 = 2;
  if (v121 >= 0x81)
  {
    v162 = 3;
  }

  if (v145)
  {
    v149 = v159 * ((8 * v97) << v162);
  }

  else
  {
    v149 = 0;
  }

  v163 = v159 << v162;
  v164 = v251 >> v162;
  if (v163 >= v251)
  {
    v165 = v159;
  }

  else
  {
    v165 = v164;
  }

  v295 = v165;
  v231 = 1;
  v150 = 4;
  v260 = 1;
LABEL_272:
  v166 = 64 - __clz(v147 - 1);
  if (v147 >= 2)
  {
    v167 = v166;
  }

  else
  {
    v167 = 0;
  }

  if (v147 != 1 << v167 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v132 alpha];
  [v265 dataType];
  [v262 dataType];
  [v299 dataType];
  v168 = [*(v298 + 232) finalOp];
  (*(*v168 + 16))(v168);
  v247 = v237 + v281 * v238 + v242 * v240 + v278 * v244 + v280 * v246;
  v169 = (v287 + 4 * v296 - 1) / (4 * v296);
  v170 = v287 / (4 * v296);
  v252 = v169;
  if (v231)
  {
    v171 = 1;
  }

  else
  {
    if (v169 >= 0x20)
    {
      v172 = 32;
    }

    else
    {
      v172 = v169;
    }

    v173 = ((v169 - v170) & 1) << 11;
    if (v169 >= 0x20)
    {
      v173 = 0;
    }

    v171 = (((32 * (v269 != 1)) | (16 * (v260 != 1))) | (8 * (v254 != 1))) & 0x3F | ((v172 & 0x1F) << 6) | v173 | ((v287 % (4 * v296 * v295) == 0) << 12);
  }

  v174 = v282;
  *&v175 = -1;
  *(&v175 + 1) = -1;
  v365 = v175;
  v364 = v175;
  v363 = v175;
  v361 = -1;
  v360[9] = v175;
  v362 = v233 | v236 | v248;
  *&v365 = [*(v298 + 16) count] | ((*(v298 + 112) != 0) << 8) | 0x10000;
  v361 = v171;
  v227 = *&v282[*MEMORY[0x277CD7360]];
  v228 = *&v282[*MEMORY[0x277CD7368]];
  v226 = *(v298 + 232);
  MPSLibrary::CreateUberShaderKey();
  v176 = v290 == v255;
  if (v290 == v255)
  {
    v177 = v276 <= v274;
  }

  else
  {
    v177 = v272 <= v270;
  }

  v291 = *(&v378 | (8 * v177));
  if (v176)
  {
    v178 = v272 <= v270;
  }

  else
  {
    v178 = v276 <= v274;
  }

  v283 = *(&v376 | (8 * v178));
  v179 = MEMORY[0x277CD7410];
  v180 = MEMORY[0x277CD73D8];
  v277 = *&v297[4 * (*&v297[*MEMORY[0x277CD73D8]] & 0xF) + *MEMORY[0x277CD7410]];
  [v174 alpha];
  v182 = v181;
  v183 = *v179;
  v184 = *&v265[v183];
  v185 = *&v265[v183 + 16];
  v186 = *&v265[v183 + 32];
  v187 = *&v265[v183 + 48];
  v188 = *v180;
  v189 = v265[v188 + 2] & 0xF;
  v314[3] = v187;
  v314[2] = v186;
  v314[1] = v185;
  v314[0] = v184;
  if (*(v314 + v189) == 1)
  {
    v190 = 0;
  }

  else
  {
    v190 = v379;
  }

  v275 = v190;
  v191 = *&v262[v183];
  v192 = *&v262[v183 + 16];
  v193 = *&v262[v183 + 32];
  v194 = *&v262[v183 + 48];
  v195 = v262[v188 + 2] & 0xF;
  v312[3] = v194;
  v312[2] = v193;
  v312[1] = v192;
  v312[0] = v191;
  if (*(v312 + v195) == 1)
  {
    v196 = 0;
  }

  else
  {
    v196 = v377;
  }

  v273 = v196;
  v197 = &v299[v183];
  v249 = *v197;
  v243 = *(v197 + 2);
  v245 = *(v197 + 1);
  v239 = *&v299[v188];
  v241 = *(v197 + 3);
  v310[3] = v241;
  v310[2] = v243;
  v310[1] = v245;
  v310[0] = v249;
  if (*(v310 + (BYTE2(v239) & 0xF)) == 1)
  {
    v198 = 0;
  }

  else
  {
    v198 = v278;
  }

  v271 = v198;
  v279 = v170 / v232 * v232;
  v199 = v265[v188 + 3] & 0xF;
  v315[3] = v187;
  v315[2] = v186;
  v315[1] = v185;
  v315[0] = v184;
  if (*(v315 + v199) == 1)
  {
    v200 = 0;
  }

  else
  {
    v200 = DWORD2(v379);
  }

  v201 = v262[v188 + 3] & 0xF;
  v313[3] = v194;
  v313[2] = v193;
  v313[1] = v192;
  v313[0] = v191;
  if (*(v313 + v201) == 1)
  {
    v202 = 0;
  }

  else
  {
    v202 = DWORD2(v377);
  }

  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSSetNDArraysOnComputeEncoder(v250, v298, 4, 0, 0);
  [v250 setComputePipelineState:PipelineStateForMPSKey];
  [v250 setBuffer:objc_msgSend(v262 offset:"buffer") atIndex:{v234, 29}];
  [v250 setBuffer:objc_msgSend(v265 offset:"buffer") atIndex:{v235, 28}];
  v311[3] = v241;
  v311[2] = v243;
  v311[1] = v245;
  v311[0] = v249;
  if (*(v311 + (BYTE3(v239) & 0xF)) == 1)
  {
    v204 = 0;
  }

  else
  {
    v204 = v280;
  }

  [v250 setBuffer:objc_msgSend(v299 offset:"buffer") atIndex:{v247, 26}];
  *&v354 = __PAIR64__(v285, v255);
  *(&v354 + 1) = __PAIR64__(v291, v277);
  *&v355 = v283;
  *(&v355 + 1) = __PAIR64__(LODWORD(v182), v281);
  LODWORD(v356) = 0;
  *(&v356 + 4) = __PAIR64__(v275, v257);
  HIDWORD(v356) = v273;
  DWORD1(v357) = v271;
  *(&v357 + 1) = 1;
  *&v358 = __PAIR64__(v252, v287);
  *(&v358 + 1) = v279;
  *&v359 = __PAIR64__(v200, v258);
  DWORD2(v359) = v202;
  LODWORD(v360[0]) = v204;
  *(&v360[7] + 4) = 0u;
  *(&v360[6] + 4) = 0u;
  *(&v360[5] + 4) = 0u;
  *(&v360[4] + 4) = 0u;
  *(&v360[3] + 4) = 0u;
  *(&v360[2] + 4) = 0u;
  memset(v360 + 4, 0, 32);
  objc_msgSend_setBytes_length_atIndex_(v250);
  v375 = 0;
  v374 = 0;
  objc_msgSend_setBytes_length_atIndex_(v250);
  if (v256)
  {
    makeStrideBytes();
    v205 = *&v229[*MEMORY[0x277CD73D8]];
    v309[7] = v373;
    v309[6] = v372;
    v309[5] = v371;
    v309[4] = v370;
    v309[3] = v369;
    v309[2] = v368;
    v309[1] = v367;
    v309[0] = v366;
    v206 = v205 & 0xF;
    v207 = *(v309 + v206);
    v308[7] = v373;
    v308[6] = v372;
    v308[5] = v371;
    v308[4] = v370;
    v308[3] = v369;
    v308[2] = v368;
    v308[1] = v367;
    v308[0] = v366;
    v208 = BYTE1(v205) & 0xF;
    v209 = *(v308 + v208);
    v307[7] = v373;
    v307[5] = v371;
    v307[6] = v372;
    v307[3] = v369;
    v307[4] = v370;
    v307[1] = v367;
    v307[2] = v368;
    v307[0] = v366;
    v210 = BYTE2(v205) & 0xF;
    v211 = *(v307 + v210);
    v306[6] = v372;
    v306[7] = v373;
    v306[4] = v370;
    v306[5] = v371;
    v306[2] = v368;
    v306[3] = v369;
    v306[0] = v366;
    v306[1] = v367;
    v212 = BYTE3(v205) & 0xF;
    v213 = *(v306 + v212);
    v214 = &v229[*MEMORY[0x277CD7418]];
    v215 = *v214;
    v216 = *(v214 + 1);
    v217 = *(v214 + 3);
    v304 = *(v214 + 2);
    v305 = v217;
    v303[0] = v215;
    v303[1] = v216;
    v218 = *(v303 + v206);
    v302[2] = v304;
    v302[3] = v217;
    v302[0] = v215;
    v302[1] = v216;
    v219 = *(v302 + v208);
    v301[2] = v304;
    v301[3] = v217;
    v301[0] = v215;
    v301[1] = v216;
    v220 = *(v301 + v210);
    v300[2] = v304;
    v300[3] = v217;
    v300[0] = v215;
    v300[1] = v216;
    [v250 setBuffer:objc_msgSend(v229 offset:"buffer") atIndex:{objc_msgSend(v229, "offset") + v209 * v219 + v207 * v218 + v211 * v220 + v213 * *(v300 + v212), 22}];
  }

  if ((v289 & 1) == 0)
  {
    [v250 setThreadgroupMemoryLength:v149 + 4 * v255 * v296 * v295 * v150 atIndex:0];
  }

  *&v366 = v254;
  *(&v366 + 1) = v260;
  *&v367 = v269;
  v353[0] = v296;
  v353[1] = v295;
  v353[2] = 1;
  [v250 dispatchThreadgroups:&v366 threadsPerThreadgroup:v353];
  return MPSLibrary::ReleaseMPSKey();
}

uint64_t MPSNDArrayMatrixMultiplyA14FunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v9 + 4 type:33 atIndex:115];
  AddFunctionConstantList(v6, a3);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

char *___ZL20MPSEnableAutoTuneLogv_block_invoke()
{
  result = getenv("MPS_LOG_AUTO_TUNE");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      _MergedGlobals_18 = result != 0;
    }
  }

  return result;
}

const char *___ZL19setParametersFromEVP30MPSNDArrayMatrixMultiplicationP9MPSDevice_block_invoke(uint64_t a1)
{
  v2 = getenv("MPS_MATMUL_TILEM");
  v3 = v2;
  if (v2)
  {
    v17 = atoi(v2);
    v4 = getenv("MPS_MATMUL_TILEN");
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 64;
    v4 = getenv("MPS_MATMUL_TILEN");
    if (v4)
    {
LABEL_3:
      v16 = atoi(v4);
      v5 = getenv("MPS_MATMUL_TILEK");
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v16 = 64;
  v5 = getenv("MPS_MATMUL_TILEK");
  if (v5)
  {
LABEL_4:
    v15 = atoi(v5);
    v6 = getenv("MPS_MATMUL_TGMEMA");
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v15 = 16;
  v6 = getenv("MPS_MATMUL_TGMEMA");
  if (v6)
  {
LABEL_5:
    v7 = atoi(v6) != 0;
    v8 = getenv("MPS_MATMUL_TGMEMB");
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 1;
  v8 = getenv("MPS_MATMUL_TGMEMB");
  if (v8)
  {
LABEL_6:
    v9 = atoi(v8) != 0;
    v10 = getenv("MPS_MATMUL_SIMDSX");
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = 1;
  v10 = getenv("MPS_MATMUL_SIMDSX");
  if (v10)
  {
LABEL_7:
    v11 = atoi(v10);
    result = getenv("MPS_MATMUL_SIMDSY");
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = 2;
  result = getenv("MPS_MATMUL_SIMDSY");
  if (result)
  {
LABEL_8:
    result = atoi(result);
    v13 = result;
    if (v3)
    {
      goto LABEL_22;
    }

LABEL_17:
    if (!v4 && !v5 && !v6 && !v8 && !v10)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_16:
  v13 = 4;
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_22:
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v15;
  v18[3] = 32 * v11 * v13;
  v18[4] = v11;
  v18[5] = v13;
  v19 = 0;
  BYTE4(v19) = v7;
  BYTE5(v19) = v9;
  if ((*(*(a1 + 40) + 1472) - 11) < 7)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  [*(a1 + 32) setAutoTuningTarget:v14];
  return [*(a1 + 32) setAutoTuningParameters:v18];
}

void *FlattenTo3D(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x277CD73D8];
  v44[3] = *MEMORY[0x277D85DE8];
  v9 = *&a1[*MEMORY[0x277CD73D8]];
  if (BYTE2(v9) >= BYTE3(v9))
  {
    v10 = BYTE3(v9);
  }

  else
  {
    v10 = BYTE2(v9);
  }

  v11 = &a1[*MEMORY[0x277CD7410]];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = *(v11 + 3);
  v42 = *(v11 + 2);
  v43 = v14;
  v41[0] = v12;
  v41[1] = v13;
  v44[0] = *(v41 + (v9 & 0xF));
  v40[2] = v42;
  v40[3] = v14;
  v40[0] = v12;
  v40[1] = v13;
  v44[1] = *(v40 + (BYTE1(v9) & 0xF));
  v39[2] = v42;
  v39[3] = v14;
  v39[0] = v12;
  v39[1] = v13;
  v15 = *(v39 + (BYTE2(v9) & 0xF));
  v38[2] = v42;
  v38[3] = v14;
  v38[0] = v12;
  v38[1] = v13;
  v44[2] = (v15 * *(v38 + (BYTE3(v9) & 0xF)));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*&a1[*MEMORY[0x277CD7498]];
  }

  result = [a2 reshapeWithCommandBuffer:a3 sourceArray:a1 dimensionCount:3 dimensionSizes:v44 destinationArray:0];
  if (!result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      --*&a1[*MEMORY[0x277CD7498]];
    }

    v17 = [MEMORY[0x277CD7268] descriptorWithDataType:*&a1[*MEMORY[0x277CD73C8]] dimensionCount:3 dimensionSizes:v44];
    v18 = v17;
    v19 = 0;
    v20 = MEMORY[0x277CD7438];
    v21 = MEMORY[0x277CD7430];
    v22 = MEMORY[0x277CD7458];
    do
    {
      v37 = *&a1[*v8];
      v26 = *(&v37 | v19 & 0xF);
      if (v10 == v26)
      {
        *(v17 + *v20 + (v19 & 0xF)) = v10;
        v23 = v44[v19];
        v24 = v17 + *v21;
        v33 = *&a1[*v8];
        *(v24 + 4 * (*(&v33 | v19 & 0xF) & 0xF)) = v23;
        v25 = v17 + *v22;
        v34 = *&a1[*v8];
        *(v25 + 4 * (*(&v34 | v19 & 0xF) & 0xF)) = v23;
      }

      else if (v26 <= v10)
      {
        v30 = 4 * (v19 & 0xF);
        *(v17 + *v20 + (v19 & 0xF)) = v26;
        v31 = v44[v19];
        *(v17 + *v21 + v30) = v31;
        *(v17 + *v22 + v30) = v31;
      }

      else
      {
        *(v17 + *v20 + (v19 & 0xF)) = v26 - 1;
        v27 = v44[v19];
        v28 = v17 + *v21;
        v35 = *&a1[*v8];
        *(v28 + 4 * ((*(&v35 | v19 & 0xF) - 1) & 0xF)) = v27;
        v29 = v17 + *v22;
        v36 = *&a1[*v8];
        *(v29 + 4 * ((*(&v36 | v19 & 0xF) - 1) & 0xF)) = v27;
      }

      ++v19;
    }

    while (v19 != 3);
    v32 = [a1 descriptor];
    *(v18 + *MEMORY[0x277CD7448]) = *(v32 + *MEMORY[0x277CD7448]);
    return [a2 reshapeWithCommandEncoder:a4 commandBuffer:a3 sourceArray:a1 dimensionCount:3 dimensionSizes:v44 destinationArray:{objc_msgSend(MEMORY[0x277CD72B8], "temporaryNDArrayWithCommandBuffer:descriptor:", a3, v18)}];
  }

  return result;
}

MPSTemporaryNDArray *FlattenTo2D(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v7 = (a1 + *MEMORY[0x277CD7410]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = MEMORY[0x277CD73D8];
  v13 = *(a1 + *MEMORY[0x277CD73D8]);
  v25 = v13;
  v14 = *(&v25 | a4 & 0xF);
  v40 = v10;
  v41 = v11;
  v38 = v8;
  v39 = v9;
  v15 = *(&v38 + (v14 & 0xF));
  v16 = &v25;
  if (!a4)
  {
    v16 = (&v25 + 1);
  }

  v36 = v10;
  v37 = v11;
  v34 = v8;
  v35 = v9;
  v17 = *(&v34 + (*v16 & 0xF));
  v32 = v10;
  v33 = v11;
  v30 = v8;
  v31 = v9;
  v18 = *(&v30 + (BYTE2(v13) & 0xF));
  v28 = v10;
  v29 = v11;
  v26 = v8;
  v27 = v9;
  v19 = *(&v26 + (BYTE3(v13) & 0xF)) * v18 * v17;
  v20 = v14 == 0;
  if (v14)
  {
    v21 = v19;
  }

  else
  {
    v21 = v15;
  }

  if (v20)
  {
    v15 = v19;
  }

  v42[0] = v21;
  v42[1] = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(a1 + *MEMORY[0x277CD7498]);
  }

  result = [a2 reshapeWithCommandBuffer:a3 sourceArray:a1 dimensionCount:2 dimensionSizes:v42 destinationArray:{0, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41}];
  if (result)
  {
    v23 = *(&result->super.super.isa + *v12);
    v24.i32[0] = v23;
    v24.i32[1] = BYTE1(v23);
    *&v23 = vcgt_u32(vand_s8(v24, 0xFF000000FFLL), 0x100000001);
    if ((v23 | DWORD1(v23)))
    {
      if (*(&result[3].super.super.isa + *MEMORY[0x277CD73C0]))
      {
        MPSDecrementReadCount(result);
      }

      return 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = 0;
      --*(a1 + *MEMORY[0x277CD7498]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void updateDAGDestShape(MPSKernelDAGObject **a1, MPSNDArray *a2)
{
  v3 = [a1 graph];
  v4 = **(***(v3 + 56) + 24);
  if (*(*(***(v3 + 56) + 24) + 8) != v4)
  {
    v5 = *v4;

    reshapeTensor(v5, a2);
  }

  std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
}

void reshapeTensor(BaseTensor *a1, MPSNDArray *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EE7C8C0](v2, 0x10C402FEFCB83);
  }

  operator new();
}

void sub_239A25828(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x23EE7C8C0](v2, v1);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EE7C8C0](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

uint64_t EncodeArrayMathTernary(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v9 = [*(a4 + 16) objectAtIndexedSubscript:2];
  v10 = *(a4 + 208);
  v11 = MEMORY[0x277CD7410];
  v12 = *MEMORY[0x277CD7410];
  v13 = *MEMORY[0x277CD7410];
  v14 = MEMORY[0x277CD73D8];
  if (*&v7[v13] == 1)
  {
    v58 = 0;
    if (*&v7[v12 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v57 = 0;
    if (*&v8[v13] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v56 = 0;
    v15 = v12;
    if (*&v8[v12 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v7[*MEMORY[0x277CD73D8]] == 1)
  {
    v58 = *&v7[*MEMORY[0x277CD7400]];
    if (*&v7[v12 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v7[*MEMORY[0x277CD73D8]])
  {
    v58 = [v7 dataType] >> 3;
    v12 = *v11;
    v13 = *v11;
  }

  if (*&v7[v13 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v7[*v14 + 1])
  {
    v57 = [v7 dataType] >> 3;
    v12 = *v11;
    if (*&v8[*v11] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v7[*v14 + 1] != 1)
  {
    if (*&v8[v13] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v57 = *&v7[*MEMORY[0x277CD7400]];
  if (*&v8[v13] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v8[*v14] == 1)
  {
    v56 = *&v8[*MEMORY[0x277CD7400]];
    v15 = v12;
    if (*&v8[v12 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v8[*v14])
    {
      v56 = [v8 dataType] >> 3;
      v12 = *v11;
    }

    v15 = v12;
    if (*&v8[v12 + 4] == 1)
    {
LABEL_23:
      v55 = 0;
      if (*&v9[v15] != 1)
      {
        goto LABEL_34;
      }

LABEL_31:
      v54 = 0;
      v16 = v12;
      if (*&v9[v12 + 4] == 1)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

LABEL_26:
  if (!v8[*v14 + 1])
  {
    v55 = [v8 dataType] >> 3;
    v12 = *v11;
    if (*&v9[*v11] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v8[*v14 + 1] != 1)
  {
    if (*&v9[v15] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v55 = *&v8[*MEMORY[0x277CD7400]];
  if (*&v9[v15] == 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (*&v9[*v14] == 1)
  {
    v54 = *&v9[*MEMORY[0x277CD7400]];
    v16 = v12;
    if (*&v9[v12 + 4] == 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (!*&v9[*v14])
    {
      v54 = [v9 dataType] >> 3;
      v12 = *v11;
    }

    v16 = v12;
    if (*&v9[v12 + 4] == 1)
    {
LABEL_38:
      v53 = 0;
      if (*&v10[v16] != 1)
      {
        goto LABEL_49;
      }

LABEL_46:
      v52 = 0;
      if (*&v10[v12 + 4] != 1)
      {
        goto LABEL_55;
      }

LABEL_53:
      v4 = 0;
      goto LABEL_59;
    }
  }

LABEL_41:
  if (!v9[*v14 + 1])
  {
    v53 = [v9 dataType] >> 3;
    v12 = *v11;
    if (*&v10[*v11] != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v9[*v14 + 1] != 1)
  {
    if (*&v10[v16] != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v53 = *&v9[*MEMORY[0x277CD7400]];
  if (*&v10[v16] == 1)
  {
    goto LABEL_46;
  }

LABEL_49:
  if (*&v10[*v14] == 1)
  {
    v52 = *&v10[*MEMORY[0x277CD7400]];
    if (*&v10[v12 + 4] != 1)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!*&v10[*v14])
  {
    v52 = [v10 dataType] >> 3;
    v12 = *v11;
  }

  if (*&v10[v12 + 4] == 1)
  {
    goto LABEL_53;
  }

LABEL_55:
  if (v10[*v14 + 1])
  {
    if (v10[*v14 + 1] == 1)
    {
      v4 = *&v10[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v4 = [v10 dataType] >> 3;
  }

LABEL_59:
  v17 = *(a4 + 8);
  v62 = v17[8];
  v64 = v17[18];
  v18 = v17[28];
  v19 = *(a4 + 192);
  v59 = MPSGetLinearOffsetBytes(v7, 0, 2, 0, 0);
  v60 = MPSGetLinearOffsetBytes(v8, 0, 2, 0, 0);
  v61 = MPSGetLinearOffsetBytes(v9, 0, 2, 0, 0);
  v20 = MPSGetLinearOffsetBytes(v10, 0, 2, 0, 0);
  v21 = *MEMORY[0x277CD73C8];
  v22 = *&v7[v21];
  if (v22 > 285212703)
  {
    if (v22 <= 536870915)
    {
      if (v22 > 301989895)
      {
        if (v22 == 301989896)
        {
          v23 = 512;
          v24 = *&v8[v21];
          if (v24 <= 285212703)
          {
            goto LABEL_118;
          }
        }

        else
        {
          if (v22 != 335544328)
          {
            goto LABEL_148;
          }

          v23 = 544;
          v24 = *&v8[v21];
          if (v24 <= 285212703)
          {
            goto LABEL_118;
          }
        }
      }

      else if (v22 == 285212704)
      {
        v23 = 416;
        v24 = *&v8[v21];
        if (v24 <= 285212703)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (v22 != 285212736)
        {
          goto LABEL_148;
        }

        v23 = 448;
        v24 = *&v8[v21];
        if (v24 <= 285212703)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_149;
    }

    if (v22 > 536870927)
    {
      switch(v22)
      {
        case 536870928:
          v23 = 64;
          v24 = *&v8[v21];
          if (v24 <= 285212703)
          {
            goto LABEL_118;
          }

          break;
        case 536870944:
          v23 = 96;
          v24 = *&v8[v21];
          if (v24 <= 285212703)
          {
            goto LABEL_118;
          }

          break;
        case 536870976:
          v23 = 128;
          v24 = *&v8[v21];
          if (v24 <= 285212703)
          {
            goto LABEL_118;
          }

          break;
        default:
          goto LABEL_148;
      }

      goto LABEL_149;
    }

    v23 = 0;
    if (v22 != 536870916)
    {
      if (v22 != 536870920)
      {
        goto LABEL_148;
      }

      v23 = 32;
      v24 = *&v8[v21];
      if (v24 <= 285212703)
      {
        goto LABEL_118;
      }

      goto LABEL_149;
    }

LABEL_117:
    v24 = *&v8[v21];
    if (v24 > 285212703)
    {
      goto LABEL_149;
    }

    goto LABEL_118;
  }

  if (v22 <= 31)
  {
    if (v22 > 7)
    {
      if (v22 == 8)
      {
        v23 = 192;
        v24 = *&v8[v21];
        if (v24 <= 285212703)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (v22 != 16)
        {
          goto LABEL_148;
        }

        v23 = 224;
        v24 = *&v8[v21];
        if (v24 <= 285212703)
        {
          goto LABEL_118;
        }
      }
    }

    else if (v22 == -1879048176)
    {
      v23 = 384;
      v24 = *&v8[v21];
      if (v24 <= 285212703)
      {
        goto LABEL_118;
      }
    }

    else
    {
      if (v22 != 4)
      {
        goto LABEL_148;
      }

      v23 = 160;
      v24 = *&v8[v21];
      if (v24 <= 285212703)
      {
        goto LABEL_118;
      }
    }

    goto LABEL_149;
  }

  if (v22 <= 268435463)
  {
    if (v22 != 32)
    {
      if (v22 != 64)
      {
        goto LABEL_148;
      }

      v23 = 288;
      v24 = *&v8[v21];
      if (v24 <= 285212703)
      {
        goto LABEL_118;
      }

      goto LABEL_149;
    }

    v23 = 256;
    goto LABEL_117;
  }

  switch(v22)
  {
    case 268435464:
      v23 = 480;
      v24 = *&v8[v21];
      if (v24 <= 285212703)
      {
        goto LABEL_118;
      }

      break;
    case 268435472:
      v23 = 320;
      v24 = *&v8[v21];
      if (v24 <= 285212703)
      {
        goto LABEL_118;
      }

      break;
    case 268435488:
      v23 = 352;
      v24 = *&v8[v21];
      if (v24 > 285212703)
      {
        break;
      }

LABEL_118:
      if (v24 <= 31)
      {
        if (v24 > 7)
        {
          if (v24 == 8)
          {
            v25 = v23 | 0x1800;
            v26 = *&v9[v21];
            if (v26 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          }

          if (v24 == 16)
          {
            v25 = v23 | 0x1C00;
            v26 = *&v9[v21];
            if (v26 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          }
        }

        else
        {
          if (v24 == -1879048176)
          {
            v25 = v23 | 0x3000;
            v26 = *&v9[v21];
            if (v26 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          }

          if (v24 == 4)
          {
            v25 = v23 | 0x1400;
            v26 = *&v9[v21];
            if (v26 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          }
        }
      }

      else if (v24 <= 268435463)
      {
        if (v24 == 32)
        {
          v25 = v23 | 0x2000;
          v26 = *&v9[v21];
          if (v26 > 285212703)
          {
            goto LABEL_200;
          }

          goto LABEL_178;
        }

        if (v24 == 64)
        {
          v25 = v23 | 0x2400;
          v26 = *&v9[v21];
          if (v26 > 285212703)
          {
            goto LABEL_200;
          }

          goto LABEL_178;
        }
      }

      else
      {
        switch(v24)
        {
          case 268435464:
            v25 = v23 | 0x3C00;
            v26 = *&v9[v21];
            if (v26 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          case 268435472:
            v25 = v23 | 0x2800;
            v26 = *&v9[v21];
            if (v26 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          case 268435488:
            v25 = v23 | 0x2C00;
            v26 = *&v9[v21];
            if (v26 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
        }
      }

LABEL_199:
      v25 = v23 | 0x4800;
      v26 = *&v9[v21];
      if (v26 > 285212703)
      {
        goto LABEL_200;
      }

      goto LABEL_178;
    default:
LABEL_148:
      v23 = 576;
      v24 = *&v8[v21];
      if (v24 > 285212703)
      {
        break;
      }

      goto LABEL_118;
  }

LABEL_149:
  if (v24 <= 536870915)
  {
    if (v24 > 301989895)
    {
      if (v24 == 301989896)
      {
        v25 = v23 | 0x4000;
        v26 = *&v9[v21];
        if (v26 <= 285212703)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v24 != 335544328)
        {
          goto LABEL_199;
        }

        v25 = v23 | 0x4400;
        v26 = *&v9[v21];
        if (v26 <= 285212703)
        {
          goto LABEL_178;
        }
      }
    }

    else if (v24 == 285212704)
    {
      v25 = v23 | 0x3400;
      v26 = *&v9[v21];
      if (v26 <= 285212703)
      {
        goto LABEL_178;
      }
    }

    else
    {
      if (v24 != 285212736)
      {
        goto LABEL_199;
      }

      v25 = v23 | 0x3800;
      v26 = *&v9[v21];
      if (v26 <= 285212703)
      {
        goto LABEL_178;
      }
    }
  }

  else if (v24 <= 536870927)
  {
    if (v24 == 536870916)
    {
      v25 = v23;
      v26 = *&v9[v21];
      if (v26 > 285212703)
      {
        goto LABEL_200;
      }

      goto LABEL_178;
    }

    if (v24 != 536870920)
    {
      goto LABEL_199;
    }

    v25 = v23 | 0x400;
    v26 = *&v9[v21];
    if (v26 <= 285212703)
    {
      goto LABEL_178;
    }
  }

  else
  {
    switch(v24)
    {
      case 536870928:
        v25 = v23 | 0x800;
        v26 = *&v9[v21];
        if (v26 <= 285212703)
        {
          goto LABEL_178;
        }

        break;
      case 536870944:
        v25 = v23 | 0xC00;
        v26 = *&v9[v21];
        if (v26 <= 285212703)
        {
          goto LABEL_178;
        }

        break;
      case 536870976:
        v25 = v23 | 0x1000;
        v26 = *&v9[v21];
        if (v26 > 285212703)
        {
          break;
        }

LABEL_178:
        if (v26 <= 31)
        {
          if (v26 > 7)
          {
            if (v26 == 8)
            {
              v27 = 196608;
              goto LABEL_222;
            }

            if (v26 == 16)
            {
              v27 = 229376;
              goto LABEL_222;
            }
          }

          else
          {
            if (v26 == -1879048176)
            {
              v27 = 393216;
              goto LABEL_222;
            }

            if (v26 == 4)
            {
              v27 = 163840;
              goto LABEL_222;
            }
          }
        }

        else if (v26 <= 268435463)
        {
          if (v26 == 32)
          {
            v27 = 0x40000;
            goto LABEL_222;
          }

          if (v26 == 64)
          {
            v27 = 294912;
            goto LABEL_222;
          }
        }

        else
        {
          switch(v26)
          {
            case 268435464:
              v27 = 491520;
              goto LABEL_222;
            case 268435472:
              v27 = 327680;
              goto LABEL_222;
            case 268435488:
              v27 = 360448;
              goto LABEL_222;
          }
        }

        goto LABEL_221;
      default:
        goto LABEL_199;
    }
  }

LABEL_200:
  if (v26 <= 536870915)
  {
    if (v26 > 301989895)
    {
      if (v26 == 301989896)
      {
        v27 = 0x80000;
        goto LABEL_222;
      }

      if (v26 == 335544328)
      {
        v27 = 557056;
        goto LABEL_222;
      }
    }

    else
    {
      if (v26 == 285212704)
      {
        v27 = 425984;
        goto LABEL_222;
      }

      if (v26 == 285212736)
      {
        v27 = 458752;
        goto LABEL_222;
      }
    }
  }

  else if (v26 <= 536870927)
  {
    if (v26 == 536870916)
    {
      v27 = 0;
      goto LABEL_222;
    }

    if (v26 == 536870920)
    {
      v27 = 0x8000;
      goto LABEL_222;
    }
  }

  else
  {
    switch(v26)
    {
      case 536870928:
        v27 = 0x10000;
        goto LABEL_222;
      case 536870944:
        v27 = 98304;
        goto LABEL_222;
      case 536870976:
        v27 = 0x20000;
        goto LABEL_222;
    }
  }

LABEL_221:
  v27 = 589824;
LABEL_222:
  v28 = v25 | v27;
  v29 = *&v10[v21];
  v66 = v19;
  v67 = v9;
  v65 = v18;
  v63 = v20;
  if (v29 > 285212703)
  {
    if (v29 <= 536870915)
    {
      v30 = v11;
      v31 = v10;
      if (v29 > 301989895)
      {
        v32 = v7;
        if (v29 == 301989896)
        {
          v34 = v8;
          v35 = a2;
          v36 = 16;
          goto LABEL_266;
        }

        v33 = a2;
        if (v29 == 335544328)
        {
          v34 = v8;
          v35 = a2;
          v36 = 17;
          goto LABEL_266;
        }
      }

      else
      {
        v32 = v7;
        if (v29 == 285212704)
        {
          v34 = v8;
          v35 = a2;
          v36 = 13;
          goto LABEL_266;
        }

        v33 = a2;
        if (v29 == 285212736)
        {
          v34 = v8;
          v35 = a2;
          v36 = 14;
          goto LABEL_266;
        }
      }
    }

    else
    {
      v30 = v11;
      if (v29 <= 536870927)
      {
        v31 = v10;
        v32 = v7;
        if (v29 == 536870916)
        {
          v34 = v8;
          v35 = a2;
          v36 = 0;
          goto LABEL_266;
        }

        v33 = a2;
        if (v29 == 536870920)
        {
          v34 = v8;
          v35 = a2;
          v36 = 1;
          goto LABEL_266;
        }
      }

      else
      {
        v31 = v10;
        if (v29 == 536870928)
        {
          v32 = v7;
          v34 = v8;
          v35 = a2;
          v36 = 2;
          goto LABEL_266;
        }

        v32 = v7;
        if (v29 == 536870944)
        {
          v34 = v8;
          v35 = a2;
          v36 = 3;
          goto LABEL_266;
        }

        v33 = a2;
        if (v29 == 536870976)
        {
          v34 = v8;
          v35 = a2;
          v36 = 4;
          goto LABEL_266;
        }
      }
    }
  }

  else if (v29 <= 31)
  {
    v30 = v11;
    v31 = v10;
    if (v29 > 7)
    {
      v33 = a2;
      v32 = v7;
      if (v29 == 8)
      {
        v34 = v8;
        v35 = a2;
        v36 = 6;
        goto LABEL_266;
      }

      if (v29 == 16)
      {
        v34 = v8;
        v35 = a2;
        v36 = 7;
        goto LABEL_266;
      }
    }

    else
    {
      v32 = v7;
      if (v29 == -1879048176)
      {
        v34 = v8;
        v35 = a2;
        v36 = 12;
        goto LABEL_266;
      }

      v33 = a2;
      if (v29 == 4)
      {
        v34 = v8;
        v35 = a2;
        v36 = 5;
        goto LABEL_266;
      }
    }
  }

  else
  {
    v30 = v11;
    if (v29 <= 268435463)
    {
      v31 = v10;
      v32 = v7;
      if (v29 == 32)
      {
        v34 = v8;
        v35 = a2;
        v36 = 8;
        goto LABEL_266;
      }

      v33 = a2;
      if (v29 == 64)
      {
        v34 = v8;
        v35 = a2;
        v36 = 9;
        goto LABEL_266;
      }
    }

    else
    {
      v31 = v10;
      if (v29 == 268435464)
      {
        v32 = v7;
        v34 = v8;
        v35 = a2;
        v36 = 15;
        goto LABEL_266;
      }

      v32 = v7;
      if (v29 == 268435472)
      {
        v34 = v8;
        v35 = a2;
        v36 = 10;
        goto LABEL_266;
      }

      v33 = a2;
      if (v29 == 268435488)
      {
        v34 = v8;
        v35 = a2;
        v36 = 11;
        goto LABEL_266;
      }
    }
  }

  v34 = v8;
  v35 = v33;
  v36 = 18;
LABEL_266:
  v37 = v28 | v36;
  v38 = *(a1 + 144);
  *&v39 = -1;
  *(&v39 + 1) = -1;
  v89 = v39;
  v90 = v39;
  v88 = v39;
  v85 = v39;
  v86 = -1;
  v87 = v37 | (v38 << 16);
  v40 = &v31[*v30];
  v42 = *v40;
  v41 = *(v40 + 1);
  v71 = *v40;
  v72 = v41;
  v73 = 0;
  v74 = v57;
  v75 = v55;
  v76 = v53;
  v77 = v4;
  v78 = 0;
  v79 = v58;
  v80 = v56;
  v81 = v54;
  v82 = v52;
  v83 = 0;
  v84 = v38;
  v43 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v45 = [ComputeState threadExecutionWidth];
  if (v45 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v45;
  }

  v47 = [ComputeState maxTotalThreadsPerThreadgroup];
  v48 = 256;
  if (v47 < 0x100)
  {
    v48 = v47;
  }

  v49 = v48 > 2 * v46;
  v50 = v48 / v46;
  if (v49)
  {
    v43 = v50;
  }

  [v35 setComputePipelineState:ComputeState];
  [v35 setBuffer:objc_msgSend(v32 offset:"buffer") atIndex:{v59 + v62, 0}];
  [v35 setBuffer:objc_msgSend(v34 offset:"buffer") atIndex:{v60 + v64, 1}];
  [v35 setBuffer:objc_msgSend(v67 offset:"buffer") atIndex:{v61 + v65, 2}];
  [v35 setBuffer:objc_msgSend(v31 offset:"buffer") atIndex:{v63 + v66, 3}];
  objc_msgSend_setBytes_length_atIndex_(v35);
  v70[0] = (v42 + v46 - 1) / v46;
  v70[1] = (v41 + v43 - 1) / v43;
  v70[2] = 1;
  v69[0] = v46;
  v69[1] = v43;
  v69[2] = 1;
  [v35 dispatchThreadgroups:v70 threadsPerThreadgroup:v69];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayMathTernaryGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v85 = *(a1 + 136);
  v6 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v7 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v8 = [*(a4 + 16) objectAtIndexedSubscript:2];
  v89 = v8;
  v13 = *(a4 + 208);
  v14 = *(a4 + 112);
  v15 = MEMORY[0x277CD7410];
  v16 = *MEMORY[0x277CD7410];
  v17 = *MEMORY[0x277CD7410];
  v18 = MEMORY[0x277CD73D8];
  if (*&v6[v17] == 1)
  {
    v78 = 0;
    if (*&v6[v16 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v77 = 0;
    if (*&v7[v17] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    HIDWORD(v76) = 0;
    v19 = v16;
    if (*&v7[v16 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v6[*MEMORY[0x277CD73D8]] == 1)
  {
    v78 = *&v6[*MEMORY[0x277CD7400]];
    if (*&v6[v16 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v6[*MEMORY[0x277CD73D8]])
  {
    LODWORD(v8) = [v6 dataType];
    v15 = MEMORY[0x277CD7410];
    v78 = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    v17 = *MEMORY[0x277CD7410];
  }

  if (*&v6[v17 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v6[*v18 + 1])
  {
    LODWORD(v8) = [v6 dataType];
    v15 = MEMORY[0x277CD7410];
    v77 = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    if (*&v7[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v6[*v18 + 1] != 1)
  {
    if (*&v7[v17] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v77 = *&v6[*MEMORY[0x277CD7400]];
  if (*&v7[v17] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v7[*v18] == 1)
  {
    HIDWORD(v76) = *&v7[*MEMORY[0x277CD7400]];
    v19 = v16;
    if (*&v7[v16 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v7[*v18])
    {
      LODWORD(v8) = [v7 dataType];
      v15 = MEMORY[0x277CD7410];
      HIDWORD(v76) = v8 >> 3;
      v16 = *MEMORY[0x277CD7410];
    }

    v19 = v16;
    if (*&v7[v16 + 4] == 1)
    {
LABEL_23:
      LODWORD(v76) = 0;
      if (*&v89[v19] != 1)
      {
        goto LABEL_33;
      }

LABEL_31:
      LODWORD(v8) = 0;
      goto LABEL_37;
    }
  }

LABEL_26:
  if (!v7[*v18 + 1])
  {
    LODWORD(v8) = [v7 dataType];
    v15 = MEMORY[0x277CD7410];
    LODWORD(v76) = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    if (*&v89[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v7[*v18 + 1] != 1)
  {
    if (*&v89[v19] != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  LODWORD(v76) = *&v7[*MEMORY[0x277CD7400]];
  if (*&v89[v19] == 1)
  {
    goto LABEL_31;
  }

LABEL_33:
  if (*&v89[*v18] == 1)
  {
    LODWORD(v8) = *&v89[*MEMORY[0x277CD7400]];
  }

  else if (!*&v89[*v18])
  {
    LOWORD(v8) = [v89 dataType];
    v15 = MEMORY[0x277CD7410];
    LODWORD(v8) = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
  }

LABEL_37:
  if (*&v89[v16 + 4] == 1)
  {
    v9 = 0;
    if (*&v13[v16] != 1)
    {
      goto LABEL_48;
    }

LABEL_45:
    v10 = 0;
    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if (!v89[*v18 + 1])
  {
    v20 = v8;
    LOWORD(v8) = [v89 dataType];
    v15 = MEMORY[0x277CD7410];
    v9 = v8 >> 3;
    LODWORD(v8) = v20;
    v16 = *MEMORY[0x277CD7410];
    if (*&v13[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (v89[*v18 + 1] != 1)
  {
    if (*&v13[v16] != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v9 = *&v89[*MEMORY[0x277CD7400]];
  if (*&v13[v16] == 1)
  {
    goto LABEL_45;
  }

LABEL_48:
  if (*&v13[*v18] == 1)
  {
    v10 = *&v13[*MEMORY[0x277CD7400]];
    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (!*&v13[*v18])
    {
      v22 = v8;
      v23 = v9;
      LOWORD(v8) = [v13 dataType];
      v9 = v23;
      v15 = MEMORY[0x277CD7410];
      v10 = v8 >> 3;
      LODWORD(v8) = v22;
      v16 = *MEMORY[0x277CD7410];
    }

    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
LABEL_52:
      v11 = 0;
      if (*&v14[v21] != 1)
      {
        goto LABEL_63;
      }

LABEL_60:
      v12 = 0;
      if (*&v14[v16 + 4] == 1)
      {
        goto LABEL_70;
      }

      goto LABEL_67;
    }
  }

LABEL_55:
  if (!v13[*v18 + 1])
  {
    v24 = v8;
    v25 = v9;
    v26 = v10;
    LOWORD(v8) = [v13 dataType];
    v10 = v26;
    v9 = v25;
    v15 = MEMORY[0x277CD7410];
    v11 = v8 >> 3;
    LODWORD(v8) = v24;
    v16 = *MEMORY[0x277CD7410];
    if (*&v14[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  if (v13[*v18 + 1] != 1)
  {
    if (*&v14[v21] != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v11 = *&v13[*MEMORY[0x277CD7400]];
  if (*&v14[v21] == 1)
  {
    goto LABEL_60;
  }

LABEL_63:
  if (*&v14[*v18] == 1)
  {
    v12 = *&v14[*MEMORY[0x277CD7400]];
    if (*&v14[v16 + 4] == 1)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  if (!*&v14[*v18])
  {
    v27 = v8;
    v28 = v14;
    v29 = v6;
    v30 = v7;
    v31 = v13;
    v32 = v14;
    v33 = v9;
    v34 = v10;
    v35 = v18;
    v36 = v11;
    LOWORD(v8) = [v28 dataType];
    v11 = v36;
    v18 = v35;
    v10 = v34;
    v9 = v33;
    v14 = v32;
    v13 = v31;
    v7 = v30;
    v6 = v29;
    v15 = MEMORY[0x277CD7410];
    v12 = v8 >> 3;
    LODWORD(v8) = v27;
    v16 = *MEMORY[0x277CD7410];
  }

  if (*&v14[v16 + 4] != 1)
  {
LABEL_67:
    if (!v14[*v18 + 1])
    {
      v37 = v8;
      v38 = v9;
      v39 = v10;
      v40 = v11;
      v41 = v12;
      [v14 dataType];
      v12 = v41;
      v11 = v40;
      v10 = v39;
      v9 = v38;
      LODWORD(v8) = v37;
      v15 = MEMORY[0x277CD7410];
    }
  }

LABEL_70:
  v42 = *(a4 + 8);
  v43 = v42[8];
  v44 = v42[18];
  v45 = v42[28];
  v46 = *MEMORY[0x277CD73C8];
  v47 = *&v6[v46];
  v80 = v44;
  if (v47 > 285212703)
  {
    if (v47 <= 536870915)
    {
      if (v47 > 301989895)
      {
        if (v47 == 301989896)
        {
          v48 = 512;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }
        }

        else
        {
          if (v47 != 335544328)
          {
            goto LABEL_160;
          }

          v48 = 544;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }
        }
      }

      else if (v47 == 285212704)
      {
        v48 = 416;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }
      }

      else
      {
        if (v47 != 285212736)
        {
          goto LABEL_160;
        }

        v48 = 448;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }
      }
    }

    else if (v47 <= 536870927)
    {
      if (v47 == 536870916)
      {
        v48 = 0;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 > 285212703)
        {
          goto LABEL_161;
        }

        goto LABEL_130;
      }

      if (v47 != 536870920)
      {
        goto LABEL_160;
      }

      v48 = 32;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }

    else
    {
      switch(v47)
      {
        case 536870928:
          v48 = 64;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }

          break;
        case 536870944:
          v48 = 96;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }

          break;
        case 536870976:
          v48 = 128;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }

          break;
        default:
          goto LABEL_160;
      }
    }
  }

  else if (v47 <= 31)
  {
    if (v47 > 7)
    {
      if (v47 == 8)
      {
        v48 = 192;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }
      }

      else
      {
        if (v47 != 16)
        {
          goto LABEL_160;
        }

        v48 = 224;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }
      }
    }

    else if (v47 == -1879048176)
    {
      v48 = 384;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (v47 != 4)
      {
        goto LABEL_160;
      }

      v48 = 160;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }
  }

  else if (v47 <= 268435463)
  {
    if (v47 == 32)
    {
      v48 = 256;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (v47 != 64)
      {
        goto LABEL_160;
      }

      v48 = 288;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }
  }

  else
  {
    switch(v47)
    {
      case 268435464:
        v48 = 480;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }

        break;
      case 268435472:
        v48 = 320;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }

        break;
      case 268435488:
        v48 = 352;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 > 285212703)
        {
          break;
        }

LABEL_130:
        if (v49 <= 31)
        {
          if (v49 > 7)
          {
            if (v49 == 8)
            {
              v50 = 6144;
              v51 = *&v89[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            }

            if (v49 == 16)
            {
              v50 = 7168;
              v51 = *&v89[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            }
          }

          else
          {
            if (v49 == -1879048176)
            {
              v50 = 12288;
              v51 = *&v89[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            }

            if (v49 == 4)
            {
              v50 = 5120;
              v51 = *&v89[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            }
          }
        }

        else if (v49 <= 268435463)
        {
          if (v49 == 32)
          {
            v50 = 0x2000;
            v51 = *&v89[v46];
            if (v51 > 285212703)
            {
              goto LABEL_221;
            }

            goto LABEL_190;
          }

          if (v49 == 64)
          {
            v50 = 9216;
            v51 = *&v89[v46];
            if (v51 > 285212703)
            {
              goto LABEL_221;
            }

            goto LABEL_190;
          }
        }

        else
        {
          switch(v49)
          {
            case 268435464:
              v50 = 15360;
              v51 = *&v89[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            case 268435472:
              v50 = 10240;
              v51 = *&v89[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            case 268435488:
              v50 = 11264;
              v51 = *&v89[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
          }
        }

LABEL_220:
        v50 = 18432;
        v51 = *&v89[v46];
        if (v51 > 285212703)
        {
          goto LABEL_221;
        }

        goto LABEL_190;
      default:
LABEL_160:
        v48 = 576;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 > 285212703)
        {
          break;
        }

        goto LABEL_130;
    }
  }

LABEL_161:
  if (v49 <= 536870915)
  {
    if (v49 > 301989895)
    {
      if (v49 == 301989896)
      {
        v50 = 0x4000;
        v51 = *&v89[v46];
        if (v51 <= 285212703)
        {
          goto LABEL_190;
        }
      }

      else
      {
        if (v49 != 335544328)
        {
          goto LABEL_220;
        }

        v50 = 17408;
        v51 = *&v89[v46];
        if (v51 <= 285212703)
        {
          goto LABEL_190;
        }
      }
    }

    else if (v49 == 285212704)
    {
      v50 = 13312;
      v51 = *&v89[v46];
      if (v51 <= 285212703)
      {
        goto LABEL_190;
      }
    }

    else
    {
      if (v49 != 285212736)
      {
        goto LABEL_220;
      }

      v50 = 14336;
      v51 = *&v89[v46];
      if (v51 <= 285212703)
      {
        goto LABEL_190;
      }
    }
  }

  else if (v49 <= 536870927)
  {
    if (v49 == 536870916)
    {
      v50 = 0;
      v51 = *&v89[v46];
      if (v51 > 285212703)
      {
        goto LABEL_221;
      }

      goto LABEL_190;
    }

    if (v49 != 536870920)
    {
      goto LABEL_220;
    }

    v50 = 1024;
    v51 = *&v89[v46];
    if (v51 <= 285212703)
    {
      goto LABEL_190;
    }
  }

  else
  {
    switch(v49)
    {
      case 536870928:
        v50 = 2048;
        v51 = *&v89[v46];
        if (v51 <= 285212703)
        {
          goto LABEL_190;
        }

        break;
      case 536870944:
        v50 = 3072;
        v51 = *&v89[v46];
        if (v51 <= 285212703)
        {
          goto LABEL_190;
        }

        break;
      case 536870976:
        v50 = 4096;
        v51 = *&v89[v46];
        if (v51 > 285212703)
        {
          break;
        }

LABEL_190:
        if (v51 <= 31)
        {
          if (v51 > 7)
          {
            if (v51 == 8)
            {
              v52 = 196608;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            }

            if (v51 == 16)
            {
              v52 = 229376;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            }
          }

          else
          {
            if (v51 == -1879048176)
            {
              v52 = 393216;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            }

            if (v51 == 4)
            {
              v52 = 163840;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            }
          }
        }

        else if (v51 <= 268435463)
        {
          if (v51 == 32)
          {
            v52 = 0x40000;
            v53 = *&v14[v46];
            if (v53 > 285212703)
            {
              goto LABEL_272;
            }

            goto LABEL_250;
          }

          if (v51 == 64)
          {
            v52 = 294912;
            v53 = *&v14[v46];
            if (v53 > 285212703)
            {
              goto LABEL_272;
            }

            goto LABEL_250;
          }
        }

        else
        {
          switch(v51)
          {
            case 268435464:
              v52 = 491520;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            case 268435472:
              v52 = 327680;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            case 268435488:
              v52 = 360448;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
          }
        }

LABEL_271:
        v52 = 589824;
        v53 = *&v14[v46];
        if (v53 > 285212703)
        {
          goto LABEL_272;
        }

        goto LABEL_250;
      default:
        goto LABEL_220;
    }
  }

LABEL_221:
  if (v51 <= 536870915)
  {
    if (v51 > 301989895)
    {
      if (v51 == 301989896)
      {
        v52 = 0x80000;
        v53 = *&v14[v46];
        if (v53 <= 285212703)
        {
          goto LABEL_250;
        }
      }

      else
      {
        if (v51 != 335544328)
        {
          goto LABEL_271;
        }

        v52 = 557056;
        v53 = *&v14[v46];
        if (v53 <= 285212703)
        {
          goto LABEL_250;
        }
      }
    }

    else if (v51 == 285212704)
    {
      v52 = 425984;
      v53 = *&v14[v46];
      if (v53 <= 285212703)
      {
        goto LABEL_250;
      }
    }

    else
    {
      if (v51 != 285212736)
      {
        goto LABEL_271;
      }

      v52 = 458752;
      v53 = *&v14[v46];
      if (v53 <= 285212703)
      {
        goto LABEL_250;
      }
    }
  }

  else if (v51 <= 536870927)
  {
    if (v51 == 536870916)
    {
      v52 = 0;
      v53 = *&v14[v46];
      if (v53 > 285212703)
      {
        goto LABEL_272;
      }

      goto LABEL_250;
    }

    if (v51 != 536870920)
    {
      goto LABEL_271;
    }

    v52 = 0x8000;
    v53 = *&v14[v46];
    if (v53 <= 285212703)
    {
      goto LABEL_250;
    }
  }

  else
  {
    switch(v51)
    {
      case 536870928:
        v52 = 0x10000;
        v53 = *&v14[v46];
        if (v53 <= 285212703)
        {
          goto LABEL_250;
        }

        break;
      case 536870944:
        v52 = 98304;
        v53 = *&v14[v46];
        if (v53 <= 285212703)
        {
          goto LABEL_250;
        }

        break;
      case 536870976:
        v52 = 0x20000;
        v53 = *&v14[v46];
        if (v53 > 285212703)
        {
          break;
        }

LABEL_250:
        if (v53 <= 31)
        {
          if (v53 > 7)
          {
            if (v53 == 8)
            {
              v54 = 6291456;
              goto LABEL_294;
            }

            if (v53 == 16)
            {
              v54 = 7340032;
              goto LABEL_294;
            }
          }

          else
          {
            if (v53 == -1879048176)
            {
              v54 = 12582912;
              goto LABEL_294;
            }

            if (v53 == 4)
            {
              v54 = 5242880;
              goto LABEL_294;
            }
          }
        }

        else if (v53 <= 268435463)
        {
          if (v53 == 32)
          {
            v54 = 0x800000;
            goto LABEL_294;
          }

          if (v53 == 64)
          {
            v54 = 9437184;
            goto LABEL_294;
          }
        }

        else
        {
          switch(v53)
          {
            case 268435464:
              v54 = 15728640;
              goto LABEL_294;
            case 268435472:
              v54 = 10485760;
              goto LABEL_294;
            case 268435488:
              v54 = 11534336;
              goto LABEL_294;
          }
        }

        goto LABEL_293;
      default:
        goto LABEL_271;
    }
  }

LABEL_272:
  if (v53 <= 536870915)
  {
    if (v53 > 301989895)
    {
      if (v53 == 301989896)
      {
        v54 = 0x1000000;
        goto LABEL_294;
      }

      if (v53 == 335544328)
      {
        v54 = 17825792;
        goto LABEL_294;
      }
    }

    else
    {
      if (v53 == 285212704)
      {
        v54 = 13631488;
        goto LABEL_294;
      }

      if (v53 == 285212736)
      {
        v54 = 14680064;
        goto LABEL_294;
      }
    }
  }

  else if (v53 <= 536870927)
  {
    if (v53 == 536870916)
    {
      v54 = 0;
      goto LABEL_294;
    }

    if (v53 == 536870920)
    {
      v54 = 0x100000;
      goto LABEL_294;
    }
  }

  else
  {
    switch(v53)
    {
      case 536870928:
        v54 = 0x200000;
        goto LABEL_294;
      case 536870944:
        v54 = 3145728;
        goto LABEL_294;
      case 536870976:
        v54 = 0x400000;
        goto LABEL_294;
    }
  }

LABEL_293:
  v54 = 18874368;
LABEL_294:
  v55 = *&v13[v46];
  v86 = v7;
  v83 = *(a4 + 96);
  v84 = *(a4 + 192);
  v82 = v45;
  if (v55 > 285212703)
  {
    if (v55 <= 536870915)
    {
      if (v55 > 301989895)
      {
        v56 = a2;
        v57 = v13;
        if (v55 == 301989896)
        {
          v59 = v89;
          v60 = 16;
          v58 = a5;
          goto LABEL_338;
        }

        v58 = a5;
        if (v55 == 335544328)
        {
          v59 = v89;
          v60 = 17;
          goto LABEL_338;
        }
      }

      else
      {
        v56 = a2;
        v57 = v13;
        if (v55 == 285212704)
        {
          v59 = v89;
          v60 = 13;
          v58 = a5;
          goto LABEL_338;
        }

        v58 = a5;
        if (v55 == 285212736)
        {
          v59 = v89;
          v60 = 14;
          goto LABEL_338;
        }
      }
    }

    else if (v55 <= 536870927)
    {
      v56 = a2;
      v57 = v13;
      if (v55 == 536870916)
      {
        v59 = v89;
        v60 = 0;
        v58 = a5;
        goto LABEL_338;
      }

      v58 = a5;
      if (v55 == 536870920)
      {
        v59 = v89;
        v60 = 1;
        goto LABEL_338;
      }
    }

    else
    {
      if (v55 == 536870928)
      {
        v56 = a2;
        v57 = v13;
        v59 = v89;
        v60 = 2;
        v58 = a5;
        goto LABEL_338;
      }

      v56 = a2;
      v57 = v13;
      if (v55 == 536870944)
      {
        v59 = v89;
        v60 = 3;
        v58 = a5;
        goto LABEL_338;
      }

      v58 = a5;
      if (v55 == 536870976)
      {
        v59 = v89;
        v60 = 4;
        goto LABEL_338;
      }
    }
  }

  else if (v55 <= 31)
  {
    if (v55 > 7)
    {
      v56 = a2;
      v58 = a5;
      v57 = v13;
      if (v55 == 8)
      {
        v59 = v89;
        v60 = 6;
        goto LABEL_338;
      }

      if (v55 == 16)
      {
        v59 = v89;
        v60 = 7;
        goto LABEL_338;
      }
    }

    else
    {
      v56 = a2;
      v57 = v13;
      if (v55 == -1879048176)
      {
        v59 = v89;
        v60 = 12;
        v58 = a5;
        goto LABEL_338;
      }

      v58 = a5;
      if (v55 == 4)
      {
        v59 = v89;
        v60 = 5;
        goto LABEL_338;
      }
    }
  }

  else if (v55 <= 268435463)
  {
    v56 = a2;
    v58 = a5;
    v57 = v13;
    if (v55 == 32)
    {
      v59 = v89;
      v60 = 8;
      goto LABEL_338;
    }

    if (v55 == 64)
    {
      v59 = v89;
      v60 = 9;
      goto LABEL_338;
    }
  }

  else
  {
    if (v55 == 268435464)
    {
      v56 = a2;
      v57 = v13;
      v59 = v89;
      v60 = 15;
      v58 = a5;
      goto LABEL_338;
    }

    v56 = a2;
    v57 = v13;
    if (v55 == 268435472)
    {
      v59 = v89;
      v60 = 10;
      v58 = a5;
      goto LABEL_338;
    }

    v58 = a5;
    if (v55 == 268435488)
    {
      v59 = v89;
      v60 = 11;
      goto LABEL_338;
    }
  }

  v59 = v89;
  v60 = 18;
LABEL_338:
  v61 = *(a1 + 144);
  v62 = 0x2000000;
  *&v63 = -1;
  *(&v63 + 1) = -1;
  v110 = v63;
  v111 = v63;
  if (!v58)
  {
    v62 = 0;
  }

  v109 = v63;
  v106 = v63;
  v107 = v63;
  v108 = v48 | v50 | v52 | v62 | v54 | v60 | (v61 << 16);
  v64 = &v57[*v15];
  v66 = *v64;
  v65 = *(v64 + 1);
  v92 = *v64;
  v93 = v65;
  v94 = v85;
  v95 = v77;
  v96 = v76;
  v97 = v9;
  v98 = v11;
  v99 = v11;
  v100 = v78;
  v101 = HIDWORD(v76);
  v102 = v8;
  v103 = v10;
  v104 = v12;
  v105 = v61;
  v67 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v69 = [ComputeState threadExecutionWidth];
  if (v69 <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = v69;
  }

  v71 = [ComputeState maxTotalThreadsPerThreadgroup];
  v72 = 256;
  if (v71 < 0x100)
  {
    v72 = v71;
  }

  v73 = v72 > 2 * v70;
  v74 = v72 / v70;
  if (v73)
  {
    v67 = v74;
  }

  [v56 setComputePipelineState:ComputeState];
  [v56 setBuffer:objc_msgSend(v6 offset:"buffer") atIndex:{v79, 0}];
  [v56 setBuffer:objc_msgSend(v86 offset:"buffer") atIndex:{v80, 1}];
  [v56 setBuffer:objc_msgSend(v59 offset:"buffer") atIndex:{v82, 2}];
  [v56 setBuffer:objc_msgSend(v14 offset:"buffer") atIndex:{v83, 3}];
  [v56 setBuffer:objc_msgSend(v57 offset:"buffer") atIndex:{v84, 4}];
  objc_msgSend_setBytes_length_atIndex_(v56);
  v91[0] = (v66 + v70 - 1) / v70;
  v91[1] = (v65 + v67 - 1) / v67;
  v91[2] = 1;
  v90[0] = v70;
  v90[1] = v67;
  v90[2] = 1;
  [v56 dispatchThreadgroups:v91 threadsPerThreadgroup:v90];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeGatherND(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v350 = v10;
  v11 = v7;
  v12 = *(v7 + 11);
  v13 = [v7 batchDimensions];
  v398 = [v11 allowNegativeIndices];
  [*(v9 + 16) count];
  if ([*(v9 + 16) count] != v12 && MTLReportFailureTypeEnabled())
  {
    v338 = v12;
    v341 = [*(v9 + 16) count];
    MTLReportFailure();
  }

  v14 = [*(v9 + 232) inputTensorAtIndex:{0, v338, v341}];
  v15 = [*(v9 + 232) inputTensorAtIndex:1];
  v16 = [*(v9 + 232) outputTensorAtIndex:0];
  v17 = [*(v9 + 16) objectAtIndexedSubscript:0];
  v18 = [*(v9 + 16) objectAtIndexedSubscript:1];
  v19 = **(v15 + 16);
  if (*(*(v15 + 16) + 8) == v19)
  {
    goto LABEL_260;
  }

  v20 = v18;
  v391 = v11;
  v348 = *(v9 + 208);
  v21 = *v15;
  v22 = *v14;
  v396 = *v19;
  v389 = *v16;
  v394 = *v16 - v13;
  if ((*v16 < v13 || v21 <= v13 || v22 <= v13) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v400 = v22;
  v403 = v21;
  v23 = v14[2];
  v25 = *v23;
  v24 = v23[1];
  v349 = v9;
  v351 = v14;
  if (v24 != v25)
  {
    if (((v24 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_261;
  }

  v26 = v16[2];
  v28 = *v26;
  v27 = v26[1];
  v354 = v16;
  v408 = v13;
  if (v27 != v28)
  {
    if (((v27 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v29 = *(v15 + 16);
  v31 = *v29;
  v30 = v29[1];
  if (v30 != v31)
  {
    if (((v30 - v31) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v13)
  {
    v32 = v13 - 1;
    v33 = (8 * v403 - 8);
    v34 = (8 * v400 - 8);
    v35 = (8 * v389 - 8);
    do
    {
      v38 = *v35--;
      v37 = v38;
      v40 = *v34--;
      v39 = v40;
      v41 = v40 == v37 || v39 == 1;
      if (!v41 || (*v33 != v37 ? (v36 = *v33 == 1) : (v36 = 1), !v36))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v339 = v32;
          MTLReportFailure();
        }
      }

      --v32;
      --v33;
    }

    while (v32 != -1);
  }

  v42 = v400 - v13;
  if (v400 - v13 < v396 && MTLReportFailureTypeEnabled())
  {
    v339 = v400 - v13;
    v342 = v396;
    MTLReportFailure();
  }

  v43 = v403 + ~v13;
  if (v394 != v42 + v43 - v396 && MTLReportFailureTypeEnabled())
  {
    v342 = v403 + ~v13;
    v344 = v400 - v13 - v396;
    v339 = v394;
    MTLReportFailure();
  }

  v44 = v42 - v396;
  if (v42 != v396)
  {
    v50 = 0;
    if (v44 <= 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v42 - v396;
    }

    do
    {
      ++v50;
    }

    while (v51 != v50);
  }

  if (v43)
  {
    v45 = 0;
    do
    {
      v46 = v45 + 1;
      v47 = *(8 * v45 + 8);
      if (*(8 * v44 + 8 * v45) != v47 && v47 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v344 = v45 + 1;
          v346 = *(8 * v45 + 8);
          v339 = v44 + v45;
          v342 = *(8 * v44 + 8 * v45);
          MTLReportFailure();
        }
      }

      ++v45;
    }

    while (v43 != v46);
    operator delete(0);
  }

  v52 = **(v15 + 16);
  if (*(*(v15 + 16) + 8) == v52)
  {
LABEL_260:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v53 = *v351;
  __p = *v15;
  v404 = *v52;
  v54 = v408 + *v52;
  v55 = *(v351 + 2);
  if (v55 > 285212703)
  {
    if (v55 <= 536870915)
    {
      if (v55 > 301989895)
      {
        if (v55 == 301989896)
        {
          v56 = 512;
          v57 = v53 - v54;
          v58 = *(v15 + 8);
          if (v58 <= 285212703)
          {
            goto LABEL_109;
          }
        }

        else
        {
          if (v55 != 335544328)
          {
            goto LABEL_130;
          }

          v56 = 544;
          v57 = v53 - v54;
          v58 = *(v15 + 8);
          if (v58 <= 285212703)
          {
            goto LABEL_109;
          }
        }
      }

      else if (v55 == 285212704)
      {
        v56 = 416;
        v57 = v53 - v54;
        v58 = *(v15 + 8);
        if (v58 <= 285212703)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v55 != 285212736)
        {
          goto LABEL_130;
        }

        v56 = 448;
        v57 = v53 - v54;
        v58 = *(v15 + 8);
        if (v58 <= 285212703)
        {
          goto LABEL_109;
        }
      }
    }

    else if (v55 <= 536870927)
    {
      if (v55 == 536870916)
      {
        v56 = 0;
        v57 = v53 - v54;
        v58 = *(v15 + 8);
        if (v58 > 285212703)
        {
          goto LABEL_131;
        }

        goto LABEL_109;
      }

      if (v55 != 536870920)
      {
        goto LABEL_130;
      }

      v56 = 32;
      v57 = v53 - v54;
      v58 = *(v15 + 8);
      if (v58 <= 285212703)
      {
        goto LABEL_109;
      }
    }

    else
    {
      switch(v55)
      {
        case 536870928:
          v56 = 64;
          v57 = v53 - v54;
          v58 = *(v15 + 8);
          if (v58 <= 285212703)
          {
            goto LABEL_109;
          }

          break;
        case 536870944:
          v56 = 96;
          v57 = v53 - v54;
          v58 = *(v15 + 8);
          if (v58 <= 285212703)
          {
            goto LABEL_109;
          }

          break;
        case 536870976:
          v56 = 128;
          v57 = v53 - v54;
          v58 = *(v15 + 8);
          if (v58 <= 285212703)
          {
            goto LABEL_109;
          }

          break;
        default:
          goto LABEL_130;
      }
    }
  }

  else if (v55 <= 31)
  {
    if (v55 > 7)
    {
      if (v55 == 8)
      {
        v56 = 192;
        v57 = v53 - v54;
        v58 = *(v15 + 8);
        if (v58 <= 285212703)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v55 != 16)
        {
          goto LABEL_130;
        }

        v56 = 224;
        v57 = v53 - v54;
        v58 = *(v15 + 8);
        if (v58 <= 285212703)
        {
          goto LABEL_109;
        }
      }
    }

    else if (v55 == -1879048176)
    {
      v56 = 384;
      v57 = v53 - v54;
      v58 = *(v15 + 8);
      if (v58 <= 285212703)
      {
        goto LABEL_109;
      }
    }

    else
    {
      if (v55 != 4)
      {
        goto LABEL_130;
      }

      v56 = 160;
      v57 = v53 - v54;
      v58 = *(v15 + 8);
      if (v58 <= 285212703)
      {
        goto LABEL_109;
      }
    }
  }

  else if (v55 <= 268435463)
  {
    if (v55 == 32)
    {
      v56 = 256;
      v57 = v53 - v54;
      v58 = *(v15 + 8);
      if (v58 <= 285212703)
      {
        goto LABEL_109;
      }
    }

    else
    {
      if (v55 != 64)
      {
        goto LABEL_130;
      }

      v56 = 288;
      v57 = v53 - v54;
      v58 = *(v15 + 8);
      if (v58 <= 285212703)
      {
        goto LABEL_109;
      }
    }
  }

  else
  {
    switch(v55)
    {
      case 268435464:
        v56 = 480;
        v57 = v53 - v54;
        v58 = *(v15 + 8);
        if (v58 <= 285212703)
        {
          goto LABEL_109;
        }

        break;
      case 268435472:
        v56 = 320;
        v57 = v53 - v54;
        v58 = *(v15 + 8);
        if (v58 <= 285212703)
        {
          goto LABEL_109;
        }

        break;
      case 268435488:
        v56 = 352;
        v57 = v53 - v54;
        v58 = *(v15 + 8);
        if (v58 > 285212703)
        {
          break;
        }

LABEL_109:
        if (v58 <= 31)
        {
          if (v58 > 7)
          {
            if (v58 == 8)
            {
              v59 = 6144;
              goto LABEL_153;
            }

            if (v58 == 16)
            {
              v59 = 7168;
              goto LABEL_153;
            }
          }

          else
          {
            if (v58 == -1879048176)
            {
              v59 = 12288;
              goto LABEL_153;
            }

            if (v58 == 4)
            {
              v59 = 5120;
              goto LABEL_153;
            }
          }
        }

        else if (v58 <= 268435463)
        {
          if (v58 == 32)
          {
            v59 = 0x2000;
            goto LABEL_153;
          }

          if (v58 == 64)
          {
            v59 = 9216;
            goto LABEL_153;
          }
        }

        else
        {
          switch(v58)
          {
            case 268435464:
              v59 = 15360;
              goto LABEL_153;
            case 268435472:
              v59 = 10240;
              goto LABEL_153;
            case 268435488:
              v59 = 11264;
              goto LABEL_153;
          }
        }

        goto LABEL_152;
      default:
LABEL_130:
        v56 = 576;
        v57 = v53 - v54;
        v58 = *(v15 + 8);
        if (v58 > 285212703)
        {
          break;
        }

        goto LABEL_109;
    }
  }

LABEL_131:
  if (v58 <= 536870915)
  {
    if (v58 > 301989895)
    {
      if (v58 == 301989896)
      {
        v59 = 0x4000;
        goto LABEL_153;
      }

      if (v58 == 335544328)
      {
        v59 = 17408;
        goto LABEL_153;
      }
    }

    else
    {
      if (v58 == 285212704)
      {
        v59 = 13312;
        goto LABEL_153;
      }

      if (v58 == 285212736)
      {
        v59 = 14336;
        goto LABEL_153;
      }
    }
  }

  else if (v58 <= 536870927)
  {
    if (v58 == 536870916)
    {
      v59 = 0;
      goto LABEL_153;
    }

    if (v58 == 536870920)
    {
      v59 = 1024;
      goto LABEL_153;
    }
  }

  else
  {
    switch(v58)
    {
      case 536870928:
        v59 = 2048;
        goto LABEL_153;
      case 536870944:
        v59 = 3072;
        goto LABEL_153;
      case 536870976:
        v59 = 4096;
        goto LABEL_153;
    }
  }

LABEL_152:
  v59 = 18432;
LABEL_153:
  v60 = v59 | v56;
  v61 = *(v354 + 2);
  v401 = *v354;
  if (v61 > 285212703)
  {
    if (v61 <= 536870915)
    {
      if (v61 > 301989895)
      {
        if (v61 == 301989896)
        {
          v62 = 16;
          goto LABEL_197;
        }

        if (v61 == 335544328)
        {
          v62 = 17;
          goto LABEL_197;
        }
      }

      else
      {
        if (v61 == 285212704)
        {
          v62 = 13;
          goto LABEL_197;
        }

        if (v61 == 285212736)
        {
          v62 = 14;
          goto LABEL_197;
        }
      }
    }

    else if (v61 <= 536870927)
    {
      if (v61 == 536870916)
      {
        v62 = 0;
        goto LABEL_197;
      }

      if (v61 == 536870920)
      {
        v62 = 1;
        goto LABEL_197;
      }
    }

    else
    {
      switch(v61)
      {
        case 536870928:
          v62 = 2;
          goto LABEL_197;
        case 536870944:
          v62 = 3;
          goto LABEL_197;
        case 536870976:
          v62 = 4;
          goto LABEL_197;
      }
    }
  }

  else if (v61 <= 31)
  {
    if (v61 > 7)
    {
      if (v61 == 8)
      {
        v62 = 6;
        goto LABEL_197;
      }

      if (v61 == 16)
      {
        v62 = 7;
        goto LABEL_197;
      }
    }

    else
    {
      if (v61 == -1879048176)
      {
        v62 = 12;
        goto LABEL_197;
      }

      if (v61 == 4)
      {
        v62 = 5;
        goto LABEL_197;
      }
    }
  }

  else if (v61 <= 268435463)
  {
    if (v61 == 32)
    {
      v62 = 8;
      goto LABEL_197;
    }

    if (v61 == 64)
    {
      v62 = 9;
      goto LABEL_197;
    }
  }

  else
  {
    switch(v61)
    {
      case 268435464:
        v62 = 15;
        goto LABEL_197;
      case 268435472:
        v62 = 10;
        goto LABEL_197;
      case 268435488:
        v62 = 11;
        goto LABEL_197;
    }
  }

  v62 = 18;
LABEL_197:
  *&v63 = -1;
  *(&v63 + 1) = -1;
  v552 = v63;
  v551 = v63;
  v550 = v63;
  v548 = -1;
  v547 = v63;
  v549 = v60 | v62;
  v64 = [*(v349 + 16) count] | 0x10000;
  v65 = 16;
  if (!v398)
  {
    v65 = 0;
  }

  v66 = v57;
  *&v552 = v64;
  v548 = v57 | v65;
  v343 = *&v391[*MEMORY[0x277CD7360]];
  v345 = *&v391[*MEMORY[0x277CD7368]];
  v340 = *(v349 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v68 = PipelineStateForMPSKey;
  v347 = [PipelineStateForMPSKey threadExecutionWidth];
  [v350 setComputePipelineState:v68];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v350, v349, 4, 0, 0);
  v70 = v354[2];
  v71 = v70[1];
  if (v71 != *v70)
  {
    if (((v71 - *v70) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_261:
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v73 = *(v15 + 16);
  v75 = *v73;
  v74 = v73[1];
  if (v74 != v75)
  {
    if (((v74 - v75) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v356 = 0u;
  v357 = 0u;
  v355 = 0u;
  v76 = v408;
  if (__p < v408)
  {
    v79 = xmmword_239B0A0D0;
  }

  else
  {
    v77 = (8 * (__p + v53) - 8 * v404 - 16 * v408 - 8);
    v78 = __p - v408;
    v79 = xmmword_239B0A0D0;
    do
    {
      while (1)
      {
        v532[0] = v79;
        v69 = v79;
        v532[1] = v357;
        v532[2] = v355;
        v532[3] = v356;
        if (*(v532 + (v78 & 0xF)) != 1)
        {
          break;
        }

        v80 = *v77;
        v77 += 2;
        v528 = v79;
        v529 = v357;
        v530 = v355;
        v531 = v356;
        *(&v528 + (v78 & 0xF)) = v80;
        v69 = v531;
        v355 = v530;
        v356 = v531;
        v357 = v529;
        v79 = v528;
        ++v78;
        if (!--v76)
        {
          goto LABEL_214;
        }
      }

      ++v78;
      v77 += 2;
      --v76;
    }

    while (v76);
  }

LABEL_214:
  v353 = v79;
  v81 = 0;
  memset(v546, 0, sizeof(v546));
  memset(v545, 0, sizeof(v545));
  v534 = v401;
  v535 = __p;
  v536 = v404;
  v537 = v53;
  LODWORD(v69) = 1;
  v352 = v69;
  v538 = v408;
  v539 = v66;
  v540 = 0u;
  LOWORD(v540) = __p - v408 - 1;
  memset(v544, 0, sizeof(v544));
  memset(v543, 0, sizeof(v543));
  memset(v542, 0, sizeof(v542));
  memset(v541, 0, sizeof(v541));
  *(&v540 + 4) = 0x100000001;
  v82 = v351;
  do
  {
    makeStrideBytes();
    v116 = &v17[*MEMORY[0x277CD73D0]];
    v117.i64[0] = 0x100000001;
    v117.i64[1] = 0x100000001;
    v118 = vceqq_s32(*v116, v117);
    v119.i64[0] = v118.i32[0];
    v119.i64[1] = v118.i32[1];
    v120 = v119;
    v121 = vceqq_s32(v116[1], v117);
    v119.i64[0] = v121.i32[0];
    v119.i64[1] = v121.i32[1];
    v122 = v119;
    v123 = vceqq_s32(v116[2], v117);
    v119.i64[0] = v123.i32[0];
    v119.i64[1] = v123.i32[1];
    v124 = v119;
    v125 = vceqq_s32(v116[3], v117);
    v119.i64[0] = v125.i32[0];
    v119.i64[1] = v125.i32[1];
    v126 = v119;
    v119.i64[0] = v118.i32[2];
    v119.i64[1] = v118.i32[3];
    v127 = v119;
    v119.i64[0] = v121.i32[2];
    v119.i64[1] = v121.i32[3];
    v128 = v119;
    v119.i64[0] = v123.i32[2];
    v119.i64[1] = v123.i32[3];
    v129 = v119;
    v119.i64[0] = v125.i32[2];
    v119.i64[1] = v125.i32[3];
    v130 = vbicq_s8(v560, v119);
    v131 = vbicq_s8(v558, v129);
    v132 = vbicq_s8(v556, v128);
    v133 = vbicq_s8(v554, v127);
    v134 = vbicq_s8(v559, v126);
    v135 = vbicq_s8(v557, v124);
    v136 = vbicq_s8(v555, v122);
    v137 = *&v17[*MEMORY[0x277CD73C8]];
    v138 = *&v17[*MEMORY[0x277CD73D8]];
    v139 = BYTE1(*&v17[*MEMORY[0x277CD73D8]]);
    v140 = BYTE2(*&v17[*MEMORY[0x277CD73D8]]);
    v141 = BYTE3(*&v17[*MEMORY[0x277CD73D8]]);
    v142 = BYTE4(*&v17[*MEMORY[0x277CD73D8]]);
    v143 = WORD2(*&v17[*MEMORY[0x277CD73D8]]) >> 8;
    v144 = BYTE6(*&v17[*MEMORY[0x277CD73D8]]);
    v145 = HIBYTE(*&v17[*MEMORY[0x277CD73D8]]);
    v146 = *&v17[*MEMORY[0x277CD73D8] + 8];
    v147 = BYTE1(*&v17[*MEMORY[0x277CD73D8] + 8]);
    v148 = BYTE2(*&v17[*MEMORY[0x277CD73D8] + 8]);
    v149 = BYTE3(*&v17[*MEMORY[0x277CD73D8] + 8]);
    v150 = BYTE12(*&v17[*MEMORY[0x277CD73D8]]);
    v151 = WORD6(*&v17[*MEMORY[0x277CD73D8]]) >> 8;
    v152 = vbicq_s8(v553, v120);
    v153 = BYTE14(*&v17[*MEMORY[0x277CD73D8]]);
    v154 = HIBYTE(*&v17[*MEMORY[0x277CD73D8]]);
    if ((v137 & 0xFFF8) != 0)
    {
      v155 = v137 >> 3;
      v527[0] = v152;
      v527[1] = v133;
      v527[2] = v136;
      v527[3] = v132;
      v527[4] = v135;
      v527[5] = v131;
      v527[6] = v134;
      v527[7] = v130;
      v156 = *(v527 + (v138 & 0xF));
      v526[0] = v152;
      v526[1] = v133;
      v526[2] = v136;
      v526[3] = v132;
      v526[4] = v135;
      v526[5] = v131;
      v526[6] = v134;
      v526[7] = v130;
      v157 = *(v526 + (v139 & 0xF));
      v158 = v140 & 0xF;
      v525[0] = v152;
      v525[1] = v133;
      v525[2] = v136;
      v525[3] = v132;
      v525[4] = v135;
      v525[5] = v131;
      v525[6] = v134;
      v525[7] = v130;
      v159 = v148 & 0xF;
      v160 = *(v525 + v158);
      v161 = v149 & 0xF;
      v162 = v150 & 0xF;
      v163 = v151 & 0xF;
      v164 = v153 & 0xF;
      v524[0] = v152;
      v524[1] = v133;
      v524[2] = v136;
      v524[3] = v132;
      v524[4] = v135;
      v524[5] = v131;
      v524[6] = v134;
      v524[7] = v130;
      v165 = *(v524 + (v141 & 0xF));
      v523[0] = v152;
      v523[1] = v133;
      v523[2] = v136;
      v523[3] = v132;
      v523[4] = v135;
      v523[5] = v131;
      v523[6] = v134;
      v523[7] = v130;
      v166 = *(v523 + (v142 & 0xF));
      v522[0] = v152;
      v522[1] = v133;
      v522[2] = v136;
      v522[3] = v132;
      v522[4] = v135;
      v522[5] = v131;
      v522[6] = v134;
      v522[7] = v130;
      v167 = *(v522 + (v143 & 0xF));
      v521[0] = v152;
      v521[1] = v133;
      v521[2] = v136;
      v521[3] = v132;
      v521[4] = v135;
      v521[5] = v131;
      v521[6] = v134;
      v521[7] = v130;
      v168 = *(v521 + (v144 & 0xF));
      v520[0] = v152;
      v520[1] = v133;
      v520[2] = v136;
      v520[3] = v132;
      v520[4] = v135;
      v520[5] = v131;
      v520[6] = v134;
      v520[7] = v130;
      v169 = *(v520 + (v145 & 0xF));
      v519[0] = v152;
      v519[1] = v133;
      v519[2] = v136;
      v519[3] = v132;
      v519[4] = v135;
      v519[5] = v131;
      v519[6] = v134;
      v519[7] = v130;
      v170 = *(v519 + (v146 & 0xF));
      v518[0] = v152;
      v518[1] = v133;
      v518[2] = v136;
      v518[3] = v132;
      v518[4] = v135;
      v518[5] = v131;
      v518[6] = v134;
      v518[7] = v130;
      v171 = *(v518 + (v147 & 0xF));
      v517[0] = v152;
      v517[1] = v133;
      v517[2] = v136;
      v517[3] = v132;
      v517[4] = v135;
      v517[5] = v131;
      v517[6] = v134;
      v517[7] = v130;
      v172 = *(v517 + v159);
      v516[0] = v152;
      v516[1] = v133;
      v516[2] = v136;
      v516[3] = v132;
      v516[4] = v135;
      v516[5] = v131;
      v516[6] = v134;
      v516[7] = v130;
      v173 = *(v516 + v161);
      v515[0] = v152;
      v515[1] = v133;
      v515[2] = v136;
      v515[3] = v132;
      v515[4] = v135;
      v515[5] = v131;
      v515[6] = v134;
      v515[7] = v130;
      v174 = *(v515 + v162);
      v514[0] = v152;
      v514[1] = v133;
      v514[2] = v136;
      v514[3] = v132;
      v514[4] = v135;
      v514[5] = v131;
      v514[6] = v134;
      v514[7] = v130;
      v175 = *(v514 + v163);
      v513[0] = v152;
      v513[1] = v133;
      v513[2] = v136;
      v513[3] = v132;
      v513[4] = v135;
      v513[5] = v131;
      v513[6] = v134;
      v513[7] = v130;
      *&v176 = *(v513 + v164) / v155;
      *&v177 = v174 / v155;
      *&v178 = v172 / v155;
      v512[0] = v152;
      v512[1] = v133;
      v512[2] = v136;
      v512[3] = v132;
      v512[4] = v135;
      v512[5] = v131;
      v512[6] = v134;
      v512[7] = v130;
      *(&v176 + 1) = *(v512 + (v154 & 0xF)) / v155;
      *(&v177 + 1) = v175 / v155;
      v405 = v177;
      v406 = v176;
      *(&v178 + 1) = v173 / v155;
      *&v179 = v170 / v155;
      *(&v179 + 1) = v171 / v155;
      v399 = v179;
      v402 = v178;
      *&v179 = v168 / v155;
      *(&v179 + 1) = v169 / v155;
      v397 = v179;
      *&v179 = v166 / v155;
      *(&v179 + 1) = v167 / v155;
      v395 = v179;
      *&v179 = v160 / v155;
      *(&v179 + 1) = v165 / v155;
      v393 = v179;
      *&v180 = v156 / v155;
      *(&v180 + 1) = v157 / v155;
    }

    else
    {
      v511[0] = v152;
      v511[1] = v133;
      v511[2] = v136;
      v511[3] = v132;
      v511[4] = v135;
      v511[5] = v131;
      v511[6] = v134;
      v511[7] = v130;
      v510[0] = v152;
      v510[1] = v133;
      v510[2] = v136;
      v510[3] = v132;
      v510[4] = v135;
      v510[5] = v131;
      v510[6] = v134;
      v510[7] = v130;
      v509[0] = v152;
      v509[1] = v133;
      v509[2] = v136;
      v509[3] = v132;
      v509[4] = v135;
      v509[5] = v131;
      v509[6] = v134;
      v509[7] = v130;
      v508[0] = v152;
      v508[1] = v133;
      v508[2] = v136;
      v508[3] = v132;
      v508[4] = v135;
      v508[5] = v131;
      v508[6] = v134;
      v508[7] = v130;
      v507[0] = v152;
      v507[1] = v133;
      v507[2] = v136;
      v507[3] = v132;
      v507[4] = v135;
      v507[5] = v131;
      v507[6] = v134;
      v507[7] = v130;
      v506[0] = v152;
      v506[1] = v133;
      v506[2] = v136;
      v506[3] = v132;
      v506[4] = v135;
      v506[5] = v131;
      v506[6] = v134;
      v506[7] = v130;
      v505[0] = v152;
      v505[1] = v133;
      v505[2] = v136;
      v505[3] = v132;
      v505[4] = v135;
      v505[5] = v131;
      v505[6] = v134;
      v505[7] = v130;
      v504[0] = v152;
      v504[1] = v133;
      v504[2] = v136;
      v504[3] = v132;
      v504[4] = v135;
      v504[5] = v131;
      v504[6] = v134;
      v504[7] = v130;
      v503[0] = v152;
      v503[1] = v133;
      v503[2] = v136;
      v503[3] = v132;
      v503[4] = v135;
      v503[5] = v131;
      v503[6] = v134;
      v503[7] = v130;
      v502[0] = v152;
      v502[1] = v133;
      v502[2] = v136;
      v502[3] = v132;
      v502[4] = v135;
      v502[5] = v131;
      v502[6] = v134;
      v502[7] = v130;
      v501[0] = v152;
      v501[1] = v133;
      v501[2] = v136;
      v501[3] = v132;
      v501[4] = v135;
      v501[5] = v131;
      v501[6] = v134;
      v501[7] = v130;
      v500[0] = v152;
      v500[1] = v133;
      v500[2] = v136;
      v500[3] = v132;
      v500[4] = v135;
      v500[5] = v131;
      v500[6] = v134;
      v500[7] = v130;
      v499[0] = v152;
      v499[1] = v133;
      v499[2] = v136;
      v499[3] = v132;
      v499[4] = v135;
      v499[5] = v131;
      v499[6] = v134;
      v499[7] = v130;
      v498[0] = v152;
      v498[1] = v133;
      v498[2] = v136;
      v498[3] = v132;
      v498[4] = v135;
      v498[5] = v131;
      v498[6] = v134;
      v498[7] = v130;
      v497[0] = v152;
      v497[1] = v133;
      v497[2] = v136;
      v497[3] = v132;
      v497[4] = v135;
      v497[5] = v131;
      v497[6] = v134;
      v497[7] = v130;
      v496[0] = v152;
      v496[1] = v133;
      v496[2] = v136;
      v496[3] = v132;
      v496[4] = v135;
      v496[5] = v131;
      v496[6] = v134;
      v496[7] = v130;
      *&v181 = *(v497 + (v153 & 0xF));
      *&v182 = *(v499 + (v150 & 0xF));
      *(&v181 + 1) = *(v496 + (v154 & 0xF));
      v406 = v181;
      *(&v182 + 1) = *(v498 + (v151 & 0xF));
      v405 = v182;
      *&v181 = *(v501 + (v148 & 0xF));
      *(&v181 + 1) = *(v500 + (v149 & 0xF));
      v402 = v181;
      *&v181 = *(v503 + (v146 & 0xF));
      *(&v181 + 1) = *(v502 + (v147 & 0xF));
      v399 = v181;
      *&v181 = *(v505 + (v144 & 0xF));
      *(&v181 + 1) = *(v504 + (v145 & 0xF));
      v397 = v181;
      *&v181 = *(v507 + (v142 & 0xF));
      *(&v181 + 1) = *(v506 + (v143 & 0xF));
      v395 = v181;
      *&v181 = *(v509 + (v140 & 0xF));
      *(&v181 + 1) = *(v508 + (v141 & 0xF));
      v393 = v181;
      *&v180 = *(v511 + (v138 & 0xF));
      *(&v180 + 1) = *(v510 + (v139 & 0xF));
    }

    v392 = v180;
    makeStrideBytes();
    v183 = *MEMORY[0x277CD73D0];
    v184.i64[0] = 0x100000001;
    v184.i64[1] = 0x100000001;
    v185 = vceqq_s32(*&v20[v183], v184);
    v186.i64[0] = v185.i32[0];
    v186.i64[1] = v185.i32[1];
    v187 = v186;
    v188 = vceqq_s32(*&v20[v183 + 16], v184);
    v186.i64[0] = v188.i32[0];
    v186.i64[1] = v188.i32[1];
    v189 = v186;
    v190 = vceqq_s32(*&v20[v183 + 32], v184);
    v186.i64[0] = v190.i32[0];
    v186.i64[1] = v190.i32[1];
    v191 = v186;
    v192 = vceqq_s32(*&v20[v183 + 48], v184);
    v186.i64[0] = v192.i32[0];
    v186.i64[1] = v192.i32[1];
    v193 = v186;
    v186.i64[0] = v185.i32[2];
    v186.i64[1] = v185.i32[3];
    v194 = v186;
    v186.i64[0] = v188.i32[2];
    v186.i64[1] = v188.i32[3];
    v195 = v186;
    v186.i64[0] = v190.i32[2];
    v186.i64[1] = v190.i32[3];
    v196 = v186;
    v186.i64[0] = v192.i32[2];
    v186.i64[1] = v192.i32[3];
    v197 = vbicq_s8(v560, v186);
    v198 = vbicq_s8(v558, v196);
    v199 = vbicq_s8(v556, v195);
    v200 = vbicq_s8(v554, v194);
    v201 = vbicq_s8(v559, v193);
    v202 = vbicq_s8(v557, v191);
    v203 = vbicq_s8(v555, v189);
    v204 = *MEMORY[0x277CD73D8];
    v205 = *&v20[*MEMORY[0x277CD73C8]];
    v206 = *&v20[v204];
    v207 = BYTE1(*&v20[v204]);
    v208 = BYTE2(*&v20[v204]);
    v209 = BYTE3(*&v20[v204]);
    v210 = BYTE4(*&v20[v204]);
    v211 = WORD2(*&v20[v204]) >> 8;
    v212 = BYTE6(*&v20[v204]);
    v213 = HIBYTE(*&v20[v204]);
    v214 = *&v20[v204 + 8];
    v215 = BYTE1(*&v20[v204 + 8]);
    v216 = BYTE2(*&v20[v204 + 8]);
    v217 = BYTE3(*&v20[v204 + 8]);
    v218 = BYTE12(*&v20[v204]);
    v219 = WORD6(*&v20[v204]) >> 8;
    v220 = vbicq_s8(v553, v187);
    v221 = BYTE14(*&v20[v204]);
    v222 = HIBYTE(*&v20[v204]);
    if ((v205 & 0xFFF8) != 0)
    {
      v223 = v205 >> 3;
      v495[0] = v220;
      v495[1] = v200;
      v495[2] = v203;
      v495[3] = v199;
      v495[4] = v202;
      v495[5] = v198;
      v495[6] = v201;
      v495[7] = v197;
      v224 = *(v495 + (v206 & 0xF));
      v494[0] = v220;
      v494[1] = v200;
      v494[2] = v203;
      v494[3] = v199;
      v494[4] = v202;
      v494[5] = v198;
      v494[6] = v201;
      v494[7] = v197;
      v225 = *(v494 + (v207 & 0xF));
      v226 = v208 & 0xF;
      v493[0] = v220;
      v493[1] = v200;
      v493[2] = v203;
      v493[3] = v199;
      v493[4] = v202;
      v493[5] = v198;
      v493[6] = v201;
      v493[7] = v197;
      v227 = v216 & 0xF;
      v228 = *(v493 + v226);
      v229 = v217 & 0xF;
      v230 = v218 & 0xF;
      v231 = v219 & 0xF;
      v232 = v221 & 0xF;
      v492[0] = v220;
      v492[1] = v200;
      v492[2] = v203;
      v492[3] = v199;
      v492[4] = v202;
      v492[5] = v198;
      v492[6] = v201;
      v492[7] = v197;
      v233 = *(v492 + (v209 & 0xF));
      v491[0] = v220;
      v491[1] = v200;
      v491[2] = v203;
      v491[3] = v199;
      v491[4] = v202;
      v491[5] = v198;
      v491[6] = v201;
      v491[7] = v197;
      v234 = *(v491 + (v210 & 0xF));
      v490[0] = v220;
      v490[1] = v200;
      v490[2] = v203;
      v490[3] = v199;
      v490[4] = v202;
      v490[5] = v198;
      v490[6] = v201;
      v490[7] = v197;
      v235 = *(v490 + (v211 & 0xF));
      v489[0] = v220;
      v489[1] = v200;
      v489[2] = v203;
      v489[3] = v199;
      v489[4] = v202;
      v489[5] = v198;
      v489[6] = v201;
      v489[7] = v197;
      v236 = *(v489 + (v212 & 0xF));
      v488[0] = v220;
      v488[1] = v200;
      v488[2] = v203;
      v488[3] = v199;
      v488[4] = v202;
      v488[5] = v198;
      v488[6] = v201;
      v488[7] = v197;
      v237 = *(v488 + (v213 & 0xF));
      v487[0] = v220;
      v487[1] = v200;
      v487[2] = v203;
      v487[3] = v199;
      v487[4] = v202;
      v487[5] = v198;
      v487[6] = v201;
      v487[7] = v197;
      v238 = *(v487 + (v214 & 0xF));
      v486[0] = v220;
      v486[1] = v200;
      v486[2] = v203;
      v486[3] = v199;
      v486[4] = v202;
      v486[5] = v198;
      v486[6] = v201;
      v486[7] = v197;
      v239 = *(v486 + (v215 & 0xF));
      v485[0] = v220;
      v485[1] = v200;
      v485[2] = v203;
      v485[3] = v199;
      v485[4] = v202;
      v485[5] = v198;
      v485[6] = v201;
      v485[7] = v197;
      v240 = *(v485 + v227);
      v484[0] = v220;
      v484[1] = v200;
      v484[2] = v203;
      v484[3] = v199;
      v484[4] = v202;
      v484[5] = v198;
      v484[6] = v201;
      v484[7] = v197;
      v241 = *(v484 + v229);
      v483[0] = v220;
      v483[1] = v200;
      v483[2] = v203;
      v483[3] = v199;
      v483[4] = v202;
      v483[5] = v198;
      v483[6] = v201;
      v483[7] = v197;
      v242 = *(v483 + v230);
      v482[0] = v220;
      v482[1] = v200;
      v482[2] = v203;
      v482[3] = v199;
      v482[4] = v202;
      v482[5] = v198;
      v482[6] = v201;
      v482[7] = v197;
      v243 = *(v482 + v231);
      v481[0] = v220;
      v481[1] = v200;
      v481[2] = v203;
      v481[3] = v199;
      v481[4] = v202;
      v481[5] = v198;
      v481[6] = v201;
      v481[7] = v197;
      v244 = *(v481 + v232);
      v82 = v351;
      v245.i64[0] = v244 / v223;
      v246.i64[0] = v242 / v223;
      v247.i64[0] = v240 / v223;
      v480[0] = v220;
      v480[1] = v200;
      v480[2] = v203;
      v480[3] = v199;
      v480[4] = v202;
      v480[5] = v198;
      v480[6] = v201;
      v480[7] = v197;
      v245.i64[1] = *(v480 + (v222 & 0xF)) / v223;
      v246.i64[1] = v243 / v223;
      v388 = v246;
      v390 = v245;
      v247.i64[1] = v241 / v223;
      v248.i64[0] = v238 / v223;
      v248.i64[1] = v239 / v223;
      v386 = v248;
      v387 = v247;
      v248.i64[0] = v236 / v223;
      v248.i64[1] = v237 / v223;
      v385 = v248;
      v248.i64[0] = v234 / v223;
      v248.i64[1] = v235 / v223;
      v384 = v248;
      v248.i64[0] = v228 / v223;
      v248.i64[1] = v233 / v223;
      v383 = v248;
      v249.i64[0] = v224 / v223;
      v249.i64[1] = v225 / v223;
    }

    else
    {
      v479[0] = v220;
      v479[1] = v200;
      v479[2] = v203;
      v479[3] = v199;
      v479[4] = v202;
      v479[5] = v198;
      v479[6] = v201;
      v479[7] = v197;
      v478[0] = v220;
      v478[1] = v200;
      v478[2] = v203;
      v478[3] = v199;
      v478[4] = v202;
      v478[5] = v198;
      v478[6] = v201;
      v478[7] = v197;
      v477[0] = v220;
      v477[1] = v200;
      v477[2] = v203;
      v477[3] = v199;
      v477[4] = v202;
      v477[5] = v198;
      v477[6] = v201;
      v477[7] = v197;
      v476[0] = v220;
      v476[1] = v200;
      v476[2] = v203;
      v476[3] = v199;
      v476[4] = v202;
      v476[5] = v198;
      v476[6] = v201;
      v476[7] = v197;
      v475[0] = v220;
      v475[1] = v200;
      v475[2] = v203;
      v475[3] = v199;
      v475[4] = v202;
      v475[5] = v198;
      v475[6] = v201;
      v475[7] = v197;
      v474[0] = v220;
      v474[1] = v200;
      v474[2] = v203;
      v474[3] = v199;
      v474[4] = v202;
      v474[5] = v198;
      v474[6] = v201;
      v474[7] = v197;
      v473[0] = v220;
      v473[1] = v200;
      v473[2] = v203;
      v473[3] = v199;
      v473[4] = v202;
      v473[5] = v198;
      v473[6] = v201;
      v473[7] = v197;
      v472[0] = v220;
      v472[1] = v200;
      v472[2] = v203;
      v472[3] = v199;
      v472[4] = v202;
      v472[5] = v198;
      v472[6] = v201;
      v472[7] = v197;
      v471[0] = v220;
      v471[1] = v200;
      v471[2] = v203;
      v471[3] = v199;
      v471[4] = v202;
      v471[5] = v198;
      v471[6] = v201;
      v471[7] = v197;
      v470[0] = v220;
      v470[1] = v200;
      v470[2] = v203;
      v470[3] = v199;
      v470[4] = v202;
      v470[5] = v198;
      v470[6] = v201;
      v470[7] = v197;
      v469[0] = v220;
      v469[1] = v200;
      v469[2] = v203;
      v469[3] = v199;
      v469[4] = v202;
      v469[5] = v198;
      v469[6] = v201;
      v469[7] = v197;
      v468[0] = v220;
      v468[1] = v200;
      v468[2] = v203;
      v468[3] = v199;
      v468[4] = v202;
      v468[5] = v198;
      v468[6] = v201;
      v468[7] = v197;
      v467[0] = v220;
      v467[1] = v200;
      v467[2] = v203;
      v467[3] = v199;
      v467[4] = v202;
      v467[5] = v198;
      v467[6] = v201;
      v467[7] = v197;
      v466[0] = v220;
      v466[1] = v200;
      v466[2] = v203;
      v466[3] = v199;
      v466[4] = v202;
      v466[5] = v198;
      v466[6] = v201;
      v466[7] = v197;
      v465[0] = v220;
      v465[1] = v200;
      v465[2] = v203;
      v465[3] = v199;
      v465[4] = v202;
      v465[5] = v198;
      v465[6] = v201;
      v465[7] = v197;
      v464[0] = v220;
      v464[1] = v200;
      v464[2] = v203;
      v464[3] = v199;
      v464[4] = v202;
      v464[5] = v198;
      v464[6] = v201;
      v464[7] = v197;
      v250.i64[0] = *(v465 + (v221 & 0xF));
      v251.i64[0] = *(v467 + (v218 & 0xF));
      v250.i64[1] = *(v464 + (v222 & 0xF));
      v390 = v250;
      v251.i64[1] = *(v466 + (v219 & 0xF));
      v388 = v251;
      v250.i64[0] = *(v469 + (v216 & 0xF));
      v250.i64[1] = *(v468 + (v217 & 0xF));
      v387 = v250;
      v250.i64[0] = *(v471 + (v214 & 0xF));
      v250.i64[1] = *(v470 + (v215 & 0xF));
      v386 = v250;
      v250.i64[0] = *(v473 + (v212 & 0xF));
      v250.i64[1] = *(v472 + (v213 & 0xF));
      v385 = v250;
      v250.i64[0] = *(v475 + (v210 & 0xF));
      v250.i64[1] = *(v474 + (v211 & 0xF));
      v384 = v250;
      v250.i64[0] = *(v477 + (v208 & 0xF));
      v250.i64[1] = *(v476 + (v209 & 0xF));
      v383 = v250;
      v249.i64[0] = *(v479 + (v206 & 0xF));
      v249.i64[1] = *(v478 + (v207 & 0xF));
    }

    v382 = v249;
    v252 = *&v20[v204];
    v253 = &v20[v183];
    v254 = *v253;
    v255 = v253[1];
    v256 = v253[2];
    v463 = v253[3];
    v462[2] = v256;
    v462[1] = v255;
    v462[0] = v254;
    v200.i32[0] = *(v462 + (v252 & 0xF));
    v379 = v200;
    v461[3] = v463;
    v461[2] = v256;
    v461[1] = v255;
    v461[0] = v254;
    v200.i32[0] = *(v461 + (BYTE1(v252) & 0xF));
    v378 = v200;
    v460[3] = v463;
    v460[2] = v256;
    v460[1] = v255;
    v460[0] = v254;
    v200.i32[0] = *(v460 + (BYTE2(v252) & 0xF));
    v381 = v200;
    v459[3] = v463;
    v459[2] = v256;
    v459[1] = v255;
    v459[0] = v254;
    v200.i32[0] = *(v459 + (BYTE3(v252) & 0xF));
    v380 = v200;
    v458[3] = v463;
    v458[2] = v256;
    v458[1] = v255;
    v458[0] = v254;
    v200.i32[0] = *(v458 + (BYTE4(v252) & 0xF));
    v372 = v200;
    v457[3] = v463;
    v457[2] = v256;
    v457[1] = v255;
    v457[0] = v254;
    v200.i32[0] = *(v457 + (BYTE5(v252) & 0xF));
    v371 = v200;
    v456[3] = v463;
    v456[2] = v256;
    v456[1] = v255;
    v456[0] = v254;
    v200.i32[0] = *(v456 + (BYTE6(v252) & 0xF));
    v376 = v200;
    v455[3] = v463;
    v455[2] = v256;
    v455[1] = v255;
    v455[0] = v254;
    v200.i32[0] = *(v455 + (BYTE7(v252) & 0xF));
    v377 = v200;
    v454[3] = v463;
    v454[2] = v256;
    v454[1] = v255;
    v454[0] = v254;
    v200.i32[0] = *(v454 + (BYTE8(v252) & 0xF));
    v375 = v200;
    v453[3] = v463;
    v453[2] = v256;
    v453[1] = v255;
    v453[0] = v254;
    v200.i32[0] = *(v453 + (BYTE9(v252) & 0xF));
    v374 = v200;
    v452[3] = v463;
    v452[2] = v256;
    v452[1] = v255;
    v452[0] = v254;
    v200.i32[0] = *(v452 + (BYTE10(v252) & 0xF));
    v373 = v200;
    v451[3] = v463;
    v451[2] = v256;
    v451[1] = v255;
    v451[0] = v254;
    v200.i32[0] = *(v451 + (BYTE11(v252) & 0xF));
    v370 = v200;
    v450[3] = v463;
    v450[2] = v256;
    v450[1] = v255;
    v450[0] = v254;
    v200.i32[0] = *(v450 + (BYTE12(v252) & 0xF));
    v369 = v200;
    v449[3] = v463;
    v449[2] = v256;
    v449[1] = v255;
    v449[0] = v254;
    v200.i32[0] = *(v449 + (BYTE13(v252) & 0xF));
    v368 = v200;
    v448[3] = v463;
    v448[2] = v256;
    v448[1] = v255;
    v448[0] = v254;
    v200.i32[0] = *(v448 + (BYTE14(v252) & 0xF));
    v367 = v200;
    v447[3] = v463;
    v447[2] = v256;
    v447[1] = v255;
    v447[0] = v254;
    v254.i32[0] = *(v447 + (HIBYTE(v252) & 0xF));
    v366 = v254;
    makeStrideBytes();
    v257 = &v348[*MEMORY[0x277CD73D0]];
    v258.i64[0] = 0x100000001;
    v258.i64[1] = 0x100000001;
    v259 = vceqq_s32(*v257, v258);
    v260.i64[0] = v259.i32[0];
    v260.i64[1] = v259.i32[1];
    v261 = v260;
    v262 = vceqq_s32(v257[1], v258);
    v260.i64[0] = v262.i32[0];
    v260.i64[1] = v262.i32[1];
    v263 = v260;
    v264 = vceqq_s32(v257[2], v258);
    v260.i64[0] = v264.i32[0];
    v260.i64[1] = v264.i32[1];
    v265 = v260;
    v266 = vceqq_s32(v257[3], v258);
    v260.i64[0] = v266.i32[0];
    v260.i64[1] = v266.i32[1];
    v267 = v260;
    v260.i64[0] = v259.i32[2];
    v260.i64[1] = v259.i32[3];
    v268 = v260;
    v260.i64[0] = v262.i32[2];
    v260.i64[1] = v262.i32[3];
    v269 = v260;
    v260.i64[0] = v264.i32[2];
    v260.i64[1] = v264.i32[3];
    v270 = v260;
    v260.i64[0] = v266.i32[2];
    v260.i64[1] = v266.i32[3];
    v271 = vbicq_s8(v560, v260);
    v272 = vbicq_s8(v558, v270);
    v273 = vbicq_s8(v556, v269);
    v274 = vbicq_s8(v554, v268);
    v275 = vbicq_s8(v559, v267);
    v276 = vbicq_s8(v557, v265);
    v277 = vbicq_s8(v555, v263);
    v278 = *&v348[*MEMORY[0x277CD73C8]];
    v279 = *&v348[*MEMORY[0x277CD73D8]];
    v280 = BYTE1(*&v348[*MEMORY[0x277CD73D8]]);
    v281 = BYTE2(*&v348[*MEMORY[0x277CD73D8]]);
    v282 = BYTE3(*&v348[*MEMORY[0x277CD73D8]]);
    v283 = BYTE4(*&v348[*MEMORY[0x277CD73D8]]);
    v284 = WORD2(*&v348[*MEMORY[0x277CD73D8]]) >> 8;
    v285 = BYTE6(*&v348[*MEMORY[0x277CD73D8]]);
    v286 = HIBYTE(*&v348[*MEMORY[0x277CD73D8]]);
    v287 = *&v348[*MEMORY[0x277CD73D8] + 8];
    v288 = BYTE1(*&v348[*MEMORY[0x277CD73D8] + 8]);
    v289 = BYTE2(*&v348[*MEMORY[0x277CD73D8] + 8]);
    v290 = BYTE3(*&v348[*MEMORY[0x277CD73D8] + 8]);
    v291 = BYTE12(*&v348[*MEMORY[0x277CD73D8]]);
    v292 = WORD6(*&v348[*MEMORY[0x277CD73D8]]) >> 8;
    v293 = vbicq_s8(v553, v261);
    v294 = BYTE14(*&v348[*MEMORY[0x277CD73D8]]);
    v295 = HIBYTE(*&v348[*MEMORY[0x277CD73D8]]);
    if ((v278 & 0xFFF8) != 0)
    {
      v296 = v278 >> 3;
      v446[0] = v293;
      v446[1] = v274;
      v446[2] = v277;
      v446[3] = v273;
      v446[4] = v276;
      v446[5] = v272;
      v446[6] = v275;
      v446[7] = v271;
      v297 = *(v446 + (v279 & 0xF));
      v445[0] = v293;
      v445[1] = v274;
      v445[2] = v277;
      v445[3] = v273;
      v445[4] = v276;
      v445[5] = v272;
      v445[6] = v275;
      v445[7] = v271;
      v298 = *(v445 + (v280 & 0xF));
      v299 = v281 & 0xF;
      v444[0] = v293;
      v444[1] = v274;
      v444[2] = v277;
      v444[3] = v273;
      v444[4] = v276;
      v444[5] = v272;
      v444[6] = v275;
      v444[7] = v271;
      v300 = v289 & 0xF;
      v301 = *(v444 + v299);
      v302 = v290 & 0xF;
      v303 = v291 & 0xF;
      v304 = v292 & 0xF;
      v305 = v294 & 0xF;
      v443[0] = v293;
      v443[1] = v274;
      v443[2] = v277;
      v443[3] = v273;
      v443[4] = v276;
      v443[5] = v272;
      v443[6] = v275;
      v443[7] = v271;
      v306 = *(v443 + (v282 & 0xF));
      v442[0] = v293;
      v442[1] = v274;
      v442[2] = v277;
      v442[3] = v273;
      v442[4] = v276;
      v442[5] = v272;
      v442[6] = v275;
      v442[7] = v271;
      v307 = *(v442 + (v283 & 0xF));
      v441[0] = v293;
      v441[1] = v274;
      v441[2] = v277;
      v441[3] = v273;
      v441[4] = v276;
      v441[5] = v272;
      v441[6] = v275;
      v441[7] = v271;
      v308 = *(v441 + (v284 & 0xF));
      v440[0] = v293;
      v440[1] = v274;
      v440[2] = v277;
      v440[3] = v273;
      v440[4] = v276;
      v440[5] = v272;
      v440[6] = v275;
      v440[7] = v271;
      v309 = *(v440 + (v285 & 0xF));
      v439[0] = v293;
      v439[1] = v274;
      v439[2] = v277;
      v439[3] = v273;
      v439[4] = v276;
      v439[5] = v272;
      v439[6] = v275;
      v439[7] = v271;
      v310 = *(v439 + (v286 & 0xF));
      v438[0] = v293;
      v438[1] = v274;
      v438[2] = v277;
      v438[3] = v273;
      v438[4] = v276;
      v438[5] = v272;
      v438[6] = v275;
      v438[7] = v271;
      v311 = *(v438 + (v287 & 0xF));
      v437[0] = v293;
      v437[1] = v274;
      v437[2] = v277;
      v437[3] = v273;
      v437[4] = v276;
      v437[5] = v272;
      v437[6] = v275;
      v437[7] = v271;
      v312 = *(v437 + (v288 & 0xF));
      v436[0] = v293;
      v436[1] = v274;
      v436[2] = v277;
      v436[3] = v273;
      v436[4] = v276;
      v436[5] = v272;
      v436[6] = v275;
      v436[7] = v271;
      v313 = *(v436 + v300);
      v435[0] = v293;
      v435[1] = v274;
      v435[2] = v277;
      v435[3] = v273;
      v435[4] = v276;
      v435[5] = v272;
      v435[6] = v275;
      v435[7] = v271;
      v314 = *(v435 + v302);
      v434[0] = v293;
      v434[1] = v274;
      v434[2] = v277;
      v434[3] = v273;
      v434[4] = v276;
      v434[5] = v272;
      v434[6] = v275;
      v434[7] = v271;
      v315 = *(v434 + v303);
      v433[0] = v293;
      v433[1] = v274;
      v433[2] = v277;
      v433[3] = v273;
      v433[4] = v276;
      v433[5] = v272;
      v433[6] = v275;
      v433[7] = v271;
      v316 = *(v433 + v304);
      v432[0] = v293;
      v432[1] = v274;
      v432[2] = v277;
      v432[3] = v273;
      v432[4] = v276;
      v432[5] = v272;
      v432[6] = v275;
      v432[7] = v271;
      *&v317 = *(v432 + v305) / v296;
      *&v318 = v315 / v296;
      *&v319 = v313 / v296;
      v431[0] = v293;
      v431[1] = v274;
      v431[2] = v277;
      v431[3] = v273;
      v431[4] = v276;
      v431[5] = v272;
      v431[6] = v275;
      v431[7] = v271;
      *(&v317 + 1) = *(v431 + (v295 & 0xF)) / v296;
      *(&v318 + 1) = v316 / v296;
      v364 = v318;
      v365 = v317;
      *(&v319 + 1) = v314 / v296;
      *&v320 = v311 / v296;
      *(&v320 + 1) = v312 / v296;
      v362 = v320;
      v363 = v319;
      *&v320 = v309 / v296;
      *(&v320 + 1) = v310 / v296;
      v361 = v320;
      *&v320 = v307 / v296;
      *(&v320 + 1) = v308 / v296;
      v360 = v320;
      *&v320 = v301 / v296;
      *(&v320 + 1) = v306 / v296;
      v359 = v320;
      *&v321 = v297 / v296;
      *(&v321 + 1) = v298 / v296;
    }

    else
    {
      v430[0] = v293;
      v430[1] = v274;
      v430[2] = v277;
      v430[3] = v273;
      v430[4] = v276;
      v430[5] = v272;
      v430[6] = v275;
      v430[7] = v271;
      v429[0] = v293;
      v429[1] = v274;
      v429[2] = v277;
      v429[3] = v273;
      v429[4] = v276;
      v429[5] = v272;
      v429[6] = v275;
      v429[7] = v271;
      v428[0] = v293;
      v428[1] = v274;
      v428[2] = v277;
      v428[3] = v273;
      v428[4] = v276;
      v428[5] = v272;
      v428[6] = v275;
      v428[7] = v271;
      v427[0] = v293;
      v427[1] = v274;
      v427[2] = v277;
      v427[3] = v273;
      v427[4] = v276;
      v427[5] = v272;
      v427[6] = v275;
      v427[7] = v271;
      v426[0] = v293;
      v426[1] = v274;
      v426[2] = v277;
      v426[3] = v273;
      v426[4] = v276;
      v426[5] = v272;
      v426[6] = v275;
      v426[7] = v271;
      v425[0] = v293;
      v425[1] = v274;
      v425[2] = v277;
      v425[3] = v273;
      v425[4] = v276;
      v425[5] = v272;
      v425[6] = v275;
      v425[7] = v271;
      v424[0] = v293;
      v424[1] = v274;
      v424[2] = v277;
      v424[3] = v273;
      v424[4] = v276;
      v424[5] = v272;
      v424[6] = v275;
      v424[7] = v271;
      v423[0] = v293;
      v423[1] = v274;
      v423[2] = v277;
      v423[3] = v273;
      v423[4] = v276;
      v423[5] = v272;
      v423[6] = v275;
      v423[7] = v271;
      v422[0] = v293;
      v422[1] = v274;
      v422[2] = v277;
      v422[3] = v273;
      v422[4] = v276;
      v422[5] = v272;
      v422[6] = v275;
      v422[7] = v271;
      v421[0] = v293;
      v421[1] = v274;
      v421[2] = v277;
      v421[3] = v273;
      v421[4] = v276;
      v421[5] = v272;
      v421[6] = v275;
      v421[7] = v271;
      v420[0] = v293;
      v420[1] = v274;
      v420[2] = v277;
      v420[3] = v273;
      v420[4] = v276;
      v420[5] = v272;
      v420[6] = v275;
      v420[7] = v271;
      v419[0] = v293;
      v419[1] = v274;
      v419[2] = v277;
      v419[3] = v273;
      v419[4] = v276;
      v419[5] = v272;
      v419[6] = v275;
      v419[7] = v271;
      v418[0] = v293;
      v418[1] = v274;
      v418[2] = v277;
      v418[3] = v273;
      v418[4] = v276;
      v418[5] = v272;
      v418[6] = v275;
      v418[7] = v271;
      v417[0] = v293;
      v417[1] = v274;
      v417[2] = v277;
      v417[3] = v273;
      v417[4] = v276;
      v417[5] = v272;
      v417[6] = v275;
      v417[7] = v271;
      v416[0] = v293;
      v416[1] = v274;
      v416[2] = v277;
      v416[3] = v273;
      v416[4] = v276;
      v416[5] = v272;
      v416[6] = v275;
      v416[7] = v271;
      v415[0] = v293;
      v415[1] = v274;
      v415[2] = v277;
      v415[3] = v273;
      v415[4] = v276;
      v415[5] = v272;
      v415[6] = v275;
      v415[7] = v271;
      *&v322 = *(v416 + (v294 & 0xF));
      *&v323 = *(v418 + (v291 & 0xF));
      *(&v322 + 1) = *(v415 + (v295 & 0xF));
      v365 = v322;
      *(&v323 + 1) = *(v417 + (v292 & 0xF));
      v364 = v323;
      *&v322 = *(v420 + (v289 & 0xF));
      *(&v322 + 1) = *(v419 + (v290 & 0xF));
      v363 = v322;
      *&v322 = *(v422 + (v287 & 0xF));
      *(&v322 + 1) = *(v421 + (v288 & 0xF));
      v362 = v322;
      *&v322 = *(v424 + (v285 & 0xF));
      *(&v322 + 1) = *(v423 + (v286 & 0xF));
      v361 = v322;
      *&v322 = *(v426 + (v283 & 0xF));
      *(&v322 + 1) = *(v425 + (v284 & 0xF));
      v360 = v322;
      *&v322 = *(v428 + (v281 & 0xF));
      *(&v322 + 1) = *(v427 + (v282 & 0xF));
      v359 = v322;
      *&v321 = *(v430 + (v279 & 0xF));
      *(&v321 + 1) = *(v429 + (v280 & 0xF));
    }

    v358 = v321;
    v324 = v82[2];
    v326 = *v324;
    v325 = v324[1];
    if (v325 != v326)
    {
      if (((v325 - v326) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v327 = v354[2];
    v329 = *v327;
    v328 = v327[1];
    if (v328 != v329)
    {
      if (((v328 - v329) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v83 = vuzp1q_s32(v388, v390);
    v84 = vuzp1q_s32(v386, v387);
    v85 = vuzp1q_s32(v384, v385);
    v414[0] = v392;
    v414[1] = v393;
    v414[2] = v395;
    v414[3] = v397;
    v86 = vuzp1q_s32(v382, v383);
    v414[4] = v399;
    v414[5] = v402;
    v414[6] = v405;
    v414[7] = v406;
    v87 = v86;
    v87.i32[0] = 0;
    v88 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v379, v352), 0), v87, v86);
    v89 = v88;
    v89.i32[1] = 0;
    v90 = v85;
    v90.i32[0] = 0;
    v91 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v378, v352), 0), v89, v88);
    v92 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v372, v352), 0), v90, v85);
    v93 = v92;
    v93.i32[1] = 0;
    v94 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v371, v352), 0), v93, v92);
    v95 = v91;
    v95.i32[2] = 0;
    v96 = v94;
    v96.i32[2] = 0;
    v97 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v381, v352), 0), v95, v91);
    v98 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v376, v352), 0), v96, v94);
    v99 = v97;
    v99.i32[3] = 0;
    v100 = v84;
    v100.i32[0] = 0;
    v101 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v375, v352), 0), v100, v84);
    v102 = v98;
    v102.i32[3] = 0;
    v103 = v101;
    v103.i32[1] = 0;
    v104 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v374, v352), 0), v103, v101);
    v105 = v104;
    v105.i32[2] = 0;
    v106 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v373, v352), 0), v105, v104);
    v107 = v106;
    v107.i32[3] = 0;
    v108 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v377, v352), 0), v102, v98);
    v109 = v83;
    v109.i32[0] = 0;
    v110 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v369, v352), 0), v109, v83);
    v111 = v110;
    v111.i32[1] = 0;
    v112 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v368, v352), 0), v111, v110);
    v113 = v112;
    v113.i32[2] = 0;
    v114 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v367, v352), 0), v113, v112);
    v115 = v114;
    v115.i32[3] = 0;
    v541[v81] = *(v414 + (v81 & 0xF));
    v413[0] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v380, v352), 0), v99, v97);
    v413[1] = v108;
    v413[2] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v370, v352), 0), v107, v106);
    v413[3] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v366, v352), 0), v115, v114);
    v542[v81] = *(v413 + (v81 & 0xF));
    v412[0] = v358;
    v412[1] = v359;
    v412[2] = v360;
    v412[3] = v361;
    v412[4] = v362;
    v412[5] = v363;
    v412[6] = v364;
    v412[7] = v365;
    v543[v81] = *(v412 + (v81 & 0xF));
    v411[0] = v353;
    v411[1] = v357;
    v411[2] = v355;
    v411[3] = v356;
    v544[v81] = *(v411 + (v81 & 0xF));
    v410[0] = xmmword_239B0A0D0;
    memset(&v410[1], 0, 48);
    v545[v81] = *(v410 + (v81 & 0xF));
    v409[0] = xmmword_239B0A0D0;
    memset(&v409[1], 0, 48);
    v546[v81] = *(v409 + (v81 & 0xF));
    ++v81;
  }

  while (v81 != 16);
  v330 = v347 >> 3;
  LODWORD(v331) = (DWORD2(v540) + 7) >> 3;
  HIDWORD(v540) = v331;
  v332 = (DWORD2(v540) + 7) & 0xFFFFFFF8;
  if (DWORD2(v540) <= v332 >> 1)
  {
    LODWORD(v331) = (DWORD2(v540) + 3) >> 2;
    if (DWORD2(v540) <= 2 * v331)
    {
      LODWORD(v331) = (DWORD2(v540) + 1) >> 1;
      if (v331 >= DWORD2(v540))
      {
        v330 = v347 & 0xFFFFFFFFFFFFFFF8;
        v333 = 1;
        LODWORD(v331) = DWORD2(v540);
        v332 = DWORD2(v540);
      }

      else
      {
        v330 *= 4;
        v332 = (DWORD2(v540) + 1) & 0xFFFFFFFE;
        v333 = 2;
      }
    }

    else
    {
      v330 *= 2;
      v332 = 4 * ((DWORD2(v540) + 3) >> 2);
      v333 = 4;
    }

    HIDWORD(v540) = v331;
    v334 = DWORD1(v540);
    if (v330 < 2)
    {
      goto LABEL_244;
    }

LABEL_240:
    v335 = v330 >> 1;
    if (v330 >> 1 >= v334)
    {
      do
      {
        v330 = v335;
        v333 *= 2;
        if (v335 < 2)
        {
          break;
        }

        v335 >>= 1;
      }

      while (v330 >> 1 >= v334);
      v331 = (DWORD2(v540) + v333 - 1) / v333;
      HIDWORD(v540) = v331;
      v332 = v331 * v333;
    }

    goto LABEL_244;
  }

  v333 = 8;
  v334 = DWORD1(v540);
  if (v330 >= 2)
  {
    goto LABEL_240;
  }

LABEL_244:
  v336 = 1;
  if (v332 >= 0x400)
  {
    if (v331 >= 2)
    {
      do
      {
        v337 = v331 + 1;
        v331 = (v331 + 1) >> 1;
        v336 *= 2;
      }

      while (v337 >= 4 && v333 * v331 > 0x3FF);
    }

    HIDWORD(v540) = v331;
  }

  [v350 setBuffer:objc_msgSend(v17 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v17, 0, 16, 0, 0) + *(*(v349 + 8) + 64), 0}];
  [v350 setBuffer:objc_msgSend(v20 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v20, 0, 16, 0, 0) + *(*(v349 + 8) + 144), 1}];
  [v350 setBuffer:objc_msgSend(v348 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v348, 0, 16, 0, 0) + *(v349 + 192), 2}];
  objc_msgSend_setBytes_length_atIndex_(v350);
  v553.i64[0] = v336;
  v553.i64[1] = (v334 + v330 - 1) / v330;
  v554.i64[0] = 1;
  v533[0] = v333;
  v533[1] = v330;
  v533[2] = 1;
  [v350 dispatchThreadgroups:&v553 threadsPerThreadgroup:v533];
  return 0;
}

void sub_239A2C2C0(_Unwind_Exception *a1)
{
  if (STACK[0x3D0])
  {
    operator delete(STACK[0x3D0]);
    if (!v1)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v2);
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t EncodeGatherNDGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v7;
  v536[1] = *MEMORY[0x277D85DE8];
  v17 = v7[11];
  v361 = [v7 batchDimensions];
  v364 = v16;
  v18 = [v16 allowNegativeIndices];
  [*(v11 + 16) count];
  if ([*(v11 + 16) count] != v17 && MTLReportFailureTypeEnabled())
  {
    v307 = v17;
    v310 = [*(v11 + 16) count];
    MTLReportFailure();
  }

  v19 = [*(v11 + 232) inputTensorAtIndex:{2, v307, v310}];
  v20 = [*(v11 + 232) inputTensorAtIndex:1];
  v21 = [*(v11 + 232) outputTensorAtIndex:0];
  v22 = *(v11 + 112);
  v23 = [*(v11 + 16) objectAtIndexedSubscript:1];
  v24 = **(v20 + 16);
  if (*(*(v20 + 16) + 8) == v24)
  {
    goto LABEL_270;
  }

  v25 = v23;
  v357 = v18;
  v371 = v11;
  v374 = *(v11 + 208);
  v372 = v21;
  v26 = *v21;
  v375 = v20;
  v27 = *v20;
  v373 = v19;
  v28 = *v19;
  v29 = *v24;
  v30 = v26 - *v24;
  if (v26 < *v24 && MTLReportFailureTypeEnabled())
  {
    v308 = v26;
    v311 = v29;
    MTLReportFailure();
  }

  v366 = v25;
  if (v28 != v27 - 1 + v26 - v29 && MTLReportFailureTypeEnabled())
  {
    v311 = v27 - 1;
    v313 = v30;
    v308 = v28;
    MTLReportFailure();
  }

  v31 = v373[2];
  v33 = *v31;
  v32 = v31[1];
  v354 = v22;
  if (v32 != v33)
  {
    if (((v32 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v34 = v372[2];
  v36 = *v34;
  v35 = v34[1];
  if (v35 != v36)
  {
    if (((v35 - v36) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v363 = v15;
  v360 = v13;
  v37 = v26 - v29;
  if (v26 != v29)
  {
    v52 = 0;
    do
    {
      ++v52;
    }

    while (v37 != v52);
  }

  v38 = *(v375 + 16);
  v40 = *v38;
  v39 = v38[1];
  if (v39 != v40)
  {
    if (((v39 - v40) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v27 != 1)
  {
    v53 = (-8 * v29 + 8 * v26);
    for (i = 1; i != v27; ++i)
    {
      if (*v53 != *(8 * i) && MTLReportFailureTypeEnabled())
      {
        v313 = i;
        v315 = *(8 * i);
        v308 = v37 + i - 1;
        v311 = *v53;
        MTLReportFailure();
      }

      ++v53;
    }

    operator delete(0);
  }

  v41 = **(v375 + 16);
  if (*(*(v375 + 16) + 8) == v41)
  {
LABEL_270:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v369 = *v372;
  v352 = *v373;
  v42 = *v375;
  v367 = *v41;
  if ((v9 & 1) == 0)
  {
    v502 = 0;
    v43 = malloc_type_calloc([v374 numberOfDimensions], 8uLL, 0x100004000313F17uLL);
    [v374 writeBytes:&v502 strideBytes:v43];
    free(v43);
  }

  v44 = v374;
  v45 = *&v374[*MEMORY[0x277CD73C8]];
  v359 = v45 & 0x7FFFFFFF;
  if ((v45 & 0x7FFFFFFF) == 0x10000010)
  {
    v46 = [objc_msgSend(v374 "descriptor")];
    v47 = [MEMORY[0x277CD7268] descriptorWithDataType:268435488 shape:v46];
    v44 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v360 descriptor:v47];
    v48 = v364[18];
    v536[0] = v374;
    [v48 encodeToMPSCommandEncoder:v363 commandBuffer:v360 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", v536, 1), v44}];
    v45 = 268435488;
  }

  v49 = *(v373 + 2);
  if (v49 > 285212703)
  {
    if (v49 <= 536870915)
    {
      if (v49 > 301989895)
      {
        if (v49 == 301989896)
        {
          v50 = 512;
          v51 = *(v375 + 8);
          if (v51 <= 285212703)
          {
            goto LABEL_90;
          }
        }

        else
        {
          if (v49 != 335544328)
          {
            goto LABEL_120;
          }

          v50 = 544;
          v51 = *(v375 + 8);
          if (v51 <= 285212703)
          {
            goto LABEL_90;
          }
        }
      }

      else if (v49 == 285212704)
      {
        v50 = 416;
        v51 = *(v375 + 8);
        if (v51 <= 285212703)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v49 != 285212736)
        {
          goto LABEL_120;
        }

        v50 = 448;
        v51 = *(v375 + 8);
        if (v51 <= 285212703)
        {
          goto LABEL_90;
        }
      }
    }

    else if (v49 <= 536870927)
    {
      if (v49 == 536870916)
      {
        v50 = 0;
        v51 = *(v375 + 8);
        if (v51 > 285212703)
        {
          goto LABEL_121;
        }

        goto LABEL_90;
      }

      if (v49 != 536870920)
      {
        goto LABEL_120;
      }

      v50 = 32;
      v51 = *(v375 + 8);
      if (v51 <= 285212703)
      {
        goto LABEL_90;
      }
    }

    else
    {
      switch(v49)
      {
        case 536870928:
          v50 = 64;
          v51 = *(v375 + 8);
          if (v51 <= 285212703)
          {
            goto LABEL_90;
          }

          break;
        case 536870944:
          v50 = 96;
          v51 = *(v375 + 8);
          if (v51 <= 285212703)
          {
            goto LABEL_90;
          }

          break;
        case 536870976:
          v50 = 128;
          v51 = *(v375 + 8);
          if (v51 <= 285212703)
          {
            goto LABEL_90;
          }

          break;
        default:
          goto LABEL_120;
      }
    }
  }

  else if (v49 <= 31)
  {
    if (v49 > 7)
    {
      if (v49 == 8)
      {
        v50 = 192;
        v51 = *(v375 + 8);
        if (v51 <= 285212703)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v49 != 16)
        {
          goto LABEL_120;
        }

        v50 = 224;
        v51 = *(v375 + 8);
        if (v51 <= 285212703)
        {
          goto LABEL_90;
        }
      }
    }

    else if (v49 == -1879048176)
    {
      v50 = 384;
      v51 = *(v375 + 8);
      if (v51 <= 285212703)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (v49 != 4)
      {
        goto LABEL_120;
      }

      v50 = 160;
      v51 = *(v375 + 8);
      if (v51 <= 285212703)
      {
        goto LABEL_90;
      }
    }
  }

  else if (v49 <= 268435463)
  {
    if (v49 == 32)
    {
      v50 = 256;
      v51 = *(v375 + 8);
      if (v51 <= 285212703)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (v49 != 64)
      {
        goto LABEL_120;
      }

      v50 = 288;
      v51 = *(v375 + 8);
      if (v51 <= 285212703)
      {
        goto LABEL_90;
      }
    }
  }

  else
  {
    switch(v49)
    {
      case 268435464:
        v50 = 480;
        v51 = *(v375 + 8);
        if (v51 <= 285212703)
        {
          goto LABEL_90;
        }

        break;
      case 268435472:
        v50 = 320;
        v51 = *(v375 + 8);
        if (v51 <= 285212703)
        {
          goto LABEL_90;
        }

        break;
      case 268435488:
        v50 = 352;
        v51 = *(v375 + 8);
        if (v51 > 285212703)
        {
          break;
        }

LABEL_90:
        if (v51 <= 31)
        {
          if (v51 > 7)
          {
            if (v51 == 8)
            {
              v50 |= 0x1800uLL;
              if (v45 <= 285212703)
              {
                goto LABEL_172;
              }

              goto LABEL_150;
            }

            if (v51 == 16)
            {
              v50 |= 0x1C00uLL;
              if (v45 <= 285212703)
              {
                goto LABEL_172;
              }

              goto LABEL_150;
            }
          }

          else
          {
            if (v51 == -1879048176)
            {
              v50 |= 0x3000uLL;
              if (v45 <= 285212703)
              {
                goto LABEL_172;
              }

              goto LABEL_150;
            }

            if (v51 == 4)
            {
              v50 |= 0x1400uLL;
              if (v45 <= 285212703)
              {
                goto LABEL_172;
              }

              goto LABEL_150;
            }
          }
        }

        else if (v51 <= 268435463)
        {
          if (v51 == 32)
          {
            v50 |= 0x2000uLL;
            if (v45 <= 285212703)
            {
              goto LABEL_172;
            }

            goto LABEL_150;
          }

          if (v51 == 64)
          {
            v50 |= 0x2400uLL;
            if (v45 <= 285212703)
            {
              goto LABEL_172;
            }

            goto LABEL_150;
          }
        }

        else
        {
          switch(v51)
          {
            case 268435464:
              v50 |= 0x3C00uLL;
              if (v45 <= 285212703)
              {
                goto LABEL_172;
              }

              goto LABEL_150;
            case 268435472:
              v50 |= 0x2800uLL;
              if (v45 <= 285212703)
              {
                goto LABEL_172;
              }

              goto LABEL_150;
            case 268435488:
              v50 |= 0x2C00uLL;
              if (v45 <= 285212703)
              {
                goto LABEL_172;
              }

              goto LABEL_150;
          }
        }

LABEL_171:
        v50 |= 0x4800uLL;
        if (v45 <= 285212703)
        {
          goto LABEL_172;
        }

        goto LABEL_150;
      default:
LABEL_120:
        v50 = 576;
        v51 = *(v375 + 8);
        if (v51 > 285212703)
        {
          break;
        }

        goto LABEL_90;
    }
  }

LABEL_121:
  if (v51 <= 536870915)
  {
    if (v51 > 301989895)
    {
      if (v51 == 301989896)
      {
        v50 |= 0x4000uLL;
        if (v45 > 285212703)
        {
          goto LABEL_150;
        }
      }

      else
      {
        if (v51 != 335544328)
        {
          goto LABEL_171;
        }

        v50 |= 0x4400uLL;
        if (v45 > 285212703)
        {
          goto LABEL_150;
        }
      }
    }

    else if (v51 == 285212704)
    {
      v50 |= 0x3400uLL;
      if (v45 > 285212703)
      {
        goto LABEL_150;
      }
    }

    else
    {
      if (v51 != 285212736)
      {
        goto LABEL_171;
      }

      v50 |= 0x3800uLL;
      if (v45 > 285212703)
      {
        goto LABEL_150;
      }
    }
  }

  else if (v51 <= 536870927)
  {
    if (v51 == 536870916)
    {
      if (v45 <= 285212703)
      {
        goto LABEL_172;
      }

      goto LABEL_150;
    }

    if (v51 != 536870920)
    {
      goto LABEL_171;
    }

    v50 |= 0x400uLL;
    if (v45 > 285212703)
    {
      goto LABEL_150;
    }
  }

  else
  {
    switch(v51)
    {
      case 536870928:
        v50 |= 0x800uLL;
        if (v45 > 285212703)
        {
          goto LABEL_150;
        }

        break;
      case 536870944:
        v50 |= 0xC00uLL;
        if (v45 > 285212703)
        {
          goto LABEL_150;
        }

        break;
      case 536870976:
        v50 |= 0x1000uLL;
        if (v45 <= 285212703)
        {
          break;
        }

LABEL_150:
        if (v45 <= 536870915)
        {
          if (v45 > 301989895)
          {
            if (v45 == 301989896)
            {
              v55 = 16;
              goto LABEL_192;
            }

            if (v45 == 335544328)
            {
              v55 = 17;
              goto LABEL_192;
            }
          }

          else
          {
            if (v45 == 285212704)
            {
              v55 = 13;
              goto LABEL_192;
            }

            if (v45 == 285212736)
            {
              v55 = 14;
              goto LABEL_192;
            }
          }
        }

        else if (v45 <= 536870927)
        {
          if (v45 == 536870916)
          {
            v55 = 0;
            goto LABEL_192;
          }

          if (v45 == 536870920)
          {
            v55 = 1;
            goto LABEL_192;
          }
        }

        else
        {
          switch(v45)
          {
            case 536870928:
              v55 = 2;
              goto LABEL_192;
            case 536870944:
              v55 = 3;
              goto LABEL_192;
            case 536870976:
              v55 = 4;
              goto LABEL_192;
          }
        }

        goto LABEL_191;
      default:
        goto LABEL_171;
    }
  }

LABEL_172:
  if (v45 > 31)
  {
    if (v45 > 268435463)
    {
      if (v45 == 268435464)
      {
        v55 = 15;
        goto LABEL_192;
      }

      if (v45 == 268435488)
      {
        v55 = 11;
        goto LABEL_192;
      }
    }

    else
    {
      if (v45 == 32)
      {
        v55 = 8;
        goto LABEL_192;
      }

      if (v45 == 64)
      {
        v55 = 9;
        goto LABEL_192;
      }
    }
  }

  else if (v45 > 7)
  {
    if (v45 == 8)
    {
      v55 = 6;
      goto LABEL_192;
    }

    if (v45 == 16)
    {
      v55 = 7;
      goto LABEL_192;
    }
  }

  else
  {
    if (v45 == -1879048176)
    {
      v55 = 12;
      goto LABEL_192;
    }

    if (v45 == 4)
    {
      v55 = 5;
      goto LABEL_192;
    }
  }

LABEL_191:
  v55 = 18;
LABEL_192:
  *&v56 = -1;
  *(&v56 + 1) = -1;
  v526 = v56;
  v525 = v56;
  v524 = v56;
  v522 = -1;
  v521 = v56;
  v523 = v50 | v55;
  v57 = [*(v371 + 16) count] | 0x10100;
  v58 = 16;
  if (!v357)
  {
    v58 = 0;
  }

  *&v526 = v57;
  v522 = (v369 - (v361 + v367)) | v58;
  v312 = *(v364 + *MEMORY[0x277CD7360]);
  v314 = *(v364 + *MEMORY[0x277CD7368]);
  v309 = *(v371 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v60 = PipelineStateForMPSKey;
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v61 = [PipelineStateForMPSKey threadExecutionWidth];
  [v363 setComputePipelineState:v60];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v363, v371, 4, 0, 0);
  v62 = v373[2];
  v64 = *v62;
  v63 = v62[1];
  if (v63 != v64)
  {
    if (((v63 - v64) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v67 = 0;
  v68 = -8 * v42 + 8;
  if (-8 * v42 == -8)
  {
    v65 = 1;
    goto LABEL_207;
  }

  v69 = -8;
  if (-8 * v42 == -16)
  {
    v65 = 1;
    do
    {
LABEL_206:
      v74 = *(v67 - 8);
      v67 -= 8;
      v65 *= v74;
    }

    while (v67 != v68);
    goto LABEL_207;
  }

  v70 = ((-16 - -8 * v42) >> 3) + 1;
  v67 = -8 * (v70 & 0x3FFFFFFFFFFFFFFELL);
  v71 = 1;
  v72 = v70 & 0x3FFFFFFFFFFFFFFELL;
  v73 = 1;
  do
  {
    v71 *= *v69;
    v73 *= *(v69 - 8);
    v69 -= 16;
    v72 -= 2;
  }

  while (v72);
  v65 = v73 * v71;
  if (v70 != (v70 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_206;
  }

LABEL_207:
  v365 = v44;
  if (-8 * v42 == -8)
  {
    v75 = 1;
    goto LABEL_215;
  }

  if (!(-8 * v42))
  {
    v75 = 1;
    v76 = -8 * v42 + 8;
    do
    {
LABEL_214:
      v82 = *(v76 - 8);
      v76 -= 8;
      v75 *= v82;
    }

    while (v76);
    goto LABEL_215;
  }

  v77 = ((0x1FFFFFFFFFFFFFFFLL * v42) & 0x1FFFFFFFFFFFFFFFLL) + 1;
  v76 = v68 - 8 * (v77 & 0x3FFFFFFFFFFFFFFELL);
  v78 = -8 * v42;
  v79 = 1;
  v80 = v77 & 0x3FFFFFFFFFFFFFFELL;
  v81 = 1;
  do
  {
    v79 *= *v78;
    v81 *= *(v78 - 8);
    v78 -= 16;
    v80 -= 2;
  }

  while (v80);
  v75 = v81 * v79;
  if (v77 != (v77 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_214;
  }

LABEL_215:
  v83 = *(v375 + 16);
  v85 = *v83;
  v84 = v83[1];
  if (v84 != v85)
  {
    if (((v84 - v85) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v86 = xmmword_239B0A0D0;
  v87 = 0uLL;
  v88 = 0uLL;
  v89 = 0uLL;
  if (v42 >= v361)
  {
    v90 = (8 * (v42 + v369) - 8 * v367 - 16 * v361 - 8);
    v91 = v361;
    v92 = v42 - v361;
    do
    {
      v500[0] = v86;
      v500[1] = v87;
      v500[2] = v88;
      v500[3] = v89;
      if (*(v500 + (v92 & 0xF)) == 1)
      {
        v93 = *v90;
        v496 = v86;
        v497 = v87;
        v498 = v88;
        v499 = v89;
        *(&v496 + (v92 & 0xF)) = v93;
        v89 = v499;
        v88 = v498;
        v87 = v497;
        v86 = v496;
      }

      ++v92;
      v90 += 2;
      --v91;
    }

    while (v91);
  }

  v355 = v88;
  v356 = v89;
  v358 = v86;
  v376 = v87;
  memset(v520, 0, sizeof(v520));
  v519 = 0u;
  v518 = 0u;
  v517 = 0u;
  v516 = 0u;
  v515 = 0u;
  v514 = 0u;
  v513 = 0u;
  v512 = 0u;
  v511 = 0u;
  v510 = 0u;
  v509 = 0u;
  v508 = 0u;
  v507 = 0u;
  LOWORD(v502) = v369;
  HIWORD(v502) = v42;
  v503 = v367;
  v504 = v352;
  v505 = v361;
  v506 = v369 - (v361 + v367);
  LOWORD(v507) = v42 - v361 - 1;
  *(&v507 + 4) = __PAIR64__(v75, v65);
  makeStrideBytes();
  v94 = MEMORY[0x277CD73D0];
  v95 = &v354[*MEMORY[0x277CD73D0]];
  v96.i64[0] = 0x100000001;
  v96.i64[1] = 0x100000001;
  v97 = vceqq_s32(*v95, v96);
  v98.i64[0] = v97.i32[0];
  v98.i64[1] = v97.i32[1];
  v99 = v98;
  v100 = vceqq_s32(v95[1], v96);
  v98.i64[0] = v100.i32[0];
  v98.i64[1] = v100.i32[1];
  v101 = v98;
  v102 = vceqq_s32(v95[2], v96);
  v98.i64[0] = v102.i32[0];
  v98.i64[1] = v102.i32[1];
  v103 = v98;
  v104 = vceqq_s32(v95[3], v96);
  v98.i64[0] = v104.i32[0];
  v98.i64[1] = v104.i32[1];
  v105 = v98;
  v98.i64[0] = v97.i32[2];
  v98.i64[1] = v97.i32[3];
  v106 = v98;
  v98.i64[0] = v100.i32[2];
  v98.i64[1] = v100.i32[3];
  v107 = v98;
  v98.i64[0] = v102.i32[2];
  v98.i64[1] = v102.i32[3];
  v108 = v98;
  v98.i64[0] = v104.i32[2];
  v98.i64[1] = v104.i32[3];
  v109 = vbicq_s8(v534, v98);
  v110 = vbicq_s8(v532, v108);
  v111 = vbicq_s8(v530, v107);
  v112 = vbicq_s8(v528, v106);
  v113 = vbicq_s8(v533, v105);
  v114 = vbicq_s8(v531, v103);
  v115 = vbicq_s8(v529, v101);
  v116 = vbicq_s8(v527, v99);
  v117 = MEMORY[0x277CD73D8];
  v118 = *&v354[*MEMORY[0x277CD73D8]];
  v119 = *&v354[*MEMORY[0x277CD73C8]];
  if ((v119 & 0xFFF8) != 0)
  {
    v120 = v119 >> 3;
    v495[0] = v116;
    v495[1] = v112;
    v495[2] = v115;
    v495[3] = v111;
    v495[4] = v114;
    v495[5] = v110;
    v495[6] = v113;
    v495[7] = v109;
    v121 = *(v495 + (v118 & 0xF));
    v494[0] = v116;
    v494[1] = v112;
    v494[2] = v115;
    v494[3] = v111;
    v494[4] = v114;
    v494[5] = v110;
    v494[6] = v113;
    v494[7] = v109;
    v122 = *(v494 + (BYTE1(v118) & 0xF));
    v493[0] = v116;
    v493[1] = v112;
    v493[2] = v115;
    v493[3] = v111;
    v493[4] = v114;
    v493[5] = v110;
    v493[6] = v113;
    v493[7] = v109;
    v123 = *(v493 + (BYTE2(v118) & 0xF)) / v120;
    v492[0] = v116;
    v492[1] = v112;
    v492[2] = v115;
    v492[3] = v111;
    v492[4] = v114;
    v492[5] = v110;
    v492[6] = v113;
    v492[7] = v109;
    v124 = *(v492 + (BYTE3(v118) & 0xF));
    v491[0] = v116;
    v491[1] = v112;
    v491[2] = v115;
    v491[3] = v111;
    v491[4] = v114;
    v491[5] = v110;
    v491[6] = v113;
    v491[7] = v109;
    v125 = *(v491 + (BYTE4(v118) & 0xF)) / v120;
    v490[0] = v116;
    v490[1] = v112;
    v490[2] = v115;
    v490[3] = v111;
    v490[4] = v114;
    v490[5] = v110;
    v490[6] = v113;
    v490[7] = v109;
    v126 = *(v490 + (BYTE5(v118) & 0xF));
    v489[0] = v116;
    v489[1] = v112;
    v489[2] = v115;
    v489[3] = v111;
    v489[4] = v114;
    v489[5] = v110;
    v489[6] = v113;
    v489[7] = v109;
    v127 = *(v489 + (BYTE6(v118) & 0xF)) / v120;
    v488[0] = v116;
    v488[1] = v112;
    v488[2] = v115;
    v488[3] = v111;
    v488[4] = v114;
    v488[5] = v110;
    v488[6] = v113;
    v488[7] = v109;
    v128 = *(v488 + (BYTE7(v118) & 0xF));
    v487[0] = v116;
    v487[1] = v112;
    v487[2] = v115;
    v487[3] = v111;
    v487[4] = v114;
    v487[5] = v110;
    v487[6] = v113;
    v487[7] = v109;
    v129 = *(v487 + (BYTE8(v118) & 0xF)) / v120;
    v486[0] = v116;
    v486[1] = v112;
    v486[2] = v115;
    v486[3] = v111;
    v486[4] = v114;
    v486[5] = v110;
    v486[6] = v113;
    v486[7] = v109;
    v130 = *(v486 + (BYTE9(v118) & 0xF));
    v485[0] = v116;
    v485[1] = v112;
    v485[2] = v115;
    v485[3] = v111;
    v485[4] = v114;
    v485[5] = v110;
    v485[6] = v113;
    v485[7] = v109;
    v131 = *(v485 + (BYTE10(v118) & 0xF)) / v120;
    v484[0] = v116;
    v484[1] = v112;
    v484[2] = v115;
    v484[3] = v111;
    v484[4] = v114;
    v484[5] = v110;
    v484[6] = v113;
    v484[7] = v109;
    v132 = *(v484 + (BYTE11(v118) & 0xF));
    v483[0] = v116;
    v483[1] = v112;
    v483[2] = v115;
    v483[3] = v111;
    v483[4] = v114;
    v483[5] = v110;
    v483[6] = v113;
    v483[7] = v109;
    v133 = *(v483 + (BYTE12(v118) & 0xF)) / v120;
    v482[0] = v116;
    v482[1] = v112;
    v482[2] = v115;
    v482[3] = v111;
    v482[4] = v114;
    v482[5] = v110;
    v482[6] = v113;
    v482[7] = v109;
    v134 = *(v482 + (BYTE13(v118) & 0xF));
    v481[0] = v116;
    v481[1] = v112;
    v481[2] = v115;
    v481[3] = v111;
    v481[4] = v114;
    v481[5] = v110;
    v481[6] = v113;
    v481[7] = v109;
    v135 = *(v481 + (BYTE14(v118) & 0xF)) / v120;
    v480[0] = v116;
    v480[1] = v112;
    v480[2] = v115;
    v480[3] = v111;
    v480[4] = v114;
    v480[5] = v110;
    v480[6] = v113;
    v480[7] = v109;
    *&v136 = v135;
    *(&v136 + 1) = *(v480 + (HIBYTE(v118) & 0xF)) / v120;
    v370 = v136;
    *&v136 = v133;
    *(&v136 + 1) = v134 / v120;
    v368 = v136;
    *&v136 = v131;
    *(&v136 + 1) = v132 / v120;
    v362 = v136;
    *&v136 = v129;
    *(&v136 + 1) = v130 / v120;
    v353 = v136;
    *&v136 = v127;
    *(&v136 + 1) = v128 / v120;
    v351 = v136;
    *&v136 = v125;
    *(&v136 + 1) = v126 / v120;
    v350 = v136;
    *&v136 = v123;
    *(&v136 + 1) = v124 / v120;
    v349 = v136;
    *&v137 = v121 / v120;
    *(&v137 + 1) = v122 / v120;
  }

  else
  {
    v479[0] = v116;
    v479[1] = v112;
    v479[2] = v115;
    v479[3] = v111;
    v479[4] = v114;
    v479[5] = v110;
    v479[6] = v113;
    v479[7] = v109;
    v478[0] = v116;
    v478[1] = v112;
    v478[2] = v115;
    v478[3] = v111;
    v478[4] = v114;
    v478[5] = v110;
    v478[6] = v113;
    v478[7] = v109;
    v477[0] = v116;
    v477[1] = v112;
    v477[2] = v115;
    v477[3] = v111;
    v477[4] = v114;
    v477[5] = v110;
    v477[6] = v113;
    v477[7] = v109;
    v476[0] = v116;
    v476[1] = v112;
    v476[2] = v115;
    v476[3] = v111;
    v476[4] = v114;
    v476[5] = v110;
    v476[6] = v113;
    v476[7] = v109;
    v475[0] = v116;
    v475[1] = v112;
    v475[2] = v115;
    v475[3] = v111;
    v475[4] = v114;
    v475[5] = v110;
    v475[6] = v113;
    v475[7] = v109;
    v474[0] = v116;
    v474[1] = v112;
    v474[2] = v115;
    v474[3] = v111;
    v474[4] = v114;
    v474[5] = v110;
    v474[6] = v113;
    v474[7] = v109;
    v473[0] = v116;
    v473[1] = v112;
    v473[2] = v115;
    v473[3] = v111;
    v473[4] = v114;
    v473[5] = v110;
    v473[6] = v113;
    v473[7] = v109;
    v472[0] = v116;
    v472[1] = v112;
    v472[2] = v115;
    v472[3] = v111;
    v472[4] = v114;
    v472[5] = v110;
    v472[6] = v113;
    v472[7] = v109;
    v471[0] = v116;
    v471[1] = v112;
    v471[2] = v115;
    v471[3] = v111;
    v471[4] = v114;
    v471[5] = v110;
    v471[6] = v113;
    v471[7] = v109;
    v470[0] = v116;
    v470[1] = v112;
    v470[2] = v115;
    v470[3] = v111;
    v470[4] = v114;
    v470[5] = v110;
    v470[6] = v113;
    v470[7] = v109;
    v469[0] = v116;
    v469[1] = v112;
    v469[2] = v115;
    v469[3] = v111;
    v469[4] = v114;
    v469[5] = v110;
    v469[6] = v113;
    v469[7] = v109;
    v468[0] = v116;
    v468[1] = v112;
    v468[2] = v115;
    v468[3] = v111;
    v468[4] = v114;
    v468[5] = v110;
    v468[6] = v113;
    v468[7] = v109;
    v467[0] = v116;
    v467[1] = v112;
    v467[2] = v115;
    v467[3] = v111;
    v467[4] = v114;
    v467[5] = v110;
    v467[6] = v113;
    v467[7] = v109;
    v466[0] = v116;
    v466[1] = v112;
    v466[2] = v115;
    v466[3] = v111;
    v466[4] = v114;
    v466[5] = v110;
    v466[6] = v113;
    v466[7] = v109;
    v465[0] = v116;
    v465[1] = v112;
    v465[2] = v115;
    v465[3] = v111;
    v465[4] = v114;
    v465[5] = v110;
    v465[6] = v113;
    v465[7] = v109;
    v464[0] = v116;
    v464[1] = v112;
    v464[2] = v115;
    v464[3] = v111;
    v464[4] = v114;
    v464[5] = v110;
    v464[6] = v113;
    v464[7] = v109;
    *&v138 = *(v465 + (BYTE14(v118) & 0xF));
    *&v139 = *(v467 + (BYTE12(v118) & 0xF));
    *(&v138 + 1) = *(v464 + (HIBYTE(v118) & 0xF));
    v370 = v138;
    *(&v139 + 1) = *(v466 + (BYTE13(v118) & 0xF));
    v368 = v139;
    *&v138 = *(v469 + (BYTE10(v118) & 0xF));
    *(&v138 + 1) = *(v468 + (BYTE11(v118) & 0xF));
    v362 = v138;
    *&v138 = *(v471 + (BYTE8(v118) & 0xF));
    *(&v138 + 1) = *(v470 + (BYTE9(v118) & 0xF));
    v353 = v138;
    *&v138 = *(v473 + (BYTE6(v118) & 0xF));
    *(&v138 + 1) = *(v472 + (BYTE7(v118) & 0xF));
    v351 = v138;
    *&v138 = *(v475 + (BYTE4(v118) & 0xF));
    *(&v138 + 1) = *(v474 + (BYTE5(v118) & 0xF));
    v350 = v138;
    *&v138 = *(v477 + (BYTE2(v118) & 0xF));
    *(&v138 + 1) = *(v476 + (BYTE3(v118) & 0xF));
    v349 = v138;
    *&v137 = *(v479 + (v118 & 0xF));
    *(&v137 + 1) = *(v478 + (BYTE1(v118) & 0xF));
  }

  v348 = v137;
  makeStrideBytes();
  v140 = *v94;
  v141.i64[0] = 0x100000001;
  v141.i64[1] = 0x100000001;
  v142 = vceqq_s32(*&v366[v140], v141);
  v143.i64[0] = v142.i32[0];
  v143.i64[1] = v142.i32[1];
  v144 = v143;
  v145 = vceqq_s32(*&v366[v140 + 16], v141);
  v143.i64[0] = v145.i32[0];
  v143.i64[1] = v145.i32[1];
  v146 = v143;
  v147 = vceqq_s32(*&v366[v140 + 32], v141);
  v143.i64[0] = v147.i32[0];
  v143.i64[1] = v147.i32[1];
  v148 = v143;
  v149 = vceqq_s32(*&v366[v140 + 48], v141);
  v143.i64[0] = v149.i32[0];
  v143.i64[1] = v149.i32[1];
  v150 = v143;
  v143.i64[0] = v142.i32[2];
  v143.i64[1] = v142.i32[3];
  v151 = v143;
  v143.i64[0] = v145.i32[2];
  v143.i64[1] = v145.i32[3];
  v152 = v143;
  v143.i64[0] = v147.i32[2];
  v143.i64[1] = v147.i32[3];
  v153 = v143;
  v143.i64[0] = v149.i32[2];
  v143.i64[1] = v149.i32[3];
  v154 = vbicq_s8(v534, v143);
  v155 = vbicq_s8(v532, v153);
  v156 = vbicq_s8(v530, v152);
  v157 = vbicq_s8(v528, v151);
  v158 = vbicq_s8(v533, v150);
  v159 = vbicq_s8(v531, v148);
  v160 = vbicq_s8(v529, v146);
  v161 = vbicq_s8(v527, v144);
  v162 = *v117;
  v163 = *&v366[v162];
  v164 = *&v366[*MEMORY[0x277CD73C8]];
  if ((v164 & 0xFFF8) != 0)
  {
    v165 = v164 >> 3;
    v463[0] = v161;
    v463[1] = v157;
    v463[2] = v160;
    v463[3] = v156;
    v463[4] = v159;
    v463[5] = v155;
    v463[6] = v158;
    v463[7] = v154;
    v166 = *(v463 + (v163 & 0xF));
    v462[0] = v161;
    v462[1] = v157;
    v462[2] = v160;
    v462[3] = v156;
    v462[4] = v159;
    v462[5] = v155;
    v462[6] = v158;
    v462[7] = v154;
    v167 = *(v462 + (BYTE1(v163) & 0xF));
    v461[0] = v161;
    v461[1] = v157;
    v461[2] = v160;
    v461[3] = v156;
    v461[4] = v159;
    v461[5] = v155;
    v461[6] = v158;
    v461[7] = v154;
    v168 = *(v461 + (BYTE2(v163) & 0xF)) / v165;
    v460[0] = v161;
    v460[1] = v157;
    v460[2] = v160;
    v460[3] = v156;
    v460[4] = v159;
    v460[5] = v155;
    v460[6] = v158;
    v460[7] = v154;
    v169 = *(v460 + (BYTE3(v163) & 0xF));
    v459[0] = v161;
    v459[1] = v157;
    v459[2] = v160;
    v459[3] = v156;
    v459[4] = v159;
    v459[5] = v155;
    v459[6] = v158;
    v459[7] = v154;
    v170 = *(v459 + (BYTE4(v163) & 0xF)) / v165;
    v458[0] = v161;
    v458[1] = v157;
    v458[2] = v160;
    v458[3] = v156;
    v458[4] = v159;
    v458[5] = v155;
    v458[6] = v158;
    v458[7] = v154;
    v171 = *(v458 + (BYTE5(v163) & 0xF));
    v457[0] = v161;
    v457[1] = v157;
    v457[2] = v160;
    v457[3] = v156;
    v457[4] = v159;
    v457[5] = v155;
    v457[6] = v158;
    v457[7] = v154;
    v172 = *(v457 + (BYTE6(v163) & 0xF)) / v165;
    v456[0] = v161;
    v456[1] = v157;
    v456[2] = v160;
    v456[3] = v156;
    v456[4] = v159;
    v456[5] = v155;
    v456[6] = v158;
    v456[7] = v154;
    v173 = *(v456 + (BYTE7(v163) & 0xF));
    v455[0] = v161;
    v455[1] = v157;
    v455[2] = v160;
    v455[3] = v156;
    v455[4] = v159;
    v455[5] = v155;
    v455[6] = v158;
    v455[7] = v154;
    v174 = *(v455 + (BYTE8(v163) & 0xF)) / v165;
    v454[0] = v161;
    v454[1] = v157;
    v454[2] = v160;
    v454[3] = v156;
    v454[4] = v159;
    v454[5] = v155;
    v454[6] = v158;
    v454[7] = v154;
    v175 = *(v454 + (BYTE9(v163) & 0xF));
    v453[0] = v161;
    v453[1] = v157;
    v453[2] = v160;
    v453[3] = v156;
    v453[4] = v159;
    v453[5] = v155;
    v453[6] = v158;
    v453[7] = v154;
    v176 = *(v453 + (BYTE10(v163) & 0xF)) / v165;
    v452[0] = v161;
    v452[1] = v157;
    v452[2] = v160;
    v452[3] = v156;
    v452[4] = v159;
    v452[5] = v155;
    v452[6] = v158;
    v452[7] = v154;
    v177 = *(v452 + (BYTE11(v163) & 0xF));
    v451[0] = v161;
    v451[1] = v157;
    v451[2] = v160;
    v451[3] = v156;
    v451[4] = v159;
    v451[5] = v155;
    v451[6] = v158;
    v451[7] = v154;
    v178 = *(v451 + (BYTE12(v163) & 0xF)) / v165;
    v450[0] = v161;
    v450[1] = v157;
    v450[2] = v160;
    v450[3] = v156;
    v450[4] = v159;
    v450[5] = v155;
    v450[6] = v158;
    v450[7] = v154;
    v179 = *(v450 + (BYTE13(v163) & 0xF));
    v449[0] = v161;
    v449[1] = v157;
    v449[2] = v160;
    v449[3] = v156;
    v449[4] = v159;
    v449[5] = v155;
    v449[6] = v158;
    v449[7] = v154;
    v180 = *(v449 + (BYTE14(v163) & 0xF)) / v165;
    v448[0] = v161;
    v448[1] = v157;
    v448[2] = v160;
    v448[3] = v156;
    v448[4] = v159;
    v448[5] = v155;
    v448[6] = v158;
    v448[7] = v154;
    v181.i64[0] = v180;
    v181.i64[1] = *(v448 + (HIBYTE(v163) & 0xF)) / v165;
    v347 = v181;
    v181.i64[0] = v178;
    v181.i64[1] = v179 / v165;
    v346 = v181;
    v181.i64[0] = v176;
    v181.i64[1] = v177 / v165;
    v345 = v181;
    v181.i64[0] = v174;
    v181.i64[1] = v175 / v165;
    v344 = v181;
    v181.i64[0] = v172;
    v181.i64[1] = v173 / v165;
    v343 = v181;
    v181.i64[0] = v170;
    v181.i64[1] = v171 / v165;
    v342 = v181;
    v181.i64[0] = v168;
    v181.i64[1] = v169 / v165;
    v341 = v181;
    v182.i64[0] = v166 / v165;
    v182.i64[1] = v167 / v165;
  }

  else
  {
    v447[0] = v161;
    v447[1] = v157;
    v447[2] = v160;
    v447[3] = v156;
    v447[4] = v159;
    v447[5] = v155;
    v447[6] = v158;
    v447[7] = v154;
    v446[0] = v161;
    v446[1] = v157;
    v446[2] = v160;
    v446[3] = v156;
    v446[4] = v159;
    v446[5] = v155;
    v446[6] = v158;
    v446[7] = v154;
    v445[0] = v161;
    v445[1] = v157;
    v445[2] = v160;
    v445[3] = v156;
    v445[4] = v159;
    v445[5] = v155;
    v445[6] = v158;
    v445[7] = v154;
    v444[0] = v161;
    v444[1] = v157;
    v444[2] = v160;
    v444[3] = v156;
    v444[4] = v159;
    v444[5] = v155;
    v444[6] = v158;
    v444[7] = v154;
    v443[0] = v161;
    v443[1] = v157;
    v443[2] = v160;
    v443[3] = v156;
    v443[4] = v159;
    v443[5] = v155;
    v443[6] = v158;
    v443[7] = v154;
    v442[0] = v161;
    v442[1] = v157;
    v442[2] = v160;
    v442[3] = v156;
    v442[4] = v159;
    v442[5] = v155;
    v442[6] = v158;
    v442[7] = v154;
    v441[0] = v161;
    v441[1] = v157;
    v441[2] = v160;
    v441[3] = v156;
    v441[4] = v159;
    v441[5] = v155;
    v441[6] = v158;
    v441[7] = v154;
    v440[0] = v161;
    v440[1] = v157;
    v440[2] = v160;
    v440[3] = v156;
    v440[4] = v159;
    v440[5] = v155;
    v440[6] = v158;
    v440[7] = v154;
    v439[0] = v161;
    v439[1] = v157;
    v439[2] = v160;
    v439[3] = v156;
    v439[4] = v159;
    v439[5] = v155;
    v439[6] = v158;
    v439[7] = v154;
    v438[0] = v161;
    v438[1] = v157;
    v438[2] = v160;
    v438[3] = v156;
    v438[4] = v159;
    v438[5] = v155;
    v438[6] = v158;
    v438[7] = v154;
    v437[0] = v161;
    v437[1] = v157;
    v437[2] = v160;
    v437[3] = v156;
    v437[4] = v159;
    v437[5] = v155;
    v437[6] = v158;
    v437[7] = v154;
    v436[0] = v161;
    v436[1] = v157;
    v436[2] = v160;
    v436[3] = v156;
    v436[4] = v159;
    v436[5] = v155;
    v436[6] = v158;
    v436[7] = v154;
    v435[0] = v161;
    v435[1] = v157;
    v435[2] = v160;
    v435[3] = v156;
    v435[4] = v159;
    v435[5] = v155;
    v435[6] = v158;
    v435[7] = v154;
    v434[0] = v161;
    v434[1] = v157;
    v434[2] = v160;
    v434[3] = v156;
    v434[4] = v159;
    v434[5] = v155;
    v434[6] = v158;
    v434[7] = v154;
    v433[0] = v161;
    v433[1] = v157;
    v433[2] = v160;
    v433[3] = v156;
    v433[4] = v159;
    v433[5] = v155;
    v433[6] = v158;
    v433[7] = v154;
    v432[0] = v161;
    v432[1] = v157;
    v432[2] = v160;
    v432[3] = v156;
    v432[4] = v159;
    v432[5] = v155;
    v432[6] = v158;
    v432[7] = v154;
    v183.i64[0] = *(v433 + (BYTE14(v163) & 0xF));
    v184.i64[0] = *(v435 + (BYTE12(v163) & 0xF));
    v183.i64[1] = *(v432 + (HIBYTE(v163) & 0xF));
    v347 = v183;
    v184.i64[1] = *(v434 + (BYTE13(v163) & 0xF));
    v346 = v184;
    v183.i64[0] = *(v437 + (BYTE10(v163) & 0xF));
    v183.i64[1] = *(v436 + (BYTE11(v163) & 0xF));
    v345 = v183;
    v183.i64[0] = *(v439 + (BYTE8(v163) & 0xF));
    v183.i64[1] = *(v438 + (BYTE9(v163) & 0xF));
    v344 = v183;
    v183.i64[0] = *(v441 + (BYTE6(v163) & 0xF));
    v183.i64[1] = *(v440 + (BYTE7(v163) & 0xF));
    v343 = v183;
    v183.i64[0] = *(v443 + (BYTE4(v163) & 0xF));
    v183.i64[1] = *(v442 + (BYTE5(v163) & 0xF));
    v342 = v183;
    v183.i64[0] = *(v445 + (BYTE2(v163) & 0xF));
    v183.i64[1] = *(v444 + (BYTE3(v163) & 0xF));
    v341 = v183;
    v182.i64[0] = *(v447 + (v163 & 0xF));
    v182.i64[1] = *(v446 + (BYTE1(v163) & 0xF));
  }

  v340 = v182;
  v185 = *&v366[v162];
  v186 = &v366[v140];
  v187 = *v186;
  v188 = v186[1];
  v189 = v186[2];
  v431 = v186[3];
  v430[2] = v189;
  v430[1] = v188;
  v430[0] = v187;
  v159.i32[0] = *(v430 + (v185 & 0xF));
  v334 = v159;
  v429[3] = v431;
  v429[2] = v189;
  v429[1] = v188;
  v429[0] = v187;
  v159.i32[0] = *(v429 + (BYTE1(v185) & 0xF));
  v336 = v159;
  v428[3] = v431;
  v428[2] = v189;
  v428[1] = v188;
  v428[0] = v187;
  v159.i32[0] = *(v428 + (BYTE2(v185) & 0xF));
  v338 = v159;
  v427[3] = v431;
  v427[2] = v189;
  v427[1] = v188;
  v427[0] = v187;
  v159.i32[0] = *(v427 + (BYTE3(v185) & 0xF));
  v339 = v159;
  v426[3] = v431;
  v426[2] = v189;
  v426[1] = v188;
  v426[0] = v187;
  v159.i32[0] = *(v426 + (BYTE4(v185) & 0xF));
  v331 = v159;
  v425[3] = v431;
  v425[2] = v189;
  v425[1] = v188;
  v425[0] = v187;
  v159.i32[0] = *(v425 + (BYTE5(v185) & 0xF));
  v332 = v159;
  v424[3] = v431;
  v424[2] = v189;
  v424[1] = v188;
  v424[0] = v187;
  v159.i32[0] = *(v424 + (BYTE6(v185) & 0xF));
  v335 = v159;
  v423[3] = v431;
  v423[2] = v189;
  v423[1] = v188;
  v423[0] = v187;
  v159.i32[0] = *(v423 + (BYTE7(v185) & 0xF));
  v337 = v159;
  v422[3] = v431;
  v422[2] = v189;
  v422[1] = v188;
  v422[0] = v187;
  v159.i32[0] = *(v422 + (BYTE8(v185) & 0xF));
  v327 = v159;
  v421[3] = v431;
  v421[2] = v189;
  v421[1] = v188;
  v421[0] = v187;
  v159.i32[0] = *(v421 + (BYTE9(v185) & 0xF));
  v328 = v159;
  v420[3] = v431;
  v420[2] = v189;
  v420[1] = v188;
  v420[0] = v187;
  v159.i32[0] = *(v420 + (BYTE10(v185) & 0xF));
  v330 = v159;
  v419[3] = v431;
  v419[2] = v189;
  v419[1] = v188;
  v419[0] = v187;
  v159.i32[0] = *(v419 + (BYTE11(v185) & 0xF));
  v333 = v159;
  v418[3] = v431;
  v418[2] = v189;
  v418[1] = v188;
  v418[0] = v187;
  v159.i32[0] = *(v418 + (BYTE12(v185) & 0xF));
  v324 = v159;
  v417[3] = v431;
  v417[2] = v189;
  v417[1] = v188;
  v417[0] = v187;
  v159.i32[0] = *(v417 + (BYTE13(v185) & 0xF));
  v325 = v159;
  v416[3] = v431;
  v416[2] = v189;
  v416[1] = v188;
  v416[0] = v187;
  v159.i32[0] = *(v416 + (BYTE14(v185) & 0xF));
  v326 = v159;
  v415[3] = v431;
  v415[2] = v189;
  v415[1] = v188;
  v415[0] = v187;
  v187.i32[0] = *(v415 + (HIBYTE(v185) & 0xF));
  v329 = v187;
  makeStrideBytes();
  v190 = &v365[*v94];
  v191.i64[0] = 0x100000001;
  v191.i64[1] = 0x100000001;
  v192 = vceqq_s32(*v190, v191);
  v193.i64[0] = v192.i32[0];
  v193.i64[1] = v192.i32[1];
  v194 = v193;
  v195 = vceqq_s32(v190[1], v191);
  v193.i64[0] = v195.i32[0];
  v193.i64[1] = v195.i32[1];
  v196 = v193;
  v197 = vceqq_s32(v190[2], v191);
  v193.i64[0] = v197.i32[0];
  v193.i64[1] = v197.i32[1];
  v198 = v193;
  v199 = vceqq_s32(v190[3], v191);
  v193.i64[0] = v199.i32[0];
  v193.i64[1] = v199.i32[1];
  v200 = v193;
  v193.i64[0] = v192.i32[2];
  v193.i64[1] = v192.i32[3];
  v201 = v193;
  v193.i64[0] = v195.i32[2];
  v193.i64[1] = v195.i32[3];
  v202 = v193;
  v193.i64[0] = v197.i32[2];
  v193.i64[1] = v197.i32[3];
  v203 = v193;
  v193.i64[0] = v199.i32[2];
  v193.i64[1] = v199.i32[3];
  v204 = vbicq_s8(v534, v193);
  v205 = vbicq_s8(v532, v203);
  v206 = vbicq_s8(v530, v202);
  v207 = vbicq_s8(v528, v201);
  v208 = vbicq_s8(v533, v200);
  v209 = vbicq_s8(v531, v198);
  v210 = vbicq_s8(v529, v196);
  v211 = *&v365[*MEMORY[0x277CD73C8]];
  v212 = *&v365[*v117];
  v213 = BYTE1(*&v365[*v117]);
  v214 = BYTE2(*&v365[*v117]);
  v215 = BYTE3(*&v365[*v117]);
  v216 = BYTE4(*&v365[*v117]);
  v217 = WORD2(*&v365[*v117]) >> 8;
  v218 = BYTE6(*&v365[*v117]);
  v219 = HIBYTE(*&v365[*v117]);
  v220 = *&v365[*v117 + 8];
  v221 = BYTE1(*&v365[*v117 + 8]);
  v222 = BYTE2(*&v365[*v117 + 8]);
  v223 = BYTE3(*&v365[*v117 + 8]);
  v224 = BYTE12(*&v365[*v117]);
  v225 = WORD6(*&v365[*v117]) >> 8;
  v226 = vbicq_s8(v527, v194);
  v227 = BYTE14(*&v365[*v117]);
  v228 = HIBYTE(*&v365[*v117]);
  if ((v211 & 0xFFF8) != 0)
  {
    v229 = v211 >> 3;
    v414[0] = v226;
    v414[1] = v207;
    v414[2] = v210;
    v414[3] = v206;
    v414[4] = v209;
    v414[5] = v205;
    v414[6] = v208;
    v414[7] = v204;
    v230 = *(v414 + (v212 & 0xF)) / v229;
    v413[0] = v226;
    v413[1] = v207;
    v413[2] = v210;
    v413[3] = v206;
    v413[4] = v209;
    v413[5] = v205;
    v413[6] = v208;
    v413[7] = v204;
    v231 = *(v413 + (v213 & 0xF));
    v412[0] = v226;
    v412[1] = v207;
    v412[2] = v210;
    v412[3] = v206;
    v412[4] = v209;
    v412[5] = v205;
    v412[6] = v208;
    v412[7] = v204;
    v232 = *(v412 + (v214 & 0xF)) / v229;
    v411[0] = v226;
    v411[1] = v207;
    v411[2] = v210;
    v411[3] = v206;
    v411[4] = v209;
    v411[5] = v205;
    v411[6] = v208;
    v411[7] = v204;
    v233 = *(v411 + (v215 & 0xF)) / v229;
    v410[0] = v226;
    v410[1] = v207;
    v410[2] = v210;
    v410[3] = v206;
    v410[4] = v209;
    v410[5] = v205;
    v410[6] = v208;
    v410[7] = v204;
    v234 = *(v410 + (v216 & 0xF)) / v229;
    v409[0] = v226;
    v409[1] = v207;
    v409[2] = v210;
    v409[3] = v206;
    v409[4] = v209;
    v409[5] = v205;
    v409[6] = v208;
    v409[7] = v204;
    v235 = *(v409 + (v217 & 0xF));
    v408[0] = v226;
    v408[1] = v207;
    v408[2] = v210;
    v408[3] = v206;
    v408[4] = v209;
    v408[5] = v205;
    v408[6] = v208;
    v408[7] = v204;
    v236 = *(v408 + (v218 & 0xF));
    v407[0] = v226;
    v407[1] = v207;
    v407[2] = v210;
    v407[3] = v206;
    v407[4] = v209;
    v407[5] = v205;
    v407[6] = v208;
    v407[7] = v204;
    v237 = *(v407 + (v219 & 0xF)) / v229;
    v406[0] = v226;
    v406[1] = v207;
    v406[2] = v210;
    v406[3] = v206;
    v406[4] = v209;
    v406[5] = v205;
    v406[6] = v208;
    v406[7] = v204;
    v238 = *(v406 + (v220 & 0xF)) / v229;
    v405[0] = v226;
    v405[1] = v207;
    v405[2] = v210;
    v405[3] = v206;
    v405[4] = v209;
    v405[5] = v205;
    v405[6] = v208;
    v405[7] = v204;
    v239 = *(v405 + (v221 & 0xF)) / v229;
    v404[0] = v226;
    v404[1] = v207;
    v404[2] = v210;
    v404[3] = v206;
    v404[4] = v209;
    v404[5] = v205;
    v404[6] = v208;
    v404[7] = v204;
    v240 = *(v404 + (v222 & 0xF)) / v229;
    v403[0] = v226;
    v403[1] = v207;
    v403[2] = v210;
    v403[3] = v206;
    v403[4] = v209;
    v403[5] = v205;
    v403[6] = v208;
    v403[7] = v204;
    v241 = *(v403 + (v223 & 0xF));
    v402[0] = v226;
    v402[1] = v207;
    v402[2] = v210;
    v402[3] = v206;
    v402[4] = v209;
    v402[5] = v205;
    v402[6] = v208;
    v402[7] = v204;
    v242 = *(v402 + (v224 & 0xF)) / v229;
    v401[0] = v226;
    v401[1] = v207;
    v401[2] = v210;
    v401[3] = v206;
    v401[4] = v209;
    v401[5] = v205;
    v401[6] = v208;
    v401[7] = v204;
    v243 = *(v401 + (v225 & 0xF)) / v229;
    v400[0] = v226;
    v400[1] = v207;
    v400[2] = v210;
    v400[3] = v206;
    v400[4] = v209;
    v400[5] = v205;
    v400[6] = v208;
    v400[7] = v204;
    v244 = *(v400 + (v227 & 0xF)) / v229;
    v399[0] = v226;
    v399[1] = v207;
    v399[2] = v210;
    v399[3] = v206;
    v399[4] = v209;
    v399[5] = v205;
    v399[6] = v208;
    v399[7] = v204;
    *&v245 = v244;
    *(&v245 + 1) = *(v399 + (v228 & 0xF)) / v229;
    v323 = v245;
    *&v245 = v242;
    *(&v245 + 1) = v243;
    v322 = v245;
    *&v245 = v240;
    *(&v245 + 1) = v241 / v229;
    v321 = v245;
    *&v245 = v238;
    *(&v245 + 1) = v239;
    v320 = v245;
    *&v245 = v236 / v229;
    *(&v245 + 1) = v237;
    v319 = v245;
    *&v245 = v234;
    *(&v245 + 1) = v235 / v229;
    v318 = v245;
    *&v245 = v232;
    *(&v245 + 1) = v233;
    v317 = v245;
    *&v246 = v230;
    *(&v246 + 1) = v231 / v229;
  }

  else
  {
    v398[0] = v226;
    v398[1] = v207;
    v398[2] = v210;
    v398[3] = v206;
    v398[4] = v209;
    v398[5] = v205;
    v398[6] = v208;
    v398[7] = v204;
    v397[0] = v226;
    v397[1] = v207;
    v397[2] = v210;
    v397[3] = v206;
    v397[4] = v209;
    v397[5] = v205;
    v397[6] = v208;
    v397[7] = v204;
    v396[0] = v226;
    v396[1] = v207;
    v396[2] = v210;
    v396[3] = v206;
    v396[4] = v209;
    v396[5] = v205;
    v396[6] = v208;
    v396[7] = v204;
    v395[0] = v226;
    v395[1] = v207;
    v395[2] = v210;
    v395[3] = v206;
    v395[4] = v209;
    v395[5] = v205;
    v395[6] = v208;
    v395[7] = v204;
    v394[0] = v226;
    v394[1] = v207;
    v394[2] = v210;
    v394[3] = v206;
    v394[4] = v209;
    v394[5] = v205;
    v394[6] = v208;
    v394[7] = v204;
    v393[0] = v226;
    v393[1] = v207;
    v393[2] = v210;
    v393[3] = v206;
    v393[4] = v209;
    v393[5] = v205;
    v393[6] = v208;
    v393[7] = v204;
    v392[0] = v226;
    v392[1] = v207;
    v392[2] = v210;
    v392[3] = v206;
    v392[4] = v209;
    v392[5] = v205;
    v392[6] = v208;
    v392[7] = v204;
    v391[0] = v226;
    v391[1] = v207;
    v391[2] = v210;
    v391[3] = v206;
    v391[4] = v209;
    v391[5] = v205;
    v391[6] = v208;
    v391[7] = v204;
    v390[0] = v226;
    v390[1] = v207;
    v390[2] = v210;
    v390[3] = v206;
    v390[4] = v209;
    v390[5] = v205;
    v390[6] = v208;
    v390[7] = v204;
    v389[0] = v226;
    v389[1] = v207;
    v389[2] = v210;
    v389[3] = v206;
    v389[4] = v209;
    v389[5] = v205;
    v389[6] = v208;
    v389[7] = v204;
    v388[0] = v226;
    v388[1] = v207;
    v388[2] = v210;
    v388[3] = v206;
    v388[4] = v209;
    v388[5] = v205;
    v388[6] = v208;
    v388[7] = v204;
    v387[0] = v226;
    v387[1] = v207;
    v387[2] = v210;
    v387[3] = v206;
    v387[4] = v209;
    v387[5] = v205;
    v387[6] = v208;
    v387[7] = v204;
    v386[0] = v226;
    v386[1] = v207;
    v386[2] = v210;
    v386[3] = v206;
    v386[4] = v209;
    v386[5] = v205;
    v386[6] = v208;
    v386[7] = v204;
    v385[0] = v226;
    v385[1] = v207;
    v385[2] = v210;
    v385[3] = v206;
    v385[4] = v209;
    v385[5] = v205;
    v385[6] = v208;
    v385[7] = v204;
    v384[0] = v226;
    v384[1] = v207;
    v384[2] = v210;
    v384[3] = v206;
    v384[4] = v209;
    v384[5] = v205;
    v384[6] = v208;
    v384[7] = v204;
    v383[0] = v226;
    v383[1] = v207;
    v383[2] = v210;
    v383[3] = v206;
    v383[4] = v209;
    v383[5] = v205;
    v383[6] = v208;
    v383[7] = v204;
    *&v247 = *(v384 + (v227 & 0xF));
    *&v248 = *(v386 + (v224 & 0xF));
    *(&v247 + 1) = *(v383 + (v228 & 0xF));
    v323 = v247;
    *(&v248 + 1) = *(v385 + (v225 & 0xF));
    v322 = v248;
    *&v247 = *(v388 + (v222 & 0xF));
    *(&v247 + 1) = *(v387 + (v223 & 0xF));
    v321 = v247;
    *&v247 = *(v390 + (v220 & 0xF));
    *(&v247 + 1) = *(v389 + (v221 & 0xF));
    v320 = v247;
    *&v247 = *(v392 + (v218 & 0xF));
    *(&v247 + 1) = *(v391 + (v219 & 0xF));
    v319 = v247;
    *&v247 = *(v394 + (v216 & 0xF));
    *(&v247 + 1) = *(v393 + (v217 & 0xF));
    v318 = v247;
    *&v247 = *(v396 + (v214 & 0xF));
    *(&v247 + 1) = *(v395 + (v215 & 0xF));
    v317 = v247;
    *&v246 = *(v398 + (v212 & 0xF));
    *(&v246 + 1) = *(v397 + (v213 & 0xF));
  }

  v316 = v246;
  v249 = v373[2];
  v251 = *v249;
  v250 = v249[1];
  if (v250 != v251)
  {
    if (((v250 - v251) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v252.i32[1] = 0;
  v252.i64[1] = 0;
  v253 = v372[2];
  v255 = *v253;
  v254 = v253[1];
  if (v254 != v255)
  {
    if (((v254 - v255) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v256 = 0;
  v252.i32[0] = 1;
  v257 = vuzp1q_s32(v346, v347);
  v258 = vuzp1q_s32(v344, v345);
  v259 = vuzp1q_s32(v342, v343);
  v260 = vuzp1q_s32(v340, v341);
  v261 = v260;
  v261.i32[0] = 0;
  v262 = v259;
  v262.i32[0] = 0;
  v263 = v258;
  v263.i32[0] = 0;
  v264 = v257;
  v264.i32[0] = 0;
  v265 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v334, v252), 0), v261, v260);
  v266 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v331, v252), 0), v262, v259);
  v267 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v327, v252), 0), v263, v258);
  v268 = v265;
  v268.i32[1] = 0;
  v269 = v266;
  v269.i32[1] = 0;
  v270 = v267;
  v270.i32[1] = 0;
  v271 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v324, v252), 0), v264, v257);
  v272 = v271;
  v272.i32[1] = 0;
  v273 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v336, v252), 0), v268, v265);
  v274 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v332, v252), 0), v269, v266);
  v275 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v328, v252), 0), v270, v267);
  v276 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v325, v252), 0), v272, v271);
  v277 = v273;
  v277.i32[2] = 0;
  v278 = v274;
  v278.i32[2] = 0;
  v279 = v275;
  v279.i32[2] = 0;
  v280 = v276;
  v280.i32[2] = 0;
  v281 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v338, v252), 0), v277, v273);
  v282 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v335, v252), 0), v278, v274);
  v283 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v330, v252), 0), v279, v275);
  v284 = v281;
  v284.i32[3] = 0;
  v285 = vdupq_lane_s32(*&vceqq_s32(v337, v252), 0);
  v286 = v282;
  v286.i32[3] = 0;
  v287 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v326, v252), 0), v280, v276);
  v288 = vdupq_lane_s32(*&vceqq_s32(v333, v252), 0);
  v289 = v283;
  v289.i32[3] = 0;
  v290 = vdupq_lane_s32(*&vceqq_s32(v329, v252), 0);
  v291 = v287;
  v291.i32[3] = 0;
  v292 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v339, v252), 0), v284, v281);
  v293 = vbslq_s8(v285, v286, v282);
  v294 = vbslq_s8(v288, v289, v283);
  v295 = v520;
  v296 = vbslq_s8(v290, v291, v287);
  do
  {
    v382[0] = v348;
    v382[1] = v349;
    v382[2] = v350;
    v382[3] = v351;
    v382[4] = v353;
    v382[5] = v362;
    v382[6] = v368;
    v382[7] = v370;
    *(v295 - 48) = *(v382 + (v256 & 0xF));
    v381[0] = v292;
    v381[1] = v293;
    v381[2] = v294;
    v381[3] = v296;
    *(v295 - 32) = *(v381 + (v256 & 0xF));
    v380[0] = v316;
    v380[1] = v317;
    v380[2] = v318;
    v380[3] = v319;
    v380[4] = v320;
    v380[5] = v321;
    v380[6] = v322;
    v380[7] = v323;
    *(v295 - 16) = *(v380 + (v256 & 0xF));
    v379[0] = v358;
    v379[1] = v376;
    v379[2] = v355;
    v379[3] = v356;
    *v295 = *(v379 + (v256 & 0xF));
    v378[0] = xmmword_239B0A0D0;
    memset(&v378[1], 0, 48);
    v295[16] = *(v378 + (v256 & 0xF));
    v377[0] = xmmword_239B0A0D0;
    memset(&v377[1], 0, 48);
    v295[32] = *(v377 + (v256++ & 0xF));
    ++v295;
  }

  while (v256 != 16);
  v297 = v61 >> 3;
  LODWORD(v298) = (DWORD2(v507) + 7) >> 3;
  HIDWORD(v507) = v298;
  v299 = (DWORD2(v507) + 7) & 0xFFFFFFF8;
  if (DWORD2(v507) <= v299 >> 1)
  {
    LODWORD(v298) = (DWORD2(v507) + 3) >> 2;
    if (DWORD2(v507) <= 2 * v298)
    {
      LODWORD(v298) = (DWORD2(v507) + 1) >> 1;
      if (v298 >= DWORD2(v507))
      {
        v297 = v61 & 0xFFFFFFFFFFFFFFF8;
        v300 = 1;
        LODWORD(v298) = DWORD2(v507);
        v299 = DWORD2(v507);
      }

      else
      {
        v297 *= 4;
        v299 = (DWORD2(v507) + 1) & 0xFFFFFFFE;
        v300 = 2;
      }
    }

    else
    {
      v297 *= 2;
      v299 = 4 * ((DWORD2(v507) + 3) >> 2);
      v300 = 4;
    }

    HIDWORD(v507) = v298;
    v301 = DWORD1(v507);
    if (v297 < 2)
    {
      goto LABEL_253;
    }

LABEL_249:
    v302 = v297 >> 1;
    if (v297 >> 1 >= v301)
    {
      do
      {
        v297 = v302;
        v300 *= 2;
        if (v302 < 2)
        {
          break;
        }

        v302 >>= 1;
      }

      while (v297 >> 1 >= v301);
      v298 = (DWORD2(v507) + v300 - 1) / v300;
      HIDWORD(v507) = v298;
      v299 = v298 * v300;
    }

    goto LABEL_253;
  }

  v300 = 8;
  v301 = DWORD1(v507);
  if (v297 >= 2)
  {
    goto LABEL_249;
  }

LABEL_253:
  v303 = 1;
  if (v299 >= 0x400)
  {
    if (v298 >= 2)
    {
      do
      {
        v304 = v298 + 1;
        v298 = (v298 + 1) >> 1;
        v303 *= 2;
      }

      while (v304 >= 4 && v300 * v298 > 0x3FF);
    }

    HIDWORD(v507) = v298;
  }

  [v363 setBuffer:objc_msgSend(v354 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v354, 0, 16, 0, 0) + *(*(v371 + 8) + 64), 0}];
  [v363 setBuffer:objc_msgSend(v366 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v366, 0, 16, 0, 0) + *(*(v371 + 8) + 144), 1}];
  if (v359 == 268435472)
  {
    v305 = 0;
  }

  else
  {
    v305 = *(v371 + 192);
  }

  [v363 setBuffer:objc_msgSend(v365 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v365, 0, 16, 0, 0) + v305, 2}];
  objc_msgSend_setBytes_length_atIndex_(v363);
  v527.i64[0] = v303;
  v527.i64[1] = (v301 + v297 - 1) / v297;
  v528.i64[0] = 1;
  v501[0] = v300;
  v501[1] = v297;
  v501[2] = 1;
  [v363 dispatchThreadgroups:&v527 threadsPerThreadgroup:v501];
  if (v359 == 268435472)
  {
    v306 = v364[18];
    v535 = v365;
    [v306 encodeToMPSCommandEncoder:v363 commandBuffer:v360 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v535, 1), v374}];
  }

  return 0;
}