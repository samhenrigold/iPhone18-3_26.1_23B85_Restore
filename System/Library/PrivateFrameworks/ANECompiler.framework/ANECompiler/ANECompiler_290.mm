void sub_1A742BB34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewI6e4m3_t27ZinIrOutputStreamCompressedIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v41[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v41);
  v43 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v38 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v38 + 208))(v38);
    (*(*v38 + 200))(v38);
  }

  v42 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v42);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_47:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_45:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_47;
    }
  }

  v39 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v2[21];
  }

  v14 = v13 + v12;
  do
  {
    v14 -= v12;
  }

  while (v14 >= v12);
  v15 = 0;
  v16 = 1;
LABEL_18:
  v17 = 0;
  v40 = v16;
  v18 = 1;
  while (1)
  {
    v19 = v18;
    v20 = v17 + v2[9] * v10 + v2[18];
    if ((v20 & 0x8000000000000000) == 0)
    {
      v21 = v15 + v2[10] * v8 + v2[19];
      if ((v21 & 0x8000000000000000) == 0)
      {
        v22 = v2[17] - *(a1 + 8);
        v23 = v2[20] + v22 * v2[11];
        if ((v23 & 0x8000000000000000) == 0 && v20 < *(a1 + 56) && v21 < *(a1 + 48) && v23 < *(a1 + 64) && v2[22] && (v22 & 0x8000000000000000) == 0)
        {
          v41[0] = v14;
          v41[1] = v39;
          v41[2] = v21;
          v41[3] = v20;
          v41[4] = v23;
          v24 = (**(a1 + 72))(a1 + 72, v41);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v24) & 1) != 0)
          {
            v25 = 0;
            IsElemZeroPointAt = 1;
          }

          else
          {
            if (*(a1 + 24) == 1)
            {
              Elem = ZinIrWeightBase::GetElemAt<e4m3_t>(a1 + 72);
              v28 = v24;
              v25 = Elem;
            }

            else
            {
              v28 = v24;
              v25 = 0;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v28, v14, *(v2[28] + 1308), 0);
          }

          goto LABEL_32;
        }
      }
    }

    v25 = 0;
    IsElemZeroPointAt = 1;
    if ((*(a1 + 408) & 1) == 0 && v11 < v12)
    {
      break;
    }

LABEL_32:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressed<signed char>::Push(*(a1 + 424), v25, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v18 = 0;
    v17 = -1;
    if ((v19 & 1) == 0)
    {
      v16 = 0;
      v15 = -1;
      if (v40)
      {
        goto LABEL_18;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v39;
        goto LABEL_45;
      }

      goto LABEL_12;
    }
  }

  v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v30)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  return 3;
}

void sub_1A742BF10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewI6e4m3_t27ZinIrOutputStreamCompressedIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v66[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v66);
  v68 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
  }

  else
  {
    v52 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    (*(*v52 + 208))(v52);
    (*(*v52 + 200))(v52);
  }

  v67 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v67);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[8];
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a1 + 40);
  v54 = PaletteVectorSize;
LABEL_8:
  if (v8 < 1)
  {
    goto LABEL_73;
  }

  v9 = 0;
  v10 = v2[7];
  v53 = v7;
LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_71;
  }

  v11 = 0;
  v12 = v2[6];
  v60 = v9;
LABEL_12:
  if (v12 < 1)
  {
    goto LABEL_69;
  }

  v13 = 0;
  v14 = v2[16];
  v58 = v11;
LABEL_14:
  if (v14 < 1)
  {
    goto LABEL_67;
  }

  v65 = 0;
  v15 = v2[15];
  v59 = v13;
LABEL_16:
  if (v15 < 1)
  {
    goto LABEL_65;
  }

  v16 = 0;
LABEL_18:
  v17 = *(a1 + 8);
  if (v17 < 1)
  {
    goto LABEL_63;
  }

  v18 = *(a1 + 16);
  while (1)
  {
    v64 = v17 - 1;
    if (v18 >= 1)
    {
      break;
    }

LABEL_60:
    v42 = v17 <= 1;
    v17 = v64;
    if (v42)
    {
      v15 = v2[15];
LABEL_63:
      if (++v16 < v15)
      {
        goto LABEL_18;
      }

      v14 = v2[16];
      v9 = v60;
LABEL_65:
      if (++v65 < v14)
      {
        goto LABEL_16;
      }

      v12 = v2[6];
LABEL_67:
      if (++v13 < v12)
      {
        goto LABEL_14;
      }

      v10 = v2[7];
LABEL_69:
      if (++v11 >= v10)
      {
        v8 = *(a1 + 40);
LABEL_71:
        if (++v9 < v8)
        {
          goto LABEL_10;
        }

        v6 = v2[8];
LABEL_73:
        if (++v7 >= v6)
        {
          return 0;
        }

        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v19 = 0;
  v20 = 0;
  v55 = v17;
  while (1)
  {
    v21 = v2[21] + v19 * PaletteVectorSize;
    v22 = *(a1 + 32);
    v63 = v21;
    if (v22 == 1)
    {
      v21 = 0;
    }

    v23 = v21 + v22;
    do
    {
      v23 -= v22;
    }

    while (v23 >= v22);
    v24 = v2[5];
    if (v24 >= 1)
    {
      break;
    }

LABEL_59:
    v19 = ++v20;
    if (v18 <= v20)
    {
      goto LABEL_60;
    }
  }

  v25 = 0;
  v26 = v2[4];
  v62 = v19;
  v56 = v20;
LABEL_28:
  if (v26 < 1)
  {
    goto LABEL_57;
  }

  v27 = 0;
  v57 = v25;
  v28 = v7 - v25;
  v29 = v2[3];
  while (v29 < 1)
  {
LABEL_55:
    if (++v27 >= v26)
    {
      v24 = v2[5];
      v7 = v53;
      PaletteVectorSize = v54;
      v17 = v55;
      v20 = v56;
      v25 = v57;
LABEL_57:
      if (++v25 >= v24)
      {
        v18 = *(a1 + 16);
        goto LABEL_59;
      }

      goto LABEL_28;
    }
  }

  v30 = 0;
  v61 = v27;
  v31 = v11 - v27;
  v32 = v13;
  while (1)
  {
    v33 = v32 + v2[18] + v16 * v2[9];
    if ((v33 & 0x8000000000000000) == 0)
    {
      v34 = v31 + v2[10] * v65 + v2[19];
      if ((v34 & 0x8000000000000000) == 0)
      {
        v35 = v64 - *(a1 + 8) + v2[17];
        v36 = v28 + v2[20] + v35 * v2[11];
        if ((v36 & 0x8000000000000000) == 0 && v33 < *(a1 + 56) && v34 < *(a1 + 48) && v36 < *(a1 + 64) && v2[22] > v62 && (v35 & 0x8000000000000000) == 0)
        {
          v66[0] = v23;
          v66[1] = v60;
          v66[2] = v34;
          v66[3] = v33;
          v66[4] = v36;
          v37 = (**(a1 + 72))(a1 + 72, v66);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v37) & 1) != 0)
          {
            v38 = 0;
            IsElemZeroPointAt = 1;
          }

          else
          {
            if (*(a1 + 24) == 1)
            {
              Elem = ZinIrWeightBase::GetElemAt<e4m3_t>(a1 + 72);
              v41 = v37;
              v38 = Elem;
            }

            else
            {
              v41 = v37;
              v38 = 0;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v41, v23, *(v2[28] + 1308), 0);
          }

          goto LABEL_45;
        }
      }
    }

    v38 = 0;
    IsElemZeroPointAt = 1;
    if ((*(a1 + 408) & 1) == 0 && v63 < v22)
    {
      break;
    }

LABEL_45:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressed<signed char>::Push(*(a1 + 424), v38, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    ++v30;
    v29 = v2[3];
    --v32;
    if (v30 >= v29)
    {
      v26 = v2[4];
      v11 = v58;
      v13 = v59;
      v27 = v61;
      goto LABEL_55;
    }
  }

  v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v44)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v44, v45, v46, v47, v48, v49, v50, v51);
  }

  return 3;
}

void sub_1A742C434(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<e4m3_t,ZinIrOutputStreamBasic<e4m3_t>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A391D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<e4m3_t,ZinIrOutputStreamBasic<e4m3_t>>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v28) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v28);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v13 = *(a1 + 136);
  v14 = v13 + v12;
  if (v6)
  {
    v41 = v6;
    v42 = v6;
    v40 = 0;
    v32[0] = a1;
    v32[1] = v13 + v12;
    v32[2] = v8;
    v33 = 1;
    v15 = *(v5 + 56);
    v36 = *(v5 + 88);
    v16 = *(v5 + 72);
    v34 = v15;
    v35 = v16;
    ZinIrWeight::ZinIrWeight(v37, v10);
    v37[336] = v11;
    v38 = &v40;
    v39 = &v41;
    if (*(a1 + 64) == 1 && *(a1 + 56) == 1)
    {
      if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
      {
        v17 = _ZZNK7details15ZinIrWeightViewI6e4m3_t22ZinIrOutputStreamBasicIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v32);
LABEL_27:
        v26 = v17;
        *a3 = v42 - v41;
        ZinIrWeight::~ZinIrWeight(v37);
        return v26;
      }

      if (*(a1 + 48) == 1 && v14 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
      {
        v17 = _ZZNK7details15ZinIrWeightViewI6e4m3_t22ZinIrOutputStreamBasicIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v32);
        goto LABEL_27;
      }
    }

    v17 = _ZZNK7details15ZinIrWeightViewI6e4m3_t22ZinIrOutputStreamBasicIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v32);
    goto LABEL_27;
  }

  v30 = *(v5 + 64);
  v31 = a3;
  v18 = *(a1 + 64);
  v29 = *(a1 + 56);
  v20 = *(a1 + 120);
  v19 = *(a1 + 128);
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  v24 = *(a1 + 24);
  v23 = *(a1 + 32);
  v32[0] = 0;
  ZinKernelFormatGetBitDepth(*(*(a1 + 8) + 8), v32);
  v25 = v32[0];
  if (v32[0] == 32)
  {
    v25 = 16;
    v32[0] = 16;
  }

  v26 = 0;
  *v31 = v14 * v8 * v18 * v30 * v29 * v21 * v19 * v20 * v22 * v23 * v24 * ZinDivRoundUp(v25, 8uLL);
  return v26;
}

uint64_t _ZZNK7details15ZinIrWeightViewI6e4m3_t22ZinIrOutputStreamBasicIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v59 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v59);
  v58 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v7 = *(a1 + 208);
    v6 = *(a1 + 216);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v9 = (*(*v7 + 208))(v7);
    v8 = (*(*v7 + 200))(v7);
    v11 = 0;
    v10 = *(a1 + 16);
  }

  v57 = 0;
  v53 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v57);
  v13 = v3[16];
  v14 = v13 == 1 && v3[15] == 1;
  if (v11 & 1 | !IsContiguousCrsdStride | (v9 | v8) & 1 || (v10 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20]))
  {
    v16 = 1;
    goto LABEL_20;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (*(a1 + 8) != 1 || !v14)
  {
    goto LABEL_20;
  }

  v48 = *(a1 + 32);
  if (v48 != 1)
  {
    v51 = v3[21];
    if (v51 + v10 > v48)
    {
      goto LABEL_20;
    }

    v49 = *(a1 + 40) * v13 * v3[15];
    if (*(a1 + 24))
    {
      v50 = v51 % v48;
      goto LABEL_84;
    }

LABEL_92:
    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v49 * v10;
    goto LABEL_20;
  }

  v49 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_92;
  }

  v50 = 0;
LABEL_84:
  v56 = 0u;
  v55 = 0u;
  v54 = v50;
  (**v53)(v53, &v54);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_20;
  }

  if (v59 > 8)
  {
    if (v1 != 101 || v59 != 16)
    {
      goto LABEL_20;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_20;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v52 = *(v7 + 120);
  }

  else
  {
    v52 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v52)
  {
    v16 = 0;
    if (BNNSBitTranspose())
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
      *(*(a1 + 424) + 8) += v49 * v10;
    }
  }

LABEL_20:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v16)
  {
    v17 = *(a1 + 40);
    if (v17 < 1)
    {
      return 0;
    }

    v18 = 0;
    v19 = v3[16];
    do
    {
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = v3[15];
        do
        {
          if (v21 >= 1)
          {
            for (i = 0; i < v21; ++i)
            {
              v23 = *(a1 + 8);
              if (v23 >= 1)
              {
                v24 = *(a1 + 16);
                do
                {
                  if (v24 >= 1)
                  {
                    v25 = 0;
                    for (j = 0; j < v24; v25 = ++j)
                    {
                      v27 = *(a1 + 32);
                      if (v27 == 1)
                      {
                        v28 = 0;
                      }

                      else
                      {
                        v28 = v3[21] + v25 * PaletteVectorSize;
                      }

                      v29 = v28 + v27;
                      do
                      {
                        v29 -= v27;
                      }

                      while (v29 >= v27);
                      v30 = v3[18] + v3[9] * i;
                      if (v30 < 0 || (v31 = v3[19] + v3[10] * v20, v31 < 0) || (v32 = v23 - 1 - *(a1 + 8) + v3[17], v33 = v3[20] + v32 * v3[11], v33 < 0) || v30 >= *(a1 + 56) || v31 >= *(a1 + 48) || v33 >= *(a1 + 64) || v3[22] <= v25 || v32 < 0)
                      {
                        Elem = 0;
                        if ((*(a1 + 408) & 1) == 0 && (v3[21] + v25 * PaletteVectorSize) < v27)
                        {
                          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          if (v39)
                          {
                            _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v39, v40, v41, v42, v43, v44, v45, v46);
                          }

                          return 3;
                        }
                      }

                      else
                      {
                        v54 = v29;
                        *&v55 = v18;
                        *(&v55 + 1) = v31;
                        *&v56 = v30;
                        *(&v56 + 1) = v33;
                        v34 = (**v53)(v53);
                        if (v3[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v34) & 1) != 0 || *(a1 + 24) != 1)
                        {
                          Elem = 0;
                        }

                        else
                        {
                          Elem = ZinIrWeightBase::GetElemAt<e4m3_t>(v53);
                        }
                      }

                      if (*(a1 + 24) == 1)
                      {
                        v36 = *(a1 + 424);
                        v37 = *(v36 + 8);
                        *(v36 + 8) = v37 + 1;
                        *v37 = Elem;
                      }

                      v24 = *(a1 + 16);
                    }
                  }
                }

                while (v23-- > 1);
                v21 = v3[15];
              }
            }

            v19 = v3[16];
          }

          ++v20;
        }

        while (v20 < v19);
        v17 = *(a1 + 40);
      }

      v1 = 0;
      ++v18;
    }

    while (v18 < v17);
  }

  return v1;
}

void sub_1A742CFD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewI6e4m3_t22ZinIrOutputStreamBasicIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v41[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v41);
  v43 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v38 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v38 + 208))(v38);
    (*(*v38 + 200))(v38);
  }

  v42 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v42);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_44:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_42:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_44;
    }
  }

  v10 = 0;
  v39 = v6;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v2[21];
  }

  v14 = v13 + v12;
  do
  {
    v14 -= v12;
  }

  while (v14 >= v12);
  v15 = 0;
  v16 = 1;
LABEL_18:
  v17 = 0;
  v18 = v16;
  v19 = 1;
  while (1)
  {
    v20 = v19;
    v21 = v17 + v2[9] * v10 + v2[18];
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v15 + v2[10] * v8 + v2[19];
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = v2[17] - *(a1 + 8);
        v24 = v2[20] + v23 * v2[11];
        if ((v24 & 0x8000000000000000) == 0 && v21 < *(a1 + 56) && v22 < *(a1 + 48) && v24 < *(a1 + 64) && v2[22] && (v23 & 0x8000000000000000) == 0)
        {
          v40 = v18;
          v41[0] = v14;
          v41[1] = v6;
          v41[2] = v22;
          v41[3] = v21;
          v41[4] = v24;
          v25 = (**(a1 + 72))(a1 + 72, v41);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v25) & 1) != 0 || *(a1 + 24) != 1)
          {
            Elem = 0;
          }

          else
          {
            Elem = ZinIrWeightBase::GetElemAt<e4m3_t>(a1 + 72);
          }

          v6 = v39;
          v18 = v40;
          goto LABEL_33;
        }
      }
    }

    Elem = 0;
    if ((*(a1 + 408) & 1) == 0 && v11 < v12)
    {
      break;
    }

LABEL_33:
    if (*(a1 + 24) == 1)
    {
      v27 = *(a1 + 424);
      v28 = *(v27 + 8);
      *(v27 + 8) = v28 + 1;
      *v28 = Elem;
    }

    v19 = 0;
    v17 = -1;
    if ((v20 & 1) == 0)
    {
      v16 = 0;
      v15 = -1;
      if (v18)
      {
        goto LABEL_18;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        goto LABEL_42;
      }

      goto LABEL_12;
    }
  }

  v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v30)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  return 3;
}

void sub_1A742D398(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewI6e4m3_t22ZinIrOutputStreamBasicIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v88 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v88);
  v87 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v7 = *(a1 + 208);
    v6 = *(a1 + 216);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v9 = (*(*v7 + 208))(v7);
    v8 = (*(*v7 + 200))(v7);
    v11 = 0;
    v10 = *(a1 + 16);
  }

  v86 = 0;
  v82 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v86);
  v13 = v3[16];
  v14 = v13 == 1 && v3[15] == 1;
  if (v11 & 1 | !IsContiguousCrsdStride | (v9 | v8) & 1 || (v10 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[5] != 1 || v3[4] != 1 || v3[3] != 1 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20] || *(a1 + 8) != 1 || v3[8] != 1))
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (v3[7] != 1)
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (v3[6] != 1 || !v14)
  {
    goto LABEL_33;
  }

  v17 = *(a1 + 32);
  if (v17 != 1)
  {
    v68 = v3[21];
    if (v68 + v10 > v17)
    {
      goto LABEL_33;
    }

    v18 = *(a1 + 40) * v13 * v3[15];
    if (*(a1 + 24))
    {
      v19 = v68 % v17;
      goto LABEL_116;
    }

LABEL_124:
    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v18 * v10;
    goto LABEL_33;
  }

  v18 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_124;
  }

  v19 = 0;
LABEL_116:
  v84 = 0u;
  v85 = 0u;
  v83 = v19;
  (**v82)(v82, &v83);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_33;
  }

  if (v88 > 8)
  {
    if (v1 != 101 || v88 != 16)
    {
      goto LABEL_33;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_33;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v69 = *(v7 + 120);
  }

  else
  {
    v69 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v69)
  {
    v16 = 0;
    if (BNNSBitTranspose())
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
      *(*(a1 + 424) + 8) += v18 * v10;
    }
  }

LABEL_33:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v16)
  {
    v20 = v3[8];
    if (v20 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = *(a1 + 40);
    v74 = PaletteVectorSize;
    do
    {
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v3[7];
        v70 = v21;
        do
        {
          if (v24 >= 1)
          {
            v25 = 0;
            v26 = v3[6];
            v76 = v23;
            do
            {
              if (v26 >= 1)
              {
                v27 = 0;
                v28 = v3[16];
                v75 = v25;
                do
                {
                  if (v28 >= 1)
                  {
                    v29 = 0;
                    v30 = v3[15];
                    v77 = v27;
                    do
                    {
                      if (v30 >= 1)
                      {
                        v31 = 0;
                        v78 = v29;
                        do
                        {
                          v32 = *(a1 + 8);
                          if (v32 >= 1)
                          {
                            v33 = *(a1 + 16);
                            do
                            {
                              v34 = v32 - 1;
                              if (v33 >= 1)
                              {
                                v35 = 0;
                                v36 = 0;
                                v71 = v32;
                                v79 = v32 - 1;
                                do
                                {
                                  v37 = v3[21];
                                  v38 = v37 + v35 * PaletteVectorSize;
                                  v39 = *(a1 + 32);
                                  if (v39 == 1)
                                  {
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    v40 = v37 + v35 * PaletteVectorSize;
                                  }

                                  v41 = v40 + v39;
                                  do
                                  {
                                    v41 -= v39;
                                  }

                                  while (v41 >= v39);
                                  v42 = v3[5];
                                  if (v42 >= 1)
                                  {
                                    v43 = 0;
                                    v44 = v3[4];
                                    v80 = v38;
                                    v81 = v35;
                                    v72 = v36;
                                    do
                                    {
                                      if (v44 >= 1)
                                      {
                                        v45 = 0;
                                        v73 = v43;
                                        v46 = v21 - v43;
                                        v47 = v3[3];
                                        do
                                        {
                                          if (v47 >= 1)
                                          {
                                            v48 = 0;
                                            v49 = v25 - v45;
                                            v50 = v27;
                                            while (1)
                                            {
                                              v51 = v50 + v3[18] + v31 * v3[9];
                                              if (v51 < 0 || (v52 = v49 + v3[10] * v29 + v3[19], v52 < 0) || (v53 = v34 - *(a1 + 8) + v3[17], v54 = v46 + v3[20] + v53 * v3[11], v54 < 0) || v51 >= *(a1 + 56) || v52 >= *(a1 + 48) || v54 >= *(a1 + 64) || v3[22] <= v35 || v53 < 0)
                                              {
                                                Elem = 0;
                                                if ((*(a1 + 408) & 1) == 0 && v38 < v39)
                                                {
                                                  v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                                  if (v59)
                                                  {
                                                    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v59, v60, v61, v62, v63, v64, v65, v66);
                                                  }

                                                  return 3;
                                                }
                                              }

                                              else
                                              {
                                                v83 = v41;
                                                *&v84 = v23;
                                                *(&v84 + 1) = v52;
                                                *&v85 = v51;
                                                *(&v85 + 1) = v54;
                                                (**v82)(v82);
                                                if (v3[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208)) & 1) != 0 || *(a1 + 24) != 1)
                                                {
                                                  Elem = 0;
                                                }

                                                else
                                                {
                                                  Elem = ZinIrWeightBase::GetElemAt<e4m3_t>(v82);
                                                }

                                                v25 = v75;
                                                v23 = v76;
                                                v27 = v77;
                                                v29 = v78;
                                                v34 = v79;
                                                v38 = v80;
                                                v35 = v81;
                                              }

                                              if (*(a1 + 24) == 1)
                                              {
                                                v56 = *(a1 + 424);
                                                v57 = *(v56 + 8);
                                                *(v56 + 8) = v57 + 1;
                                                *v57 = Elem;
                                              }

                                              ++v48;
                                              v47 = v3[3];
                                              --v50;
                                              if (v48 >= v47)
                                              {
                                                v44 = v3[4];
                                                PaletteVectorSize = v74;
                                                break;
                                              }
                                            }
                                          }

                                          ++v45;
                                        }

                                        while (v45 < v44);
                                        v42 = v3[5];
                                        v21 = v70;
                                        v32 = v71;
                                        v36 = v72;
                                        v43 = v73;
                                      }

                                      ++v43;
                                    }

                                    while (v43 < v42);
                                    v33 = *(a1 + 16);
                                  }

                                  v35 = ++v36;
                                }

                                while (v33 > v36);
                              }

                              v58 = v32 <= 1;
                              v32 = v34;
                            }

                            while (!v58);
                            v30 = v3[15];
                          }

                          ++v31;
                        }

                        while (v31 < v30);
                        v28 = v3[16];
                      }

                      ++v29;
                    }

                    while (v29 < v28);
                    v26 = v3[6];
                  }

                  ++v27;
                }

                while (v27 < v26);
                v24 = v3[7];
              }

              ++v25;
            }

            while (v25 < v24);
            v22 = *(a1 + 40);
          }

          ++v23;
        }

        while (v23 < v22);
        v20 = v3[8];
      }

      v1 = 0;
      ++v21;
    }

    while (v21 < v20);
  }

  return v1;
}

void sub_1A742DC1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<half,ZinIrOutputStreamCompressed<half>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39218;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<half,ZinIrOutputStreamCompressed<half>>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  LOBYTE(v30) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v30);
  v7 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v7 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v9 = *(a1 + 8);
  v10 = !*(v9 + 320) || (*(v9 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v11 = ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v12 = *(a1 + 136);
  v42 = 0;
  v43 = 0;
  v13 = v5;
  v44 = 0;
  if (v5)
  {
    v14 = *(a1 + 224);
    v15 = *(v14 + 792);
    v16 = *(v14 + 1308);
    v17 = *(v14 + 768);
    v18 = 0xFFFFLL;
    if (v15 == 3)
    {
      v18 = 0xFFFFFFLL;
    }

    v50 = v15;
    v51 = v18;
    v52 = v16;
    v49 = v17;
    v46 = v5;
    v47 = v5 + v15;
    v45 = 0;
    v48 = 1;
    v19 = 1;
  }

  else
  {
    if (*(v9 + 320) && (*(v9 + 8) - 28) >= 0xFFFFFFEB)
    {
      operator new[]();
    }

    v13 = 0;
    v19 = 0;
  }

  v41 = 0;
  v20 = v12 + v11;
  v33[0] = a1;
  v33[1] = v20;
  v33[2] = v7;
  v34 = v19;
  v21 = *(v4 + 56);
  v37 = *(v4 + 88);
  v22 = *(v4 + 72);
  v35 = v21;
  v36 = v22;
  ZinIrWeight::ZinIrWeight(v38, v9);
  v38[336] = v10;
  v39 = &v41;
  v40 = &v42;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_28;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v23 = _ZZNK7details15ZinIrWeightViewIDh27ZinIrOutputStreamCompressedIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v33);
    goto LABEL_29;
  }

  if (*(a1 + 48) == 1 && v20 == 1 && v7 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v23 = _ZZNK7details15ZinIrWeightViewIDh27ZinIrOutputStreamCompressedIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v33);
  }

  else
  {
LABEL_28:
    v23 = _ZZNK7details15ZinIrWeightViewIDh27ZinIrOutputStreamCompressedIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v33);
  }

LABEL_29:
  v24 = v23;
  if (v23)
  {
    if (v19)
    {
      *a3 = ZinIrOutputStreamCompressed<signed char>::Stop(&v42);
    }

    goto LABEL_40;
  }

  if (v19)
  {
    *a3 = ZinIrOutputStreamCompressed<signed char>::Stop(&v42);
    if (v5)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v25 = ZinDivRoundUp(v20 * v7 * *(a1 + 64) * *(v4 + 64) * *(a1 + 56) * *(a1 + 48) * *(a1 + 128) * *(a1 + 120) * *(a1 + 40) * *(a1 + 32) * *(a1 + 24), 8uLL);
  v26 = ZinAlign(v25, *(*(a1 + 224) + 768));
  v32 = 0;
  ZinKernelFormatGetBitDepth(*(*(a1 + 8) + 8), &v32);
  v27 = v32;
  if (v32 == 32)
  {
    v27 = 16;
    v32 = 16;
  }

  v28 = v41;
  *a3 = v26 + ZinDivRoundUp(v27, 8uLL) * v28 + *(*(a1 + 224) + 792);
  if (!v5)
  {
LABEL_38:
    if (v13)
    {
      MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
    }
  }

LABEL_40:
  ZinIrWeight::~ZinIrWeight(v38);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v24;
}

void sub_1A742E1F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIDh27ZinIrOutputStreamCompressedIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v40[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v40);
  v42 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
  }

  else
  {
    v38 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    (*(*v38 + 208))(v38);
    (*(*v38 + 200))(v38);
  }

  v41 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v41);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = *(a1 + 40);
  if (v7 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = v2[16];
LABEL_8:
  if (v9 < 1)
  {
    goto LABEL_51;
  }

  v10 = 0;
  v11 = v2[15];
  v39 = v8;
LABEL_10:
  if (v11 < 1)
  {
    goto LABEL_49;
  }

  v12 = 0;
LABEL_12:
  v13 = *(a1 + 8);
  if (v13 < 1)
  {
    goto LABEL_47;
  }

  v14 = *(a1 + 16);
  while (v14 < 1)
  {
LABEL_44:
    if (v13-- <= 1)
    {
      v11 = v2[15];
LABEL_47:
      if (++v12 < v11)
      {
        goto LABEL_12;
      }

      v9 = v2[16];
LABEL_49:
      if (++v10 >= v9)
      {
        v7 = *(a1 + 40);
LABEL_51:
        if (++v8 >= v7)
        {
          return 0;
        }

        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(a1 + 32);
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v2[21] + v15 * PaletteVectorSize;
    }

    v19 = v18 + v17;
    do
    {
      v19 -= v17;
    }

    while (v19 >= v17);
    v20 = v2[18] + v2[9] * v12;
    if ((v20 & 0x8000000000000000) == 0)
    {
      v21 = v2[19] + v2[10] * v10;
      if ((v21 & 0x8000000000000000) == 0)
      {
        v22 = v13 - 1 - *(a1 + 8) + v2[17];
        v23 = v2[20] + v22 * v2[11];
        if ((v23 & 0x8000000000000000) == 0 && v20 < *(a1 + 56) && v21 < *(a1 + 48) && v23 < *(a1 + 64) && v2[22] > v15 && (v22 & 0x8000000000000000) == 0)
        {
          v40[0] = v19;
          v40[1] = v8;
          v40[2] = v21;
          v40[3] = v20;
          v40[4] = v23;
          v24 = (**(a1 + 72))(a1 + 72, v40);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v24) & 1) != 0)
          {
            IsElemZeroPointAt = 1;
            v26 = 0;
          }

          else
          {
            v26 = 0;
            if (*(a1 + 24) == 1)
            {
              ZinIrWeightBase::GetElemAt<half>(a1 + 72);
              v26 = v27;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v24, v19, *(v2[28] + 1308), 0);
          }

          v8 = v39;
          goto LABEL_34;
        }
      }
    }

    IsElemZeroPointAt = 1;
    v26 = 0;
    if ((*(a1 + 408) & 1) == 0 && (v2[21] + v15 * PaletteVectorSize) < v17)
    {
      break;
    }

LABEL_34:
    if (*(a1 + 24))
    {
      v6.n128_u32[0] = v26;
      ZinIrOutputStreamCompressed<half>::Push(*(a1 + 424), IsElemZeroPointAt, v6);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v14 = *(a1 + 16);
    v15 = ++v16;
    if (v14 <= v16)
    {
      goto LABEL_44;
    }
  }

  v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v30)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  return 3;
}

void sub_1A742E5FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIDh27ZinIrOutputStreamCompressedIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v41[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v41);
  v43 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v38 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v38 + 208))(v38);
    (*(*v38 + 200))(v38);
  }

  v42 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v42);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = *(a1 + 40);
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = v2[16];
  while (v8 < 1)
  {
LABEL_47:
    result = 0;
    if (++v7 >= v6)
    {
      return result;
    }
  }

  v9 = 0;
  v10 = v2[15];
  while (v10 < 1)
  {
LABEL_45:
    if (++v9 >= v8)
    {
      v6 = *(a1 + 40);
      goto LABEL_47;
    }
  }

  v11 = 0;
  v39 = v7;
LABEL_12:
  v12 = v2[21];
  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v2[21];
  }

  v15 = v14 + v13;
  do
  {
    v15 -= v13;
  }

  while (v15 >= v13);
  v16 = 0;
  v17 = 1;
LABEL_18:
  v18 = 0;
  v40 = v17;
  v19 = 1;
  while (1)
  {
    v20 = v19;
    v21 = v18 + v2[9] * v11 + v2[18];
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v16 + v2[10] * v9 + v2[19];
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = v2[17] - *(a1 + 8);
        v24 = v2[20] + v23 * v2[11];
        if ((v24 & 0x8000000000000000) == 0 && v21 < *(a1 + 56) && v22 < *(a1 + 48) && v24 < *(a1 + 64) && v2[22] && (v23 & 0x8000000000000000) == 0)
        {
          v41[0] = v15;
          v41[1] = v7;
          v41[2] = v22;
          v41[3] = v21;
          v41[4] = v24;
          v25 = (**(a1 + 72))(a1 + 72, v41);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v25) & 1) != 0)
          {
            IsElemZeroPointAt = 1;
            v27 = 0;
          }

          else
          {
            v27 = 0;
            if (*(a1 + 24) == 1)
            {
              ZinIrWeightBase::GetElemAt<half>(a1 + 72);
              v27 = v28;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v25, v15, *(v2[28] + 1308), 0);
          }

          v7 = v39;
          goto LABEL_32;
        }
      }
    }

    IsElemZeroPointAt = 1;
    v27 = 0;
    if ((*(a1 + 408) & 1) == 0 && v12 < v13)
    {
      break;
    }

LABEL_32:
    if (*(a1 + 24))
    {
      v5.n128_u32[0] = v27;
      ZinIrOutputStreamCompressed<half>::Push(*(a1 + 424), IsElemZeroPointAt, v5);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v19 = 0;
    v18 = -1;
    if ((v20 & 1) == 0)
    {
      v17 = 0;
      v16 = -1;
      if (v40)
      {
        goto LABEL_18;
      }

      ++v11;
      v10 = v2[15];
      if (v11 >= v10)
      {
        v8 = v2[16];
        goto LABEL_45;
      }

      goto LABEL_12;
    }
  }

  v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v30)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  return 3;
}

void sub_1A742E9D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIDh27ZinIrOutputStreamCompressedIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v68[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v68);
  v70 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
  }

  else
  {
    v54 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    (*(*v54 + 208))(v54);
    (*(*v54 + 200))(v54);
  }

  v69 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v69);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = v2[8];
  if (v7 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a1 + 40);
  v59 = PaletteVectorSize;
LABEL_8:
  if (v9 < 1)
  {
    goto LABEL_72;
  }

  v10 = 0;
  v11 = v2[7];
  v55 = v8;
LABEL_10:
  if (v11 < 1)
  {
    goto LABEL_70;
  }

  v12 = 0;
  v13 = v2[6];
  v62 = v10;
LABEL_12:
  if (v13 < 1)
  {
    goto LABEL_68;
  }

  v14 = 0;
  v15 = v2[16];
  v60 = v12;
LABEL_14:
  if (v15 < 1)
  {
    goto LABEL_66;
  }

  v16 = 0;
  v17 = v2[15];
  v61 = v14;
LABEL_16:
  if (v17 < 1)
  {
    goto LABEL_64;
  }

  v18 = 0;
LABEL_18:
  v19 = *(a1 + 8);
  if (v19 < 1)
  {
    goto LABEL_62;
  }

  v20 = *(a1 + 16);
  while (1)
  {
    v67 = v19 - 1;
    if (v20 >= 1)
    {
      break;
    }

LABEL_59:
    v44 = v19 <= 1;
    v19 = v67;
    if (v44)
    {
      v17 = v2[15];
LABEL_62:
      if (++v18 < v17)
      {
        goto LABEL_18;
      }

      v15 = v2[16];
LABEL_64:
      if (++v16 < v15)
      {
        goto LABEL_16;
      }

      v13 = v2[6];
      v10 = v62;
LABEL_66:
      if (++v14 < v13)
      {
        goto LABEL_14;
      }

      v11 = v2[7];
LABEL_68:
      if (++v12 >= v11)
      {
        v9 = *(a1 + 40);
LABEL_70:
        if (++v10 < v9)
        {
          goto LABEL_10;
        }

        v7 = v2[8];
LABEL_72:
        if (++v8 >= v7)
        {
          return 0;
        }

        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v21 = 0;
  v22 = 0;
  v56 = v19;
  while (1)
  {
    v23 = v2[21] + v21 * PaletteVectorSize;
    v24 = *(a1 + 32);
    v66 = v23;
    if (v24 == 1)
    {
      v23 = 0;
    }

    v25 = v23 + v24;
    do
    {
      v25 -= v24;
    }

    while (v25 >= v24);
    v26 = v2[5];
    if (v26 >= 1)
    {
      break;
    }

LABEL_58:
    v21 = ++v22;
    PaletteVectorSize = v59;
    if (v20 <= v22)
    {
      goto LABEL_59;
    }
  }

  v27 = 0;
  v28 = v2[4];
  v65 = v21;
  v57 = v22;
LABEL_28:
  if (v28 < 1)
  {
    goto LABEL_56;
  }

  v29 = 0;
  v58 = v27;
  v30 = v8 - v27;
  v31 = v2[3];
  while (v31 < 1)
  {
LABEL_54:
    if (++v29 >= v28)
    {
      v26 = v2[5];
      v8 = v55;
      v19 = v56;
      v22 = v57;
      v27 = v58;
LABEL_56:
      if (++v27 >= v26)
      {
        v20 = *(a1 + 16);
        goto LABEL_58;
      }

      goto LABEL_28;
    }
  }

  v32 = 0;
  v63 = v29;
  v33 = v12 - v29;
  v34 = v14;
  while (1)
  {
    v35 = v34 + v2[18] + v18 * v2[9];
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = v33 + v2[10] * v16 + v2[19];
      if ((v36 & 0x8000000000000000) == 0)
      {
        v37 = v67 - *(a1 + 8) + v2[17];
        v38 = v30 + v2[20] + v37 * v2[11];
        if ((v38 & 0x8000000000000000) == 0 && v35 < *(a1 + 56) && v36 < *(a1 + 48) && v38 < *(a1 + 64) && v2[22] > v65 && (v37 & 0x8000000000000000) == 0)
        {
          v68[0] = v25;
          v68[1] = v62;
          v68[2] = v36;
          v68[3] = v35;
          v68[4] = v38;
          v39 = (**(a1 + 72))(a1 + 72, v68);
          v64 = v39;
          if (v2[2] && (v40 = (*(**(a1 + 208) + 184))(*(a1 + 208), v39), v39 = v64, (v40 & 1) != 0))
          {
            IsElemZeroPointAt = 1;
            v42 = 0;
          }

          else
          {
            v42 = 0;
            if (*(a1 + 24) == 1)
            {
              ZinIrWeightBase::GetElemAt<half>(a1 + 72);
              v39 = v64;
              v42 = v43;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v39, v25, *(v2[28] + 1308), 0);
          }

          goto LABEL_45;
        }
      }
    }

    IsElemZeroPointAt = 1;
    v42 = 0;
    if ((*(a1 + 408) & 1) == 0 && v66 < v24)
    {
      break;
    }

LABEL_45:
    if (*(a1 + 24))
    {
      v6.n128_u32[0] = v42;
      ZinIrOutputStreamCompressed<half>::Push(*(a1 + 424), IsElemZeroPointAt, v6);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    ++v32;
    v31 = v2[3];
    --v34;
    if (v32 >= v31)
    {
      v28 = v2[4];
      v12 = v60;
      v14 = v61;
      v29 = v63;
      goto LABEL_54;
    }
  }

  v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v46)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v46, v47, v48, v49, v50, v51, v52, v53);
  }

  return 3;
}

void sub_1A742EEF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrOutputStreamCompressed<half>::Push(uint64_t a1, int a2, __n128 a3)
{
  v4 = a3.n128_u16[0];
  if (*(a1 + 52) == 8 * *(a1 + 56))
  {
    ZinIrOutputStreamCompressed<signed char>::Flush(a1);
  }

  if (a2)
  {
    v6 = *(a1 + 48);
  }

  else
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v8 >= v7)
    {
      v10 = *a1;
      v11 = v8 - *a1;
      v12 = v11 >> 1;
      if (v11 >> 1 <= -2)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (v13 <= v12 + 1)
      {
        v14 = v12 + 1;
      }

      else
      {
        v14 = v13;
      }

      v15 = v13 >= 0x7FFFFFFFFFFFFFFELL;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v16);
      }

      *(2 * v12) = v4;
      v9 = 2 * v12 + 2;
      memcpy(0, v10, v11);
      v17 = *a1;
      *a1 = 0;
      *(a1 + 8) = v9;
      *(a1 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v8 = v4;
      v9 = (v8 + 1);
    }

    *(a1 + 8) = v9;
    v6 = *(a1 + 48);
    *(a1 + 24) |= v6;
  }

  v18 = *(a1 + 52) + 1;
  *(a1 + 48) = 2 * v6;
  *(a1 + 52) = v18;
}

uint64_t details::ZinIrWeightView<half,ZinIrOutputStreamBasic<half>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39258;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<half,ZinIrOutputStreamBasic<half>>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v28) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v28);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v13 = *(a1 + 136);
  v14 = v13 + v12;
  if (v6)
  {
    v41 = v6;
    v42 = v6;
    v40 = 0;
    v32[0] = a1;
    v32[1] = v13 + v12;
    v32[2] = v8;
    v33 = 1;
    v15 = *(v5 + 56);
    v36 = *(v5 + 88);
    v16 = *(v5 + 72);
    v34 = v15;
    v35 = v16;
    ZinIrWeight::ZinIrWeight(v37, v10);
    v37[336] = v11;
    v38 = &v40;
    v39 = &v41;
    if (*(a1 + 64) == 1 && *(a1 + 56) == 1)
    {
      if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
      {
        v17 = _ZZNK7details15ZinIrWeightViewIDh22ZinIrOutputStreamBasicIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v32);
LABEL_27:
        v26 = v17;
        *a3 = v42 - v41;
        ZinIrWeight::~ZinIrWeight(v37);
        return v26;
      }

      if (*(a1 + 48) == 1 && v14 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
      {
        v17 = _ZZNK7details15ZinIrWeightViewIDh22ZinIrOutputStreamBasicIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v32);
        goto LABEL_27;
      }
    }

    v17 = _ZZNK7details15ZinIrWeightViewIDh22ZinIrOutputStreamBasicIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v32);
    goto LABEL_27;
  }

  v30 = *(v5 + 64);
  v31 = a3;
  v18 = *(a1 + 64);
  v29 = *(a1 + 56);
  v20 = *(a1 + 120);
  v19 = *(a1 + 128);
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  v24 = *(a1 + 24);
  v23 = *(a1 + 32);
  v32[0] = 0;
  ZinKernelFormatGetBitDepth(*(*(a1 + 8) + 8), v32);
  v25 = v32[0];
  if (v32[0] == 32)
  {
    v25 = 16;
    v32[0] = 16;
  }

  v26 = 0;
  *v31 = v14 * v8 * v18 * v30 * v29 * v21 * v19 * v20 * v22 * v23 * v24 * ZinDivRoundUp(v25, 8uLL);
  return v26;
}

uint64_t _ZZNK7details15ZinIrWeightViewIDh22ZinIrOutputStreamBasicIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v60 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v60);
  v59 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v7 = *(a1 + 208);
    v6 = *(a1 + 216);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v9 = (*(*v7 + 208))(v7);
    v8 = (*(*v7 + 200))(v7);
    v11 = 0;
    v10 = *(a1 + 16);
  }

  v58 = 0;
  v54 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v58);
  v13 = v3[16];
  v14 = v13 == 1 && v3[15] == 1;
  if (v11 & 1 | !IsContiguousCrsdStride | (v9 | v8) & 1 || (v10 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20]))
  {
    v16 = 1;
    goto LABEL_20;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (*(a1 + 8) != 1 || !v14)
  {
    goto LABEL_20;
  }

  v49 = *(a1 + 32);
  if (v49 != 1)
  {
    v52 = v3[21];
    if (v52 + v10 > v49)
    {
      goto LABEL_20;
    }

    v50 = *(a1 + 40) * v13 * v3[15];
    if (*(a1 + 24))
    {
      v51 = v52 % v49;
      goto LABEL_82;
    }

LABEL_90:
    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v50 * v10;
    goto LABEL_20;
  }

  v50 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_90;
  }

  v51 = 0;
LABEL_82:
  v57 = 0u;
  v56 = 0u;
  v55 = v51;
  (**v54)(v54, &v55);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_20;
  }

  if (v60 > 8)
  {
    if (v1 != 101 || v60 != 16)
    {
      goto LABEL_20;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_20;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v53 = *(v7 + 120);
  }

  else
  {
    v53 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v53)
  {
    v16 = 0;
    if (BNNSBitTranspose())
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
      *(*(a1 + 424) + 8) += 2 * v50 * v10;
    }
  }

LABEL_20:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v16)
  {
    v17 = *(a1 + 40);
    if (v17 < 1)
    {
      return 0;
    }

    v18 = 0;
    v19 = v3[16];
    do
    {
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = v3[15];
        do
        {
          if (v21 >= 1)
          {
            for (i = 0; i < v21; ++i)
            {
              v23 = *(a1 + 8);
              if (v23 >= 1)
              {
                v24 = *(a1 + 16);
                do
                {
                  if (v24 >= 1)
                  {
                    v25 = 0;
                    for (j = 0; j < v24; v25 = ++j)
                    {
                      v27 = *(a1 + 32);
                      if (v27 == 1)
                      {
                        v28 = 0;
                      }

                      else
                      {
                        v28 = v3[21] + v25 * PaletteVectorSize;
                      }

                      v29 = v28 + v27;
                      do
                      {
                        v29 -= v27;
                      }

                      while (v29 >= v27);
                      v30 = v3[18] + v3[9] * i;
                      if (v30 < 0 || (v31 = v3[19] + v3[10] * v20, v31 < 0) || (v32 = v23 - 1 - *(a1 + 8) + v3[17], v33 = v3[20] + v32 * v3[11], v33 < 0) || v30 >= *(a1 + 56) || v31 >= *(a1 + 48) || v33 >= *(a1 + 64) || v3[22] <= v25 || v32 < 0)
                      {
                        v36 = 0;
                        if ((*(a1 + 408) & 1) == 0 && (v3[21] + v25 * PaletteVectorSize) < v27)
                        {
                          v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          if (v40)
                          {
                            _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v40, v41, v42, v43, v44, v45, v46, v47);
                          }

                          return 3;
                        }
                      }

                      else
                      {
                        v55 = v29;
                        *&v56 = v18;
                        *(&v56 + 1) = v31;
                        *&v57 = v30;
                        *(&v57 + 1) = v33;
                        v34 = (**v54)(v54);
                        if (!v3[2] || (v35 = (*(**(a1 + 208) + 184))(*(a1 + 208), v34), v36 = 0, (v35 & 1) == 0))
                        {
                          v36 = 0;
                          if (*(a1 + 24) == 1)
                          {
                            ZinIrWeightBase::GetElemAt<half>(v54);
                          }
                        }
                      }

                      if (*(a1 + 24) == 1)
                      {
                        v37 = *(a1 + 424);
                        v38 = *(v37 + 8);
                        *v38 = v36;
                        *(v37 + 8) = v38 + 1;
                      }

                      v24 = *(a1 + 16);
                    }
                  }
                }

                while (v23-- > 1);
                v21 = v3[15];
              }
            }

            v19 = v3[16];
          }

          ++v20;
        }

        while (v20 < v19);
        v17 = *(a1 + 40);
      }

      v1 = 0;
      ++v18;
    }

    while (v18 < v17);
  }

  return v1;
}

void sub_1A742FBB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIDh22ZinIrOutputStreamBasicIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v41[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v41);
  v43 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v38 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v38 + 208))(v38);
    (*(*v38 + 200))(v38);
  }

  v42 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v42);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_41:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_39:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_41;
    }
  }

  v39 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v2[21];
  }

  v14 = v13 + v12;
  do
  {
    v14 -= v12;
  }

  while (v14 >= v12);
  v15 = 0;
  v16 = 1;
LABEL_18:
  v17 = 0;
  v40 = v16;
  v18 = 1;
  while (1)
  {
    v19 = v18;
    v20 = v17 + v2[9] * v10 + v2[18];
    if ((v20 & 0x8000000000000000) == 0)
    {
      v21 = v15 + v2[10] * v8 + v2[19];
      if ((v21 & 0x8000000000000000) == 0)
      {
        v22 = v2[17] - *(a1 + 8);
        v23 = v2[20] + v22 * v2[11];
        if ((v23 & 0x8000000000000000) == 0 && v20 < *(a1 + 56) && v21 < *(a1 + 48) && v23 < *(a1 + 64) && v2[22] && (v22 & 0x8000000000000000) == 0)
        {
          v41[0] = v14;
          v41[1] = v39;
          v41[2] = v21;
          v41[3] = v20;
          v41[4] = v23;
          v24 = (**(a1 + 72))(a1 + 72, v41);
          if (!v2[2] || (v25 = (*(**(a1 + 208) + 184))(*(a1 + 208), v24), v26 = 0, (v25 & 1) == 0))
          {
            v26 = 0;
            if (*(a1 + 24) == 1)
            {
              ZinIrWeightBase::GetElemAt<half>(a1 + 72);
            }
          }

          goto LABEL_33;
        }
      }
    }

    v26 = 0;
    if ((*(a1 + 408) & 1) == 0 && v11 < v12)
    {
      break;
    }

LABEL_33:
    if (*(a1 + 24) == 1)
    {
      v27 = *(a1 + 424);
      v28 = *(v27 + 8);
      *v28 = v26;
      *(v27 + 8) = v28 + 1;
    }

    v18 = 0;
    v17 = -1;
    if ((v19 & 1) == 0)
    {
      v16 = 0;
      v15 = -1;
      if (v40)
      {
        goto LABEL_18;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v39;
        goto LABEL_39;
      }

      goto LABEL_12;
    }
  }

  v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v30)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  return 3;
}

void sub_1A742FF70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIDh22ZinIrOutputStreamBasicIDhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v88 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v88);
  v87 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v7 = *(a1 + 208);
    v6 = *(a1 + 216);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v9 = (*(*v7 + 208))(v7);
    v8 = (*(*v7 + 200))(v7);
    v11 = 0;
    v10 = *(a1 + 16);
  }

  v86 = 0;
  v82 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v86);
  v13 = v3[16];
  v14 = v13 == 1 && v3[15] == 1;
  if (v11 & 1 | !IsContiguousCrsdStride | (v9 | v8) & 1 || (v10 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[5] != 1 || v3[4] != 1 || v3[3] != 1 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20] || *(a1 + 8) != 1 || v3[8] != 1))
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (v3[7] != 1)
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (v3[6] != 1 || !v14)
  {
    goto LABEL_33;
  }

  v17 = *(a1 + 32);
  if (v17 != 1)
  {
    v68 = v3[21];
    if (v68 + v10 > v17)
    {
      goto LABEL_33;
    }

    v18 = *(a1 + 40) * v13 * v3[15];
    if (*(a1 + 24))
    {
      v19 = v68 % v17;
      goto LABEL_114;
    }

LABEL_122:
    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v18 * v10;
    goto LABEL_33;
  }

  v18 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_122;
  }

  v19 = 0;
LABEL_114:
  v84 = 0u;
  v85 = 0u;
  v83 = v19;
  (**v82)(v82, &v83);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_33;
  }

  if (v88 > 8)
  {
    if (v1 != 101 || v88 != 16)
    {
      goto LABEL_33;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_33;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v69 = *(v7 + 120);
  }

  else
  {
    v69 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v69)
  {
    v16 = 0;
    if (BNNSBitTranspose())
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
      *(*(a1 + 424) + 8) += 2 * v18 * v10;
    }
  }

LABEL_33:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v16)
  {
    v20 = v3[8];
    if (v20 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = *(a1 + 40);
    v75 = PaletteVectorSize;
    do
    {
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v3[7];
        v70 = v21;
        do
        {
          if (v24 >= 1)
          {
            v25 = 0;
            v26 = v3[6];
            v77 = v23;
            do
            {
              if (v26 >= 1)
              {
                v27 = 0;
                v28 = v3[16];
                v74 = v25;
                do
                {
                  if (v28 >= 1)
                  {
                    v29 = 0;
                    v30 = v3[15];
                    v76 = v27;
                    do
                    {
                      if (v30 >= 1)
                      {
                        v31 = 0;
                        v78 = v29;
                        do
                        {
                          v32 = *(a1 + 8);
                          if (v32 >= 1)
                          {
                            v33 = *(a1 + 16);
                            do
                            {
                              v34 = v32 - 1;
                              if (v33 >= 1)
                              {
                                v35 = 0;
                                v36 = 0;
                                v71 = v32;
                                v79 = v32 - 1;
                                do
                                {
                                  v37 = v3[21];
                                  v38 = v37 + v35 * PaletteVectorSize;
                                  v39 = *(a1 + 32);
                                  if (v39 == 1)
                                  {
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    v40 = v37 + v35 * PaletteVectorSize;
                                  }

                                  v41 = v40 + v39;
                                  do
                                  {
                                    v41 -= v39;
                                  }

                                  while (v41 >= v39);
                                  v42 = v3[5];
                                  if (v42 >= 1)
                                  {
                                    v43 = 0;
                                    v44 = v3[4];
                                    v80 = v38;
                                    v81 = v35;
                                    v72 = v36;
                                    do
                                    {
                                      if (v44 >= 1)
                                      {
                                        v45 = 0;
                                        v73 = v43;
                                        v46 = v21 - v43;
                                        v47 = v3[3];
                                        do
                                        {
                                          if (v47 >= 1)
                                          {
                                            v48 = 0;
                                            v49 = v25 - v45;
                                            while (1)
                                            {
                                              v50 = v27 + v3[18] + v31 * v3[9];
                                              if (v50 < 0 || (v51 = v49 + v3[10] * v29 + v3[19], v51 < 0) || (v52 = v34 - *(a1 + 8) + v3[17], v53 = v46 + v3[20] + v52 * v3[11], v53 < 0) || v50 >= *(a1 + 56) || v51 >= *(a1 + 48) || v53 >= *(a1 + 64) || v3[22] <= v35 || v52 < 0)
                                              {
                                                v55 = 0;
                                                if ((*(a1 + 408) & 1) == 0 && v38 < v39)
                                                {
                                                  v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                                  if (v59)
                                                  {
                                                    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v59, v60, v61, v62, v63, v64, v65, v66);
                                                  }

                                                  return 3;
                                                }
                                              }

                                              else
                                              {
                                                v83 = v41;
                                                *&v84 = v77;
                                                *(&v84 + 1) = v51;
                                                *&v85 = v50;
                                                *(&v85 + 1) = v53;
                                                (**v82)(v82);
                                                v38 = v80;
                                                v35 = v81;
                                                v29 = v78;
                                                v34 = v79;
                                                if (!v3[2] || (v54 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v38 = v80, v35 = v81, v29 = v78, v34 = v79, v55 = 0, (v54 & 1) == 0))
                                                {
                                                  v55 = 0;
                                                  if (*(a1 + 24) == 1)
                                                  {
                                                    ZinIrWeightBase::GetElemAt<half>(v82);
                                                    v38 = v80;
                                                    v35 = v81;
                                                    v29 = v78;
                                                    v34 = v79;
                                                  }
                                                }
                                              }

                                              if (*(a1 + 24) == 1)
                                              {
                                                v56 = *(a1 + 424);
                                                v57 = *(v56 + 8);
                                                *v57 = v55;
                                                *(v56 + 8) = v57 + 1;
                                              }

                                              ++v48;
                                              v47 = v3[3];
                                              --v27;
                                              if (v48 >= v47)
                                              {
                                                v44 = v3[4];
                                                v25 = v74;
                                                PaletteVectorSize = v75;
                                                v27 = v76;
                                                break;
                                              }
                                            }
                                          }

                                          ++v45;
                                        }

                                        while (v45 < v44);
                                        v42 = v3[5];
                                        v21 = v70;
                                        v32 = v71;
                                        v36 = v72;
                                        v43 = v73;
                                      }

                                      ++v43;
                                    }

                                    while (v43 < v42);
                                    v33 = *(a1 + 16);
                                  }

                                  v35 = ++v36;
                                }

                                while (v33 > v36);
                              }

                              v58 = v32 <= 1;
                              v32 = v34;
                            }

                            while (!v58);
                            v30 = v3[15];
                          }

                          ++v31;
                        }

                        while (v31 < v30);
                        v28 = v3[16];
                        v23 = v77;
                      }

                      ++v29;
                    }

                    while (v29 < v28);
                    v26 = v3[6];
                  }

                  ++v27;
                }

                while (v27 < v26);
                v24 = v3[7];
              }

              ++v25;
            }

            while (v25 < v24);
            v22 = *(a1 + 40);
          }

          ++v23;
        }

        while (v23 < v22);
        v20 = v3[8];
      }

      v1 = 0;
      ++v21;
    }

    while (v21 < v20);
  }

  return v1;
}

void sub_1A7430800(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint1,ZinIrOutputBitStream1>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39298;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint1,ZinIrOutputBitStream1>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v18) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v18);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = *(a1 + 136) + ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!v6)
  {
    operator new[]();
  }

  v29 = v6;
  v30 = v6;
  v27 = 0;
  v28 = 0;
  v19[0] = a1;
  v19[1] = v12;
  v19[2] = v8;
  v20 = 1;
  v13 = *(v5 + 56);
  v23 = *(v5 + 88);
  v22 = *(v5 + 72);
  v21 = v13;
  ZinIrWeight::ZinIrWeight(v24, v10);
  v24[336] = v11;
  v25 = &v27;
  v26 = &v28;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_23;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E21ZinIrOutputBitStream1E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v19);
    goto LABEL_24;
  }

  if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E21ZinIrOutputBitStream1E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v19);
  }

  else
  {
LABEL_23:
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E21ZinIrOutputBitStream1E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v19);
  }

LABEL_24:
  v15 = v14;
  v16 = v30 - v29;
  if ((v28 & 7) != 0)
  {
    ++v16;
  }

  *a3 = v16;
  ZinIrWeight::~ZinIrWeight(v24);
  return v15;
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E21ZinIrOutputBitStream1E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v71 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v71);
  v70 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v6 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v8 = (*(*v6 + 208))(v6);
    v7 = (*(*v6 + 200))(v6);
    v10 = 0;
    v9 = *(a1 + 16);
  }

  v69 = 0;
  v63 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v69);
  v12 = v3[16];
  v13 = PaletteVectorSize;
  v14 = v12 == 1 && v3[15] == 1;
  if (v10 & 1 | !IsContiguousCrsdStride | (v8 | v7) & 1 || (v9 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20]))
  {
    v16 = 1;
    goto LABEL_20;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (*(a1 + 8) == 1 && v14)
  {
    v56 = *(a1 + 32);
    if (v56 == 1)
    {
      v57 = *(a1 + 40) * v12 * v3[15];
      if (*(a1 + 24))
      {
        v58 = 0;
        goto LABEL_91;
      }
    }

    else
    {
      v59 = v3[21];
      if (v59 + v9 > v56)
      {
        goto LABEL_20;
      }

      v57 = *(a1 + 40) * v12 * v3[15];
      if (*(a1 + 24))
      {
        v58 = v59 % v56;
LABEL_91:
        v68 = 0u;
        v67 = 0u;
        v66 = v58;
        (**v63)(v63, &v66);
        v1 = *(v6 + 8);
        if (SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v6 + 8)))
        {
          if (v71 > 8)
          {
            if (v1 == 101)
            {
              v13 = PaletteVectorSize;
              if (v71 != 16)
              {
                goto LABEL_20;
              }

              if (v5)
              {
                atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              goto LABEL_110;
            }
          }

          else
          {
            switch(v1)
            {
              case 7:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                goto LABEL_110;
              case 8:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                goto LABEL_110;
              case 0x66:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

LABEL_110:
                if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
                {
                  v60 = *(v6 + 120);
                }

                else
                {
                  v60 = v6 + 112;
                }

                if (v5)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                }

                if (v60)
                {
                  if (!BNNSBitTranspose())
                  {
                    ZinAssertImpl("feature not supported", v9);
                  }

                  v16 = 0;
                  v1 = 3;
                }

                break;
            }
          }
        }

        v13 = PaletteVectorSize;
        goto LABEL_20;
      }
    }

    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v57 * v9;
  }

LABEL_20:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v13 = PaletteVectorSize;
  }

  if (v16)
  {
    v17 = *(a1 + 40);
    if (v17 < 1)
    {
      return 0;
    }

    v18 = 0;
    v19 = v3[16];
    do
    {
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = v3[15];
        v61 = v18;
        do
        {
          if (v21 >= 1)
          {
            v22 = 0;
            v64 = v20;
            do
            {
              v23 = *(a1 + 8);
              if (v23 >= 1)
              {
                v24 = *(a1 + 16);
                do
                {
                  v25 = v23 - 1;
                  if (v24 >= 1)
                  {
                    v62 = v23;
                    v26 = 0;
                    v27 = 0;
                    while (1)
                    {
                      v28 = v3[21];
                      v29 = v28 + v26 * v13;
                      v30 = *(a1 + 32);
                      if (v30 == 1)
                      {
                        v31 = 0;
                      }

                      else
                      {
                        v31 = v28 + v26 * v13;
                      }

                      v32 = v31 + v30;
                      do
                      {
                        v32 -= v30;
                      }

                      while (v32 >= v30);
                      v33 = v3[2];
                      if (v33 && v3[22] > v26)
                      {
                        ValueAsInt32 = ZinIrVector::GetValueAsInt32(v33);
                        v20 = v64;
                        v13 = PaletteVectorSize;
                        v35 = ValueAsInt32;
                      }

                      else
                      {
                        v35 = 0;
                      }

                      v36 = v3[18] + v3[9] * v22;
                      if (v36 < 0 || (v37 = v3[19] + v3[10] * v20, v37 < 0) || (v38 = v25 - *(a1 + 8) + v3[17], v39 = v3[20] + v38 * v3[11], v39 < 0) || v36 >= *(a1 + 56) || v37 >= *(a1 + 48) || v39 >= *(a1 + 64) || v3[22] <= v26 || v38 < 0)
                      {
                        if ((*(a1 + 408) & 1) == 0 && v29 < v30)
                        {
                          v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          if (v47)
                          {
                            _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v47, v48, v49, v50, v51, v52, v53, v54);
                          }

                          return 3;
                        }
                      }

                      else
                      {
                        v66 = v32;
                        *&v67 = v61;
                        *(&v67 + 1) = v37;
                        *&v68 = v36;
                        *(&v68 + 1) = v39;
                        v40 = (**v63)(v63);
                        if (v3[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v40) & 1) != 0)
                        {
                          v20 = v64;
                          v13 = PaletteVectorSize;
                        }

                        else
                        {
                          v20 = v64;
                          v13 = PaletteVectorSize;
                          if (*(a1 + 24) == 1)
                          {
                            v45 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint1>(v63, v40);
                            v20 = v64;
                            v13 = PaletteVectorSize;
                            v35 = v45;
                          }
                        }
                      }

                      if (*(a1 + 24) == 1)
                      {
                        v41 = *(a1 + 424);
                        v42 = v35 & 1;
                        v43 = (*v41)++;
                        v44 = v43 & 7;
                        if (v44)
                        {
                          **(v41 + 16) |= v42 << v44;
                          if (v44 == 7)
                          {
                            ++*(v41 + 16);
                          }
                        }

                        else
                        {
                          **(v41 + 16) = v42;
                        }
                      }

                      v24 = *(a1 + 16);
                      v26 = ++v27;
                      if (v24 <= v27)
                      {
                        v23 = v62;
                        break;
                      }
                    }
                  }

                  v46 = v23 <= 1;
                  v23 = v25;
                }

                while (!v46);
                v21 = v3[15];
              }

              ++v22;
            }

            while (v22 < v21);
            v19 = v3[16];
            v18 = v61;
          }

          ++v20;
        }

        while (v20 < v19);
        v17 = *(a1 + 40);
      }

      v1 = 0;
      ++v18;
    }

    while (v18 < v17);
  }

  return v1;
}

void sub_1A7431420(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E21ZinIrOutputBitStream1E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v48[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v48);
  v50 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v44 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v44 + 208))(v44);
    (*(*v44 + 200))(v44);
  }

  v49 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v49);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_48:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_46:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_48;
    }
  }

  v46 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v2[21];
  }

  v14 = v13 + v12;
  do
  {
    v14 -= v12;
  }

  while (v14 >= v12);
  v15 = v2[2];
  if (v15 && v2[22])
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v15);
  }

  else
  {
    ValueAsInt32 = 0;
  }

  v17 = 0;
  v18 = 1;
LABEL_22:
  v19 = 0;
  v47 = v18;
  v20 = 1;
  while (1)
  {
    v21 = v20;
    v22 = v19 + v2[9] * v10 + v2[18];
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v17 + v2[10] * v8 + v2[19];
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v2[17] - *(a1 + 8);
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] && (v24 & 0x8000000000000000) == 0)
        {
          v48[0] = v14;
          v48[1] = v46;
          v48[2] = v23;
          v48[3] = v22;
          v48[4] = v25;
          v26 = (**(a1 + 72))(a1 + 72, v48);
          if (!v2[2] || (v45 = v11, v27 = v26, v28 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v26 = v27, v11 = v45, v29 = v28, v30 = ValueAsInt32, (v29 & 1) == 0))
          {
            v30 = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v30 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint1>(a1 + 72, v26);
            }
          }

          goto LABEL_37;
        }
      }
    }

    v30 = ValueAsInt32;
    if ((*(a1 + 408) & 1) == 0)
    {
      v30 = ValueAsInt32;
      if (v11 < v12)
      {
        break;
      }
    }

LABEL_37:
    if (*(a1 + 24) == 1)
    {
      v31 = *(a1 + 424);
      v32 = v30 & 1;
      v33 = (*v31)++;
      v34 = v33 & 7;
      if (v34)
      {
        **(v31 + 16) |= v32 << v34;
        if (v34 == 7)
        {
          ++*(v31 + 16);
        }
      }

      else
      {
        **(v31 + 16) = v32;
      }
    }

    v20 = 0;
    v19 = -1;
    if ((v21 & 1) == 0)
    {
      v18 = 0;
      v17 = -1;
      if (v47)
      {
        goto LABEL_22;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v46;
        goto LABEL_46;
      }

      goto LABEL_12;
    }
  }

  v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v36)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  return 3;
}

void sub_1A743184C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E21ZinIrOutputBitStream1E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v100 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v100);
  v99 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v7 = *(a1 + 208);
    v6 = *(a1 + 216);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v9 = (*(*v7 + 208))(v7);
    v8 = (*(*v7 + 200))(v7);
    v11 = 0;
    v10 = *(a1 + 16);
  }

  v98 = 0;
  v94 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v98);
  v13 = v3[16];
  v14 = v13 == 1 && v3[15] == 1;
  if (v11 & 1 | !IsContiguousCrsdStride | (v9 | v8) & 1 || (v10 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[5] != 1 || v3[4] != 1 || v3[3] != 1 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20] || *(a1 + 8) != 1 || v3[8] != 1))
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (v3[7] != 1)
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (v3[6] != 1 || !v14)
  {
    goto LABEL_33;
  }

  v17 = *(a1 + 32);
  if (v17 != 1)
  {
    v78 = v3[21];
    if (v78 + v10 > v17)
    {
      goto LABEL_33;
    }

    v18 = *(a1 + 40) * v13 * v3[15];
    if (*(a1 + 24))
    {
      v19 = v78 % v17;
      goto LABEL_121;
    }

LABEL_129:
    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v18 * v10;
    goto LABEL_33;
  }

  v18 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_129;
  }

  v19 = 0;
LABEL_121:
  v96 = 0u;
  v97 = 0u;
  v95 = v19;
  (**v94)(v94, &v95);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_33;
  }

  if (v100 > 8)
  {
    if (v1 != 101 || v100 != 16)
    {
      goto LABEL_33;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_33;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v79 = *(v7 + 120);
  }

  else
  {
    v79 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v79)
  {
    if (!BNNSBitTranspose())
    {
      ZinAssertImpl("feature not supported", v10);
    }

    v16 = 0;
    v1 = 3;
  }

LABEL_33:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v16)
  {
    v20 = v3[8];
    if (v20 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = *(a1 + 40);
    v86 = PaletteVectorSize;
    do
    {
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v3[7];
        v85 = v21;
        do
        {
          if (v24 >= 1)
          {
            v25 = 0;
            v26 = v3[6];
            v87 = v23;
            do
            {
              if (v26 >= 1)
              {
                v93 = 0;
                v27 = v3[16];
                v84 = v25;
                do
                {
                  if (v27 >= 1)
                  {
                    v28 = 0;
                    v29 = v3[15];
                    do
                    {
                      if (v29 >= 1)
                      {
                        v30 = 0;
                        v90 = v28;
                        do
                        {
                          v31 = *(a1 + 8);
                          if (v31 >= 1)
                          {
                            v32 = *(a1 + 16);
                            do
                            {
                              v33 = v31 - 1;
                              if (v32 >= 1)
                              {
                                v80 = v31;
                                v34 = 0;
                                v35 = 0;
                                v91 = v31 - 1;
                                do
                                {
                                  v36 = v3[21];
                                  v37 = v36 + v34 * PaletteVectorSize;
                                  v38 = *(a1 + 32);
                                  if (v38 == 1)
                                  {
                                    v39 = 0;
                                  }

                                  else
                                  {
                                    v39 = v36 + v34 * PaletteVectorSize;
                                  }

                                  v40 = v39 + v38;
                                  do
                                  {
                                    v40 -= v38;
                                  }

                                  while (v40 >= v38);
                                  v41 = v3[2];
                                  v92 = v34;
                                  if (v41 && v3[22] > v34)
                                  {
                                    v42 = v25;
                                    v43 = v37;
                                    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v41);
                                    v37 = v43;
                                    v33 = v91;
                                    v34 = v92;
                                    v28 = v90;
                                    v25 = v42;
                                    v45 = ValueAsInt32;
                                  }

                                  else
                                  {
                                    v45 = 0;
                                  }

                                  v46 = v3[5];
                                  if (v46 >= 1)
                                  {
                                    v47 = 0;
                                    v48 = v3[4];
                                    v81 = v35;
                                    v89 = v37;
                                    do
                                    {
                                      if (v48 >= 1)
                                      {
                                        v49 = 0;
                                        v82 = v47;
                                        v50 = v21 - v47;
                                        v51 = v3[3];
                                        do
                                        {
                                          if (v51 >= 1)
                                          {
                                            v52 = 0;
                                            v88 = v49;
                                            v53 = v25 - v49;
                                            v54 = v93;
                                            while (1)
                                            {
                                              v55 = v54 + v3[18] + v30 * v3[9];
                                              if (v55 < 0 || (v56 = v53 + v3[10] * v28 + v3[19], v56 < 0) || (v57 = v33 - *(a1 + 8) + v3[17], v58 = v50 + v3[20] + v57 * v3[11], v58 < 0) || v55 >= *(a1 + 56) || v56 >= *(a1 + 48) || v58 >= *(a1 + 64) || v3[22] <= v34 || v57 < 0)
                                              {
                                                v63 = v45;
                                                if ((*(a1 + 408) & 1) == 0)
                                                {
                                                  v63 = v45;
                                                  if (v37 < v38)
                                                  {
                                                    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                                    if (v69)
                                                    {
                                                      _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v69, v70, v71, v72, v73, v74, v75, v76);
                                                    }

                                                    return 3;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v95 = v40;
                                                *&v96 = v87;
                                                *(&v96 + 1) = v56;
                                                *&v97 = v55;
                                                *(&v97 + 1) = v58;
                                                v59 = (**v94)(v94);
                                                v37 = v89;
                                                v28 = v90;
                                                v33 = v91;
                                                v34 = v92;
                                                v60 = v59;
                                                if (!v3[2] || (v83 = v59, v61 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v60 = v83, v37 = v89, v28 = v90, v33 = v91, v34 = v92, v62 = v61, v63 = v45, (v62 & 1) == 0))
                                                {
                                                  v63 = v45;
                                                  if (*(a1 + 24) == 1)
                                                  {
                                                    v63 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint1>(v94, v60);
                                                    v37 = v89;
                                                    v28 = v90;
                                                    v33 = v91;
                                                    v34 = v92;
                                                  }
                                                }
                                              }

                                              if (*(a1 + 24) == 1)
                                              {
                                                v64 = *(a1 + 424);
                                                v65 = v63 & 1;
                                                v66 = (*v64)++;
                                                v67 = v66 & 7;
                                                if (v67)
                                                {
                                                  **(v64 + 16) |= v65 << v67;
                                                  if (v67 == 7)
                                                  {
                                                    ++*(v64 + 16);
                                                  }
                                                }

                                                else
                                                {
                                                  **(v64 + 16) = v65;
                                                }
                                              }

                                              ++v52;
                                              v51 = v3[3];
                                              --v54;
                                              if (v52 >= v51)
                                              {
                                                v48 = v3[4];
                                                v21 = v85;
                                                PaletteVectorSize = v86;
                                                v25 = v84;
                                                v49 = v88;
                                                break;
                                              }
                                            }
                                          }

                                          ++v49;
                                        }

                                        while (v49 < v48);
                                        v46 = v3[5];
                                        v35 = v81;
                                        v47 = v82;
                                      }

                                      ++v47;
                                    }

                                    while (v47 < v46);
                                  }

                                  v32 = *(a1 + 16);
                                  v34 = ++v35;
                                }

                                while (v32 > v35);
                                v31 = v80;
                              }

                              v68 = v31 <= 1;
                              v31 = v33;
                            }

                            while (!v68);
                            v29 = v3[15];
                          }

                          ++v30;
                        }

                        while (v30 < v29);
                        v27 = v3[16];
                        v23 = v87;
                      }

                      ++v28;
                    }

                    while (v28 < v27);
                    v26 = v3[6];
                  }

                  ++v93;
                }

                while (v93 < v26);
                v24 = v3[7];
              }

              ++v25;
            }

            while (v25 < v24);
            v22 = *(a1 + 40);
          }

          ++v23;
        }

        while (v23 < v22);
        v20 = v3[8];
      }

      v1 = 0;
      ++v21;
    }

    while (v21 < v20);
  }

  return v1;
}

void sub_1A7432168(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint1,ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A392D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint1,ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v30) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v30);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = *(a1 + 136) + ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!v6)
  {
    operator new[]();
  }

  v13 = *(a1 + 224);
  v14 = *(v13 + 792);
  v15 = *(a1 + 208);
  v16 = *(v13 + 1308);
  v17 = *(v13 + 768);
  v46 = 1;
  v47 = 1;
  v18 = 0xFFFFLL;
  if (v14 == 3)
  {
    v18 = 0xFFFFFFLL;
  }

  v48 = v14;
  v49 = v18;
  v52 = v15;
  v53 = v16;
  v51 = v17;
  v50 = 0;
  v40[0] = v6;
  v40[1] = v6 + v14;
  v41 = 0;
  v42 = 0;
  v43 = v17;
  v44 = v6 + v14 + v17;
  v45 = 0;
  v39 = 0;
  v31[0] = a1;
  v31[1] = v12;
  v31[2] = v8;
  v32 = 1;
  v19 = *(v5 + 56);
  v35 = *(v5 + 88);
  v20 = *(v5 + 72);
  v33 = v19;
  v34 = v20;
  ZinIrWeight::ZinIrWeight(v36, v10);
  v36[336] = v11;
  v37 = &v39;
  v38 = v40;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_25;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E36ZinIrOutputStreamCompressedUnalignedILh1EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v31);
    goto LABEL_26;
  }

  if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E36ZinIrOutputStreamCompressedUnalignedILh1EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v31);
  }

  else
  {
LABEL_25:
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E36ZinIrOutputStreamCompressedUnalignedILh1EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v31);
  }

LABEL_26:
  v22 = v21;
  v23 = v44 - (v45 == 0) - v40[0] + 1;
  v24 = v23 - v48;
  if (v21)
  {
    if (v48)
    {
      v25 = 0;
      for (i = 0; i < v48; ++i)
      {
        *(v40[0] + i) = v24 >> v25;
        v25 += 8;
      }
    }

    *a3 = v23;
  }

  else
  {
    if (v48)
    {
      v27 = 0;
      for (j = 0; j < v48; ++j)
      {
        *(v40[0] + j) = v24 >> v27;
        v27 += 8;
      }
    }

    *a3 = v23;
    v22 = 0;
  }

  ZinIrWeight::~ZinIrWeight(v36);
  return v22;
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E36ZinIrOutputStreamCompressedUnalignedILh1EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v44[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v44);
  v46 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v39 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v39 + 208))(v39);
    (*(*v39 + 200))(v39);
  }

  v45 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v45);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
LABEL_8:
  if (v7 < 1)
  {
    goto LABEL_54;
  }

  v42 = 0;
  v8 = v2[15];
  v40 = v6;
LABEL_10:
  if (v8 < 1)
  {
    goto LABEL_52;
  }

  v9 = 0;
LABEL_12:
  v10 = *(a1 + 8);
  if (v10 < 1)
  {
    goto LABEL_50;
  }

  v11 = *(a1 + 16);
  while (1)
  {
    v12 = v10 - 1;
    if (v11 >= 1)
    {
      break;
    }

LABEL_47:
    v29 = v10 <= 1;
    v10 = v12;
    if (v29)
    {
      v8 = v2[15];
LABEL_50:
      if (++v9 < v8)
      {
        goto LABEL_12;
      }

      v7 = v2[16];
      v6 = v40;
LABEL_52:
      if (++v42 >= v7)
      {
        v5 = *(a1 + 40);
LABEL_54:
        if (++v6 >= v5)
        {
          return 0;
        }

        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v41 = v10;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = v2[21];
    v16 = v15 + v13 * PaletteVectorSize;
    v17 = *(a1 + 32);
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15 + v13 * PaletteVectorSize;
    }

    v19 = v18 + v17;
    do
    {
      v19 -= v17;
    }

    while (v19 >= v17);
    v20 = v2[2];
    if (v20 && v2[22] > v13)
    {
      ValueAsInt32 = ZinIrVector::GetValueAsInt32(v20);
    }

    else
    {
      ValueAsInt32 = 0;
    }

    v22 = v2[18] + v2[9] * v9;
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v2[19] + v2[10] * v42;
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v12 - *(a1 + 8) + v2[17];
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] > v13 && (v24 & 0x8000000000000000) == 0)
        {
          v44[0] = v19;
          v44[1] = v40;
          v44[2] = v23;
          v44[3] = v22;
          v44[4] = v25;
          v26 = (**(a1 + 72))(a1 + 72, v44);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v26) & 1) != 0)
          {
            IsElemZeroPointAt = 1;
          }

          else
          {
            LOBYTE(v28) = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v28 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint1>(a1 + 72, v26) & 1;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v26, v19, *(v2[28] + 1308), ValueAsInt32);
            ValueAsInt32 = v28;
          }

          goto LABEL_38;
        }
      }
    }

    IsElemZeroPointAt = 1;
    if ((*(a1 + 408) & 1) == 0 && v16 < v17)
    {
      break;
    }

LABEL_38:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::Push(*(a1 + 424), ValueAsInt32, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v11 = *(a1 + 16);
    v13 = ++v14;
    if (v11 <= v14)
    {
      v10 = v41;
      goto LABEL_47;
    }
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  return 3;
}

void sub_1A7432AE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E36ZinIrOutputStreamCompressedUnalignedILh1EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v45[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v45);
  v47 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v41 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v41 + 208))(v41);
    (*(*v41 + 200))(v41);
  }

  v46 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v46);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_51:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_49:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_51;
    }
  }

  v42 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  v44 = v11;
  if (v12 == 1)
  {
    v11 = 0;
  }

  v13 = v11 + v12;
  do
  {
    v13 -= v12;
  }

  while (v13 >= v12);
  v14 = v2[2];
  if (v14 && v2[22])
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v14);
  }

  else
  {
    ValueAsInt32 = 0;
  }

  v16 = 0;
  v17 = 1;
LABEL_21:
  v18 = 0;
  v43 = v17;
  v19 = 1;
  while (1)
  {
    v20 = v19;
    v21 = v18 + v2[9] * v10 + v2[18];
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v16 + v2[10] * v8 + v2[19];
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = v2[17] - *(a1 + 8);
        v24 = v2[20] + v23 * v2[11];
        if ((v24 & 0x8000000000000000) == 0 && v21 < *(a1 + 56) && v22 < *(a1 + 48) && v24 < *(a1 + 64) && v2[22] && (v23 & 0x8000000000000000) == 0)
        {
          v45[0] = v13;
          v45[1] = v42;
          v45[2] = v22;
          v45[3] = v21;
          v45[4] = v24;
          v25 = (**(a1 + 72))(a1 + 72, v45);
          if (!v2[2] || (v26 = v25, v27 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v25 = v26, (v27 & 1) == 0))
          {
            v29 = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v30 = v25;
              v31 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint1>(a1 + 72, v25);
              v25 = v30;
              v29 = v31 & 1;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v25, v13, *(v2[28] + 1308), ValueAsInt32);
            goto LABEL_37;
          }

          IsElemZeroPointAt = 1;
LABEL_36:
          v29 = ValueAsInt32;
          goto LABEL_37;
        }
      }
    }

    IsElemZeroPointAt = 1;
    if (*(a1 + 408))
    {
      goto LABEL_36;
    }

    v29 = ValueAsInt32;
    if (v44 < v12)
    {
      break;
    }

LABEL_37:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::Push(*(a1 + 424), v29, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v19 = 0;
    v18 = -1;
    if ((v20 & 1) == 0)
    {
      v17 = 0;
      v16 = -1;
      if (v43)
      {
        goto LABEL_21;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v42;
        goto LABEL_49;
      }

      goto LABEL_12;
    }
  }

  v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v33)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  return 3;
}

void sub_1A7432EE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint1E36ZinIrOutputStreamCompressedUnalignedILh1EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v74[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v74);
  v76 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
  }

  else
  {
    v59 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    (*(*v59 + 208))(v59);
    (*(*v59 + 200))(v59);
  }

  v75 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v75);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[8];
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a1 + 40);
  v62 = PaletteVectorSize;
LABEL_8:
  if (v8 < 1)
  {
    goto LABEL_77;
  }

  v9 = 0;
  v10 = v2[7];
  v61 = v7;
LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_75;
  }

  v11 = 0;
  v12 = v2[6];
  v67 = v9;
LABEL_12:
  if (v12 < 1)
  {
    goto LABEL_73;
  }

  v13 = 0;
  v14 = v2[16];
  v64 = v11;
LABEL_14:
  if (v14 < 1)
  {
    goto LABEL_71;
  }

  v73 = 0;
  v15 = v2[15];
  v65 = v13;
LABEL_16:
  if (v15 < 1)
  {
    goto LABEL_69;
  }

  v16 = 0;
LABEL_18:
  v17 = *(a1 + 8);
  if (v17 < 1)
  {
    goto LABEL_67;
  }

  v18 = *(a1 + 16);
  v71 = v16;
LABEL_20:
  v19 = v17 - 1;
  if (v18 < 1)
  {
    goto LABEL_64;
  }

  v60 = v17;
  v20 = 0;
  v21 = 0;
  v72 = v17 - 1;
LABEL_22:
  v22 = v2[21] + v20 * PaletteVectorSize;
  v23 = *(a1 + 32);
  v70 = v22;
  if (v23 == 1)
  {
    v22 = 0;
  }

  v24 = v22 + v23;
  do
  {
    v24 -= v23;
  }

  while (v24 >= v23);
  v25 = v2[2];
  if (v25 && v2[22] > v20)
  {
    v26 = v13;
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v25);
    v16 = v71;
    v19 = v72;
    v13 = v26;
    v28 = ValueAsInt32;
  }

  else
  {
    v28 = 0;
  }

  v29 = v2[5];
  if (v29 < 1)
  {
    goto LABEL_62;
  }

  v30 = 0;
  v31 = v2[4];
  v69 = v20;
  v63 = v21;
LABEL_32:
  if (v31 < 1)
  {
    goto LABEL_61;
  }

  v32 = 0;
  v33 = v7 - v30;
  v34 = v2[3];
  v66 = v30;
  while (v34 < 1)
  {
LABEL_59:
    if (++v32 >= v31)
    {
      v29 = v2[5];
      v7 = v61;
      PaletteVectorSize = v62;
      v21 = v63;
LABEL_61:
      if (++v30 < v29)
      {
        goto LABEL_32;
      }

LABEL_62:
      v18 = *(a1 + 16);
      v20 = ++v21;
      if (v18 > v21)
      {
        goto LABEL_22;
      }

      v9 = v67;
      v17 = v60;
LABEL_64:
      v49 = v17 <= 1;
      v17 = v19;
      if (!v49)
      {
        goto LABEL_20;
      }

      v15 = v2[15];
LABEL_67:
      if (++v16 < v15)
      {
        goto LABEL_18;
      }

      v14 = v2[16];
LABEL_69:
      if (++v73 < v14)
      {
        goto LABEL_16;
      }

      v12 = v2[6];
LABEL_71:
      if (++v13 >= v12)
      {
        v10 = v2[7];
LABEL_73:
        if (++v11 < v10)
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 40);
LABEL_75:
        if (++v9 >= v8)
        {
          v6 = v2[8];
LABEL_77:
          if (++v7 >= v6)
          {
            return 0;
          }

          goto LABEL_8;
        }

        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  v35 = 0;
  v68 = v32;
  v36 = v11 - v32;
  v37 = v13;
  while (1)
  {
    v38 = v37 + v2[18] + v16 * v2[9];
    if ((v38 & 0x8000000000000000) == 0)
    {
      v39 = v36 + v2[10] * v73 + v2[19];
      if ((v39 & 0x8000000000000000) == 0)
      {
        v40 = v19 - *(a1 + 8) + v2[17];
        v41 = v33 + v2[20] + v40 * v2[11];
        if ((v41 & 0x8000000000000000) == 0 && v38 < *(a1 + 56) && v39 < *(a1 + 48) && v41 < *(a1 + 64) && v2[22] > v69 && (v40 & 0x8000000000000000) == 0)
        {
          v74[0] = v24;
          v74[1] = v67;
          v74[2] = v39;
          v74[3] = v38;
          v74[4] = v41;
          v42 = (**(a1 + 72))(a1 + 72, v74);
          if (v2[2] && (v43 = v42, v44 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v42 = v43, (v44 & 1) != 0))
          {
            IsElemZeroPointAt = 1;
            v46 = v28;
          }

          else
          {
            v46 = v28;
            if (*(a1 + 24) == 1)
            {
              v47 = v42;
              v48 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint1>(a1 + 72, v42);
              v42 = v47;
              v46 = v48 & 1;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v42, v24, *(v2[28] + 1308), v28);
          }

          v16 = v71;
          v19 = v72;
          goto LABEL_49;
        }
      }
    }

    IsElemZeroPointAt = 1;
    v46 = v28;
    if ((*(a1 + 408) & 1) == 0 && v70 < v23)
    {
      break;
    }

LABEL_49:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::Push(*(a1 + 424), v46, IsElemZeroPointAt);
      v16 = v71;
      v19 = v72;
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    ++v35;
    v34 = v2[3];
    --v37;
    if (v35 >= v34)
    {
      v31 = v2[4];
      v11 = v64;
      v13 = v65;
      v30 = v66;
      v32 = v68;
      goto LABEL_59;
    }
  }

  v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v51)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v51, v52, v53, v54, v55, v56, v57, v58);
  }

  return 3;
}

void sub_1A7433444(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::Push(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  result = ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::MaskLocation::store(a1 + 8, a3 ^ 1);
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 20) = 0;
    *(a1 + 32) = v7 + *(a1 + 80);
    result = ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::MaskLocation::store(a1 + 8, a3 ^ 1);
  }

  if ((a3 & 1) == 0 && (*(a1 + 88) & 1) == 0)
  {

    return ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::DataLocation::store(a1 + 32, v4);
  }

  return result;
}

BOOL ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::MaskLocation::store(uint64_t a1, char a2)
{
  v2 = *(a1 + 12);
  v3 = 8 * *(a1 + 16);
  if (v3 > v2)
  {
    *(a1 + 12) = v2 + 1;
    **a1 |= (a2 & 1) << *(a1 + 8);
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
    if (v4 == 8)
    {
      ++*a1;
      *(a1 + 8) = 0;
    }
  }

  return v3 > v2;
}

uint64_t ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::DataLocation::store(uint64_t result, int a2)
{
  v2 = *(result + 12);
  v3 = *(result + 16) & a2;
  v4 = *(result + 8);
  v5 = 8 - v4;
  v6 = v3 >> (8 - v4);
  v7 = v3 & ~(-1 << (8 - v4));
  if (v2 <= 8 - v4)
  {
    v7 = *(result + 16) & a2;
  }

  if (v2 > v5)
  {
    v8 = v2 - (8 - v4);
  }

  else
  {
    v8 = 0;
  }

  if (v2 > v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if (v2 > v5)
  {
    v2 = 8 - v4;
  }

  **result |= v7 << v4;
  v10 = *(result + 8) + v2;
  *(result + 8) = v10;
  if (v10 == 8)
  {
    ++*result;
    *(result + 8) = 0;
  }

  if (v8)
  {
    **result |= v9;
    *(result + 8) = v8;
  }

  return result;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint2,ZinIrOutputBitStream2>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39318;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint2,ZinIrOutputBitStream2>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v18) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v18);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = *(a1 + 136) + ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!v6)
  {
    operator new[]();
  }

  v29 = v6;
  v30 = v6;
  v27 = 0;
  v28 = 0;
  v19[0] = a1;
  v19[1] = v12;
  v19[2] = v8;
  v20 = 1;
  v13 = *(v5 + 56);
  v23 = *(v5 + 88);
  v22 = *(v5 + 72);
  v21 = v13;
  ZinIrWeight::ZinIrWeight(v24, v10);
  v24[336] = v11;
  v25 = &v27;
  v26 = &v28;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_23;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E21ZinIrOutputBitStream2E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v19);
    goto LABEL_24;
  }

  if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E21ZinIrOutputBitStream2E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v19);
  }

  else
  {
LABEL_23:
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E21ZinIrOutputBitStream2E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v19);
  }

LABEL_24:
  v15 = v14;
  v16 = v30 - v29;
  if ((v28 & 3) != 0)
  {
    ++v16;
  }

  *a3 = v16;
  ZinIrWeight::~ZinIrWeight(v24);
  return v15;
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E21ZinIrOutputBitStream2E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v67 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v67);
  v66 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v6 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v8 = (*(*v6 + 208))(v6);
    v7 = (*(*v6 + 200))(v6);
    v10 = 0;
    v9 = *(a1 + 16);
  }

  v65 = 0;
  v59 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v65);
  v12 = v3[16];
  v13 = v12 == 1 && v3[15] == 1;
  if (v10 & 1 | !IsContiguousCrsdStride | (v8 | v7) & 1 || (v9 < v3[22] + 1 ? (v14 = PaletteVectorSize == 1) : (v14 = 0), !v14 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20]))
  {
    v15 = 1;
    goto LABEL_20;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v13 = 1;
  }

  v15 = 1;
  if (*(a1 + 8) != 1 || !v13)
  {
    goto LABEL_20;
  }

  v48 = *(a1 + 32);
  if (v48 != 1)
  {
    v51 = v3[21];
    if (v51 + v9 > v48)
    {
      goto LABEL_20;
    }

    v49 = *(a1 + 40) * v12 * v3[15];
    if (*(a1 + 24))
    {
      v50 = v51 % v48;
      goto LABEL_87;
    }

LABEL_95:
    v15 = 0;
    v1 = 0;
    v52 = v49 * v9;
    v53 = *(a1 + 416);
LABEL_96:
    *v53 = v52;
    goto LABEL_20;
  }

  v49 = *(a1 + 40) * v12 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_95;
  }

  v50 = 0;
LABEL_87:
  v64 = 0u;
  v63 = 0u;
  v62 = v50;
  (**v59)(v59, &v62);
  v1 = *(v6 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v6 + 8)))
  {
    goto LABEL_20;
  }

  if (v67 > 8)
  {
    if (v1 != 101 || v67 != 16)
    {
      goto LABEL_20;
    }

    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_20;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v54 = *(v6 + 120);
  }

  else
  {
    v54 = v6 + 112;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v54)
  {
    v15 = 0;
    if (BNNSBitTranspose())
    {
      v1 = 3;
      goto LABEL_20;
    }

    v1 = 0;
    v55 = v49 * v9;
    if (v49 * v9)
    {
      v53 = *(a1 + 424);
      v56 = *v53;
      v53[2] += ((*v53 & 3) + v55) >> 2;
      v52 = v56 + v55;
      goto LABEL_96;
    }
  }

LABEL_20:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v15)
  {
    v16 = *(a1 + 40);
    if (v16 < 1)
    {
      return 0;
    }

    v17 = 0;
    v18 = v3[16];
    do
    {
      if (v18 >= 1)
      {
        v60 = 0;
        v19 = v3[15];
        v57 = v17;
        do
        {
          if (v19 >= 1)
          {
            for (i = 0; i < v19; ++i)
            {
              v21 = *(a1 + 8);
              if (v21 >= 1)
              {
                v22 = *(a1 + 16);
                do
                {
                  v23 = v21 - 1;
                  if (v22 >= 1)
                  {
                    v58 = v21;
                    v24 = 0;
                    v25 = 0;
                    while (1)
                    {
                      v26 = v3[21];
                      v27 = v26 + v24 * PaletteVectorSize;
                      v28 = *(a1 + 32);
                      if (v28 == 1)
                      {
                        v29 = 0;
                      }

                      else
                      {
                        v29 = v26 + v24 * PaletteVectorSize;
                      }

                      v30 = v29 + v28;
                      do
                      {
                        v30 -= v28;
                      }

                      while (v30 >= v28);
                      v31 = v3[2];
                      if (v31 && v3[22] > v24)
                      {
                        ValueAsInt32 = ZinIrVector::GetValueAsInt32(v31);
                      }

                      else
                      {
                        ValueAsInt32 = 0;
                      }

                      v33 = v3[18] + v3[9] * i;
                      if (v33 < 0 || (v34 = v3[19] + v3[10] * v60, v34 < 0) || (v35 = v23 - *(a1 + 8) + v3[17], v36 = v3[20] + v35 * v3[11], v36 < 0) || v33 >= *(a1 + 56) || v34 >= *(a1 + 48) || v36 >= *(a1 + 64) || v3[22] <= v24 || v35 < 0)
                      {
                        if ((*(a1 + 408) & 1) == 0 && v27 < v28)
                        {
                          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          if (v39)
                          {
                            _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v39, v40, v41, v42, v43, v44, v45, v46);
                          }

                          return 3;
                        }
                      }

                      else
                      {
                        v62 = v30;
                        *&v63 = v57;
                        *(&v63 + 1) = v34;
                        *&v64 = v33;
                        *(&v64 + 1) = v36;
                        v37 = (**v59)(v59);
                        if ((!v3[2] || ((*(**(a1 + 208) + 184))(*(a1 + 208), v37) & 1) == 0) && *(a1 + 24) == 1)
                        {
                          ValueAsInt32 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint2>(v59, v37);
                        }
                      }

                      if (*(a1 + 24) == 1)
                      {
                        ZinIrOutputBitStream2::Push(*(a1 + 424), ValueAsInt32 & 3);
                      }

                      v22 = *(a1 + 16);
                      v24 = ++v25;
                      if (v22 <= v25)
                      {
                        v21 = v58;
                        break;
                      }
                    }
                  }

                  v38 = v21 <= 1;
                  v21 = v23;
                }

                while (!v38);
                v19 = v3[15];
              }
            }

            v18 = v3[16];
            v17 = v57;
          }

          ++v60;
        }

        while (v60 < v18);
        v16 = *(a1 + 40);
      }

      v1 = 0;
      ++v17;
    }

    while (v17 < v16);
  }

  return v1;
}

void sub_1A743419C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E21ZinIrOutputBitStream2E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v43[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v43);
  v45 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v39 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v39 + 208))(v39);
    (*(*v39 + 200))(v39);
  }

  v44 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v44);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_45:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_43:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_45;
    }
  }

  v41 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v2[21];
  }

  v14 = v13 + v12;
  do
  {
    v14 -= v12;
  }

  while (v14 >= v12);
  v15 = v2[2];
  if (v15 && v2[22])
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v15);
  }

  else
  {
    ValueAsInt32 = 0;
  }

  v17 = 0;
  v18 = 1;
LABEL_22:
  v19 = 0;
  v42 = v18;
  v20 = 1;
  while (1)
  {
    v21 = v20;
    v22 = v19 + v2[9] * v10 + v2[18];
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v17 + v2[10] * v8 + v2[19];
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v2[17] - *(a1 + 8);
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] && (v24 & 0x8000000000000000) == 0)
        {
          v43[0] = v14;
          v43[1] = v41;
          v43[2] = v23;
          v43[3] = v22;
          v43[4] = v25;
          v26 = (**(a1 + 72))(a1 + 72, v43);
          if (!v2[2] || (v40 = v26, v27 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v26 = v40, v28 = v27, v29 = ValueAsInt32, (v28 & 1) == 0))
          {
            v29 = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v29 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint2>(a1 + 72, v26);
            }
          }

          goto LABEL_37;
        }
      }
    }

    v29 = ValueAsInt32;
    if ((*(a1 + 408) & 1) == 0)
    {
      v29 = ValueAsInt32;
      if (v11 < v12)
      {
        break;
      }
    }

LABEL_37:
    if (*(a1 + 24) == 1)
    {
      ZinIrOutputBitStream2::Push(*(a1 + 424), v29 & 3);
    }

    v20 = 0;
    v19 = -1;
    if ((v21 & 1) == 0)
    {
      v18 = 0;
      v17 = -1;
      if (v42)
      {
        goto LABEL_22;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v41;
        goto LABEL_43;
      }

      goto LABEL_12;
    }
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  return 3;
}

void sub_1A7434584(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E21ZinIrOutputBitStream2E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v98 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v98);
  v97 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v7 = *(a1 + 208);
    v6 = *(a1 + 216);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v9 = (*(*v7 + 208))(v7);
    v8 = (*(*v7 + 200))(v7);
    v11 = 0;
    v10 = *(a1 + 16);
  }

  v96 = 0;
  v89 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v96);
  v13 = v3[16];
  v14 = v13 == 1 && v3[15] == 1;
  if (v11 & 1 | !IsContiguousCrsdStride | (v9 | v8) & 1 || (v10 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[5] != 1 || v3[4] != 1 || v3[3] != 1 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20] || *(a1 + 8) != 1 || v3[8] != 1))
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (v3[7] != 1)
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (v3[6] != 1 || !v14)
  {
    goto LABEL_33;
  }

  v17 = *(a1 + 32);
  if (v17 != 1)
  {
    v72 = v3[21];
    if (v72 + v10 > v17)
    {
      goto LABEL_33;
    }

    v18 = *(a1 + 40) * v13 * v3[15];
    if (*(a1 + 24))
    {
      v19 = v72 % v17;
      goto LABEL_117;
    }

LABEL_125:
    v16 = 0;
    v1 = 0;
    v73 = v18 * v10;
    v74 = *(a1 + 416);
LABEL_126:
    *v74 = v73;
    goto LABEL_33;
  }

  v18 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_125;
  }

  v19 = 0;
LABEL_117:
  v94 = 0u;
  v95 = 0u;
  v93 = v19;
  (**v89)(v89, &v93);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_33;
  }

  if (v98 > 8)
  {
    if (v1 != 101 || v98 != 16)
    {
      goto LABEL_33;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_33;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v75 = *(v7 + 120);
  }

  else
  {
    v75 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v75)
  {
    v16 = 0;
    if (BNNSBitTranspose())
    {
      v1 = 3;
      goto LABEL_33;
    }

    v1 = 0;
    v76 = v18 * v10;
    if (v18 * v10)
    {
      v74 = *(a1 + 424);
      v77 = *v74;
      v74[2] += ((*v74 & 3) + v76) >> 2;
      v73 = v77 + v76;
      goto LABEL_126;
    }
  }

LABEL_33:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v16)
  {
    v20 = v3[8];
    if (v20 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = *(a1 + 40);
    v82 = PaletteVectorSize;
    do
    {
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v3[7];
        v81 = v21;
        do
        {
          if (v24 >= 1)
          {
            v25 = 0;
            v26 = v3[6];
            v85 = v23;
            do
            {
              if (v26 >= 1)
              {
                v27 = 0;
                v28 = v3[16];
                v80 = v25;
                do
                {
                  if (v28 >= 1)
                  {
                    v92 = 0;
                    v29 = v3[15];
                    v83 = v27;
                    do
                    {
                      if (v29 >= 1)
                      {
                        for (i = 0; i < v29; ++i)
                        {
                          v31 = *(a1 + 8);
                          if (v31 >= 1)
                          {
                            v32 = *(a1 + 16);
                            do
                            {
                              v33 = v31 - 1;
                              if (v32 >= 1)
                              {
                                v78 = v31;
                                v34 = 0;
                                v35 = 0;
                                v91 = v33;
                                do
                                {
                                  v36 = v3[21] + v34 * PaletteVectorSize;
                                  v37 = *(a1 + 32);
                                  v90 = v36;
                                  if (v37 == 1)
                                  {
                                    v36 = 0;
                                  }

                                  v38 = v36 + v37;
                                  do
                                  {
                                    v38 -= v37;
                                  }

                                  while (v38 >= v37);
                                  v39 = v3[2];
                                  v86 = v35;
                                  if (v39 && v3[22] > v34)
                                  {
                                    v40 = v25;
                                    v41 = v27;
                                    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v39);
                                    v33 = v91;
                                    v27 = v41;
                                    v25 = v40;
                                    v43 = ValueAsInt32;
                                  }

                                  else
                                  {
                                    v43 = 0;
                                  }

                                  v44 = v3[5];
                                  if (v44 >= 1)
                                  {
                                    v45 = 0;
                                    v46 = v3[4];
                                    v88 = v34;
                                    do
                                    {
                                      if (v46 >= 1)
                                      {
                                        v47 = 0;
                                        v48 = v21 - v45;
                                        v49 = v3[3];
                                        v84 = v45;
                                        do
                                        {
                                          if (v49 >= 1)
                                          {
                                            v50 = 0;
                                            v87 = v47;
                                            v51 = v25 - v47;
                                            v52 = v27;
                                            while (1)
                                            {
                                              v53 = v52 + v3[18] + i * v3[9];
                                              if (v53 < 0 || (v54 = v51 + v3[10] * v92 + v3[19], v54 < 0) || (v55 = v33 - *(a1 + 8) + v3[17], v56 = v48 + v3[20] + v55 * v3[11], v56 < 0) || v53 >= *(a1 + 56) || v54 >= *(a1 + 48) || v56 >= *(a1 + 64) || v3[22] <= v88 || v55 < 0)
                                              {
                                                v61 = v43;
                                                if ((*(a1 + 408) & 1) == 0)
                                                {
                                                  v61 = v43;
                                                  if (v90 < v37)
                                                  {
                                                    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                                    if (v63)
                                                    {
                                                      _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v63, v64, v65, v66, v67, v68, v69, v70);
                                                    }

                                                    return 3;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v93 = v38;
                                                *&v94 = v85;
                                                *(&v94 + 1) = v54;
                                                *&v95 = v53;
                                                *(&v95 + 1) = v56;
                                                v57 = (**v89)(v89);
                                                v33 = v91;
                                                v58 = v57;
                                                if (!v3[2] || (v79 = v57, v59 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v58 = v79, v33 = v91, v60 = v59, v61 = v43, (v60 & 1) == 0))
                                                {
                                                  v61 = v43;
                                                  if (*(a1 + 24) == 1)
                                                  {
                                                    v61 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint2>(v89, v58);
                                                    v33 = v91;
                                                  }
                                                }
                                              }

                                              if (*(a1 + 24) == 1)
                                              {
                                                ZinIrOutputBitStream2::Push(*(a1 + 424), v61 & 3);
                                                v33 = v91;
                                              }

                                              ++v50;
                                              v49 = v3[3];
                                              --v52;
                                              if (v50 >= v49)
                                              {
                                                v46 = v3[4];
                                                v21 = v81;
                                                PaletteVectorSize = v82;
                                                v25 = v80;
                                                v27 = v83;
                                                v45 = v84;
                                                v47 = v87;
                                                break;
                                              }
                                            }
                                          }

                                          ++v47;
                                        }

                                        while (v47 < v46);
                                        v44 = v3[5];
                                      }

                                      ++v45;
                                    }

                                    while (v45 < v44);
                                  }

                                  v34 = (v86 + 1);
                                  v32 = *(a1 + 16);
                                  v35 = v86 + 1;
                                }

                                while (v32 > v34);
                                v31 = v78;
                              }

                              v62 = v31 <= 1;
                              v31 = v33;
                            }

                            while (!v62);
                            v29 = v3[15];
                          }
                        }

                        v28 = v3[16];
                        v23 = v85;
                      }

                      ++v92;
                    }

                    while (v92 < v28);
                    v26 = v3[6];
                  }

                  ++v27;
                }

                while (v27 < v26);
                v24 = v3[7];
              }

              ++v25;
            }

            while (v25 < v24);
            v22 = *(a1 + 40);
          }

          ++v23;
        }

        while (v23 < v22);
        v20 = v3[8];
      }

      v1 = 0;
      ++v21;
    }

    while (v21 < v20);
  }

  return v1;
}

void sub_1A7434E84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrOutputBitStream2::Push(uint64_t this, char a2)
{
  v2 = a2 & 3;
  v3 = (*this)++;
  v4 = v3 & 3;
  if (v4)
  {
    **(this + 16) |= v2 << (2 * v4);
    if (v4 == 3)
    {
      ++*(this + 16);
    }
  }

  else
  {
    **(this + 16) = v2;
  }

  return this;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint2,ZinIrOutputStreamCompressedUnaligned<(unsigned char)2>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39358;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint2,ZinIrOutputStreamCompressedUnaligned<(unsigned char)2>>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v30) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v30);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = *(a1 + 136) + ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!v6)
  {
    operator new[]();
  }

  v13 = *(a1 + 224);
  v14 = *(v13 + 792);
  v15 = *(a1 + 208);
  v16 = *(v13 + 1308);
  v17 = *(v13 + 768);
  v46 = 2;
  v47 = 3;
  v18 = 0xFFFFLL;
  if (v14 == 3)
  {
    v18 = 0xFFFFFFLL;
  }

  v48 = v14;
  v49 = v18;
  v52 = v15;
  v53 = v16;
  v51 = v17;
  v50 = 0;
  v40[0] = v6;
  v40[1] = v6 + v14;
  v41 = 0;
  v42 = 0;
  v43 = v17;
  v44 = v6 + v14 + v17;
  v45 = 0;
  v39 = 0;
  v31[0] = a1;
  v31[1] = v12;
  v31[2] = v8;
  v32 = 1;
  v19 = *(v5 + 56);
  v35 = *(v5 + 88);
  v20 = *(v5 + 72);
  v33 = v19;
  v34 = v20;
  ZinIrWeight::ZinIrWeight(v36, v10);
  v36[336] = v11;
  v37 = &v39;
  v38 = v40;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_25;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E36ZinIrOutputStreamCompressedUnalignedILh2EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v31);
    goto LABEL_26;
  }

  if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E36ZinIrOutputStreamCompressedUnalignedILh2EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v31);
  }

  else
  {
LABEL_25:
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E36ZinIrOutputStreamCompressedUnalignedILh2EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v31);
  }

LABEL_26:
  v22 = v21;
  v23 = v44 - (v45 == 0) - v40[0] + 1;
  v24 = v23 - v48;
  if (v21)
  {
    if (v48)
    {
      v25 = 0;
      for (i = 0; i < v48; ++i)
      {
        *(v40[0] + i) = v24 >> v25;
        v25 += 8;
      }
    }

    *a3 = v23;
  }

  else
  {
    if (v48)
    {
      v27 = 0;
      for (j = 0; j < v48; ++j)
      {
        *(v40[0] + j) = v24 >> v27;
        v27 += 8;
      }
    }

    *a3 = v23;
    v22 = 0;
  }

  ZinIrWeight::~ZinIrWeight(v36);
  return v22;
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E36ZinIrOutputStreamCompressedUnalignedILh2EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v44[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v44);
  v46 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v39 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v39 + 208))(v39);
    (*(*v39 + 200))(v39);
  }

  v45 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v45);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
LABEL_8:
  if (v7 < 1)
  {
    goto LABEL_54;
  }

  v42 = 0;
  v8 = v2[15];
  v40 = v6;
LABEL_10:
  if (v8 < 1)
  {
    goto LABEL_52;
  }

  v9 = 0;
LABEL_12:
  v10 = *(a1 + 8);
  if (v10 < 1)
  {
    goto LABEL_50;
  }

  v11 = *(a1 + 16);
  while (1)
  {
    v12 = v10 - 1;
    if (v11 >= 1)
    {
      break;
    }

LABEL_47:
    v29 = v10 <= 1;
    v10 = v12;
    if (v29)
    {
      v8 = v2[15];
LABEL_50:
      if (++v9 < v8)
      {
        goto LABEL_12;
      }

      v7 = v2[16];
      v6 = v40;
LABEL_52:
      if (++v42 >= v7)
      {
        v5 = *(a1 + 40);
LABEL_54:
        if (++v6 >= v5)
        {
          return 0;
        }

        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v41 = v10;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = v2[21];
    v16 = v15 + v13 * PaletteVectorSize;
    v17 = *(a1 + 32);
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15 + v13 * PaletteVectorSize;
    }

    v19 = v18 + v17;
    do
    {
      v19 -= v17;
    }

    while (v19 >= v17);
    v20 = v2[2];
    if (v20 && v2[22] > v13)
    {
      ValueAsInt32 = ZinIrVector::GetValueAsInt32(v20);
    }

    else
    {
      ValueAsInt32 = 0;
    }

    v22 = v2[18] + v2[9] * v9;
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v2[19] + v2[10] * v42;
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v12 - *(a1 + 8) + v2[17];
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] > v13 && (v24 & 0x8000000000000000) == 0)
        {
          v44[0] = v19;
          v44[1] = v40;
          v44[2] = v23;
          v44[3] = v22;
          v44[4] = v25;
          v26 = (**(a1 + 72))(a1 + 72, v44);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v26) & 1) != 0)
          {
            IsElemZeroPointAt = 1;
          }

          else
          {
            LOBYTE(v28) = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v28 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint2>(a1 + 72, v26) & 3;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v26, v19, *(v2[28] + 1308), ValueAsInt32);
            ValueAsInt32 = v28;
          }

          goto LABEL_38;
        }
      }
    }

    IsElemZeroPointAt = 1;
    if ((*(a1 + 408) & 1) == 0 && v16 < v17)
    {
      break;
    }

LABEL_38:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::Push(*(a1 + 424), ValueAsInt32, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v11 = *(a1 + 16);
    v13 = ++v14;
    if (v11 <= v14)
    {
      v10 = v41;
      goto LABEL_47;
    }
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  return 3;
}

void sub_1A7435858(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E36ZinIrOutputStreamCompressedUnalignedILh2EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v45[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v45);
  v47 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v41 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v41 + 208))(v41);
    (*(*v41 + 200))(v41);
  }

  v46 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v46);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_51:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_49:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_51;
    }
  }

  v42 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  v44 = v11;
  if (v12 == 1)
  {
    v11 = 0;
  }

  v13 = v11 + v12;
  do
  {
    v13 -= v12;
  }

  while (v13 >= v12);
  v14 = v2[2];
  if (v14 && v2[22])
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v14);
  }

  else
  {
    ValueAsInt32 = 0;
  }

  v16 = 0;
  v17 = 1;
LABEL_21:
  v18 = 0;
  v43 = v17;
  v19 = 1;
  while (1)
  {
    v20 = v19;
    v21 = v18 + v2[9] * v10 + v2[18];
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v16 + v2[10] * v8 + v2[19];
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = v2[17] - *(a1 + 8);
        v24 = v2[20] + v23 * v2[11];
        if ((v24 & 0x8000000000000000) == 0 && v21 < *(a1 + 56) && v22 < *(a1 + 48) && v24 < *(a1 + 64) && v2[22] && (v23 & 0x8000000000000000) == 0)
        {
          v45[0] = v13;
          v45[1] = v42;
          v45[2] = v22;
          v45[3] = v21;
          v45[4] = v24;
          v25 = (**(a1 + 72))(a1 + 72, v45);
          if (!v2[2] || (v26 = v25, v27 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v25 = v26, (v27 & 1) == 0))
          {
            v29 = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v30 = v25;
              v31 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint2>(a1 + 72, v25);
              v25 = v30;
              v29 = v31 & 3;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v25, v13, *(v2[28] + 1308), ValueAsInt32);
            goto LABEL_37;
          }

          IsElemZeroPointAt = 1;
LABEL_36:
          v29 = ValueAsInt32;
          goto LABEL_37;
        }
      }
    }

    IsElemZeroPointAt = 1;
    if (*(a1 + 408))
    {
      goto LABEL_36;
    }

    v29 = ValueAsInt32;
    if (v44 < v12)
    {
      break;
    }

LABEL_37:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::Push(*(a1 + 424), v29, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v19 = 0;
    v18 = -1;
    if ((v20 & 1) == 0)
    {
      v17 = 0;
      v16 = -1;
      if (v43)
      {
        goto LABEL_21;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v42;
        goto LABEL_49;
      }

      goto LABEL_12;
    }
  }

  v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v33)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  return 3;
}

void sub_1A7435C60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint2E36ZinIrOutputStreamCompressedUnalignedILh2EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v74[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v74);
  v76 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
  }

  else
  {
    v59 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    (*(*v59 + 208))(v59);
    (*(*v59 + 200))(v59);
  }

  v75 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v75);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[8];
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a1 + 40);
  v62 = PaletteVectorSize;
LABEL_8:
  if (v8 < 1)
  {
    goto LABEL_77;
  }

  v9 = 0;
  v10 = v2[7];
  v61 = v7;
LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_75;
  }

  v11 = 0;
  v12 = v2[6];
  v67 = v9;
LABEL_12:
  if (v12 < 1)
  {
    goto LABEL_73;
  }

  v13 = 0;
  v14 = v2[16];
  v64 = v11;
LABEL_14:
  if (v14 < 1)
  {
    goto LABEL_71;
  }

  v73 = 0;
  v15 = v2[15];
  v65 = v13;
LABEL_16:
  if (v15 < 1)
  {
    goto LABEL_69;
  }

  v16 = 0;
LABEL_18:
  v17 = *(a1 + 8);
  if (v17 < 1)
  {
    goto LABEL_67;
  }

  v18 = *(a1 + 16);
  v71 = v16;
LABEL_20:
  v19 = v17 - 1;
  if (v18 < 1)
  {
    goto LABEL_64;
  }

  v60 = v17;
  v20 = 0;
  v21 = 0;
  v72 = v17 - 1;
LABEL_22:
  v22 = v2[21] + v20 * PaletteVectorSize;
  v23 = *(a1 + 32);
  v70 = v22;
  if (v23 == 1)
  {
    v22 = 0;
  }

  v24 = v22 + v23;
  do
  {
    v24 -= v23;
  }

  while (v24 >= v23);
  v25 = v2[2];
  if (v25 && v2[22] > v20)
  {
    v26 = v13;
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v25);
    v16 = v71;
    v19 = v72;
    v13 = v26;
    v28 = ValueAsInt32;
  }

  else
  {
    v28 = 0;
  }

  v29 = v2[5];
  if (v29 < 1)
  {
    goto LABEL_62;
  }

  v30 = 0;
  v31 = v2[4];
  v69 = v20;
  v63 = v21;
LABEL_32:
  if (v31 < 1)
  {
    goto LABEL_61;
  }

  v32 = 0;
  v33 = v7 - v30;
  v34 = v2[3];
  v66 = v30;
  while (v34 < 1)
  {
LABEL_59:
    if (++v32 >= v31)
    {
      v29 = v2[5];
      v7 = v61;
      PaletteVectorSize = v62;
      v21 = v63;
LABEL_61:
      if (++v30 < v29)
      {
        goto LABEL_32;
      }

LABEL_62:
      v18 = *(a1 + 16);
      v20 = ++v21;
      if (v18 > v21)
      {
        goto LABEL_22;
      }

      v9 = v67;
      v17 = v60;
LABEL_64:
      v49 = v17 <= 1;
      v17 = v19;
      if (!v49)
      {
        goto LABEL_20;
      }

      v15 = v2[15];
LABEL_67:
      if (++v16 < v15)
      {
        goto LABEL_18;
      }

      v14 = v2[16];
LABEL_69:
      if (++v73 < v14)
      {
        goto LABEL_16;
      }

      v12 = v2[6];
LABEL_71:
      if (++v13 >= v12)
      {
        v10 = v2[7];
LABEL_73:
        if (++v11 < v10)
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 40);
LABEL_75:
        if (++v9 >= v8)
        {
          v6 = v2[8];
LABEL_77:
          if (++v7 >= v6)
          {
            return 0;
          }

          goto LABEL_8;
        }

        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  v35 = 0;
  v68 = v32;
  v36 = v11 - v32;
  v37 = v13;
  while (1)
  {
    v38 = v37 + v2[18] + v16 * v2[9];
    if ((v38 & 0x8000000000000000) == 0)
    {
      v39 = v36 + v2[10] * v73 + v2[19];
      if ((v39 & 0x8000000000000000) == 0)
      {
        v40 = v19 - *(a1 + 8) + v2[17];
        v41 = v33 + v2[20] + v40 * v2[11];
        if ((v41 & 0x8000000000000000) == 0 && v38 < *(a1 + 56) && v39 < *(a1 + 48) && v41 < *(a1 + 64) && v2[22] > v69 && (v40 & 0x8000000000000000) == 0)
        {
          v74[0] = v24;
          v74[1] = v67;
          v74[2] = v39;
          v74[3] = v38;
          v74[4] = v41;
          v42 = (**(a1 + 72))(a1 + 72, v74);
          if (v2[2] && (v43 = v42, v44 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v42 = v43, (v44 & 1) != 0))
          {
            IsElemZeroPointAt = 1;
            v46 = v28;
          }

          else
          {
            v46 = v28;
            if (*(a1 + 24) == 1)
            {
              v47 = v42;
              v48 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint2>(a1 + 72, v42);
              v42 = v47;
              v46 = v48 & 3;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v42, v24, *(v2[28] + 1308), v28);
          }

          v16 = v71;
          v19 = v72;
          goto LABEL_49;
        }
      }
    }

    IsElemZeroPointAt = 1;
    v46 = v28;
    if ((*(a1 + 408) & 1) == 0 && v70 < v23)
    {
      break;
    }

LABEL_49:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::Push(*(a1 + 424), v46, IsElemZeroPointAt);
      v16 = v71;
      v19 = v72;
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    ++v35;
    v34 = v2[3];
    --v37;
    if (v35 >= v34)
    {
      v31 = v2[4];
      v11 = v64;
      v13 = v65;
      v30 = v66;
      v32 = v68;
      goto LABEL_59;
    }
  }

  v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v51)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v51, v52, v53, v54, v55, v56, v57, v58);
  }

  return 3;
}

void sub_1A74361BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint3,ZinIrOutputBitStream3>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39398;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint3,ZinIrOutputBitStream3>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v19) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v19);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = *(a1 + 136) + ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!v6)
  {
    operator new[]();
  }

  v30 = v6;
  v31 = v6;
  v28 = 0;
  v29 = 0;
  v20[0] = a1;
  v20[1] = v12;
  v20[2] = v8;
  v21 = 1;
  v13 = *(v5 + 56);
  v24 = *(v5 + 88);
  v23 = *(v5 + 72);
  v22 = v13;
  ZinIrWeight::ZinIrWeight(v25, v10);
  v25[336] = v11;
  v26 = &v28;
  v27 = &v29;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_23;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E21ZinIrOutputBitStream3E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v20);
    goto LABEL_24;
  }

  if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E21ZinIrOutputBitStream3E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v20);
  }

  else
  {
LABEL_23:
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E21ZinIrOutputBitStream3E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v20);
  }

LABEL_24:
  v15 = v14;
  v16 = v31 - v30;
  if ((v29 & 7) == 2 || (v29 & 7) == 5)
  {
    ++v16;
  }

  *a3 = v16;
  ZinIrWeight::~ZinIrWeight(v25);
  return v15;
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E21ZinIrOutputBitStream3E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v63 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v63);
  v62 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v6 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v8 = (*(*v6 + 208))(v6);
    v7 = (*(*v6 + 200))(v6);
    v10 = 0;
    v9 = *(a1 + 16);
  }

  v61 = 0;
  v55 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v61);
  v12 = v3[16];
  v13 = v12 == 1 && v3[15] == 1;
  if (v10 & 1 | !IsContiguousCrsdStride | (v8 | v7) & 1 || (v9 < v3[22] + 1 ? (v14 = PaletteVectorSize == 1) : (v14 = 0), !v14 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20]))
  {
    v15 = 1;
    goto LABEL_20;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v13 = 1;
  }

  v15 = 1;
  if (*(a1 + 8) != 1 || !v13)
  {
    goto LABEL_20;
  }

  v48 = *(a1 + 32);
  if (v48 != 1)
  {
    v51 = v3[21];
    if (v51 + v9 > v48)
    {
      goto LABEL_20;
    }

    v49 = *(a1 + 40) * v12 * v3[15];
    if (*(a1 + 24))
    {
      v50 = v51 % v48;
      goto LABEL_87;
    }

LABEL_95:
    v15 = 0;
    v1 = 0;
    **(a1 + 416) = v49 * v9;
    goto LABEL_20;
  }

  v49 = *(a1 + 40) * v12 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_95;
  }

  v50 = 0;
LABEL_87:
  v60 = 0u;
  v59 = 0u;
  v58 = v50;
  (**v55)(v55, &v58);
  v1 = *(v6 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v6 + 8)))
  {
    goto LABEL_20;
  }

  if (v63 > 8)
  {
    if (v1 != 101 || v63 != 16)
    {
      goto LABEL_20;
    }

    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_20;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v52 = *(v6 + 120);
  }

  else
  {
    v52 = v6 + 112;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v52)
  {
    if (!BNNSBitTranspose())
    {
      ZinAssertImpl("feature not supported", v9);
    }

    v15 = 0;
    v1 = 3;
  }

LABEL_20:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v15)
  {
    v16 = *(a1 + 40);
    if (v16 < 1)
    {
      return 0;
    }

    v17 = 0;
    v18 = v3[16];
    do
    {
      if (v18 >= 1)
      {
        v56 = 0;
        v19 = v3[15];
        v53 = v17;
        do
        {
          if (v19 >= 1)
          {
            for (i = 0; i < v19; ++i)
            {
              v21 = *(a1 + 8);
              if (v21 >= 1)
              {
                v22 = *(a1 + 16);
                do
                {
                  v23 = v21 - 1;
                  if (v22 >= 1)
                  {
                    v54 = v21;
                    v24 = 0;
                    v25 = 0;
                    while (1)
                    {
                      v26 = v3[21];
                      v27 = v26 + v24 * PaletteVectorSize;
                      v28 = *(a1 + 32);
                      if (v28 == 1)
                      {
                        v29 = 0;
                      }

                      else
                      {
                        v29 = v26 + v24 * PaletteVectorSize;
                      }

                      v30 = v29 + v28;
                      do
                      {
                        v30 -= v28;
                      }

                      while (v30 >= v28);
                      v31 = v3[2];
                      if (v31 && v3[22] > v24)
                      {
                        ValueAsInt32 = ZinIrVector::GetValueAsInt32(v31);
                      }

                      else
                      {
                        ValueAsInt32 = 0;
                      }

                      v33 = v3[18] + v3[9] * i;
                      if (v33 < 0 || (v34 = v3[19] + v3[10] * v56, v34 < 0) || (v35 = v23 - *(a1 + 8) + v3[17], v36 = v3[20] + v35 * v3[11], v36 < 0) || v33 >= *(a1 + 56) || v34 >= *(a1 + 48) || v36 >= *(a1 + 64) || v3[22] <= v24 || v35 < 0)
                      {
                        if ((*(a1 + 408) & 1) == 0 && v27 < v28)
                        {
                          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          if (v39)
                          {
                            _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v39, v40, v41, v42, v43, v44, v45, v46);
                          }

                          return 3;
                        }
                      }

                      else
                      {
                        v58 = v30;
                        *&v59 = v53;
                        *(&v59 + 1) = v34;
                        *&v60 = v33;
                        *(&v60 + 1) = v36;
                        v37 = (**v55)(v55);
                        if ((!v3[2] || ((*(**(a1 + 208) + 184))(*(a1 + 208), v37) & 1) == 0) && *(a1 + 24) == 1)
                        {
                          ValueAsInt32 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint3>(v55, v37);
                        }
                      }

                      if (*(a1 + 24) == 1)
                      {
                        ZinIrOutputBitStream3::Push(*(a1 + 424), ValueAsInt32 & 7);
                      }

                      v22 = *(a1 + 16);
                      v24 = ++v25;
                      if (v22 <= v25)
                      {
                        v21 = v54;
                        break;
                      }
                    }
                  }

                  v38 = v21 <= 1;
                  v21 = v23;
                }

                while (!v38);
                v19 = v3[15];
              }
            }

            v18 = v3[16];
            v17 = v53;
          }

          ++v56;
        }

        while (v56 < v18);
        v16 = *(a1 + 40);
      }

      v1 = 0;
      ++v17;
    }

    while (v17 < v16);
  }

  return v1;
}

void sub_1A7436D60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E21ZinIrOutputBitStream3E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v43[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v43);
  v45 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v39 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v39 + 208))(v39);
    (*(*v39 + 200))(v39);
  }

  v44 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v44);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_45:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_43:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_45;
    }
  }

  v41 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v2[21];
  }

  v14 = v13 + v12;
  do
  {
    v14 -= v12;
  }

  while (v14 >= v12);
  v15 = v2[2];
  if (v15 && v2[22])
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v15);
  }

  else
  {
    ValueAsInt32 = 0;
  }

  v17 = 0;
  v18 = 1;
LABEL_22:
  v19 = 0;
  v42 = v18;
  v20 = 1;
  while (1)
  {
    v21 = v20;
    v22 = v19 + v2[9] * v10 + v2[18];
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v17 + v2[10] * v8 + v2[19];
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v2[17] - *(a1 + 8);
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] && (v24 & 0x8000000000000000) == 0)
        {
          v43[0] = v14;
          v43[1] = v41;
          v43[2] = v23;
          v43[3] = v22;
          v43[4] = v25;
          v26 = (**(a1 + 72))(a1 + 72, v43);
          if (!v2[2] || (v40 = v26, v27 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v26 = v40, v28 = v27, v29 = ValueAsInt32, (v28 & 1) == 0))
          {
            v29 = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v29 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint3>(a1 + 72, v26);
            }
          }

          goto LABEL_37;
        }
      }
    }

    v29 = ValueAsInt32;
    if ((*(a1 + 408) & 1) == 0)
    {
      v29 = ValueAsInt32;
      if (v11 < v12)
      {
        break;
      }
    }

LABEL_37:
    if (*(a1 + 24) == 1)
    {
      ZinIrOutputBitStream3::Push(*(a1 + 424), v29 & 7);
    }

    v20 = 0;
    v19 = -1;
    if ((v21 & 1) == 0)
    {
      v18 = 0;
      v17 = -1;
      if (v42)
      {
        goto LABEL_22;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v41;
        goto LABEL_43;
      }

      goto LABEL_12;
    }
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  return 3;
}

void sub_1A7437148(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E21ZinIrOutputBitStream3E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v94 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v94);
  v93 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v7 = *(a1 + 208);
    v6 = *(a1 + 216);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v9 = (*(*v7 + 208))(v7);
    v8 = (*(*v7 + 200))(v7);
    v11 = 0;
    v10 = *(a1 + 16);
  }

  v92 = 0;
  v85 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v92);
  v13 = v3[16];
  v14 = v13 == 1 && v3[15] == 1;
  if (v11 & 1 | !IsContiguousCrsdStride | (v9 | v8) & 1 || (v10 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[5] != 1 || v3[4] != 1 || v3[3] != 1 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20] || *(a1 + 8) != 1 || v3[8] != 1))
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (v3[7] != 1)
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (v3[6] != 1 || !v14)
  {
    goto LABEL_33;
  }

  v17 = *(a1 + 32);
  if (v17 != 1)
  {
    v72 = v3[21];
    if (v72 + v10 > v17)
    {
      goto LABEL_33;
    }

    v18 = *(a1 + 40) * v13 * v3[15];
    if (*(a1 + 24))
    {
      v19 = v72 % v17;
      goto LABEL_117;
    }

LABEL_125:
    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v18 * v10;
    goto LABEL_33;
  }

  v18 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_125;
  }

  v19 = 0;
LABEL_117:
  v90 = 0u;
  v91 = 0u;
  v89 = v19;
  (**v85)(v85, &v89);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_33;
  }

  if (v94 > 8)
  {
    if (v1 != 101 || v94 != 16)
    {
      goto LABEL_33;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_33;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v73 = *(v7 + 120);
  }

  else
  {
    v73 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v73)
  {
    if (!BNNSBitTranspose())
    {
      ZinAssertImpl("feature not supported", v10);
    }

    v16 = 0;
    v1 = 3;
  }

LABEL_33:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v16)
  {
    v20 = v3[8];
    if (v20 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = *(a1 + 40);
    v78 = PaletteVectorSize;
    do
    {
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v3[7];
        v77 = v21;
        do
        {
          if (v24 >= 1)
          {
            v25 = 0;
            v26 = v3[6];
            v81 = v23;
            do
            {
              if (v26 >= 1)
              {
                v27 = 0;
                v28 = v3[16];
                v76 = v25;
                do
                {
                  if (v28 >= 1)
                  {
                    v88 = 0;
                    v29 = v3[15];
                    v79 = v27;
                    do
                    {
                      if (v29 >= 1)
                      {
                        for (i = 0; i < v29; ++i)
                        {
                          v31 = *(a1 + 8);
                          if (v31 >= 1)
                          {
                            v32 = *(a1 + 16);
                            do
                            {
                              v33 = v31 - 1;
                              if (v32 >= 1)
                              {
                                v74 = v31;
                                v34 = 0;
                                v35 = 0;
                                v87 = v33;
                                do
                                {
                                  v36 = v3[21] + v34 * PaletteVectorSize;
                                  v37 = *(a1 + 32);
                                  v86 = v36;
                                  if (v37 == 1)
                                  {
                                    v36 = 0;
                                  }

                                  v38 = v36 + v37;
                                  do
                                  {
                                    v38 -= v37;
                                  }

                                  while (v38 >= v37);
                                  v39 = v3[2];
                                  v82 = v35;
                                  if (v39 && v3[22] > v34)
                                  {
                                    v40 = v25;
                                    v41 = v27;
                                    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v39);
                                    v33 = v87;
                                    v27 = v41;
                                    v25 = v40;
                                    v43 = ValueAsInt32;
                                  }

                                  else
                                  {
                                    v43 = 0;
                                  }

                                  v44 = v3[5];
                                  if (v44 >= 1)
                                  {
                                    v45 = 0;
                                    v46 = v3[4];
                                    v84 = v34;
                                    do
                                    {
                                      if (v46 >= 1)
                                      {
                                        v47 = 0;
                                        v48 = v21 - v45;
                                        v49 = v3[3];
                                        v80 = v45;
                                        do
                                        {
                                          if (v49 >= 1)
                                          {
                                            v50 = 0;
                                            v83 = v47;
                                            v51 = v25 - v47;
                                            v52 = v27;
                                            while (1)
                                            {
                                              v53 = v52 + v3[18] + i * v3[9];
                                              if (v53 < 0 || (v54 = v51 + v3[10] * v88 + v3[19], v54 < 0) || (v55 = v33 - *(a1 + 8) + v3[17], v56 = v48 + v3[20] + v55 * v3[11], v56 < 0) || v53 >= *(a1 + 56) || v54 >= *(a1 + 48) || v56 >= *(a1 + 64) || v3[22] <= v84 || v55 < 0)
                                              {
                                                v61 = v43;
                                                if ((*(a1 + 408) & 1) == 0)
                                                {
                                                  v61 = v43;
                                                  if (v86 < v37)
                                                  {
                                                    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                                    if (v63)
                                                    {
                                                      _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v63, v64, v65, v66, v67, v68, v69, v70);
                                                    }

                                                    return 3;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v89 = v38;
                                                *&v90 = v81;
                                                *(&v90 + 1) = v54;
                                                *&v91 = v53;
                                                *(&v91 + 1) = v56;
                                                v57 = (**v85)(v85);
                                                v33 = v87;
                                                v58 = v57;
                                                if (!v3[2] || (v75 = v57, v59 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v58 = v75, v33 = v87, v60 = v59, v61 = v43, (v60 & 1) == 0))
                                                {
                                                  v61 = v43;
                                                  if (*(a1 + 24) == 1)
                                                  {
                                                    v61 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint3>(v85, v58);
                                                    v33 = v87;
                                                  }
                                                }
                                              }

                                              if (*(a1 + 24) == 1)
                                              {
                                                ZinIrOutputBitStream3::Push(*(a1 + 424), v61 & 7);
                                                v33 = v87;
                                              }

                                              ++v50;
                                              v49 = v3[3];
                                              --v52;
                                              if (v50 >= v49)
                                              {
                                                v46 = v3[4];
                                                v21 = v77;
                                                PaletteVectorSize = v78;
                                                v25 = v76;
                                                v27 = v79;
                                                v45 = v80;
                                                v47 = v83;
                                                break;
                                              }
                                            }
                                          }

                                          ++v47;
                                        }

                                        while (v47 < v46);
                                        v44 = v3[5];
                                      }

                                      ++v45;
                                    }

                                    while (v45 < v44);
                                  }

                                  v34 = (v82 + 1);
                                  v32 = *(a1 + 16);
                                  v35 = v82 + 1;
                                }

                                while (v32 > v34);
                                v31 = v74;
                              }

                              v62 = v31 <= 1;
                              v31 = v33;
                            }

                            while (!v62);
                            v29 = v3[15];
                          }
                        }

                        v28 = v3[16];
                        v23 = v81;
                      }

                      ++v88;
                    }

                    while (v88 < v28);
                    v26 = v3[6];
                  }

                  ++v27;
                }

                while (v27 < v26);
                v24 = v3[7];
              }

              ++v25;
            }

            while (v25 < v24);
            v22 = *(a1 + 40);
          }

          ++v23;
        }

        while (v23 < v22);
        v20 = v3[8];
      }

      v1 = 0;
      ++v21;
    }

    while (v21 < v20);
  }

  return v1;
}

void sub_1A7437A28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *ZinIrOutputBitStream3::Push(void *this, char a2)
{
  v2 = a2 & 7;
  v3 = (*this)++;
  v4 = v3 & 7;
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        v5 = this[2];
        LOBYTE(v2) = *v5 | (2 * v2);
        goto LABEL_15;
      }

      v6 = this[2];
      this[2] = v6 + 1;
      *v6 |= a2 << 6;
      v2 >>= 2;
    }

    else if (v4)
    {
      v5 = this[2];
      LOBYTE(v2) = *v5 | (8 * v2);
LABEL_15:
      *v5 = v2;
      return this;
    }

    goto LABEL_13;
  }

  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      v5 = this[2];
      LOBYTE(v2) = *v5 | (16 * v2);
      goto LABEL_15;
    }

    v7 = this[2];
    this[2] = v7 + 1;
    *v7 |= a2 << 7;
    v2 >>= 1;
LABEL_13:
    v5 = this[2];
    goto LABEL_15;
  }

  if (v4 == 6)
  {
    v5 = this[2];
    LOBYTE(v2) = *v5 | (4 * v2);
    goto LABEL_15;
  }

  v8 = this[2];
  this[2] = v8 + 1;
  *v8 |= 32 * a2;
  return this;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint3,ZinIrOutputStreamCompressedUnaligned<(unsigned char)3>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A393D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint3,ZinIrOutputStreamCompressedUnaligned<(unsigned char)3>>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v30) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v30);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = *(a1 + 136) + ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!v6)
  {
    operator new[]();
  }

  v13 = *(a1 + 224);
  v14 = *(v13 + 792);
  v15 = *(a1 + 208);
  v16 = *(v13 + 1308);
  v17 = *(v13 + 768);
  v46 = 3;
  v47 = 7;
  v18 = 0xFFFFLL;
  if (v14 == 3)
  {
    v18 = 0xFFFFFFLL;
  }

  v48 = v14;
  v49 = v18;
  v52 = v15;
  v53 = v16;
  v51 = v17;
  v50 = 0;
  v40[0] = v6;
  v40[1] = v6 + v14;
  v41 = 0;
  v42 = 0;
  v43 = v17;
  v44 = v6 + v14 + v17;
  v45 = 0;
  v39 = 0;
  v31[0] = a1;
  v31[1] = v12;
  v31[2] = v8;
  v32 = 1;
  v19 = *(v5 + 56);
  v35 = *(v5 + 88);
  v20 = *(v5 + 72);
  v33 = v19;
  v34 = v20;
  ZinIrWeight::ZinIrWeight(v36, v10);
  v36[336] = v11;
  v37 = &v39;
  v38 = v40;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_25;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E36ZinIrOutputStreamCompressedUnalignedILh3EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v31);
    goto LABEL_26;
  }

  if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E36ZinIrOutputStreamCompressedUnalignedILh3EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v31);
  }

  else
  {
LABEL_25:
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E36ZinIrOutputStreamCompressedUnalignedILh3EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v31);
  }

LABEL_26:
  v22 = v21;
  v23 = v44 - (v45 == 0) - v40[0] + 1;
  v24 = v23 - v48;
  if (v21)
  {
    if (v48)
    {
      v25 = 0;
      for (i = 0; i < v48; ++i)
      {
        *(v40[0] + i) = v24 >> v25;
        v25 += 8;
      }
    }

    *a3 = v23;
  }

  else
  {
    if (v48)
    {
      v27 = 0;
      for (j = 0; j < v48; ++j)
      {
        *(v40[0] + j) = v24 >> v27;
        v27 += 8;
      }
    }

    *a3 = v23;
    v22 = 0;
  }

  ZinIrWeight::~ZinIrWeight(v36);
  return v22;
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E36ZinIrOutputStreamCompressedUnalignedILh3EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v44[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v44);
  v46 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v39 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v39 + 208))(v39);
    (*(*v39 + 200))(v39);
  }

  v45 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v45);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
LABEL_8:
  if (v7 < 1)
  {
    goto LABEL_54;
  }

  v42 = 0;
  v8 = v2[15];
  v40 = v6;
LABEL_10:
  if (v8 < 1)
  {
    goto LABEL_52;
  }

  v9 = 0;
LABEL_12:
  v10 = *(a1 + 8);
  if (v10 < 1)
  {
    goto LABEL_50;
  }

  v11 = *(a1 + 16);
  while (1)
  {
    v12 = v10 - 1;
    if (v11 >= 1)
    {
      break;
    }

LABEL_47:
    v29 = v10 <= 1;
    v10 = v12;
    if (v29)
    {
      v8 = v2[15];
LABEL_50:
      if (++v9 < v8)
      {
        goto LABEL_12;
      }

      v7 = v2[16];
      v6 = v40;
LABEL_52:
      if (++v42 >= v7)
      {
        v5 = *(a1 + 40);
LABEL_54:
        if (++v6 >= v5)
        {
          return 0;
        }

        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v41 = v10;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = v2[21];
    v16 = v15 + v13 * PaletteVectorSize;
    v17 = *(a1 + 32);
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15 + v13 * PaletteVectorSize;
    }

    v19 = v18 + v17;
    do
    {
      v19 -= v17;
    }

    while (v19 >= v17);
    v20 = v2[2];
    if (v20 && v2[22] > v13)
    {
      ValueAsInt32 = ZinIrVector::GetValueAsInt32(v20);
    }

    else
    {
      ValueAsInt32 = 0;
    }

    v22 = v2[18] + v2[9] * v9;
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v2[19] + v2[10] * v42;
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v12 - *(a1 + 8) + v2[17];
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] > v13 && (v24 & 0x8000000000000000) == 0)
        {
          v44[0] = v19;
          v44[1] = v40;
          v44[2] = v23;
          v44[3] = v22;
          v44[4] = v25;
          v26 = (**(a1 + 72))(a1 + 72, v44);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v26) & 1) != 0)
          {
            IsElemZeroPointAt = 1;
          }

          else
          {
            LOBYTE(v28) = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v28 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint3>(a1 + 72, v26) & 7;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v26, v19, *(v2[28] + 1308), ValueAsInt32);
            ValueAsInt32 = v28;
          }

          goto LABEL_38;
        }
      }
    }

    IsElemZeroPointAt = 1;
    if ((*(a1 + 408) & 1) == 0 && v16 < v17)
    {
      break;
    }

LABEL_38:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressedUnaligned<(unsigned char)1>::Push(*(a1 + 424), ValueAsInt32, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v11 = *(a1 + 16);
    v13 = ++v14;
    if (v11 <= v14)
    {
      v10 = v41;
      goto LABEL_47;
    }
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  return 3;
}