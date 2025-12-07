void sub_1A7438494(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E36ZinIrOutputStreamCompressedUnalignedILh3EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
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
              v31 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint3>(a1 + 72, v25);
              v25 = v30;
              v29 = v31 & 7;
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

void sub_1A743889C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint3E36ZinIrOutputStreamCompressedUnalignedILh3EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
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
              v48 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint3>(a1 + 72, v42);
              v42 = v47;
              v46 = v48 & 7;
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

void sub_1A7438DF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint4,ZinIrOutputBitStream4>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39418;
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

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint4,ZinIrOutputBitStream4>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v17) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v17);
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

  v28 = v6;
  v29 = v6;
  v26 = 0;
  v27 = 0;
  v18[0] = a1;
  v18[1] = v12;
  v18[2] = v8;
  v19 = 1;
  v13 = *(v5 + 56);
  v22 = *(v5 + 88);
  v21 = *(v5 + 72);
  v20 = v13;
  ZinIrWeight::ZinIrWeight(v23, v10);
  v23[336] = v11;
  v24 = &v26;
  v25 = &v27;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_23;
  }

  if (*(a1 + 48) != 1 || *(a1 + 40) != 1 || *(a1 + 32) != 1 || *(a1 + 24) != 1)
  {
    if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
    {
      v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E21ZinIrOutputBitStream4E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v18);
      goto LABEL_24;
    }

LABEL_23:
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E21ZinIrOutputBitStream4E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v18);
    goto LABEL_24;
  }

  v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E21ZinIrOutputBitStream4E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v18);
LABEL_24:
  v15 = v14;
  *a3 = v29 - v28 + (v27 & 1);
  ZinIrWeight::~ZinIrWeight(v23);
  return v15;
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E21ZinIrOutputBitStream4E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v74 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v74);
  v73 = 0;
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

  v72 = 0;
  v66 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v72);
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
        goto LABEL_90;
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
LABEL_90:
        v71 = 0u;
        v70 = 0u;
        v69 = v58;
        (**v66)(v66, &v69);
        v1 = *(v6 + 8);
        if (SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v6 + 8)))
        {
          if (v74 > 8)
          {
            if (v1 == 101)
            {
              v13 = PaletteVectorSize;
              if (v74 != 16)
              {
                goto LABEL_20;
              }

              if (v5)
              {
                atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              goto LABEL_109;
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

                goto LABEL_109;
              case 8:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                goto LABEL_109;
              case 0x66:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

LABEL_109:
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
                  v16 = 0;
                  if (BNNSBitTranspose())
                  {
                    v1 = 3;
                  }

                  else
                  {
                    v1 = 0;
                    v61 = v57 * v9;
                    if (v57 * v9)
                    {
                      v62 = *(a1 + 424);
                      v63 = *v62;
                      v62[2] += ((*v62 & 1) + v61) >> 1;
                      *v62 = v63 + v61;
                    }
                  }
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
        v64 = v18;
        do
        {
          if (v21 >= 1)
          {
            v22 = 0;
            v67 = v20;
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
                    v65 = v23;
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
                        v20 = v67;
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
                        v69 = v32;
                        *&v70 = v64;
                        *(&v70 + 1) = v37;
                        *&v71 = v36;
                        *(&v71 + 1) = v39;
                        v40 = (**v66)(v66);
                        if (v3[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v40) & 1) != 0)
                        {
                          v20 = v67;
                          v13 = PaletteVectorSize;
                        }

                        else
                        {
                          v20 = v67;
                          v13 = PaletteVectorSize;
                          if (*(a1 + 24) == 1)
                          {
                            v45 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint4>(v66, v40);
                            v20 = v67;
                            v13 = PaletteVectorSize;
                            v35 = v45;
                          }
                        }
                      }

                      if (*(a1 + 24) == 1)
                      {
                        v41 = *(a1 + 424);
                        v42 = v35 & 0xF;
                        v43 = (*v41)++;
                        v44 = v41[2];
                        if (v43)
                        {
                          v41[2] = v44 + 1;
                          v42 = *v44 | (16 * v42);
                        }

                        *v44 = v42;
                      }

                      v24 = *(a1 + 16);
                      v26 = ++v27;
                      if (v24 <= v27)
                      {
                        v23 = v65;
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
            v18 = v64;
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

void sub_1A74399F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E21ZinIrOutputBitStream4E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v47[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v47);
  v49 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v43 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v43 + 208))(v43);
    (*(*v43 + 200))(v43);
  }

  v48 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v48);
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

  v45 = v6;
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
  v46 = v18;
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
          v47[0] = v14;
          v47[1] = v45;
          v47[2] = v23;
          v47[3] = v22;
          v47[4] = v25;
          v26 = (**(a1 + 72))(a1 + 72, v47);
          if (!v2[2] || (v44 = v26, v27 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v26 = v44, v28 = v27, v29 = ValueAsInt32, (v28 & 1) == 0))
          {
            v29 = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v29 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint4>(a1 + 72, v26);
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
      v30 = *(a1 + 424);
      v31 = v29 & 0xF;
      v32 = (*v30)++;
      v33 = v30[2];
      if (v32)
      {
        v30[2] = v33 + 1;
        v31 = *v33 | (16 * v31);
      }

      *v33 = v31;
    }

    v20 = 0;
    v19 = -1;
    if ((v21 & 1) == 0)
    {
      v18 = 0;
      v17 = -1;
      if (v46)
      {
        goto LABEL_22;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v45;
        goto LABEL_45;
      }

      goto LABEL_12;
    }
  }

  v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v35)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v35, v36, v37, v38, v39, v40, v41, v42);
  }

  return 3;
}

void sub_1A7439DF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E21ZinIrOutputBitStream4E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v104 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v104);
  v103 = 0;
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

  v102 = 0;
  v98 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v102);
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
      goto LABEL_120;
    }

LABEL_128:
    v16 = 0;
    v1 = 0;
    v79 = v18 * v10;
    v80 = *(a1 + 416);
LABEL_129:
    *v80 = v79;
    goto LABEL_33;
  }

  v18 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_128;
  }

  v19 = 0;
LABEL_120:
  v100 = 0u;
  v101 = 0u;
  v99 = v19;
  (**v98)(v98, &v99);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_33;
  }

  if (v104 > 8)
  {
    if (v1 != 101 || v104 != 16)
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
    v81 = *(v7 + 120);
  }

  else
  {
    v81 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v81)
  {
    v16 = 0;
    if (BNNSBitTranspose())
    {
      v1 = 3;
      goto LABEL_33;
    }

    v1 = 0;
    v82 = v18 * v10;
    if (v18 * v10)
    {
      v80 = *(a1 + 424);
      v83 = *v80;
      v80[2] += ((*v80 & 1) + v82) >> 1;
      v79 = v83 + v82;
      goto LABEL_129;
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
    v90 = PaletteVectorSize;
    do
    {
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v3[7];
        v89 = v21;
        do
        {
          if (v24 >= 1)
          {
            v25 = 0;
            v26 = v3[6];
            v91 = v23;
            do
            {
              if (v26 >= 1)
              {
                v97 = 0;
                v27 = v3[16];
                v88 = v25;
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
                        v94 = v28;
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
                                v84 = v31;
                                v34 = 0;
                                v35 = 0;
                                v95 = v31 - 1;
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
                                  v96 = v34;
                                  if (v41 && v3[22] > v34)
                                  {
                                    v42 = v25;
                                    v43 = v37;
                                    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v41);
                                    v37 = v43;
                                    v33 = v95;
                                    v34 = v96;
                                    v28 = v94;
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
                                    v85 = v35;
                                    v93 = v37;
                                    do
                                    {
                                      if (v48 >= 1)
                                      {
                                        v49 = 0;
                                        v86 = v47;
                                        v50 = v21 - v47;
                                        v51 = v3[3];
                                        do
                                        {
                                          if (v51 >= 1)
                                          {
                                            v52 = 0;
                                            v92 = v49;
                                            v53 = v25 - v49;
                                            v54 = v97;
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
                                                v99 = v40;
                                                *&v100 = v91;
                                                *(&v100 + 1) = v56;
                                                *&v101 = v55;
                                                *(&v101 + 1) = v58;
                                                v59 = (**v98)(v98);
                                                v37 = v93;
                                                v28 = v94;
                                                v33 = v95;
                                                v34 = v96;
                                                v60 = v59;
                                                if (!v3[2] || (v87 = v59, v61 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v60 = v87, v37 = v93, v28 = v94, v33 = v95, v34 = v96, v62 = v61, v63 = v45, (v62 & 1) == 0))
                                                {
                                                  v63 = v45;
                                                  if (*(a1 + 24) == 1)
                                                  {
                                                    v63 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint4>(v98, v60);
                                                    v37 = v93;
                                                    v28 = v94;
                                                    v33 = v95;
                                                    v34 = v96;
                                                  }
                                                }
                                              }

                                              if (*(a1 + 24) == 1)
                                              {
                                                v64 = *(a1 + 424);
                                                v65 = v63 & 0xF;
                                                v66 = (*v64)++;
                                                v67 = v64[2];
                                                if (v66)
                                                {
                                                  v64[2] = v67 + 1;
                                                  v65 = *v67 | (16 * v65);
                                                }

                                                *v67 = v65;
                                              }

                                              ++v52;
                                              v51 = v3[3];
                                              --v54;
                                              if (v52 >= v51)
                                              {
                                                v48 = v3[4];
                                                v21 = v89;
                                                PaletteVectorSize = v90;
                                                v25 = v88;
                                                v49 = v92;
                                                break;
                                              }
                                            }
                                          }

                                          ++v49;
                                        }

                                        while (v49 < v48);
                                        v46 = v3[5];
                                        v35 = v85;
                                        v47 = v86;
                                      }

                                      ++v47;
                                    }

                                    while (v47 < v46);
                                  }

                                  v32 = *(a1 + 16);
                                  v34 = ++v35;
                                }

                                while (v32 > v35);
                                v31 = v84;
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
                        v23 = v91;
                      }

                      ++v28;
                    }

                    while (v28 < v27);
                    v26 = v3[6];
                  }

                  ++v97;
                }

                while (v97 < v26);
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

void sub_1A743A714(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint4,ZinIrOutputStreamCompressedUnaligned<(unsigned char)4>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39458;
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

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint4,ZinIrOutputStreamCompressedUnaligned<(unsigned char)4>>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
  v46 = 4;
  v47 = 15;
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
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E36ZinIrOutputStreamCompressedUnalignedILh4EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v31);
    goto LABEL_26;
  }

  if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E36ZinIrOutputStreamCompressedUnalignedILh4EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v31);
  }

  else
  {
LABEL_25:
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E36ZinIrOutputStreamCompressedUnalignedILh4EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v31);
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

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E36ZinIrOutputStreamCompressedUnalignedILh4EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
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
              v28 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint4>(a1 + 72, v26) & 0xF;
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

void sub_1A743B094(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E36ZinIrOutputStreamCompressedUnalignedILh4EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
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
              v31 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint4>(a1 + 72, v25);
              v25 = v30;
              v29 = v31 & 0xF;
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

void sub_1A743B49C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint4E36ZinIrOutputStreamCompressedUnalignedILh4EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
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
              v48 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint4>(a1 + 72, v42);
              v42 = v47;
              v46 = v48 & 0xF;
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

void sub_1A743B9F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint6,ZinIrOutputBitStream6>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39498;
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

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint6,ZinIrOutputBitStream6>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E21ZinIrOutputBitStream6E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v19);
    goto LABEL_24;
  }

  if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E21ZinIrOutputBitStream6E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v19);
  }

  else
  {
LABEL_23:
    v14 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E21ZinIrOutputBitStream6E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v19);
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

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E21ZinIrOutputBitStream6E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
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
                          ValueAsInt32 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint6>(v55, v37);
                        }
                      }

                      if (*(a1 + 24) == 1)
                      {
                        ZinIrOutputBitStream6::Push(*(a1 + 424), ValueAsInt32 & 0x3F);
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

void sub_1A743C594(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E21ZinIrOutputBitStream6E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
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
              v29 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint6>(a1 + 72, v26);
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
      ZinIrOutputBitStream6::Push(*(a1 + 424), v29 & 0x3F);
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

void sub_1A743C97C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E21ZinIrOutputBitStream6E9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
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
                                                    v61 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint6>(v85, v58);
                                                    v33 = v87;
                                                  }
                                                }
                                              }

                                              if (*(a1 + 24) == 1)
                                              {
                                                ZinIrOutputBitStream6::Push(*(a1 + 424), v61 & 0x3F);
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

void sub_1A743D25C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *ZinIrOutputBitStream6::Push(void *this, char a2)
{
  v2 = a2 & 0x3F;
  v3 = (*this)++;
  v4 = v3 & 3;
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = this[2];
      this[2] = v5 + 1;
      *v5 |= a2 << 6;
      v2 >>= 2;
    }

    goto LABEL_6;
  }

  if (v4 == 2)
  {
    v6 = this[2];
    this[2] = v6 + 1;
    *v6 |= 16 * a2;
    v2 >>= 4;
LABEL_6:
    *this[2] = v2;
    return this;
  }

  v7 = this[2];
  this[2] = v7 + 1;
  *v7 |= 4 * a2;
  return this;
}

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint6,ZinIrOutputStreamCompressedUnaligned<(unsigned char)6>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A394D8;
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

uint64_t details::ZinIrWeightView<ZinIrWeightBase::uint6,ZinIrOutputStreamCompressedUnaligned<(unsigned char)6>>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
  v46 = 6;
  v47 = 63;
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
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E36ZinIrOutputStreamCompressedUnalignedILh6EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v31);
    goto LABEL_26;
  }

  if (*(a1 + 48) == 1 && v12 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E36ZinIrOutputStreamCompressedUnalignedILh6EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v31);
  }

  else
  {
LABEL_25:
    v21 = _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E36ZinIrOutputStreamCompressedUnalignedILh6EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v31);
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

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E36ZinIrOutputStreamCompressedUnalignedILh6EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
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
              v28 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint6>(a1 + 72, v26) & 0x3F;
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

void sub_1A743DC68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E36ZinIrOutputStreamCompressedUnalignedILh6EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
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
              v31 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint6>(a1 + 72, v25);
              v25 = v30;
              v29 = v31 & 0x3F;
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

void sub_1A743E070(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIN15ZinIrWeightBase5uint6E36ZinIrOutputStreamCompressedUnalignedILh6EEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS5_9serializeES8_S9_E21CompileTimeLoopBoundsvE_clIXtlSA_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
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
              v48 = ZinIrWeightBase::GetElemAt<ZinIrWeightBase::uint6>(a1 + 72, v42);
              v42 = v47;
              v46 = v48 & 0x3F;
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

void sub_1A743E5CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A743E894(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v1 - 144);
  v3 = *(v1 - 152);
  *(v1 - 152) = 0;
  if (v3)
  {
    MEMORY[0x1AC55A070](v3, 0x1000C404528F627);
  }

  _Unwind_Resume(a1);
}

void sub_1A743EB48(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v1 - 128);
  v3 = *(v1 - 136);
  *(v1 - 136) = 0;
  if (v3)
  {
    MEMORY[0x1AC55A070](v3, 0x1000C404528F627);
  }

  _Unwind_Resume(a1);
}

void sub_1A743EDFC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v1 - 128);
  v3 = *(v1 - 136);
  *(v1 - 136) = 0;
  if (v3)
  {
    MEMORY[0x1AC55A070](v3, 0x1000C404528F627);
  }

  _Unwind_Resume(a1);
}

void sub_1A743F0EC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v1 - 128);
  v3 = *(v1 - 136);
  *(v1 - 136) = 0;
  if (v3)
  {
    MEMORY[0x1AC55A070](v3, 0x1000C404528F627);
  }

  _Unwind_Resume(a1);
}

void sub_1A743F3DC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v1 - 128);
  v3 = *(v1 - 136);
  *(v1 - 136) = 0;
  if (v3)
  {
    MEMORY[0x1AC55A070](v3, 0x1000C404528F627);
  }

  _Unwind_Resume(a1);
}

void details::ZinIrKernelView::serialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "NE size and Kernel data ne size does not match\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Unable to serialize LUT\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Rasterized kernel size for OCG doesn't match recorded size", a5, a6, a7, a8, v8);
}

void SerializableFactory::createTensorSerializer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Unknown tensor type for ZinIrTensor", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Tensor is null\n", a5, a6, a7, a8, v8);
}

void ZinIrCodegenHandleConstTensorKernels(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0_7(a1, a2);
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Tensor kernels symbols should have same base and begin offset.\n", v2, 2u);
}

{
  OUTLINED_FUNCTION_0_7(a1, a2);
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Const tensor nullptr \n", v2, 2u);
}

void ZinIrCodegenHandleConstTensorKernels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Internal Error: ZinIrCodegenHandleConstTensorKernels - Kernel codegen failure\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: ZinIrCodegenHandleConstTensorKernels - Memory allocation failure. \n", a5, a6, a7, a8, v8);
}

void ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Root tensor symbols should have same base and begin offset.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Const tensor not aligned", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Data Descriptor dimensions are incorrect\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Tensor Seralizaer creation failed\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Could not generate debug info string for constant tensor\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Could not add constant tensor to symbol table\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Should be processing const tensors only\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Tensor Seralization failed\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Const input tensor should be DRAM resident \n", a5, a6, a7, a8, v8);
}

void ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(char *a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v2 = 136315138;
  v3 = a2;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "stab string too large for: %s\n", &v2, 0xCu);
}

void ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "symbol can't be added to macho: %s\n", &v1, 0xCu);
}

void GetMLIRToANECConversionInfo(_DWORD *a1, const void **a2)
{
  if (a1[2])
  {
    __asm { FMOV            V9.2S, #1.0 }

    v7 = *(*a1 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }
}

void sub_1A74409D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(exception_object);
}

BOOL ANEFamilyToMLIR(const char *a1, _DWORD *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = xmmword_1A76038CC;
  v17 = unk_1A76038DC;
  v18 = xmmword_1A76038EC;
  v19 = unk_1A76038FC;
  __dst = xmmword_1A76038AC;
  v15 = unk_1A76038BC;
  std::unordered_map<int,mlir::anec::Family>::unordered_map(v13, &__dst, 12);
  v4 = strlen(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  BYTE7(v15) = v4;
  if (v4)
  {
    memcpy(&__dst, a1, v4);
  }

  *(&__dst + v5) = 0;
  ZinIrTargetCreator::CreateTargetFromString(&__dst, &v10);
  CPUSubtype = ZinIrTarget::GetCPUSubtype(v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SBYTE7(v15) < 0)
  {
    operator delete(__dst);
  }

  v12 = CPUSubtype;
  v7 = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v13, &v12);
  if (v7)
  {
    *a2 = *(v7 + 5);
  }

  v8 = v7 != 0;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v13);
  return v8;
}

uint64_t CreateMPSModuleFromFile(uint64_t a1, uint64_t a2, void *a3)
{
  v27[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v25, a1, 8);
  if (*&v26[*(v25[0] - 24) + 16])
  {
    if (*(a1 + 23) >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    ZinAssertImpl("Error: can not open the input file %s", v13);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  std::ostream::operator<<();
  if ((v23 & 0x10) != 0)
  {
    v7 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v7 = v19;
    }

    locale = v18[4].__locale_;
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v6 = 0;
      HIBYTE(v15) = 0;
      goto LABEL_15;
    }

    locale = v18[1].__locale_;
    v7 = v18[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v7 - locale;
  if (v6)
  {
    memmove(&__dst, locale, v6);
  }

LABEL_15:
  *(&__dst + v6) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v15;
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  *a3 = v9;
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  a3[1] = v10;
  v16[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16[2] = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  MEMORY[0x1AC559F60](&v24);
  v25[0] = *MEMORY[0x1E69E54C8];
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1AC559A70](v26);
  std::istream::~istream();
  return MEMORY[0x1AC559F60](v27);
}

void sub_1A744117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a13, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a29);
  std::ifstream::~ifstream(&a48, MEMORY[0x1E69E54C8]);
  MEMORY[0x1AC559F60](&STACK[0x2E0]);
  _Unwind_Resume(a1);
}

void ParseMPSModule(mlir::MLIRContext *a1, uint64_t *a2, mlir::Operation **a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  DiagEngine = mlir::MLIRContext::getDiagEngine(a1);
  *&v11 = a4;
  v12 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<ParseMPSModule(mlir::MLIRContext &,MPSModule const&,mlir::OwningOpRef<mlir::ModuleOp> &,std::string &,std::map<std::string,ZinMPSConstantInfo> const&)::$_0,ParseMPSModule(mlir::MLIRContext &,MPSModule const&,mlir::OwningOpRef<mlir::ModuleOp> &,std::string &,std::map<std::string,ZinMPSConstantInfo> const&)::$_0,void>::Callbacks + 2;
  mlir::DiagnosticEngine::registerHandler(DiagEngine, &v11);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(&v11);
  v10 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "mps", 3, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps::MPSDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps::MPSDialect>(void)::{lambda(void)#1}>, &v10);
  v10 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "mpsx", 4, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mpsx::MPSXDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mpsx::MPSXDialect>(void)::{lambda(void)#1}>, &v10);
  v10 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "mps_spi", 7, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps_spi::MPSSPIDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps_spi::MPSSPIDialect>(void)::{lambda(void)#1}>, &v10);
  v10 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "anec", 4, &mlir::detail::TypeIDResolver<mlir::anec::ANECDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::anec::ANECDialect * mlir::MLIRContext::getOrLoadDialect<mlir::anec::ANECDialect>(void)::{lambda(void)#1}>, &v10);
  v10 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "placement", 9, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::placement::PlacementDialect * mlir::MLIRContext::getOrLoadDialect<mlir::placement::PlacementDialect>(void)::{lambda(void)#1}>, &v10);
  v10 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "func", 4, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::func::FuncDialect * mlir::MLIRContext::getOrLoadDialect<mlir::func::FuncDialect>(void)::{lambda(void)#1}>, &v10);
  v10 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "tensor", 6, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::tensor::TensorDialect * mlir::MLIRContext::getOrLoadDialect<mlir::tensor::TensorDialect>(void)::{lambda(void)#1}>, &v10);
  v10 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "silc", 4, &mlir::detail::TypeIDResolver<mlir::silc::SilcDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::silc::SilcDialect * mlir::MLIRContext::getOrLoadDialect<mlir::silc::SilcDialect>(void)::{lambda(void)#1}>, &v10);
  mlir::DialectRegistry::DialectRegistry(v9);
  mlir::mps::registerExternalCanonicalizeExternalModels(v9, v8);
}

void sub_1A74416C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, mlir::Operation *a10, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(&a10, a2);
  llvm::StringMap<mlir::mps::MPSResourceInfo,llvm::MallocAllocator>::~StringMap(&a12);
  mlir::ParserConfig::~ParserConfig(&a32);
}

void sub_1A7441740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>::~SmallVector((v10 + 24));
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(va);
  JUMPOUT(0x1A7441750);
}

void GetOutputDirectory(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  RetrieveAbsolutePath(a1);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a1);
  std::__fs::filesystem::__status(&__p, 0);
  if (v5 && v5 != 255 && (std::__fs::filesystem::__status(&__p, 0), v5 == 2))
  {
    *a2 = *&a1->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&a1->__r_.__value_.__l + 2);
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    a1->__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    std::__fs::filesystem::path::parent_path[abi:ne200100](&__p, a2);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1A7441850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GetInputDirectory(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  RetrieveAbsolutePath(a1);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a1);
  std::__fs::filesystem::path::parent_path[abi:ne200100](&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1A74418C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    v4[a2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void std::__shared_ptr_emplace<ANECRegionInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A39658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_emplace<ANECRegionInfo>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 88);
  std::vector<std::unique_ptr<ZinIrInputViewUnitInfo>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>>>::~__hash_table(a1 + 24);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *v2;
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,std::unique_ptr<ZinIrTensorInfo>>,void,0>(a1, (v2 + 2));
      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,std::unique_ptr<ZinIrTensorInfo>>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  *v3 = 0;
  if (v4)
  {
    std::default_delete<ZinIrTensorInfo>::operator()[abi:ne200100](v3, v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

void std::default_delete<ZinIrTensorInfo>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 104);
    if (v2)
    {
      *(a2 + 112) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1AC55A070);
  }
}

uint64_t std::pair<std::string,std::unique_ptr<ZinIrTensorInfo>>::~pair(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = (a1 + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<ZinIrTensorInfo>::operator()[abi:ne200100](v2, v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t GetZinTensorFormat(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9[2] = xmmword_1A7603970;
  v9[3] = unk_1A7603980;
  v9[4] = xmmword_1A7603990;
  v9[0] = xmmword_1A7603950;
  v9[1] = unk_1A7603960;
  v10 = 0xA00000006;
  std::map<mlir::anec::ANECIRDataType,ZinTensorFormat>::map[abi:ne200100](v6, v9, 11);
  v2 = v7[0];
  if (!v7[0])
  {
    goto LABEL_9;
  }

  v3 = v7;
  do
  {
    if (*(v2 + 7) >= a1)
    {
      v3 = v2;
    }

    v2 = v2[*(v2 + 7) < a1];
  }

  while (v2);
  if (v3 == v7 || *(v3 + 7) > a1)
  {
LABEL_9:
    ZinAssertImpl("Error: invalid data type. Only Int4, Uint8, Int8, Uint16, Int16, Float16, Float32, Int32, UInt32, UInt64 and Int64 are supported in MPS-ANEC conversion");
  }

  v4 = *std::map<ZinReductionPostOp,ZinIrNonLinearMode>::at(v6, &v8);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v6, v7[0]);
  return v4;
}

void GetUnitBottomName(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 72);
  if (v2)
  {
    v4 = *(*a1 + 64);
    v5 = 32 * v2;
    do
    {
      if (*(v4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 1));
      }

      else
      {
        v6 = *v4;
        __p.__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&__p.__r_.__value_.__l.__data_ = v6;
      }

      v8 = *(v4 + 6);
      std::vector<std::string>::push_back[abi:ne200100](a2 + 40, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 += 2;
      v5 -= 32;
    }

    while (v5);
  }
}

void sub_1A7441DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<mlir::anec::ANECIRDataType,ZinTensorFormat>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<ZinIrNonLinearMode,unsigned int>,std::__map_value_compare<ZinIrNonLinearMode,std::__value_type<ZinIrNonLinearMode,unsigned int>,std::less<ZinIrNonLinearMode>,true>,std::allocator<std::__value_type<ZinIrNonLinearMode,unsigned int>>>::__emplace_hint_unique_key_args<ZinIrNonLinearMode,std::pair<ZinIrNonLinearMode const,unsigned int> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

unint64_t std::unordered_map<mlir::anec::ANECIRNeuron::Activation,ZinIrNeuronType>::unordered_map(unint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(a1, a2, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

unint64_t std::unordered_map<mlir::anec::ANECIRPoolUnit::PoolType,ZinIrPoolingType>::unordered_map(unint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(a1, a2, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unique_ptr<ZinIrTensorInfo>>>(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<ZinIrTensorInfo>>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,std::unique_ptr<ZinIrTensorInfo>>,void,0>(*a1, __p + 16);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *llvm::SmallVector<unsigned long,6u>::SmallVector(void *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  llvm::SmallVectorImpl<unsigned long>::append<unsigned long const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_1A7442250(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void llvm::SmallVectorImpl<unsigned long>::append<unsigned long const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

void *std::__copy_impl::operator()[abi:ne200100]<unsigned long const*,unsigned long const*,std::back_insert_iterator<std::vector<unsigned long>>>(uint64_t a1, void *a2, void *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a4, v14);
        }

        *(8 * v11) = *v5;
        v7 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 8;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1A7442474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A7442540(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::string>>(void *a1, unint64_t *a2, uint64_t a3)
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

llvm **llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(llvm *a1)
{
  v1 = a1;
  v2 = *(a1 + 3);
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(*v1, *(v1 + 1));
    }
  }

  return v1;
}

uint64_t llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 17));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

char ***llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Attribute>>,6u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3;
    v5 = v2 - 1;
    do
    {
      v6 = v5[v4];
      v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      --v4;
    }

    while (v4 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 24 * v1;
    v3 = (*result + 16);
    do
    {
      if (*(v3 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  return result;
}

char ***llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Type>>,6u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3;
    v5 = v2 - 1;
    do
    {
      v6 = v5[v4];
      v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      --v4;
    }

    while (v4 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char ***llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[4 * v3 - 1] - 1;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 + 1);
      *(v4 + 1) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      if (*v4 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char ***llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,0u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v2 - 1;
    v5 = 2 * v3;
    do
    {
      v6 = v4[v5];
      v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 2;
    }

    while (v5 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

mlir::Operation **mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(mlir::Operation **a1, unsigned int a2)
{
  v3 = *a1;
  if (v3)
  {
    mlir::Operation::erase(v3, a2);
  }

  return a1;
}

void std::__shared_ptr_emplace<ANECFunctionInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A396A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_emplace<ANECFunctionInfo>::__on_zero_shared(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table((a1 + 192));
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + 152);
  std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table((a1 + 112));
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + 72);
  v2 = (a1 + 48);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

uint64_t std::unordered_map<int,mlir::anec::Family>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<int,mlir::anec::Family>,std::__unordered_map_hasher<int,std::__hash_value_type<int,mlir::anec::Family>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,mlir::anec::Family>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,mlir::anec::Family>>>::__emplace_unique_key_args<int,std::pair<int const,mlir::anec::Family> const&>(a1, a2, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,mlir::anec::Family>,std::__unordered_map_hasher<int,std::__hash_value_type<int,mlir::anec::Family>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,mlir::anec::Family>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,mlir::anec::Family>>>::__emplace_unique_key_args<int,std::pair<int const,mlir::anec::Family> const&>(void *a1, int *a2, void *a3)
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
    if (*&v4 <= v3)
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

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallImpl<ParseMPSModule(mlir::MLIRContext &,MPSModule const&,mlir::OwningOpRef<mlir::ModuleOp> &,std::string &,std::map<std::string,ZinMPSConstantInfo> const&)::$_0>(uint64_t *a1, mlir::Diagnostic *a2)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v26 = 0;
  v27 = v4;
  v24 = 0;
  v25 = 0;
  llvm::raw_string_ostream::raw_string_ostream(v23, &v24);
  mlir::Attribute::print(&v27, v23, 0);
  mlir::Diagnostic::str(a2, &v22);
  size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v22;
  }

  else
  {
    v6 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  v21.__r_.__value_.__s.__data_[0] = 0;
  v7 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v6, v6 + size, &v21);
  v8 = &v22 + HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v22;
  }

  else
  {
    v8 = (v22.__r_.__value_.__r.__words[0] + v22.__r_.__value_.__l.__size_);
    v9 = v22.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v22, v7 - v9, v8 - v7);
  if (v26 >= 0)
  {
    v10 = HIBYTE(v26);
  }

  else
  {
    v10 = v25;
  }

  v11 = &v21;
  std::string::basic_string[abi:ne200100](&v21, v10 + 1);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v21.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (v26 >= 0)
    {
      v12 = &v24;
    }

    else
    {
      v12 = v24;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 32;
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v22;
  }

  else
  {
    v13 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v22.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v21, v13, v14);
  v16 = v15->__r_.__value_.__r.__words[0];
  v28[0] = v15->__r_.__value_.__l.__size_;
  *(v28 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
  v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v18 = *a1;
  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  v19 = v28[0];
  *v18 = v16;
  *(v18 + 8) = v19;
  *(v18 + 15) = *(v28 + 7);
  *(v18 + 23) = v17;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  llvm::raw_ostream::~raw_ostream(v23);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v24);
  }

  return 1;
}

void sub_1A74431DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  llvm::raw_ostream::~raw_ostream(&a22);
  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(void *a1, unsigned __int8 *a2, char *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t llvm::raw_string_ostream::raw_string_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1A362A8;
  *(a1 + 48) = a2;
  llvm::raw_ostream::SetUnbuffered(a1);
  return a1;
}

uint64_t llvm::raw_ostream::SetUnbuffered(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
}

void *_ZNSt3__120__shared_ptr_emplaceIN4llvm9SourceMgrENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1A02070;
  llvm::SourceMgr::SourceMgr((a1 + 3));
  return a1;
}

uint64_t llvm::StringMap<mlir::mps::MPSResourceInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 33));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

void sub_1A7443A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  mlir::PassManager::~PassManager(&a24);
  _Unwind_Resume(a1);
}

void ZinMPSToANEC(mlir::ForwardIterator **a1, char *a2, char *a3, char *a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v13 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = a3;
  v10 = v12;
  mlir::detail::walk<mlir::ForwardIterator>(*a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<ZinMPSToANEC(mlir::OwningOpRef<mlir::ModuleOp> &,char const*,char const*,char const*,std::map<std::string,mlir::Operation *> &,std::map<std::string,std::string> &,std::map<std::string,std::map<std::string,std::string>> &,BOOL)::$_0>, &v10, 1);
  Context = mlir::Attribute::getContext((*a1 + 24));
  mlir::PassManager::PassManager(v11, Context, "any", 3uLL, 1);
}

void sub_1A744413C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (*(v58 - 105) < 0)
  {
    operator delete(*(v58 - 128));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  mlir::anec::WriteMultiFunctionDescriptor::~WriteMultiFunctionDescriptor(&a29);
  if (a58 < 0)
  {
    operator delete(a53);
  }

  mlir::PassManager::~PassManager((v58 - 240));
  _Unwind_Resume(a1);
}

double std::__fs::filesystem::path::filename[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

uint64_t mlir::anec::WriteMultiFunctionDescriptor::WriteMultiFunctionDescriptor(uint64_t a1, int a2)
{
  *a1 = a2;
  v3 = (a1 + 32);
  std::string::basic_string[abi:ne200100]<0>((a1 + 8), "");
  std::string::basic_string[abi:ne200100]<0>(v3, "");
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_1A7444418(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void mlir::anec::WriteMultiFunctionDescriptor::~WriteMultiFunctionDescriptor(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<ZinMPSToANEC(mlir::OwningOpRef<mlir::ModuleOp> &,char const*,char const*,char const*,std::map<std::string,mlir::Operation *> &,std::map<std::string,std::string> &,std::map<std::string,std::map<std::string,std::string>> &,BOOL)::$_0>(void **a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id || (v4 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(), (*(**(a2 + 48) + 32))(*(a2 + 48), v4)))
  {
    ++**a1;
  }

  return 1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  {
    v1 = llvm::getTypeName<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
  }

  return mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1A74445CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ZinMPSToANEC(char *a1, uint8_t *buf)
{
  if (a1[23] >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v3;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Cannot find the populated ANECIR file %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void ANECCreatePrepareInfoFromMLIR(ZinIrCompilerParameters *a1, ZinIrPlistCompilationStatus *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  mlir::MLIRContext::MLIRContext(v2, 1);
}

void sub_1A7444E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58)
{
  ANECProcedureInfo::~ANECProcedureInfo(&a33);
  a33 = &a57;
  std::vector<ANECProcedureInfo>::__destroy_vector::operator()[abi:ne200100](&a33);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v58 - 240, *(v58 - 232));
  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(v58 - 216, *(v58 - 208));
  std::__tree<std::string>::destroy(v58 - 192, *(v58 - 184));
  if (*(v58 - 145) < 0)
  {
    operator delete(*(v58 - 168));
  }

  mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef((v58 - 144), v60);
  mlir::MLIRContext::~MLIRContext((v58 - 136));
  if (*(v58 - 105) < 0)
  {
    operator delete(*(v58 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::map<std::string,std::string>>::operator=[abi:ne200100]<std::map<std::string,std::string>,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = *a2;
    v3 = a2 + 1;
    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = a2[2];
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__move_assign(void *a1, void *a2)
{
  v4 = a1 + 1;
  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(a1, a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t *std::vector<ANECProcedureInfo>::__init_with_size[abi:ne200100]<ANECProcedureInfo*,ANECProcedureInfo*>(uint64_t *result, ANECProcedureInfo *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ANECProcedureInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A74450D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ANECProcedureInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ANECProcedureInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANECProcedureInfo>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

ANECProcedureInfo *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ANECProcedureInfo>,ANECProcedureInfo*,ANECProcedureInfo*,ANECProcedureInfo*>(int a1, CFTypeRef *a2, CFTypeRef *a3, ANECProcedureInfo *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      ANECProcedureInfo::ANECProcedureInfo(this, v6);
      v6 += 21;
      this = (this + 168);
      v7 -= 168;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1A74451A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 168);
    do
    {
      ANECProcedureInfo::~ANECProcedureInfo(v4);
      v4 = (v5 - 168);
      v2 += 168;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t ValidateMLIRProgram(uint64_t a1, uint64_t a2, const void **a3, void *a4, char a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = a4 + 1;
  std::__tree<std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>>>::destroy(a4, a4[1]);
  *a4 = v15;
  a4[2] = 0;
  *v15 = 0;
  {
    ValidateMLIRProgram(MPSModule const*,std::string const&,std::string const&,std::map<std::string,std::map<unsigned long long,ValidateEntry>> &,BOOL,std::map<std::string,ZinMPSConstantInfo> const&,long long,BOOL,BOOL,std::string const&)::backing = &unk_1F19EEAA0;
    unk_1EB29F4C0 = 0;
    dword_1EB29F4C8 = -1;
    std::string::basic_string[abi:ne200100]<0>(qword_1EB29F4D0, "");
    ValidateMLIRProgram(MPSModule const*,std::string const&,std::string const&,std::map<std::string,std::map<unsigned long long,ValidateEntry>> &,BOOL,std::map<std::string,ZinMPSConstantInfo> const&,long long,BOOL,BOOL,std::string const&)::backing = &unk_1F19E2DF8;
    __cxa_atexit(ZinIrFileBacking::~ZinIrFileBacking, &ValidateMLIRProgram(MPSModule const*,std::string const&,std::string const&,std::map<std::string,std::map<unsigned long long,ValidateEntry>> &,BOOL,std::map<std::string,ZinMPSConstantInfo> const&,long long,BOOL,BOOL,std::string const&)::backing, &dword_1A617D000);
  }

  ZinIrPlistCompilationStatus::ZinIrPlistCompilationStatus(v39);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *a2, *(a2 + 8));
  }

  else
  {
    v38 = *a2;
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = (&v38 + HIBYTE(v38.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v16 = (v38.__r_.__value_.__r.__words[0] + v38.__r_.__value_.__l.__size_);
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v38;
  }

  else
  {
    v17 = v38.__r_.__value_.__r.__words[0];
  }

  while (v17 != v16)
  {
    v17->__r_.__value_.__s.__data_[0] = __tolower(v17->__r_.__value_.__s.__data_[0]);
    v17 = (v17 + 1);
  }

  ZinIrHalCreator::CreateHalFromString(&v38, &v37);
  if (v37)
  {
    v18 = (*(*v37 + 16))(v37);
    ZinIrCompilerParameters::ZinIrCompilerParameters(v36);
    ZinIrCompilerParameters::setTarget(v36, &v38);
    ZinIrCompilerParameters::setEnableControlFlowOps(v36, a8);
    ZinIrCompilerParameters::setEnableFunctionInlining(v36, a9);
    ZinIrCompilerParameters::setEnableAFMMLIRFeatures(v36, a5);
    if (ZinIrCompilerParameters::isValidBSSLimit(v36, a7))
    {
      ZinIrCompilerParameters::setBSSLimit(v36, a7);
    }

    v30 = v18;
    v31 = v36;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v35 = 0;
    if (*(a3 + 23) >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = a3[1];
    }

    p_str = &__str;
    std::string::basic_string[abi:ne200100](&__str, v19 + 16);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (v19)
    {
      if (*(a3 + 23) >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      memmove(p_str, v21, v19);
    }

    strcpy(p_str + v19, "/mlir_validation");
    v22 = ANECCreateFileBacking(&__str, &ValidateMLIRProgram(MPSModule const*,std::string const&,std::string const&,std::map<std::string,std::map<unsigned long long,ValidateEntry>> &,BOOL,std::map<std::string,ZinMPSConstantInfo> const&,long long,BOOL,BOOL,std::string const&)::backing, v39);
    v23 = v22;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v23)
      {
        goto LABEL_28;
      }
    }

    else if (v22)
    {
LABEL_28:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ValidateMLIRProgram();
      }

      if (SHIBYTE(v34) < 0)
      {
        operator delete(v32);
      }

      ZinIrCompilerParameters::~ZinIrCompilerParameters(v36);
      goto LABEL_39;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    mlir::MLIRContext::MLIRContext(v26, 1);
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_41;
  }

  ValidateMLIRProgram();
LABEL_39:
  v24 = v37;
  v37 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

LABEL_41:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  ZinIrPlistCompilationStatus::~ZinIrPlistCompilationStatus(v39);
  return 0;
}

void sub_1A7446BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, mlir::Operation *a33, mlir::MLIRContextImpl *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  __cxa_end_catch();
  if (a32 < 0)
  {
    operator delete(__p);
  }

  mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(&a33, v49);
  mlir::MLIRContext::~MLIRContext(&a34);
  *v47 = &a35;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x780]);
  if (a45 < 0)
  {
    operator delete(a40);
  }

  ZinIrCompilerParameters::~ZinIrCompilerParameters(&a47);
  v50 = STACK[0x4B8];
  STACK[0x4B8] = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(STACK[0x4C0]);
  }

  ZinIrPlistCompilationStatus::~ZinIrPlistCompilationStatus(&STACK[0x4D8]);
  _Unwind_Resume(a1);
}

_DWORD *ZinGetMPSDialectVersion(_DWORD *result, unsigned int *a2, unsigned int *a3)
{
  *result = 1;
  *a2 = 3;
  *a3 = 4;
  return result;
}

_DWORD *ZinGetMPSSPIDialectVersion(_DWORD *result, unsigned int *a2, unsigned int *a3)
{
  *result = 1;
  *a2 = 0;
  *a3 = 2;
  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<InitializeValidateMap(mlir::OwningOpRef<mlir::ModuleOp> &,std::map<std::string,std::map<unsigned long long,ValidateEntry>> &)::$_0>(uint64_t ***a1, mlir::SymbolTable *this)
{
  if (*(*(this + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    return 2;
  }

  SymbolName = mlir::SymbolTable::getSymbolName(this, this);
  AttrData = mlir::OpaqueAttr::getAttrData(&SymbolName);
  SymbolName = mlir::SymbolTable::getSymbolName(this, v6);
  mlir::OpaqueAttr::getAttrData(&SymbolName);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v11 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  v9 = *a1;
  SymbolName = &__dst;
  std::__tree<std::__value_type<std::string,mlir::Operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::Operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::Operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v9, &__dst, &std::piecewise_construct, &SymbolName)[7] = this;
  if (v11 < 0)
  {
    operator delete(__dst);
  }

  return 1;
}

void sub_1A7446FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::set<llvm::StringRef>::set[abi:ne200100](uint64_t **a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<llvm::StringRef>::__emplace_hint_unique_key_args<llvm::StringRef,llvm::StringRef const&>(a1, v4, a2, a2);
      ++a2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<llvm::StringRef>::__emplace_hint_unique_key_args<llvm::StringRef,llvm::StringRef const&>(uint64_t **a1, void *a2, __int128 *a3, _OWORD *a4)
{
  v4 = *std::__tree<llvm::StringRef>::__find_equal<llvm::StringRef>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<llvm::StringRef>::__find_equal<llvm::StringRef>(void *a1, void *a2, void *a3, uint64_t *a4, __int128 *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2)
  {
    v11 = a2[4];
    v12 = a2[5];
    v28 = *a5;
    if ((llvm::StringRef::compare(&v28, v11, v12) & 0x80000000) == 0)
    {
      v13 = *a5;
      v14 = *(a5 + 1);
      v28 = *(a2 + 2);
      if ((llvm::StringRef::compare(&v28, v13, v14) & 0x80000000) == 0)
      {
        *a3 = a2;
        *a4 = a2;
        return a4;
      }

      a4 = a2 + 1;
      v17 = a2[1];
      if (v17)
      {
        v18 = a2[1];
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        v24 = a2;
        do
        {
          v19 = v24[2];
          v21 = *v19 == v24;
          v24 = v19;
        }

        while (!v21);
      }

      if (v19 == v9)
      {
        goto LABEL_27;
      }

      v25 = v19[4];
      v26 = v19[5];
      v28 = *a5;
      if ((llvm::StringRef::compare(&v28, v25, v26) & 0x80000000) != 0)
      {
        v17 = *a4;
LABEL_27:
        if (v17)
        {
          *a3 = v19;
          return v19;
        }

        else
        {
          *a3 = a2;
        }

        return a4;
      }

      return std::__tree<llvm::StringRef>::__find_equal<llvm::StringRef>(a1, a3, a5);
    }
  }

  if (*a1 == a2)
  {
    v16 = a2;
  }

  else
  {
    v15 = *a2;
    if (*a2)
    {
      do
      {
        v16 = v15;
        v15 = v15[1];
      }

      while (v15);
    }

    else
    {
      v20 = a2;
      do
      {
        v16 = v20[2];
        v21 = *v16 == v20;
        v20 = v16;
      }

      while (v21);
    }

    v22 = *a5;
    v23 = *(a5 + 1);
    v28 = *(v16 + 2);
    if ((llvm::StringRef::compare(&v28, v22, v23) & 0x80000000) == 0)
    {
      return std::__tree<llvm::StringRef>::__find_equal<llvm::StringRef>(a1, a3, a5);
    }
  }

  if (*a2)
  {
    *a3 = v16;
    return v16 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

uint64_t *std::__tree<llvm::StringRef>::__find_equal<llvm::StringRef>(uint64_t a1, void *a2, __int128 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[4];
        v9 = v4[5];
        v13 = *a3;
        if ((llvm::StringRef::compare(&v13, v8, v9) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      v10 = *a3;
      v11 = *(a3 + 1);
      v13 = *(v7 + 2);
      if ((llvm::StringRef::compare(&v13, v10, v11) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t llvm::StringRef::compare(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (a3)
  {
    v5 = memcmp(*a1, a2, a3);
    if (v5)
    {
      return (v5 >> 31) | 1u;
    }
  }

  if (v4 < v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void *std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::__assign_unique<std::pair<unsigned long long const,ValidateEntry> const*>(void *result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 8;
            break;
          }

          v11 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 8;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,ValidateEntry> const&>(v5, a2, a2);
    a2 += 8;
  }

  return result;
}

void sub_1A7447488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::__node_assign_unique(uint64_t a1, uint64_t a2, std::string *a3)
{
  v3 = a3;
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  v8 = *a2;
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = v6[4];
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_9;
        }
      }

      if (v10 >= v8)
      {
        return v9;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v9 = (a1 + 8);
LABEL_9:
    a3[1].__r_.__value_.__l.__size_ = v8;
    a3[1].__r_.__value_.__s.__data_[16] = *(a2 + 8);
    std::string::operator=(a3 + 2, (a2 + 16));
    std::string::operator=(v3 + 3, (a2 + 40));
    std::__tree<std::string>::__insert_node_at(a1, v9, v7, v3);
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::destroy(*a1, v2);
  }

  return a1;
}

char *std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,ValidateEntry> const&>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::__construct_node<std::pair<unsigned long long const,ValidateEntry> const&>();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_1A7447740(_Unwind_Exception *a1)
{
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,ValidateEntry>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ValidateEntry>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<InitializeValidateMap(mlir::OwningOpRef<mlir::ModuleOp> &,std::map<std::string,std::map<unsigned long long,ValidateEntry>> &)::$_1>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v19[0] = *(v4 + 8);
    Values = mlir::SparseElementsAttr::getValues(v19);
  }

  else
  {
    Values = *(v4 + 24);
  }

  if (*(Values + 16) == 7)
  {
    v6 = *(Values + 8);
    v7 = *v6;
    v8 = *(v6 + 3);
    if (v7 == 1818850658 && v8 == 1852404844)
    {
      return 2;
    }
  }

  v10 = *(a2 + 48);
  if (*(v10 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v19[0] = *(v10 + 8);
    v11 = mlir::SparseElementsAttr::getValues(v19);
  }

  else
  {
    v11 = *(v10 + 24);
  }

  if (*(v11 + 16) == 4 && **(v11 + 8) == 1668183398)
  {
    return 2;
  }

  v12 = *a1;
  v13 = *(a2 + 48);
  if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v19[0] = *(v13 + 8);
    v14 = mlir::SparseElementsAttr::getValues(v19);
  }

  else
  {
    v14 = *(v13 + 24);
  }

  v19[0] = *(v14 + 8);
  if (v12 + 8 == std::__tree<llvm::StringRef>::find<llvm::StringRef>(v12, v19))
  {
    return 0;
  }

  LOBYTE(v19[0]) = 1;
  *(v19 + 8) = 0u;
  memset(&v19[1] + 8, 0, 32);
  v16 = a1[1];
  v20 = a1[2];
  v17 = std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v16, v20, &std::piecewise_construct, &v20);
  v18 = v17;
  *(v17 + 40) = 1;
  if (*(v17 + 71) < 0)
  {
    operator delete(v17[6]);
  }

  *(v18 + 3) = *(v19 + 8);
  v18[8] = *(&v19[1] + 1);
  if (*(v18 + 95) < 0)
  {
    operator delete(v18[9]);
  }

  *(v18 + 9) = v19[2];
  v18[11] = *&v19[3];
  ++*a1[2];
  return 1;
}

uint64_t std::__tree<llvm::StringRef>::find<llvm::StringRef>(uint64_t a1, __int128 *a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<llvm::StringRef>::__lower_bound<llvm::StringRef>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  v9 = *a2;
  if ((llvm::StringRef::compare(&v9, v6, v7) & 0x80000000) != 0)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<llvm::StringRef>::__lower_bound<llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      v11 = *(v5 + 32);
      v9 = llvm::StringRef::compare(&v11, v7, v8);
      if (v9 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v9 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
}

const void **std::__hash_table<std::__hash_value_type<std::string,ZinIrTensorInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ZinIrTensorInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ZinIrTensorInfo>>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,ZinIrTensorInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ZinIrTensorInfo>>>::__construct_node_hash<std::pair<std::string const,ZinIrTensorInfo>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1A7447C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ZinIrTensorInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ZinIrTensorInfo>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ZinIrTensorInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ZinIrTensorInfo>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ZinIrTensorInfo>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,ZinIrTensorInfo>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  *&this[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(this[4].__r_.__value_.__r.__words + 5) = *(a2 + 101);
  *&this[3].__r_.__value_.__r.__words[2] = v8;
  *&this[3].__r_.__value_.__l.__data_ = v7;
  *&this[2].__r_.__value_.__r.__words[1] = v6;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&this[5], (a2 + 120));
  return this;
}

void sub_1A7447DDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,ZinIrTensorInfo>,0>(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

std::string *std::pair<std::string const,ZinIrTensorInfo>::pair[abi:ne200100]<std::string const&,ZinIrTensorInfo&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *a3;
  *&this[1].__r_.__value_.__r.__words[2] = a3[1];
  *&this[1].__r_.__value_.__l.__data_ = v6;
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  *(this[4].__r_.__value_.__r.__words + 5) = *(a3 + 77);
  *&this[3].__r_.__value_.__r.__words[2] = v9;
  *&this[3].__r_.__value_.__l.__data_ = v8;
  *&this[2].__r_.__value_.__r.__words[1] = v7;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&this[5], (a3 + 6));
  return this;
}

void sub_1A7447ED8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,ZinIrTensorInfo>::~pair(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,ZinIrTensorInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ZinIrTensorInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,ZinIrTensorInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ZinIrTensorInfo>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1A7448198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ZinIrTensorInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ZinIrTensorInfo>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,ZinIrTensorInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ZinIrTensorInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ZinIrTensorInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ZinIrTensorInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,ZinIrTensorInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ZinIrTensorInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ZinIrTensorInfo>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ZinIrTensorInfo>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__tree<std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<unsigned long long,ValidateEntry>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned long long,ValidateEntry>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void ValidateMLIRProgram()
{
  OUTLINED_FUNCTION_0_12(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0_12(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void MILOpConverter::Elu(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v12);
  if (*(*&v12[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, **&v12[0], *(*&v12[0] + 8));
  }

  else
  {
    v5 = **&v12[0];
    v13.__r_.__value_.__r.__words[2] = *(*&v12[0] + 16);
    *&v13.__r_.__value_.__l.__data_ = v5;
  }

  v11[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v12, 0, sizeof(v12));
  std::string::basic_string[abi:ne200100]<0>(v16, "x");
  memset(v10, 0, sizeof(v10));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v10, v16, &v18, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v12, a1, v10, a3, v11);
  v14 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v15[0] = &unk_1F1A39758;
  v15[1] = a1;
  v15[3] = v15;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v11, v15, v9);
  v10[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v15);
  ZinMILUnitBuilder::Finalize(v12, a3, a1, &v13.__r_.__value_.__l.__data_, v8, 1, 1);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  v11[0] = &v12[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  v11[0] = v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1A7448924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7448C4C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    (*(*v29 + 8))(v29, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a29 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a15);
  }

  _Unwind_Resume(exception_object);
}

void ZinMILUnitBuilder::~ZinMILUnitBuilder(void **this)
{
  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void MILOpConverter::Gelu(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v12);
  if (*(*&v12[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, **&v12[0], *(*&v12[0] + 8));
  }

  else
  {
    v5 = **&v12[0];
    v13.__r_.__value_.__r.__words[2] = *(*&v12[0] + 16);
    *&v13.__r_.__value_.__l.__data_ = v5;
  }

  v11[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v12, 0, sizeof(v12));
  std::string::basic_string[abi:ne200100]<0>(v16, "x");
  memset(v10, 0, sizeof(v10));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v10, v16, &v18, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v12, a1, v10, a3, v11);
  v14 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v15[0] = &unk_1F1A397E8;
  v15[3] = v15;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v11, v15, v9);
  v10[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v15);
  ZinMILUnitBuilder::Finalize(v12, a3, a1, &v13.__r_.__value_.__l.__data_, v8, 1, 1);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  v11[0] = &v12[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  v11[0] = v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1A7448FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void MILOpConverter::LeakyRelu(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v12);
  if (*(*&v12[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, **&v12[0], *(*&v12[0] + 8));
  }

  else
  {
    v5 = **&v12[0];
    v13.__r_.__value_.__r.__words[2] = *(*&v12[0] + 16);
    *&v13.__r_.__value_.__l.__data_ = v5;
  }

  v11[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v12, 0, sizeof(v12));
  std::string::basic_string[abi:ne200100]<0>(v16, "x");
  memset(v10, 0, sizeof(v10));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v10, v16, &v18, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v12, a1, v10, a3, v11);
  v14 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v15[0] = &unk_1F1A39868;
  v15[1] = a1;
  v15[3] = v15;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v11, v15, v9);
  v10[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v15);
  ZinMILUnitBuilder::Finalize(v12, a3, a1, &v13.__r_.__value_.__l.__data_, v8, 1, 1);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  v11[0] = &v12[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  v11[0] = v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1A74492BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void MILOpConverter::SimpleActivation(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v21 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v14);
  if (*(*&v14[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, **&v14[0], *(*&v14[0] + 8));
  }

  else
  {
    v6 = **&v14[0];
    v16.__r_.__value_.__r.__words[2] = *(*&v14[0] + 16);
    *&v16.__r_.__value_.__l.__data_ = v6;
  }

  v13[0] = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  v9 = (*(*v8 + 88))(v8);
  v15 = MILOpConverter::NeuronTypeFromString((a2 + 8));
  if (!v15)
  {
    if (*(a2 + 31) >= 0)
    {
      v10 = (a2 + 8);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    ZinAssertImpl("Unsupported elementwise type %s", v10);
  }

  memset(v14, 0, sizeof(v14));
  std::string::basic_string[abi:ne200100]<0>(v19, "x");
  memset(v12, 0, sizeof(v12));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v12, v19, &v21, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v14, a1, v12, a3, v13);
  v17 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v18[0] = &unk_1F1A398E8;
  v18[1] = &v15;
  v18[3] = v18;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v13, v18, v11);
  v12[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v18);
  ZinMILUnitBuilder::Finalize(v14, a3, a1, &v16.__r_.__value_.__l.__data_, v9, 1, 1);
  v12[0] = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  v13[0] = &v14[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
  v13[0] = v14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v13);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1A74495D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void MILOpConverter::Relu6(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v12);
  if (*(*&v12[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, **&v12[0], *(*&v12[0] + 8));
  }

  else
  {
    v5 = **&v12[0];
    v13.__r_.__value_.__r.__words[2] = *(*&v12[0] + 16);
    *&v13.__r_.__value_.__l.__data_ = v5;
  }

  v11[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v12, 0, sizeof(v12));
  std::string::basic_string[abi:ne200100]<0>(v16, "x");
  memset(v10, 0, sizeof(v10));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v10, v16, &v18, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v12, a1, v10, a3, v11);
  v14 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v15[0] = &unk_1F1A39968;
  v15[3] = v15;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v11, v15, v9);
  v10[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v15);
  ZinMILUnitBuilder::Finalize(v12, a3, a1, &v13.__r_.__value_.__l.__data_, v8, 1, 1);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  v11[0] = &v12[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  v11[0] = v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1A74498A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void MILOpConverter::LinearActivation(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v35 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(__p);
  if (*(__p[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *__p[0], *(__p[0] + 1));
  }

  else
  {
    v5 = *__p[0];
    v24.__r_.__value_.__r.__words[2] = *(__p[0] + 2);
    *&v24.__r_.__value_.__l.__data_ = v5;
  }

  v21[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v21);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (SBYTE7(v23[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "beta");
  v10 = MIL::IROperation::TryGetParameterValue();
  if (SBYTE7(v23[0]) < 0)
  {
    operator delete(__p[0]);
  }

  memset(v23, 0, sizeof(v23));
  *__p = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v32, "x");
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v19, &v32, &v35, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(__p, a1, v19, a3, v21);
  v15 = v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v12 = v19;
  std::string::basic_string[abi:ne200100](v19, size + 9);
  if (v20 < 0)
  {
    v12 = v19[0];
  }

  if (size)
  {
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24.__r_.__value_.__r.__words[0];
    }

    memmove(v12, v13, size);
  }

  strcpy(v12 + size, "__@linear");
  v14 = v21[0];
  v31 = ParameterValue;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v32, &v31, &v32, 1uLL);
  v30 = v10;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v15, &v30, &v31, 1uLL);
  v28[0] = &unk_1F1A399E8;
  v28[3] = v28;
  v29 = 0;
  v26[0] = &unk_1F1A399E8;
  v26[3] = v26;
  v27 = 0;
  ZinMILUnitBuilder::InsertAxPlusB(v19, v14, &v32, &v15, a3, v28, v18, v26);
  v25 = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v26);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v28);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  ZinMILUnitBuilder::Finalize(__p, a3, a1, &v24.__r_.__value_.__l.__data_, v8, 1, 1);
  v19[0] = v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v19);
  v21[0] = v23 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v21);
  v21[0] = __p;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v21);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1A7449D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void **a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  a23 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void MILOpConverter::ScaledTanh(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v46 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v30);
  if (*(*&v30[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, **&v30[0], *(*&v30[0] + 8));
  }

  else
  {
    v5 = **&v30[0];
    v31.__r_.__value_.__r.__words[2] = *(*&v30[0] + 16);
    *&v31.__r_.__value_.__l.__data_ = v5;
  }

  v29[0] = v30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v30, 0, sizeof(v30));
  std::string::basic_string[abi:ne200100]<0>(&v45, "x");
  memset(&__p, 0, sizeof(__p));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v45, &v46, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v30, a1, &__p, a3, v29);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (SHIBYTE(v45.__end_cap_.__value_) < 0)
  {
    operator delete(v45.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "beta");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  begin = &v45;
  std::string::basic_string[abi:ne200100](&v45, size + 7);
  if (SHIBYTE(v45.__end_cap_.__value_) < 0)
  {
    begin = v45.__begin_;
  }

  if (size)
  {
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v31;
    }

    else
    {
      v12 = v31.__r_.__value_.__r.__words[0];
    }

    memmove(begin, v12, size);
  }

  strcpy(begin + size, "__@beta");
  v13 = v29[0];
  v37 = ParameterValue;
  v26 = 0;
  v27 = 0;
  p_p = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&p_p, &v37, v38, 1uLL);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v43[0] = &unk_1F1A399E8;
  v43[3] = v43;
  v44 = 0;
  v41[0] = &unk_1F1A399E8;
  v41[3] = v41;
  v42 = 0;
  ZinMILUnitBuilder::InsertAxPlusB(&v45.__begin_, v13, &p_p, &v22, a3, v43, &__p, v41);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v41);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v43);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (p_p)
  {
    v26 = p_p;
    operator delete(p_p);
  }

  if (SHIBYTE(v45.__end_cap_.__value_) < 0)
  {
    operator delete(v45.__begin_);
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v31.__r_.__value_.__l.__size_;
  }

  p_p_p = &p_p;
  std::string::basic_string[abi:ne200100](&p_p, v14 + 7);
  if (v27 < 0)
  {
    p_p_p = p_p;
  }

  if (v14)
  {
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v31;
    }

    else
    {
      v16 = v31.__r_.__value_.__r.__words[0];
    }

    memmove(p_p_p, v16, v14);
  }

  strcpy(p_p_p + v14, "__@tanh");
  v40[0] = &unk_1F1A39A78;
  v40[3] = v40;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(&__p, v40, &v45);
  std::vector<std::string>::__vdeallocate(&__p);
  __p = v45;
  memset(&v45, 0, sizeof(v45));
  v22 = &v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v40);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(p_p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v45, "alpha");
  v17 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v45.__end_cap_.__value_) < 0)
  {
    operator delete(v45.__begin_);
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v31.__r_.__value_.__l.__size_;
  }

  v19 = &p_p;
  std::string::basic_string[abi:ne200100](&p_p, v18 + 8);
  if (v27 < 0)
  {
    v19 = p_p;
  }

  if (v18)
  {
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v31;
    }

    else
    {
      v20 = v31.__r_.__value_.__r.__words[0];
    }

    memmove(v19, v20, v18);
  }

  strcpy(v19 + v18, "__@alpha");
  v21 = __p.__begin_;
  v39 = v17;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v22, &v39, v40, 1uLL);
  v37 = 0;
  v38[0] = 0;
  v38[1] = 0;
  v35[0] = &unk_1F1A399E8;
  v35[3] = v35;
  v36 = 0;
  v33[0] = &unk_1F1A399E8;
  v33[3] = v33;
  v34 = 0;
  ZinMILUnitBuilder::InsertAxPlusB(&p_p, v21, &v22, &v37, a3, v35, &v45, v33);
  std::vector<std::string>::__vdeallocate(&__p);
  __p = v45;
  memset(&v45, 0, sizeof(v45));
  v32 = &v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v33);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v35);
  if (v37)
  {
    v38[0] = v37;
    operator delete(v37);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(p_p);
  }

  ZinMILUnitBuilder::Finalize(v30, a3, a1, &v31.__r_.__value_.__l.__data_, v8, 1, 1);
  v45.__begin_ = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
  __p.__begin_ = v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v29[0] = &v30[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
  v29[0] = v30;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v29);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_1A744A488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  a26 = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void sub_1A744A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v10 - 73) < 0)
  {
    operator delete(*(v10 - 96));
  }

  JUMPOUT(0x1A744A5B4);
}

void MILOpConverter::PRelu(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v75 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&v68);
  if (*(v68.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *v68.__r_.__value_.__l.__data_, *(v68.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v5 = *v68.__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = *(v68.__r_.__value_.__r.__words[0] + 16);
    *&v58.__r_.__value_.__l.__data_ = v5;
  }

  *&v56[0] = &v68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v56);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  std::string::basic_string[abi:ne200100]<0>(&v68, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  MILTensorRank = GetMILTensorRank(v10);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  memset(&v57, 0, sizeof(v57));
  std::string::basic_string[abi:ne200100]<0>(&v68, "alpha");
  RetrieveRequiredValue<float>(a1, &v68, &v57, 0);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (v57.__begin_ == v57.__end_)
  {
    v15 = 1;
  }

  else
  {
    v12 = v57.__begin_ + 1;
    v13 = *v57.__begin_;
    do
    {
      v14 = *(v12 - 1);
      v15 = v13 == v14;
    }

    while (v13 == v14 && v12++ != v57.__end_);
  }

  memset(v56, 0, sizeof(v56));
  std::string::basic_string[abi:ne200100]<0>(v73, "x");
  memset(&v68, 0, sizeof(v68));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v68, v73, &v75, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v56, a1, &v68, a3, v55);
  v53[0] = &v68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v53);
  if (v74 < 0)
  {
    operator delete(v73[0]);
    if (v15)
    {
      goto LABEL_19;
    }
  }

  else if (v15)
  {
LABEL_19:
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v18 = &v68;
    std::string::basic_string[abi:ne200100](&v68, size + 13);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v68.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v58;
      }

      else
      {
        v19 = v58.__r_.__value_.__r.__words[0];
      }

      memmove(v18, v19, size);
    }

    strcpy(v18 + size, "__@leaky_relu");
    v72[0] = &unk_1F1A39AF8;
    v72[1] = &v57;
    v72[3] = v72;
    ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v55, v72, v54);
    v73[0] = v54;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v73);
    std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v72);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    goto LABEL_125;
  }

  v68.__r_.__value_.__r.__words[0] = 3;
  std::string::basic_string[abi:ne200100]<0>(&v68.__r_.__value_.__l.__size_, "NCW");
  v69.__r_.__value_.__l.__size_ = 4;
  std::string::basic_string[abi:ne200100]<0>(&v69.__r_.__value_.__r.__words[2], "NCHW");
  v70[2] = 5;
  std::string::basic_string[abi:ne200100]<0>(v71, "NCDHW");
  std::map<long,std::string>::map[abi:ne200100](v73, &v68, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v71[i + 2]) < 0)
    {
      operator delete(v71[i]);
    }
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v58.__r_.__value_.__l.__size_;
  }

  v22 = &v68;
  std::string::basic_string[abi:ne200100](&v68, v21 + 23);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v68.__r_.__value_.__r.__words[0];
  }

  if (v21)
  {
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v58;
    }

    else
    {
      v23 = v58.__r_.__value_.__r.__words[0];
    }

    memmove(v22, v23, v21);
  }

  strcpy(v22 + v21, "__@convert_input_layout");
  ZinMILUnitBuilder::DeclareCustomOperationInputLayout(v53, a3, MILTensorRank, v55[0], v73, v8);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v58.__r_.__value_.__l.__size_;
  }

  v25 = &v68;
  std::string::basic_string[abi:ne200100](&v68, v24 + 7);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v25 = v68.__r_.__value_.__r.__words[0];
  }

  if (v24)
  {
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v58;
    }

    else
    {
      v26 = v58.__r_.__value_.__r.__words[0];
    }

    memmove(v25, v26, v24);
  }

  strcpy(v25 + v24, "__@relu");
  v67[0] = &unk_1F1A39B78;
  v67[3] = v67;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v53, v67, v52);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v67);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v58.__r_.__value_.__l.__size_;
  }

  v28 = &v68;
  std::string::basic_string[abi:ne200100](&v68, v27 + 15);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = v68.__r_.__value_.__r.__words[0];
  }

  if (v27)
  {
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v58;
    }

    else
    {
      v29 = v58.__r_.__value_.__r.__words[0];
    }

    memmove(v28, v29, v27);
  }

  strcpy(v28 + v27, "__@relu_clamped");
  v66[0] = &unk_1F1A39BF8;
  v66[3] = v66;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v53, v66, &v51);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v66);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v68, "alpha");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v58.__r_.__value_.__l.__size_;
  }

  begin = &v50;
  std::string::basic_string[abi:ne200100](&v50, v31 + 6);
  if (SHIBYTE(v50.__end_cap_.__value_) < 0)
  {
    begin = v50.__begin_;
  }

  if (v31)
  {
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v58;
    }

    else
    {
      v33 = v58.__r_.__value_.__r.__words[0];
    }

    memmove(begin, v33, v31);
  }

  strcpy(begin + v31, "__@goc");
  v34 = v51.__begin_;
  v65 = ParameterValue;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v47, &v65, v66, 1uLL);
  __p = 0;
  v45 = 0;
  v46 = 0;
  v63[0] = &unk_1F1A399E8;
  v63[3] = v63;
  v64 = 0;
  v61[0] = &unk_1F1A399E8;
  v61[3] = v61;
  v62 = 0;
  ZinMILUnitBuilder::InsertAxPlusB(&v50.__begin_, v34, &v47, &__p, a3, v63, &v68, v61);
  std::vector<std::string>::__vdeallocate(&v51);
  v51 = v68;
  memset(&v68, 0, sizeof(v68));
  p_p = &v68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v61);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v63);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (SHIBYTE(v50.__end_cap_.__value_) < 0)
  {
    operator delete(v50.__begin_);
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v58.__r_.__value_.__l.__size_;
  }

  v36 = &v47;
  std::string::basic_string[abi:ne200100](&v47, v35 + 5);
  if (v49 < 0)
  {
    v36 = v47;
  }

  if (v35)
  {
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v58;
    }

    else
    {
      v37 = v58.__r_.__value_.__r.__words[0];
    }

    memmove(v36, v37, v35);
  }

  strcpy(v36 + v35, "__@ew");
  if (*(v52[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *v52[0], *(v52[0] + 8));
  }

  else
  {
    v38 = *v52[0];
    v68.__r_.__value_.__r.__words[2] = *(v52[0] + 16);
    *&v68.__r_.__value_.__l.__data_ = v38;
  }

  if (SHIBYTE(v51.__begin_->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, v51.__begin_->__r_.__value_.__l.__data_, v51.__begin_->__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = *&v51.__begin_->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v51.__begin_->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v39;
  }

  __p = 0;
  v45 = 0;
  v46 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v68, v70, 2uLL);
  v60[0] = &unk_1F1A39CD8;
  v60[3] = v60;
  ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(&__p, v60, &v50);
  std::vector<std::string>::__vdeallocate(&v51);
  v51 = v50;
  memset(&v50, 0, sizeof(v50));
  p_p = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v60);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v69.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v68 + j * 8 + 24));
    }
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v47);
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = v58.__r_.__value_.__l.__size_;
  }

  v42 = &v50;
  std::string::basic_string[abi:ne200100](&v50, v41 + 24);
  if (SHIBYTE(v50.__end_cap_.__value_) < 0)
  {
    v42 = v50.__begin_;
  }

  if (v41)
  {
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v58;
    }

    else
    {
      v43 = v58.__r_.__value_.__r.__words[0];
    }

    memmove(v42, v43, v41);
  }

  strcpy(v42 + v41, "__@convert_output_layout");
  ZinMILUnitBuilder::ConvertToDefaultLayout(&v68, a3, MILTensorRank, v51.__begin_, v73, v8);
  std::vector<std::string>::__vdeallocate(&v51);
  v51 = v68;
  memset(&v68, 0, sizeof(v68));
  v47 = &v68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
  if (SHIBYTE(v50.__end_cap_.__value_) < 0)
  {
    operator delete(v50.__begin_);
  }

  v68.__r_.__value_.__r.__words[0] = &v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v68);
  v68.__r_.__value_.__r.__words[0] = v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v68);
  v68.__r_.__value_.__r.__words[0] = v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v68);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v73, v73[1]);
LABEL_125:
  ZinMILUnitBuilder::Finalize(v56, a3, a1, &v58.__r_.__value_.__l.__data_, v8, 1, 1);
  v68.__r_.__value_.__r.__words[0] = v55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v68);
  v68.__r_.__value_.__r.__words[0] = &v56[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v68);
  v68.__r_.__value_.__r.__words[0] = v56;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v68);
  if (v57.__begin_)
  {
    v57.__end_ = v57.__begin_;
    operator delete(v57.__begin_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void sub_1A744B130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (*(v55 - 201) < 0)
  {
    operator delete(*(v55 - 224));
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  *(v55 - 224) = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v55 - 224));
  *(v55 - 224) = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v55 - 224));
  *(v55 - 224) = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v55 - 224));
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v55 - 96, *(v55 - 88));
  *(v55 - 224) = &a37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v55 - 224));
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a40);
  if (a47)
  {
    a48 = a47;
    operator delete(a47);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Unwind_Resume(a1);
}

uint64_t RetrieveRequiredValue<float>(uint64_t a1, uint64_t a2, std::vector<unsigned int> *a3, uint64_t a4)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  result = RetrieveIRValue<float,float>(ParameterValue, a3);
  if ((result & 1) == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    ZinAssertImpl("Failed to retrieve parameter %s", v8);
  }

  return result;
}

void ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A744B714(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a16);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::ThresholdedRelu(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v13);
  if (*(*&v13[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, **&v13[0], *(*&v13[0] + 8));
  }

  else
  {
    v5 = **&v13[0];
    v14.__r_.__value_.__r.__words[2] = *(*&v13[0] + 16);
    *&v14.__r_.__value_.__l.__data_ = v5;
  }

  v12[0] = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v13, 0, sizeof(v13));
  std::string::basic_string[abi:ne200100]<0>(v17, "x");
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, v17, &v19, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v13, a1, __p, a3, v12);
  v15 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  LODWORD(v17[0]) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  RetrieveRequiredValue<float>(a1, __p, v17, 0);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v16[0] = &unk_1F1A39D68;
  v16[1] = v17;
  v16[3] = v16;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v12, v16, v9);
  __p[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v16);
  ZinMILUnitBuilder::Finalize(v13, a3, a1, &v14.__r_.__value_.__l.__data_, v8, 1, 1);
  __p[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v12[0] = &v13[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  v12[0] = v13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v12);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1A744BAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  a19 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t RetrieveRequiredValue<float>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  result = RetrieveIRValue<float,float>(ParameterValue, a3);
  if ((result & 1) == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    ZinAssertImpl("Failed to retrieve parameter %s", v8);
  }

  return result;
}

void MILOpConverter::Softsign(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v31);
  if (*(*&v31[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, **&v31[0], *(*&v31[0] + 8));
  }

  else
  {
    v5 = **&v31[0];
    v32.__r_.__value_.__r.__words[2] = *(*&v31[0] + 16);
    *&v32.__r_.__value_.__l.__data_ = v5;
  }

  v35.__r_.__value_.__r.__words[0] = v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v31, 0, sizeof(v31));
  std::string::basic_string[abi:ne200100]<0>(&v39, "x");
  memset(&v35, 0, sizeof(v35));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v35, &v39, &v40, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v31, a1, &v35, a3, v30);
  v29.__begin_ = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
  if (SHIBYTE(v39.__end_cap_.__value_) < 0)
  {
    operator delete(v39.__begin_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v10 = &v35;
  std::string::basic_string[abi:ne200100](&v35, size + 6);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v35.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v32;
    }

    else
    {
      v11 = v32.__r_.__value_.__r.__words[0];
    }

    memmove(v10, v11, size);
  }

  strcpy(v10 + size, "__@abs");
  v38[0] = &unk_1F1A39DE8;
  v38[3] = v38;
  ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(v30, v38, &v39);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v38);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v32.__r_.__value_.__l.__size_;
  }

  begin = &v29;
  std::string::basic_string[abi:ne200100](&v29, v12 + 11);
  if (SHIBYTE(v29.__end_cap_.__value_) < 0)
  {
    begin = v29.__begin_;
  }

  if (v12)
  {
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v32;
    }

    else
    {
      v14 = v32.__r_.__value_.__r.__words[0];
    }

    memmove(begin, v14, v12);
  }

  strcpy(begin + v12, "__@plus_one");
  v15 = v39.__begin_;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v22 = 1065353216;
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v22, &__p, 1uLL);
  ZinMILUnitBuilder::InsertAxPlusB(&v29.__begin_, v15, &v26, &__p, a3, &v35);
  std::vector<std::string>::__vdeallocate(&v39);
  v39 = v35;
  memset(&v35, 0, sizeof(v35));
  v33 = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (SHIBYTE(v29.__end_cap_.__value_) < 0)
  {
    operator delete(v29.__begin_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v32.__r_.__value_.__l.__size_;
  }

  v17 = &v29;
  std::string::basic_string[abi:ne200100](&v29, v16 + 6);
  if (SHIBYTE(v29.__end_cap_.__value_) < 0)
  {
    v17 = v29.__begin_;
  }

  if (v16)
  {
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__r_.__value_.__r.__words[0];
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "__@inv");
  v37[0] = &unk_1F1A39E68;
  v37[3] = v37;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(&v39, v37, &v35);
  std::vector<std::string>::__vdeallocate(&v39);
  v39 = v35;
  memset(&v35, 0, sizeof(v35));
  v26 = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v37);
  if (SHIBYTE(v29.__end_cap_.__value_) < 0)
  {
    operator delete(v29.__begin_);
  }

  if (SHIBYTE(v39.__begin_->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, v39.__begin_->__r_.__value_.__l.__data_, v39.__begin_->__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = *&v39.__begin_->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v39.__begin_->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v19;
  }

  if (*(v30[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *v30[0], *(v30[0] + 8));
  }

  else
  {
    v20 = *v30[0];
    v36.__r_.__value_.__r.__words[2] = *(v30[0] + 16);
    *&v36.__r_.__value_.__l.__data_ = v20;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v26, &v35, v37, 2uLL);
  v34[0] = &unk_1F1A39EE8;
  v34[3] = v34;
  ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(&v26, v34, &v29);
  std::vector<std::string>::__vdeallocate(&v39);
  v39 = v29;
  memset(&v29, 0, sizeof(v29));
  __p = &v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v34);
  __p = &v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v36.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v35 + i * 8 + 24));
    }
  }

  ZinMILUnitBuilder::Finalize(v31, a3, a1, &v32.__r_.__value_.__l.__data_, v8, 1, 1);
  v35.__r_.__value_.__r.__words[0] = &v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  v35.__r_.__value_.__r.__words[0] = v30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  v35.__r_.__value_.__r.__words[0] = &v31[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  v35.__r_.__value_.__r.__words[0] = v31;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v35);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}