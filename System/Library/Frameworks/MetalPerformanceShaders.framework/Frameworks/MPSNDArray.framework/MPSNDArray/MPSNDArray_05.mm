void sub_239A55548(_Unwind_Exception *a1)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v2 - 152));
    if ((SLOBYTE(STACK[0x1507]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x1507]) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v2 - 128));
  _Unwind_Resume(a1);
}

MPSKernelDAG *GetPlaceHolderIndexInSourceArrayLUT(MPSKernelDAG *this, int a2, int a3, unint64_t *a4, unint64_t *a5, int a6, int a7)
{
  v8 = *(this + 8);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    v21 = a4;
    v22 = a5;
    v14 = -1;
LABEL_21:
    v13 = -1;
    goto LABEL_22;
  }

  v11 = this;
  if (!a2)
  {
    if (!a3)
    {
      return this;
    }

    v21 = a4;
    v22 = a5;
    v18 = 0;
    v14 = -1;
    do
    {
      v19 = *v9++;
      this = MPSKernelDAG::GetCoreOpInputAtIndex(v11);
      if (v19 == *(this + 4))
      {
        v14 = v18;
      }

      ++v18;
    }

    while (v9 != v10);
    goto LABEL_21;
  }

  v21 = a4;
  v22 = a5;
  v12 = 0;
  v13 = -1;
  if (a3)
  {
    v14 = -1;
    do
    {
      v15 = *v9;
      if (v15 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
      {
        v13 = v12;
      }

      v16 = *v9++;
      this = MPSKernelDAG::GetCoreOpInputAtIndex(v11);
      if (v16 == *(this + 4))
      {
        v14 = v12;
      }

      ++v12;
    }

    while (v9 != v10);
  }

  else
  {
    do
    {
      v17 = *v9++;
      this = MPSKernelDAG::GetCoreOpInputAtIndex(v11);
      if (v17 == *(this + 4))
      {
        v13 = v12;
      }

      ++v12;
    }

    while (v9 != v10);
    v14 = -1;
  }

LABEL_22:
  if (v21 && a2)
  {
    if (v13 == -1)
    {
      return this;
    }

    *v21 = v13;
  }

  if (v22 && a3 && v14 != -1)
  {
    *v22 = v14;
  }

  return this;
}

uint64_t MPSNDArrayLUTGEMVFunctionConstructor(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 68);
  v7 = MPSCreateFunctionConstantValues();
  v17 = v6 & 0xFFFFFF;
  [v7 setConstantValue:&v17 type:33 atIndex:115];
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  if (*a3 != -1 || ((v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF) == 0) ? (v13 = v12 == 0) : (v13 = 0), v13 ? (v14 = a3[5] == -1) : (v14 = 0), !v14))
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v18 = *(a3 + 1);
      [v7 setConstantValue:&v18 type:33 atIndex:126];
      v8 = *a3;
    }

    if (v8 != -1)
    {
      v18 = v8;
      [v7 setConstantValue:&v18 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v18 = a3[2];
      [v7 setConstantValue:&v18 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v18 = a3[3];
      [v7 setConstantValue:&v18 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v18 = a3[4];
      [v7 setConstantValue:&v18 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v18 = a3[5];
      [v7 setConstantValue:&v18 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v18 = a3[8];
      [v7 setConstantValue:&v18 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v18 = a3[9];
      [v7 setConstantValue:&v18 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v18 = a3[6];
      [v7 setConstantValue:&v18 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v18 = a3[7];
      [v7 setConstantValue:&v18 type:33 atIndex:116];
    }
  }

  v15 = _MPSNewSpecializedFunction();

  return v15;
}

uint64_t EncodeTile(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 232) graph];
  v8 = **(v7 + 56);
  if (*(*(v7 + 56) + 8) == v8)
  {
    goto LABEL_140;
  }

  v10 = *(*v8 + 8);
  v9 = *v10;
  if (*(v10 + 8) == *v10)
  {
    goto LABEL_141;
  }

  v11 = *v9;
  v12 = [*(a4 + 232) graph];
  v13 = **(v12 + 56);
  if (*(*(v12 + 56) + 8) == v13)
  {
LABEL_140:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v15 = *(*v13 + 24);
  v14 = *v15;
  if (*(v15 + 8) == *v15)
  {
LABEL_141:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = *v14;
  v17 = *(v11 + 2);
  if (v17 > 285212703)
  {
    if (v17 <= 536870915)
    {
      if (v17 > 301989895)
      {
        if (v17 == 301989896)
        {
          v18 = 512;
          goto LABEL_49;
        }

        if (v17 == 335544328)
        {
          v18 = 544;
          goto LABEL_49;
        }
      }

      else
      {
        if (v17 == 285212704)
        {
          v18 = 416;
          goto LABEL_49;
        }

        if (v17 == 285212736)
        {
          v18 = 448;
          goto LABEL_49;
        }
      }
    }

    else if (v17 <= 536870927)
    {
      if (v17 == 536870916)
      {
        v18 = 0;
        goto LABEL_49;
      }

      if (v17 == 536870920)
      {
        v18 = 32;
        goto LABEL_49;
      }
    }

    else
    {
      switch(v17)
      {
        case 536870928:
          v18 = 64;
          goto LABEL_49;
        case 536870944:
          v18 = 96;
          goto LABEL_49;
        case 536870976:
          v18 = 128;
          goto LABEL_49;
      }
    }
  }

  else if (v17 <= 31)
  {
    if (v17 > 7)
    {
      if (v17 == 8)
      {
        v18 = 192;
        goto LABEL_49;
      }

      if (v17 == 16)
      {
        v18 = 224;
        goto LABEL_49;
      }
    }

    else
    {
      if (v17 == -1879048176)
      {
        v18 = 384;
        goto LABEL_49;
      }

      if (v17 == 4)
      {
        v18 = 160;
        goto LABEL_49;
      }
    }
  }

  else if (v17 <= 268435463)
  {
    if (v17 == 32)
    {
      v18 = 256;
      goto LABEL_49;
    }

    if (v17 == 64)
    {
      v18 = 288;
      goto LABEL_49;
    }
  }

  else
  {
    switch(v17)
    {
      case 268435464:
        v18 = 480;
        goto LABEL_49;
      case 268435472:
        v18 = 320;
        goto LABEL_49;
      case 268435488:
        v18 = 352;
        goto LABEL_49;
    }
  }

  v18 = 576;
LABEL_49:
  v19 = *(v16 + 2);
  v56 = a2;
  if (v19 > 285212703)
  {
    if (v19 <= 536870915)
    {
      if (v19 > 301989895)
      {
        if (v19 == 301989896)
        {
          v20 = 16;
          goto LABEL_93;
        }

        if (v19 == 335544328)
        {
          v20 = 17;
          goto LABEL_93;
        }
      }

      else
      {
        if (v19 == 285212704)
        {
          v20 = 13;
          goto LABEL_93;
        }

        if (v19 == 285212736)
        {
          v20 = 14;
          goto LABEL_93;
        }
      }
    }

    else if (v19 <= 536870927)
    {
      if (v19 == 536870916)
      {
        v20 = 0;
        goto LABEL_93;
      }

      if (v19 == 536870920)
      {
        v20 = 1;
        goto LABEL_93;
      }
    }

    else
    {
      switch(v19)
      {
        case 536870928:
          v20 = 2;
          goto LABEL_93;
        case 536870944:
          v20 = 3;
          goto LABEL_93;
        case 536870976:
          v20 = 4;
          goto LABEL_93;
      }
    }
  }

  else if (v19 <= 31)
  {
    if (v19 > 7)
    {
      if (v19 == 8)
      {
        v20 = 6;
        goto LABEL_93;
      }

      if (v19 == 16)
      {
        v20 = 7;
        goto LABEL_93;
      }
    }

    else
    {
      if (v19 == -1879048176)
      {
        v20 = 12;
        goto LABEL_93;
      }

      if (v19 == 4)
      {
        v20 = 5;
        goto LABEL_93;
      }
    }
  }

  else if (v19 <= 268435463)
  {
    if (v19 == 32)
    {
      v20 = 8;
      goto LABEL_93;
    }

    if (v19 == 64)
    {
      v20 = 9;
      goto LABEL_93;
    }
  }

  else
  {
    switch(v19)
    {
      case 268435464:
        v20 = 15;
        goto LABEL_93;
      case 268435472:
        v20 = 10;
        goto LABEL_93;
      case 268435488:
        v20 = 11;
        goto LABEL_93;
    }
  }

  v20 = 18;
LABEL_93:
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v73 = v21;
  v74 = v21;
  v70 = -1;
  v72 = v21;
  v69 = v21;
  v71 = v20 | v18;
  *&v74 = [*(a4 + 16) count] | 0x10000;
  DimensionSize = BaseTensor::GetDimensionSize(v11);
  v23 = 1;
  v24 = BaseTensor::GetDimensionSize(v11);
  v25 = BaseTensor::GetDimensionSize(v11);
  v26 = BaseTensor::GetDimensionSize(v16);
  v27 = BaseTensor::GetDimensionSize(v16);
  v28 = BaseTensor::GetDimensionSize(v16);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v63 = DimensionSize;
  v64 = v24;
  v29 = a4;
  v65 = v25;
  v66 = v26;
  v67 = v27;
  v68 = v28;
  v54 = *(a1 + *MEMORY[0x277CD7360]);
  v55 = *(a1 + *MEMORY[0x277CD7368]);
  v53 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v31 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v31 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v34 = 256;
  if (v33 < 0x100)
  {
    v34 = v33;
  }

  if (v34 > 2 * v32)
  {
    v23 = v34 / v32;
  }

  v35 = v28;
  v36 = (v27 + v23 - 1) / v23;
  v37 = v26 - 1;
  v38 = (v32 + v37) / v32;
  v40 = v26 >= 2 && v27 == 1 && v28 == 1;
  v41 = v23 * v32;
  v42 = (v23 * v32 + v37) / (v23 * v32);
  if (v40)
  {
    v35 = 1;
  }

  if (v40)
  {
    v36 = 1;
  }

  if (v40)
  {
    v43 = 1;
  }

  else
  {
    v42 = v38;
    v43 = v23;
  }

  if (v40)
  {
    v44 = v23 * v32;
  }

  else
  {
    v44 = v32;
  }

  v46 = v26 == 1 && v27 >= 2 && v28 == 1;
  if (v46)
  {
    v47 = 1;
  }

  else
  {
    v47 = v35;
  }

  if (v46)
  {
    v48 = (v27 + v41 - 1) / v41;
  }

  else
  {
    v48 = v36;
  }

  if (v46)
  {
    v49 = 1;
  }

  else
  {
    v49 = v42;
  }

  if (v46)
  {
    v50 = v41;
  }

  else
  {
    v50 = v43;
  }

  if (v46)
  {
    v51 = 1;
  }

  else
  {
    v51 = v44;
  }

  [v56 setComputePipelineState:PipelineStateForMPSKey];
  MPSSetNDArraysOnComputeEncoder(v56, v29, 3, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v56);
  v58[0] = v49;
  v58[1] = v48;
  v58[2] = v47;
  v57[0] = v51;
  v57[1] = v50;
  v57[2] = 1;
  [v56 dispatchThreadgroups:v58 threadsPerThreadgroup:v57];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

void decodeMultiples(NSCoder *a1, MPSNDArraySizes *a2)
{
  v4 = objc_autoreleasePoolPush();
  a2->dimensions[0] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 0]);
  a2->dimensions[1] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 1]);
  a2->dimensions[2] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 2]);
  a2->dimensions[3] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 3]);
  a2->dimensions[4] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 4]);
  a2->dimensions[5] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 5]);
  a2->dimensions[6] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 6]);
  a2->dimensions[7] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 7]);
  a2->dimensions[8] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 8]);
  a2->dimensions[9] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 9]);
  a2->dimensions[10] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 10]);
  a2->dimensions[11] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 11]);
  a2->dimensions[12] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 12]);
  a2->dimensions[13] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 13]);
  a2->dimensions[14] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 14]);
  a2->dimensions[15] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 15]);

  objc_autoreleasePoolPop(v4);
}

void encodeMultiples(NSCoder *a1, const MPSNDArraySizes *a2)
{
  v4 = objc_autoreleasePoolPush();
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[0], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 0]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[1], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 1]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[2], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 2]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[3], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 3]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[4], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 4]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[5], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 5]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[6], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 6]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[7], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 7]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[8], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 8]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[9], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 9]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[10], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 10]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[11], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 11]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[12], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 12]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[13], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 13]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[14], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 14]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[15], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 15]);

  objc_autoreleasePoolPop(v4);
}

uint64_t EncodeTileGradient(char *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = [*(a4 + 232) graph];
  v10 = **(v9 + 56);
  if (*(*(v9 + 56) + 8) == v10)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = *v10;
  v13 = *(*v10 + 8);
  v12 = *v13;
  if (*(v13 + 8) - *v13 <= 8uLL || (v15 = *(v11 + 24), v14 = *v15, *(v15 + 8) == *v15))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = v12[1];
  v17 = *v14;
  v18 = *(*v12 + 8);
  if (v18 > 285212703)
  {
    if (v18 <= 536870915)
    {
      if (v18 > 301989895)
      {
        if (v18 == 301989896)
        {
          v19 = 512;
          v20 = *(v16 + 2);
          if (v20 <= 285212703)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v18 != 335544328)
          {
            goto LABEL_94;
          }

          v19 = 544;
          v20 = *(v16 + 2);
          if (v20 <= 285212703)
          {
            goto LABEL_64;
          }
        }
      }

      else if (v18 == 285212704)
      {
        v19 = 416;
        v20 = *(v16 + 2);
        if (v20 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v18 != 285212736)
        {
          goto LABEL_94;
        }

        v19 = 448;
        v20 = *(v16 + 2);
        if (v20 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v18 <= 536870927)
    {
      if (v18 == 536870916)
      {
        v19 = 0;
        v20 = *(v16 + 2);
        if (v20 > 285212703)
        {
          goto LABEL_95;
        }

        goto LABEL_64;
      }

      if (v18 != 536870920)
      {
        goto LABEL_94;
      }

      v19 = 32;
      v20 = *(v16 + 2);
      if (v20 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      switch(v18)
      {
        case 536870928:
          v19 = 64;
          v20 = *(v16 + 2);
          if (v20 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870944:
          v19 = 96;
          v20 = *(v16 + 2);
          if (v20 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870976:
          v19 = 128;
          v20 = *(v16 + 2);
          if (v20 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        default:
          goto LABEL_94;
      }
    }
  }

  else if (v18 <= 31)
  {
    if (v18 > 7)
    {
      if (v18 == 8)
      {
        v19 = 192;
        v20 = *(v16 + 2);
        if (v20 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v18 != 16)
        {
          goto LABEL_94;
        }

        v19 = 224;
        v20 = *(v16 + 2);
        if (v20 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v18 == -1879048176)
    {
      v19 = 384;
      v20 = *(v16 + 2);
      if (v20 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v18 != 4)
      {
        goto LABEL_94;
      }

      v19 = 160;
      v20 = *(v16 + 2);
      if (v20 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else if (v18 <= 268435463)
  {
    if (v18 == 32)
    {
      v19 = 256;
      v20 = *(v16 + 2);
      if (v20 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v18 != 64)
      {
        goto LABEL_94;
      }

      v19 = 288;
      v20 = *(v16 + 2);
      if (v20 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    switch(v18)
    {
      case 268435464:
        v19 = 480;
        v20 = *(v16 + 2);
        if (v20 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435472:
        v19 = 320;
        v20 = *(v16 + 2);
        if (v20 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435488:
        v19 = 352;
        v20 = *(v16 + 2);
        if (v20 > 285212703)
        {
          break;
        }

LABEL_64:
        if (v20 <= 31)
        {
          if (v20 > 7)
          {
            if (v20 == 8)
            {
              v21 = 6144;
              v22 = *(v17 + 2);
              if (v22 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }

            if (v20 == 16)
            {
              v21 = 7168;
              v22 = *(v17 + 2);
              if (v22 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }
          }

          else
          {
            if (v20 == -1879048176)
            {
              v21 = 12288;
              v22 = *(v17 + 2);
              if (v22 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }

            if (v20 == 4)
            {
              v21 = 5120;
              v22 = *(v17 + 2);
              if (v22 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }
          }
        }

        else if (v20 <= 268435463)
        {
          if (v20 == 32)
          {
            v21 = 0x2000;
            v22 = *(v17 + 2);
            if (v22 > 285212703)
            {
              goto LABEL_146;
            }

            goto LABEL_124;
          }

          if (v20 == 64)
          {
            v21 = 9216;
            v22 = *(v17 + 2);
            if (v22 > 285212703)
            {
              goto LABEL_146;
            }

            goto LABEL_124;
          }
        }

        else
        {
          switch(v20)
          {
            case 268435464:
              v21 = 15360;
              v22 = *(v17 + 2);
              if (v22 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            case 268435472:
              v21 = 10240;
              v22 = *(v17 + 2);
              if (v22 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            case 268435488:
              v21 = 11264;
              v22 = *(v17 + 2);
              if (v22 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
          }
        }

LABEL_145:
        v21 = 18432;
        v22 = *(v17 + 2);
        if (v22 > 285212703)
        {
          goto LABEL_146;
        }

        goto LABEL_124;
      default:
LABEL_94:
        v19 = 576;
        v20 = *(v16 + 2);
        if (v20 > 285212703)
        {
          break;
        }

        goto LABEL_64;
    }
  }

LABEL_95:
  if (v20 <= 536870915)
  {
    if (v20 > 301989895)
    {
      if (v20 == 301989896)
      {
        v21 = 0x4000;
        v22 = *(v17 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v20 != 335544328)
        {
          goto LABEL_145;
        }

        v21 = 17408;
        v22 = *(v17 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_124;
        }
      }
    }

    else if (v20 == 285212704)
    {
      v21 = 13312;
      v22 = *(v17 + 2);
      if (v22 <= 285212703)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v20 != 285212736)
      {
        goto LABEL_145;
      }

      v21 = 14336;
      v22 = *(v17 + 2);
      if (v22 <= 285212703)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v20 <= 536870927)
  {
    if (v20 == 536870916)
    {
      v21 = 0;
      v22 = *(v17 + 2);
      if (v22 > 285212703)
      {
        goto LABEL_146;
      }

      goto LABEL_124;
    }

    if (v20 != 536870920)
    {
      goto LABEL_145;
    }

    v21 = 1024;
    v22 = *(v17 + 2);
    if (v22 <= 285212703)
    {
      goto LABEL_124;
    }
  }

  else
  {
    switch(v20)
    {
      case 536870928:
        v21 = 2048;
        v22 = *(v17 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_124;
        }

        break;
      case 536870944:
        v21 = 3072;
        v22 = *(v17 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_124;
        }

        break;
      case 536870976:
        v21 = 4096;
        v22 = *(v17 + 2);
        if (v22 > 285212703)
        {
          break;
        }

LABEL_124:
        if (v22 <= 31)
        {
          if (v22 > 7)
          {
            if (v22 == 8)
            {
              v23 = 6;
              goto LABEL_168;
            }

            if (v22 == 16)
            {
              v23 = 7;
              goto LABEL_168;
            }
          }

          else
          {
            if (v22 == -1879048176)
            {
              v23 = 12;
              goto LABEL_168;
            }

            if (v22 == 4)
            {
              v23 = 5;
              goto LABEL_168;
            }
          }
        }

        else if (v22 <= 268435463)
        {
          if (v22 == 32)
          {
            v23 = 8;
            goto LABEL_168;
          }

          if (v22 == 64)
          {
            v23 = 9;
            goto LABEL_168;
          }
        }

        else
        {
          switch(v22)
          {
            case 268435464:
              v23 = 15;
              goto LABEL_168;
            case 268435472:
              v23 = 10;
              goto LABEL_168;
            case 268435488:
              v23 = 11;
              goto LABEL_168;
          }
        }

        goto LABEL_167;
      default:
        goto LABEL_145;
    }
  }

LABEL_146:
  if (v22 <= 536870915)
  {
    if (v22 > 301989895)
    {
      if (v22 == 301989896)
      {
        v23 = 16;
        goto LABEL_168;
      }

      if (v22 == 335544328)
      {
        v23 = 17;
        goto LABEL_168;
      }
    }

    else
    {
      if (v22 == 285212704)
      {
        v23 = 13;
        goto LABEL_168;
      }

      if (v22 == 285212736)
      {
        v23 = 14;
        goto LABEL_168;
      }
    }
  }

  else if (v22 <= 536870927)
  {
    if (v22 == 536870916)
    {
      v23 = 0;
      goto LABEL_168;
    }

    if (v22 == 536870920)
    {
      v23 = 1;
      goto LABEL_168;
    }
  }

  else
  {
    switch(v22)
    {
      case 536870928:
        v23 = 2;
        goto LABEL_168;
      case 536870944:
        v23 = 3;
        goto LABEL_168;
      case 536870976:
        v23 = 4;
        goto LABEL_168;
    }
  }

LABEL_167:
  v23 = 18;
LABEL_168:
  v24 = 0x2000000;
  if (!a5)
  {
    v24 = 0;
  }

  *&v25 = -1;
  *(&v25 + 1) = -1;
  v62 = v25;
  v63 = v25;
  v59 = -1;
  v61 = v25;
  v58 = v25;
  v60 = v19 | v21 | v23 | v24;
  *&v63 = [*(a4 + 16) count] | 0x10100;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  objc_msgSend_multiples(a1);
  v55.i32[0] = v46;
  v56.i32[0] = BaseTensor::GetDimensionSize(v16);
  LODWORD(v57) = BaseTensor::GetDimensionSize(v17);
  if (v57 == 1)
  {
    v26 = v55;
    if ((vmovn_s32(vceqq_s32(v55, v56)).u8[0] & 1) == 0)
    {
      v26.i32[0] = v56.i32[0];
      v55 = v26;
    }
  }

  v55.i32[1] = DWORD2(v46);
  DimensionSize = BaseTensor::GetDimensionSize(v16);
  v56.i32[1] = DimensionSize;
  DWORD1(v57) = BaseTensor::GetDimensionSize(v17);
  if (DWORD1(v57) == 1)
  {
    v28 = v55;
    if (v55.i32[1] != DimensionSize)
    {
      v28.i32[1] = DimensionSize;
      v55 = v28;
    }
  }

  v55.i32[2] = v47;
  v29 = BaseTensor::GetDimensionSize(v16);
  v56.i32[2] = v29;
  DWORD2(v57) = BaseTensor::GetDimensionSize(v17);
  if (DWORD2(v57) == 1)
  {
    v30 = v55;
    if (v55.i32[2] != v29)
    {
      v30.i32[2] = v29;
      v55 = v30;
    }
  }

  v42 = *&a1[*MEMORY[0x277CD7360]];
  v43 = *&a1[*MEMORY[0x277CD7368]];
  v31 = 1;
  v41 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v33 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v36 = 256;
  if (v35 < 0x100)
  {
    v36 = v35;
  }

  if (v36 > 2 * v34)
  {
    v31 = v36 / v34;
  }

  v37 = (v34 + v57 - 1) / v34;
  v38 = DWORD2(v57);
  v39 = (v31 + DWORD1(v57) - 1) / v31;
  [a2 setComputePipelineState:PipelineStateForMPSKey];
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  v45[0] = v37;
  v45[1] = v39;
  v45[2] = v38;
  v44[0] = v34;
  v44[1] = v31;
  v44[2] = 1;
  [a2 dispatchThreadgroups:v45 threadsPerThreadgroup:v44];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayCropResize(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 232) inputTensorAtIndex:0];
  v8 = [*(a4 + 232) inputTensorAtIndex:1];
  v9 = [*(a4 + 232) inputTensorAtIndex:2];
  v54 = a4;
  v10 = [*(a4 + 232) outputTensorAtIndex:0];
  v11 = *(v7 + 16);
  v13 = *v11;
  v12 = v11[1];
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v14 = *(v8 + 16);
  v16 = *v14;
  v15 = v14[1];
  v55 = v8;
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v17 = *(v9 + 16);
  v19 = *v17;
  v18 = v17[1];
  v53 = a2;
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v20 = *(v10 + 2);
  v22 = *v20;
  v21 = v20[1];
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if ((*v55 != 2 || MEMORY[0] != 4) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = MEMORY[8];
  if ((*v9 != 1 || MEMORY[0] != MEMORY[8]) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v9 + 8) != 536870944 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = MEMORY[0];
  if (v24 == [a1 resizeWidth])
  {
    [a1 resizeHeight];
  }

  v25 = MEMORY[0];
  if (v25 != [a1 resizeWidth] || (v26 = MEMORY[8], v26 != objc_msgSend(a1, "resizeHeight")) || MEMORY[0x18] != v23)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  operator delete(0);
  operator delete(0);
  v27 = (*(v55 + 8) << 10) | (32 * *(v7 + 8)) | (*(v9 + 8) << 15) | *(v9 + 8);
  v28 = [a1 resampleMode] & 1;
  v29 = v28 & 0xFFFFFFF9 | (2 * ([a1 samplingMode] & 3));
  v30 = v29 & 0xFFFFFFE7 | (8 * ([a1 coordinateMode] & 3));
  if ([a1 normalizeCoordinates])
  {
    v31 = 32;
  }

  else
  {
    v31 = 0;
  }

  *&v32 = -1;
  *(&v32 + 1) = -1;
  v67 = v32;
  v68 = v32;
  v66 = v32;
  v63 = v32;
  v64 = v30 | v31;
  v65 = v27;
  *&v68 = [*(v54 + 16) count] | 0x10000;
  v51 = *&a1[*MEMORY[0x277CD7360]];
  v52 = *&a1[*MEMORY[0x277CD7368]];
  v50 = *(v54 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v34 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  DimensionSize = BaseTensor::GetDimensionSize(v7);
  v37 = BaseTensor::GetDimensionSize(v7);
  v38 = BaseTensor::GetDimensionSize(v7);
  v39 = BaseTensor::GetDimensionSize(v7);
  *&v40 = __PAIR64__(v37, DimensionSize);
  *(&v40 + 1) = __PAIR64__(v39, v38);
  v56 = v40;
  v41 = BaseTensor::GetDimensionSize(v10);
  v42 = BaseTensor::GetDimensionSize(v10);
  BaseTensor::GetDimensionSize(v10);
  v43 = BaseTensor::GetDimensionSize(v10);
  v44 = v35 + v41 - 1;
  v45 = (v42 + 1) >> 1;
  v46 = v43;
  v47 = v44 / v35;
  [v53 setComputePipelineState:PipelineStateForMPSKey];
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  v62 = 0;
  v60 = v56;
  [a1 spatialScale];
  v61 = v48;
  objc_msgSend_setBytes_length_atIndex_(v53);
  MPSSetNDArraysOnComputeEncoder(v53, v54, 4, 0, 0);
  v59[0] = v47;
  v59[1] = v45;
  v59[2] = v46;
  v57 = v35;
  v58 = xmmword_239B06620;
  [v53 dispatchThreadgroups:v59 threadsPerThreadgroup:&v57];
  return 0;
}

void sub_239A58300(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    operator delete(v3);
    if (!v1)
    {
LABEL_3:
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  if (!v4)
  {
LABEL_4:
    if (!v2)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v4);
  if (!v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v2);
  _Unwind_Resume(exception_object);
}

void *EncodeConstantInitializationInternal(uint64_t a1, void *a2, uint64_t a3, char *a4, int a5)
{
  v9 = *(a1 + 168);
  v10 = &a4[*MEMORY[0x277CD7410]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 3);
  v14 = MEMORY[0x277CD73D8];
  v15 = *&a4[*MEMORY[0x277CD73D8]];
  v52 = *(v10 + 2);
  v53 = v13;
  v51[0] = v11;
  v51[1] = v12;
  v16 = v15 & 0xF;
  v17 = *(v51 + v16);
  v50[2] = v52;
  v50[3] = v13;
  v50[0] = v11;
  v50[1] = v12;
  v18 = BYTE1(v15) & 0xF;
  v19 = *(v50 + v18);
  v20 = &a4[*MEMORY[0x277CD7418]];
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = *(v20 + 3);
  v56 = *(v20 + 2);
  v57 = v23;
  v55[0] = v21;
  v55[1] = v22;
  v24 = *(v55 + v16);
  v54[2] = v56;
  v54[3] = v23;
  v54[0] = v21;
  v54[1] = v22;
  v25 = *(v54 + v18);
  makeStrideBytes();
  v26 = *&a4[*v14];
  v49[6] = v76;
  v49[7] = v77;
  v49[4] = v74;
  v49[5] = v75;
  v49[2] = v72;
  v49[3] = v73;
  v49[0] = v70;
  v49[1] = v71;
  v27 = *(v49 + (v26 & 0xF));
  v28 = *&a4[*MEMORY[0x277CD73C8]];
  v48[6] = v76;
  v48[7] = v77;
  v48[4] = v74;
  v48[5] = v75;
  v48[2] = v72;
  v48[3] = v73;
  v48[0] = v70;
  v48[1] = v71;
  v47 = a3 + *(v48 + (BYTE1(v26) & 0xF)) * v25 + v27 * v24;
  v44 = *(v48 + (BYTE1(v26) & 0xF));
  v45 = v27 / (v28 >> 3);
  if (v28 > 285212703)
  {
    if (v28 <= 536870915)
    {
      if (v28 > 301989895)
      {
        if (v28 == 301989896)
        {
          v29 = 16;
          goto LABEL_45;
        }

        if (v28 == 335544328)
        {
          v29 = 17;
          goto LABEL_45;
        }
      }

      else
      {
        if (v28 == 285212704)
        {
          v29 = 13;
          goto LABEL_45;
        }

        if (v28 == 285212736)
        {
          v29 = 14;
          goto LABEL_45;
        }
      }
    }

    else if (v28 <= 536870927)
    {
      if (v28 == 536870916)
      {
        v29 = 0;
        goto LABEL_45;
      }

      if (v28 == 536870920)
      {
        v29 = 1;
        goto LABEL_45;
      }
    }

    else
    {
      switch(v28)
      {
        case 536870928:
          v29 = 2;
          goto LABEL_45;
        case 536870944:
          v29 = 3;
          goto LABEL_45;
        case 536870976:
          v29 = 4;
          goto LABEL_45;
      }
    }
  }

  else if (v28 <= 31)
  {
    if (v28 > 7)
    {
      if (v28 == 8)
      {
        v29 = 6;
        goto LABEL_45;
      }

      if (v28 == 16)
      {
        v29 = 7;
        goto LABEL_45;
      }
    }

    else
    {
      if (v28 == -1879048176)
      {
        v29 = 12;
        goto LABEL_45;
      }

      if (v28 == 4)
      {
        v29 = 5;
        goto LABEL_45;
      }
    }
  }

  else if (v28 <= 268435463)
  {
    if (v28 == 32)
    {
      v29 = 8;
      goto LABEL_45;
    }

    if (v28 == 64)
    {
      v29 = 9;
      goto LABEL_45;
    }
  }

  else
  {
    switch(v28)
    {
      case 268435464:
        v29 = 15;
        goto LABEL_45;
      case 268435472:
        v29 = 10;
        goto LABEL_45;
      case 268435488:
        v29 = 11;
        goto LABEL_45;
    }
  }

  v29 = 18;
LABEL_45:
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v68 = v30;
  v69 = v30;
  v65 = -1;
  v67 = v30;
  v64 = v30;
  v66 = v29;
  v31 = 0.0;
  if (!a5)
  {
    v31 = v9;
  }

  v63 = v31;
  ComputeState = MPSLibrary::GetComputeState();
  v33 = [ComputeState threadExecutionWidth];
  if (v33 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v33;
  }

  *&v34 = __PAIR64__(v44, v45);
  v46 = v34;
  *(&v34 + 1) = __PAIR64__(v19, v17);
  v62 = v34;
  [a2 setComputePipelineState:ComputeState];
  MPSLibrary::ReleaseComputeState();
  [a2 setBuffer:objc_msgSend(a4 offset:"buffer") atIndex:{v47, 0}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  objc_msgSend_setBytes_length_atIndex_(a2);
  v60 = (v17 + v35 - 1) / v35;
  v61.i64[0] = (v19 + 1) >> 1;
  v61.i64[1] = 1;
  v58 = v35;
  v59 = xmmword_239B06620;
  result = [a2 dispatchThreadgroups:&v60 threadsPerThreadgroup:&v58];
  if (a5)
  {
    v37 = MPSLibrary::GetComputeState();
    v38 = [v37 threadExecutionWidth];
    if (v38 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v38;
    }

    v40 = 2 * v39;
    if (v19 >= v17)
    {
      v41 = v17;
    }

    else
    {
      v41 = v19;
    }

    v42 = v46;
    DWORD2(v42) = v41;
    v62 = v42;
    v43 = (v41 + v39 - 1) / v39;
    [a2 setComputePipelineState:v37];
    MPSLibrary::ReleaseComputeState();
    [a2 setBuffer:objc_msgSend(a4 offset:"buffer") atIndex:{v47, 0}];
    objc_msgSend_setBytes_length_atIndex_(a2);
    v60 = v43;
    v61 = vdupq_n_s64(1uLL);
    v58 = v40;
    v59 = v61;
    return [a2 dispatchThreadgroups:&v60 threadsPerThreadgroup:&v58];
  }

  return result;
}

uint64_t EncodeRandomInitializationInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 208);
  v10 = *(a1 + 144);
  v11 = *(a1 + 160);
  v12 = [a1 kernelDimensionalityForDestinationArray:v9];
  v13 = *(a1 + 152);
  v14 = MEMORY[0x277CD73C8];
  if (!v13)
  {
    v33 = a2;
    v15 = 0;
LABEL_7:

    *(a1 + 152) = [objc_alloc(MEMORY[0x277CD7288]) initWithDevice:objc_msgSend(a3 destinationDataType:"device") seed:*&v9[*v14] distributionDescriptor:{v11, v10}];
    a2 = v33;
    goto LABEL_8;
  }

  if ([v13 destinationDataType] != *&v9[*v14])
  {
    v33 = a2;
    v15 = *(a1 + 152);
    goto LABEL_7;
  }

  if (a5)
  {
    [*(a1 + 152) reinitializeDistributionDescriptor:a5];
  }

LABEL_8:
  v16 = *(a4 + 192);
  v17 = *&v9[*v14];
  v18 = &v9[*MEMORY[0x277CD7410]];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = MEMORY[0x277CD73D8];
  v22 = *&v9[*MEMORY[0x277CD73D8]];
  v23 = *(v18 + 2);
  v24 = *(v18 + 3);
  v41[2] = v23;
  v41[3] = v24;
  v41[0] = v19;
  v41[1] = v20;
  v25 = *(v41 + (v22 & 0xF));
  if (v12 >= 2)
  {
    for (i = 1; i != v12; ++i)
    {
      v39 = v22;
      v40[0] = v19;
      v40[1] = v20;
      v40[2] = v23;
      v40[3] = v24;
      v25 *= *(v40 + (*(&v39 | i & 0xF) & 0xF));
    }
  }

  v27 = &v9[*MEMORY[0x277CD7418]];
  v35 = v22;
  v28 = *&v27[4 * (*(&v35 | (v12 - 1) & 0xF) & 0xF)];
  v29 = v16 / (v17 >> 3);
  makeStrideBytes();
  v36 = *&v9[*v21];
  v38[6] = v48;
  v38[7] = v49;
  v38[4] = v46;
  v38[5] = v47;
  v38[2] = v44;
  v38[3] = v45;
  v38[0] = v42;
  v38[1] = v43;
  v30 = *(v38 + (*(&v36 | (v12 - 1) & 0xF) & 0xF));
  v31 = *&v9[*v14] >> 3;
  v37[6] = v48;
  v37[7] = v49;
  v37[4] = v46;
  v37[5] = v47;
  v37[2] = v44;
  v37[3] = v45;
  v37[0] = v42;
  v37[1] = v43;
  return [*(a1 + 152) encodeToCommandBuffer:a3 computeEncoder:a2 destinationBuffer:objc_msgSend(v9 destinationOffset:"buffer") numEntries:v29 + v30 / v31 * v28 stride:{v25, *(v37 + (v36 & 0xF)) / v31}];
}

uint64_t GetPlaceHolderIndexInSourceArrayAffineGEMM(MPSKernelDAG *a1, MPSNDArrayAffineQuantizationDescriptor *a2, uint64_t *a3, MPSNDArrayAffineQuantizationDescriptor *a4, uint64_t *a5, int a6, const BaseTensor **a7, const BaseTensor **a8)
{
  if (a6)
  {
    if (a4)
    {
      v61 = a7;
      v62 = a5;
      v63 = MTLReportFailureTypeEnabled();
      a5 = v62;
      a7 = v61;
      if (v63)
      {
        MTLReportFailure();
        a5 = v62;
        a7 = v61;
      }
    }

    if (a5)
    {
      v64 = a7;
      v65 = a5;
      v66 = MTLReportFailureTypeEnabled();
      a5 = v65;
      a7 = v64;
      if (v66)
      {
        MTLReportFailure();
        a5 = v65;
        a7 = v64;
      }
    }
  }

  v69 = a5;
  v70 = a7;
  v12 = [MPSNDArrayQuantizedMatrixMultiplication getLeftScaleIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4, a3];
  v13 = [MPSNDArrayQuantizedMatrixMultiplication getLeftZeroPointIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  v14 = [MPSNDArrayQuantizedMatrixMultiplication getLeftMinValIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  v15 = [MPSNDArrayQuantizedMatrixMultiplication getLeftDQuantScaleIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  v16 = [MPSNDArrayQuantizedMatrixMultiplication getLeftDQuantMinValIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  *v78 = [MPSNDArrayQuantizedMatrixMultiplication getRightScaleIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  *v79 = [MPSNDArrayQuantizedMatrixMultiplication getRightZeroPointIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  *v80 = [MPSNDArrayQuantizedMatrixMultiplication getRightMinValIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  *v81 = [MPSNDArrayQuantizedMatrixMultiplication getRightDQuantScaleIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  v71 = a2;
  v73 = a4;
  *v82 = [MPSNDArrayQuantizedMatrixMultiplication getRightDQuantMinValIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  if (a6)
  {
    --v12;
    --v13;
    v17 = v14 - 1;
  }

  else
  {
    v17 = v14;
  }

  if (a6)
  {
    v18 = v15 - 1;
  }

  else
  {
    v18 = v15;
  }

  *v75 = v17;
  *v76 = v18;
  if (a6)
  {
    v19 = v16 - 1;
  }

  else
  {
    v19 = v16;
  }

  *v77 = v19;
  v20 = *(a1 + 8);
  v21 = *v20;
  v74 = v20[1];
  if (*v20 == v74)
  {
    v89 = -1;
    v90 = -1;
    v87 = -1;
    v88 = -1;
    v86 = -1;
    v26 = -1;
    v84 = -1;
    v85 = -1;
    v83 = -1;
    v25 = -1;
    v24 = -1;
    v23 = -1;
  }

  else
  {
    v22 = 0;
    v23 = -1;
    v24 = -1;
    v25 = -1;
    v83 = -1;
    v84 = -1;
    v85 = -1;
    v26 = -1;
    v86 = -1;
    v87 = -1;
    v88 = -1;
    v89 = -1;
    v90 = -1;
    do
    {
      v27 = *v21;
      if (v27 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
      {
        v23 = v22;
      }

      v28 = *v21;
      if (v28 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
      {
        v26 = v22;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        v29 = *v21;
        if (v29 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
        {
          v24 = v22;
        }
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        v30 = *v21;
        if (v30 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
        {
          v25 = v22;
        }
      }

      if ((*v75 & 0x8000000000000000) == 0)
      {
        v31 = *v21;
        CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v33 = v83;
        if (v31 == *(CoreOpInputAtIndex + 32))
        {
          v33 = v22;
        }

        v83 = v33;
      }

      if ((*v76 & 0x8000000000000000) == 0)
      {
        v34 = *v21;
        v35 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v36 = v84;
        if (v34 == *(v35 + 32))
        {
          v36 = v22;
        }

        v84 = v36;
      }

      if ((*v77 & 0x8000000000000000) == 0)
      {
        v37 = *v21;
        v38 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v39 = v85;
        if (v37 == *(v38 + 32))
        {
          v39 = v22;
        }

        v85 = v39;
      }

      if ((*v78 & 0x8000000000000000) == 0)
      {
        v40 = *v21;
        v41 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v42 = v86;
        if (v40 == *(v41 + 32))
        {
          v42 = v22;
        }

        v86 = v42;
      }

      if ((*v79 & 0x8000000000000000) == 0)
      {
        v43 = *v21;
        v44 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v45 = v87;
        if (v43 == *(v44 + 32))
        {
          v45 = v22;
        }

        v87 = v45;
      }

      if ((*v80 & 0x8000000000000000) == 0)
      {
        v46 = *v21;
        v47 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v48 = v88;
        if (v46 == *(v47 + 32))
        {
          v48 = v22;
        }

        v88 = v48;
      }

      if ((*v81 & 0x8000000000000000) == 0)
      {
        v49 = *v21;
        v50 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v51 = v89;
        if (v49 == *(v50 + 32))
        {
          v51 = v22;
        }

        v89 = v51;
      }

      if ((*v82 & 0x8000000000000000) == 0)
      {
        v52 = *v21;
        v53 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v54 = v90;
        if (v52 == *(v53 + 32))
        {
          v54 = v22;
        }

        v90 = v54;
      }

      ++v22;
      ++v21;
    }

    while (v21 != v74);
  }

  if (v68)
  {
    *v68 = v23;
    v68[1] = v24;
    v68[2] = v25;
    v68[3] = v83;
    v68[4] = v84;
    v68[5] = v85;
  }

  if (v69)
  {
    *v69 = v26;
    v69[1] = v86;
    v69[2] = v87;
    v69[3] = v88;
    v69[4] = v89;
    v69[5] = v90;
  }

  if (v70)
  {
    *v70 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
    if (v12 < 0)
    {
      v70[1] = 0;
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_66:
        v70[2] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        if ((*v75 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_72;
      }
    }

    else
    {
      v70[1] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_66;
      }
    }

    v70[2] = 0;
    if ((*v75 & 0x8000000000000000) == 0)
    {
LABEL_67:
      v70[3] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
      if ((*v76 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    }

LABEL_72:
    v70[3] = 0;
    if ((*v76 & 0x8000000000000000) == 0)
    {
LABEL_68:
      v70[4] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
      if ((*v77 & 0x8000000000000000) == 0)
      {
LABEL_69:
        v55 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
LABEL_75:
        v70[5] = v55;
        goto LABEL_76;
      }

LABEL_74:
      v55 = 0;
      goto LABEL_75;
    }

LABEL_73:
    v70[4] = 0;
    if ((*v77 & 0x8000000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_74;
  }

LABEL_76:
  if (!a8)
  {
    goto LABEL_89;
  }

  *a8 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
  if ((*v78 & 0x8000000000000000) != 0)
  {
    a8[1] = 0;
    if ((*v79 & 0x8000000000000000) == 0)
    {
LABEL_79:
      a8[2] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
      if ((*v80 & 0x8000000000000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_85;
    }
  }

  else
  {
    a8[1] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
    if ((*v79 & 0x8000000000000000) == 0)
    {
      goto LABEL_79;
    }
  }

  a8[2] = 0;
  if ((*v80 & 0x8000000000000000) == 0)
  {
LABEL_80:
    a8[3] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
    if ((*v81 & 0x8000000000000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_86:
    a8[4] = 0;
    if ((*v82 & 0x8000000000000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_87:
    v56 = 0;
    goto LABEL_88;
  }

LABEL_85:
  a8[3] = 0;
  if ((*v81 & 0x8000000000000000) != 0)
  {
    goto LABEL_86;
  }

LABEL_81:
  a8[4] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
  if ((*v82 & 0x8000000000000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_82:
  v56 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
LABEL_88:
  a8[5] = v56;
LABEL_89:
  if (v71)
  {
    v57 = v23 == -1;
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;
  if (v73)
  {
    v59 = v26 == -1;
  }

  else
  {
    v59 = 0;
  }

  if (v59)
  {
    return 1;
  }

  else
  {
    return v58;
  }
}

uint64_t GetPlaceHolderIndexInSourceArrayQuantizedGEMM(MPSKernelDAG *a1, MPSNDArrayAffineQuantizationDescriptor *a2, uint64_t *a3, MPSNDArrayAffineQuantizationDescriptor *a4, uint64_t *a5, BOOL *a6, BOOL *a7)
{
  if (a3)
  {
    if (a5)
    {
      *a3 = -1;
      *a5 = -1;
      a3[1] = -1;
      a5[1] = -1;
      a3[2] = -1;
      a5[2] = -1;
      a3[3] = -1;
      a5[3] = -1;
      a3[4] = -1;
      a5[4] = -1;
      a3[5] = -1;
      a5[5] = -1;
      if (!a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *&v15 = -1;
      *(&v15 + 1) = -1;
      *(a3 + 1) = v15;
      *(a3 + 2) = v15;
      *a3 = v15;
      if (!a2)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (a5)
    {
      *&v13 = -1;
      *(&v13 + 1) = -1;
      *(a5 + 1) = v13;
      *(a5 + 2) = v13;
      *a5 = v13;
    }

    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if ([(MPSNDArrayQuantizationDescriptor *)a2 quantizationScheme]!= 1)
  {
    PlaceHolderIndexInSourceArrayAffineGEMM = -1;
    goto LABEL_18;
  }

LABEL_11:
  if (!a4)
  {
    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = 0;
LABEL_15:
    PlaceHolderIndexInSourceArrayAffineGEMM = GetPlaceHolderIndexInSourceArrayAffineGEMM(v16, v17, v18, v19, a5, 0, 0, 0);
    if (!a2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)a4 quantizationScheme]== 1)
  {
    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = a4;
    goto LABEL_15;
  }

  PlaceHolderIndexInSourceArrayAffineGEMM = -1;
  if (!a2)
  {
    goto LABEL_19;
  }

LABEL_18:
  if ([(MPSNDArrayQuantizationDescriptor *)a2 quantizationScheme]!= 2)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (a4)
  {
    if ([(MPSNDArrayQuantizationDescriptor *)a4 quantizationScheme]!= 2)
    {
      goto LABEL_24;
    }

    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = a4;
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 0;
  }

  PlaceHolderIndexInSourceArrayAffineGEMM = GetPlaceHolderIndexInSourceArrayLUTGEMM(v20, v21, v22, v23, a5);
LABEL_24:
  if (a6)
  {
    v25 = a3[1];
    v24 = a3[2];
    v26 = a3[3];
    v27 = a3[4];
    v28 = a3[5];
    v29 = v24 != -1;
    if (v24 == -1)
    {
      v30 = 3;
    }

    else
    {
      v30 = 4;
    }

    if (v25 != -1)
    {
      ++v29;
    }

    if (v26 == -1)
    {
      v31 = v29;
    }

    else
    {
      v31 = v29 + 1;
    }

    v32 = a5[3];
    if (v32 == -1)
    {
      v33 = v30;
    }

    else
    {
      v33 = v30 + 1;
    }

    if (v27 == -1)
    {
      v34 = v33;
    }

    else
    {
      ++v31;
      v34 = v33 + 1;
    }

    if (v28 == -1)
    {
      v35 = v31;
    }

    else
    {
      v35 = v31 + 1;
    }

    v36 = a5[1];
    v37 = a5[2];
    if (v37 == -1)
    {
      v38 = v35 + 3;
    }

    else
    {
      v38 = v35 + 4;
    }

    v39 = a5[5];
    if (v32 == -1)
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 + 1;
    }

    if (a5[4] == -1)
    {
      v41 = v40;
    }

    else
    {
      v41 = v40 + 1;
    }

    if (v25 != 2 && v25 != -1 || v24 != 3 && v24 != -1)
    {
      goto LABEL_69;
    }

    v42 = 0;
    v44 = v27 != -1 && v27 != v33;
    v45 = v26 == v30 || v26 == -1;
    if (!v45 || v44)
    {
      goto LABEL_70;
    }

    if (v28 != -1 && v28 != v34)
    {
      goto LABEL_69;
    }

    v42 = 0;
    v48 = v37 == -1 || v37 == v35 + 3;
    v50 = v32 != -1 && v32 != v38;
    v51 = v36 == v35 + 2 || v36 == -1;
    if (!v51 || !v48 || v50)
    {
      goto LABEL_70;
    }

    if (v39 == -1 || v39 == v40)
    {
      v42 = v39 == -1 || v39 == v41;
    }

    else
    {
LABEL_69:
      v42 = 0;
    }

LABEL_70:
    *a6 = v42;
  }

  return PlaceHolderIndexInSourceArrayAffineGEMM;
}

uint64_t GetPlaceHolderIndexInSourceArrayLUTGEMM(MPSKernelDAG *this, MPSNDArrayLUTQuantizationDescriptor *a2, uint64_t *a3, MPSNDArrayLUTQuantizationDescriptor *a4, uint64_t *a5)
{
  v5 = *(this + 8);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    v13 = -1;
    v12 = -1;
    v11 = -1;
    v10 = -1;
  }

  else if (a2)
  {
    if (a4)
    {
      v9 = 0;
      v10 = -1;
      v11 = -1;
      v12 = -1;
      v13 = -1;
      do
      {
        v14 = *v6;
        if (v14 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v10 = v9;
        }

        v15 = *v6;
        if (v15 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v11 = v9;
        }

        v16 = *v6;
        if (v16 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v12 = v9;
        }

        v17 = *v6++;
        if (v17 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v13 = v9;
        }

        ++v9;
      }

      while (v6 != v7);
    }

    else
    {
      v22 = 0;
      v10 = -1;
      v11 = -1;
      v12 = -1;
      do
      {
        v23 = *v6;
        if (v23 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v10 = v22;
        }

        v24 = *v6;
        if (v24 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v11 = v22;
        }

        v25 = *v6++;
        if (v25 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v12 = v22;
        }

        ++v22;
      }

      while (v6 != v7);
      v13 = -1;
    }
  }

  else
  {
    if (a4)
    {
      v18 = 0;
      v10 = -1;
      v11 = -1;
      v13 = -1;
      do
      {
        v19 = *v6;
        if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v10 = v18;
        }

        v20 = *v6;
        if (v20 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v11 = v18;
        }

        v21 = *v6++;
        if (v21 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v13 = v18;
        }

        ++v18;
      }

      while (v6 != v7);
    }

    else
    {
      v26 = 0;
      v10 = -1;
      v11 = -1;
      do
      {
        v27 = *v6;
        if (v27 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v10 = v26;
        }

        v28 = *v6++;
        if (v28 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v11 = v26;
        }

        ++v26;
      }

      while (v6 != v7);
      v13 = -1;
    }

    v12 = -1;
  }

  if (a3)
  {
    *a3 = v10;
    a3[1] = v12;
  }

  if (a5)
  {
    *a5 = v11;
    a5[1] = v13;
  }

  if (a2)
  {
    v29 = v10 == -1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  if (a4)
  {
    v31 = v11 == -1;
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    return 1;
  }

  else
  {
    return v30;
  }
}

uint64_t MPSNDArrayOptimGEMVI8FunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v7 = MPSCreateFunctionConstantValues();
  v27 = v6 & 1;
  v26 = (v6 & 2) != 0;
  v25 = (v6 & 8) != 0;
  v24 = (v6 & 4) != 0;
  v23 = (v6 >> 4) & 0x3F;
  v22 = (v6 >> 14) & 7;
  v21 = (v6 >> 10) & 0xF;
  v20 = (v6 & 0x20000) != 0;
  v19 = (v6 >> 18) & 0x1F;
  v18 = (v6 >> 23) & 0x1F;
  v17 = (v6 & 0x10000000) != 0;
  v16 = (v6 & 0x20000000) != 0;
  v15 = (v6 >> 30) & 0x3F;
  v14 = (v6 >> 36) & 0xF;
  v13 = BYTE5(v6) & 1;
  v12 = (v6 & 0x20000000000) != 0;
  v11 = (v6 >> 42) & 0xF;
  v10 = (v6 & 0x400000000000) != 0;
  [v7 setConstantValue:&v27 type:53 atIndex:114];
  [v7 setConstantValue:&v26 type:53 atIndex:113];
  [v7 setConstantValue:&v25 type:53 atIndex:112];
  [v7 setConstantValue:&v24 type:53 atIndex:111];
  [v7 setConstantValue:&v23 type:41 atIndex:110];
  [v7 setConstantValue:&v22 type:41 atIndex:109];
  [v7 setConstantValue:&v21 type:41 atIndex:108];
  [v7 setConstantValue:&v20 type:53 atIndex:107];
  [v7 setConstantValue:&v19 type:41 atIndex:106];
  [v7 setConstantValue:&v18 type:41 atIndex:105];
  [v7 setConstantValue:&v17 type:53 atIndex:104];
  [v7 setConstantValue:&v16 type:53 atIndex:103];
  [v7 setConstantValue:&v15 type:41 atIndex:102];
  [v7 setConstantValue:&v14 type:41 atIndex:101];
  [v7 setConstantValue:&v13 type:53 atIndex:100];
  [v7 setConstantValue:&v12 type:53 atIndex:99];
  [v7 setConstantValue:&v11 type:41 atIndex:98];
  [v7 setConstantValue:&v10 type:53 atIndex:97];
  AddFunctionConstantList(v7, a3);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

uint64_t MPSNDArrayMatMulDeviceBehavior::EncodeArrayMultiplyI4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v541 = *MEMORY[0x277D85DE8];
  if ((IsOptimizedInt4KernelSupported(a2, a5) & 1) == 0)
  {
    EncodeQuantizedMatrixMultiplicationFallback(a2, a3, a4, a5);
    return 0;
  }

  v425 = a2;
  v10 = *(a1 + 8);
  if (!v10)
  {
    if (*(a2 + 208) == 4)
    {
      v10 = *(a2 + 200);
    }

    else
    {
      v10 = 0;
    }
  }

  v386 = v10;
  v412 = a4;
  v410 = *(a2 + *MEMORY[0x277CD7350]);
  v11 = [*(a5 + 232) inputTensorAtIndex:0];
  v12 = [*(a5 + 232) inputTensorAtIndex:1];
  v428 = a5;
  v13 = [*(a5 + 232) outputTensorAtIndex:0];
  v14 = v11[2];
  v16 = *v14;
  v15 = v14[1];
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v17 = v12[2];
  v19 = *v17;
  v18 = v17[1];
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v20 = v13[2];
  v22 = *v20;
  v21 = v20[1];
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v23 = *&v425[1]._fileVersion.bits;
  isa = v425[2].super.isa;
  if (*v11 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v12 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v13 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = [*(v428 + 232) graph];
  if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v24, v23, &v537, isa, &v533, 0, v25) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v426 = a3;
  v26 = *(v428 + 16);
  v27 = [v26 objectAtIndexedSubscript:v537];
  v28 = [v26 objectAtIndexedSubscript:v533];
  v427 = *(v428 + 208);
  v29 = MEMORY[0x277CD7410];
  v30 = MEMORY[0x277CD73D8];
  v421 = *(&v425->super.isa + *MEMORY[0x277CD7378]);
  if ((v421 & 1) == 0)
  {
    v31 = *(v27 + *MEMORY[0x277CD73D8]);
    if ((v31 || BYTE1(*(v27 + *MEMORY[0x277CD73D8])) != 1) && (v31 != 1 || BYTE1(*(v27 + *MEMORY[0x277CD73D8]))) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v32 = *(v28 + *v30);
    if ((v32 || BYTE1(*(v28 + *v30)) != 1) && (v32 != 1 || BYTE1(*(v28 + *v30))) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v27 + *v30 + 2) != 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v28 + *v30 + 2) != 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v33 = MEMORY[0x277CD73F0];
    if (*(v27 + *MEMORY[0x277CD73F0]) >= 4uLL && *(v27 + *v29 + 4 * (*(v27 + *v30 + 3) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v28 + *v33) >= 4uLL && *(v28 + *v29 + 4 * (*(v28 + *v30 + 3) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v27 + *v29 + 4 * (*(v27 + *v30) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v27 + *v29 + 4 * (*(v27 + *v30 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v28 + *v29 + 4 * (*(v28 + *v30) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v28 + *v29 + 4 * (*(v28 + *v30 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v427 + *v29 + 4 * (*(v427 + *v30) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v427 + *v29 + 4 * (*(v427 + *v30 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v27 + *v29 + 4 * (*(v27 + *v30) & 0xF)) != *(v28 + *v29 + 4 * (*(v28 + *v30 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v27 + *v29 + 4 * (*(v27 + *v30 + 1) & 0xF)) != *(v427 + *v29 + 4 * (*(v427 + *v30 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v28 + *v29 + 4 * (*(v28 + *v30) & 0xF)) != *(v427 + *v29 + 4 * (*(v427 + *v30) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!(v23 | isa))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_119;
    }

    if (v23 && isa)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

LABEL_55:
      [(MPSNDArrayAffineQuantizationDescriptor *)v23 implicitZeroPoint];
      MPSGetLinearOffsetBytes(v28, 0, 3, 0, 0);
      MPSGetLinearOffsetBytes(v27, 0, 3, 0, 0);
      v384 = v537;
      v385 = v533;
      v34 = [v26 objectAtIndexedSubscript:v538];
      v35 = (v34 + *v29);
      v36 = *v35;
      v37 = v35[1];
      v38 = *(v34 + *v30);
      v39 = v35[2];
      v40 = v35[3];
      v461[3] = v40;
      v461[2] = v39;
      v461[1] = v37;
      v461[0] = v36;
      if (*(v461 + (v38 & 0xF)) == 1)
      {
        v460[0] = v36;
        v460[1] = v37;
        v460[2] = v39;
        v460[3] = v40;
        v41 = *(v460 + (BYTE1(v38) & 0xF)) == 1;
      }

      else
      {
        v41 = 0;
      }

      v383 = v538;
      if (![(MPSNDArrayAffineQuantizationDescriptor *)v23 hasZeroPoint])
      {
        v382 = 0;
        v42 = 0;
        goto LABEL_63;
      }

      v42 = [v26 objectAtIndexedSubscript:v539];
      v43 = *v29;
      v44 = *(v42 + v43);
      v45 = *(v42 + v43 + 16);
      v46 = *v30;
      v47 = *(v42 + v46);
      v48 = *(v42 + v43 + 32);
      v49 = *(v42 + v43 + 48);
      v459[3] = v49;
      v459[2] = v48;
      v459[1] = v45;
      v459[0] = v44;
      v50 = *(v459 + (v47 & 0xF));
      if (v50 == 1)
      {
        v458[0] = v44;
        v458[1] = v45;
        v458[2] = v48;
        v458[3] = v49;
        v382 = v539;
        if (v41 || *(v458 + (BYTE1(v47) & 0xF)) == 1)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v382 = v539;
        if (v41)
        {
          goto LABEL_63;
        }
      }

      v67 = (v34 + v43);
      v68 = *v67;
      v69 = v67[1];
      v70 = *(v34 + v46);
      v71 = v67[2];
      v72 = v67[3];
      v457[3] = v72;
      v457[2] = v71;
      v457[1] = v69;
      v457[0] = v68;
      if (v50 != *(v457 + (v70 & 0xF)) || (v456[0] = v44, v456[1] = v45, v456[2] = v48, v456[3] = v49, v73 = *(v456 + (BYTE1(v47) & 0xF)), v455[0] = v68, v455[1] = v69, v455[2] = v71, v455[3] = v72, v73 != *(v455 + (BYTE1(v70) & 0xF))))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

LABEL_63:
      if (![(MPSNDArrayAffineQuantizationDescriptor *)v23 hasMinValue])
      {
        v381 = 0;
        v51 = 0;
        goto LABEL_68;
      }

      v51 = [v26 objectAtIndexedSubscript:v540];
      v52 = *v29;
      v53 = *(v51 + v52);
      v54 = *(v51 + v52 + 16);
      v55 = *v30;
      v56 = *(v51 + v55);
      v57 = *(v51 + v52 + 32);
      v58 = *(v51 + v52 + 48);
      v454[3] = v58;
      v454[2] = v57;
      v454[1] = v54;
      v454[0] = v53;
      v59 = *(v454 + (v56 & 0xF));
      if (v59 == 1)
      {
        v453[0] = v53;
        v453[1] = v54;
        v453[2] = v57;
        v453[3] = v58;
        v381 = v540;
        if (v41 || *(v453 + (BYTE1(v56) & 0xF)) == 1)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v381 = v540;
        if (v41)
        {
          goto LABEL_68;
        }
      }

      v74 = (v34 + v52);
      v75 = *v74;
      v76 = v74[1];
      v77 = *(v34 + v55);
      v78 = v74[2];
      v79 = v74[3];
      v452[3] = v79;
      v452[2] = v78;
      v452[1] = v76;
      v452[0] = v75;
      if (v59 != *(v452 + (v77 & 0xF)) || (v451[0] = v53, v451[1] = v54, v451[2] = v57, v451[3] = v58, v80 = *(v451 + (BYTE1(v56) & 0xF)), v450[0] = v75, v450[1] = v76, v450[2] = v78, v450[3] = v79, v80 != *(v450 + (BYTE1(v77) & 0xF))))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

LABEL_68:
      if ((v421 & 1) == 0)
      {
        if (*(v27 + *v29 + 4 * (*(v27 + *v30) & 0xF)) != *(v28 + *v29 + 4 * (*(v28 + *v30 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
        {
          v350 = *v29;
          v351 = *v30;
          v354 = *(v27 + v350 + 4 * (*(v27 + v351) & 0xF));
          v357 = *(v28 + v350 + 4 * (*(v28 + v351 + 1) & 0xF));
          MTLReportFailure();
        }

        if (v534 != -1 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v535 != -1 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v536 != -1 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      v60 = *v29;
      v61 = *(v27 + v60);
      v62 = *(v27 + v60 + 16);
      v63 = *(v27 + v60 + 32);
      v64 = *v30;
      v65 = *(v27 + v64);
      v449 = *(v27 + v60 + 48);
      v448[2] = v63;
      v448[1] = v62;
      v448[0] = v61;
      v416 = *(v448 + (BYTE1(v65) & 0xF));
      v447[3] = v449;
      v447[2] = v63;
      v447[1] = v62;
      v447[0] = v61;
      v423 = v65;
      v408 = *(v447 + (v65 & 0xF));
      v406 = BYTE1(*(v28 + v64));
      v364 = *(v28 + v60 + 4 * (*(v28 + v64) & 0xF));
      v414 = v364;
      v66 = v28;
      v418 = v28;
      if (v421)
      {
        goto LABEL_174;
      }

LABEL_138:
      if (*(v27 + *MEMORY[0x277CD73C8]) != 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v111 = *(v66 + *MEMORY[0x277CD73C8]);
      if (v111 != -1879048176 && v111 != 268435472 && v111 != 268435488 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((*(v27 + *MEMORY[0x277CD7400]) & 3) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((*(v27 + *MEMORY[0x277CD7408]) & 7) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v112 = MEMORY[0x277CD73F0];
      if (*(v34 + *MEMORY[0x277CD73F0]))
      {
        v113 = 0;
        do
        {
          v114 = *v29;
          v115 = *v30;
          v445 = *(v27 + v115);
          v116 = *(v27 + v114 + 4 * (*(&v445 | v113 & 0xF) & 0xF));
          v446 = *(v34 + v115);
          if (v116 % *(v34 + v114 + 4 * (*(&v446 | v113 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v117 = *v30;
          v443 = *(v27 + v117);
          v118 = *(&v443 | v113 & 0xF);
          v444 = *(v34 + v117);
          if (v118 != *(&v444 | v113 & 0xF) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (v42)
          {
            v119 = *v29;
            v120 = *v30;
            v441 = *(v27 + v120);
            v121 = *(v27 + v119 + 4 * (*(&v441 | v113 & 0xF) & 0xF));
            v442 = *(v34 + v120);
            if (v121 % *(v42 + v119 + 4 * (*(&v442 | v113 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v122 = *v30;
            v439 = *(v27 + v122);
            v123 = *(&v439 | v113 & 0xF);
            v440 = *(v42 + v122);
            if (v123 != *(&v440 | v113 & 0xF) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

          if (v51)
          {
            v124 = *v29;
            v125 = *v30;
            v437 = *(v27 + v125);
            v126 = *(v27 + v124 + 4 * (*(&v437 | v113 & 0xF) & 0xF));
            v438 = *(v34 + v125);
            if (v126 % *(v51 + v124 + 4 * (*(&v438 | v113 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v127 = *v30;
            v435 = *(v27 + v127);
            v128 = *(&v435 | v113 & 0xF);
            v436 = *(v51 + v127);
            if (v128 != *(&v436 | v113 & 0xF) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

          ++v113;
        }

        while (v113 < *(v34 + *v112));
      }

      if (v42 && *(v42 + *MEMORY[0x277CD73C8]) != 536870916 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(v34 + *MEMORY[0x277CD73C8]) != *&v418[*MEMORY[0x277CD73C8]] && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v51 && *(v51 + *MEMORY[0x277CD73C8]) != *&v418[*MEMORY[0x277CD73C8]] && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_174;
    }
  }

  if (v23)
  {
    goto LABEL_55;
  }

LABEL_119:
  [(MPSNDArrayAffineQuantizationDescriptor *)isa implicitZeroPoint];
  MPSGetLinearOffsetBytes(v27, 0, 3, 0, 0);
  MPSGetLinearOffsetBytes(v28, 0, 3, 0, 0);
  v384 = v533;
  v385 = v537;
  v34 = [v26 objectAtIndexedSubscript:v534];
  v81 = (v34 + *v29);
  v82 = *v81;
  v83 = v81[1];
  v84 = *(v34 + *v30);
  v85 = v81[2];
  v86 = v81[3];
  v476[3] = v86;
  v476[2] = v85;
  v476[1] = v83;
  v476[0] = v82;
  if (*(v476 + (v84 & 0xF)) == 1)
  {
    v475[0] = v82;
    v475[1] = v83;
    v475[2] = v85;
    v475[3] = v86;
    v87 = *(v475 + (BYTE1(v84) & 0xF)) == 1;
  }

  else
  {
    v87 = 0;
  }

  v383 = v534;
  if (![(MPSNDArrayAffineQuantizationDescriptor *)isa hasZeroPoint])
  {
    v382 = 0;
    v42 = 0;
    goto LABEL_127;
  }

  v42 = [v26 objectAtIndexedSubscript:v535];
  v88 = *v29;
  v89 = *(v42 + v88);
  v90 = *(v42 + v88 + 16);
  v91 = *v30;
  v92 = *(v42 + v91);
  v93 = *(v42 + v88 + 32);
  v94 = *(v42 + v88 + 48);
  v474[3] = v94;
  v474[2] = v93;
  v474[1] = v90;
  v474[0] = v89;
  v95 = *(v474 + (v92 & 0xF));
  if (v95 == 1)
  {
    v473[0] = v89;
    v473[1] = v90;
    v473[2] = v93;
    v473[3] = v94;
    v382 = v535;
    if (v87 || *(v473 + (BYTE1(v92) & 0xF)) == 1)
    {
      goto LABEL_127;
    }
  }

  else
  {
    v382 = v535;
    if (v87)
    {
      goto LABEL_127;
    }
  }

  v252 = (v34 + v88);
  v253 = *v252;
  v254 = v252[1];
  v255 = *(v34 + v91);
  v256 = v252[2];
  v257 = v252[3];
  v472[3] = v257;
  v472[2] = v256;
  v472[1] = v254;
  v472[0] = v253;
  if (v95 != *(v472 + (v255 & 0xF)) || (v471[0] = v89, v471[1] = v90, v471[2] = v93, v471[3] = v94, v258 = *(v471 + (BYTE1(v92) & 0xF)), v470[0] = v253, v470[1] = v254, v470[2] = v256, v470[3] = v257, v258 != *(v470 + (BYTE1(v255) & 0xF))))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_127:
  if (![(MPSNDArrayAffineQuantizationDescriptor *)isa hasMinValue])
  {
    v381 = 0;
    v51 = 0;
    goto LABEL_132;
  }

  v51 = [v26 objectAtIndexedSubscript:v536];
  v96 = *v29;
  v97 = *(v51 + v96);
  v98 = *(v51 + v96 + 16);
  v99 = *v30;
  v100 = *(v51 + v99);
  v101 = *(v51 + v96 + 32);
  v102 = *(v51 + v96 + 48);
  v469[3] = v102;
  v469[2] = v101;
  v469[1] = v98;
  v469[0] = v97;
  v103 = *(v469 + (v100 & 0xF));
  if (v103 == 1)
  {
    v468[0] = v97;
    v468[1] = v98;
    v468[2] = v101;
    v468[3] = v102;
    v381 = v536;
    if (v87 || *(v468 + (BYTE1(v100) & 0xF)) == 1)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v381 = v536;
    if (v87)
    {
      goto LABEL_132;
    }
  }

  v259 = (v34 + v96);
  v260 = *v259;
  v261 = v259[1];
  v262 = *(v34 + v99);
  v263 = v259[2];
  v264 = v259[3];
  v467[3] = v264;
  v467[2] = v263;
  v467[1] = v261;
  v467[0] = v260;
  if (v103 != *(v467 + (v262 & 0xF)) || (v466[0] = v97, v466[1] = v98, v466[2] = v101, v466[3] = v102, v265 = *(v466 + (BYTE1(v100) & 0xF)), v465[0] = v260, v465[1] = v261, v465[2] = v263, v465[3] = v264, v265 != *(v465 + (BYTE1(v262) & 0xF))))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_132:
  if ((v421 & 1) == 0)
  {
    if (*(v28 + *v29 + 4 * (*(v28 + *v30 + 1) & 0xF)) != *(v27 + *v29 + 4 * (*(v27 + *v30) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      v352 = *v29;
      v353 = *v30;
      v354 = *(v28 + v352 + 4 * (*(v28 + v353 + 1) & 0xF));
      v357 = *(v27 + v352 + 4 * (*(v27 + v353) & 0xF));
      MTLReportFailure();
    }

    if (v538 != -1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v539 != -1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v540 != -1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v104 = *v29;
  v105 = *(v28 + v104);
  v106 = *(v28 + v104 + 16);
  v107 = *(v28 + v104 + 32);
  v108 = *v30;
  v109 = *(v28 + v108);
  v464 = *(v28 + v104 + 48);
  v463[2] = v107;
  v463[1] = v106;
  v463[0] = v105;
  v110 = *(v463 + (v109 & 0xF));
  v462[3] = v464;
  v462[2] = v107;
  v462[1] = v106;
  v462[0] = v105;
  v408 = *(v462 + (BYTE1(v109) & 0xF));
  v414 = *(v27 + v104 + 4 * (BYTE1(*(v27 + v108)) & 0xF));
  v406 = *(v27 + v108);
  v423 = BYTE1(v109);
  v364 = v110;
  v416 = v110;
  v66 = v27;
  v27 = v28;
  v418 = v66;
  if ((v421 & 1) == 0)
  {
    goto LABEL_138;
  }

LABEL_174:
  v129 = *v29;
  v130 = *(v34 + v129);
  v131 = *(v34 + v129 + 16);
  v132 = *(v34 + *v30);
  v133 = *(v34 + v129 + 32);
  v434 = *(v34 + v129 + 48);
  v433[1] = v131;
  v433[2] = v133;
  v433[0] = v130;
  v136 = *(v433 + (v132 & 0xF)) == 1;
  v432[2] = v133;
  v432[3] = v434;
  v432[0] = v130;
  v432[1] = v131;
  v134 = *(v27 + v129 + 4);
  v392 = v130;
  v390 = *(v27 + v129);
  v135 = v390 / v130;
  v136 = v136 && *(v432 + (BYTE1(v132) & 0xF)) == 1;
  v137 = v136;
  v397 = v137;
  v370 = *(v27 + v129 + 4);
  v138 = v134 / DWORD1(v130);
  v401 = v134 / DWORD1(v130);
  v371 = DWORD1(v130);
  if (v136)
  {
    v394 = 0;
    v139 = 0;
    v140 = 0;
    v363 = 0;
    v362 = 0;
  }

  else
  {
    if ((v135 & 7) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v129 = *v29;
    v141 = (v27 + v129);
    v142 = ((v135 - 1) & v135) == 0;
    if (v135 == 1)
    {
      v142 = 0;
    }

    v144 = *v141;
    v143 = v141[1];
    v139 = v135 == v144;
    if (v135 == v144)
    {
      v142 = 0;
    }

    v394 = v142;
    if (v138 == v143)
    {
      v140 = 0;
      v363 = 0;
      v362 = 0;
    }

    else if (v138 == 1)
    {
      v363 = 0;
      v362 = 0;
      v140 = 1;
    }

    else
    {
      v140 = 0;
      if (((v138 - 1) & v138) != 0)
      {
        v362 = (v138 & 7) == 0;
        v363 = (v138 & 7) != 0;
      }

      else
      {
        v362 = 0x100000000;
        v363 = 0;
      }
    }
  }

  v145 = *v30;
  v146 = *(v27 + v129 + 4 * (*(v27 + v145 + 2) & 0xF));
  v147 = *&v418[4 * (v418[v145 + 2] & 0xF) + v129];
  if (v146 == 1 && v147 >= 2)
  {
    v380 = 0;
    v148 = *MEMORY[0x277CD7408];
    v379 = *(v27 + v148);
    v149 = v418;
    v150 = *&v418[v148];
    LODWORD(v151) = *MEMORY[0x277CD73D0];
    v417 = v147;
    v152 = v412;
    v153 = v386;
    goto LABEL_208;
  }

  v154 = v147 == 1 && v146 >= 2;
  if (!v154 && v146 != v147 && MTLReportFailureTypeEnabled())
  {
    v354 = v146;
    v357 = v147;
    MTLReportFailure();
  }

  if (v146 <= v147)
  {
    v155 = v147;
  }

  else
  {
    v155 = v146;
  }

  v417 = v155;
  v148 = *MEMORY[0x277CD7408];
  v156 = *(v27 + v148);
  LODWORD(v151) = *MEMORY[0x277CD73D0];
  LODWORD(v379) = v156;
  if (v146 == 1)
  {
    v380 = 0;
    v153 = v386;
    v405 = *&v418[v148];
    if (v147 != 1)
    {
LABEL_207:
      v152 = v412;
      v149 = v418;
      LODWORD(v150) = v405;
LABEL_208:
      LODWORD(v405) = v150;
      v378 = *&v149[v151 + 4] * v150;
      v157 = v427;
      v158 = *(v427 + v148);
      if (v417 == 1)
      {
        goto LABEL_209;
      }

      goto LABEL_215;
    }
  }

  else
  {
    v380 = *(v27 + v151 + 4) * v156;
    v153 = v386;
    v405 = *&v418[v148];
    if (v147 != 1)
    {
      goto LABEL_207;
    }
  }

  v378 = 0;
  v152 = v412;
  v157 = v427;
  v158 = *(v427 + v148);
  if (v417 == 1)
  {
LABEL_209:
    v389 = 0;
    v159 = *v30;
    if (v42)
    {
      goto LABEL_210;
    }

    goto LABEL_216;
  }

LABEL_215:
  v389 = *(v157 + v151 + 4) * v158;
  v159 = *v30;
  if (v42)
  {
LABEL_210:
    v160 = *(v42 + v148);
    v151 = v151;
    v161 = (v42 + v151);
    v162 = *v161;
    v163 = v161[1];
    v164 = v161[2];
    v165 = v161[3];
    v166 = *(v42 + v159 + 2) & 0xF;
    v431[2] = v164;
    v431[3] = v165;
    v431[0] = v162;
    v431[1] = v163;
    v377 = v160;
    if (*(v431 + v166) == 1)
    {
      v376 = 0;
    }

    else
    {
      v376 = DWORD1(v162) * v160;
    }

    goto LABEL_217;
  }

LABEL_216:
  v377 = 0;
  v376 = 0;
  v151 = v151;
LABEL_217:
  v167 = *(v34 + v148);
  v168 = *(v34 + v151);
  v169 = *(v34 + v151 + 16);
  v170 = *(v34 + v151 + 48);
  v171 = *(v34 + v159 + 2) & 0xF;
  v430[2] = *(v34 + v151 + 32);
  v430[3] = v170;
  v430[0] = v168;
  v430[1] = v169;
  v375 = v167;
  if (*(v430 + v171) == 1)
  {
    v172 = 0;
  }

  else
  {
    v172 = DWORD1(v168) * v167;
  }

  v374 = v172;
  if (v51)
  {
    v173 = *(v51 + v148);
    v174 = *(v51 + v151);
    v175 = *(v51 + v151 + 16);
    v176 = *(v51 + v151 + 48);
    v177 = *(v51 + v159 + 2) & 0xF;
    v429[2] = *(v51 + v151 + 32);
    v429[3] = v176;
    v429[0] = v174;
    v429[1] = v175;
    v373 = v173;
    if (*(v429 + v177) == 1)
    {
      v372 = 0;
    }

    else
    {
      v372 = DWORD1(v174) * v173;
    }
  }

  else
  {
    v373 = 0;
    v372 = 0;
  }

  MEMORY[0x23EE7C450](v487, v152, 0);
  v420 = v414;
  if (v397)
  {
    v178 = 1;
  }

  else if (v139 & v140)
  {
    v178 = 1;
  }

  else
  {
    v178 = v394 & v140;
  }

  v179 = *(v410 + 1472);
  v388 = v158;
  if ((v408 & 7) != 0)
  {
    goto LABEL_242;
  }

  if (v414 < 8)
  {
    goto LABEL_242;
  }

  if ((v178 & 1) == 0)
  {
    goto LABEL_242;
  }

  if (v135 < 8)
  {
    goto LABEL_242;
  }

  if (v423)
  {
    goto LABEL_242;
  }

  if (v406)
  {
    goto LABEL_242;
  }

  v180 = *MEMORY[0x277CD73C8];
  v181 = *(v34 + v180);
  if (v181 != -1879048176 && v181 != 268435488 && v181 != 268435472)
  {
    goto LABEL_242;
  }

  if (v51)
  {
    v182 = *(v51 + v180);
    if ((v182 | 0x80000000) != 0x90000010)
    {
      if (v182 == 268435488 && v179 > 10)
      {
        goto LABEL_411;
      }

LABEL_242:
      v183 = 0;
      if (v423)
      {
        v184 = MEMORY[0x277CD7378];
      }

      else
      {
        v184 = MEMORY[0x277CD7378];
        if (!v406 && (v408 & 7) == 0)
        {
          v183 = (v405 & 7) == 0;
        }
      }

      v185 = 8;
      if (v414 < 8uLL)
      {
        v185 = v414;
      }

      v186 = MPSNDArrayMatMulDeviceBehavior::EncodeArrayMultiplyI4(void const*,objc_object  {objcproto24MTLComputeCommandEncoder}*,objc_object  {objcproto16MTLCommandBuffer}*,NDArrayMultiaryCallInfo const*)const::table[v185 - 1];
      if (v183)
      {
        if (v414 == 4)
        {
          v187 = v186 & 0xFFF000F0;
          v188 = v186 & 0xFFF000F0 | 0x12000;
          if (v408 > 0x380)
          {
            v188 = v186 & 0xFFF000F0 | 0x4001;
          }

          if (v416 <= 0x1C00)
          {
            v189 = v188;
          }

          else
          {
            v189 = v186;
          }

          if (v416 <= 0xB80)
          {
            v189 = v186 & 0xFFF000F0 | 0x4001;
          }

          if (v416 <= 0x380)
          {
            v189 = v187 | 0x18002;
          }

          v190 = v187 | 0x2103;
          if (v416 <= 0x80)
          {
            v186 = v190;
          }

          else
          {
            v186 = v189;
          }
        }

        else if (v414 == 1)
        {
          if (v416 > 0x80)
          {
            if (v416 > 0x380)
            {
              if (v416 > 0xB80)
              {
                if (v416 > 0x1C00)
                {
                  if (v416 >= 0x3301)
                  {
                    if (v416 > 0x4E20)
                    {
                      if (v416 > 0x1869F)
                      {
                        v186 = 1057024;
                      }
                    }

                    else if (v179 >= 16)
                    {
                      v186 = 1057027;
                    }

                    else
                    {
                      v186 = 1081602;
                    }
                  }

                  else
                  {
                    v186 = 1065219;
                  }
                }

                else if (v408 > 0x380)
                {
                  if (v408 < 0xB81)
                  {
                    v186 = v186 & 0xFFF000F0 | 0x4102;
                  }

                  else
                  {
                    v346 = v179 <= 15;
                    v347 = (257 << (v179 > 15)) | 0x101000;
                    if (v346)
                    {
                      v348 = 1065217;
                    }

                    else
                    {
                      v348 = 1065218;
                    }

                    if (v346)
                    {
                      v349 = 1130499;
                    }

                    else
                    {
                      v349 = 1057283;
                    }

                    if (*(v410 + 1480) <= 0x28uLL)
                    {
                      v347 = v348;
                    }

                    if (v416 > 0x1000)
                    {
                      v347 = 1065219;
                    }

                    if (v408 >> 8 <= 0x32)
                    {
                      v186 = v347;
                    }

                    else
                    {
                      v186 = v349;
                    }
                  }
                }

                else
                {
                  v186 = v186 & 0xFFF000F0 | 0x12001;
                }
              }

              else
              {
                if (v179 <= 15)
                {
                  v345 = 98306;
                }

                else
                {
                  v345 = 82179;
                }

                v186 = v186 & 0xFFF000F0 | v345;
              }
            }

            else
            {
              v186 = v186 & 0xFFF000F0 | 0x14103;
            }
          }

          else
          {
            v186 = v186 & 0xFFF000F0 | 0x21103;
          }
        }
      }

      if (v153)
      {
        v403 = *(v153 + 24) != 0;
        v191 = *(v153 + 28) != 0;
        v192 = v186 >> 4;
        if ((*(&v425->super.isa + *v184) & 0x10) == 0)
        {
          goto LABEL_268;
        }
      }

      else
      {
        v403 = 0;
        v191 = 0;
        v192 = v186 >> 4;
        if ((*(&v425->super.isa + *v184) & 0x10) == 0)
        {
LABEL_268:
          if (v153)
          {
            v193 = 31 - __clz(*v153);
            if (*v153)
            {
              v194 = v193;
            }

            else
            {
              v194 = 0;
            }

            v195 = *(v153 + 8);
            v196 = v394;
            if (v135 >= 0x101)
            {
              v196 = 0;
            }

            if (v196)
            {
              goto LABEL_275;
            }

LABEL_301:
            LOBYTE(v203) = 0;
            v399 = v183;
            if (!v183)
            {
              goto LABEL_304;
            }

            goto LABEL_302;
          }

          v194 = v186 & 0xF;
          if (v183)
          {
            v201 = 1 << (BYTE1(v186) & 0xF);
            if (v397)
            {
              v201 = 8;
            }

            v195 = v201;
            v202 = v394;
            if (v135 >= 0x101)
            {
              v202 = 0;
            }

            if (!v202)
            {
              goto LABEL_301;
            }
          }

          else
          {
            if (v423)
            {
              v204 = 4;
            }

            else
            {
              v204 = 1;
            }

            v195 = v204;
            v205 = v394;
            if (v135 >= 0x101)
            {
              v205 = 0;
            }

            if (!v205)
            {
              goto LABEL_301;
            }
          }

LABEL_275:
          v197 = 63 - __clz(v135);
          if (v392 > v390)
          {
            LOWORD(v197) = 0;
          }

          if (v153)
          {
            v198 = *(v153 + 20);
            v199 = (31 - __clz(v198));
            if (v198)
            {
              v200 = v199;
            }

            else
            {
              v200 = 0;
            }
          }

          else
          {
            v200 = HIWORD(v186) & 0xF;
          }

          v203 = v197 - 3;
          if (v200 < v203)
          {
            LOBYTE(v203) = v200;
          }

          v399 = v183;
          if (!v183)
          {
            goto LABEL_304;
          }

LABEL_302:
          if (v153)
          {
            LODWORD(v206) = *(v153 + 4);
            goto LABEL_305;
          }

LABEL_304:
          LODWORD(v206) = 1 << v192;
LABEL_305:
          v206 = v206;
          v398 = v194;
          v207 = v195 * (256 << v203 << v194);
          v208 = v408 + v207 - 1;
          v395 = v207;
          v209 = v208 / v207;
          if (v208 / v207 < v206)
          {
            v206 = v208 / v207;
          }

          v210 = 63 - __clz(v206);
          if (v206)
          {
            v211 = v210;
          }

          else
          {
            v211 = 0;
          }

          v212 = 1 << v211;
          MPSGetUIntDivisorMagicNumber();
          v369 = v213;
          MPSGetUIntDivisorMagicNumber();
          v368 = v214;
          MPSGetUIntDivisorMagicNumber();
          v367 = v215;
          MPSGetUIntDivisorMagicNumber();
          v366 = v216;
          MPSGetUIntDivisorMagicNumber();
          v365 = v217;
          MPSGetUIntDivisorMagicNumber();
          v219 = 31 - __clz(v135);
          if (v392 > v390)
          {
            v219 = 0;
          }

          v500[0] = v379;
          v500[1] = v405;
          v502 = v377;
          v503 = v375;
          v504 = v373;
          v505 = v380;
          v506 = v378;
          v508 = v376;
          v509 = v374;
          v510 = v372;
          v511 = (v209 + v212 - 1) / v212 * v395;
          v514 = v416;
          v516 = v408;
          v518 = v385;
          v519 = v384;
          v520 = v383;
          v521 = v382;
          v522 = v381;
          v220 = 31 - __clz(v401);
          if (v371 > v370)
          {
            v220 = 0;
          }

          v525 = v219;
          v526 = v220;
          v221 = 63 - __clz(v135 >> 3);
          v523 = v135;
          if (v135 < 8)
          {
            v221 = 0;
          }

          v527 = v221;
          v501 = v158;
          v223 = v368;
          v222 = v369;
          HIDWORD(v222) = 0;
          HIDWORD(v223) = 0;
          v225 = v366;
          v224 = v367;
          HIDWORD(v224) = 0;
          HIDWORD(v225) = 0;
          v507 = v389;
          v226 = v365;
          HIDWORD(v226) = 0;
          HIDWORD(v218) = 0;
          v512 = v222;
          v513 = 0uLL;
          v515 = v414;
          v517 = v417;
          v524 = v401;
          v528 = v223;
          v529 = v225;
          v530 = v224;
          v531 = v226;
          v532 = v218;
          if (v153)
          {
            v227 = *(v153 + 12);
            if (v414 < v227)
            {
              LOWORD(v227) = v414;
            }

            v228 = v427;
            if (v423)
            {
              LOWORD(v229) = 1;
              v230 = v418;
              goto LABEL_342;
            }

            v229 = *(v153 + 16);
            v230 = v418;
          }

          else
          {
            v227 = (v186 >> 20) & 0xF;
            if (((v186 >> 20) & 0xC) != 0)
            {
              v231 = 4;
            }

            else
            {
              v231 = (v186 >> 20) & 0xF;
            }

            if (!v399)
            {
              v227 = v231;
            }

            if (v414 < v227)
            {
              LOWORD(v227) = v414;
            }

            v228 = v427;
            v230 = v418;
            if (v423)
            {
              LOWORD(v229) = 1;
LABEL_342:
              v419 = v211 != 0;
              v233 = v227;
              v234 = v229;
              v235 = v229 << 8;
              v236 = *(v228 + *MEMORY[0x277CD73C8]);
              if (v236 == 268435488 || v236 == 268435472)
              {
                v237 = [*(v428 + 232) finalOp];
                (*(*v237 + 16))(v237);
              }

              [objc_msgSend(v230 buffer];
              v238 = v234;
              if (v423)
              {
                v238 = v235;
              }

              v239 = (v416 + v238 - 1) / v238;
              MPSGetUIntDivisorMagicNumber();
              HIDWORD(v240) = 0;
              v513 = v240;
              if (v211)
              {
                TempBuffer = MPSAutoCache::GetTempBuffer(v487, 4 * v416 * v414 * v417 * v212, 0);
                v501 = v364;
                v507 = v416 * v414;
              }

              else
              {
                TempBuffer = 0;
              }

              v241 = (1 << v398);
              v415 = (v414 + v233 - 1) / v233;
              if (v241 < 2)
              {
                v243 = 0;
                v244 = v410;
              }

              else
              {
                if (v423)
                {
                  v242 = v233 * ((v241 << 8) - 256);
                }

                else
                {
                  v242 = v233 * (v241 - 1) * v234;
                }

                v244 = v410;
                v243 = (4 * v242 + 15) & 0x7FFFFFFF0;
              }

              v245 = 0;
              v246 = v241 << 7;
              if (*(v244 + 1476) & 0x40 | v423)
              {
                v246 = 0;
              }

              if (v243 <= v246)
              {
                v243 = v246;
              }

              v247 = 2 * v395 * v233;
              if (v243 > v247)
              {
                v247 = v243;
              }

              if (v399 && v403)
              {
                v243 = v247;
              }

              v424 = v243;
              v407 = 32 * v241;
              v248 = v239 * v212;
              v249 = v500;
              v411 = 1;
              v413 = 1;
              goto LABEL_365;
            }

            v229 = v416;
          }

          if (v229 >= v186 >> 12)
          {
            LOWORD(v229) = v186 >> 12;
          }

          if (v363)
          {
            LOWORD(v229) = 1;
          }

          if ((HIDWORD(v362) | v362))
          {
            v229 = v229;
            if (v229 >= v401)
            {
              v229 = v401;
            }

            v232 = 1 << ~__clz(v229);
            if (v229)
            {
              LOWORD(v229) = v232;
            }

            else
            {
              LOWORD(v229) = 1;
            }
          }

          goto LABEL_342;
        }
      }

      MPSKernel_LogInfo(v425, 1uLL, "Parameters: kSplits: %d, kGlobalSplits: %d, innerUnrollFactor: %d vectorUnroll: %d matrixUnroll: %d vecLen: %d, vecLM: %d wait: %d\n", 1 << (v186 & 0xF), 1 << v192, 1 << (BYTE1(v186) & 0xF), (v186 >> 20) & 0xF, v186 >> 12, 1 << (BYTE2(v186) & 0xF), v403, v191);
      goto LABEL_268;
    }
  }

  if (v179 < 11)
  {
    goto LABEL_242;
  }

LABEL_411:
  v266 = 63 - __clz(v135);
  if (v392 > v390)
  {
    LODWORD(v266) = 0;
  }

  v391 = v266;
  v267 = v179 <= 0x15 || v181 == 268435488;
  v268 = !v267;
  v402 = v268;
  if (v267)
  {
    v278 = v179 < 0x12;
    v269 = v408 < 0x2005;
    v272 = (v414 + 7) >> 3;
    LODWORD(v273) = 4;
    if (v272 >= 4)
    {
      LODWORD(v272) = 4;
    }

    if ((v416 + 7) >> 3 < 4)
    {
      v273 = (v416 + 7) >> 3;
    }

    v279 = (8 * v272);
    v280 = (8 * v273);
    v281 = v414 + v279 - 1;
    LODWORD(v275) = 2;
    if (v281 / v279 >= 2)
    {
      LODWORD(v274) = 2;
    }

    else
    {
      v274 = v281 / v279;
    }

    v282 = v416 + v280 - 1;
    v283 = (v416 + v280 - 1) / v280;
    if (v283 < 2)
    {
      v275 = (v416 + v280 - 1) / v280;
    }

    v284 = (v279 * v274 + v414 - 1) / (v279 * v274);
    v285 = (v416 + v280 * v275 - 1) / (v280 * v275);
    v286 = v285 * v284;
    v287 = *(v410 + 1480);
    v288 = 36 * v287;
    if (v283 >= 2 && v286 < v288)
    {
      v285 = v282 / v280;
      v286 = v282 / v280 * v284;
      LODWORD(v275) = 1;
    }

    if (v281 / v279 >= 2 && v286 < v288)
    {
      v286 = v281 / v279 * v285;
      LODWORD(v274) = 1;
    }

    if (v416 <= 0x7FF)
    {
      v289 = 2;
    }

    else
    {
      v289 = 3;
    }

    if (v286 < v288 && v289 < v272)
    {
      v290 = v274 * (v279 - 8);
      do
      {
        LODWORD(v272) = v272 - 1;
        v286 = (v414 - 1 + v290) / v290 * v285;
        v290 -= 8 * v274;
      }

      while (v286 < v288 && v272 > v289);
    }

    if (v408 > 0xF)
    {
      v292 = 64 - __clz((v408 >> 3) - 1);
    }

    else
    {
      v292 = (v408 == 0) << 63;
    }

    v309 = 2;
    if (v292 < 2)
    {
      v309 = v292;
    }

    v310 = v274 * v275 * v286;
    v311 = 48 * v287;
    if (v311 <= 2 * v310)
    {
      v312 = 1;
    }

    else
    {
      v312 = 2;
    }

    if (v310 >= v311)
    {
      v277 = 0;
    }

    else
    {
      v277 = v312;
    }

    if (v153)
    {
      LODWORD(v273) = *(v153 + 32);
      LODWORD(v272) = *(v153 + 36);
      LODWORD(v275) = *(v153 + 40);
      LODWORD(v274) = *(v153 + 44);
      v313 = 31 - __clz(*v153);
      if (*v153)
      {
        v277 = v313;
      }

      else
      {
        v277 = 0;
      }

      v400 = *(v153 + 48);
      v404 = 1;
    }

    else
    {
      LOBYTE(v400) = v309;
      v404 = 1;
    }

    v314 = 3;
    v271 = 8;
    v315 = 8;
  }

  else
  {
    if (v153)
    {
      v269 = v408 < 0x2005;
      v270 = *(v153 + 52);
      v400 = *(v153 + 48);
      v404 = v270 != 0;
      if (v270)
      {
        v271 = 16;
      }

      else
      {
        v271 = 32;
      }

      LODWORD(v273) = *(v153 + 32);
      LODWORD(v272) = *(v153 + 36);
      LODWORD(v275) = *(v153 + 40);
      LODWORD(v274) = *(v153 + 44);
      v276 = 31 - __clz(*v153);
      if (*v153)
      {
        v277 = v276;
      }

      else
      {
        v277 = 0;
      }
    }

    else
    {
      v277 = 0;
      v404 = 0;
      v269 = v408 < 0x2005;
      LODWORD(v275) = 2;
      LODWORD(v274) = 4;
      if (v408 >= 0x2005)
      {
        LODWORD(v273) = 2;
      }

      else
      {
        LODWORD(v273) = 4;
      }

      if (v408 < 0x2005)
      {
        LODWORD(v272) = 1;
      }

      else
      {
        LODWORD(v272) = 2;
      }

      v271 = 32;
      LOBYTE(v400) = v408 < 0x2005;
    }

    v278 = 0;
    v314 = 4;
    v315 = 16;
  }

  v316 = v273 * v315;
  if (v273 * v315 * v275 > v416)
  {
    v317 = 1;
  }

  else
  {
    v316 = v273 * v315 * v275;
    v317 = v275;
  }

  if (v316 > v416)
  {
    v316 = 2 * v317 * v315;
    LODWORD(v273) = 2;
  }

  if (v316 <= v416)
  {
    v318 = v316;
  }

  else
  {
    v318 = (v317 * v315);
  }

  if (v316 > v416)
  {
    v319 = 1;
  }

  else
  {
    v319 = v273;
  }

  v320 = v272 << v314;
  if ((v272 * v274) << v314 > v414)
  {
    v321 = 1;
  }

  else
  {
    v320 = (v272 * v274) << v314;
    v321 = v274;
  }

  if (v320 > v414)
  {
    v320 = (2 * v321) << v314;
    LODWORD(v272) = 2;
  }

  if (v320 <= v414)
  {
    v322 = v320;
  }

  else
  {
    v322 = (v321 << v314);
  }

  if (v320 > v414)
  {
    v323 = 1;
  }

  else
  {
    v323 = v272;
  }

  v324 = v271 << v400 << v277;
  v325 = 2 * (v318 * v324);
  if (!v404)
  {
    v325 = 0;
  }

  v326 = 2 * (v322 * v324);
  if (!v278)
  {
    v326 = 0;
  }

  v424 = v325 + v326;
  v413 = v317;
  v411 = v321;
  if (v277)
  {
    v327 = 1 << v277;
    v328 = ((1 << v277) >> 1) * ((4 * (v315 << v314)) & 0x3F80) * v321 * v317 * v323 * v319;
    if (v328 >= 0x7FE1)
    {
      v328 = 0;
      v327 = 1;
      v324 = v271 << v400;
    }

    v329 = v424;
    if (v424 <= v328)
    {
      v329 = v328;
    }

    v424 = v329;
    v330 = (32 * v327);
  }

  else
  {
    v330 = 32;
  }

  v407 = v330;
  v331 = (v416 + v318 - 1) / v318;
  v332 = v331 - 1;
  if (v331 <= 1)
  {
    v333 = 1;
  }

  else
  {
    v333 = 2;
  }

  if (v331 >= 4)
  {
    v333 = 4;
  }

  v393 = v322;
  v334 = (v414 + v322 - 1) / v322;
  if (v334 > 1 && v269)
  {
    v335 = 2;
  }

  else
  {
    v335 = 1;
  }

  if (v331 <= 4)
  {
    v336 = 1;
  }

  else
  {
    v336 = 4;
  }

  if (v334 <= 4)
  {
    v337 = 1;
  }

  else
  {
    v337 = 2;
  }

  if (v334 >= 4)
  {
    v338 = 4;
  }

  else
  {
    v338 = (v414 + v322 - 1) / v322;
  }

  if (v416 >= 4 * v414)
  {
    v337 = v338;
    v336 = 1;
  }

  if (v402)
  {
    v339 = v335;
  }

  else
  {
    v339 = v337;
  }

  if (v402)
  {
    v340 = v333;
  }

  else
  {
    v340 = v336;
  }

  if (v386)
  {
    v340 = *(v386 + 56);
    v339 = *(v386 + 60);
  }

  v341 = (v334 + v339 - 1) / v339;
  v396 = (v340 + v332) / v340;
  if (v341 * v396 >= 0x10000)
  {
    v340 *= 4;
    v396 = (v340 + v332) / v340;
  }

  v387 = v341;
  MPSGetUShortDivisorMagicNumber();
  HIWORD(v342) = 0;
  v488[0] = v379;
  v488[1] = v405;
  v488[2] = v377;
  v488[3] = v375;
  v488[4] = v373;
  v488[5] = v380;
  v488[6] = v378;
  v488[7] = v376;
  v488[8] = v374;
  v488[9] = v372;
  v488[10] = v416;
  v488[11] = v414;
  v488[12] = v408;
  v488[13] = v417;
  v489 = v384;
  v490 = v385;
  v491 = v383;
  v492 = v382;
  v493 = v381;
  v494 = v135;
  v495 = v391;
  v496 = v342;
  v497 = v339;
  v498 = v340;
  v499 = __clz(v339) ^ 0x3F;
  v343 = *MEMORY[0x277CD73C8];
  if (v402)
  {
    v344 = *(v34 + v343);
    if (v344 == -1879048176)
    {
      if (*&v418[v343] != -1879048176 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    else if (v344 == 268435472 && *&v418[v343] != 268435472 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v404)
  {
    v424 = (*&v418[*MEMORY[0x277CD73C8]] >> 3) * (v324 * v318);
  }

  if (v278)
  {
    v424 += (*&v418[*MEMORY[0x277CD73C8]] >> 3) * (v324 * v393);
  }

  v419 = 0;
  TempBuffer = 0;
  v415 = v340 * v339;
  v249 = v488;
  v245 = 1;
  v248 = v396 * v387;
LABEL_365:
  v250 = *(v427 + *MEMORY[0x277CD73C8]);
  if (v250 > 285212703)
  {
    if (v250 <= 536870915)
    {
      if (v250 > 301989895)
      {
        if (v250 == 301989896)
        {
          v251 = 16;
          goto LABEL_467;
        }

        if (v250 == 335544328)
        {
          v251 = 17;
          goto LABEL_467;
        }
      }

      else
      {
        if (v250 == 285212704)
        {
          v251 = 13;
          goto LABEL_467;
        }

        if (v250 == 285212736)
        {
          v251 = 14;
          goto LABEL_467;
        }
      }
    }

    else if (v250 <= 536870927)
    {
      if (v250 == 536870916)
      {
        v251 = 0;
        goto LABEL_467;
      }

      if (v250 == 536870920)
      {
        v251 = 1;
        goto LABEL_467;
      }
    }

    else
    {
      switch(v250)
      {
        case 536870928:
          v251 = 2;
          goto LABEL_467;
        case 536870944:
          v251 = 3;
          goto LABEL_467;
        case 536870976:
          v251 = 4;
          goto LABEL_467;
      }
    }

LABEL_466:
    v251 = 18;
    goto LABEL_467;
  }

  if (v250 <= 31)
  {
    if (v250 > 7)
    {
      if (v250 == 8)
      {
        v251 = 6;
        goto LABEL_467;
      }

      if (v250 == 16)
      {
        v251 = 7;
        goto LABEL_467;
      }
    }

    else
    {
      if (v250 == -1879048176)
      {
        v251 = 12;
        goto LABEL_467;
      }

      if (v250 == 4)
      {
        v251 = 5;
        goto LABEL_467;
      }
    }

    goto LABEL_466;
  }

  if (v250 <= 268435463)
  {
    if (v250 == 32)
    {
      v251 = 8;
      goto LABEL_467;
    }

    if (v250 == 64)
    {
      v251 = 9;
      goto LABEL_467;
    }

    goto LABEL_466;
  }

  if (v250 == 268435464)
  {
    v251 = 15;
    goto LABEL_467;
  }

  if (v250 == 268435472)
  {
    v251 = 10;
    goto LABEL_467;
  }

  if (v250 != 268435488)
  {
    goto LABEL_466;
  }

  v251 = 11;
LABEL_467:
  *&v293 = -1;
  *(&v293 + 1) = -1;
  v486 = v293;
  v485 = v293;
  v484 = v293;
  v482 = -1;
  v481 = v293;
  v483 = v251;
  *&v486 = [*(v428 + 16) count] | 0x10000;
  if (v419)
  {
    v294 = 0;
  }

  else
  {
    v294 = *(v428 + 232);
  }

  v358 = *(&v425->super.isa + *MEMORY[0x277CD7360]);
  v360 = *(&v425->super.isa + *MEMORY[0x277CD7368]);
  v355 = v294;
  MPSLibrary::CreateUberShaderKey();
  [v426 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v355, v358, v360, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v426, v428, 3, 0, 0);
  v295 = MPSGetLinearOffsetBytes(v427, 0, 3, 0, 0);
  if (v419)
  {
    v296 = 0;
    explicit = TempBuffer;
  }

  else
  {
    v298 = v295;
    v299 = *(v428 + 192);
    v300 = (v427 + *MEMORY[0x277CD73C0]);
    explicit = atomic_load_explicit(v300, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoBuffer::AllocateBuffer(v300, 0);
      explicit = atomic_load_explicit(v300, memory_order_acquire);
    }

    v296 = v299 + v298;
  }

  [v426 setBuffer:explicit offset:v296 atIndex:29];
  objc_msgSend_setBytes_length_atIndex_(v426);
  if (v424)
  {
    [v426 setThreadgroupMemoryLength:v424 atIndex:0];
  }

  if ((atomic_load_explicit(&qword_27DF86828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86828))
  {
    *algn_27DF86850 = 0u;
    xmmword_27DF86840 = 0u;
    dword_27DF86860 = 1065353216;
    qword_27DF86868 = 850045863;
    unk_27DF86870 = 0u;
    unk_27DF86880 = 0u;
    unk_27DF86890 = 0u;
    qword_27DF868A0 = 0;
    __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86840, &dword_2399F7000);
    __cxa_guard_release(&qword_27DF86828);
  }

  if (v245)
  {
    [v426 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86840 offset:objc_msgSend(objc_msgSend(v412 atIndex:{"commandQueue"), "device"), 0x10uLL, 0), 0, 26}];
  }

  [v426 setBuffer:0 offset:0 atIndex:27];
  v479 = v415;
  v480.i64[0] = v248;
  v480.i64[1] = v417;
  *&v477 = v407;
  *(&v477 + 1) = v411;
  v478 = v413;
  [v426 dispatchThreadgroups:&v479 threadsPerThreadgroup:&v477];
  MPSLibrary::ReleaseComputeState();
  if (v419)
  {
    v301 = *(v427 + *MEMORY[0x277CD73C8]);
    if (v301 == 268435488 || v301 == 268435472)
    {
      v302 = [*(v428 + 232) finalOp];
      (*(*v302 + 16))(v302);
    }

    v359 = *(&v425->super.isa + *MEMORY[0x277CD7360]);
    v361 = *(&v425->super.isa + *MEMORY[0x277CD7368]);
    v356 = *(v428 + 232);
    MPSLibrary::CreateUberShaderKey();
    [v426 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v356, v359, v361, 0, 0}];
    MPSLibrary::ReleaseMPSKey();
    MPSSetNDArraysOnComputeEncoder(v426, v428, 3, 0, 0);
    v303 = MPSGetLinearOffsetBytes(v427, 0, 3, 0, 0);
    v304 = *(v428 + 192);
    v305 = (v427 + *MEMORY[0x277CD73C0]);
    v306 = atomic_load_explicit(v305, memory_order_acquire);
    if (!v306)
    {
      MPSAutoBuffer::AllocateBuffer(v305, 0);
      v306 = atomic_load_explicit(v305, memory_order_acquire);
    }

    [v426 setBuffer:v306 offset:v304 + v303 atIndex:29];
    v307 = v249[8];
    v249[1] = v249[2];
    v249[2] = v388;
    v249[7] = v307;
    v249[8] = v389;
    objc_msgSend_setBytes_length_atIndex_(v426);
    [v426 setBuffer:TempBuffer offset:0 atIndex:27];
    [v426 setBuffer:0 offset:0 atIndex:26];
    v479 = (v416 * v420 * v417 + 255) >> 8;
    v480 = vdupq_n_s64(1uLL);
    v477 = xmmword_239B0A7B0;
    v478 = 1;
    [v426 dispatchThreadgroups:&v479 threadsPerThreadgroup:&v477];
    MPSLibrary::ReleaseComputeState();
  }

  MPSAutoCache::~MPSAutoCache(v487);
  return 0;
}

void sub_239A5F890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MPSAutoCache::~MPSAutoCache(&STACK[0xC68]);
  if (__p)
  {
    operator delete(__p);
    if (!a67)
    {
LABEL_3:
      if (!a65)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a67)
  {
    goto LABEL_3;
  }

  operator delete(a67);
  if (!a65)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a65);
  _Unwind_Resume(a1);
}

uint64_t IsOptimizedInt4KernelSupported(uint64_t a1, uint64_t a2)
{
  v52[6] = *MEMORY[0x277D85DE8];
  v4 = [*(a2 + 232) inputTensorAtIndex:0];
  v5 = [*(a2 + 232) inputTensorAtIndex:1];
  v6 = [*(a2 + 232) outputTensorAtIndex:0];
  v7 = v4[2];
  v9 = *v7;
  v8 = v7[1];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v10 = v5[2];
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

  v13 = v6[2];
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

  if (*v4 >= 4uLL && MEMORY[0x18] != 1 || *v5 >= 4uLL && MEMORY[0x18] != 1)
  {
    return 0;
  }

  if (*v6 >= 4uLL && MEMORY[0x18] != 1)
  {
    v19 = 0;
    operator delete(0);
    return v19;
  }

  v16 = *(a1 + 168);
  v17 = *(a1 + 176);
  v18 = !v16 || v17 == 0;
  if (!v18 || [(MPSNDArrayAffineQuantizationDescriptor *)v16 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v16 hasDoubleQuantMinVal]|| [(MPSNDArrayAffineQuantizationDescriptor *)v17 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v17 hasDoubleQuantMinVal])
  {
    return 0;
  }

  v21 = [*(a2 + 232) graph];
  if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v21, v16, v52, v17, v51, 0, v22) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = *(a2 + 16);
  v24 = [v23 objectAtIndexedSubscript:v52[0]];
  v25 = [v23 objectAtIndexedSubscript:v51[0]];
  v26 = v25;
  v27 = MEMORY[0x277CD73D8];
  v28 = *MEMORY[0x277CD73D8];
  v29 = *(v24 + v28);
  if (!v29 && BYTE1(*(v24 + v28)) == 1 || (v19 = 0, v29 == 1) && !BYTE1(*(v24 + v28)))
  {
    v30 = *(v25 + v28);
    if (v30 || BYTE1(v30) != 1)
    {
      v19 = 0;
      if (v30 != 1 || BYTE1(v30))
      {
        return v19;
      }

      v31 = BYTE2(v29);
    }

    else
    {
      v19 = 0;
      v31 = BYTE2(v29);
    }

    if (v31 == 2 && BYTE2(v30) == 2)
    {
      if (v16)
      {
        if ([(MPSNDArrayAffineQuantizationDescriptor *)v16 hasZeroPoint])
        {
          v32 = [v23 objectAtIndexedSubscript:v52[2]];
        }

        else
        {
          v32 = 0;
        }

        if ([(MPSNDArrayAffineQuantizationDescriptor *)v16 hasMinValue])
        {
          v33 = [v23 objectAtIndexedSubscript:v52[3]];
        }

        else
        {
          v33 = 0;
        }

        v34 = [v23 objectAtIndexedSubscript:v52[1]];
        v35 = v24;
      }

      else
      {
        if ([(MPSNDArrayAffineQuantizationDescriptor *)v17 hasZeroPoint])
        {
          v32 = [v23 objectAtIndexedSubscript:v51[2]];
        }

        else
        {
          v32 = 0;
        }

        if ([(MPSNDArrayAffineQuantizationDescriptor *)v17 hasMinValue])
        {
          v33 = [v23 objectAtIndexedSubscript:v51[3]];
        }

        else
        {
          v33 = 0;
        }

        v34 = [v23 objectAtIndexedSubscript:v51[1]];
        v35 = v26;
        v26 = v24;
      }

      v36 = *MEMORY[0x277CD73C8];
      if ((*(v35 + v36) | 0x20000000) == 0x20000004)
      {
        v37 = *(v26 + v36);
        if ((v37 == -1879048176 || v37 == 268435488 || v37 == 268435472) && (*(v35 + *MEMORY[0x277CD7400]) & 3) == 0 && (*(v35 + *MEMORY[0x277CD7408]) & 7) == 0)
        {
          v38 = *MEMORY[0x277CD7410];
          v39 = *(v34 + v38 + 48);
          v40 = *(v34 + v38);
          v41 = *(v34 + v38 + 16);
          v42 = *(v34 + *v27);
          v49 = *(v34 + v38 + 32);
          v50 = v39;
          v48[0] = v40;
          v48[1] = v41;
          v43 = *(v48 + (v42 & 0xF));
          v47[2] = v49;
          v47[3] = v39;
          v47[0] = v40;
          v47[1] = v41;
          v44 = *(v47 + (BYTE1(v42) & 0xF)) == 1 && v43 == 1;
          if ((v44 || ((*(v35 + v38) / v40) & 7) == 0) && (!v32 || (*(v32 + v36) | 0x20000000) == 0x20000004))
          {
            v45 = *(v34 + v36);
            if ((v45 == -1879048176 || v45 == 268435488 || v45 == 268435472) && v45 == v37)
            {
              if (!v33)
              {
                return 1;
              }

              v46 = *(v33 + v36);
              if ((v46 == -1879048176 || v46 == 268435488 || v46 == 268435472) && v46 == v37)
              {
                return 1;
              }
            }
          }
        }
      }

      return 0;
    }
  }

  return v19;
}

void sub_239A5FFD4(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    operator delete(v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  if (!v1)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t EncodeQuantizedMatrixMultiplicationFallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v211 = *MEMORY[0x277D85DE8];
  v143 = *(a1 + *MEMORY[0x277CD7350]);
  v6 = *(a1 + 168);
  v7 = *(a1 + 176);
  [*(a4 + 232) inputTensorAtIndex:0];
  [*(a4 + 232) inputTensorAtIndex:1];
  [*(a4 + 232) outputTensorAtIndex:0];
  if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM2([*(a4 + 232) graph], *(v5 + 168), &v205, *(v5 + 176), v200) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *(a4 + 16);
  v9 = [v8 objectAtIndexedSubscript:v205];
  v10 = [v8 objectAtIndexedSubscript:v200[0]];
  v19 = *(a4 + 208);
  v11 = *MEMORY[0x277CD7410];
  v12 = *(v19 + v11);
  v13 = *(v19 + v11 + 16);
  v14 = *(v19 + v11 + 32);
  v15 = *MEMORY[0x277CD73D8];
  v16 = *(v19 + v15);
  v177 = *(v19 + v11 + 48);
  v176[2] = v14;
  v176[1] = v13;
  v176[0] = v12;
  v17 = *(v176 + (v16 & 0xF));
  v178[3] = v177;
  v178[2] = v14;
  v178[1] = v13;
  v178[0] = v12;
  v161 = *(v178 + (BYTE1(v16) & 0xF));
  v179[3] = v177;
  v179[2] = v14;
  v179[1] = v13;
  v179[0] = v12;
  v18 = *(v179 + (BYTE2(v16) & 0xF));
  v169 = v9;
  LODWORD(v19) = *(v9 + v11 + 4 * (*(v9 + v15) & 0xF));
  v167 = v10;
  v20 = *(v10 + v11 + 4 * (*(v10 + v15 + 1) & 0xF));
  if (v20 <= v19)
  {
    v19 = v19;
  }

  else
  {
    v19 = v20;
  }

  v157 = v19;
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v187 = v21;
  v186 = v21;
  v185 = v21;
  v184 = v21;
  v183 = v21;
  *&v187 = [*(a4 + 16) count] | 0x10000;
  v151 = v5;
  v152 = v17;
  if (!v6)
  {
    goto LABEL_26;
  }

  if ([v6 quantizationScheme] != 1)
  {
    if ([v6 quantizationScheme] == 2)
    {
      v28 = [v6 vectorAxes];
      if (v28)
      {
        v29 = v28;
        if ([v28 count])
        {
          [v29 count];
          if ([v29 count] != 1 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v149 = [objc_msgSend(v29 objectAtIndexedSubscript:{0), "unsignedIntegerValue"}];
          v145 = 0;
          v159 = 5;
          v146 = a4;
          v162 = v18;
          if (!v7)
          {
            goto LABEL_46;
          }

          goto LABEL_27;
        }
      }

      v145 = 0;
      v149 = 0;
      v159 = 4;
      v146 = a4;
      v162 = v18;
      if (v7)
      {
        goto LABEL_27;
      }

LABEL_46:
      v144 = 0;
      v170 = 0;
      v148 = 0;
      goto LABEL_47;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_26:
    v145 = 0;
    v159 = 0;
    v149 = 0;
    v146 = a4;
    v162 = v18;
    if (v7)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

  v22 = [v6 implicitZeroPoint];
  v23 = [v6 hasZeroPoint];
  if (([v6 hasMinValue] | v23))
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v25 = [v6 hasDoubleQuantScale];
  v149 = 0;
  if (([v6 hasDoubleQuantMinVal] | v25))
  {
    v26 = 3;
  }

  else
  {
    v26 = v24;
  }

  v159 = v26;
  v5 = v151;
  v17 = v152;
  if (v22)
  {
    v27 = 0x200000;
  }

  else
  {
    v27 = 0;
  }

  v145 = v27;
  v146 = a4;
  v162 = v18;
  if (!v7)
  {
    goto LABEL_46;
  }

LABEL_27:
  if ([v7 quantizationScheme] == 1)
  {
    v30 = [v7 implicitZeroPoint];
    v31 = [v7 hasZeroPoint];
    if (([v7 hasMinValue] | v31))
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    v33 = [v7 hasDoubleQuantScale];
    v148 = 0;
    if (([v7 hasDoubleQuantMinVal] | v33))
    {
      v34 = 3;
    }

    else
    {
      v34 = v32;
    }

    v170 = v34;
    v17 = v152;
    if (v30)
    {
      v35 = 0x80000000;
    }

    else
    {
      v35 = 0;
    }

    v144 = v35;
  }

  else
  {
    if ([v7 quantizationScheme] != 2)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_46;
    }

    v36 = [v7 vectorAxes];
    if (v36 && (v37 = v36, [v36 count]))
    {
      [v37 count];
      if ([v37 count] != 1 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v148 = [objc_msgSend(v37 objectAtIndexedSubscript:{0), "unsignedIntegerValue"}];
      v144 = 0;
      v170 = 5;
    }

    else
    {
      v144 = 0;
      v148 = 0;
      v170 = 4;
    }
  }

LABEL_47:
  v38 = [MEMORY[0x277CBEB68] null];
  v154 = [MEMORY[0x277CBEB68] null];
  v156 = [MEMORY[0x277CBEB68] null];
  v165 = [MEMORY[0x277CBEB68] null];
  v160 = [MEMORY[0x277CBEB68] null];
  v39 = [MEMORY[0x277CBEB68] null];
  v40 = [MEMORY[0x277CBEB68] null];
  v163 = [MEMORY[0x277CBEB68] null];
  v41 = [MEMORY[0x277CBEB68] null];
  v166 = [MEMORY[0x277CBEB68] null];
  v42 = [MEMORY[0x277CBEB68] null];
  v43 = [MEMORY[0x277CBEB68] null];
  if (v206 == -1)
  {
    v142 = v38;
    if (v207 != -1)
    {
LABEL_51:
      v154 = [v8 objectAtIndexedSubscript:?];
    }
  }

  else
  {
    v142 = [v8 objectAtIndexedSubscript:?];
    if (v206 != -1)
    {
      v39 = [v8 objectAtIndexedSubscript:?];
    }

    if (v207 != -1)
    {
      goto LABEL_51;
    }
  }

  if (v208 != -1)
  {
    v156 = [v8 objectAtIndexedSubscript:?];
  }

  if (v209 != -1)
  {
    v165 = [v8 objectAtIndexedSubscript:?];
  }

  if (v210 != -1)
  {
    v160 = [v8 objectAtIndexedSubscript:?];
  }

  if (v200[1] != -1)
  {
    v40 = [v8 objectAtIndexedSubscript:?];
    if (v200[1] != -1)
    {
      v43 = [v8 objectAtIndexedSubscript:?];
    }
  }

  if (v201 != -1)
  {
    v163 = [v8 objectAtIndexedSubscript:?];
  }

  if (v202 != -1)
  {
    v41 = [v8 objectAtIndexedSubscript:?];
  }

  if (v203 != -1)
  {
    v166 = [v8 objectAtIndexedSubscript:?];
  }

  if (v204 == -1)
  {
    v153 = v42;
    v46 = *(v5 + *MEMORY[0x277CD7378]);
    v45 = v159;
    if (v46)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v153 = [v8 objectAtIndexedSubscript:?];
    v44 = *(v5 + *MEMORY[0x277CD7378]);
    v45 = v159;
    if (v44)
    {
      goto LABEL_85;
    }
  }

  v47 = *(v169 + *MEMORY[0x277CD7410] + 4 * (*(v169 + *MEMORY[0x277CD73D8] + 2) & 0xF));
  if (v47 != 1 && v47 != v162 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((v45 - 1) <= 2)
  {
    v199[0] = v169;
    v199[1] = v142;
    v199[2] = v154;
    v199[3] = v156;
    v199[4] = v165;
    v199[5] = v160;
    validateAffineMatrixMultiplication([MEMORY[0x277CBEA60] arrayWithObjects:v199 count:6], v161, v157);
  }

  if ((v45 & 0xFFFFFFFE) == 4)
  {
    v198[0] = v169;
    v198[1] = v39;
    validateLUTMatrixMultiplication([MEMORY[0x277CBEA60] arrayWithObjects:v198 count:2], v45 == 5, v149, v161, v157);
  }

  v48 = *(v167 + *MEMORY[0x277CD7410] + 4 * (*(v167 + *MEMORY[0x277CD73D8] + 2) & 0xF));
  if (v48 != 1 && v48 != v162 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((v170 - 1) <= 2)
  {
    v197[0] = v167;
    v197[1] = v40;
    v197[2] = v163;
    v197[3] = v41;
    v197[4] = v166;
    v197[5] = v153;
    validateAffineMatrixMultiplication([MEMORY[0x277CBEA60] arrayWithObjects:v197 count:6], v157, v17);
  }

  if ((v170 & 0xFFFFFFFE) == 4)
  {
    v196[0] = v167;
    v196[1] = v43;
    validateLUTMatrixMultiplication([MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2], v170 == 5, v148, v157, v17);
  }

LABEL_85:
  v141 = v40;
  v49 = MEMORY[0x277CD73D0];
  v50 = MEMORY[0x277CD73C8];
  if (v45 == 5)
  {
    makeStrideBytes();
    v51 = (v39 + *v49);
    v52.i64[0] = 0x100000001;
    v52.i64[1] = 0x100000001;
    v53 = vceqq_s32(*v51, v52);
    v54.i64[0] = v53.i32[0];
    v54.i64[1] = v53.i32[1];
    v55 = v54;
    v56 = vceqq_s32(v51[1], v52);
    v54.i64[0] = v56.i32[0];
    v54.i64[1] = v56.i32[1];
    v57 = v54;
    v58 = vceqq_s32(v51[2], v52);
    v54.i64[0] = v58.i32[0];
    v54.i64[1] = v58.i32[1];
    v59 = v54;
    v60 = vceqq_s32(v51[3], v52);
    v54.i64[0] = v60.i32[0];
    v54.i64[1] = v60.i32[1];
    v61 = v54;
    v54.i64[0] = v53.i32[2];
    v54.i64[1] = v53.i32[3];
    v62 = v54;
    v54.i64[0] = v56.i32[2];
    v54.i64[1] = v56.i32[3];
    v63 = v54;
    v54.i64[0] = v58.i32[2];
    v54.i64[1] = v58.i32[3];
    v64 = v54;
    v54.i64[0] = v60.i32[2];
    v54.i64[1] = v60.i32[3];
    v65 = vbicq_s8(v195, v54);
    v66 = vbicq_s8(v193, v64);
    v67 = vbicq_s8(v191, v63);
    v68 = vbicq_s8(v189, v62);
    v69 = vbicq_s8(v194, v61);
    v70 = vbicq_s8(v192, v59);
    v71 = vbicq_s8(v190, v57);
    v72 = vbicq_s8(v188, v55);
    v73 = *(v39 + *v50);
    v74 = BYTE4(*(v39 + *MEMORY[0x277CD73D8]));
    if ((v73 & 0xFFF8) != 0)
    {
      v175[32] = v72;
      v175[33] = v68;
      v175[34] = v71;
      v175[35] = v67;
      v175[36] = v70;
      v175[37] = v66;
      v175[38] = v69;
      v175[39] = v65;
      v175[24] = v72;
      v175[25] = v68;
      v175[26] = v71;
      v175[27] = v67;
      v175[28] = v70;
      v175[29] = v66;
      v175[30] = v69;
      v175[31] = v65;
      v175[16] = v72;
      v175[17] = v68;
      v175[18] = v71;
      v175[19] = v67;
      v175[20] = v70;
      v175[21] = v66;
      v175[22] = v69;
      v175[23] = v65;
      v175[8] = v72;
      v175[9] = v68;
      v175[10] = v71;
      v175[11] = v67;
      v175[12] = v70;
      v175[13] = v66;
      v175[14] = v69;
      v175[15] = v65;
      v175[0] = v72;
      v175[1] = v68;
      v175[2] = v71;
      v175[3] = v67;
      v175[4] = v70;
      v175[5] = v66;
      v175[6] = v69;
      v175[7] = v65;
      v75 = v162;
      v76 = *(v175 + (v74 & 0xF)) / (v73 >> 3);
      if (v170 != 5)
      {
LABEL_88:
        v77 = 0;
        goto LABEL_96;
      }
    }

    else
    {
      v174[32] = v72;
      v174[33] = v68;
      v174[34] = v71;
      v174[35] = v67;
      v174[36] = v70;
      v174[37] = v66;
      v174[38] = v69;
      v174[39] = v65;
      v174[24] = v72;
      v174[25] = v68;
      v174[26] = v71;
      v174[27] = v67;
      v174[28] = v70;
      v174[29] = v66;
      v174[30] = v69;
      v174[31] = v65;
      v174[16] = v72;
      v174[17] = v68;
      v174[18] = v71;
      v174[19] = v67;
      v174[20] = v70;
      v174[21] = v66;
      v174[22] = v69;
      v174[23] = v65;
      v174[8] = v72;
      v174[9] = v68;
      v174[10] = v71;
      v174[11] = v67;
      v174[12] = v70;
      v174[13] = v66;
      v174[14] = v69;
      v174[15] = v65;
      v174[0] = v72;
      v174[1] = v68;
      v174[2] = v71;
      v174[3] = v67;
      v174[4] = v70;
      v174[5] = v66;
      v174[6] = v69;
      v174[7] = v65;
      v75 = v162;
      v76 = *(v174 + (v74 & 0xF));
      if (v170 != 5)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
    v76 = 0;
    v75 = v162;
    if (v170 != 5)
    {
      goto LABEL_88;
    }
  }

  makeStrideBytes();
  v78 = (v43 + *v49);
  v79.i64[0] = 0x100000001;
  v79.i64[1] = 0x100000001;
  v80 = vceqq_s32(*v78, v79);
  v81.i64[0] = v80.i32[0];
  v81.i64[1] = v80.i32[1];
  v82 = v81;
  v83 = vceqq_s32(v78[1], v79);
  v81.i64[0] = v83.i32[0];
  v81.i64[1] = v83.i32[1];
  v84 = v81;
  v85 = vceqq_s32(v78[2], v79);
  v81.i64[0] = v85.i32[0];
  v81.i64[1] = v85.i32[1];
  v86 = v81;
  v87 = vceqq_s32(v78[3], v79);
  v81.i64[0] = v87.i32[0];
  v81.i64[1] = v87.i32[1];
  v88 = v81;
  v81.i64[0] = v80.i32[2];
  v81.i64[1] = v80.i32[3];
  v89 = v81;
  v81.i64[0] = v83.i32[2];
  v81.i64[1] = v83.i32[3];
  v90 = v81;
  v81.i64[0] = v85.i32[2];
  v81.i64[1] = v85.i32[3];
  v91 = v81;
  v81.i64[0] = v87.i32[2];
  v81.i64[1] = v87.i32[3];
  v92 = vbicq_s8(v195, v81);
  v93 = vbicq_s8(v193, v91);
  v94 = vbicq_s8(v191, v90);
  v95 = vbicq_s8(v189, v89);
  v96 = vbicq_s8(v194, v88);
  v97 = vbicq_s8(v192, v86);
  v98 = vbicq_s8(v190, v84);
  v99 = vbicq_s8(v188, v82);
  v100 = *(v43 + *v50);
  v101 = BYTE4(*(v43 + *MEMORY[0x277CD73D8]));
  if ((v100 & 0xFFF8) != 0)
  {
    v173[32] = v99;
    v173[33] = v95;
    v173[34] = v98;
    v173[35] = v94;
    v173[36] = v97;
    v173[37] = v93;
    v173[38] = v96;
    v173[39] = v92;
    v173[24] = v99;
    v173[25] = v95;
    v173[26] = v98;
    v173[27] = v94;
    v173[28] = v97;
    v173[29] = v93;
    v173[30] = v96;
    v173[31] = v92;
    v173[16] = v99;
    v173[17] = v95;
    v173[18] = v98;
    v173[19] = v94;
    v173[20] = v97;
    v173[21] = v93;
    v173[22] = v96;
    v173[23] = v92;
    v173[7] = v92;
    v173[8] = v99;
    v173[9] = v95;
    v173[10] = v98;
    v173[11] = v94;
    v173[12] = v97;
    v173[13] = v93;
    v173[14] = v96;
    v173[15] = v92;
    v173[0] = v99;
    v173[1] = v95;
    v173[2] = v98;
    v173[3] = v94;
    v173[4] = v97;
    v173[5] = v93;
    v173[6] = v96;
    v102 = *(v173 + (v101 & 0xF)) / (v100 >> 3);
  }

  else
  {
    v172[32] = v99;
    v172[33] = v95;
    v172[34] = v98;
    v172[35] = v94;
    v172[36] = v97;
    v172[37] = v93;
    v172[38] = v96;
    v172[39] = v92;
    v172[24] = v99;
    v172[25] = v95;
    v172[26] = v98;
    v172[27] = v94;
    v172[28] = v97;
    v172[29] = v93;
    v172[30] = v96;
    v172[31] = v92;
    v172[16] = v99;
    v172[17] = v95;
    v172[18] = v98;
    v172[19] = v94;
    v172[20] = v97;
    v172[21] = v93;
    v172[22] = v96;
    v172[23] = v92;
    v172[8] = v99;
    v172[9] = v95;
    v172[10] = v98;
    v172[11] = v94;
    v172[12] = v97;
    v172[13] = v93;
    v172[14] = v96;
    v172[15] = v92;
    v172[0] = v99;
    v172[1] = v95;
    v172[2] = v98;
    v172[3] = v94;
    v172[4] = v97;
    v172[5] = v93;
    v172[6] = v96;
    v172[7] = v92;
    v102 = *(v172 + (v101 & 0xF));
  }

  v77 = v102;
LABEL_96:
  v188.i64[0] = __PAIR64__(v161, v75);
  v188.i64[1] = __PAIR64__(v157, v17);
  v189.i64[0] = 0;
  v189.i64[1] = __PAIR64__(v76, v149);
  v190.i64[0] = 0;
  v190.i64[1] = __PAIR64__(v77, v148);
  v158 = *(v143 + 1480);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v103 = v160;
    v104 = v166;
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v103 = v142;
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v105 = 20480;
          v106 = v154;
          goto LABEL_116;
        }

        v105 = 0;
        v107 = *(v39 + *v50);
        if (v107 <= 268435471)
        {
          goto LABEL_107;
        }

LABEL_102:
        v106 = v154;
        if (v107 > 536870915)
        {
          if (v107 == 536870916)
          {
            goto LABEL_116;
          }

          if (v107 == 536870920)
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (v107 == 268435472)
          {
            v105 = 0x2000;
            goto LABEL_116;
          }

          if (v107 == 268435488)
          {
            v105 = 0x4000;
            goto LABEL_116;
          }
        }

LABEL_110:
        v105 = 20480;
        goto LABEL_116;
      }
    }

    v105 = 0;
    v107 = *(v103 + *v50);
    if (v107 > 268435471)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v105 = 0;
    v107 = *(v165 + *v50);
    v104 = v166;
    if (v107 > 268435471)
    {
      goto LABEL_102;
    }
  }

LABEL_107:
  v106 = v154;
  if (v107 != -1879048176)
  {
    if (v107 == 4)
    {
      goto LABEL_116;
    }

    if (v107 != 8)
    {
      goto LABEL_110;
    }

LABEL_113:
    v105 = 4096;
    goto LABEL_116;
  }

  v105 = 12288;
LABEL_116:
  v155 = v105;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v108 = v153;
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v108 = v141;
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v110 = *v50;
        if (isKindOfClass)
        {
          goto LABEL_131;
        }

        v111 = 0;
        v112 = *(v43 + v110);
        if (v112 <= 268435471)
        {
          goto LABEL_128;
        }

LABEL_123:
        if (v112 > 536870915)
        {
          if (v112 == 536870916)
          {
            goto LABEL_137;
          }

          if (v112 == 536870920)
          {
            goto LABEL_134;
          }
        }

        else
        {
          if (v112 == 268435472)
          {
            v111 = 0x800000;
            goto LABEL_137;
          }

          if (v112 == 268435488)
          {
            v111 = 0x1000000;
            goto LABEL_137;
          }
        }

LABEL_131:
        v111 = 20971520;
        goto LABEL_137;
      }
    }

    v111 = 0;
    v110 = *v50;
    v112 = *(v108 + v110);
    if (v112 > 268435471)
    {
      goto LABEL_123;
    }
  }

  else
  {
    v111 = 0;
    v110 = *v50;
    v112 = *(v104 + v110);
    if (v112 > 268435471)
    {
      goto LABEL_123;
    }
  }

LABEL_128:
  if (v112 != -1879048176)
  {
    if (v112 == 4)
    {
      goto LABEL_137;
    }

    if (v112 != 8)
    {
      goto LABEL_131;
    }

LABEL_134:
    v111 = 0x400000;
    goto LABEL_137;
  }

  v111 = 12582912;
LABEL_137:
  v113 = 0;
  v114 = *(v169 + v110);
  if (v114 <= 268435471)
  {
    if (v114 == -1879048176)
    {
      v113 = 192;
      goto LABEL_151;
    }

    if (v114 == 4)
    {
      goto LABEL_151;
    }

    if (v114 != 8)
    {
      goto LABEL_145;
    }

LABEL_148:
    v113 = 64;
    goto LABEL_151;
  }

  if (v114 > 536870915)
  {
    if (v114 == 536870916)
    {
      goto LABEL_151;
    }

    if (v114 != 536870920)
    {
LABEL_145:
      v113 = 320;
      goto LABEL_151;
    }

    goto LABEL_148;
  }

  if (v114 != 268435472)
  {
    if (v114 == 268435488)
    {
      v113 = 256;
      goto LABEL_151;
    }

    goto LABEL_145;
  }

  v113 = 128;
LABEL_151:
  v115 = 0;
  v116 = *(v167 + v110);
  if (v116 <= 268435471)
  {
    if (v116 == -1879048176)
    {
      v115 = 1536;
      goto LABEL_165;
    }

    if (v116 == 4)
    {
      goto LABEL_165;
    }

    if (v116 != 8)
    {
      goto LABEL_159;
    }

LABEL_162:
    v115 = 512;
    goto LABEL_165;
  }

  if (v116 > 536870915)
  {
    if (v116 == 536870916)
    {
      goto LABEL_165;
    }

    if (v116 != 536870920)
    {
LABEL_159:
      v115 = 2560;
      goto LABEL_165;
    }

    goto LABEL_162;
  }

  if (v116 != 268435472)
  {
    if (v116 == 268435488)
    {
      v115 = 2048;
      goto LABEL_165;
    }

    goto LABEL_159;
  }

  v115 = 1024;
LABEL_165:
  v150 = v111;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_166:
    v117 = 5;
    goto LABEL_167;
  }

  v117 = 0;
  v136 = *(v106 + *v50);
  if (v136 <= 268435471)
  {
    if (v136 == -1879048176)
    {
      v117 = 3;
      goto LABEL_167;
    }

    if (v136 == 4)
    {
      goto LABEL_167;
    }

    if (v136 != 8)
    {
      goto LABEL_166;
    }

LABEL_218:
    v117 = 1;
    goto LABEL_167;
  }

  if (v136 > 536870915)
  {
    if (v136 == 536870916)
    {
      goto LABEL_167;
    }

    if (v136 != 536870920)
    {
      goto LABEL_166;
    }

    goto LABEL_218;
  }

  if (v136 == 268435472)
  {
    v117 = 2;
  }

  else
  {
    if (v136 != 268435488)
    {
      goto LABEL_166;
    }

    v117 = 4;
  }

LABEL_167:
  objc_opt_class();
  v118 = objc_opt_isKindOfClass();
  v119 = *v50;
  if (v118)
  {
    goto LABEL_168;
  }

  v120 = 0;
  v137 = *(v163 + v119);
  if (v137 > 268435471)
  {
    if (v137 <= 536870915)
    {
      if (v137 == 268435472)
      {
        v120 = 2;
        goto LABEL_169;
      }

      if (v137 == 268435488)
      {
        v120 = 4;
        goto LABEL_169;
      }

      goto LABEL_168;
    }

    if (v137 == 536870916)
    {
      goto LABEL_169;
    }

    if (v137 != 536870920)
    {
LABEL_168:
      v120 = 5;
      goto LABEL_169;
    }

LABEL_221:
    v120 = 1;
    goto LABEL_169;
  }

  if (v137 == -1879048176)
  {
    v120 = 3;
    goto LABEL_169;
  }

  if (v137 != 4)
  {
    if (v137 != 8)
    {
      goto LABEL_168;
    }

    goto LABEL_221;
  }

LABEL_169:
  v121 = *(v169 + v119);
  v122 = *(v167 + v119);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (*(v106 + *MEMORY[0x277CD73C8] + 3) & 0x30) == 0)
  {
    v117 += 6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (*(v163 + *MEMORY[0x277CD73C8] + 3) & 0x30) == 0)
  {
    v120 += 6;
  }

  v168 = 8 << __clz(__rbit32((v158 >> 17) & 0x7F));
  v171 = 8 * (v170 & 7);
  v123 = v113 + 384;
  if ((v121 & 0x30000000) != 0)
  {
    v123 = v113;
  }

  v164 = v123 & 0x1C0;
  v124 = v115 + 3072;
  if ((v122 & 0x30000000) != 0)
  {
    v124 = v115;
  }

  v125 = v124 & 0xE00;
  v126 = (v117 & 7) << 15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v127 = 0;
  }

  else
  {
    v127 = 0x40000;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v128 = 0;
  }

  else
  {
    v128 = 0x80000;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v129 = 0;
  }

  else
  {
    v129 = 0x100000;
  }

  v130 = (v120 & 7) << 25;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v131 = 0;
  }

  else
  {
    v131 = 0x10000000;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v132 = 0;
  }

  else
  {
    v132 = 0x20000000;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v133 = 0;
  }

  else
  {
    v133 = 0x40000000;
  }

  *&v184 = v145 | v144 | v171 | v155 | v150 | v164 | v125 | v126 | v130 | v127 | v128 | v129 | v131 | v132 | v133 | v159;
  v139 = *(v151 + *MEMORY[0x277CD7360]);
  v140 = *(v151 + *MEMORY[0x277CD7368]);
  v138 = *(v146 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(a2, v146, 4, 0, 1);
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v138, v139, v140, 0, 0}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v182[0] = (v161 + v168 - 1) / v168;
  v182[1] = (v152 + 1) >> 1;
  v182[2] = v162;
  v180 = xmmword_239B06620;
  v181 = (v158 >> 17) & 0x7F;
  [a2 dispatchThreadgroups:v182 threadsPerThreadgroup:&v180];
  return MPSLibrary::ReleaseComputeState();
}

uint64_t MPSNDArrayInt4FunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = MPSCreateFunctionConstantValues();
  [v7 setConstantValue:a2 + 8 type:85 atIndex:82];
  AddFunctionConstantList(v7, a3);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

void MPSBufferCache::~MPSBufferCache(MPSBufferCache *this)
{
  std::mutex::~mutex((this + 40));
  v2 = *(this + 2);
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

  v4 = *this;
  *this = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

void *MPSBufferCache::getBuffer(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 40));
  v14 = a2;
  v8 = std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::find<void *>(a1, &v14);
  v9 = v8;
  if (v8)
  {
    v10 = [v8[3] length];
    v11 = v9[3];
    if (v10 >= a3)
    {
      goto LABEL_6;
    }
  }

  v11 = [a2 newBufferWithLength:a3 options:0];
  v13 = a2;
  v14 = &v13;
  std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::piecewise_construct_t const&<>>(a1, &v13, &std::piecewise_construct, &v14)[3] = v11;
  if (a4)
  {
    (*(a4 + 16))(a4, v11);
  }

LABEL_6:
  std::mutex::unlock((a1 + 40));
  return v11;
}

uint64_t GetPlaceHolderIndexInSourceArrayQuantizedGEMM2(MPSKernelDAG *a1, MPSNDArrayQuantizationDescriptor *a2, uint64_t *a3, MPSNDArrayQuantizationDescriptor *a4, uint64_t *a5)
{
  *v72 = [MPSNDArrayQuantizedMatrixMultiplication getScaleIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v71 = [MPSNDArrayQuantizedMatrixMultiplication getZeroPointIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v70 = [MPSNDArrayQuantizedMatrixMultiplication getMinValIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v69 = [MPSNDArrayQuantizedMatrixMultiplication getDQuantScaleIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v68 = [MPSNDArrayQuantizedMatrixMultiplication getDQuantMinValIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v67 = [MPSNDArrayQuantizedMatrixMultiplication getLUTIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v66 = [MPSNDArrayQuantizedMatrixMultiplication getScaleIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  *v65 = [MPSNDArrayQuantizedMatrixMultiplication getZeroPointIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v8 = [MPSNDArrayQuantizedMatrixMultiplication getMinValIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v9 = [MPSNDArrayQuantizedMatrixMultiplication getDQuantScaleIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v10 = [MPSNDArrayQuantizedMatrixMultiplication getDQuantMinValIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v61 = a2;
  v63 = a4;
  v11 = [MPSNDArrayQuantizedMatrixMultiplication getLUTIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v12 = *(a1 + 8);
  v13 = *v12;
  v64 = v12[1];
  if (*v12 == v64)
  {
    v81 = -1;
    v82 = -1;
    v80 = -1;
    v83 = -1;
    v84 = -1;
    v73 = -1;
    v74 = -1;
    v17 = -1;
    v79 = -1;
    v77 = -1;
    v78 = -1;
    v75 = -1;
    v76 = -1;
    v16 = -1;
  }

  else
  {
    v14 = v11;
    v15 = 0;
    v16 = -1;
    v75 = -1;
    v76 = -1;
    v77 = -1;
    v78 = -1;
    v79 = -1;
    v73 = -1;
    v74 = -1;
    v17 = -1;
    v83 = -1;
    v84 = -1;
    v80 = -1;
    v81 = -1;
    v82 = -1;
    do
    {
      v18 = *v13;
      if (v18 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
      {
        v16 = v15;
      }

      v19 = *v13;
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
      {
        v17 = v15;
      }

      if ((*v72 & 0x8000000000000000) == 0)
      {
        v20 = *v13;
        CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v22 = v75;
        if (v20 == *(CoreOpInputAtIndex + 32))
        {
          v22 = v15;
        }

        v75 = v22;
      }

      if ((*v71 & 0x8000000000000000) == 0)
      {
        v23 = *v13;
        v24 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v25 = v76;
        if (v23 == *(v24 + 32))
        {
          v25 = v15;
        }

        v76 = v25;
      }

      if ((*v70 & 0x8000000000000000) == 0)
      {
        v26 = *v13;
        v27 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v28 = v77;
        if (v26 == *(v27 + 32))
        {
          v28 = v15;
        }

        v77 = v28;
      }

      if ((*v69 & 0x8000000000000000) == 0)
      {
        v29 = *v13;
        v30 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v31 = v78;
        if (v29 == *(v30 + 32))
        {
          v31 = v15;
        }

        v78 = v31;
      }

      if ((*v68 & 0x8000000000000000) == 0)
      {
        v32 = *v13;
        v33 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v34 = v79;
        if (v32 == *(v33 + 32))
        {
          v34 = v15;
        }

        v79 = v34;
      }

      if ((*v67 & 0x8000000000000000) == 0)
      {
        v35 = *v13;
        v36 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v37 = v73;
        if (v35 == *(v36 + 32))
        {
          v37 = v15;
        }

        v73 = v37;
      }

      if ((*v66 & 0x8000000000000000) == 0)
      {
        v38 = *v13;
        v39 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v40 = v82;
        if (v38 == *(v39 + 32))
        {
          v40 = v15;
        }

        v82 = v40;
      }

      if ((*v65 & 0x8000000000000000) == 0)
      {
        v41 = *v13;
        v42 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v43 = v80;
        if (v41 == *(v42 + 32))
        {
          v43 = v15;
        }

        v80 = v43;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v44 = *v13;
        v45 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v46 = v81;
        if (v44 == *(v45 + 32))
        {
          v46 = v15;
        }

        v81 = v46;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        v47 = *v13;
        v48 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v49 = v83;
        if (v47 == *(v48 + 32))
        {
          v49 = v15;
        }

        v83 = v49;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        v50 = *v13;
        v51 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v52 = v84;
        if (v50 == *(v51 + 32))
        {
          v52 = v15;
        }

        v84 = v52;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v53 = *v13;
        v54 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v55 = v74;
        if (v53 == *(v54 + 32))
        {
          v55 = v15;
        }

        v74 = v55;
      }

      ++v15;
      ++v13;
    }

    while (v13 != v64);
  }

  if (a3)
  {
    *a3 = v16;
    a3[1] = v75;
    a3[2] = v76;
    a3[3] = v77;
    a3[4] = v78;
    a3[5] = v79;
    if ([(MPSNDArrayQuantizationDescriptor *)v61 quantizationScheme]== 2)
    {
      a3[1] = v73;
    }
  }

  if (a5)
  {
    *a5 = v17;
    a5[1] = v82;
    a5[2] = v80;
    a5[3] = v81;
    a5[4] = v83;
    a5[5] = v84;
    if ([(MPSNDArrayQuantizationDescriptor *)v63 quantizationScheme]== 2)
    {
      a5[1] = v74;
    }
  }

  if (v61)
  {
    v56 = v16 == -1;
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;
  if (v63)
  {
    v58 = v17 == -1;
  }

  else
  {
    v58 = 0;
  }

  if (v58)
  {
    return 1;
  }

  else
  {
    return v57;
  }
}

uint64_t validateAffineMatrixMultiplication(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 objectAtIndexedSubscript:0];
  v7 = [a1 objectAtIndexedSubscript:1];
  v8 = [a1 objectAtIndexedSubscript:2];
  v9 = [a1 objectAtIndexedSubscript:3];
  v10 = [a1 objectAtIndexedSubscript:4];
  v54 = [a1 objectAtIndexedSubscript:5];
  v11 = *(v6 + *MEMORY[0x277CD73C8]);
  if (v11 != 536870916 && v11 != 536870920)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v13 = MEMORY[0x277CD7410];
  v14 = MEMORY[0x277CD73D8];
  if (*(v6 + *MEMORY[0x277CD7410] + 4 * (*(v6 + *MEMORY[0x277CD73D8]) & 0xF)) != a3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v6 + *v13 + 4 * (*(v6 + *v14 + 1) & 0xF)) != a2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = *(v6 + *v13 + 4 * (*(v6 + *v14 + 2) & 0xF));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = -1;
    v17 = -1;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v24 = v16;
    v23 = v17;
LABEL_20:
    v25 = v54;
    goto LABEL_21;
  }

  if (*(v7 + *v13 + 4 * (*(v7 + *v14 + 2) & 0xF)) != v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v26 = (v7 + *v13);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[3];
  v30 = *(v7 + *v14);
  v73 = v26[2];
  v74 = v29;
  v72[0] = v27;
  v72[1] = v28;
  v17 = *(v72 + (BYTE1(v30) & 0xF));
  v71[2] = v73;
  v71[3] = v29;
  v71[0] = v27;
  v71[1] = v28;
  v16 = *(v71 + (v30 & 0xF));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

LABEL_10:
  if (*(v8 + *v13 + 4 * (*(v8 + *v14 + 2) & 0xF)) != v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = (v8 + *v13);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[3];
  v22 = *(v8 + *v14);
  v69 = v18[2];
  v70 = v21;
  v68[0] = v19;
  v68[1] = v20;
  v23 = *(v68 + (BYTE1(v22) & 0xF));
  v67[2] = v69;
  v67[3] = v21;
  v67[0] = v19;
  v67[1] = v20;
  v24 = *(v67 + (v22 & 0xF));
  if (v17 != -1 && v17 != v23 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v16 == -1 || v16 == v24)
  {
    goto LABEL_20;
  }

  v25 = v54;
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_21:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*(v9 + *v13 + 4 * (*(v9 + *v14 + 2) & 0xF)) != v15 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v31 = (v9 + *v13);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    v35 = *(v9 + *v14);
    v65 = v31[2];
    v66 = v34;
    v64[0] = v32;
    v64[1] = v33;
    v36 = *(v64 + (BYTE1(v35) & 0xF));
    v63[2] = v65;
    v63[3] = v34;
    v63[0] = v32;
    v63[1] = v33;
    v37 = *(v63 + (v35 & 0xF));
    if (v23 != -1 && v23 != v36 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v24 != -1 && v24 != v37 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = -1;
    v39 = -1;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (*(v10 + *v13 + 4 * (*(v10 + *v14 + 2) & 0xF)) != v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v41 = (v10 + *v13);
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[3];
  v45 = *(v10 + *v14);
  v61 = v41[2];
  v62 = v44;
  v60[0] = v42;
  v60[1] = v43;
  v38 = *(v60 + (BYTE1(v45) & 0xF));
  v59[2] = v61;
  v59[3] = v44;
  v59[0] = v42;
  v59[1] = v43;
  v39 = *(v59 + (v45 & 0xF));
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
LABEL_32:
    if (*(v25 + *v13 + 4 * (*(v25 + *v14 + 2) & 0xF)) != v15)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    v46 = (v25 + *v13);
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[3];
    v50 = *(v25 + *v14);
    v57 = v46[2];
    v58 = v49;
    v56[0] = v47;
    v56[1] = v48;
    v51 = *(v56 + (BYTE1(v50) & 0xF));
    v55[2] = v57;
    v55[3] = v49;
    v55[0] = v47;
    v55[1] = v48;
    v52 = *(v55 + (v50 & 0xF));
    if (v38 != -1 && v38 != v51)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    if (v39 != -1 && v39 != v52)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        return MTLReportFailure();
      }
    }
  }

  return result;
}

uint64_t validateLUTMatrixMultiplication(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 objectAtIndexedSubscript:0];
  result = [a1 objectAtIndexedSubscript:1];
  v12 = result;
  v13 = MEMORY[0x277CD73C8];
  v14 = *(v10 + *MEMORY[0x277CD73C8]);
  if (v14 != 4 && v14 != 8 && v14 != 536870920)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v17 = 256;
  if (*(v10 + *v13) == 4)
  {
    v17 = 16;
  }

  if (a2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (a2)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v20 = MEMORY[0x277CD7410];
  v21 = v12 + *MEMORY[0x277CD7410];
  v22 = MEMORY[0x277CD73D8];
  v48 = *(v12 + *MEMORY[0x277CD73D8]);
  if (v17 != *(v21 + 4 * (*(&v48 | a2) & 0xF)))
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v23 = *v20;
  v24 = *(v10 + v23);
  v25 = *(v10 + v23 + 16);
  v26 = *(v10 + v23 + 48);
  v27 = *v22;
  v28 = *(v10 + v27);
  v44 = *(v10 + v23 + 32);
  v45 = v26;
  v43[0] = v24;
  v43[1] = v25;
  v29 = *(v43 + (v28 & 0xF));
  v42[2] = v44;
  v42[3] = v26;
  v42[0] = v24;
  v42[1] = v25;
  v30 = *(v42 + (BYTE1(v28) & 0xF));
  v31 = (v12 + v23);
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v12 + v27);
  v35 = v31[2];
  v36 = v31[3];
  v41 = v34;
  v47[2] = v35;
  v47[3] = v36;
  v47[0] = v32;
  v47[1] = v33;
  v37 = *(v47 + (*(&v41 | v18 & 0xF) & 0xF));
  v46[2] = v35;
  v46[3] = v36;
  v46[0] = v32;
  v46[1] = v33;
  v38 = *(v46 + (*(&v41 | v19 & 0xF) & 0xF));
  if (a2)
  {
    v40[0] = v32;
    v40[1] = v33;
    v40[2] = v35;
    v40[3] = v36;
    v39 = *(v40 + (v34 & 0xF));
    if (a3)
    {
      if (v29 != a5)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v39 * v30 != a4)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v29 % v37)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v30 % v38)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          return MTLReportFailure();
        }
      }
    }

    else
    {
      if (v39 * v29 != a5)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v30 != a4)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v29 % v37)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v30 % v38)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          return MTLReportFailure();
        }
      }
    }
  }

  else
  {
    if (v29 != a5)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    if (v30 != a4)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    if (v29 % v37)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    if (v30 % v38)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        return MTLReportFailure();
      }
    }
  }

  return result;
}

uint64_t MPSNDArrayQuantizedMatrixMultiplicationConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = MPSCreateFunctionConstantValues();
  AddFunctionConstantList(v7, a3);
  v10 = a2[8];
  [v7 setConstantValue:&v10 type:85 atIndex:115];
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

uint64_t MPSNDArrayMatMulDeviceBehavior::EncodeQuantizedMatrixMultiplicationInt8Affine(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v86 = *MEMORY[0x277D85DE8];
  v7 = 431188;
  v8 = *(a2 + 176);
  v9 = *(a5 + 208);
  v10 = [*(a5 + 232) graph];
  GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v10, 0, v85[0].i64, v8, v83, 0, v11);
  v12 = [*(a5 + 16) objectAtIndexedSubscript:v85[0].i64[0]];
  [*(a5 + 16) objectAtIndexedSubscript:v83[0]];
  v13 = [*(a5 + 16) objectAtIndexedSubscript:v83[1]];
  v14 = MEMORY[0x277CD7410];
  v15 = (v13 + *MEMORY[0x277CD7410]);
  v16 = *v15;
  v17 = v15[1];
  v18 = MEMORY[0x277CD73D8];
  v19 = *(v13 + *MEMORY[0x277CD73D8]);
  v20 = v15[2];
  v21 = v15[3];
  v56[2] = v20;
  v56[3] = v21;
  v56[0] = v16;
  v56[1] = v17;
  if (*(v56 + (v19 & 0xF)) == 1)
  {
    v55[0] = v16;
    v55[1] = v17;
    v55[2] = v20;
    v55[3] = v21;
    if (*(v55 + (BYTE1(v19) & 0xF)) == 1)
    {
      v7 = 431189;
    }

    v48 = v7;
  }

  else
  {
    v48 = 431188;
  }

  makeStrideBytes();
  v46 = v82;
  v22 = v81;
  makeStrideBytes();
  v47 = v80;
  v23 = v79;
  makeStrideBytes();
  v24 = *v14;
  v25 = *(v9 + v24);
  v26 = *(v9 + v24 + 16);
  v27 = *(v9 + v24 + 48);
  v28 = *v18;
  v29 = *(v9 + v28);
  v53 = *(v9 + v24 + 32);
  v54 = v27;
  v52[0] = v25;
  v52[1] = v26;
  v30 = *(v52 + (v29 & 0xF));
  v51[2] = v53;
  v51[3] = v27;
  v51[0] = v25;
  v51[1] = v26;
  v31 = *(v51 + (BYTE1(v29) & 0xF));
  v50[2] = v53;
  v50[3] = v27;
  v50[0] = v25;
  v50[1] = v26;
  v32 = *(v50 + (BYTE2(v29) & 0xF));
  LODWORD(v25) = *(v50 + (BYTE2(v29) & 0xF));
  DWORD1(v25) = v31;
  DWORD2(v25) = v30;
  HIDWORD(v25) = *(v12 + v24 + 4 * (*(v12 + v28) & 0xF));
  v68 = v25;
  if (v46 == *(&v46 + 1))
  {
    v33 = 0;
  }

  else
  {
    v33 = v46 >> 1;
  }

  v69 = v33;
  v70 = v22 >> 1;
  if (v47 == *(&v47 + 1))
  {
    v34 = 0;
  }

  else
  {
    v34 = v47;
  }

  v71 = v34;
  v72 = v23;
  if (*&v77 == v78)
  {
    v35 = 0;
  }

  else
  {
    v35 = *&v77 >> 1;
  }

  v73 = v35;
  v74 = v76 >> 1;
  v75 = 0;
  if ([(MPSNDArrayAffineQuantizationDescriptor *)v8 hasZeroPoint])
  {
    [*(a5 + 16) objectAtIndexedSubscript:v84];
    makeStrideBytes();
    if (v66 == v67)
    {
      v36 = 0;
    }

    else
    {
      v36 = v66;
    }

    v75 = __PAIR64__(v65, v36);
  }

  v37 = [(MPSNDArrayAffineQuantizationDescriptor *)v8 hasZeroPoint];
  v38 = 2;
  if (!v37)
  {
    v38 = 0;
  }

  v39 = v38 | v48;
  *&v40 = -1;
  *(&v40 + 1) = -1;
  v63 = v40;
  v64 = v40;
  v61 = v40;
  v62 = v40;
  v60 = v40;
  *&v64 = [*(a5 + 16) count] | 0x10000;
  *&v61 = v39;
  v44 = *(a2 + *MEMORY[0x277CD7360]);
  v45 = *(a2 + *MEMORY[0x277CD7368]);
  v43 = *(a5 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(a3, a5, 4, 0, 0);
  [a3 setComputePipelineState:{PipelineStateForMPSKey, v43, v44, v45, 0, 0}];
  objc_msgSend_setBytes_length_atIndex_(a3);
  [a3 setThreadgroupMemoryLength:1024 atIndex:0];
  v59[0] = (v31 + 31) >> 5;
  v59[1] = (v30 + 31) >> 5;
  v59[2] = v32;
  v57 = xmmword_239B0A860;
  v58 = 8;
  [a3 dispatchThreadgroups:v59 threadsPerThreadgroup:&v57];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t MPSNDArrayMatMulDeviceBehavior::IsInt8AffineSupportedQuantization(uint64_t a1, uint64_t a2)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  if ([*(a2 + 40) quantizationScheme])
  {
    goto LABEL_26;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)v3 quantizationScheme]!= 1)
  {
    goto LABEL_26;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]!= 536870920)
  {
    goto LABEL_26;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v3 hasMinValue])
  {
    goto LABEL_26;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantScale])
  {
    goto LABEL_26;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantMinVal])
  {
    goto LABEL_26;
  }

  v29 = 0;
  v4 = [*(*(a2 + 56) + 232) graph];
  GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v4, 0, v31, v3, v30, &v29, v5);
  if ((*(a2 + 32) & 7) != 0)
  {
    goto LABEL_26;
  }

  if (*(a2 + 8) > 1uLL)
  {
    goto LABEL_26;
  }

  if ((*(a2 + 24) & 0x1F) != 0)
  {
    goto LABEL_26;
  }

  v6 = *(a2 + 56);
  v7 = [*(v6 + 232) inputTensorAtIndex:0];
  v8 = [*(v6 + 232) inputTensorAtIndex:1];
  v9 = [*(v6 + 232) inputTensorAtIndex:2];
  BaseTensor::GetAccessPattern();
  v11 = v10;
  v12.i32[0] = v12.u8[0];
  v12.i32[1] = v11;
  v13 = vceq_s32(vand_s8(v12, 0xFF000000FFLL), 0x100000000);
  if ((v13.i32[0] & v13.i32[1] & 1) == 0)
  {
    goto LABEL_26;
  }

  BaseTensor::GetAccessPattern();
  v15.i32[0] = v14;
  v15.i32[1] = v16;
  v17 = vceq_s32(vand_s8(v15, 0xFF000000FFLL), 1);
  if ((v17.i32[0] & v17.i32[1] & 1) == 0 || *(v7 + 8) != 268435472 || (*(v8 + 8) | 0x20000000) != 0x20000008 || *(v9 + 2) != 268435472 || -[MPSNDArrayAffineQuantizationDescriptor hasZeroPoint](v3, "hasZeroPoint") && *([*(v6 + 232) inputTensorAtIndex:3] + 8) != 536870920)
  {
    goto LABEL_26;
  }

  v18 = 0;
  if (BaseTensor::GetDimensionSize(v9) == 1)
  {
    v18 = BaseTensor::GetDimensionSize(v9) == 1;
  }

  if (*(a2 + 24) == BaseTensor::GetDimensionSize(v9))
  {
    v19 = v18 | (BaseTensor::GetDimensionSize(v9) == 1);
    if (v18 || (v19 & 1) == 0)
    {
      return v19 & 1;
    }
  }

  else
  {
    v19 = v18;
    if (v18 || !v18)
    {
      return v19 & 1;
    }
  }

  BaseTensor::GetAccessPattern();
  v21.i32[0] = v20;
  v21.i32[1] = v22;
  v23 = vceq_s32(vand_s8(v21, 0xFF000000FFLL), 1);
  if ((v23.i32[0] & v23.i32[1] & 1) == 0)
  {
LABEL_26:
    v19 = 0;
    return v19 & 1;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v3 hasZeroPoint])
  {
    [*(v6 + 232) inputTensorAtIndex:3];
    BaseTensor::GetAccessPattern();
    v25.i32[0] = v24;
    v25.i32[1] = v26;
    v27 = vceq_s32(vand_s8(v25, 0xFF000000FFLL), 1);
    v19 = v27.i8[0] & v27.i8[4];
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

BOOL MPSNDArrayMatMulA18DeviceBehavior::IsInt2Int8AffineSupportedQuantization(uint64_t a1, uint64_t a2)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  v3 = *(a2 + 48);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || [*(a2 + 40) quantizationScheme] != 1 || -[MPSNDArrayQuantizationDescriptor quantizationScheme](v3, "quantizationScheme") != 1 || -[MPSNDArrayQuantizationDescriptor quantizationDataType](v2, "quantizationDataType") != 536870920 && -[MPSNDArrayQuantizationDescriptor quantizationDataType](v2, "quantizationDataType") != 536870914)
  {
    return 0;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]!= 536870920 && [(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]!= 536870914)
  {
    return 0;
  }

  v6 = [(MPSNDArrayQuantizationDescriptor *)v2 quantizationDataType];
  if (v6 == [(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasZeroPoint]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasMinValue]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasDoubleQuantMinVal]|| [(MPSNDArrayAffineQuantizationDescriptor *)v3 hasZeroPoint]|| [(MPSNDArrayAffineQuantizationDescriptor *)v3 hasMinValue]|| [(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantMinVal])
  {
    return 0;
  }

  GetPlaceHolderIndexInSourceArrayAffineGEMM([*(*(a2 + 56) + 232) graph], v2, v22, v3, v21, 0, 0, 0);
  v7 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:v22[0]];
  v8 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:v21[0]];
  if (v22[1] == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
  }

  v10 = v9;
  if (v21[1] == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
  }

  v12 = v10;
  if (!v10)
  {
    v18 = v11;
    v19 = MTLReportFailureTypeEnabled();
    v11 = v18;
    v12 = 0;
    if (v19)
    {
      MTLReportFailure();
      v11 = v18;
      v12 = 0;
    }
  }

  if (!v11)
  {
    v20 = MTLReportFailureTypeEnabled();
    v11 = 0;
    v12 = v10;
    if (v20)
    {
      MTLReportFailure();
      v11 = 0;
      v12 = v10;
    }
  }

  v13 = *MEMORY[0x277CD73C8];
  if ((*(v12 + v13) | 0x80000000) != 0x90000010 || (*(v11 + v13) | 0x80000000) != 0x90000010)
  {
    return 0;
  }

  result = 0;
  v15 = *MEMORY[0x277CD73D8];
  if (*(v7 + v15 + 2) && *(v7 + v15 + 3))
  {
    v16 = v8 + v15;
    if (*(v16 + 3))
    {
      v17 = *(v16 + 2) == 0;
    }

    else
    {
      v17 = 1;
    }

    return !v17;
  }

  return result;
}

uint64_t MPSNDArrayMatMulA18DeviceBehavior::EncodeQuantizedMatrixMultiplicationInt2Int8Affine(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v145 = *MEMORY[0x277D85DE8];
  v7 = a2[21];
  v8 = a2[22];
  v9 = a2[19];
  v139 = 0u;
  v140 = 0u;
  *v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  *v135 = 0u;
  if (GetPlaceHolderIndexInSourceArrayAffineGEMM([*(a5 + 232) graph], v7, &v143, v8, &v141, 0, v138, v135) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = v138[0];
  v11 = v135[0];
  v12 = [*(a5 + 232) outputTensorAtIndex:0];
  v13 = *(v10 + 2);
  v15 = *v13;
  v14 = v13[1];
  v88 = a3;
  v81 = v9;
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v16 = *(v11 + 2);
  v18 = *v16;
  v17 = v16[1];
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v19 = *(v12 + 16);
  v21 = *v19;
  v20 = v19[1];
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v22 = [*(a5 + 16) objectAtIndexedSubscript:v143];
  v101 = [*(a5 + 16) objectAtIndexedSubscript:v144];
  v106 = [*(a5 + 16) objectAtIndexedSubscript:v141];
  v95 = a1;
  v100 = [*(a5 + 16) objectAtIndexedSubscript:v142];
  v23 = *(a5 + 208);
  v24 = MEMORY[0x277CD7410];
  v25 = *MEMORY[0x277CD7410];
  v26 = *&v23[v25];
  v27 = *&v23[v25 + 16];
  v28 = MEMORY[0x277CD73D8];
  v29 = *&v23[v25 + 48];
  v30 = *MEMORY[0x277CD73D8];
  v104 = v23;
  v31 = *&v23[v30];
  v111 = *&v23[v25 + 32];
  v112 = v29;
  v110[0] = v26;
  v110[1] = v27;
  v32 = *(v110 + (BYTE1(v31) & 0xF));
  v109[2] = v111;
  v109[3] = v29;
  v109[0] = v26;
  v109[1] = v27;
  v105 = *(v109 + (v31 & 0xF));
  v86 = *(v22 + v25 + 4 * (*(v22 + v30) & 0xF));
  v108[2] = v111;
  v108[3] = v29;
  v108[0] = v26;
  v108[1] = v27;
  v82 = *(v108 + (BYTE2(v31) & 0xF));
  v107[2] = v111;
  v107[3] = v29;
  v107[0] = v26;
  v107[1] = v27;
  v87 = *(v107 + (BYTE3(v31) & 0xF));
  v33 = MEMORY[0x277CD73C8];
  v34 = *MEMORY[0x277CD73C8];
  v35 = *(v22 + v34);
  if ((v35 | 0x20000000) == 0x20000008)
  {
    v36 = *&v106[v34];
    v102 = v106;
    v97 = v22;
    if ((v36 | 0x20000000) == 0x20000002)
    {
      goto LABEL_17;
    }

    if ((v36 | 0x20000000) != 0x20000008)
    {
      goto LABEL_74;
    }
  }

  else if ((*&v106[v34] | 0x20000000) != 0x20000008)
  {
LABEL_74:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return -19;
  }

  v102 = v22;
  v97 = v106;
  if ((v35 | 0x20000000) != 0x20000002)
  {
    goto LABEL_74;
  }

LABEL_17:
  if ((*(a2 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if ((*(v101 + v34) & 0x7FFFFFFF) != 0x10000010 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v101 + *v24 + 4 * (*(v101 + *v28) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v37 = *(v101 + *v24 + 4 * (*(v101 + *v28 + 1) & 0xF));
    if (v37 != 1 && v37 != v32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((*(v100 + *MEMORY[0x277CD73C8]) & 0x7FFFFFFF) != 0x10000010 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v100 + *v24 + 4 * (*(v100 + *v28 + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v38 = *(v100 + *v24 + 4 * (*(v100 + *v28) & 0xF));
    if (v38 != 1 && v38 != v105 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v101 + *MEMORY[0x277CD73C8]) != *(v100 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v22 + *v24 + 4 * (*(v22 + *v28) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v22 + *v24 + 4 * (*(v22 + *v28 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *&v106[4 * (*&v106[*v28] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *&v106[4 * (v106[*v28 + 1] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *&v104[4 * (*&v104[*v28] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *&v104[4 * (v104[*v28 + 1] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v22 + *v24 + 4 * (*(v22 + *v28) & 0xF)) != *&v106[4 * (v106[*v28 + 1] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v22 + *v24 + 4 * (*(v22 + *v28 + 1) & 0xF)) != *&v104[4 * (v104[*v28 + 1] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v106[4 * (*&v106[*v28] & 0xF) + *v24] != *&v104[4 * (*&v104[*v28] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v39 = v22 + *v28;
    if ((!*(v39 + 2) || !*(v39 + 3)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v40 = &v106[*v28];
    if ((!v40[2] || !v40[3]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v22 + *MEMORY[0x277CD7428]) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v106[*MEMORY[0x277CD7428]] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v41 = *v28;
    v33 = MEMORY[0x277CD73C8];
    if ((*&v97[v41] || !*&v102[v41]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((v102[*v24] & 0xF) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v87 != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v42 = *(v95 + 8);
  v103 = 2;
  if ((-1431655765 * v105) >= 0x55555556)
  {
    v43 = 2;
  }

  else
  {
    v43 = 3;
  }

  if (v32 > 8)
  {
    v44 = 1;
    if (v42)
    {
      goto LABEL_51;
    }

LABEL_53:
    v85 = 0;
    v93 = 2;
    v91 = v103;
    goto LABEL_54;
  }

  v103 = 1;
  v43 = 4;
  v44 = 2;
  if (!v42)
  {
    goto LABEL_53;
  }

LABEL_51:
  v43 = v42[1];
  v91 = *v42;
  v103 = v42[2];
  v44 = v42[4];
  v93 = v42[3];
  v85 = v42[6] != 0;
LABEL_54:
  v96 = v44;
  v98 = v22;
  v83 = *&v104[*v33];
  if (v83 == 536870920)
  {
    v118 = v105;
    v119 = v32;
    *&v120 = v82 * v87;
    v45 = [MEMORY[0x277CD7268] descriptorWithDataType:268435472 dimensionCount:3 dimensionSizes:&v118];
    v89 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a4 descriptor:v45];
    *&v129 = 1;
    *(&v129 + 1) = v32;
    v130 = v82 * v87;
    v46 = [MEMORY[0x277CD7268] descriptorWithDataType:268435488 dimensionCount:3 dimensionSizes:&v129];
    [v46 setPreferPackedRows:1];
    v84 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a4 descriptor:v46];
    v77 = *(a2 + *MEMORY[0x277CD7360]);
    v79 = *(a2 + *MEMORY[0x277CD7368]);
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    v117 = v32;
    v48 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v49 = v32;
    if (v48 >= 0x100)
    {
      v50 = 256;
    }

    else
    {
      v50 = v48;
    }

    v51 = v117;
    [a3 setComputePipelineState:PipelineStateForMPSKey];
    [a3 setBuffer:objc_msgSend(v84 offset:"buffer") atIndex:{0, 29}];
    objc_msgSend_setBytes_length_atIndex_(a3);
    __p = ((v50 + v51 - 1) / v50);
    v116 = vdupq_n_s64(1uLL);
    v113 = v50;
    v114 = v116;
    [a3 dispatchThreadgroups:&__p threadsPerThreadgroup:&v113];
  }

  else
  {
    v49 = v32;
    v84 = 0;
    v89 = v104;
  }

  v90 = v49;
  v52 = [v98 dataType];
  v53 = [v106 dataType];
  v54 = [v104 dataType];
  *&v55 = -1;
  *(&v55 + 1) = -1;
  v134 = v55;
  v133 = v55;
  v132 = v55;
  v130 = -1;
  v129 = v55;
  v131 = (v53 << 10) | (32 * v52) | v54;
  *&v134 = [*(a5 + 16) count] | ((*(a5 + 112) != 0) << 8) | 0x10000;
  v78 = *(a2 + *MEMORY[0x277CD7360]);
  v80 = *(a2 + *MEMORY[0x277CD7368]);
  v76 = *(a5 + 232);
  MPSLibrary::CreateUberShaderKey();
  v56 = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  v118 = __PAIR64__(v105, v90);
  LODWORD(v119) = v86;
  v57 = *MEMORY[0x277CD7428];
  v58 = &v98[v57];
  v59 = vld2q_f32(v58);
  v120 = v59;
  v60 = (v101 + v57);
  v61 = vld2q_f32(v60);
  v121 = v61;
  v62 = &v106[v57];
  v63 = vld2q_f32(v62);
  v122 = v63;
  v64 = (v100 + v57);
  v65 = vld2q_f32(v64);
  v123 = v65;
  v124 = v144;
  v125 = v142;
  v126 = v82;
  v127 = v87;
  v128 = v82 * v87;
  v66 = *(a5 + 8);
  v67 = *(v66 + 80 * v143 + 64);
  v68 = *(v66 + 80 * v141 + 64);
  v69 = *(a5 + 192);
  [v88 setComputePipelineState:{v56, v76, v78, v80, 0, 0}];
  MPSSetNDArraysOnComputeEncoder(v88, a5, 4, 0, 0);
  [v88 setBuffer:objc_msgSend(v98 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v98, 0, 4, 0, 0) + v67, 29}];
  [v88 setBuffer:objc_msgSend(v106 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v106, 0, 4, 0, 0) + v68, 28}];
  [v88 setBuffer:objc_msgSend(v89 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v89, 0, 4, 0, 0) + v69, 27}];
  objc_msgSend_setBytes_length_atIndex_(v88);
  if (v83 == 536870920)
  {
    [v88 setBuffer:objc_msgSend(v84 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v84, 0, 4, 0, 0) + v69, 25}];
  }

  if (v96 < 2)
  {
    v71 = 0;
    v70 = v43;
  }

  else
  {
    v70 = v43;
    v71 = v43 * ((v96 << 10) - 1024) * v91;
  }

  v72 = (v93 * v70) << 10;
  if (v71 > v72)
  {
    v72 = v71;
  }

  if (v85)
  {
    v73 = v72;
  }

  else
  {
    v73 = v71;
  }

  [v88 setThreadgroupMemoryLength:v73 atIndex:0];
  __p = ((v90 + 16 * v91 * v103 - 1) / (16 * v91 * v103));
  v116.i64[0] = (v105 + 16 * v43 * v93 - 1) / (16 * v43 * v93);
  v116.i64[1] = v82 * v87;
  v113 = 32 * v96 * v93 * v103;
  v114 = vdupq_n_s64(1uLL);
  [v88 dispatchThreadgroups:&__p threadsPerThreadgroup:&v113];
  MPSLibrary::ReleaseComputeState();
  if (v83 == 536870920)
  {
    operator new();
  }

  return 0;
}

void sub_239A6515C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, void *__p)
{
  operator delete(__p);
  if (a24)
  {
    operator delete(a24);
    if (a25)
    {
LABEL_6:
      operator delete(a25);
      _Unwind_Resume(a1);
    }
  }

  else if (a25)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayMatrixMultiplyI2I8A18FunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = MPSCreateFunctionConstantValues();
  [v7 setConstantValue:a2 + 8 type:85 atIndex:115];
  AddFunctionConstantList(v7, a3);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

uint64_t EncodeQuantizedMatrixMultiplication(void *a1, void *a2, void *a3, uint64_t a4)
{
  v284 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v187 = a1[34];
  v6 = a1[21];
  v7 = a1[22];
  if (*(a1 + 21) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = *(*v9 + 8);
  v10 = *v11;
  if (*(v11 + 8) == *v11)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v12 = *v10;
  v197 = a4;
  v13 = *(a4 + 208);
  v14 = (v13 + *MEMORY[0x277CD7410]);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = *(v13 + *MEMORY[0x277CD73D8]);
  v214 = v14[3];
  v213[2] = v17;
  v213[0] = v15;
  v213[1] = v16;
  v189 = *(v213 + (v18 & 0xF));
  v212[2] = v17;
  v212[3] = v214;
  v212[0] = v15;
  v212[1] = v16;
  v191 = *(v212 + (BYTE1(v18) & 0xF));
  v211[2] = v17;
  v211[3] = v214;
  v211[0] = v15;
  v211[1] = v16;
  v19 = *(v211 + (BYTE2(v18) & 0xF));
  DimensionSize = BaseTensor::GetDimensionSize(v12);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    goto LABEL_21;
  }

  if (v6)
  {
    if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]== 4)
    {
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 2)
    {
      [(MPSNDArrayQuantizationDescriptor *)v6 hasZeroPoint];
      [(MPSNDArrayQuantizationDescriptor *)v6 hasMinValue];
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ([(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]== 4)
  {
    v21 = a1[23];
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]== 2)
  {
LABEL_18:
    v21 = a1[23];
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  [(MPSNDArrayQuantizationDescriptor *)v7 hasZeroPoint];
  [(MPSNDArrayQuantizationDescriptor *)v7 hasMinValue];
  v21 = a1[23];
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_19:
  [v21 normFusionType];
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
LABEL_20:
    operator new();
  }

LABEL_21:
  v22 = a1[21];
  v23 = a1[22];
  if ([v22 quantizationScheme] == 4)
  {
    [v23 quantizationScheme];
  }

  if ([v22 quantizationScheme] == 4 && objc_msgSend(v23, "quantizationScheme") == 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((!v22 || [v22 quantizationScheme] != 4) && (!v23 || objc_msgSend(v23, "quantizationScheme") != 4))
  {
    v215.__r_.__value_.__r.__words[0] = *(a1 + *MEMORY[0x277CD7370]);
    v215.__r_.__value_.__l.__size_ = v19;
    v215.__r_.__value_.__r.__words[2] = v191;
    *&v216 = v189;
    *(&v216 + 1) = DimensionSize;
    v217 = v6;
    v218 = v7;
    v219 = v197;
    v220 = a1;
    v25 = *(v215.__r_.__value_.__r.__words[0] + 32);
    memset(v224, 0, sizeof(v224));
    *&v26 = 0x100000001;
    *(&v26 + 1) = 0x100000001;
    v228 = v26;
    v227 = v26;
    v226 = v26;
    v225 = v26;
    v229 = 0;
    v233 = v26;
    v232 = v26;
    v231 = v26;
    v230 = v26;
    v234 = 0;
    v238 = v26;
    v237 = v26;
    v236 = v26;
    v235 = v26;
    v239 = 0;
    v243 = v26;
    v242 = v26;
    v241 = v26;
    v240 = v26;
    v244 = 0;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v251 = 0;
    v253 = 0;
    v252 = 0;
    v254 = 0;
    if (*(*(a1 + *MEMORY[0x277CD7350]) + 1472) >= 22 && v6 && v7)
    {
      v28 = [(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]!= 536870920 || [(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 1;
      v186 = [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]== 536870916 && [(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]== 1;
      GetPlaceHolderIndexInSourceArrayQuantizedGEMM2([*(v197 + 232) graph], v6, v255, v7, v274);
      v35 = *v274;
      v36 = [*(v197 + 16) objectAtIndexedSubscript:*v255];
      v37 = [*(v197 + 16) objectAtIndexedSubscript:v35];
      if (v36)
      {
        v38 = v37;
        if (v37)
        {
          v39 = *&v274[8];
          if (*&v255[8] == -1)
          {
            v40 = 0;
            if (*&v274[8] == -1)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v40 = [*(v197 + 16) objectAtIndexedSubscript:?];
            if (v39 == -1)
            {
              goto LABEL_33;
            }
          }

          v41 = [*(v197 + 16) objectAtIndexedSubscript:v39];
          if (v40)
          {
            if (v41)
            {
              v42 = *MEMORY[0x277CD7410];
              v43 = *(v40 + v42);
              v44 = *(v40 + v42 + 16);
              v45 = *MEMORY[0x277CD73D8];
              v46 = *(v40 + v45);
              v47 = *(v40 + v42 + 32);
              v48 = *(v40 + v42 + 48);
              v210[2] = v47;
              v210[3] = v48;
              v210[0] = v43;
              v210[1] = v44;
              if (*(v210 + (v46 & 0xF)) == 1)
              {
                v209[0] = v43;
                v209[1] = v44;
                v209[2] = v47;
                v209[3] = v48;
                if (*(v209 + (BYTE1(v46) & 0xF)) == 1 && !v28)
                {
                  v50 = *(v38 + v42);
                  v51 = *(v38 + v42 + 16);
                  v52 = *(v38 + v42 + 48);
                  v53 = *(v38 + v45);
                  v207 = *(v38 + v42 + 32);
                  v208 = v52;
                  v206[0] = v50;
                  v206[1] = v51;
                  v54 = *(v206 + (BYTE1(v53) & 0xF));
                  v55 = (v41 + v42);
                  v56 = *v55;
                  v57 = v55[1];
                  v58 = *(v41 + v45);
                  v59 = v55[3];
                  v203 = v55[2];
                  v204 = v59;
                  v202[0] = v56;
                  v202[1] = v57;
                  v60 = v54 % *(v202 + (BYTE1(v58) & 0xF)) == 0;
                  v201[2] = v203;
                  v201[3] = v59;
                  v201[0] = v56;
                  v201[1] = v57;
                  v61 = *(v201 + (v58 & 0xF));
                  v205[2] = v207;
                  v205[3] = v52;
                  v205[0] = v50;
                  v205[1] = v51;
                  v62 = v186;
                  if (!v60)
                  {
                    v62 = 0;
                  }

                  if (v62 && v61 == *(v205 + (v53 & 0xF)))
                  {
                    MPSKernel_LogInfo(a1, 4uLL, "Using EncodeMatrixMultiplyQ4IntoQ8 encode path\n");
                    v63 = a1[21];
                    v64 = a1[22];
                    v65 = [*(v197 + 232) graph];
                    if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v65, v63, &__dst, v64, v281, 0, v66) && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    v67 = __dst;
                    v68 = v281[0];
                    v190 = [*(v197 + 16) objectAtIndexedSubscript:__dst];
                    v193 = [*(v197 + 16) objectAtIndexedSubscript:v68];
                    v69 = [*(v197 + 16) objectAtIndexedSubscript:3];
                    v70 = *(v197 + 208);
                    v175 = *(&v69->super.isa + *MEMORY[0x277CD73C8]);
                    v176 = *(&v69->super.isa + *MEMORY[0x277CD7400]);
                    v71 = *MEMORY[0x277CD7410];
                    v72 = v70 + v71;
                    v73 = *(&v70->super.isa + v71);
                    v74 = *(&v70[2].super.isa + v71);
                    v75 = MEMORY[0x277CD73D8];
                    v76 = *MEMORY[0x277CD73D8];
                    v188 = v70;
                    v77 = *(&v70->super.isa + v76);
                    v78 = v190;
                    v185 = *(&v190->super.isa + 4 * (*(&v190->super.isa + v76) & 0xF) + v71);
                    v181 = *(v72 + 2);
                    v182 = v77;
                    v179 = *(v72 + 3);
                    v200[2] = v181;
                    v200[3] = v179;
                    v183 = v74;
                    v184 = v73;
                    v200[0] = v73;
                    v200[1] = v74;
                    v174 = *(v200 + (BYTE2(v77) & 0xF));
                    if (v174 != 1)
                    {
                      v160 = MTLReportFailureTypeEnabled();
                      v75 = MEMORY[0x277CD73D8];
                      v78 = v190;
                      if (v160)
                      {
                        MTLReportFailure();
                        v75 = MEMORY[0x277CD73D8];
                        v78 = v190;
                      }
                    }

                    v79 = *v75;
                    if (*(&v78->super.isa + v79) == 1 || *(&v193->super.isa + v79) != 1)
                    {
                      v161 = MTLReportFailureTypeEnabled();
                      v78 = v190;
                      if (v161)
                      {
                        MTLReportFailure();
                        v78 = v190;
                      }
                    }

                    getStrides(v78, v280, 3);
                    getStrides(v193, v279, 3);
                    getStrides(v69, v278, 3);
                    getStrides(v188, v277, 3);
                    Offset = getOffset(v190, v280);
                    v81 = *(v197 + 8);
                    v177 = *(v81 + 80 * v67 + 64);
                    v178 = Offset;
                    v82 = getOffset(v193, v279);
                    v172 = *(v81 + 80 * v68 + 64);
                    v173 = v82;
                    v83 = getOffset(v188, v277);
                    v170 = *(v197 + 192);
                    v171 = v83;
                    v169 = [MPSNDArrayQuantizedMatrixMultiplication getLeftScaleIndexWithLeftAffineQuantizationDescriptor:v63 rightQuantizationDescriptor:v64];
                    v168 = [MPSNDArrayQuantizedMatrixMultiplication getRightScaleIndexWithLeftAffineQuantizationDescriptor:v63 rightQuantizationDescriptor:v64];
                    v84 = v283;
                    v85 = v281[1];
                    if (v283 != -1)
                    {
                      [*(v197 + 16) objectAtIndexedSubscript:v283];
                    }

                    if (v85 == -1)
                    {
                      v86 = 0;
                    }

                    else
                    {
                      v86 = [*(v197 + 16) objectAtIndexedSubscript:v85];
                    }

                    v127 = MEMORY[0x277CD73D8];
                    if (v84 == -1)
                    {
                      v162 = MTLReportFailureTypeEnabled();
                      v127 = MEMORY[0x277CD73D8];
                      if (v162)
                      {
                        MTLReportFailure();
                        v127 = MEMORY[0x277CD73D8];
                      }
                    }

                    if (v85 == -1)
                    {
                      v163 = MTLReportFailureTypeEnabled();
                      v127 = MEMORY[0x277CD73D8];
                      if (v163)
                      {
                        MTLReportFailure();
                        v127 = MEMORY[0x277CD73D8];
                      }
                    }

                    v128 = v185 / *(v86 + *MEMORY[0x277CD7410] + 4 * (*(v86 + *v127 + 1) & 0xF));
                    if (EncodeMatrixMultiplyQ4IntoQ8(void const*,objc_object  {objcproto24MTLComputeCommandEncoder}*,objc_object  {objcproto16MTLCommandBuffer}*,NDArrayMultiaryCallInfo const*)::predicate != -1)
                    {
                      dispatch_once(&EncodeMatrixMultiplyQ4IntoQ8(void const*,objc_object  {objcproto24MTLComputeCommandEncoder}*,objc_object  {objcproto16MTLCommandBuffer}*,NDArrayMultiaryCallInfo const*)::predicate, &__block_literal_global_422);
                    }

                    v129 = _MergedGlobals_32;
                    v130 = word_27DF85EDA;
                    v131 = 1 << word_27DF85EDC;
                    if ((1 << word_27DF85EDC) < v128)
                    {
                      v164 = 1 << word_27DF85EDC;
                      if (MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                        LODWORD(v131) = v164;
                      }
                    }

                    v132 = 1 << v130;
                    v199[0] = v184;
                    v199[1] = v183;
                    v199[2] = v181;
                    v199[3] = v179;
                    v133 = *(v199 + (HIBYTE(v182) & 0xF));
                    v198[0] = v184;
                    v198[1] = v183;
                    v198[2] = v181;
                    v198[3] = v179;
                    v134 = *(v198 + (v182 & 0xF));
                    MPSKernel_LogInfo(a1, 2uLL, "[Q4Q8] TG Tile size clamped between 32 and 256\n");
                    MPSKernel_LogInfo(a1, 2uLL, "[Q4Q8] Warning: MPS_MATMUL_KSPLITS, MPS_MATMUL_SIMDM, MPS_MATMUL_SIMDN not currently supported.\n");
                    MPSKernel_LogInfo(a1, 2uLL, "[Q4Q8] MatMul Paramters: TileK: %d, TileM: %d, TileN: %d simdM: %d simdN: %d kSplits: %d\n", v131, 1 << v129, v132, 1 << word_27DF85EDE, 1 << word_27DF85EE0, 1);
                    v180 = v132;
                    *&v274[8] = -1;
                    *v274 = -1;
                    memset(&v274[16], 0, 48);
                    v275 = [*(v197 + 16) count] | ((*(v197 + 112) != 0) << 8) | 0x10000;
                    v276 = 0;
                    v166 = *(a1 + *MEMORY[0x277CD7360]);
                    v167 = *(a1 + *MEMORY[0x277CD7368]);
                    v165 = *(v197 + 232);
                    MPSLibrary::CreateUberShaderKey();
                    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                    MPSSetNDArraysOnComputeEncoder(a2, v197, 3, 0, 0);
                    [a2 setComputePipelineState:{PipelineStateForMPSKey, v165, v166, v167, 0, 0}];
                    [a2 setBuffer:-[MPSNDArray buffer](v190 offset:"buffer") atIndex:{v177 + v178, 29}];
                    [a2 setBuffer:-[MPSNDArray buffer](v193 offset:"buffer") atIndex:{v172 + v173, 28}];
                    [a2 setBuffer:-[MPSNDArray buffer](v188 offset:"buffer") atIndex:{v170 + v171, 27}];
                    *v255 = v133;
                    *&v255[4] = v134;
                    *&v255[12] = 0u;
                    v256 = 0u;
                    v257 = 0u;
                    v258 = 0u;
                    v259 = 0u;
                    v260 = 0;
                    *&v255[8] = v185;
                    v261 = v176 / (v175 >> 3);
                    v262 = 0u;
                    v263 = 0u;
                    v264 = 0u;
                    v265 = 0u;
                    v266 = 0u;
                    v267 = 0;
                    v268 = v169;
                    v270 = 0;
                    v269 = 0;
                    v271 = v168;
                    v273 = 0;
                    v272 = 0;
                    objc_msgSend_setBytes_length_atIndex_(a2);
                    v223[0] = ((v134 + v180 - 1) / v180);
                    v223[1] = ((v133 + (1 << v129) - 1) / (1 << v129));
                    v223[2] = v174;
                    v221 = xmmword_239B0A870;
                    v222 = 1;
                    [a2 dispatchThreadgroups:v223 threadsPerThreadgroup:&v221];
                    MPSLibrary::ReleaseMPSKey();
                    goto LABEL_30;
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (!v6)
    {
      v27 = 1;
      goto LABEL_43;
    }

LABEL_33:
    if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]== 1)
    {
      if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]== 536870916)
      {
        v27 = 0;
        goto LABEL_47;
      }

      v27 = 0;
      if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]== 4)
      {
LABEL_47:
        if (IsOptimizedInt4KernelSupported(a1, v197))
        {
          MPSKernel_LogInfo(a1, 4uLL, "Using EncodeArrayMultiplyI4 encode path\n");
          v29 = (*(*v25 + 24))(v25, a1, a2, a3, v197);
          goto LABEL_72;
        }

LABEL_49:
        if (v191 >= 0x11 && v189 > 0x10)
        {
          goto LABEL_51;
        }

        if (v27)
        {
          if (!v7)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]!= 536870920 && [(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]!= 536870916 || [(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 1)
          {
            goto LABEL_51;
          }

          if (!v7)
          {
            v30 = [(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType];
            goto LABEL_115;
          }
        }

        if ([(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]!= 536870920 && [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]!= 536870916 || [(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]!= 1)
        {
          goto LABEL_51;
        }

        if ((v27 & 1) == 0)
        {
          v95 = [(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme];
          if (v95 != [(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme])
          {
            goto LABEL_51;
          }

          if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]== 536870920)
          {
            goto LABEL_116;
          }
        }

        v30 = [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType];
LABEL_115:
        if (v30 != 536870920)
        {
          goto LABEL_51;
        }

LABEL_116:
        if (isI8GEMVSupported(&v215))
        {
          MPSKernel_LogInfo(a1, 4uLL, "Using EncodeMatrixVectorMultiplyInt8 encode path\n");
          EncodeMatrixVectorMultiplyInt8(a1, a2, a3, v197, v96, v97, v98);
          goto LABEL_30;
        }

LABEL_51:
        if ((*(*v25 + 32))(v25, &v215))
        {
          MPSKernel_LogInfo(a1, 4uLL, "Using EncodeQuantizedMatrixMultiplicationInt8Affine encode path\n");
          v29 = (*(*v25 + 48))(v25, a1, a2, a3, v197);
          goto LABEL_72;
        }

        if ((*(*v25 + 40))(v25, &v215))
        {
          MPSKernel_LogInfo(a1, 4uLL, "Using EncodeQuantizedMatrixMultiplicationInt2Int8Affine encode path\n");
          v29 = (*(*v25 + 56))(v25, a1, a2, a3, v197);
          goto LABEL_72;
        }

        if (v191 < 0x11)
        {
          goto LABEL_70;
        }

        if (v189 < 0x11)
        {
          goto LABEL_70;
        }

        size = v215.__r_.__value_.__l.__size_;
        v249 = *&v215.__r_.__value_.__r.__words[1];
        v250 = v216;
        v31 = [*(v219 + 232) graph];
        if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v31, v217, v255, v218, v274, 0, v32))
        {
          goto LABEL_70;
        }

        v87 = *v255;
        if ((*v255 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v88 = *v274;
        if ((*v274 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v89 = *&v274[8];
        if ((*&v274[8] & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v90 = *&v274[24];
        v91 = [*(v219 + 16) objectAtIndexedSubscript:*v255];
        v92 = [*(v219 + 16) objectAtIndexedSubscript:v88];
        v93 = [*(v219 + 16) objectAtIndexedSubscript:v89];
        if (v90 < 0)
        {
          v94 = 0;
        }

        else
        {
          v94 = [*(v219 + 16) objectAtIndexedSubscript:v90];
        }

        v99 = *(v219 + 208);
        v224[0].i64[0] = v91;
        v224[0].i64[1] = v92;
        v224[1].i64[0] = v93;
        v224[1].i64[1] = v94;
        v100 = *(v219 + 8);
        v101 = (v100 + 80 * v87);
        v102 = v101[1];
        v103 = v101[2];
        v104 = v101[3];
        v229 = *(v101 + 8);
        v227 = v103;
        v228 = v104;
        v226 = v102;
        v225 = *v101;
        v105 = (v100 + 80 * v88);
        v107 = v105[2];
        v106 = v105[3];
        v108 = v105[1];
        v234 = *(v105 + 8);
        v232 = v107;
        v233 = v106;
        v231 = v108;
        v230 = *v105;
        v109 = (v100 + 80 * v89);
        v111 = v109[2];
        v110 = v109[3];
        v112 = v109[1];
        v239 = *(v109 + 8);
        v237 = v111;
        v238 = v110;
        v236 = v112;
        v235 = *v109;
        if ((v90 & 0x8000000000000000) == 0)
        {
          v113 = (v100 + 80 * v90);
          v240 = *v113;
          v114 = v113[1];
          v115 = v113[2];
          v116 = v113[3];
          v244 = *(v113 + 8);
          v242 = v115;
          v243 = v116;
          v241 = v114;
        }

        v117 = *MEMORY[0x277CD73F0];
        v118 = *(v93 + v117);
        if (v118 <= 1 && (!v118 || *(v93 + *MEMORY[0x277CD7410]) != 1))
        {
          goto LABEL_70;
        }

        if (v94)
        {
          v119 = *(v94 + v117);
          if (v119 >= 2)
          {
            v120 = *MEMORY[0x277CD7410];
          }

          else
          {
            if (!v119)
            {
              goto LABEL_70;
            }

            v120 = *MEMORY[0x277CD7410];
            if (*(v94 + v120) != 1)
            {
              goto LABEL_70;
            }
          }

          v121 = *(v93 + v120);
          v123 = *(v94 + v120);
          if (v121 != v123)
          {
            goto LABEL_70;
          }

          v122 = *(v93 + v120 + 4);
          if (v118 < 2)
          {
            v122 = 1;
          }

          v124 = v119 <= 1 ? 1 : DWORD1(v123);
          if (v122 != v124)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v120 = *MEMORY[0x277CD7410];
          v121 = *(v93 + v120);
          if (v118 < 2)
          {
            v122 = 1;
          }

          else
          {
            v122 = *(v93 + v120 + 4);
          }
        }

        v125 = *(v92 + v120);
        v126 = *(v92 + v120 + 4);
        if ((v121 != 1 || v122 != 1) && (!v121 || v125 % v121 || v122 != v126))
        {
          goto LABEL_70;
        }

        if (v121 == 1 && v122 == 1)
        {
          v252 = 0;
        }

        else if (v121 == 1 && v122 == v126)
        {
          v252 = 1;
        }

        else
        {
          v136 = v125 / v121;
          if (v136 > 63)
          {
            if (v136 != 64 && v136 != 128)
            {
              goto LABEL_70;
            }
          }

          else if (v136 >= 2 && v136 != 32)
          {
            goto LABEL_70;
          }

          v252 = v136;
        }

        v137 = *MEMORY[0x277CD73C8];
        v138 = *(v91 + v137);
        if (v138 != -1879048176 && v138 != 268435488 && v138 != 268435472 || *(v93 + v137) != v138)
        {
          goto LABEL_70;
        }

        if (v94)
        {
          if (*(v94 + v137) != v138 || *(v99 + v137) != v138)
          {
            goto LABEL_70;
          }

          v139 = *(v92 + v137);
          switch(v139)
          {
            case 2:
              v140 = 1;
              v139 = 2;
              break;
            case 8:
              v140 = 0;
              break;
            case 4:
              v140 = 1;
              v139 = 4;
              break;
            default:
LABEL_70:
              v33 = isDescSupportedByLUTGEMV(v217);
              if ((v33 & isDescSupportedByLUTGEMV(v218)) != 1)
              {
                MPSKernel_LogInfo(a1, 4uLL, "Using EncodeQuantizedMatrixMultiplicationFallback encode path\n");
                EncodeQuantizedMatrixMultiplicationFallback(a1, a2, a3, v197);
                goto LABEL_30;
              }

              MPSKernel_LogInfo(a1, 4uLL, "Using _lutGEMVKernel encode path\n");
              v29 = (v187[17].super.isa)(v187, a2, a3, v197);
LABEL_72:
              v24 = v29;
              goto LABEL_73;
          }
        }

        else
        {
          if (*(v99 + v137) != v138 || *(v92 + v137) != 536870920)
          {
            goto LABEL_70;
          }

          v140 = 0;
          v139 = 8;
        }

        v251 = *(v91 + v137);
        v253 = v139;
        v141 = *MEMORY[0x277CD73D8];
        v142 = *(v92 + v141);
        v143 = v142.u8[0] == 1;
        v144 = *(v91 + v141);
        v145.i32[0] = v144;
        v145.i32[1] = BYTE1(v144);
        v146 = vmvn_s8(vceq_s32(vand_s8(v145, 0xFF000000FFLL), 0x100000000));
        if ((v146.i8[0] & 1) == 0 && (v146.i8[4] & 1) == 0 && v142.u8[0] <= 1u && v142.u8[1] <= 1u)
        {
          if (v118 < 2 || (v147 = vceqq_s8(*(v93 + v141), v142).u16[0], (v147 & HIBYTE(v147) & 1) != 0))
          {
            if (!v94 || *(v94 + v117) < 2uLL || (v148 = vceqq_s8(*(v94 + v141), v142).u16[0], (v148 & HIBYTE(v148) & 1) != 0))
            {
              v149 = *(v91 + v117) >= 3uLL && size == *(v91 + v120 + 8);
              v150 = *(v92 + v117) >= 3uLL && size == *(v92 + v120 + 8);
              v151 = v118 >= 3 && size == *(v93 + v120 + 8);
              v152 = v94 && *(v94 + v117) >= 3uLL && size == *(v94 + v120 + 8);
              v153 = *MEMORY[0x277CD7408];
              *&v245 = *(v91 + v153);
              *(&v245 + 1) = *(v92 + *MEMORY[0x277CD7400]);
              *&v246 = *(v93 + v153);
              v154 = v94 ? *(v94 + v153) : 0;
              *(&v246 + 1) = v154;
              v155 = v149 ? *(v91 + *MEMORY[0x277CD7428] + 16) : 0;
              *&v247 = v155;
              v156 = v150 ? *(v92 + *MEMORY[0x277CD7420] + 16) : 0;
              *(&v247 + 1) = v156;
              v157 = v151 ? *(v93 + *MEMORY[0x277CD7428] + 16) : 0;
              *&v248 = v157;
              v158 = v152 ? *(v94 + *MEMORY[0x277CD7428] + 16) : 0;
              *(&v248 + 1) = v158;
              v254 = v143;
              if (![(MPSNDArrayQuantizationDescriptor *)v217 quantizationScheme]&& [(MPSNDArrayQuantizationDescriptor *)v218 quantizationScheme]== 1)
              {
                v159 = v218;
                if (([(MPSNDArrayQuantizationDescriptor *)v218 hasZeroPoint]& 1) == 0 && ([(MPSNDArrayQuantizationDescriptor *)v159 hasDoubleQuantScale]& 1) == 0 && (([(MPSNDArrayQuantizationDescriptor *)v159 hasDoubleQuantMinVal]| v140) & 1) == 0)
                {
                  MPSKernel_LogInfo(a1, 4uLL, "Using encode_qmm_generic encode path\n");
                  v29 = encode_qmm_generic(a2, a3, v197, *(a1 + *MEMORY[0x277CD7370]), v224);
                  goto LABEL_72;
                }
              }
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_43:
    if (!v7 || [(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]!= 1 || [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]!= 536870916 && [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]!= 4)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  EncodeTextureMatrixMultiplication(a1, a2, a3, v197);
LABEL_30:
  v24 = 0;
LABEL_73:
  objc_autoreleasePoolPop(context);
  return v24;
}

void sub_239A67B78(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
    if (SLOBYTE(STACK[0x4F7]) < 0)
    {
LABEL_5:
      operator delete(STACK[0x4E0]);
      if (SLOBYTE(STACK[0x6D7]) < 0)
      {
LABEL_8:
        operator delete(STACK[0x6C0]);
        if ((*(v1 - 177) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

LABEL_14:
      if ((*(v1 - 177) & 0x80000000) == 0)
      {
LABEL_9:
        if (SLOBYTE(STACK[0x7C7]) < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }

LABEL_15:
      operator delete(*(v1 - 200));
      if (SLOBYTE(STACK[0x7C7]) < 0)
      {
LABEL_10:
        operator delete(STACK[0x7B0]);
        if ((SLOBYTE(STACK[0x447]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }

LABEL_16:
      if ((SLOBYTE(STACK[0x447]) & 0x80000000) == 0)
      {
LABEL_11:
        if (*(v1 - 129) < 0)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }

LABEL_17:
      operator delete(STACK[0x430]);
      if (*(v1 - 129) < 0)
      {
LABEL_12:
        operator delete(*(v1 - 152));
        if ((SLOBYTE(STACK[0x4AF]) & 0x80000000) == 0)
        {
LABEL_20:
          _Unwind_Resume(a1);
        }

LABEL_19:
        operator delete(STACK[0x498]);
        _Unwind_Resume(a1);
      }

LABEL_18:
      if ((SLOBYTE(STACK[0x4AF]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    goto LABEL_5;
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_14;
}

uint64_t EncodeArrayAffieInt4Dequant(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v305 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 144);
  MPSKernel_LogInfo(a1, 2uLL, "-test MPSNDArrayInt4Dequantize\n");
  v7 = [*(a4 + 232) inputTensorAtIndex:0];
  v8 = [*(a4 + 232) outputTensorAtIndex:0];
  v9 = v8;
  v10 = v7[2];
  v12 = *v10;
  v11 = v10[1];
  v164 = a1;
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(v8 + 16);
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

  if (*v7 >= 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v7 != *v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = [*(a4 + 232) graph];
  *&v17 = -1;
  *(&v17 + 1) = -1;
  v303 = v17;
  v304 = v17;
  *v302 = v17;
  if (v6 && [(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 1)
  {
    PlaceHolderIndexInSourceArrayAffineGEMM = -1;
LABEL_14:
    if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  PlaceHolderIndexInSourceArrayAffineGEMM = GetPlaceHolderIndexInSourceArrayAffineGEMM(v16, v6, v302, 0, 0, 1, 0, 0);
  if (v6)
  {
    goto LABEL_14;
  }

LABEL_15:
  PlaceHolderIndexInSourceArrayAffineGEMM = GetPlaceHolderIndexInSourceArrayLUTGEMM(v16, v6, v302, 0, 0);
LABEL_16:
  if (PlaceHolderIndexInSourceArrayAffineGEMM && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v19 = *(a4 + 16);
  v199 = *(a4 + 208);
  v20 = v302[0];
  v168 = v303;
  v169 = v302[1];
  v167 = *(&v303 + 1);
  if (v302[0] < 0 || ([v19 count], v20 >= objc_msgSend(v19, "count")))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v169 < 0 || ([v19 count], v169 >= objc_msgSend(v19, "count")))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v6 hasZeroPoint])
  {
    if (v168 < 0 || ([v19 count], v168 >= objc_msgSend(v19, "count")))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v6 hasMinValue])
  {
    if (v167 < 0 || ([v19 count], v167 >= objc_msgSend(v19, "count")))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v163 = v20;
  v21 = [v19 objectAtIndexedSubscript:v20];
  v165 = a4;
  v22 = [v19 objectAtIndexedSubscript:v169];
  if (!v21 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!v22 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((*(v21 + *MEMORY[0x277CD73C8]) & 0xDFFFFFFF) != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = *(v22 + *MEMORY[0x277CD73C8]);
  if (v23 != 268435472 && v23 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = MEMORY[0x277CD73D8];
  v25 = MEMORY[0x277CD7410];
  if (*v7)
  {
    v26 = 0;
    do
    {
      v27 = *(8 * v26);
      v28 = v21 + *v25;
      v239 = *(v21 + *v24);
      if (v27 != *(v28 + 4 * (*(&v239 | v26 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v29 = *(8 * v26);
      v30 = v199 + *v25;
      v238 = *(v199 + *v24);
      if (v29 != *(v30 + 4 * (*(&v238 | v26 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      ++v26;
    }

    while (v26 < *v7);
  }

  v31 = MEMORY[0x277CD73F0];
  v32 = *MEMORY[0x277CD73F0];
  v33 = *(v22 + v32);
  if (v33 != 1 && v33 != *(v21 + v32) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v21 + *v31))
  {
    v34 = 0;
    do
    {
      v35 = *v24;
      v236 = *(v22 + v35);
      v36 = *(&v236 | v34 & 0xF);
      v237 = *(v21 + v35);
      if (v36 != *(&v237 | v34 & 0xF) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v37 = *v25;
      v38 = *v24;
      v234 = *(v21 + v38);
      v39 = *(v21 + v37 + 4 * (*(&v234 | v34 & 0xF) & 0xF));
      v235 = *(v22 + v38);
      if (v39 % *(v22 + v37 + 4 * (*(&v235 | v34 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      ++v34;
    }

    while (v34 < *(v21 + *v31));
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v6 hasZeroPoint])
  {
    v40 = [v19 objectAtIndexedSubscript:v168];
    if (!v40 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((*(v40 + *MEMORY[0x277CD73C8]) & 0xDFFFFFFF) != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v41 = *v31;
    v42 = *(v40 + v41);
    if (v42 != 1 && v42 != *(v21 + v41) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v21 + *v31))
    {
      v43 = 0;
      do
      {
        v44 = *v24;
        v232 = *(v40 + v44);
        v45 = *(&v232 | v43 & 0xF);
        v233 = *(v21 + v44);
        if (v45 != *(&v233 | v43 & 0xF) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v46 = *v25;
        v47 = *v24;
        v230 = *(v21 + v47);
        v48 = *(v21 + v46 + 4 * (*(&v230 | v43 & 0xF) & 0xF));
        v231 = *(v22 + v47);
        if (v48 % *(v40 + v46 + 4 * (*(&v231 | v43 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        ++v43;
      }

      while (v43 < *(v21 + *v31));
    }
  }

  else
  {
    v40 = 0;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v6 hasMinValue])
  {
    v49 = [v19 objectAtIndexedSubscript:v167];
    if (!v49 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v50 = *v31;
    v51 = *(v49 + v50);
    if (v51 != 1 && v51 != *(v21 + v50) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v21 + *v31))
    {
      v52 = 0;
      do
      {
        v53 = *v24;
        v228 = *(v49 + v53);
        v54 = *(&v228 | v52 & 0xF);
        v229 = *(v21 + v53);
        if (v54 != *(&v229 | v52 & 0xF) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v55 = *v25;
        v56 = *v24;
        v226 = *(v21 + v56);
        v57 = *(v21 + v55 + 4 * (*(&v226 | v52 & 0xF) & 0xF));
        v227 = *(v22 + v56);
        if (v57 % *(v49 + v55 + 4 * (*(&v227 | v52 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        ++v52;
      }

      while (v52 < *(v21 + *v31));
    }

    v58 = *(v49 + *MEMORY[0x277CD73C8]);
    if (v58 != 268435472 && v58 != 268435488)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  else
  {
    v49 = 0;
  }

  v60 = *(v21 + *v31);
  if (!v60)
  {
    goto LABEL_104;
  }

  v61 = 0;
  v62 = *(v21 + *v24);
  while (1)
  {
    v225 = v62;
    if (!*(&v225 | v61 & 0xF))
    {
      break;
    }

    if (v60 == ++v61)
    {
      goto LABEL_104;
    }
  }

  if (v61 >= 4)
  {
LABEL_104:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if ((*(v21 + *MEMORY[0x277CD7418]) & 1) != 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [(MPSNDArrayAffineQuantizationDescriptor *)v6 implicitZeroPoint];
  v63 = *(v21 + *v24);
  v64 = v63.u8[1];
  v65.i64[0] = 0xFF000000FFLL;
  v65.i64[1] = 0xFF000000FFLL;
  v66 = vandq_s8(vmovl_u16(vzip1_s8(*v63.i8, *v63.i8)), v65);
  v65.i64[0] = vrev64q_s32(v66).u64[0];
  v65.i64[1] = v66.i64[1];
  v67 = vbslq_s8(vdupq_lane_s8(*&vcgtq_u8(v63, vdupq_lane_s8(*v63.i8, 1)), 0), v65, v66);
  if (v63.u8[0] > v63.u8[1])
  {
    v64 = v63.u8[0];
  }

  v68 = v67.u32[2];
  if (v67.i32[2] < v64)
  {
    v67.i32[1] = v67.i32[2];
    v67.i32[2] = v64;
    v64 = v68;
    v69 = v67.i32[0];
    if (v67.i32[0] <= v64)
    {
      goto LABEL_112;
    }

LABEL_115:
    v71.i64[1] = v67.i64[1];
    v71.i64[0] = __PAIR64__(v67.u32[0], v64);
    v67 = v71;
    v70 = v71.u32[2];
    if (v69 <= v71.i32[2])
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

  v69 = v67.i32[0];
  if (v67.i32[0] > v64)
  {
    goto LABEL_115;
  }

LABEL_112:
  v69 = v64;
  v70 = v67.u32[2];
  if (v69 > v67.i32[2])
  {
LABEL_116:
    v67.i32[1] = v70;
    v67.i32[2] = v69;
    v69 = v70;
  }

LABEL_117:
  v72 = v67.i32[0];
  if (v67.i32[0] > v69)
  {
    v73.i64[1] = v67.i64[1];
    v73.i64[0] = __PAIR64__(v67.u32[0], v69);
    v67 = v73;
    v74 = v73.i32[2];
    if (v72 <= v73.i32[2])
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v72 = v69;
  v74 = v67.i32[2];
  if (v72 > v67.i32[2])
  {
LABEL_121:
    v67.i32[1] = v74;
    v67.i32[2] = v72;
  }

LABEL_122:
  v200 = v67;
  v162 = v67.i8[0];
  if (v67.i32[0] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v198 = v49;
  v301 = xmmword_239B0A0D0;
  if (*(v21 + *v31))
  {
    v75 = 0;
    v76 = (v21 + *v25);
    v78 = v76[2];
    v77 = v76[3];
    v80 = *v76;
    v79 = v76[1];
    v201 = 0u;
    v202 = xmmword_239B0A0D0;
    v81 = 1;
    LODWORD(v82) = *v25;
    v195 = v22;
    v193 = v40;
    do
    {
      while (1)
      {
        v83 = v81 - 1;
        v223 = v200;
        v84 = *(&v223 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v81 - 1) & 3)));
        v224[0] = v80;
        v224[1] = v79;
        v224[2] = v78;
        v224[3] = v77;
        if (v40)
        {
          v85 = *(v40 + v82 + 4 * (v84 & 0xF));
        }

        else
        {
          v85 = 1;
        }

        v86 = *(v224 + (v84 & 0xF));
        v87 = *(v22 + v82 + 4 * (v84 & 0xF));
        if (v198)
        {
          v88 = *(v198 + v82 + 4 * (v84 & 0xF));
        }

        else
        {
          v88 = 1;
        }

        if (v85 <= v87)
        {
          v89 = *(v22 + v82 + 4 * (v84 & 0xF));
        }

        else
        {
          v89 = v85;
        }

        if (v89 <= v88)
        {
          v90 = v88;
        }

        else
        {
          v90 = v89;
        }

        if (v87 != 1 && v90 != v87)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }
        }

        if (v85 != 1 && v85 != v90 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v88 < v89 && v88 != 1)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }
        }

        v93 = v86 / v90;
        if (v86 % v90 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v220 = v202;
        *(&v220 & 0xFFFFFFFFFFFFFFF3 | (4 * (v83 & 3))) = v93;
        v202 = v220;
        v94 = 31 - __clz(v93);
        if (v86 < v90)
        {
          v94 = 0;
        }

        v221 = v201;
        *(&v221 & 0xFFFFFFFFFFFFFFF3 | (4 * (v83 & 3))) = v94;
        v201 = v221;
        v25 = MEMORY[0x277CD7410];
        v82 = *MEMORY[0x277CD7410];
        v80 = *(v21 + v82);
        v79 = *(v21 + v82 + 16);
        v78 = *(v21 + v82 + 32);
        v77 = *(v21 + v82 + 48);
        v222[3] = v77;
        v222[2] = v78;
        v222[1] = v79;
        v222[0] = v80;
        if (*(v222 + (v84 & 0xF)) != v93)
        {
          break;
        }

        *(&v302[-2] + v75) = 1;
        v22 = v195;
        v40 = v193;
        v31 = MEMORY[0x277CD73F0];
        v75 = v81++;
        if (*(v21 + *MEMORY[0x277CD73F0]) <= v75)
        {
          goto LABEL_172;
        }
      }

      v22 = v195;
      v40 = v193;
      v31 = MEMORY[0x277CD73F0];
      if (v93 == 1)
      {
        v95 = 2;
      }

      else if ((v93 & (v93 - 1)) != 0)
      {
        if (v93)
        {
          v95 = 7;
        }

        else
        {
          v95 = 5;
        }
      }

      else
      {
        v95 = 6;
      }

      *(&v302[-2] + v75) = v95;
      v75 = v81++;
    }

    while (*(v21 + *v31) > v75);
  }

  else
  {
    v201 = 0u;
    v202 = xmmword_239B0A0D0;
  }

LABEL_172:
  makeStrideElements();
  v194 = v299;
  v196 = v300;
  v191 = v297;
  v192 = v298;
  v189 = v295;
  v190 = v296;
  v187 = v293;
  v188 = v294;
  makeStrideElements();
  v185 = v291;
  v186 = v292;
  v183 = v289;
  v184 = v290;
  v181 = v287;
  v182 = v288;
  v180 = v286;
  v178 = 0u;
  v179 = v285;
  if (v40)
  {
    makeStrideElements();
    v170 = v284;
    v171 = v283;
    v172 = v282;
    v173 = v281;
    v174 = v280;
    v175 = v279;
    v176 = v278;
    v177 = v277;
    if (v198)
    {
      goto LABEL_174;
    }
  }

  else
  {
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    if (v198)
    {
LABEL_174:
      makeStrideElements();
      v98 = v276;
      v99 = v275;
      v100 = v274;
      v101 = v273;
      v102 = v272;
      v103 = v271;
      v104 = v270;
      v178 = v269;
      v105 = *(v21 + *v31);
      v106 = *v25;
      if (v105)
      {
        goto LABEL_175;
      }

LABEL_195:
      v132 = *(v21 + v106);
      v119 = 0uLL;
      v118 = 0uLL;
      v117 = 0uLL;
      v111 = 0uLL;
      goto LABEL_196;
    }
  }

  v104 = 0uLL;
  v103 = 0uLL;
  v102 = 0uLL;
  v101 = 0uLL;
  v100 = 0uLL;
  v99 = 0uLL;
  v98 = 0uLL;
  v105 = *(v21 + *v31);
  v106 = *v25;
  if (!v105)
  {
    goto LABEL_195;
  }

LABEL_175:
  v108 = *(v21 + v106 + 32);
  v107 = *(v21 + v106 + 48);
  v109 = *(v21 + v106);
  v110 = *(v21 + v106 + 16);
  v111 = 0uLL;
  v112 = 1;
  v114 = *(v22 + v106 + 32);
  v113 = *(v22 + v106 + 48);
  v116 = *(v22 + v106);
  v115 = *(v22 + v106 + 16);
  v117 = 0uLL;
  v118 = 0uLL;
  v119 = 0uLL;
  do
  {
    v121 = v112 - 1;
    v213 = v200;
    v122 = *(&v213 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v112 - 1) & 3)));
    v219[0] = v109;
    v219[1] = v110;
    v219[2] = v108;
    v219[3] = v107;
    v123 = *(v219 + (v122 & 0xF));
    v218[0] = v187;
    v218[1] = v188;
    v218[2] = v189;
    v218[3] = v190;
    v218[4] = v191;
    v218[5] = v192;
    v218[6] = v194;
    v218[7] = v196;
    if (v123 == 1)
    {
      v124 = 0;
    }

    else
    {
      v124 = *(v218 + 2 * (v122 & 0xF));
    }

    v214 = v119;
    *(&v214 & 0xFFFFFFFFFFFFFFF3 | (4 * (v121 & 3))) = v124;
    v119 = v214;
    v217[0] = v116;
    v217[1] = v115;
    v217[2] = v114;
    v217[3] = v113;
    v125 = *(v217 + (v122 & 0xF));
    v216[0] = v179;
    v216[1] = v180;
    v216[2] = v181;
    v216[3] = v182;
    v216[4] = v183;
    v216[5] = v184;
    v216[6] = v185;
    v216[7] = v186;
    if (v125 == 1)
    {
      v126 = 0;
    }

    else
    {
      v126 = *(v216 + 2 * (v122 & 0xF));
    }

    v215 = v118;
    *(&v215 & 0xFFFFFFFFFFFFFFF3 | (4 * (v121 & 3))) = v126;
    v118 = v215;
    if (v40)
    {
      v127 = *(v40 + v106 + 4 * (v122 & 0xF));
      v212[0] = v177;
      v212[1] = v176;
      v212[2] = v175;
      v212[3] = v174;
      v212[4] = v173;
      v212[5] = v172;
      v212[6] = v171;
      v212[7] = v170;
      if (v127 == 1)
      {
        v128 = 0;
      }

      else
      {
        v128 = *(v212 + (v122 & 0xF));
      }

      v211 = v117;
      *(&v211 & 0xFFFFFFFFFFFFFFF3 | (4 * (v121 & 3))) = v128;
      v117 = v211;
    }

    if (v198)
    {
      v129 = v122 & 0xF;
      v130 = *(v198 + v106 + 4 * v129);
      v210[0] = v178;
      v210[1] = v104;
      v210[2] = v103;
      v210[3] = v102;
      v210[4] = v101;
      v210[5] = v100;
      v210[6] = v99;
      v210[7] = v98;
      v131 = *(v210 + v129);
      if (v130 == 1)
      {
        LODWORD(v131) = 0;
      }

      v209 = v111;
      *(&v209 & 0xFFFFFFFFFFFFFFF3 | (4 * (v121 & 3))) = v131;
      v111 = v209;
    }
  }

  while (v105 > v112++);
  LOBYTE(v132) = v109;
LABEL_196:
  v133 = v132 & 1;
  v265 = 0u;
  v266 = 0u;
  if (v132)
  {
    v134 = 1;
  }

  else
  {
    v134 = 2;
  }

  v264 = 0uLL;
  v263 = 0uLL;
  v262 = 0uLL;
  v250 = v119;
  v251 = v118;
  v252 = v117;
  v253 = v111;
  v258 = 0;
  v254 = v163;
  v255 = v169;
  v256 = v168;
  v257 = v167;
  v259 = v202;
  v261 = 0uLL;
  v260 = v201;
  v268 = 0uLL;
  LODWORD(v268) = 0;
  v267 = 0uLL;
  v266 = 0uLL;
  v265 = 0uLL;
  MPSGetUIntDivisorMagicNumber();
  v261 = v135;
  MPSGetUIntDivisorMagicNumber();
  v262 = v136;
  MPSGetUIntDivisorMagicNumber();
  v263 = v137;
  MPSGetUIntDivisorMagicNumber();
  v264 = v138;
  v197 = v134;
  v139 = *(v199 + *MEMORY[0x277CD73C8]);
  if (v139 > 285212703)
  {
    if (v139 <= 536870915)
    {
      if (v139 > 301989895)
      {
        if (v139 == 301989896)
        {
          v140 = 16;
          goto LABEL_244;
        }

        if (v139 == 335544328)
        {
          v140 = 17;
          goto LABEL_244;
        }
      }

      else
      {
        if (v139 == 285212704)
        {
          v140 = 13;
          goto LABEL_244;
        }

        if (v139 == 285212736)
        {
          v140 = 14;
          goto LABEL_244;
        }
      }
    }

    else if (v139 <= 536870927)
    {
      v140 = 0;
      if (v139 == 536870916)
      {
        goto LABEL_244;
      }

      if (v139 == 536870920)
      {
        v140 = 1;
        goto LABEL_244;
      }
    }

    else
    {
      switch(v139)
      {
        case 536870928:
          v140 = 2;
          goto LABEL_244;
        case 536870944:
          v140 = 3;
          goto LABEL_244;
        case 536870976:
          v140 = 4;
          goto LABEL_244;
      }
    }

LABEL_243:
    v140 = 18;
    goto LABEL_244;
  }

  if (v139 <= 31)
  {
    if (v139 > 7)
    {
      if (v139 == 8)
      {
        v140 = 6;
        goto LABEL_244;
      }

      if (v139 == 16)
      {
        v140 = 7;
        goto LABEL_244;
      }
    }

    else
    {
      if (v139 == -1879048176)
      {
        v140 = 12;
        goto LABEL_244;
      }

      if (v139 == 4)
      {
        v140 = 5;
        goto LABEL_244;
      }
    }

    goto LABEL_243;
  }

  if (v139 <= 268435463)
  {
    if (v139 == 32)
    {
      v140 = 8;
      goto LABEL_244;
    }

    if (v139 == 64)
    {
      v140 = 9;
      goto LABEL_244;
    }

    goto LABEL_243;
  }

  if (v139 == 268435464)
  {
    v140 = 15;
    goto LABEL_244;
  }

  if (v139 == 268435472)
  {
    v140 = 10;
    goto LABEL_244;
  }

  if (v139 != 268435488)
  {
    goto LABEL_243;
  }

  v140 = 11;
LABEL_244:
  *&v142 = -1;
  *(&v142 + 1) = -1;
  v249 = v142;
  v248 = v142;
  v247 = v142;
  v245 = -1;
  v244 = v142;
  v246 = v140;
  *&v249 = [*(v165 + 16) count] | 0x10000;
  v160 = *(v164 + *MEMORY[0x277CD7360]);
  v161 = *(v164 + *MEMORY[0x277CD7368]);
  v159 = *(v165 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v144 = MEMORY[0x277CD7410];
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v159, v160, v161, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v145 = (v21 + *v144);
  v146 = *v145;
  v147 = v145[1];
  v148 = v145[3];
  v207 = v145[2];
  v208 = v148;
  v206[0] = v146;
  v206[1] = v147;
  v149 = *(v206 + (v162 & 0xF));
  v205[2] = v207;
  v205[3] = v148;
  v205[0] = v146;
  v205[1] = v147;
  v150 = *(v205 + (v200.i8[4] & 0xF));
  v204[2] = v207;
  v204[3] = v148;
  v204[0] = v146;
  v204[1] = v147;
  LODWORD(v144) = *(v204 + (v200.i8[8] & 0xF));
  v203[2] = v207;
  v203[3] = v148;
  v203[0] = v146;
  v203[1] = v147;
  v151 = *(v203 + (v200.i8[12] & 0xF));
  v152 = (v197 + v149 - 1) >> (v133 ^ 1u);
  MPSGetUIntDivisorMagicNumber();
  v265 = v153;
  MPSGetUIntDivisorMagicNumber();
  v266 = v154;
  MPSGetUIntDivisorMagicNumber();
  v155 = v144 * v150 * v151;
  v156 = v155 * v152;
  v267 = v157;
  LODWORD(v268) = v155 * v152;
  MPSSetNDArraysOnComputeEncoder(a2, v165, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  [a2 setBuffer:0 offset:0 atIndex:27];
  v242 = (v156 + 127) >> 7;
  v243 = vdupq_n_s64(1uLL);
  v240 = xmmword_239B0A150;
  v241 = 1;
  [a2 dispatchThreadgroups:&v242 threadsPerThreadgroup:&v240];
  MPSLibrary::ReleaseComputeState();
  return 0;
}