void sub_1A6992630(_Unwind_Exception *a1)
{
  ZinIrUnitInfo::~ZinIrUnitInfo(&STACK[0x720]);
  v3 = *(v1 - 256);
  if (v3)
  {
    *(v1 - 248) = v3;
    operator delete(v3);
  }

  STACK[0x390] = v1 - 232;
  std::vector<LargeStrideConvPoolDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x390]);
  STACK[0x390] = v1 - 208;
  std::vector<ZinConvLargeStrides::ConvLargeStrideDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x390]);
  _Unwind_Resume(a1);
}

uint64_t ValidateLargeKernelStridesForDeconv(void **a1, uint64_t a2, int *a3, __int128 *a4, uint64_t a5, uint64_t *a6, int a7, char a8, char a9, uint64_t a10, char a11, uint64_t a12)
{
  v112[42] = *MEMORY[0x1E69E9840];
  v109 = vextq_s8(*(a2 + 88), *(a2 + 88), 8uLL);
  v110 = *(a2 + 104);
  ZinGetOutputTensorDimension(a4, &v109, (a2 + 152), (a2 + 164), (a2 + 176), a5, (a2 + 208), v108);
  v106 = 0;
  v105 = 0;
  v107 = 0;
  v103 = 0;
  v102 = 0;
  v104 = 0;
  if (!ZinDeconvLargeStrides::DecomposeDeConvWithLargeStride(a4, v108, *a3, a2, a7, *a6, &v102, &v105))
  {
    v21 = v105;
    if (v106 != v105)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v20 = 1;
      while (1)
      {
        ZinDeconvLargeStrides::DeconvStride4SamePad::DeconvStride4SamePad(&v111, (v21 + v22));
        if (v111 == 31)
        {
          break;
        }

        if (v111 == 1)
        {
          LOBYTE(v92) = 0;
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v98 = 0;
          v99 = 0;
          __p = 0;
          v90 = 0u;
          memset(v91, 0, 27);
          v100 = 5;
          v101 = 0;
          v89 = *a3;
          v25 = *(v102 + v23 + 32);
          v26 = *(v102 + v23 + 16);
          v90 = *(v102 + v23);
          *&v91[1] = v25;
          v91[0] = v26;
          v27 = a8;
          if (v23)
          {
            v27 = 0;
          }

          BYTE8(v91[1]) = v27;
          v28 = a9;
          if (v23)
          {
            v28 = 0;
          }

          BYTE10(v91[1]) = v28;
          v29 = a10;
          if (v23)
          {
            v29 = 1;
            v30 = 1;
          }

          else
          {
            v30 = a11;
          }

          v92 = v29;
          v93 = v30;
          ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ZinConvValidator(&v81, a6, v112, &v89);
          ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::Validate(&v81, v88);
          v85 = v88;
          std::vector<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>>::__destroy_vector::operator()[abi:ne200100](&v85);
          v31 = v82 == 0;
          ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(&v81);
          goto LABEL_18;
        }

        v20 = 0;
LABEL_22:
        ZinDeconvLargeStrides::DeconvStride4SamePad::~DeconvStride4SamePad(&v111);
        ++v24;
        v21 = v105;
        v23 += 40;
        v22 += 344;
        if (0x82FA0BE82FA0BE83 * ((v106 - v105) >> 3) <= v24)
        {
          std::string::operator=((a12 + 8), (v105 + 16));
          *(a12 + 32) = *(v21 + 40);
          if (v21 + 8 == a12)
          {
            *(a12 + 64) = *(v21 + 72);
            v70 = *(v21 + 88);
            v71 = *(v21 + 120);
            *(a12 + 96) = *(v21 + 104);
            *(a12 + 112) = v71;
            *(a12 + 80) = v70;
          }

          else
          {
            std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a12 + 40), *(v21 + 48), *(v21 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 56) - *(v21 + 48)) >> 3));
            *(a12 + 64) = *(v21 + 72);
            v34 = *(v21 + 88);
            v35 = *(v21 + 120);
            *(a12 + 96) = *(v21 + 104);
            *(a12 + 112) = v35;
            *(a12 + 80) = v34;
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a12 + 128), *(v21 + 136), *(v21 + 144), (*(v21 + 144) - *(v21 + 136)) >> 2);
            std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a12 + 152), *(v21 + 160), *(v21 + 168), (*(v21 + 168) - *(v21 + 160)) >> 3);
          }

          v72 = *(v21 + 184);
          v73 = *(v21 + 200);
          v74 = *(v21 + 216);
          *(a12 + 220) = *(v21 + 228);
          *(a12 + 192) = v73;
          *(a12 + 208) = v74;
          *(a12 + 176) = v72;
          v76 = *(v21 + 296);
          v75 = *(v21 + 312);
          v77 = *(v21 + 280);
          *(a12 + 316) = *(v21 + 324);
          *(a12 + 288) = v76;
          *(a12 + 304) = v75;
          *(a12 + 272) = v77;
          v78 = *(v21 + 264);
          *(a12 + 240) = *(v21 + 248);
          *(a12 + 256) = v78;
          goto LABEL_71;
        }
      }

      LOBYTE(v92) = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v98 = 0;
      v99 = 0;
      __p = 0;
      v90 = 0u;
      memset(v91, 0, 27);
      v100 = 5;
      v101 = 0;
      v89 = *a3;
      v32 = *(v102 + v23 + 32);
      v33 = *(v102 + v23 + 16);
      v90 = *(v102 + v23);
      *&v91[1] = v32;
      v91[0] = v33;
      BYTE10(v91[1]) = 0;
      v93 = 1;
      v92 = 1;
      ZinPixelShuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::ZinPixelShuffleValidator(&v81, a6, v112, &v89);
      ZinPixelShuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::Validate(&v81);
      v31 = v82 == 0;
      ZinPixelShuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::~ZinPixelShuffleValidator(&v81);
LABEL_18:
      if (__p)
      {
        v98 = __p;
        operator delete(__p);
      }

      v20 &= v31;
      goto LABEL_22;
    }
  }

  v86 = 0;
  v85 = 0;
  v87 = 0;
  if (!ZinDeconvLargeStrides::DecomposeDeConvWithLargeStride(a4, v108, *a3, a2, a7, *a6, &v102, &v85))
  {
    v36 = v85;
    if (v86 != v85)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v20 = 1;
      while (1)
      {
        ZinDeconvLargeStrides::DeconvStride3And4::DeconvStride3And4(&v111, &v36[v37]);
        if (v111 == 17)
        {
          LOBYTE(v92) = 0;
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v98 = 0;
          v99 = 0;
          __p = 0;
          v90 = 0u;
          memset(v91, 0, 27);
          v100 = 5;
          v101 = 0;
          v89 = *a3;
          v53 = *(v102 + v38 + 56);
          v54 = *(v102 + v38 + 72);
          v90 = *(v102 + v38 + 40);
          *&v91[1] = v54;
          v91[0] = v53;
          v55 = a8;
          if (v38)
          {
            v55 = 0;
          }

          BYTE8(v91[1]) = v55;
          v56 = a9;
          if (v38)
          {
            v56 = 0;
          }

          BYTE10(v91[1]) = v56;
          v57 = a10;
          if (v38)
          {
            v58 = 1;
          }

          else
          {
            v58 = a11;
          }

          if (v38)
          {
            v57 = 1;
          }

          v92 = v57;
          v93 = v58;
          ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::ZinInputViewValidator(&v81, a6, v112, &v89);
          ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::Validate(&v81);
          v46 = v82 == 0;
          ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::~ZinInputViewValidator(&v81);
          goto LABEL_58;
        }

        if (v111 == 3)
        {
          break;
        }

        if (v111 == 1)
        {
          LOBYTE(v92) = 0;
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v98 = 0;
          v99 = 0;
          __p = 0;
          v90 = 0u;
          memset(v91, 0, 27);
          v100 = 5;
          v101 = 0;
          v89 = *a3;
          v40 = *(v102 + v38 + 32);
          v41 = *(v102 + v38 + 16);
          v90 = *(v102 + v38);
          *&v91[1] = v40;
          v91[0] = v41;
          v42 = a8;
          if (v38)
          {
            v42 = 0;
          }

          BYTE8(v91[1]) = v42;
          v43 = a9;
          if (v38)
          {
            v43 = 0;
          }

          BYTE10(v91[1]) = v43;
          v44 = a10;
          if (v38)
          {
            v44 = 1;
            v45 = 1;
          }

          else
          {
            v45 = a11;
          }

          v92 = v44;
          v93 = v45;
          ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ZinConvValidator(&v81, a6, v112, &v89);
          ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::Validate(&v81, v84);
          v83[0] = v84;
          std::vector<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>>::__destroy_vector::operator()[abi:ne200100](v83);
          v46 = v82 == 0;
          ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(&v81);
LABEL_58:
          if (__p)
          {
            v98 = __p;
            operator delete(__p);
          }

          v20 &= v46;
        }

        ZinDeconvLargeStrides::DeconvStride3And4::~DeconvStride3And4(&v111);
        ++v39;
        v36 = v85;
        v38 += 40;
        v37 += 43;
        if (0x82FA0BE82FA0BE83 * (v86 - v85) <= v39)
        {
          if (v86 != v85)
          {
            a1 = v85 + 1;
          }

          std::string::operator=((a12 + 8), (a1 + 1));
          *(a12 + 32) = *(a1 + 8);
          if (a1 != a12)
          {
            std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a12 + 40), a1[5], a1[6], 0xAAAAAAAAAAAAAAABLL * ((a1[6] - a1[5]) >> 3));
            *(a12 + 64) = *(a1 + 4);
            v59 = *(a1 + 5);
            v60 = *(a1 + 7);
            *(a12 + 96) = *(a1 + 6);
            *(a12 + 112) = v60;
            *(a12 + 80) = v59;
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a12 + 128), a1[16], a1[17], (a1[17] - a1[16]) >> 2);
            std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a12 + 152), a1[19], a1[20], (a1[20] - a1[19]) >> 3);
            goto LABEL_68;
          }

LABEL_67:
          *(a12 + 64) = *(a1 + 4);
          v61 = *(a1 + 5);
          v62 = *(a1 + 7);
          *(a12 + 96) = *(a1 + 6);
          *(a12 + 112) = v62;
          *(a12 + 80) = v61;
          goto LABEL_68;
        }
      }

      LOBYTE(v92) = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v98 = 0;
      v99 = 0;
      __p = 0;
      v90 = 0u;
      memset(v91, 0, 27);
      v100 = 5;
      v101 = 0;
      v89 = *a3;
      v47 = *(v102 + v38 + 32);
      v48 = *(v102 + v38 + 16);
      v90 = *(v102 + v38);
      *&v91[1] = v47;
      v91[0] = v48;
      v49 = a8;
      if (v38)
      {
        v49 = 0;
      }

      BYTE8(v91[1]) = v49;
      v50 = a9;
      if (v38)
      {
        v50 = 0;
      }

      BYTE10(v91[1]) = v50;
      v51 = a10;
      if (v38)
      {
        v52 = 1;
      }

      else
      {
        v52 = a11;
      }

      if (v38)
      {
        v51 = 1;
      }

      v92 = v51;
      v93 = v52;
      std::vector<ZinIrTensorInfo>::vector[abi:ne200100](v83, v39, &v89);
      ZinConcatValidator<ZinIrConcatUnitInfo,ZinIrTensorInfo>::ZinConcatValidator(&v81, a6, v112, v83[0], 0xF0F0F0F0F0F0F0F1 * (v83[1] - v83[0]));
      ZinConcatValidator<ZinIrConcatUnitInfo,ZinIrTensorInfo>::Validate(&v81);
      v46 = v82 == 0;
      ZinConcatValidator<ZinIrConcatUnitInfo,ZinIrTensorInfo>::~ZinConcatValidator(&v81);
      v81.i64[0] = v83;
      std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v81);
      goto LABEL_58;
    }
  }

  std::string::operator=((a12 + 8), (a1 + 1));
  *(a12 + 32) = *(a1 + 8);
  if (a12 == a1)
  {
    v20 = 0;
    goto LABEL_67;
  }

  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a12 + 40), a1[5], a1[6], 0xAAAAAAAAAAAAAAABLL * ((a1[6] - a1[5]) >> 3));
  *(a12 + 64) = *(a1 + 4);
  v18 = *(a1 + 5);
  v19 = *(a1 + 7);
  *(a12 + 96) = *(a1 + 6);
  *(a12 + 112) = v19;
  *(a12 + 80) = v18;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a12 + 128), a1[16], a1[17], (a1[17] - a1[16]) >> 2);
  std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a12 + 152), a1[19], a1[20], (a1[20] - a1[19]) >> 3);
  v20 = 0;
LABEL_68:
  v63 = *(a1 + 11);
  v64 = *(a1 + 12);
  v65 = *(a1 + 13);
  *(a12 + 220) = *(a1 + 220);
  *(a12 + 192) = v64;
  *(a12 + 208) = v65;
  *(a12 + 176) = v63;
  v67 = *(a1 + 18);
  v66 = *(a1 + 19);
  v68 = *(a1 + 17);
  *(a12 + 316) = *(a1 + 316);
  *(a12 + 288) = v67;
  *(a12 + 304) = v66;
  *(a12 + 272) = v68;
  v69 = *(a1 + 16);
  *(a12 + 240) = *(a1 + 15);
  *(a12 + 256) = v69;
  v81.i64[0] = &v85;
  std::vector<ZinDeconvLargeStrides::DeconvStride3And4>::__destroy_vector::operator()[abi:ne200100](&v81);
LABEL_71:
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }

  v81.i64[0] = &v105;
  std::vector<ZinDeconvLargeStrides::DeconvStride4SamePad>::__destroy_vector::operator()[abi:ne200100](&v81);
  return v20 & 1;
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetConvDesc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 48);
  v8 = *v7;
  v9 = v7[2];
  *(a4 + 16) = v7[1];
  *(a4 + 32) = v9;
  *a4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[6];
  *(a4 + 80) = v7[5];
  *(a4 + 96) = v12;
  *(a4 + 48) = v10;
  *(a4 + 64) = v11;
  v13 = v7[7];
  v14 = v7[8];
  v15 = v7[10];
  *(a4 + 144) = v7[9];
  *(a4 + 160) = v15;
  *(a4 + 112) = v13;
  *(a4 + 128) = v14;
  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetConvType(a1, a4, a5);
  v16 = *(a2 + 72);
  *&v17 = v16;
  *(&v17 + 1) = SHIDWORD(v16);
  *(a4 + 120) = v17;
  *(a4 + 136) = *(a2 + 80);
  *(a4 + 56) = *a2;
  *(a4 + 72) = *(a2 + 16);
  *(a4 + 92) = *(a2 + 48);
  *(a4 + 108) = *(a2 + 64);
  v18 = 24;
  v19 = 28;
  if (*(a2 + 97))
  {
    v19 = 40;
  }

  v20 = 32;
  if (*(a2 + 97))
  {
    v20 = 44;
  }

  v21 = *(a2 + v20);
  v22 = *(a2 + v19);
  if (*(a2 + 97))
  {
    v18 = 36;
  }

  *(a4 + 80) = *(a2 + v18);
  *(a4 + 84) = v22;
  *(a4 + 88) = v21;
}

uint64_t ValidateParts(uint64_t a1, __int128 *a2, int *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v11 = a6;
  v12 = a5;
  if (ValidateParts(Zin3DDeConvUtils::DeconvSplit &,ZinTensorDimensions const&,ZinKernelFormat const&,ZinTensorFormat const&,BOOL,BOOL,std::optional<unsigned long>,ZinIrParameters const&)::$_0::operator()(a1 + 112, a1 + 16, a2, a3, a4, a5, a6, a8, a7, a8, a9) || (result = ValidateParts(Zin3DDeConvUtils::DeconvSplit &,ZinTensorDimensions const&,ZinKernelFormat const&,ZinTensorFormat const&,BOOL,BOOL,std::optional<unsigned long>,ZinIrParameters const&)::$_0::operator()(a1 + 480, a1 + 72, a2, a3, a4, v12, v11, v17, a7, v9, a9), result))
  {
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v19)
    {
      ValidateParts(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    return 3;
  }

  return result;
}

void sub_1A699368C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(va);
  v14 = STACK[0x2A8];
  if (STACK[0x2A8])
  {
    STACK[0x2B0] = v14;
    operator delete(v14);
  }

  ZinIrConvUnitInfo::~ZinIrConvUnitInfo(&STACK[0x2C8]);
  _Unwind_Resume(a1);
}

uint64_t ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelDilationFactor(uint64_t a1)
{
  v2 = **(a1 + 32);
  if (*(*(a1 + 48) + 136) >= 2)
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelDilationFactor(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    *(a1 + 256) = 1;
    v30 = @"InvalidDilationFactor";
    std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v30, &v30);
    v30 = @"PartiallyImplementedUnit";
    std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v30, &v30);
  }

  ANECFormatToZinTensorFormat(**(a1 + 40));
  ZinMirDilatedConv::DecomposeDilationFactorX(v2, *(*(a1 + 48) + 120), &v30);
  if (v35 != 1)
  {
    v11 = ANECFormatToZinTensorFormat(**(a1 + 40));
    MaxLogicalKernelWidthForLargeKernelMode = GetMaxLogicalKernelWidthForLargeKernelMode(v2, v11);
    if ((*(*(a1 + 48) + 56) - 1) * v35 + 1 > MaxLogicalKernelWidthForLargeKernelMode)
    {
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v13)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelDilationFactor(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      *(a1 + 240) = 1;
      if (v32 != v31)
      {
        v21 = (v31 + 8 * (v33 >> 10));
        v22 = *v21;
        v23 = &(*v21)[v33 & 0x3FF];
        v24 = *(v31 + (((v34 + v33) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v34 + v33) & 0x3FF);
        if (v23 != v24)
        {
          v25 = 1;
          do
          {
            v27 = *v23++;
            v26 = v27;
            if (v23 - v22 == 4096)
            {
              v28 = v21[1];
              ++v21;
              v22 = v28;
              v23 = v28;
            }

            v25 *= v26;
          }

          while (v23 != v24);
          *(a1 + 240) = v25;
        }
      }

      v36 = @"InvalidDilationFactor";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v36, &v36);
    }
  }

  return std::deque<int>::~deque[abi:ne200100](&v30);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7 * 8;
      *(a4 + v7 * 8) = &unk_1F19CCBB0;
      result = std::set<__CFString const*>::set[abi:ne200100]((a4 + v7 * 8 + 8), &v6[v7 + 1]);
      *(v8 + 32) = v6[v7 + 4];
      *v8 = &unk_1F19F0A88;
      v10 = *&v6[v7 + 5];
      v11 = *&v6[v7 + 7];
      v12 = *&v6[v7 + 9];
      *(v8 + 88) = *&v6[v7 + 11];
      *(v8 + 72) = v12;
      *(v8 + 56) = v11;
      *(v8 + 40) = v10;
      v13 = *&v6[v7 + 13];
      v14 = *&v6[v7 + 15];
      v15 = *&v6[v7 + 17];
      *(v8 + 152) = *&v6[v7 + 19];
      *(v8 + 136) = v15;
      *(v8 + 120) = v14;
      *(v8 + 104) = v13;
      v16 = *&v6[v7 + 21];
      v17 = *&v6[v7 + 23];
      v18 = *&v6[v7 + 25];
      *(v8 + 216) = *&v6[v7 + 27];
      *(v8 + 200) = v18;
      *(v8 + 184) = v17;
      *(v8 + 168) = v16;
      v19 = *&v6[v7 + 29];
      v20 = *&v6[v7 + 31];
      v21 = *&v6[v7 + 35];
      *(v8 + 264) = *&v6[v7 + 33];
      *(v8 + 280) = v21;
      *(v8 + 248) = v20;
      *(v8 + 232) = v19;
      v7 += 37;
    }

    while (&v6[v7] != a3);
    if (v6 != a3)
    {
      v22 = v6;
      do
      {
        result = (**v6)(v6);
        v6 += 37;
        v22 += 37;
      }

      while (v6 != a3);
    }
  }

  return result;
}

void sub_1A6993A0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    (**(i - 296))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__construct_one_at_end[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = &unk_1F19CCBB0;
  std::set<__CFString const*>::set[abi:ne200100]((v4 + 8), a2 + 8);
  *(v4 + 32) = *(a2 + 32);
  *v4 = &unk_1F19F0A88;
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(v4 + 88) = *(a2 + 88);
  *(v4 + 72) = v7;
  *(v4 + 56) = v6;
  *(v4 + 40) = v5;
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  v10 = *(a2 + 136);
  *(v4 + 152) = *(a2 + 152);
  *(v4 + 136) = v10;
  *(v4 + 120) = v9;
  *(v4 + 104) = v8;
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  v13 = *(a2 + 200);
  *(v4 + 216) = *(a2 + 216);
  *(v4 + 200) = v13;
  *(v4 + 184) = v12;
  *(v4 + 168) = v11;
  result = *(a2 + 232);
  v15 = *(a2 + 248);
  v16 = *(a2 + 280);
  *(v4 + 264) = *(a2 + 264);
  *(v4 + 280) = v16;
  *(v4 + 248) = v15;
  *(v4 + 232) = result;
  *(a1 + 8) = v4 + 296;
  return result;
}

uint64_t std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__emplace_back_slow_path<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x2983759F2298375ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v6 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v6 = v3;
  }

  v29 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>>(a1, v6);
  }

  v7 = 296 * v2;
  v26 = 0;
  v27 = v7;
  v28 = v7;
  *v7 = &unk_1F19CCBB0;
  std::set<__CFString const*>::set[abi:ne200100]((v7 + 8), a2 + 8);
  *(v7 + 32) = *(a2 + 32);
  *v7 = &unk_1F19F0A88;
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 72) = v10;
  *(v7 + 56) = v9;
  *(v7 + 40) = v8;
  v11 = *(a2 + 104);
  v12 = *(a2 + 120);
  v13 = *(a2 + 136);
  *(v7 + 152) = *(a2 + 152);
  *(v7 + 136) = v13;
  *(v7 + 120) = v12;
  *(v7 + 104) = v11;
  v14 = *(a2 + 168);
  v15 = *(a2 + 184);
  v16 = *(a2 + 200);
  *(v7 + 216) = *(a2 + 216);
  *(v7 + 200) = v16;
  *(v7 + 184) = v15;
  *(v7 + 168) = v14;
  v17 = *(a2 + 232);
  v18 = *(a2 + 248);
  v19 = *(a2 + 280);
  *(v7 + 264) = *(a2 + 264);
  *(v7 + 280) = v19;
  *(v7 + 248) = v18;
  *(v7 + 232) = v17;
  *&v28 = v28 + 296;
  v20 = *(a1 + 8);
  v21 = v27 + *a1 - v20;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>(a1, *a1, v20, v21);
  v22 = *a1;
  *a1 = v21;
  v23 = *(a1 + 16);
  v25 = v28;
  *(a1 + 8) = v28;
  *&v28 = v22;
  *(&v28 + 1) = v23;
  v26 = v22;
  v27 = v22;
  std::__split_buffer<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::~__split_buffer(&v26);
  return v25;
}

void sub_1A6993D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

char *std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>,std::__wrap_iter<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>>(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (0x14C1BACF914C1BADLL * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x14C1BACF914C1BADLL * ((v10 - a2) >> 3) >= a5)
      {
        v18 = 296 * a5;
        std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__move_range(a1, a2, a1[1], &a2[296 * a5]);
        v17 = v18 + a3;
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__move_range(a1, v5, v10, &v5[296 * a5]);
        v17 = v16 + a3;
      }

      std::__copy_impl::operator()[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *>(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x14C1BACF914C1BADLL * ((v10 - *a1) >> 3);
    if (v12 > 0xDD67C8A60DD67CLL)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v13 = &a2[-v11];
    v14 = 0x14C1BACF914C1BADLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x6EB3E45306EB3ELL)
    {
      v15 = 0xDD67C8A60DD67CLL;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>>(a1, v15);
    }

    v20 = 0;
    v21 = 8 * (v13 >> 3);
    v22 = v21;
    v23 = 0;
    std::__split_buffer<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__construct_at_end_with_size<std::__wrap_iter<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>>(&v20, a3, a5);
    v5 = std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__swap_out_circular_buffer(a1, &v20, v5);
    std::__split_buffer<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::~__split_buffer(&v20);
  }

  return v5;
}

uint64_t std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v11 = v6 + v10;
      *(v6 + v10) = &unk_1F19CCBB0;
      std::set<__CFString const*>::set[abi:ne200100]((v6 + v10 + 8), v7 + v10 + 8);
      *(v11 + 32) = *(v7 + v10 + 32);
      *(v6 + v10) = &unk_1F19F0A88;
      v12 = *(v7 + v10 + 40);
      v13 = *(v7 + v10 + 56);
      v14 = *(v7 + v10 + 72);
      *(v11 + 88) = *(v7 + v10 + 88);
      *(v11 + 72) = v14;
      *(v11 + 56) = v13;
      *(v11 + 40) = v12;
      v15 = *(v7 + v10 + 104);
      v16 = *(v7 + v10 + 120);
      v17 = *(v7 + v10 + 136);
      *(v11 + 152) = *(v7 + v10 + 152);
      *(v11 + 136) = v17;
      *(v11 + 120) = v16;
      *(v11 + 104) = v15;
      v18 = *(v7 + v10 + 168);
      v19 = *(v7 + v10 + 184);
      v20 = *(v7 + v10 + 200);
      *(v11 + 216) = *(v7 + v10 + 216);
      *(v11 + 200) = v20;
      *(v11 + 184) = v19;
      *(v11 + 168) = v18;
      v21 = *(v7 + v10 + 232);
      v22 = *(v7 + v10 + 248);
      v23 = *(v7 + v10 + 280);
      *(v11 + 264) = *(v7 + v10 + 264);
      *(v11 + 280) = v23;
      *(v11 + 248) = v22;
      *(v11 + 232) = v21;
      v10 += 296;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *>(&v25, a2, v7, v6);
}

void *std::__split_buffer<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__construct_at_end_with_size<std::__wrap_iter<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = 0;
    v7 = v4 + 296 * a3;
    v8 = 296 * a3;
    do
    {
      v9 = v4 + v6;
      *(v4 + v6) = &unk_1F19CCBB0;
      result = std::set<__CFString const*>::set[abi:ne200100]((v4 + v6 + 8), a2 + v6 + 8);
      *(v9 + 32) = *(a2 + v6 + 32);
      *(v4 + v6) = &unk_1F19F0A88;
      v10 = *(a2 + v6 + 40);
      v11 = *(a2 + v6 + 56);
      v12 = *(a2 + v6 + 72);
      *(v9 + 88) = *(a2 + v6 + 88);
      *(v9 + 72) = v12;
      *(v9 + 56) = v11;
      *(v9 + 40) = v10;
      v13 = *(a2 + v6 + 104);
      v14 = *(a2 + v6 + 120);
      v15 = *(a2 + v6 + 136);
      *(v9 + 152) = *(a2 + v6 + 152);
      *(v9 + 136) = v15;
      *(v9 + 120) = v14;
      *(v9 + 104) = v13;
      v16 = *(a2 + v6 + 168);
      v17 = *(a2 + v6 + 184);
      v18 = *(a2 + v6 + 200);
      *(v9 + 216) = *(a2 + v6 + 216);
      *(v9 + 200) = v18;
      *(v9 + 184) = v17;
      *(v9 + 168) = v16;
      v19 = *(a2 + v6 + 232);
      v20 = *(a2 + v6 + 248);
      v21 = *(a2 + v6 + 280);
      *(v9 + 264) = *(a2 + v6 + 264);
      *(v9 + 280) = v21;
      *(v9 + 248) = v20;
      *(v9 + 232) = v19;
      v6 += 296;
    }

    while (v8 != v6);
  }

  else
  {
    v7 = result[2];
  }

  v3[2] = v7;
  return result;
}

uint64_t std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__swap_out_circular_buffer(uint64_t a1, void *a2, char *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      *(a4 + v7) = &unk_1F19CCBB0;
      std::set<__CFString const*>::set[abi:ne200100]((a4 + v7 + 8), a2 + v7 + 8);
      *(v8 + 32) = *(a2 + v7 + 32);
      *v8 = &unk_1F19F0A88;
      v9 = *(a2 + v7 + 40);
      v10 = *(a2 + v7 + 56);
      v11 = *(a2 + v7 + 72);
      *(v8 + 88) = *(a2 + v7 + 88);
      *(v8 + 72) = v11;
      *(v8 + 56) = v10;
      *(v8 + 40) = v9;
      v12 = *(a2 + v7 + 104);
      v13 = *(a2 + v7 + 120);
      v14 = *(a2 + v7 + 136);
      *(v8 + 152) = *(a2 + v7 + 152);
      *(v8 + 136) = v14;
      *(v8 + 120) = v13;
      *(v8 + 104) = v12;
      v15 = *(a2 + v7 + 168);
      v16 = *(a2 + v7 + 184);
      v17 = *(a2 + v7 + 200);
      *(v8 + 216) = *(a2 + v7 + 216);
      *(v8 + 200) = v17;
      *(v8 + 184) = v16;
      *(v8 + 168) = v15;
      v18 = *(a2 + v7 + 232);
      v19 = *(a2 + v7 + 248);
      v20 = *(a2 + v7 + 280);
      *(v8 + 264) = *(a2 + v7 + 264);
      *(v8 + 280) = v20;
      *(v8 + 248) = v19;
      *(v8 + 232) = v18;
      v7 += 296;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1A6994458(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = (a3 - 280);
    v8 = a3;
    do
    {
      if (v8 != a4)
      {
        std::__tree<__CFString const*>::__assign_multi<std::__tree_const_iterator<__CFString const*,std::__tree_node<__CFString const*,void *> *,long>>((a4 - 288), *(v8 - 288), v7);
      }

      *(a4 - 264) = *(v8 - 264);
      v9 = *(v8 - 256);
      v10 = *(v8 - 240);
      v11 = *(v8 - 208);
      *(a4 - 224) = *(v8 - 224);
      *(a4 - 208) = v11;
      *(a4 - 256) = v9;
      *(a4 - 240) = v10;
      v12 = *(v8 - 192);
      v13 = *(v8 - 176);
      v14 = *(v8 - 144);
      *(a4 - 160) = *(v8 - 160);
      *(a4 - 144) = v14;
      *(a4 - 192) = v12;
      *(a4 - 176) = v13;
      v15 = *(v8 - 128);
      v16 = *(v8 - 112);
      v17 = *(v8 - 80);
      *(a4 - 96) = *(v8 - 96);
      *(a4 - 80) = v17;
      *(a4 - 128) = v15;
      *(a4 - 112) = v16;
      v18 = *(v8 - 64);
      v19 = *(v8 - 48);
      v20 = *(v8 - 16);
      *(a4 - 32) = *(v8 - 32);
      *(a4 - 16) = v20;
      *(a4 - 64) = v18;
      *(a4 - 48) = v19;
      v7 -= 37;
      v8 -= 296;
      a4 -= 296;
    }

    while (v8 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = (a2 + 16);
    do
    {
      if (v5 != a4)
      {
        std::__tree<__CFString const*>::__assign_multi<std::__tree_const_iterator<__CFString const*,std::__tree_node<__CFString const*,void *> *,long>>((a4 + 8), *(v5 + 8), v7);
      }

      *(a4 + 32) = *(v5 + 32);
      v8 = *(v5 + 40);
      v9 = *(v5 + 56);
      v10 = *(v5 + 72);
      *(a4 + 88) = *(v5 + 88);
      *(a4 + 72) = v10;
      *(a4 + 56) = v9;
      *(a4 + 40) = v8;
      v11 = *(v5 + 104);
      v12 = *(v5 + 120);
      v13 = *(v5 + 136);
      *(a4 + 152) = *(v5 + 152);
      *(a4 + 136) = v13;
      *(a4 + 120) = v12;
      *(a4 + 104) = v11;
      v14 = *(v5 + 168);
      v15 = *(v5 + 184);
      v16 = *(v5 + 200);
      *(a4 + 216) = *(v5 + 216);
      *(a4 + 200) = v16;
      *(a4 + 184) = v15;
      *(a4 + 168) = v14;
      v17 = *(v5 + 232);
      v18 = *(v5 + 248);
      v19 = *(v5 + 280);
      *(a4 + 264) = *(v5 + 264);
      *(a4 + 280) = v19;
      *(a4 + 248) = v18;
      *(a4 + 232) = v17;
      v5 += 296;
      a4 += 296;
      v7 += 37;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t ZinGetUnitErrors<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 296)
  {
    return 6;
  }

  if (!*(v1 + 24))
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= @"UnsupportedUnit";
    v8 = v6 < @"UnsupportedUnit";
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > @"UnsupportedUnit")
  {
LABEL_11:
    v5 = v2;
  }

  if (v5 == v2)
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

void std::vector<ANECConvLayerDescAlternate>::reserve(void *a1, unint64_t a2)
{
  if (0x4E25B9EFD4E25B9FLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x563B48C20563B5)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ANECConvLayerDescAlternate>>(a1, a2);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t ZinGetUnitAlternate<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>,ANECConvLayerDescAlternate>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 120);
  v3 = *(result + 152);
  *(a2 + 536) = *(result + 136);
  *(a2 + 552) = v3;
  *(a2 + 520) = v2;
  v4 = *(result + 168);
  v5 = *(result + 184);
  v6 = *(result + 216);
  *(a2 + 600) = *(result + 200);
  *(a2 + 616) = v6;
  *(a2 + 568) = v4;
  *(a2 + 584) = v5;
  v7 = *(result + 232);
  v8 = *(result + 248);
  v9 = *(result + 280);
  *(a2 + 664) = *(result + 264);
  *(a2 + 680) = v9;
  *(a2 + 632) = v7;
  *(a2 + 648) = v8;
  v10 = *(result + 56);
  v11 = *(result + 72);
  v12 = *(result + 104);
  *(a2 + 728) = *(result + 88);
  *(a2 + 744) = v12;
  *(a2 + 696) = v10;
  *(a2 + 712) = v11;
  v13 = *(result + 8);
  if (v13 == (result + 16))
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    while (1)
    {
      *(a2 + 8 + 8 * v14) = v13[4];
      if (v14 == 63)
      {
        break;
      }

      v15 = v13[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13[2];
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      ++v14;
      v13 = v16;
      if (v16 == (result + 16))
      {
        goto LABEL_13;
      }
    }

    v14 = 64;
  }

LABEL_13:
  *a2 = v14;
  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 104;
  v4 = (a1 - 104);
  v5 = (a1 - 104);
  do
  {
    v6 = *v5;
    v5 -= 13;
    result = (*v6)(v4);
    v3 -= 104;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateMinTensorSize()
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_0();
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Conv padded input tensor width %ld is smaller than the kernel width %ld\n", v0, 0x16u);
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Per-cout scale format is invalid.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Per-cout scale and scalar scale cannot be defined simultaneously.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Per-cout zero point and scalar zero point cannot be defined simultaneously.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Mutable kernels are not supported with kernel quantization.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Only int8 and uint8 kernel formats are supported with kernel quantization.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Value is out of bounds.\n", a5, a6, a7, a8, v8);
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid kernel palette vector size.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Mutable kernels are not supported with vector palettization.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid kernel format.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Specified kernel palette vector size leads to unsupported palette LUT size.", a5, a6, a7, a8, v8);
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelDilationFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "dilation in z dimension is not supported.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "dilation_x factor is not supported", a5, a6, a7, a8, v8);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>()
{
  OUTLINED_FUNCTION_5_1();
  do
  {
    OUTLINED_FUNCTION_3_2();
    (*v1)(v0);
    OUTLINED_FUNCTION_7_2();
    v0 = v2;
  }

  while (!v3);
}

float ZinF32ToNearestF19(float a1)
{
  v9 = 0;
  _S0 = frexpf(a1, &v9);
  __asm
  {
    FCVT            H0, S0
    FCVT            S0, H0; float
  }

  v7 = v9;

  return ldexpf(_S0, v7);
}

void ZinF16CheckInBounds(float a1)
{
  if (a1 > 65504.0)
  {
    ZinAssertImpl("Float value is too large for FP16: %f", a1);
  }

  if (a1 < -65504.0)
  {
    ZinAssertImpl("Float value is too small for FP16: %f", a1);
  }
}

__int128 *ZinIrHalH18::GetParams(ZinIrHalH18 *this)
{
  v153 = *MEMORY[0x1E69E9840];
  {
    ZinIrHalH18::GetParams(void)const::ZinIrHalH18Parameters = xmmword_1A75D4190;
    *algn_1EB29C730 = xmmword_1A7595A00;
    xmmword_1EB29C740 = xmmword_1A75966D0;
    unk_1EB29C750 = xmmword_1A75966E0;
    xmmword_1EB29C760 = xmmword_1A7595B90;
    unk_1EB29C770 = xmmword_1A75966F0;
    xmmword_1EB29C780 = xmmword_1A75966E0;
    unk_1EB29C790 = xmmword_1A7595A50;
    xmmword_1EB29C7A0 = xmmword_1A7596700;
    unk_1EB29C7B0 = xmmword_1A7596710;
    xmmword_1EB29C7C0 = xmmword_1A7595A80;
    unk_1EB29C7D0 = vdupq_n_s64(4uLL);
    qword_1EB29C7E0 = 4;
    unk_1EB29C7E8 = xmmword_1A75D41B0;
    unk_1EB29C7F8 = unk_1A75D41C0;
    unk_1EB29C818 = unk_1A75D41C0;
    unk_1EB29C808 = xmmword_1A75D41B0;
    qword_1EB29C838 = 4;
    xmmword_1EB29C828 = xmmword_1A75D41D0;
    xmmword_1EB29C840 = xmmword_1A7595A90;
    unk_1EB29C850 = xmmword_1A7595AB0;
    xmmword_1EB29C860 = xmmword_1A7595AB0;
    unk_1EB29C870 = xmmword_1A7595AB0;
    xmmword_1EB29C880 = xmmword_1A7595AB0;
    unk_1EB29C890 = xmmword_1A7595AB0;
    xmmword_1EB29C8A0 = vdupq_n_s64(0x10000uLL);
    unk_1EB29C8B0 = xmmword_1EB29C8A0;
    xmmword_1EB29C8C0 = xmmword_1EB29C8A0;
    unk_1EB29C8D0 = xmmword_1A7595AD0;
    xmmword_1EB29C8E0 = xmmword_1A7595AE0;
    unk_1EB29C8F0 = xmmword_1A7595AF0;
    xmmword_1EB29C900 = xmmword_1A7596720;
    unk_1EB29C910 = xmmword_1A7596730;
    xmmword_1EB29C920 = xmmword_1A7595B20;
    unk_1EB29C930 = xmmword_1A7596740;
    xmmword_1EB29C940 = xmmword_1A7595B40;
    unk_1EB29C950 = xmmword_1A7596750;
    xmmword_1EB29C960 = vdupq_n_s64(2uLL);
    unk_1EB29C970 = xmmword_1A7595B60;
    xmmword_1EB29C980 = xmmword_1A7595B70;
    unk_1EB29C990 = xmmword_1A7595B80;
    xmmword_1EB29C9A0 = xmmword_1A7596760;
    unk_1EB29C9B0 = xmmword_1A7596770;
    word_1EB29C9D0 = 256;
    xmmword_1EB29C9C0 = 0u;
    xmmword_1EB29C9D8 = xmmword_1A7595B90;
    xmmword_1EB29C9E8 = xmmword_1A7595BA0;
    xmmword_1EB29C9F8 = xmmword_1A7595BB0;
    qword_1EB29CA08 = 0x10000;
    byte_1EB29CA10 = 122;
    xmmword_1EB29CA18 = xmmword_1A7596780;
    dword_1EB29CA28 = 520097776;
    qword_1EB29CA2C = 0xFFFFFFEB0000000BLL;
    xmmword_1EB29CA38 = xmmword_1A7595BD0;
    xmmword_1EB29CA48 = xmmword_1A7595BE0;
    xmmword_1EB29CA58 = xmmword_1A7595BF0;
    __dst[0] = vdupq_n_s64(8uLL);
    __dst[1] = xmmword_1A7596790;
    __dst[2] = xmmword_1A75967A0;
    __dst[3] = xmmword_1A75967B0;
    qword_1EB29CA78 = 0;
    xmmword_1EB29CA68 = 0u;
    std::vector<std::pair<unsigned long,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,unsigned long> const*,std::pair<unsigned long,unsigned long> const*>(&xmmword_1EB29CA68, __dst[0].i8, __dst[4].i8, 4uLL);
    xmmword_1EB29CA80 = xmmword_1A75967C0;
    *algn_1EB29CA90 = xmmword_1A7595C10;
    xmmword_1EB29CAA0 = vdupq_n_s64(0x20uLL);
    unk_1EB29CAB0 = xmmword_1A7595A50;
    xmmword_1EB29CAC0 = vdupq_n_s64(8uLL);
    unk_1EB29CAD0 = xmmword_1A7595C20;
    xmmword_1EB29CAE0 = xmmword_1A7595C30;
    unk_1EB29CAF0 = vdupq_n_s64(0x100uLL);
    xmmword_1EB29CB00 = vdupq_n_s64(0x80uLL);
    unk_1EB29CB10 = xmmword_1A75967D0;
    xmmword_1EB29CB20 = xmmword_1A75967E0;
    unk_1EB29CB30 = xmmword_1A75967F0;
    xmmword_1EB29CB40 = xmmword_1A7595C70;
    unk_1EB29CB50 = xmmword_1A7595C80;
    xmmword_1EB29CB60 = vdupq_n_s64(2uLL);
    unk_1EB29CB70 = xmmword_1A7595AB0;
    xmmword_1EB29CB80 = vdupq_n_s64(0x10000uLL);
    unk_1EB29CB90 = xmmword_1A7596800;
    qword_1EB29CBA0 = 0x100000100;
    dword_1EB29CBA8 = 65537;
    unk_1EB29CBBA = 0x101010101010101;
    qword_1EB29CBAC = 0x101010101010101;
    unk_1EB29CBB4 = 0x101010101010101;
    qword_1EB29CBC2 = 0x1010001010000;
    qword_1EB29CBCA = 0x101010101010101;
    word_1EB29CBD2 = 0;
    byte_1EB29CBD4 = 0;
    xmmword_1EB29CBD8 = xmmword_1A7595B90;
    xmmword_1EB29CBE8 = xmmword_1A7595CB0;
    xmmword_1EB29CBF8 = xmmword_1A75B6AB0;
    qword_1EB29CC08 = 20;
    word_1EB29CC10 = 1;
    dword_1EB29CC12 = 16843009;
    word_1EB29CC16 = 1;
    qword_1EB29CC18 = 0;
    word_1EB29CC20 = 257;
    byte_1EB29CC22 = 1;
    qword_1EB29CC28 = 16;
    byte_1EB29CC34 = 1;
    dword_1EB29CC30 = 16843009;
    qword_1EB29CC35 = 0x1000000000000;
    dword_1EB29CC3D = 16843009;
    qword_1EB29CC41 = 0x101010001010800;
    word_1EB29CC49 = 0;
    byte_1EB29CC4B = 0;
    dword_1EB29CC4C = 16843009;
    byte_1EB29CC50 = 1;
    dword_1EB29CC51 = 16843008;
    byte_1EB29CC55 = 0;
    dword_1EB29CC56 = 16843009;
    word_1EB29CC5A = 2056;
    dword_1EB29CC5C = 288;
    xmmword_1EB29CC60 = xmmword_1A7596810;
    qword_1EB29CC70 = 4;
    word_1EB29CC78 = 257;
    dword_1EB29CC7C = 1;
    word_1EB29CC80 = 0;
    *(&qword_1EB29CC82 + 7) = 0x101010101010101;
    qword_1EB29CC82 = 0x101010101010101;
    qword_1EB29CC91 = 0x101000100010606;
    word_1EB29CC99 = 0;
    std::string::__init(&qword_1EB29CCA0, "Simple", 6uLL);
    qword_1EB29CCB8 = 0x1000000;
    dword_1EB29CCC0 = 1071225242;
    *algn_1EB29CCC4 = 0x7C0000000CLL;
    *&algn_1EB29CCC4[12] = xmmword_1A7595CC0;
    *&algn_1EB29CCC4[28] = vdupq_n_s64(0x40uLL);
    *&algn_1EB29CCC4[44] = xmmword_1A7595C00;
    qword_1EB29CD00 = 8;
    byte_1EB29CD08 = 0;
    unk_1EB29CD0C = 0xF3E800000;
    byte_1EB29CD14 = 1;
    v151 = xmmword_1A75D41E8;
    v152 = 0x600000009;
    qword_1EB29CD20 = 0;
    unk_1EB29CD28 = 0;
    qword_1EB29CD18 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29CD18, &v151, &v153, 6uLL);
    v148[0] = xmmword_1A75D4200;
    v148[1] = unk_1A75D4210;
    *v149 = xmmword_1A75D4220;
    *&v149[12] = *(&xmmword_1A75D4220 + 12);
    qword_1EB29CD38 = 0;
    unk_1EB29CD40 = 0;
    qword_1EB29CD30 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29CD30, v148, &v150, 0xFuLL);
    v145[4] = xmmword_1A75D427C;
    v145[5] = unk_1A75D428C;
    *v146 = xmmword_1A75D429C;
    *&v146[12] = *(&xmmword_1A75D429C + 12);
    v145[0] = xmmword_1A75D423C;
    v145[1] = unk_1A75D424C;
    v145[2] = xmmword_1A75D425C;
    v145[3] = unk_1A75D426C;
    qword_1EB29CD50 = 0;
    unk_1EB29CD58 = 0;
    qword_1EB29CD48 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29CD48, v145, &v147, 0x1FuLL);
    v142[7] = unk_1A75D4328;
    v142[8] = xmmword_1A75D4338;
    *v143 = unk_1A75D4348;
    *&v143[12] = unk_1A75D4354;
    v142[4] = xmmword_1A75D42F8;
    v142[5] = unk_1A75D4308;
    v142[6] = xmmword_1A75D4318;
    v142[0] = xmmword_1A75D42B8;
    v142[1] = unk_1A75D42C8;
    v142[2] = xmmword_1A75D42D8;
    v142[3] = unk_1A75D42E8;
    qword_1EB29CD60 = 0;
    qword_1EB29CD68 = 0;
    qword_1EB29CD70 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29CD60, v142, &v144, 0x2BuLL);
    v109 = 2;
    v110 = xmmword_1A7595CF0;
    v111 = 4354;
    v112 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v47, &v109, &v113, 1uLL);
    LODWORD(v113) = 641877825;
    v114 = 0;
    v115 = 0;
    *(&v113 + 1) = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v113 + 1, v47, v48, (v48 - v47) >> 5);
    v105 = 2;
    v106 = xmmword_1A7595CF0;
    v107 = 4354;
    v108 = 1;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v44, &v105, &v109, 1uLL);
    v116 = 759318337;
    memset(v117, 0, sizeof(v117));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v117, v44, v45, (v45 - v44) >> 5);
    v101 = 2;
    v102 = xmmword_1A7595CF0;
    v103 = 4354;
    v104 = 2;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v41, &v101, &v105, 1uLL);
    v118 = 792872769;
    memset(v119, 0, sizeof(v119));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v119, v41, v42, (v42 - v41) >> 5);
    v97 = 2;
    v98 = xmmword_1A7595CF0;
    v99 = 4354;
    v100 = 3;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v38, &v97, &v101, 1uLL);
    v120 = 2084718401;
    memset(v121, 0, sizeof(v121));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v121, v38, v39, (v39 - v38) >> 5);
    v93 = 10;
    v94 = vdupq_n_s64(1uLL);
    v95 = 2049;
    v96 = 0;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v35, &v93, &v97, 1uLL);
    v122 = 642527542;
    memset(v123, 0, sizeof(v123));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v123, v35, v36, (v36 - v35) >> 5);
    v89 = 3;
    v90 = vdupq_n_s64(1uLL);
    v91 = 1794;
    v92 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v32, &v89, &v93, 1uLL);
    v124 = 642527336;
    memset(v125, 0, sizeof(v125));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v125, v32, v33, (v33 - v32) >> 5);
    v85 = 3;
    v86 = vdupq_n_s64(1uLL);
    v87 = 1794;
    v88 = 1;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v29, &v85, &v89, 1uLL);
    v126 = 759967848;
    memset(v127, 0, sizeof(v127));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v127, v29, v30, (v30 - v29) >> 5);
    v81 = 3;
    v82 = vdupq_n_s64(1uLL);
    v83 = 1794;
    v84 = 2;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v26, &v81, &v85, 1uLL);
    v128 = 793522280;
    memset(v129, 0, sizeof(v129));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v129, v26, v27, (v27 - v26) >> 5);
    v77 = 3;
    v78 = vdupq_n_s64(1uLL);
    v79 = 1794;
    v80 = 3;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v23, &v77, &v81, 1uLL);
    v130 = 2085367912;
    memset(v131, 0, sizeof(v131));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v131, v23, v24, (v24 - v23) >> 5);
    v73 = 3;
    v74 = xmmword_1A7595CF0;
    v75 = 4866;
    v76 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v20, &v73, &v77, 1uLL);
    v132 = 642934849;
    memset(v133, 0, sizeof(v133));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v133, v20, v21, (v21 - v20) >> 5);
    v69 = 3;
    v70 = xmmword_1A7595CF0;
    v71 = 4866;
    v72 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v17, &v69, &v73, 1uLL);
    v134 = 760375361;
    memset(v135, 0, sizeof(v135));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v135, v17, v18, (v18 - v17) >> 5);
    v65 = 3;
    v66 = xmmword_1A7595CF0;
    v67 = 4866;
    v68 = 2;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v14, &v65, &v69, 1uLL);
    v136 = 793929793;
    memset(v137, 0, sizeof(v137));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v137, v14, v15, (v15 - v14) >> 5);
    v61 = 3;
    v62 = xmmword_1A7595CF0;
    v63 = 4866;
    v64 = 3;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v11, &v61, &v65, 1uLL);
    v138 = 2085775425;
    memset(v139, 0, sizeof(v139));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v139, v11, v12, (v12 - v11) >> 5);
    LODWORD(v57) = 3;
    v58 = vdupq_n_s64(1uLL);
    v59 = 1794;
    v60 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v8, &v57, &v61, 1uLL);
    v140 = 707153000;
    memset(v141, 0, sizeof(v141));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v141, v8, v9, (v9 - v8) >> 5);
    std::map<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>::map[abi:ne200100](qword_1EB29CD78, &v113, 14);
    qword_1EB29CDA0 = 0x101000000010101;
    unk_1EB29CDA8 = vdupq_n_s64(0x10000uLL);
    unk_1EB29CDB8 = unk_1EB29CDA8;
    unk_1EB29CDC8 = xmmword_1A75AC170;
    unk_1EB29CDD8 = xmmword_1A75B6AF0;
    dword_1EB29CDF0 = 16777472;
    unk_1EB29CDF8 = xmmword_1A75D4368;
    unk_1EB29CE08 = unk_1A75D4378;
    xmmword_1EB29CE20 = xmmword_1A75B6B00;
    v56[11] = unk_1A75D4440;
    v56[12] = xmmword_1A75D4450;
    v56[13] = unk_1A75D4460;
    v56[14] = xmmword_1A75D4470;
    v56[8] = xmmword_1A75D4410;
    word_1EB29CD90 = 257;
    byte_1EB29CD92 = 0;
    *algn_1EB29CD93 = 16843009;
    qword_1EB29CD98 = 4;
    qword_1EB29CDE8 = 15;
    word_1EB29CDF4 = 1;
    qword_1EB29CE18 = 8;
    v56[9] = unk_1A75D4420;
    v56[10] = xmmword_1A75D4430;
    v56[4] = xmmword_1A75D43D0;
    v56[5] = unk_1A75D43E0;
    v56[6] = xmmword_1A75D43F0;
    v56[7] = unk_1A75D4400;
    v56[0] = xmmword_1A75D4390;
    v56[1] = unk_1A75D43A0;
    v56[2] = xmmword_1A75D43B0;
    v56[3] = unk_1A75D43C0;
    qword_1EB29CE30 = 0;
    qword_1EB29CE38 = 0;
    qword_1EB29CE40 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29CE30, v56, &v57, 0x1EuLL);
    v55[0] = xmmword_1A75D4480;
    v55[1] = unk_1A75D4490;
    qword_1EB29CE50 = 0;
    unk_1EB29CE58 = 0;
    qword_1EB29CE48 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29CE48, v55, v56, 4uLL);
    v54[0] = xmmword_1A75D44A0;
    v54[1] = unk_1A75D44B0;
    v54[2] = xmmword_1A75D44C0;
    qword_1EB29CE68 = 0;
    unk_1EB29CE70 = 0;
    qword_1EB29CE60 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29CE60, v54, v55, 6uLL);
    memcpy(__dst, &unk_1A75D44D0, sizeof(__dst));
    std::map<double,double>::map[abi:ne200100](qword_1EB29CE78, __dst[0].i64, 30);
    xmmword_1EB29CE90 = xmmword_1A7595D10;
    v50[2] = xmmword_1A75D46D0;
    v50[3] = unk_1A75D46E0;
    v50[4] = xmmword_1A75D46F0;
    v50[0] = xmmword_1A75D46B0;
    v50[1] = unk_1A75D46C0;
    v51 = 27;
    qword_1EB29CEA8 = 0;
    unk_1EB29CEB0 = 0;
    qword_1EB29CEA0 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29CEA0, v50, v52, 0x15uLL);
    xmmword_1EB29CEB8 = xmmword_1A7596830;
    unk_1EB29CEC8 = xmmword_1A7595AF0;
    qword_1EB29CED8 = 64;
    unk_1EB29CEE0 = 0x101010101010101;
    unk_1EB29CEE6 = 0x101010101010101;
    word_1EB29CEEE = 0;
    byte_1EB29CEF0 = 0;
    xmmword_1EB29CF68 = 0u;
    unk_1EB29CF78 = 0u;
    qword_1EB29CF88 = 0x100000000;
    xmmword_1EB29CEF8 = 0u;
    unk_1EB29CF08 = 0u;
    xmmword_1EB29CF18 = 0u;
    unk_1EB29CF28 = 0u;
    xmmword_1EB29CF38 = 0u;
    unk_1EB29CF48 = 0u;
    xmmword_1EB29CF58 = 0u;
    BYTE2(xmmword_1EB29CEF8) = 1;
    byte_1EB29CF80 = 0;
    byte_1EB29CF82 = 1;
    *(&qword_1EB29CF88 + 6) = 65792;
    dword_1EB29CF98 = 0;
    word_1EB29CF9C = 256;
    unk_1EB29CFA0 = vdupq_n_s64(0x10uLL);
    byte_1EB29CFB0 = 1;
    qword_1EB29CFB8 = 0xFFFFLL;
    byte_1EB29CFC0 = 0;
    qword_1EB29CFC8 = 3;
    word_1EB29CFD0 = 257;
    byte_1EB29CFD2 = 1;
    qword_1EB29CFD8 = 0x80000000;
    byte_1EB29CFE0 = 0;
    dword_1EB29CFE4 = 0;
    v4 = 1;
    v6 = 0;
    v7 = 0;
    __p = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v4, &__p, 1);
    qword_1EB29CFE8 = 0;
    unk_1EB29CFF0 = 0;
    qword_1EB29CFF8 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&qword_1EB29CFE8, __p, v6, (v6 - __p) >> 1);
    word_1EB29D000 = 0;
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    v2 = 448;
    do
    {
      v3 = *(&v110 + v2);
      if (v3)
      {
        *(&v110 + v2 + 8) = v3;
        operator delete(v3);
      }

      v2 -= 32;
    }

    while (v2);
    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    __cxa_atexit(ZinIrHalParameters::~ZinIrHalParameters, &ZinIrHalH18::GetParams(void)const::ZinIrHalH18Parameters, &dword_1A617D000);
  }

  return &ZinIrHalH18::GetParams(void)const::ZinIrHalH18Parameters;
}

void sub_1A6995FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (qword_1EB29CEA0)
  {
    qword_1EB29CEA8 = qword_1EB29CEA0;
    operator delete(qword_1EB29CEA0);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v33, *(v33 + 8));
  if (qword_1EB29CE60)
  {
    qword_1EB29CE68 = qword_1EB29CE60;
    operator delete(qword_1EB29CE60);
  }

  if (qword_1EB29CE48)
  {
    qword_1EB29CE50 = qword_1EB29CE48;
    operator delete(qword_1EB29CE48);
  }

  if (qword_1EB29CE30)
  {
    qword_1EB29CE38 = qword_1EB29CE30;
    operator delete(qword_1EB29CE30);
  }

  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v32, *(v32 + 8));
  v36 = &STACK[0x8B0];
  v37 = -448;
  while (1)
  {
    v38 = *(v36 - 1);
    if (v38)
    {
      *v36 = v38;
      operator delete(v38);
    }

    v36 -= 4;
    v37 += 32;
    if (!v37)
    {
      if (a23)
      {
        operator delete(a23);
      }

      if (a26)
      {
        operator delete(a26);
      }

      if (a29)
      {
        operator delete(a29);
      }

      if (a32)
      {
        operator delete(a32);
      }

      v39 = *v34;
      if (*v34)
      {
        *(v34 + 8) = v39;
        operator delete(v39);
      }

      v40 = *(v34 + 24);
      if (v40)
      {
        *(v34 + 32) = v40;
        operator delete(v40);
      }

      v41 = *(v34 + 48);
      if (v41)
      {
        *(v34 + 56) = v41;
        operator delete(v41);
      }

      v42 = *(v34 + 72);
      if (v42)
      {
        *(v34 + 80) = v42;
        operator delete(v42);
      }

      v43 = *(v34 + 96);
      if (v43)
      {
        *(v34 + 104) = v43;
        operator delete(v43);
      }

      v44 = *(v34 + 120);
      if (v44)
      {
        *(v34 + 128) = v44;
        operator delete(v44);
      }

      v45 = *(v34 + 144);
      if (v45)
      {
        *(v34 + 152) = v45;
        operator delete(v45);
      }

      v46 = *(v34 + 168);
      if (v46)
      {
        *(v34 + 176) = v46;
        operator delete(v46);
      }

      v47 = *(v34 + 192);
      if (v47)
      {
        *(v34 + 200) = v47;
        operator delete(v47);
      }

      v48 = *(v34 + 216);
      if (v48)
      {
        *(v34 + 224) = v48;
        operator delete(v48);
      }

      if (qword_1EB29CD60)
      {
        qword_1EB29CD68 = qword_1EB29CD60;
        operator delete(qword_1EB29CD60);
      }

      if (qword_1EB29CD48)
      {
        qword_1EB29CD50 = qword_1EB29CD48;
        operator delete(qword_1EB29CD48);
      }

      if (qword_1EB29CD30)
      {
        qword_1EB29CD38 = qword_1EB29CD30;
        operator delete(qword_1EB29CD30);
      }

      if (qword_1EB29CD18)
      {
        qword_1EB29CD20 = qword_1EB29CD18;
        operator delete(qword_1EB29CD18);
      }

      if (byte_1EB29CCB7 < 0)
      {
        operator delete(qword_1EB29CCA0);
      }

      if (xmmword_1EB29CA68)
      {
        *(&xmmword_1EB29CA68 + 1) = xmmword_1EB29CA68;
        operator delete(xmmword_1EB29CA68);
      }

      _Unwind_Resume(a1);
    }
  }
}

void ZinIrSignalEventInfo::ZinIrSignalEventInfo(ZinIrSignalEventInfo *this)
{
  v1 = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(this, 84);
  *v1 = &unk_1F19F2598;
  *(v1 + 16) = xmmword_1A7598670;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *ZinSignalEventLayer::ZinSignalEventLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  *a2 = 0;
  v6 = a3[1];
  v10 = *a3;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  ZinIrOpLayer::ZinIrOpLayer(a1, &v12, &v10, a4, &v9);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v7 = v12;
  v12 = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  *a1 = &unk_1F19F25D0;
  return a1;
}

void sub_1A6996484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ZinIrKernel *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(&a12);
  _Unwind_Resume(a1);
}

void sub_1A699660C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 16))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinSignalEventLayer::ValidateSemantics_Impl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 2000) & 1) == 0)
  {
    ZinAssertImpl("Error: ZinSignalEventLayer not supported on this archecture", a2);
  }

  v3 = *a2;
  if (*(a2 + 8) - *a2 != 272)
  {
    ZinAssertImpl("Error: ZinSignalEventLayer must have only two inputs.");
  }

  if (*v3 != 15)
  {
    ZinAssertImpl("Error: Invalid format for the event counter in ZinSignalEventLayer.");
  }

  if (ZinTensorDimensions::GetElementCount((v3 + 2)) != 1)
  {
    ZinAssertImpl("Error: invalid size for the event counter in ZinSignalEventLayer");
  }

  if (v3[34] != 15)
  {
    ZinAssertImpl("Error: Invalid format for the increment value in ZinSignalEventLayer.");
  }

  result = ZinTensorDimensions::GetElementCount((v3 + 36));
  if (result != 1)
  {
    ZinAssertImpl("Error: invalid size for the increment value in ZinSignalEventLayer");
  }

  return result;
}

void ZinIrSignalEventInfo::~ZinIrSignalEventInfo(ZinIrSignalEventInfo *this)
{
  *this = &unk_1F19F2598;
  v2 = (this + 32);
  std::vector<ZinIrEventParamInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  ZinIrHalH13g::~ZinIrHalH13g(this);
}

{
  *this = &unk_1F19F2598;
  v2 = (this + 32);
  std::vector<ZinIrEventParamInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  ZinIrHalH13g::~ZinIrHalH13g(this);
  MEMORY[0x1AC55A070]();
}

std::string *std::vector<ZinIrEventParamInfo>::__init_with_size[abi:ne200100]<ZinIrEventParamInfo*,ZinIrEventParamInfo*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ZinIrEventParamInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A6996880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ZinIrEventParamInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<ZinSignalEventLayer>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ZinIrSignalEventInfo>,std::shared_ptr<ZinIrTensor> &,std::string const&,std::allocator<ZinSignalEventLayer>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F2760;
  std::construct_at[abi:ne200100]<ZinSignalEventLayer,std::unique_ptr<ZinIrSignalEventInfo>,std::shared_ptr<ZinIrTensor> &,std::string const&,ZinSignalEventLayer*>(a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<ZinSignalEventLayer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F2760;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::construct_at[abi:ne200100]<ZinSignalEventLayer,std::unique_ptr<ZinIrSignalEventInfo>,std::shared_ptr<ZinIrTensor> &,std::string const&,ZinSignalEventLayer*>(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinSignalEventLayer::ZinSignalEventLayer(a1, a2, v7, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void sub_1A6996A90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ZinCreateShardingMap(__CFDictionary *a1, const void **a2)
{
  ZinDictionaryAddVector<unsigned short>(a1, @"Mesh", a2);
  ZinDictionaryAddVector<unsigned short>(a1, @"MeshAxes", a2 + 3);
  v4 = a2[6];
  v5 = a2[7];
  v6 = a2 + 6;
  if (v4 != v5)
  {

    ZinDictionaryAddVector<unsigned short>(a1, @"TensorAxes", v6);
  }
}

void ZinDictionaryAddVector<unsigned short>(__CFDictionary *a1, const void *a2, const void **a3)
{
  std::vector<void const*>::vector[abi:ne200100](&values, (a3[1] - *a3) >> 1);
  v6 = *a3;
  v7 = a3[1];
  v8 = values;
  v9 = *MEMORY[0x1E695E480];
  if (*a3 == v7)
  {
    v10 = *a3;
  }

  else
  {
    do
    {
      *v8++ = CFNumberCreate(v9, kCFNumberSInt16Type, v6);
      v6 += 2;
    }

    while (v6 != v7);
    v8 = values;
    v6 = *a3;
    v10 = a3[1];
  }

  v11 = CFArrayCreate(v9, v8, (v10 - v6) >> 1, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(a1, a2, v11);
  v12 = values;
  v13 = v15;
  while (v12 != v13)
  {
    CFRelease(*v12++);
  }

  CFRelease(v11);
  if (values)
  {
    v15 = values;
    operator delete(values);
  }
}

void sub_1A6996C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrWaitForEventInfo::ZinIrWaitForEventInfo(ZinIrWaitForEventInfo *this)
{
  v1 = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(this, 83);
  *v1 = &unk_1F19F27B0;
  *(v1 + 16) = xmmword_1A7598670;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *ZinWaitForEventLayer::ZinWaitForEventLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  *a2 = 0;
  v6 = a3[1];
  v10 = *a3;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  ZinIrOpLayer::ZinIrOpLayer(a1, &v12, &v10, a4, &v9);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v7 = v12;
  v12 = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  *a1 = &unk_1F19F27E8;
  return a1;
}

void sub_1A6996D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ZinIrKernel *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(&a12);
  _Unwind_Resume(a1);
}

void sub_1A6996EF4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 16))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinWaitForEventLayer::ValidateSemantics_Impl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 1999) & 1) == 0)
  {
    ZinAssertImpl("Error: WaitForEventLayer not supported on this archecture", a2);
  }

  v3 = *a2;
  if (*(a2 + 8) - *a2 != 272)
  {
    ZinAssertImpl("Error: ZinWaitForEventLayer must have only two inputs.");
  }

  if (*v3 != 15)
  {
    ZinAssertImpl("Error: Invalid format for the event counter in ZinWaitForEventLayer.");
  }

  if (ZinTensorDimensions::GetElementCount((v3 + 2)) != 1)
  {
    ZinAssertImpl("Error: invalid size for the event counter in ZinWaitForEventLayer");
  }

  if (v3[34] != 15)
  {
    ZinAssertImpl("Error: Invalid format for the threshold value in ZinWaitForEventLayer.");
  }

  result = ZinTensorDimensions::GetElementCount((v3 + 36));
  if (result != 1)
  {
    ZinAssertImpl("Error: invalid size for the threshold value in ZinWaitForEventLayer");
  }

  return result;
}

void ZinIrWaitForEventInfo::~ZinIrWaitForEventInfo(ZinIrWaitForEventInfo *this)
{
  *this = &unk_1F19F27B0;
  v2 = (this + 32);
  std::vector<ZinIrEventParamInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  ZinIrHalH13g::~ZinIrHalH13g(this);
}

{
  *this = &unk_1F19F27B0;
  v2 = (this + 32);
  std::vector<ZinIrEventParamInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  ZinIrHalH13g::~ZinIrHalH13g(this);
  MEMORY[0x1AC55A070]();
}

void *std::__shared_ptr_emplace<ZinWaitForEventLayer>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ZinIrWaitForEventInfo>,std::shared_ptr<ZinIrTensor> &,std::string const&,std::allocator<ZinWaitForEventLayer>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F2978;
  std::construct_at[abi:ne200100]<ZinWaitForEventLayer,std::unique_ptr<ZinIrWaitForEventInfo>,std::shared_ptr<ZinIrTensor> &,std::string const&,ZinWaitForEventLayer*>(a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<ZinWaitForEventLayer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F2978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::construct_at[abi:ne200100]<ZinWaitForEventLayer,std::unique_ptr<ZinIrWaitForEventInfo>,std::shared_ptr<ZinIrTensor> &,std::string const&,ZinWaitForEventLayer*>(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinWaitForEventLayer::ZinWaitForEventLayer(a1, a2, v7, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void sub_1A69972F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *ZinCreateRingBufferWriterUnit(const ZinIrRingBufferUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ZinAddOffsetsToParamsDict(Mutable, a1 + 120, a1 + 80, @"RingBufferWriterInfo");
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

void *ZinManyToOnePattern::ZinManyToOnePattern(void *a1, uint64_t **a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::__value_func[abi:ne200100](v18, a5);
  ZinPattern::ZinPattern(a1, a3, a4, v18, a6);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v18);
  *a1 = &unk_1F19F29C8;
  a1[23] = 0;
  a1[24] = 0;
  a1[25] = 0;
  v11 = a2[2];
  a1[26] = a2[1];
  v17 = 0;
  ZinLinearPattern::ZinLinearPattern(a1 + 27, v11, a3, a4, v16, (a1 + 13));
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v16);
  v12 = a2[3];
  v15 = 0;
  ZinLinearPattern::ZinLinearPattern(a1 + 53, v12, a3, a4, v14, (a1 + 13));
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::__value_func[abi:ne200100]((a1 + 79), (a2 + 4));
  ZinManyToOnePattern::InitializeInputs<ZinManyToOnePattern::ParamsT<std::vector<ZinLinearPattern::AtomItemDesc>>>(a1, a2);
  return a1;
}

{
  v19 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::__value_func[abi:ne200100](v18, a5);
  ZinPattern::ZinPattern(a1, a3, a4, v18, a6);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v18);
  *a1 = &unk_1F19F29C8;
  a1[23] = 0;
  a1[24] = 0;
  a1[25] = 0;
  v11 = a2[2];
  a1[26] = a2[1];
  v17 = 0;
  ZinLinearPattern::ZinLinearPattern(a1 + 27, v11, a3, a4, v16, (a1 + 13));
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v16);
  v12 = a2[3];
  v15 = 0;
  ZinLinearPattern::ZinLinearPattern(a1 + 53, v12, a3, a4, v14, (a1 + 13));
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::__value_func[abi:ne200100]((a1 + 79), (a2 + 4));
  ZinManyToOnePattern::InitializeInputs<ZinManyToOnePattern::ParamsT<std::vector<ZinLinearPattern::AtomItem>>>(a1, a2);
  return a1;
}

void sub_1A69974CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100]((v9 + 79));
  ZinLinearPattern::~ZinLinearPattern(v9 + 53);
  ZinLinearPattern::~ZinLinearPattern(v9 + 27);
  std::vector<ZinLinearPattern>::__destroy_vector::operator()[abi:ne200100](&a9);
  ZinPattern::~ZinPattern(v9);
  _Unwind_Resume(a1);
}

uint64_t ZinManyToOnePattern::InitializeInputs<ZinManyToOnePattern::ParamsT<std::vector<ZinLinearPattern::AtomItemDesc>>>(uint64_t result, uint64_t **a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = **a2;
  if ((*a2)[1] != v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v4 + 64))
      {
        v7 = *(v4 + 64);
      }

      else
      {
        v7 = v6 != a2[1];
      }

      v10 = 0;
      ZinLinearPattern::ZinLinearPattern(v11, (v2 + v5), v4 + 16, v7, v9, v4 + 104);
      std::vector<ZinLinearPattern>::push_back[abi:ne200100](v4 + 184, v11);
      v11[0] = &unk_1F19E1808;
      v8 = v12;
      std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v8);
      ZinPattern::~ZinPattern(v11);
      result = std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v9);
      ++v6;
      v2 = **a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * (((*a2)[1] - v2) >> 3));
  }

  return result;
}

void sub_1A6997678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1A69977D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100]((v9 + 79));
  ZinLinearPattern::~ZinLinearPattern(v9 + 53);
  ZinLinearPattern::~ZinLinearPattern(v9 + 27);
  std::vector<ZinLinearPattern>::__destroy_vector::operator()[abi:ne200100](&a9);
  ZinPattern::~ZinPattern(v9);
  _Unwind_Resume(a1);
}

uint64_t ZinManyToOnePattern::InitializeInputs<ZinManyToOnePattern::ParamsT<std::vector<ZinLinearPattern::AtomItem>>>(uint64_t result, uint64_t **a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = **a2;
  if ((*a2)[1] != v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      if (*(v4 + 64))
      {
        v7 = *(v4 + 64);
      }

      else
      {
        v7 = v6 != a2[1];
      }

      v10 = 0;
      ZinLinearPattern::ZinLinearPattern(v11, (v2 + v5), v4 + 16, v7, v9, v4 + 104);
      std::vector<ZinLinearPattern>::push_back[abi:ne200100](v4 + 184, v11);
      v11[0] = &unk_1F19E1808;
      v8 = v12;
      std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v8);
      ZinPattern::~ZinPattern(v11);
      result = std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v9);
      ++v6;
      v2 = **a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * (((*a2)[1] - v2) >> 3));
  }

  return result;
}

void sub_1A6997984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinManyToOnePattern::ZinManyToOnePattern(ZinManyToOnePattern *this, const ZinManyToOnePattern *a2)
{
  ZinPattern::ZinPattern(this, a2);
  *v4 = &unk_1F19F29C8;
  v4[23] = 0;
  v4[24] = 0;
  v4[25] = 0;
  std::vector<ZinLinearPattern>::__init_with_size[abi:ne200100]<ZinLinearPattern*,ZinLinearPattern*>(v4 + 23, *(a2 + 23), *(a2 + 24), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 24) - *(a2 + 23)) >> 4));
  *(this + 26) = *(a2 + 26);
  ZinPattern::ZinPattern((this + 216), (a2 + 216));
  *(this + 27) = &unk_1F19E1808;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 50) = 0;
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem*,ZinLinearPattern::AtomItem*>(this + 50, *(a2 + 50), *(a2 + 51), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 51) - *(a2 + 50)) >> 5));
  ZinPattern::ZinPattern((this + 424), (a2 + 424));
  *(this + 53) = &unk_1F19E1808;
  *(this + 76) = 0;
  *(this + 78) = 0;
  *(this + 77) = 0;
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem*,ZinLinearPattern::AtomItem*>(this + 76, *(a2 + 76), *(a2 + 77), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 77) - *(a2 + 76)) >> 5));
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::__value_func[abi:ne200100](this + 632, a2 + 632);
  v5 = *(this + 23);
  v6 = *(this + 24);
  while (v5 != v6)
  {
    ZinPattern::SetParentState(v5, (this + 104));
    v5 += 208;
  }

  ZinPattern::SetParentState(this + 216, (this + 104));
  ZinPattern::SetParentState(this + 424, (this + 104));
}

void sub_1A6997B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  ZinLinearPattern::~ZinLinearPattern(v12);
  ZinLinearPattern::~ZinLinearPattern(v11);
  std::vector<ZinLinearPattern>::__destroy_vector::operator()[abi:ne200100](&a10);
  ZinPattern::~ZinPattern(v10);
  _Unwind_Resume(a1);
}

uint64_t ZinManyToOnePattern::Match(ZinManyToOnePattern *this, const ZinIrOpLayerGraph *a2, ZinIrOpLayer *SrcSymbol)
{
  ZinPattern::State::Reset((this + 104));
  if (*(this + 16) == 1)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ZinOneToVariablePattern::Match();
    return 0;
  }

  *(this + 1) = SrcSymbol;
  v7 = *(this + 23);
  if (*(this + 24) == v7)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v8 = (v7 + 208 * *(this + 26));
  if (*(this + 42) || (*(*v8 + 8))(v8, a2, SrcSymbol))
  {
    matched = ZinPattern::MatchCount(v8);
    SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(v8);
    *(this + 1) = SrcSymbol;
    v10 = matched == 0;
LABEL_9:
    if (*(this + 42) || ((*(*(this + 27) + 8))(this + 216, a2, SrcSymbol) & 1) != 0)
    {
      if (ZinPattern::MatchCount((this + 216)))
      {
        FirstMatch = ZinPattern::GetFirstMatch((this + 216));
        if (v10 || (v12 = *(this + 23) + 208 * *(this + 26), v13 = (*(*v12 + 56))(v12), ZinIrOpLayerGraph::GetIndexOfMatchedIncomingLayer(a2, FirstMatch, v13) == *(this + 26)))
        {
          v14 = *(this + 23);
          if (*(this + 24) != v14)
          {
            v15 = 0;
            v16 = 0;
            do
            {
              if (v16 != *(this + 26))
              {
                L2 = ZinIrResourceTracker::GetL2((v14 + v15));
                if (L2[1] == *L2)
                {
                  v19 = 0;
                }

                else
                {
                  v18 = *ZinIrResourceTracker::GetL2((*(this + 23) + v15));
                  v23 = 3;
                  v19 = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>((v18 + 56), &v23) != 0;
                }

                v20 = ZinPattern::Iterate(this, FirstMatch, 1uLL, v16, v19);
                v14 = *(this + 23);
                if (!*(this + 42))
                {
                  if (!(*(*(v14 + v15) + 8))(v14 + v15, a2, v20))
                  {
                    goto LABEL_29;
                  }

                  v14 = *(this + 23);
                }
              }

              ++v16;
              v15 += 208;
            }

            while (v16 < 0x4EC4EC4EC4EC4EC5 * ((*(this + 24) - v14) >> 4));
          }

          if (*(this + 82) && (std::function<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::operator()(this + 632, a2, this + 16, this + 216) & 1) == 0)
          {
            return ZinPattern::Analyze(this, a2);
          }

          LastMatch = ZinLinearPattern::GetLastMatch((this + 216));
          *(this + 1) = LastMatch;
          v22 = ZinPattern::Iterate(this, LastMatch, 0, 0);
          *(this + 1) = v22;
          if (*(this + 42) || ((*(*(this + 53) + 8))(this + 424, a2, v22) & 1) != 0)
          {
            return ZinPattern::Analyze(this, a2);
          }
        }
      }
    }
  }

LABEL_29:
  ZinPattern::State::Reset((this + 104));
  return 0;
}

void ZinManyToOnePattern::GetInputEdges(ZinManyToOnePattern *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  FirstMatch = ZinPattern::GetFirstMatch((this + 216));
  v5 = *(this + 23);
  v6 = *(this + 24);
  if (v5 != v6)
  {
    v7 = FirstMatch;
    v8 = 0;
    v9 = v5;
    do
    {
      (*(*v9 + 24))(&__p, v9);
      if (v23 == __p)
      {
        SinglePreviousLayer = ZinMirTensorTransform::GetSinglePreviousLayer(v7, v8);
        if (SinglePreviousLayer)
        {
          v12 = *(a2 + 8);
          v11 = *(a2 + 16);
          if (v12 >= v11)
          {
            v14 = (v12 - *a2) >> 4;
            v15 = v14 + 1;
            if ((v14 + 1) >> 60)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v16 = v11 - *a2;
            if (v16 >> 3 > v15)
            {
              v15 = v16 >> 3;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF0)
            {
              v17 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(a2, v17);
            }

            v18 = (16 * v14);
            *v18 = SinglePreviousLayer;
            v18[1] = v7;
            v13 = 16 * v14 + 16;
            v19 = *(a2 + 8) - *a2;
            v20 = v18 - v19;
            memcpy(v18 - v19, *a2, v19);
            v21 = *a2;
            *a2 = v20;
            *(a2 + 8) = v13;
            *(a2 + 16) = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v12 = SinglePreviousLayer;
            v12[1] = v7;
            v13 = (v12 + 2);
          }

          *(a2 + 8) = v13;
        }
      }

      else
      {
        std::vector<std::pair<ZinIrOpLayer *,ZinIrOpLayer *>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<ZinIrOpLayer *,ZinIrOpLayer *> const*>,std::__wrap_iter<std::pair<ZinIrOpLayer *,ZinIrOpLayer *> const*>>(a2, *(a2 + 8), __p, v23, (v23 - __p) >> 4);
      }

      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      v9 += 208;
      v5 += 208;
      ++v8;
    }

    while (v9 != v6);
  }
}

void sub_1A69980D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void ZinManyToOnePattern::GetOutputEdges(ZinManyToOnePattern *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  ZinLinearPattern::GetOutputEdges(&__p, (this + 424));
  std::vector<std::pair<ZinIrOpLayer *,ZinIrOpLayer *>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<ZinIrOpLayer *,ZinIrOpLayer *> const*>,std::__wrap_iter<std::pair<ZinIrOpLayer *,ZinIrOpLayer *> const*>>(a2, 0, __p, v5, (v5 - __p) >> 4);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (*(a2 + 8) == *a2)
  {
    ZinLinearPattern::GetOutputEdges(&__p, (this + 216));
    std::vector<std::pair<ZinIrOpLayer *,ZinIrOpLayer *>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<ZinIrOpLayer *,ZinIrOpLayer *> const*>,std::__wrap_iter<std::pair<ZinIrOpLayer *,ZinIrOpLayer *> const*>>(a2, *(a2 + 8), __p, v5, (v5 - __p) >> 4);
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

void sub_1A69981C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinManyToOnePattern::GetLastMatch(ZinManyToOnePattern *this)
{
  result = ZinLinearPattern::GetLastMatch((this + 424));
  if (!result)
  {

    return ZinLinearPattern::GetLastMatch((this + 216));
  }

  return result;
}

void ZinManyToOnePattern::ResetState(ZinManyToOnePattern *this)
{
  ZinPattern::ResetState(this);
  v2 = *(this + 23);
  v3 = *(this + 24);
  if (v2 != v3)
  {
    v4 = *(this + 23);
    v5 = v4;
    do
    {
      v6 = *v5;
      v5 += 26;
      (*(v6 + 64))(v4);
      v2 += 26;
      v4 = v5;
    }

    while (v5 != v3);
  }

  ZinPattern::ResetState((this + 216));

  ZinPattern::ResetState((this + 424));
}

void ZinManyToOnePattern::~ZinManyToOnePattern(ZinManyToOnePattern *this)
{
  *this = &unk_1F19F29C8;
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](this + 632);
  *(this + 53) = &unk_1F19E1808;
  v2 = (this + 608);
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v2);
  ZinPattern::~ZinPattern(this + 53);
  *(this + 27) = &unk_1F19E1808;
  v2 = (this + 400);
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v2);
  ZinPattern::~ZinPattern(this + 27);
  v2 = (this + 184);
  std::vector<ZinLinearPattern>::__destroy_vector::operator()[abi:ne200100](&v2);
  ZinPattern::~ZinPattern(this);
  MEMORY[0x1AC55A070]();
}

void *std::__shared_ptr_emplace<ZinManyToOnePattern>::__shared_ptr_emplace[abi:ne200100]<ZinManyToOnePattern const&,std::allocator<ZinManyToOnePattern>,0>(void *a1, const ZinManyToOnePattern *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19D1948;
  ZinManyToOnePattern::ZinManyToOnePattern((a1 + 3), a2);
  return a1;
}

__CFDictionary *ZinCreateSpaceToChannelUnit(const ZinIrSpaceToChannelUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 36;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

void ZinReshapeLayerUtils::TraceReshapeDimension(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 80);
  v45[0] = *(a1 + 64);
  v45[1] = v8;
  v9 = *(a2 + 80);
  v43[0] = *(a2 + 64);
  v46 = *(a1 + 96);
  v43[1] = v9;
  v44 = *(a2 + 96);
  v10 = *(a1 + 160);
  if (v10)
  {
    v11 = *(v10 + 96);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 104);
  DimensionOrderHint::DimensionOrderHint(__p, a3);
  Interleave = ZinIrTensor::GetInterleave(a1);
  ZinIrTensor::CreateDefaultStride((a1 + 64), v12, v11, __p, 1, Interleave, v14, v42);
  if (__p[0].i64[0])
  {
    __p[0].i64[1] = __p[0].i64[0];
    operator delete(__p[0].i64[0]);
  }

  v15 = *(a2 + 160);
  if (v15)
  {
    v16 = *(v15 + 96);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 104);
  DimensionOrderHint::DimensionOrderHint(&v38, a3);
  v18 = ZinIrTensor::GetInterleave(a2);
  ZinIrTensor::CreateDefaultStride((a2 + 64), v17, v16, &v38, 1, v18, v19, __p);
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  v20 = *(a3 + 8);
  if (v20 != *a3)
  {
    v21 = *(a3 + 8);
    do
    {
      v22 = *(v21 - 4);
      v21 -= 4;
      v37 = v22;
      ValueAt = GetValueAtDimension<ZinTensorDimensions>(__p, v22);
      v24 = GetValueAtDimension<ZinTensorDimensions>(v43, v37);
      v25 = v20 - 1;
      v26 = v20;
      do
      {
        v20 = v26;
        v27 = v25;
        if (v26 == *a3)
        {
          break;
        }

        --v26;
        v28 = GetValueAtDimension<ZinTensorDimensions>(v42, *(v20 - 1));
        v29 = GetValueAtDimension<ZinTensorDimensions>(v45, *v26);
        v25 = v27 - 1;
      }

      while (!(ValueAt % (v29 * v28)));
      v30 = 0;
      v31 = v24 * ValueAt;
      v32 = v20;
      do
      {
        v33 = v30;
        if (v32 == *a3)
        {
          break;
        }

        v34 = *--v32;
        v35 = GetValueAtDimension<ZinTensorDimensions>(v42, v34);
        v30 = v33 - 4;
      }

      while (v35 % v31);
      v38 = 0;
      v39 = 0;
      v40 = 0;
      while (v33)
      {
        v33 += 4;
        std::vector<unsigned int>::push_back[abi:ne200100](&v38, v27--);
      }

      v47 = &v37;
      v36 = std::__tree<std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(a4, &v37, &std::piecewise_construct, &v47) + 5;
      if (v36 != &v38)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v36, v38, v39, (v39 - v38) >> 2);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }
    }

    while (v21 != *a3);
  }
}

void sub_1A69987B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DimensionOrderHint::~DimensionOrderHint(DimensionOrderHint *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void ZinReshapeLayerUtils::ConvertTransposeMappingToDims(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v8, *v2, *(v2 + 8), (*(v2 + 8) - *v2) >> 3);
      v5 = v8;
      v6 = v9;
      if (v8 != v9)
      {
        do
        {
          v7 = *v5;
          std::vector<DimensionMapping>::push_back[abi:ne200100](a2, &v7);
          ++v5;
        }

        while (v5 != v6);
        v5 = v8;
      }

      if (v5)
      {
        v9 = v5;
        operator delete(v5);
      }

      v2 += 24;
    }

    while (v2 != v3);
  }
}

void sub_1A6998900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinReshapeLayerUtils::IsConvertibleToTranspose(void *a1, void *a2, DimensionOrderHint *this, uint64_t *a4)
{
  __p = 0;
  v37 = 0;
  v38 = 0;
  DimensionOrderHint::GetOrder(&v33, this);
  v8 = v33;
  v9 = v34;
  if (v33 != v34)
  {
    do
    {
      v10 = *v8;
      ValueAt = GetValueAtDimension<ZinTensorDimensions>(a1, *v8);
      v32[0] = v10;
      v32[1] = ValueAt;
      std::vector<ZinIrSliceSizeInfo>::push_back[abi:ne200100](&__p, v32);
      ++v8;
    }

    while (v8 != v9);
    v8 = v33;
  }

  if (v8)
  {
    v34 = v8;
    operator delete(v8);
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  DimensionOrderHint::GetOrder(v32, this);
  v12 = v32[0];
  v13 = v32[1];
  if (v32[0] != v32[1])
  {
    do
    {
      v14 = *v12;
      v15 = GetValueAtDimension<ZinTensorDimensions>(a2, *v12);
      *&v30 = v14;
      *(&v30 + 1) = v15;
      std::vector<ZinIrSliceSizeInfo>::push_back[abi:ne200100](&v33, &v30);
      ++v12;
    }

    while (v12 != v13);
    v12 = v32[0];
  }

  if (v12)
  {
    v32[1] = v12;
    operator delete(v12);
  }

  v16 = __p;
  v17 = v37;
  if (__p == v37)
  {
    v17 = __p;
  }

  else
  {
    v18 = __p;
    do
    {
      if (*(v18 + 1) == 1)
      {
        v19 = v18 + 16;
        if (v18 + 16 == v17)
        {
          v17 = v18;
        }

        else
        {
          do
          {
            *(v19 - 4) = *v19;
            *(v19 - 1) = *(v19 + 1);
            v19 += 16;
          }

          while (v19 != v17);
          v17 = v19 - 16;
        }

        v37 = v17;
      }

      else
      {
        v18 += 16;
      }
    }

    while (v18 != v17);
  }

  v20 = v33;
  v21 = v34;
  if (v33 == v34)
  {
    v21 = v33;
  }

  else
  {
    v22 = v33;
    do
    {
      if (*(v22 + 8) == 1)
      {
        v23 = v22 + 16;
        if (v22 + 16 == v21)
        {
          v21 = v22;
        }

        else
        {
          do
          {
            *(v23 - 16) = *v23;
            *(v23 - 8) = *(v23 + 8);
            v23 += 16;
          }

          while (v23 != v21);
          v21 = v23 - 16;
        }

        v34 = v21;
      }

      else
      {
        v22 += 16;
      }
    }

    while (v22 != v21);
  }

  if (v17 - v16 != v21 - v20)
  {
    v28 = 0;
    if (!v20)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  memset(v32, 0, sizeof(v32));
  if (v17 == v16)
  {
LABEL_42:
    TransposeLayerUtils::CreateClosedFormMapping(v32, &v30);
    std::vector<std::vector<DimensionMapping>>::__vdeallocate(a4);
    *a4 = v30;
    a4[2] = v31;
    v31 = 0;
    v30 = 0uLL;
    v39 = &v30;
    std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v39);
    v28 = a4[1] != *a4;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v26 = &v16[v24 * 4];
      v27 = &v33[v24];
      if (*&v16[v24 * 4 + 8] != *&v33[v24 + 2])
      {
        break;
      }

      if (*v26 != *v27)
      {
        *&v30 = 0;
        LODWORD(v30) = *v26;
        DWORD1(v30) = *v27;
        std::vector<DimensionMapping>::push_back[abi:ne200100](v32, &v30);
        v16 = __p;
        v17 = v37;
      }

      ++v25;
      v24 += 4;
      if (v25 >= (v17 - v16) >> 4)
      {
        goto LABEL_42;
      }
    }

    v28 = 0;
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  v20 = v33;
  if (v33)
  {
LABEL_44:
    v34 = v20;
    operator delete(v20);
  }

LABEL_45:
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  return v28;
}

void sub_1A6998C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinReshapeLayerUtils::IsValidDecomposition(__int128 *a1, int a2, uint64_t a3, uint64_t *a4)
{
  std::vector<ZinTensorDimensions>::vector[abi:ne200100](&v60, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 6) + 1);
  v8 = v60;
  v9 = *a1;
  v10 = a1[1];
  v60[4] = *(a1 + 4);
  *v8 = v9;
  v8[1] = v10;
  v11 = *a4;
  if (a4[1] != *a4)
  {
    v12 = 0;
    v13 = 0;
    v14 = 5;
    do
    {
      if (*(v11 + v12) == 21)
      {
        ZinIrTransposeUnitInfo::TransposeDimensions<ZinTensorDimensions>(&v60[v14 - 5], (v11 + v12 + 128), &v60[v14]);
      }

      else
      {
        v15 = v11 + v12;
        v16 = &v60[v14];
        v17 = *(v15 + 128);
        v18 = *(v15 + 144);
        *(v16 + 4) = *(v15 + 160);
        *v16 = v17;
        *(v16 + 1) = v18;
      }

      ++v13;
      v11 = *a4;
      v14 += 5;
      v12 += 192;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 6) > v13);
    v8 = v60;
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  std::vector<ZinTensorDimensions>::__init_with_size[abi:ne200100]<ZinTensorDimensions*,ZinTensorDimensions*>(&v57, v8, v61, 0xCCCCCCCCCCCCCCCDLL * ((v61 - v8) >> 3));
  v20 = *a4;
  v19 = a4[1];
  if (v19 == *a4)
  {
LABEL_22:
    v27 = 1;
    goto LABEL_24;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  while (*(v20 + v21) != 21)
  {
LABEL_21:
    ++v23;
    v22 += 5;
    v21 += 192;
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 6) <= v23)
    {
      goto LABEL_22;
    }
  }

  ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(v54, (v20 + v21 + 48));
  v4 = v4 & 0xFFFFFFFFFFFFFF00 | 1;
  v35[0] = 0;
  v37 = 0;
  v38 = 0;
  __p = 0;
  v39 = 5;
  v40 = 0;
  v41 = a2;
  v25 = *&v60[v22];
  v24 = *&v60[v22 + 2];
  v44 = v60[v22 + 4];
  v42 = v25;
  v43 = v24;
  v45 = 0;
  v46 = 0;
  v47 = 1;
  v48 = v4;
  v49 = 0;
  v50 = 0;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v51, v35);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::ZinTransposeValidator(v33, a3, v54, &v41);
  ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::Validate(v33);
  ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::GetValidAlternateLayerDesc(v33, v30);
  v26 = v34;
  v30[0] = &unk_1F1A33FB0;
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v30);
  ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::~ZinTransposeValidator(v33);
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  v54[0] = &unk_1F1A33FB0;
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v54);
  if (!v26)
  {
    v20 = *a4;
    v19 = a4[1];
    goto LABEL_21;
  }

  v27 = 0;
LABEL_24:
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  return v27;
}

void sub_1A6998F74(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

BOOL ZinReshapeLayerUtils::DecomposeMisAlignedReshape(int64x2_t *a1, __int128 *a2, int a3, const ZinIrHalParameters **a4, uint64_t a5, uint64_t *a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v215[20] = *MEMORY[0x1E69E9840];
  if (IsVector(a1) && IsVector(a2))
  {
    VectorDimension = GetVectorDimension(a1);
    v12 = GetVectorDimension(a2);
    v153 = 0;
    v152 = 0;
    v154 = 0;
    *&v212 = __PAIR64__(v12, VectorDimension);
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v152, &v212);
    *&v212 = __PAIR64__(VectorDimension, v12);
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v152, &v212);
    ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v207, &v152, a3);
    DimensionOrderHint::DimensionOrderHint(&__p, 2);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v207, &__p, 1);
    if (__p)
    {
      v169 = __p;
      operator delete(__p);
    }

    std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](v6, &v212);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
    *&v207 = &unk_1F1A33FB0;
    if (v210)
    {
      v211 = v210;
      operator delete(v210);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v207);
    v13 = v152;
    if (v152)
    {
      v153 = v152;
LABEL_94:
      operator delete(v13);
      goto LABEL_95;
    }

    goto LABEL_95;
  }

  if (IsVector(a1))
  {
    if (GetVectorDimension(a1) == 4)
    {
      v169 = 0;
      __p = 0;
      v170 = 0;
      *&v212 = 0x200000004;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&__p, &v212);
      *&v212 = 0x400000002;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&__p, &v212);
      ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v207, &__p, a3);
      DimensionOrderHint::DimensionOrderHint(&v180, 2);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v207, &v180, 1);
      if (v180.i64[0])
      {
        v180.i64[1] = v180.i64[0];
        operator delete(v180.i64[0]);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
      *&v207 = &unk_1F1A33FB0;
      if (v210)
      {
        v211 = v210;
        operator delete(v210);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v207);
      if (__p)
      {
        v169 = __p;
        operator delete(__p);
      }
    }

    v14 = a1[2].i64[0] * a1->i64[0] * a1->i64[1] * a1[1].i64[0] * a1[1].i64[1];
    v15 = *(a2 + 3);
    *&v187 = 1;
    *(&v187 + 1) = v15;
    v188 = vdupq_n_s64(1uLL);
    v189 = v14 / v15;
    ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v133, &v187);
    v126[1] = 0;
    *&v127 = 0;
    v126[0] = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v126, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
    DWORD2(v127) = *(a5 + 24);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v133, v126, 1);
    v8 = a4;
    v6 = a6;
    if (v126[0])
    {
      v126[1] = v126[0];
      operator delete(v126[0]);
    }

    std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
    v129 = 0;
    v130 = 0;
    v131 = 0;
    *&v207 = 0x200000004;
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v129, &v207);
    *&v207 = 0x400000002;
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v129, &v207);
    ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v173, &v129, a3);
    DimensionOrderHint::DimensionOrderHint(&v183, 2);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v207, &v173, &v183, 1);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v207);
    v16 = a2[1];
    v159 = *a2;
    v160 = v16;
    v161 = *(a2 + 4);
    ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v195, &v159);
    v166 = 0;
    v164 = 0;
    v165 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v164, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
    v167 = *(a5 + 24);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&__p, &v195, &v164, 1);
    if (v164)
    {
      v165 = v164;
      operator delete(v164);
    }

    std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &__p);
    *v202 = v215[11];
    *&v202[16] = v215[13];
    v203 = v215[15];
    *&v202[8] = v215[14];
    *&v202[24] = v215[12];
    v122 = 0;
    v123 = 0;
    v124 = 0;
    if (ZinReshapeLayerUtils::IsConvertibleToTranspose(v202, &v159, a5, &v122) && v123 - v122 == 24 && (ZinIrTransposeUnit::IsXYTranspose(v122, 1, 3) || ZinIrTransposeUnit::IsXYTranspose(v122, 0, 3)) && v160.i64[0] > *&v202[16])
    {
      v205 = 0;
      v204 = 0;
      v206 = 0;
      v152 = 0x300000001;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v204, &v152);
      v152 = 0x100000003;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v204, &v152);
      ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v140, &v204, a3);
      DimensionOrderHint::DimensionOrderHint(&v148, 2);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v152, &v140, &v148, 1);
      if (v148)
      {
        v149 = v148;
        operator delete(v148);
      }

      v17 = a6[1];
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc((v17 - 192));
      a6[1] = v18;
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc((v17 - 384));
      a6[1] = v19;
      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v152);
      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v207);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v152);
      v140 = &unk_1F1A33FB0;
      if (v144)
      {
        v145 = v144;
        operator delete(v144);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v140);
      if (v204)
      {
        v205 = v204;
        operator delete(v204);
      }
    }

    v152 = &v122;
    std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v152);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&__p);
    v195 = &unk_1F1A34058;
    if (v200)
    {
      v201 = v200;
      operator delete(v200);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v195);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v207);
    v173.i64[0] = &unk_1F1A33FB0;
    if (v176)
    {
      v177 = v176;
      operator delete(v176);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v173);
    if (v129)
    {
      v130 = v129;
      operator delete(v129);
    }

    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
    v133.i64[0] = &unk_1F1A34058;
    if (v138)
    {
      v139 = v138;
      operator delete(v138);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v133);
    goto LABEL_95;
  }

  if (IsVector(a2))
  {
    v20 = *v8;
    LODWORD(v110) = GetVectorDimension(a2);
    v21 = a1[1].i64[1];
    v22 = a1[2].i64[0];
    v24 = a1->i64[0];
    v23 = a1->i64[1];
    v25 = a1[1].i64[0];
    v122 = 0;
    if (ZinTensorFormatGetSizeInBytes(a3, &v122))
    {
      ZinAssertImpl("Error in getting tensor format size in bytes");
    }

    v26 = v22 * v24 * v23 * v25 * v21;
    v27 = a1[1].i64[1];
    if ((v122 * v27) % *(v20 + 70))
    {
      v28 = 1;
    }

    else
    {
      v28 = v26 > *(v20 + 39);
    }

    if (v28)
    {
      if (v27 != 1)
      {
        v55 = a1[2].i64[0];
        *&v212 = a1->i64[0];
        *(&v212 + 1) = v55;
        v213 = *(a1 + 8);
        v214 = v27;
        v166 = 0;
        v164 = 0;
        v165 = 0;
        std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v164, &v212, v215, 5uLL);
        if (v165 == v164)
        {
LABEL_160:
          LODWORD(v56) = 0;
        }

        else
        {
          v56 = 0;
          v57 = (v165 - v164) >> 3;
          if (v57 <= 1)
          {
            v57 = 1;
          }

          while (*(v164 + v56) != 1)
          {
            if (v57 == ++v56)
            {
              goto LABEL_160;
            }
          }
        }

        v149 = 0;
        v148 = 0;
        v150 = 0;
        *&v212 = v56 | 0x400000000;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v148, &v212);
        if (v56 <= 3)
        {
          do
          {
            LODWORD(v212) = v56 + 1;
            DWORD1(v212) = v56;
            std::vector<DimensionMapping>::push_back[abi:ne200100](&v148, &v212);
            LODWORD(v56) = v56 + 1;
          }

          while (v56 != 4);
        }

        ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v133, &v148, a3);
        DimensionOrderHint::DimensionOrderHint(&v180, 2);
        ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v133, &v180, 1);
        if (v180.i64[0])
        {
          v180.i64[1] = v180.i64[0];
          operator delete(v180.i64[0]);
        }

        std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
        v173 = vdupq_n_s64(1uLL);
        v174 = v26;
        v175 = v173;
        ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v152, &v173);
        v126[1] = 0;
        *&v127 = 0;
        v126[0] = 0;
        std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v126, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
        DWORD2(v127) = *(a5 + 24);
        ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v207, &v152, v126, 1);
        if (v126[0])
        {
          v126[1] = v126[0];
          operator delete(v126[0]);
        }

        std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v207);
        v129 = 0;
        v130 = 0;
        v131 = 0;
        LODWORD(__p) = 3;
        HIDWORD(__p) = v110;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v129, &__p);
        __p = (v110 | 0x300000000);
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v129, &__p);
        ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v195, &v129, a3);
        DimensionOrderHint::DimensionOrderHint(&v183, 2);
        ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&__p, &v195, &v183, 1);
        if (v183)
        {
          v184 = v183;
          operator delete(v183);
        }

        std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &__p);
        ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&__p);
        v195 = &unk_1F1A33FB0;
        if (v198)
        {
          v199 = v198;
          operator delete(v198);
        }

        ZinIrUnitInfo::~ZinIrUnitInfo(&v195);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v207);
        v152 = &unk_1F1A34058;
        if (v157)
        {
          v158 = v157;
          operator delete(v157);
        }

        ZinIrUnitInfo::~ZinIrUnitInfo(&v152);
        ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
        v133.i64[0] = &unk_1F1A33FB0;
        if (v136)
        {
          v137 = v136;
          operator delete(v136);
        }

        ZinIrUnitInfo::~ZinIrUnitInfo(&v133);
        if (v148)
        {
          v149 = v148;
          operator delete(v148);
        }

        if (v164)
        {
          v165 = v164;
          operator delete(v164);
        }

        return 1;
      }

      v133.i64[0] = 1;
      v133.i64[1] = v26;
      v134 = vdupq_n_s64(1uLL);
      v135 = 1;
      ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&__p, &v133);
      v160.i64[0] = 0;
      v159 = 0uLL;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v159, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
      v160.i32[2] = *(a5 + 24);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &__p, &v159, 1);
      v29 = a6;
      if (v159)
      {
        *(&v159 + 1) = v159;
        operator delete(v159);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
      v196 = 0;
      v195 = 0;
      v197 = 0;
      LODWORD(v207) = 2;
      DWORD1(v207) = v110;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v195, &v207);
      *&v207 = v110 | 0x200000000;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v195, &v207);
      ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v152, &v195, a3);
      DimensionOrderHint::DimensionOrderHint(v202, 2);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v207, &v152, v202, 1);
      if (*v202)
      {
        *&v202[8] = *v202;
        operator delete(*v202);
      }
    }

    else
    {
      if (!v110 && v26 > *(v20 + 47))
      {
        v8 = a4;
        v7 = a5;
        goto LABEL_59;
      }

      v133 = vdupq_n_s64(1uLL);
      v134.i64[0] = 1;
      v134.i64[1] = v26;
      v135 = 1;
      ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&__p, &v133);
      v141 = 0;
      v142 = 0;
      v140 = 0;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v140, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
      v143 = *(a5 + 24);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &__p, &v140, 1);
      v29 = a6;
      if (v140)
      {
        v141 = v140;
        operator delete(v140);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
      v196 = 0;
      v195 = 0;
      v197 = 0;
      LODWORD(v207) = 4;
      DWORD1(v207) = v110;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v195, &v207);
      *&v207 = v110 | 0x400000000;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v195, &v207);
      ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v152, &v195, a3);
      DimensionOrderHint::DimensionOrderHint(&v187, 2);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v207, &v152, &v187, 1);
      if (v187)
      {
        *(&v187 + 1) = v187;
        operator delete(v187);
      }
    }

    std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](v29, &v207);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v207);
    v152 = &unk_1F1A33FB0;
    if (v155)
    {
      v156 = v155;
      operator delete(v155);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v152);
    if (v195)
    {
      v196 = v195;
      operator delete(v195);
    }

    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
    __p = &unk_1F1A34058;
    if (v171)
    {
      v172 = v171;
      operator delete(v171);
    }

    p_p = &__p;
    goto LABEL_154;
  }

LABEL_59:
  v30 = *v8;
  if (*(a2 + 3) != 1)
  {
    v38 = a1[1];
    v187 = *a1;
    v188 = v38;
    v189 = a1[2].i64[0];
    v39 = a2[1];
    v159 = *a2;
    v160 = v39;
    v161 = *(a2 + 4);
    DimensionOrderHint::GetOrder(&v212, v7);
    DimensionOrderHint::DimensionOrderHint(&v180, &v212);
    if (v212)
    {
      *(&v212 + 1) = v212;
      operator delete(v212);
    }

    v212 = xmmword_1A75A3B20;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v122, &v212, &v213, 4uLL);
    v205 = 0;
    v204 = 0;
    v206 = 0;
    v193 = 0;
    v192 = 0;
    v194 = 0;
    ZinReshapeLayerUtils::GetReshapedDimensions(v121, a1, a2, &v180, 0);
    AxisToSwapWidth = FindAxisToSwapWidth(v121, a1, a3, v30);
    if (AxisToSwapWidth == 5 && (AxisToSwapWidth = FindAxisToSwapWidthUsingTranspose(a1, a2, a3, v30, 1, a5, &v204, &v187), AxisToSwapWidth == 5) && (AxisToSwapWidth = FindAxisToSwapWidthUsingTranspose(a1, a2, a3, v30, 0, a5, &v192, &v159), AxisToSwapWidth == 5))
    {
      v42 = 0;
    }

    else
    {
      if (v205 != v204)
      {
        ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v207, &v204, a3);
        DimensionOrderHint::DimensionOrderHint(v126, 2);
        ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v207, v126, 1);
        if (v126[0])
        {
          v126[1] = v126[0];
          operator delete(v126[0]);
        }

        std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
        ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
        *&v207 = &unk_1F1A33FB0;
        if (v210)
        {
          v211 = v210;
          operator delete(v210);
        }

        ZinIrUnitInfo::~ZinIrUnitInfo(&v207);
      }

      v118 = 0;
      v119 = 0;
      v120 = 0;
      *&v212 = AxisToSwapWidth | 0x400000000;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v118, &v212);
      *&v212 = 0x300000004;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v118, &v212);
      if (AxisToSwapWidth == 2)
      {
        *&v212 = 0x200000003;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v118, &v212);
      }

      else if (AxisToSwapWidth)
      {
        if (AxisToSwapWidth != 1)
        {
          ZinAssertImpl("Invalid axis\n");
        }

        *&v212 = 0x200000003;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v118, &v212);
        *&v212 = 0x100000002;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v118, &v212);
      }

      else
      {
        *&v212 = 0x200000003;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v118, &v212);
        *&v212 = 0x100000002;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v118, &v212);
        *&v212 = 1;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v118, &v212);
      }

      ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v195, &v118, a3);
      DimensionOrderHint::DimensionOrderHint(&v183, 2);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v195, &v183, 1);
      if (v183)
      {
        v184 = v183;
        operator delete(v183);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
      *v202 = v159;
      *&v202[16] = v160;
      v203 = v161;
      *&v202[24] = GetValueAtDimension<ZinTensorDimensions>(&v159, AxisToSwapWidth);
      *&v202[16] = v160.i64[1];
      if (AxisToSwapWidth == 2)
      {
        *&v202[8] = v160.i64[0];
      }

      else
      {
        *&v202[8] = v160.i64[0];
        v203 = *(&v159 + 1);
        if (AxisToSwapWidth != 1)
        {
          *v202 = v161;
        }
      }

      ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v133, v202);
      v166 = 0;
      v164 = 0;
      v165 = 0;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v164, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
      v167 = *(a5 + 24);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v207, &v133, &v164, 1);
      if (v164)
      {
        v165 = v164;
        operator delete(v164);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v207);
      v115 = 0;
      v116 = 0;
      v117 = 0;
      __p = 0x400000003;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v115, &__p);
      if (AxisToSwapWidth == 2)
      {
        __p = 0x300000002;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v115, &__p);
        __p = 0x200000004;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v115, &__p);
      }

      else
      {
        __p = 0x300000002;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v115, &__p);
        __p = 0x200000001;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v115, &__p);
        if (AxisToSwapWidth == 1)
        {
          __p = 0x100000004;
        }

        else
        {
          __p = 0x100000000;
          std::vector<DimensionMapping>::push_back[abi:ne200100](&v115, &__p);
          __p = 4;
        }

        std::vector<DimensionMapping>::push_back[abi:ne200100](&v115, &__p);
      }

      ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v173, &v115, a3);
      DimensionOrderHint::DimensionOrderHint(&v148, 2);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&__p, &v173, &v148, 1);
      if (v148)
      {
        v149 = v148;
        operator delete(v148);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &__p);
      if (v193 != v192)
      {
        ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v140, &v192, a3);
        DimensionOrderHint::DimensionOrderHint(&v129, 2);
        ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v152, &v140, &v129, 1);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v152);
        ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v152);
        v140 = &unk_1F1A33FB0;
        if (v144)
        {
          v145 = v144;
          operator delete(v144);
        }

        ZinIrUnitInfo::~ZinIrUnitInfo(&v140);
      }

      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&__p);
      v173.i64[0] = &unk_1F1A33FB0;
      if (v176)
      {
        v177 = v176;
        operator delete(v176);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v173);
      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v207);
      v133.i64[0] = &unk_1F1A34058;
      if (v138)
      {
        v139 = v138;
        operator delete(v138);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v133);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
      v195 = &unk_1F1A33FB0;
      if (v198)
      {
        v199 = v198;
        operator delete(v198);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v195);
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      v42 = 1;
    }

    if (v121[0])
    {
      v121[1] = v121[0];
      operator delete(v121[0]);
    }

    if (v192)
    {
      v193 = v192;
      operator delete(v192);
    }

    if (v204)
    {
      v205 = v204;
      operator delete(v204);
    }

    if (v122)
    {
      v123 = v122;
      operator delete(v122);
    }

    if (v180.i64[0])
    {
      v180.i64[1] = v180.i64[0];
      operator delete(v180.i64[0]);
    }

    if (v42)
    {
      return 1;
    }

    v59 = *a4;
    if (*(a2 + 2) != 1)
    {
      v63 = a1->i64[1];
      v64 = a1[2].i64[0] == 1;
      v65 = a1->i64[0] == 1 && v64;
      v66 = v63 == 1;
      if (v63 != 1)
      {
        v65 = 0;
      }

      v67 = a1[1].i64[0];
      if (v66)
      {
        v64 = 1;
      }

      v68 = v67 == 1;
      v69 = v67 == 1 && v65;
      v70 = v68 || v64;
      if (!v69 && v70)
      {
        DimensionOrderHint::GetOrder(&v122, a5);
        v71 = a1[1];
        v187 = *a1;
        v188 = v71;
        v189 = a1[2].i64[0];
        if (a1[1].i64[0] == 1)
        {
          v72 = (v123 - 4);
          do
          {
            v73 = v122;
            if (v72 == v122)
            {
              v86 = 0;
              goto LABEL_341;
            }

            v74 = *--v72;
          }

          while (GetValueAtDimension<ZinTensorDimensions>(a1, v74) <= 1);
          v75 = *v72;
          if (v75 == 5)
          {
            goto LABEL_277;
          }

          v169 = 0;
          __p = 0;
          v170 = 0;
          *&v212 = v75 | 0x300000000;
          std::vector<DimensionMapping>::push_back[abi:ne200100](&__p, &v212);
          LODWORD(v212) = 3;
          DWORD1(v212) = v75;
          std::vector<DimensionMapping>::push_back[abi:ne200100](&__p, &v212);
          ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v207, &__p, a3);
          DimensionOrderHint::DimensionOrderHint(&v180, 2);
          ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v207, &v180, 1);
          if (v180.i64[0])
          {
            v180.i64[1] = v180.i64[0];
            operator delete(v180.i64[0]);
          }

          std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
          v188.i64[0] = GetValueAtDimension<ZinTensorDimensions>(a1, v75);
          SetValueAtDimension<ZinTensorDimensions>(&v187, v75, a1[1].i64[0]);
          ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
          *&v207 = &unk_1F1A33FB0;
          if (v210)
          {
            v211 = v210;
            operator delete(v210);
          }

          ZinIrUnitInfo::~ZinIrUnitInfo(&v207);
          if (__p)
          {
            v169 = __p;
            operator delete(__p);
          }
        }

        if (*(&v187 + 1) == 1)
        {
LABEL_261:
          v205 = 0;
          v204 = 0;
          v206 = 0;
          *&v212 = 0x400000002;
          std::vector<DimensionMapping>::push_back[abi:ne200100](&v204, &v212);
          *&v212 = 0x200000004;
          std::vector<DimensionMapping>::push_back[abi:ne200100](&v204, &v212);
          v76 = *(&v187 + 1);
          *(&v187 + 1) = v188.i64[1];
          v188.i64[1] = v76;
          ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v173, &v204, a3);
          DimensionOrderHint::DimensionOrderHint(&v183, 2);
          ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v173, &v183, 1);
          if (v183)
          {
            v184 = v183;
            operator delete(v183);
          }

          std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
          v77 = *(&v187 + 1);
          v78 = v188.i64[1];
          if (*(&v187 + 1) == 1 && v188.i64[1] == 1)
          {
            v80 = *a6;
              ;
            }

            v86 = 0;
            a6[1] = v80;
          }

          else
          {
            v161 = 1;
            v160 = vdupq_n_s64(1uLL);
            v87 = *(a2 + 3);
            *&v159 = 1;
            *(&v159 + 1) = v87;
            v88 = v189;
            v110 = v187;
            v89 = v188.i64[0];
            v90 = *(v59 + 45);
            *v202 = *(v59 + 47);
            *&v202[8] = v90;
            v91 = *(v59 + 39);
            *&v202[16] = *(v59 + 41);
            *&v202[24] = v91;
            v203 = 1;
            v208 = 4;
            v207 = xmmword_1A75D482C;
            v194 = 0;
            v192 = 0;
            v193 = 0;
            std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v192, &v207, v209, 5uLL);
            v92 = v78 * v77 * v110 * v88 * v89 / v87;
            v93 = v193 - 8;
            while (1)
            {
              v86 = v93 == v192;
              if (v93 == v192)
              {
                break;
              }

              v94 = *(v93 - 1);
              v93 -= 4;
              ValueAt = GetValueAtDimension<ZinTensorDimensions>(v202, v94);
              LowestFactorGreaterThan = FindLowestFactorGreaterThan(v92, (v92 + ValueAt - 1) / ValueAt);
              v97 = SetValueAtDimension<ZinTensorDimensions>(&v159, *v93, v92 / LowestFactorGreaterThan);
              v92 = LowestFactorGreaterThan;
              if (v97)
              {
                v99 = *a6;
                  ;
                }

                a6[1] = v99;
                goto LABEL_334;
              }
            }

            ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v133, &v159);
            DimensionOrderHint::DimensionOrderHint(&v164, &v192);
            ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v207, &v133, &v164, 1);
            if (v164)
            {
              v165 = v164;
              operator delete(v164);
            }

            std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v207);
            v187 = v159;
            v188 = v160;
            v189 = v161;
            ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v140, &v204, a3);
            DimensionOrderHint::DimensionOrderHint(&v148, 2);
            ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&__p, &v140, &v148, 1);
            if (v148)
            {
              v149 = v148;
              operator delete(v148);
            }

            std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &__p);
            v109 = *(&v187 + 1);
            *(&v187 + 1) = v188.i64[1];
            v188.i64[1] = v109;
            if (!ZinTensorDimensionsEqual(&v187, a2))
            {
              ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v195, a2);
              DimensionOrderHint::DimensionOrderHint(&v129, a5);
              ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v152, &v195, &v129, 1);
              if (v129)
              {
                v130 = v129;
                operator delete(v129);
              }

              std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v152);
              ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v152);
              ZinIrReshapeUnitInfo::~ZinIrReshapeUnitInfo(&v195);
            }

            ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&__p);
            ZinIrTransposeUnitInfo::~ZinIrTransposeUnitInfo(&v140);
            ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v207);
            ZinIrReshapeUnitInfo::~ZinIrReshapeUnitInfo(&v133);
LABEL_334:
            if (v192)
            {
              v193 = v192;
              operator delete(v192);
            }
          }

          ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
          v173.i64[0] = &unk_1F1A33FB0;
          if (v176)
          {
            v177 = v176;
            operator delete(v176);
          }

          ZinIrUnitInfo::~ZinIrUnitInfo(&v173);
          if (v204)
          {
            v205 = v204;
            operator delete(v204);
          }
        }

        else
        {
          v83 = (v123 - 4);
          while (v83 != (v122 + 4))
          {
            v84 = *--v83;
            if (GetValueAtDimension<ZinTensorDimensions>(&v187, v84) == 1)
            {
              v85 = *v83;
              if (v85 == 5)
              {
                break;
              }

              v169 = 0;
              __p = 0;
              v170 = 0;
              *&v212 = v85 | 0x200000000;
              std::vector<DimensionMapping>::push_back[abi:ne200100](&__p, &v212);
              LODWORD(v212) = 2;
              DWORD1(v212) = v85;
              std::vector<DimensionMapping>::push_back[abi:ne200100](&__p, &v212);
              ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v207, &__p, a3);
              DimensionOrderHint::DimensionOrderHint(v126, 2);
              ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v207, v126, 1);
              if (v126[0])
              {
                v126[1] = v126[0];
                operator delete(v126[0]);
              }

              std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
              SetValueAtDimension<ZinTensorDimensions>(&v187, v85, *(&v187 + 1));
              *(&v187 + 1) = 1;
              ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
              ZinIrTransposeUnitInfo::~ZinIrTransposeUnitInfo(&v207);
              if (__p)
              {
                v169 = __p;
                operator delete(__p);
              }

              goto LABEL_261;
            }
          }

LABEL_277:
          v86 = 0;
        }

        v73 = v122;
LABEL_341:
        if (v73)
        {
          v123 = v73;
          operator delete(v73);
        }

        if (v86)
        {
          return 1;
        }

        v59 = *a4;
      }
    }

    v60 = 0;
    while (1)
    {
      v61 = *(v59 + v60 + 1784);
      if (!(a1[1].i64[1] % v61) && !(*(a2 + 3) % v61))
      {
        break;
      }

      v60 -= 8;
      if (v60 == -32)
      {
        goto LABEL_233;
      }
    }

    v81 = a1[2].i64[0] * a1->i64[0] * a1->i64[1] * a1[1].i64[0];
    v82 = *(v59 + 47);
    if (v81 > v82)
    {
      if (!v82)
      {
LABEL_233:
        v6 = a6;
        v8 = a4;
        if (ZinIrReshapeUnit::HasDimWithValueOne(a1, v41))
        {
          v6 = a6;
          v8 = a4;
          if (ZinIrReshapeUnit::HasDimWithValueOne(a2, v62))
          {
            DecomposeGeneralReshape(a1, a2, a3, a5, a6);
            v6 = a6;
            v8 = a4;
          }
        }

        goto LABEL_95;
      }

      while (v81 % v82)
      {
        if (--v82 == 1)
        {
          goto LABEL_233;
        }
      }

      v81 = v82;
    }

    v192 = 0;
    if (ZinTensorFormatGetSizeInBytes(a3, &v192))
    {
      ZinAssertImpl("Error in getting tensor format size in bytes");
    }

    v100 = a1[2].i64[0] * a1->i64[0] * a1->i64[1] * a1[1].i64[0];
    if (*(v59 + 55) >= (v100 * v192))
    {
      v101 = 1;
    }

    else
    {
      v101 = v61;
    }

    v102 = v100 / v81;
    if (v100 % v81)
    {
      ZinAssertImpl("Optimal batch should be divisible by definition of reshape");
    }

    *&v202[8] = vdupq_n_s64(1uLL);
    v103 = a1[1].i64[1];
    *v202 = v81;
    *&v202[24] = v103;
    v203 = v102;
    ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v195, v202);
    v185 = 0;
    v183 = 0;
    v184 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v183, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
    v186 = *(a5 + 24);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v195, &v183, 1);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
    v205 = 0;
    v204 = 0;
    v206 = 0;
    *&v207 = 0x400000002;
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v204, &v207);
    *&v207 = 0x200000004;
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v204, &v207);
    ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v187, &v204, a3);
    DimensionOrderHint::DimensionOrderHint(&v164, 2);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v207, &v187, &v164, v101);
    if (v164)
    {
      v165 = v164;
      operator delete(v164);
    }

    std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v207);
    v104 = a1[2].i64[0] * a1->i64[0] * a1->i64[1] * a1[1].i64[0] * a1[1].i64[1];
    v105 = *(a2 + 3);
    v106 = *(v59 + 47);
    v107 = v104 / v105;
    if (v104 / v105 > v106)
    {
      if (!v106)
      {
LABEL_300:
        if (!(v104 % v105))
        {
          ZinAssertImpl("Reshape lowering could not find optimal batch value", v110);
        }

        goto LABEL_351;
      }

      while (v104 / v105 % v106)
      {
        if (--v106 == 1)
        {
          goto LABEL_300;
        }
      }

      v107 = v106;
    }

    if (!(v104 % v105))
    {
      if (!v107)
      {
        ZinAssertImpl("optimal batch cannot be zero to avoid dividing by zero", v110);
      }

      v180.i64[0] = v107;
      v180.i64[1] = v105;
      v181 = vdupq_n_s64(1uLL);
      v182 = v104 / (v107 * v105);
      ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v173, &v180);
      v150 = 0;
      v148 = 0;
      v149 = 0;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v148, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
      v151 = *(a5 + 24);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&__p, &v173, &v148, v101);
      if (v148)
      {
        v149 = v148;
        operator delete(v148);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &__p);
      ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v159, &v204, a3);
      DimensionOrderHint::DimensionOrderHint(&v129, 2);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v152, &v159, &v129, 1);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v152);
      v108 = a2[1];
      *v126 = *a2;
      v127 = v108;
      v128 = *(a2 + 4);
      ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v140, v126);
      v123 = 0;
      v124 = 0;
      v122 = 0;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v122, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
      v125 = *(a5 + 24);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v133, &v140, &v122, 1);
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, v133.i32);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v133);
      v140 = &unk_1F1A34058;
      if (v146)
      {
        v147 = v146;
        operator delete(v146);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v140);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v152);
      *&v159 = &unk_1F1A33FB0;
      if (v162)
      {
        v163 = v162;
        operator delete(v162);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v159);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&__p);
      v173.i64[0] = &unk_1F1A34058;
      if (v178)
      {
        v179 = v178;
        operator delete(v178);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v173);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v207);
      *&v187 = &unk_1F1A33FB0;
      if (v190)
      {
        v191 = v190;
        operator delete(v190);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v187);
      if (v204)
      {
        v205 = v204;
        operator delete(v204);
      }

      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
      v195 = &unk_1F1A34058;
      if (v200)
      {
        v201 = v200;
        operator delete(v200);
      }

      p_p = &v195;
LABEL_154:
      ZinIrUnitInfo::~ZinIrUnitInfo(p_p);
      return 1;
    }

LABEL_351:
    ZinAssertImpl("should be divisible by definition of reshape", v110);
  }

  v31 = *(v30 + 344);
  v32 = *(v30 + 328);
  GetAllIntegerFactors(a1->i32[2], &v164);
  v33 = v164;
  v8 = a4;
  if (v164 == v165)
  {
LABEL_65:
    ZinAssertImpl("Failed in distributing the channel to depath and height dimensions", v110);
  }

  v34 = a1[2].i64[0];
  while (1)
  {
    v35 = *v33;
    v36 = v34 * v35;
    if (v34 * v35 <= v31)
    {
      v37 = a1->i64[1] / v35 * a1[1].i64[0];
      if (v37 <= v32)
      {
        break;
      }
    }

    if (++v33 == v165)
    {
      goto LABEL_65;
    }
  }

  *&v187 = a1->i64[0];
  *(&v187 + 1) = 1;
  v43 = a1[1].i64[1];
  v188.i64[0] = v37;
  v188.i64[1] = v43;
  v189 = v36;
  ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v133, &v187);
  memset(v202, 0, 24);
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v202, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  v6 = a6;
  *&v202[24] = *(a5 + 24);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v133, v202, 1);
  if (*v202)
  {
    *&v202[8] = *v202;
    operator delete(*v202);
  }

  std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
  v149 = 0;
  v148 = 0;
  v150 = 0;
  *&v207 = 0x400000002;
  std::vector<DimensionMapping>::push_back[abi:ne200100](&v148, &v207);
  *&v207 = 0x200000004;
  std::vector<DimensionMapping>::push_back[abi:ne200100](&v148, &v207);
  ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v173, &v148, a3);
  DimensionOrderHint::DimensionOrderHint(&v180, 2);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v207, &v173, &v180, 1);
  if (v180.i64[0])
  {
    v180.i64[1] = v180.i64[0];
    operator delete(v180.i64[0]);
  }

  std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v207);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  __p = 0x300000002;
  std::vector<DimensionMapping>::push_back[abi:ne200100](&v129, &__p);
  __p = 0x200000003;
  std::vector<DimensionMapping>::push_back[abi:ne200100](&v129, &__p);
  ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v140, &v129, a3);
  DimensionOrderHint::DimensionOrderHint(v126, 2);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&__p, &v140, v126, 1);
  if (v126[0])
  {
    v126[1] = v126[0];
    operator delete(v126[0]);
  }

  std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &__p);
  v44 = a2[1];
  v159 = *a2;
  v160 = v44;
  v161 = *(a2 + 4);
  ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v195, &v159);
  v185 = 0;
  v183 = 0;
  v184 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v183, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  v186 = *(a5 + 24);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v152, &v195, &v183, 1);
  if (v183)
  {
    v184 = v183;
    operator delete(v183);
  }

  std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v152);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v152);
  v195 = &unk_1F1A34058;
  if (v200)
  {
    v201 = v200;
    operator delete(v200);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v195);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&__p);
  v140 = &unk_1F1A33FB0;
  if (v144)
  {
    v145 = v144;
    operator delete(v144);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v140);
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v207);
  v173.i64[0] = &unk_1F1A33FB0;
  if (v176)
  {
    v177 = v176;
    operator delete(v176);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v173);
  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
  v133.i64[0] = &unk_1F1A34058;
  if (v138)
  {
    v139 = v138;
    operator delete(v138);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v133);
  v13 = v164;
  if (v164)
  {
    v165 = v164;
    goto LABEL_94;
  }

LABEL_95:
  v46 = *v6;
  v45 = v6[1];
  if (v45 != *v6)
  {
    if ((ZinReshapeLayerUtils::IsValidDecomposition(a1->i8, a3, v8, v6) & 1) == 0)
    {
      v6 = a6;
      v46 = *a6;
      v45 = a6[1];
      v8 = a4;
      goto LABEL_98;
    }

    return 1;
  }

LABEL_98:
  while (v45 != v46)
  {
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc((v45 - 192));
  }

  v6[1] = v46;
  v47 = *v8;
  v49 = a1[1].i64[1];
  v48 = a1[2].i64[0];
  *&v212 = a1->i64[0];
  *(&v212 + 1) = v48;
  v213 = *(a1 + 8);
  v214 = v49;
  v123 = 0;
  v124 = 0;
  v122 = 0;
  std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v122, &v212, v215, 5uLL);
  v51 = *(a2 + 3);
  v50 = *(a2 + 4);
  *&v212 = *a2;
  *(&v212 + 1) = v50;
  v213 = *(a2 + 8);
  v214 = v51;
  v206 = 0;
  v204 = 0;
  v205 = 0;
  std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v204, &v212, v215, 5uLL);
  *v202 = vdupq_n_s64(1uLL);
  *&v202[16] = *v202;
  v203 = 1;
  if (DistributeADimToNDC(a1[2].i64[0] * a1->i64[0] * a1->i64[1] * a1[1].i64[0], v47, v202))
  {
    if (*&v202[16] != 1)
    {
      ZinAssertImpl("H dimension must be 1, because this will be transposed with W");
    }

    *&v202[24] = a1[1].i64[1];
    ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v195, v202);
    v126[1] = 0;
    *&v127 = 0;
    v126[0] = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v126, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
    DWORD2(v127) = *(a5 + 24);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v212, &v195, v126, 1);
    if (v126[0])
    {
      v126[1] = v126[0];
      operator delete(v126[0]);
    }

    std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v212);
    v193 = 0;
    v192 = 0;
    v194 = 0;
    *&v207 = 0x300000004;
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v192, &v207);
    *&v207 = 0x400000003;
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v192, &v207);
    ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v187, &v192, a3);
    DimensionOrderHint::DimensionOrderHint(&v183, 2);
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v207, &v187, &v183, 1);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v207);
    v52 = a1[2].i64[0] * a1->i64[0] * a1->i64[1] * a1[1].i64[0] * a1[1].i64[1] / *(a2 + 3);
    v180 = vdupq_n_s64(1uLL);
    v181 = v180;
    v182 = 1;
    v53 = DistributeADimToNDC(v52, v47, &v180);
    if (v53)
    {
      v181.i64[0] = *(a2 + 3);
      ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v173, &v180);
      v166 = 0;
      v164 = 0;
      v165 = 0;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v164, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
      v167 = *(a5 + 24);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&__p, &v173, &v164, 1);
      if (v164)
      {
        v165 = v164;
        operator delete(v164);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &__p);
      ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v159, &v192, a3);
      DimensionOrderHint::DimensionOrderHint(&v148, 2);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v152, &v187, &v148, 1);
      if (v148)
      {
        v149 = v148;
        operator delete(v148);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, &v152);
      ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v140, a2);
      v130 = 0;
      v131 = 0;
      v129 = 0;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v129, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
      v132 = *(a5 + 24);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v133, &v140, &v129, 1);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a6, v133.i32);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v133);
      v140 = &unk_1F1A34058;
      if (v146)
      {
        v147 = v146;
        operator delete(v146);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v140);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v152);
      *&v159 = &unk_1F1A33FB0;
      if (v162)
      {
        v163 = v162;
        operator delete(v162);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v159);
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&__p);
      v173.i64[0] = &unk_1F1A34058;
      if (v178)
      {
        v179 = v178;
        operator delete(v178);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v173);
    }

    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v207);
    *&v187 = &unk_1F1A33FB0;
    if (v190)
    {
      v191 = v190;
      operator delete(v190);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v187);
    if (v192)
    {
      v193 = v192;
      operator delete(v192);
    }

    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v212);
    v195 = &unk_1F1A34058;
    if (v200)
    {
      v201 = v200;
      operator delete(v200);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v195);
  }

  else
  {
    v53 = 0;
  }

  if (v204)
  {
    v205 = v204;
    operator delete(v204);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  return v53;
}

void sub_1A699B8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&STACK[0x250]);
  ZinIrReshapeUnitInfo::~ZinIrReshapeUnitInfo(&STACK[0x5C0]);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&STACK[0x3A0]);
  ZinIrTransposeUnitInfo::~ZinIrTransposeUnitInfo(&a61);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&STACK[0x690]);
  ZinIrReshapeUnitInfo::~ZinIrReshapeUnitInfo(&a37);
  v62 = STACK[0x5A8];
  if (STACK[0x5A8])
  {
    STACK[0x5B0] = v62;
    operator delete(v62);
  }

  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&STACK[0x750]);
  ZinIrTransposeUnitInfo::~ZinIrTransposeUnitInfo(&STACK[0x460]);
  v63 = STACK[0x678];
  if (STACK[0x678])
  {
    STACK[0x680] = v63;
    operator delete(v63);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void DecomposeGeneralReshape(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v66[19] = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v62 = *a1;
  v63 = v10;
  v64 = *(a1 + 8);
  v65 = v11;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v59, &v62, v66, 5uLL);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v62 = *a2;
  v63 = v12;
  v64 = *(a2 + 8);
  v65 = v13;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v56, &v62, v66, 5uLL);
  v54 = 0;
  v53 = 0;
  v55 = 0;
  if (IsVector(a1))
  {
    VectorDimension = GetVectorDimension(a1);
    v62 = VectorDimension | 0x300000000;
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v53, &v62);
    LODWORD(v62) = 3;
    HIDWORD(v62) = VectorDimension;
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v53, &v62);
  }

  else
  {
    if (v60 == v59)
    {
LABEL_8:
      LODWORD(v15) = 0;
    }

    else
    {
      v15 = 0;
      v16 = (v60 - v59) >> 3;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      while (*(v59 + v15) != 1)
      {
        if (v16 == ++v15)
        {
          goto LABEL_8;
        }
      }
    }

    v62 = v15 | 0x400000000;
    std::vector<DimensionMapping>::push_back[abi:ne200100](&v53, &v62);
    if (v15 <= 3)
    {
      do
      {
        LODWORD(v62) = v15 + 1;
        HIDWORD(v62) = v15;
        std::vector<DimensionMapping>::push_back[abi:ne200100](&v53, &v62);
        LODWORD(v15) = v15 + 1;
      }

      while (v15 != 4);
    }
  }

  ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(v50, &v53, a3);
  DimensionOrderHint::DimensionOrderHint(__p, 2);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(&v62, v50, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a5, &v62);
  v17 = (v57 - v56) >> 3;
  if (v57 == v56)
  {
LABEL_19:
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = 0;
    if (v17 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v57 - v56) >> 3;
    }

    while (*(v56 + v18) != 1)
    {
      if (v19 == ++v18)
      {
        goto LABEL_19;
      }
    }
  }

  v47 = 0;
  v46 = 0;
  v48 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v46, v56, v57, v17);
  v20 = v46;
  if (v18 <= 3)
  {
    v21 = v46 + 8 * v18 + 8;
    v22 = v18 - 4;
    do
    {
      *(v21 - 1) = *v21;
      ++v21;
    }

    while (!__CFADD__(v22++, 1));
  }

  v20[4] = 1;
  v24 = *v20;
  v43 = *(v20 + 1);
  v42 = v24;
  v44 = 1;
  v45 = v20[1];
  ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(v39, &v42);
  v35 = 0;
  v36 = 0;
  v34 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v34, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  v37 = *(a4 + 24);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(v38, v39, &v34, 1);
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a5, v38);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  memset(v30, 0, sizeof(v30));
  if (!ZinReshapeLayerUtils::IsConvertibleToTranspose(&v42, a2, a4, v30))
  {
    ZinAssertImpl("the decomposed transpose is not valid.");
  }

  ZinReshapeLayerUtils::ConvertTransposeMappingToDims(v30, &v31);
  ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(v27, &v31, a3);
  DimensionOrderHint::DimensionOrderHint(v25, 2);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(v26, v27, v25, 1);
  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](a5, v26);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(v26);
  v27[0] = &unk_1F1A33FB0;
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v27);
  v26[0] = v30;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](v26);
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(v38);
  v39[0] = &unk_1F1A34058;
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v39);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(&v62);
  v50[0] = &unk_1F1A33FB0;
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v50);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }
}

void sub_1A699C8E0(_Unwind_Exception *a1)
{
  v2 = STACK[0x3B0];
  if (STACK[0x3B0])
  {
    STACK[0x3B8] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x3C8];
  if (STACK[0x3C8])
  {
    STACK[0x3D0] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x3E0];
  if (STACK[0x3E0])
  {
    STACK[0x3E8] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void ZinReshapeLayerUtils::GetReshapedDimensions(const void **__return_ptr a1@<X8>, ZinReshapeLayerUtils *this@<X0>, const ZinTensorDimensions *a3@<X1>, const ZinTensorDimensions *a4@<X2>, const DimensionOrderHint *a5@<X3>)
{
  v5 = a5;
  if (DimensionOrderHint::IsSet(a4))
  {
    DimensionOrderHint::GetOrder(&v26, a4);
  }

  else
  {
    if (v5)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    DimensionOrderHint::DimensionOrderHint(&__p, v10);
    DimensionOrderHint::GetOrder(&v26, &__p);
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  __p = 0;
  v24 = 0;
  v25 = 0;
  v11 = v26;
  v12 = v27;
  p_p = &__p;
  if (v26 != v27)
  {
    do
    {
      ValueAt = GetValueAtDimension<ZinTensorDimensions>(this, *v11);
      std::back_insert_iterator<std::vector<long>>::operator=[abi:ne200100](&p_p, &ValueAt);
      ++v11;
    }

    while (v11 != v12);
    v11 = v26;
    v12 = v27;
  }

  p_p = 0;
  v21 = 0;
  v22 = 0;
  ValueAt = &p_p;
  do
  {
    v28 = GetValueAtDimension<ZinTensorDimensions>(a3, *v11);
    std::back_insert_iterator<std::vector<long>>::operator=[abi:ne200100](&ValueAt, &v28);
    ++v11;
  }

  while (v11 != v12);
  v13 = *__p;
  v14 = *p_p;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v13 != v14)
  {
    std::vector<unsigned int>::push_back[abi:ne200100](a1, v26);
  }

  v15 = 4;
  v16 = 8;
  do
  {
    v17 = *(__p + v16);
    v13 *= v17;
    v18 = *(p_p + v16);
    v14 *= v18;
    if (v13 != v14 || v17 != v18)
    {
      std::vector<unsigned int>::push_back[abi:ne200100](a1, (v26 + v15));
    }

    v15 += 4;
    v16 += 8;
  }

  while (v15 != 20);
  if (p_p)
  {
    v21 = p_p;
    operator delete(p_p);
  }

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
}

void sub_1A699CBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ZinReshapeLayerUtils::GetCompatibleDimensionOrders(ZinReshapeLayerUtils *a1@<X0>, const ZinTensorDimensions *a2@<X1>, const ZinTensorDimensions *a3@<X2>, const DimensionOrderHint *a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  ZinReshapeLayerUtils::GetReshapedDimensions(&v104, a1, a2, a3, 0);
  v101 = 0u;
  v102 = 0u;
  v103 = 1065353216;
  LODWORD(v100[0]) = 0;
  __p[0] = v100;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, v100, &std::piecewise_construct, __p) + 20) = 0;
  LODWORD(v100[0]) = 1;
  __p[0] = v100;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, v100, &std::piecewise_construct, __p) + 20) = 0;
  LODWORD(v100[0]) = 2;
  __p[0] = v100;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, v100, &std::piecewise_construct, __p) + 20) = 0;
  LODWORD(v100[0]) = 3;
  __p[0] = v100;
  v81 = a5;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, v100, &std::piecewise_construct, __p) + 20) = 0;
  LODWORD(v100[0]) = 4;
  __p[0] = v100;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, v100, &std::piecewise_construct, __p) + 20) = 0;
  v10 = v104;
  for (i = v105; v10 != i; ++v10)
  {
    LODWORD(v100[0]) = *v10;
    ValueAt = GetValueAtDimension<ZinTensorDimensions>(a1, v100[0]);
    v13 = GetValueAtDimension<ZinTensorDimensions>(a2, v100[0]);
    __p[0] = v100;
    v14 = std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, v100, &std::piecewise_construct, __p);
    v16 = ValueAt == 1 && v13 == 1;
    *(v14 + 20) = v16;
  }

  v82 = a3;
  v83 = a2;
  v84 = a1;
  memset(v100, 0, sizeof(v100));
  DimensionOrderHint::GetAllSupportedDimensionOrders(0, &v98);
  v18 = v98;
  v17 = v99;
  while (v18 != v17)
  {
    v95 = 0;
    v96 = 0;
    v97 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v95, *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 2);
    for (j = v102; j; j = *j)
    {
      v20 = j[2];
      if ((v20 & 0x100000000) != 0)
      {
        v22 = v95;
        v21 = v96;
        if (v95 != v96)
        {
          while (*v22 != v20)
          {
            if (++v22 == v96)
            {
              goto LABEL_24;
            }
          }

          if (v22 != v96)
          {
            for (k = v22 + 1; k != v21; ++k)
            {
              if (*k != v20)
              {
                *v22++ = *k;
              }
            }
          }
        }

        if (v22 != v21)
        {
          v96 = v22;
        }

LABEL_24:
        v25 = v104;
        v24 = v105;
        if (v104 != v105)
        {
          while (*v25 != v20)
          {
            if (++v25 == v105)
            {
              goto LABEL_36;
            }
          }

          if (v25 != v105)
          {
            for (m = v25 + 1; m != v24; ++m)
            {
              if (*m != v20)
              {
                *v25++ = *m;
              }
            }
          }
        }

        if (v25 != v24)
        {
          v105 = v25;
        }
      }

LABEL_36:
      ;
    }

    memset(&v94, 0, sizeof(v94));
    memset(&v93, 0, sizeof(v93));
    v27 = v104;
    v28 = v105;
    while (v27 != v28)
    {
      DimensionToString(*v27, __p);
      if (v92 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      std::string::push_back(&v93, *v29);
      if (SHIBYTE(v92) < 0)
      {
        operator delete(__p[0]);
      }

      ++v27;
    }

    v30 = v95;
    v31 = v96;
    while (v30 != v31)
    {
      DimensionToString(*v30, __p);
      if (v92 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      std::string::push_back(&v94, *v32);
      if (SHIBYTE(v92) < 0)
      {
        operator delete(__p[0]);
      }

      ++v30;
    }

    size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v94;
    }

    else
    {
      v34 = v94.__r_.__value_.__r.__words[0];
    }

    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v94.__r_.__value_.__l.__size_;
    }

    v35 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v93;
    }

    else
    {
      v36 = v93.__r_.__value_.__r.__words[0];
    }

    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = v93.__r_.__value_.__l.__size_;
    }

    if (v37)
    {
      if (size < v37)
      {
        goto LABEL_78;
      }

      v38 = v34 + size;
      v39 = v36->__r_.__value_.__s.__data_[0];
      v40 = v34;
      while (1)
      {
        v41 = size - v37;
        if (v41 == -1 || (v42 = memchr(v40, v39, v41 + 1)) == 0)
        {
LABEL_71:
          if ((v35 & 0x80) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }

        v43 = v42;
        if (!memcmp(v42, v36, v37))
        {
          break;
        }

        v40 = (v43 + 1);
        size = v38 - (v43 + 1);
        if (size < v37)
        {
          goto LABEL_71;
        }
      }

      if (v43 == v38)
      {
        if ((v35 & 0x80) == 0)
        {
          goto LABEL_80;
        }

LABEL_79:
        operator delete(v93.__r_.__value_.__l.__data_);
        goto LABEL_80;
      }

      if (v43 - v34 == -1)
      {
        goto LABEL_78;
      }
    }

    DimensionOrderHint::DimensionOrderHint(__p, v18);
    std::vector<DimensionOrderHint>::push_back[abi:ne200100](v100, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v35 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
LABEL_78:
    if (v35 < 0)
    {
      goto LABEL_79;
    }

LABEL_80:
    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    v18 += 24;
  }

  __p[0] = &v98;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](__p);
  DimensionOrderHint::GetCompatibleDimOrders(&v98, v82, v84);
  DimensionOrderHint::GetCompatibleDimOrders(&v95, v82, v83);
  Intersection(&v98, &v95, &v94);
  v44 = *(v83 + 3);
  v45 = *(v84 + 3);
  LODWORD(v93.__r_.__value_.__l.__data_) = 4;
  __p[0] = &v93;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, &v93, &std::piecewise_construct, __p) + 20) = v44 == v45;
  v46 = *(v83 + 2);
  v47 = *(v84 + 2);
  LODWORD(v93.__r_.__value_.__l.__data_) = 3;
  __p[0] = &v93;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, &v93, &std::piecewise_construct, __p) + 20) = v46 == v47;
  v48 = *(v83 + 1);
  v49 = *(v84 + 1);
  LODWORD(v93.__r_.__value_.__l.__data_) = 2;
  __p[0] = &v93;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, &v93, &std::piecewise_construct, __p) + 20) = v48 == v49;
  v50 = *(v83 + 4);
  v51 = *(v84 + 4);
  LODWORD(v93.__r_.__value_.__l.__data_) = 1;
  __p[0] = &v93;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, &v93, &std::piecewise_construct, __p) + 20) = v50 == v51;
  v52 = *v83;
  v53 = *v84;
  LODWORD(v93.__r_.__value_.__l.__data_) = 0;
  __p[0] = &v93;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v101, &v93, &std::piecewise_construct, __p) + 20) = v52 == v53;
  memset(&v93, 0, sizeof(v93));
  v54 = v104;
  for (n = v105; v54 != n; ++v54)
  {
    DimensionToString(*v54, __p);
    if (v92 >= 0)
    {
      v56 = __p;
    }

    else
    {
      v56 = __p[0];
    }

    std::string::push_back(&v93, *v56);
    if (SHIBYTE(v92) < 0)
    {
      operator delete(__p[0]);
    }
  }

  memset(v90, 0, sizeof(v90));
  v57 = v94.__r_.__value_.__l.__size_;
  for (ii = v94.__r_.__value_.__r.__words[0]; ii != v57; ii = (ii + 32))
  {
    DimensionOrderHint::GetOrder(&v88, ii);
    for (jj = v102; jj; jj = *jj)
    {
      v60 = jj[2];
      if ((v60 & 0x100000000) != 0)
      {
        v62 = v88;
        v61 = v89;
        if (v88 != v89)
        {
          while (*v62 != v60)
          {
            if (++v62 == v89)
            {
              goto LABEL_110;
            }
          }

          if (v62 != v89)
          {
            for (kk = v62 + 1; kk != v61; ++kk)
            {
              if (*kk != v60)
              {
                *v62++ = *kk;
              }
            }
          }
        }

        if (v62 != v61)
        {
          v89 = v62;
        }
      }

LABEL_110:
      ;
    }

    memset(&v87, 0, sizeof(v87));
    v64 = v88;
    v65 = v89;
    if (v88 == v89)
    {
      v68 = 0;
      v69 = 0;
      v67 = 0;
    }

    else
    {
      do
      {
        DimensionToString(*v64, __p);
        if (v92 >= 0)
        {
          v66 = __p;
        }

        else
        {
          v66 = __p[0];
        }

        std::string::push_back(&v87, *v66);
        if (SHIBYTE(v92) < 0)
        {
          operator delete(__p[0]);
        }

        ++v64;
      }

      while (v64 != v65);
      v67 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      v68 = v87.__r_.__value_.__l.__size_;
      v69 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v67 & 0x80u) == 0)
    {
      v70 = &v87;
    }

    else
    {
      v70 = v69;
    }

    if ((v67 & 0x80u) == 0)
    {
      v68 = v67;
    }

    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v93;
    }

    else
    {
      v71 = v93.__r_.__value_.__r.__words[0];
    }

    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v72 = v93.__r_.__value_.__l.__size_;
    }

    if (v72)
    {
      if (v68 >= v72)
      {
        v73 = v70 + v68;
        v74 = v71->__r_.__value_.__s.__data_[0];
        v75 = v70;
        do
        {
          v76 = v68 - v72;
          if (v76 == -1)
          {
            break;
          }

          v77 = memchr(v75, v74, v76 + 1);
          if (!v77)
          {
            break;
          }

          v78 = v77;
          if (!memcmp(v77, v71, v72))
          {
            if (v78 != v73)
            {
              if (v78 - v70 == -1)
              {
                goto LABEL_142;
              }

              goto LABEL_141;
            }

            break;
          }

          v75 = (v78 + 1);
          v68 = v73 - (v78 + 1);
        }

        while (v68 >= v72);
        if ((v67 & 0x80) == 0)
        {
          goto LABEL_144;
        }

LABEL_143:
        operator delete(v87.__r_.__value_.__l.__data_);
        goto LABEL_144;
      }
    }

    else
    {
LABEL_141:
      std::vector<DimensionOrderHint>::push_back[abi:ne200100](v90, ii);
      LOBYTE(v67) = *(&v87.__r_.__value_.__s + 23);
    }

LABEL_142:
    if ((v67 & 0x80) != 0)
    {
      goto LABEL_143;
    }

LABEL_144:
    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }
  }

  Union(v90, __p, v100);
  if ((v81 & 1) == 0 || a4 == 1)
  {
    *a6 = *__p;
    a6[2] = v92;
    __p[1] = 0;
    v92 = 0;
    __p[0] = 0;
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v80 = __p[0];
    v79 = __p[1];
    while (v80 != v79)
    {
      if (ZinReshapeLayerUtils::CheckInterleaveCompatibility(v84, v83, v80, a4))
      {
        std::vector<DimensionOrderHint>::push_back[abi:ne200100](a6, v80);
      }

      v80 = (v80 + 32);
    }
  }

  v88 = __p;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](&v88);
  __p[0] = v90;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  __p[0] = &v94;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v95;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v98;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v100;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v101);
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }
}

void sub_1A699D670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void ***__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void **a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49)
{
  a22 = &a25;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  __p = &a42;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](&__p);
  a42 = &a48;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](&a42);
  a48 = (v49 - 208);
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](&a48);
  a48 = (v49 - 184);
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](&a48);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v49 - 160);
  v51 = *(v49 - 120);
  if (v51)
  {
    *(v49 - 112) = v51;
    operator delete(v51);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinReshapeLayerUtils::CheckInterleaveCompatibility(ZinReshapeLayerUtils *this, const ZinTensorDimensions *a2, const ZinTensorDimensions *a3, unint64_t a4)
{
  if (a4 == 1)
  {
    return 1;
  }

  if (*(a2 + 1) % a4 || *(this + 1) % a4)
  {
    return 0;
  }

  if (!DimensionOrderHint::IsSet(a3))
  {
    return 1;
  }

  DimensionOrderHint::GetOrder(&v14, a3);
  v9 = v14;
  v10 = v14;
  if (v14 != v15)
  {
    v10 = v14;
    while (*v10 != 2)
    {
      if (++v10 == v15)
      {
        v10 = v15;
        break;
      }
    }
  }

  v11 = v10 + 1;
  if (v15 == v10 + 1)
  {
    v13 = 1;
    v12 = 1;
  }

  else
  {
    v12 = 1;
    v13 = 1;
    do
    {
      v12 *= GetValueAtDimension<ZinTensorDimensions>(this, *v11);
      v13 *= GetValueAtDimension<ZinTensorDimensions>(a2, *v11++);
    }

    while (v11 != v15);
    v9 = v14;
  }

  v4 = v12 == v13;
  if (v9)
  {
    v15 = v9;
    operator delete(v9);
  }

  return v4;
}

void sub_1A699D990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinReshapeLayerUtils::ReplaceableWithAlias(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a1 != *a3 || a1[4] != a3[4] || a1[2] != a3[2])
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a1[3];
  v8 = a3[1];
  v9 = a3[3];
  if (v7 * v6 != v9 * v8)
  {
    ZinAssertImpl("ReplaceWithAlias: Incompatible input C%zdW%zd / output C%zdW%zd dimensions.", v6, v7, a3[1], v9);
  }

  if (v6 == v8)
  {
    return 0;
  }

  if (v6 % v8)
  {
    v10 = v8 / v6;
    if (!(v8 % v6))
    {
      {
        v18 = a5;
        v19 = a6;
        v17 = a4;
        a4 = v17;
        a5 = v18;
        a6 = v19;
        if (v16)
        {
          v23 = xmmword_1A75D4818;
          v24 = 2;
          v21 = 0;
          v22 = 0;
          __p = 0;
          std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&__p, &v23, &v25, 5uLL);
          DimensionOrderHint::DimensionOrderHint(&ZinReshapeLayerUtils::ReplaceableWithAlias(ZinTensorDimensions const&,std::optional<unsigned long> const&,ZinTensorDimensions const&,DimensionOrderHint const&,ZinIrHalParameters const&,unsigned long *)::NDHWC, &__p);
          if (__p)
          {
            v21 = __p;
            operator delete(__p);
          }

          __cxa_atexit(DimensionOrderHint::~DimensionOrderHint, &ZinReshapeLayerUtils::ReplaceableWithAlias(ZinTensorDimensions const&,std::optional<unsigned long> const&,ZinTensorDimensions const&,DimensionOrderHint const&,ZinIrHalParameters const&,unsigned long *)::NDHWC, &dword_1A617D000);
          a5 = v18;
          a6 = v19;
          a4 = v17;
        }
      }

      v11 = ZinReshapeLayerUtils::ReplaceableWithAlias(ZinTensorDimensions const&,std::optional<unsigned long> const&,ZinTensorDimensions const&,DimensionOrderHint const&,ZinIrHalParameters const&,unsigned long *)::NDHWC;
      v12 = *a4;
      if (*algn_1EB291088 - ZinReshapeLayerUtils::ReplaceableWithAlias(ZinTensorDimensions const&,std::optional<unsigned long> const&,ZinTensorDimensions const&,DimensionOrderHint const&,ZinIrHalParameters const&,unsigned long *)::NDHWC == *(a4 + 8) - *a4)
      {
        while (v11 != *algn_1EB291088)
        {
          if (*v11 != *v12)
          {
            return 0;
          }

          ++v11;
          ++v12;
        }

        v15 = 0;
        while (1)
        {
          v14 = *(a5 + 1752 + v15);
          if (v14 >= v10)
          {
            break;
          }

          result = 0;
          v15 += 8;
          if (v15 == 40)
          {
            return result;
          }
        }

        result = v15 != 40;
        if (a6)
        {
          goto LABEL_19;
        }

        return result;
      }
    }

    return 0;
  }

  result = 0;
  if (*(a2 + 8) == 1 && *a2 == v6 / v8)
  {
    result = 1;
    if (a6)
    {
      v14 = 1;
LABEL_19:
      *a6 = v14;
      return 1;
    }
  }

  return result;
}

void sub_1A699DBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinReshapeLayerUtils::ReplaceReshapeWithTransposes(ZinIrOpLayerGraph *a1, std::string *this, uint64_t a3)
{
  v29[0] = *MEMORY[0x1E69E9840];
  if (*(this[3].__r_.__value_.__r.__words[2] + 8) == 36)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    InputTensor = ZinIrOpLayer::GetInputTensor(this, 0);
    v7 = (*(this->__r_.__value_.__r.__words[0] + 40))(this, 0);
    CollectiveCommunicationInfo = ZinCollectiveCommunicationLayer::GetCollectiveCommunicationInfo(this);
    if (ZinReshapeLayerUtils::IsConvertibleToTranspose((InputTensor + 64), (v7 + 64), (CollectiveCommunicationInfo + 16), &v24))
    {
      v9 = **ZinIrContext::GetMemoryPools(this);
      ZinObjectNameFactory::ZinObjectNameFactory(v22, this + 2);
      if (v24 != v25)
      {
        memset(v21, 0, sizeof(v21));
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v21, *v24, *(v24 + 8), (*(v24 + 8) - *v24) >> 3);
        size = this[1].__r_.__value_.__l.__size_;
        (*(*v9 + 88))(v28, v9, 0);
        memset(__p, 0, 24);
        std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(__p, v28, v29, 1uLL);
        v20 = 0;
        ZinBuilder::CreateTranspose(size, v22, __p, v21, &v20);
      }

      v11 = *(*(a3 + 8) - 8);
      memset(v18, 0, sizeof(v18));
      v19 = 1065353216;
      v12 = ZinIrOpLayerGraph::MoveOutgoingEdges(a1, this, v11, v18, 0, 0);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v18);
      v16.n128_u64[0] = this;
      v17 = 0;
      v13 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v16);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v16, v13);
      v14 = v12 & ZinIrOpLayerGraph::RemoveNode(a1, &v16, 0);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v16);
      if ((v14 & 1) == 0)
      {
        ZinAssertImpl("ANE internal failure: Transpose graph manipulation error");
      }

      v22[0] = &unk_1F19D0088;
      if (v23 < 0)
      {
        operator delete(v22[1]);
      }
    }

    v28[0] = &v24;
    std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](v28);
  }

  return 0;
}

void sub_1A699E1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  *(v44 - 240) = &a39;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100]((v44 - 240));
  _Unwind_Resume(a1);
}

uint64_t ZinReshapeLayerUtils::IsReshapeValidAfterStridePadding(ZinIrOpLayer *a1, int a2, uint64_t *a3)
{
  v23 = a2;
  if (!a3)
  {
    ZinAssertImpl("must provide fixed dimension order as default");
  }

  v6 = (*(*a1 + 40))(a1, 0);
  if (ZinIrTensor::HasFlexDimensionOrderHint(v6))
  {
    DimensionOrderHint::DimensionOrderHint(v22, a3);
  }

  else
  {
    ZinIrTensor::GetDimensionOrderHint(v6, v22);
  }

  DimensionOrderHint::GetOrder(&__p, v22);
  InputTensor = ZinIrOpLayer::GetInputTensor(a1, 0);
  ZinReshapeLayerUtils::TraceReshapeDimension(InputTensor, v6, &__p, v19);
  v8 = ZinIrOpLayer::GetInputTensor(a1, 0);
  ZinReshapeLayerUtils::TraceReshapeDimension(v6, v8, &__p, &v17);
  v9 = __p;
  if (__p != v21)
  {
    while (*v9 != a2)
    {
      v9 += 4;
      if (v9 == v21)
      {
        v9 = v21;
        break;
      }
    }
  }

  if (v9 - __p > 8 || (v10 = v18) == 0)
  {
LABEL_16:
    v12 = 1;
    goto LABEL_17;
  }

  while (1)
  {
    v11 = *(v10 + 8);
    if (v11 <= a2)
    {
      break;
    }

LABEL_15:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  if (v11 < a2)
  {
    ++v10;
    goto LABEL_15;
  }

  v24 = &v23;
  v14 = std::__tree<std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v17, &v23, &std::piecewise_construct, &v24);
  if (v14[5] == v14[6])
  {
    goto LABEL_16;
  }

  v24 = &v23;
  v16 = *std::__tree<std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v17, &v23, &std::piecewise_construct, &v24)[5];
  v24 = &v16;
  v15 = std::__tree<std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,std::vector<ZinIrDimension>>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(v19, &v16, &std::piecewise_construct, &v24);
  if (*v15[5] == v23)
  {
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(&v17, v18);
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v19, v19[1]);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  return v12;
}

void sub_1A699E57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(&a10, a11);
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(&a13, a14);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t GetVectorDimension(const ZinTensorDimensions *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3);
  v1 = *(a1 + 4);
  v9[0] = *a1;
  v9[1] = v1;
  v10 = *(a1 + 8);
  v11 = v2;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v6, v9, &v12, 5uLL);
  if (v7 != v6)
  {
    v3 = 0;
    v4 = v7 - v6;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (v6[v3] <= 1)
    {
      if (v4 == ++v3)
      {
        v3 = 4;
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

  v3 = 4;
  if (v6)
  {
LABEL_8:
    v7 = v6;
    operator delete(v6);
  }

  return v3;
}

uint64_t std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::push_back[abi:ne200100](uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::__emplace_back_slow_path<ZinReshapeLayerUtils::ReshapeDecomposedDesc const&>(a1, a2);
  }

  else
  {
    std::construct_at[abi:ne200100]<ZinReshapeLayerUtils::ReshapeDecomposedDesc,ZinReshapeLayerUtils::ReshapeDecomposedDesc const&,ZinReshapeLayerUtils::ReshapeDecomposedDesc*>(*(a1 + 8), a2);
    result = v3 + 192;
    *(a1 + 8) = v3 + 192;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(uint64_t a1, const ZinIrTransposeUnitInfo *a2, uint64_t a3, uint64_t a4)
{
  DimensionOrderHint::DimensionOrderHint(a1 + 16, 2);
  *a1 = 21;
  *(a1 + 8) = a4;
  ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo((a1 + 48), a2);
  return a1;
}

void sub_1A699E764(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::__emplace_back_slow_path<ZinReshapeLayerUtils::ReshapeDecomposedDesc const&>(int **a1, int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinReshapeLayerUtils::ReshapeDecomposedDesc>>(a1, v6);
  }

  v13 = 0;
  v14 = 192 * v2;
  std::construct_at[abi:ne200100]<ZinReshapeLayerUtils::ReshapeDecomposedDesc,ZinReshapeLayerUtils::ReshapeDecomposedDesc const&,ZinReshapeLayerUtils::ReshapeDecomposedDesc*>((192 * v2), a2);
  v15 = 192 * v2 + 192;
  v7 = a1[1];
  v8 = (192 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinReshapeLayerUtils::ReshapeDecomposedDesc>,ZinReshapeLayerUtils::ReshapeDecomposedDesc*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::~__split_buffer(&v13);
  return v12;
}

void sub_1A699E89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

int *std::construct_at[abi:ne200100]<ZinReshapeLayerUtils::ReshapeDecomposedDesc,ZinReshapeLayerUtils::ReshapeDecomposedDesc const&,ZinReshapeLayerUtils::ReshapeDecomposedDesc*>(int *a1, int *a2)
{
  DimensionOrderHint::DimensionOrderHint(__p, 2);
  ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(a1, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A699E90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(int *a1, int *a2)
{
  DimensionOrderHint::DimensionOrderHint((a1 + 4), 2);
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1 + 2, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 2);
    v4 = *a1;
  }

  a1[10] = a2[10];
  if (v4 == 21)
  {
    ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo((a1 + 12), (a2 + 12));
  }

  else if (v4 == 22)
  {
    ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo((a1 + 12), (a2 + 12));
  }

  return a1;
}

void sub_1A699E9C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ZinReshapeLayerUtils::ReshapeDecomposedDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinReshapeLayerUtils::ReshapeDecomposedDesc>,ZinReshapeLayerUtils::ReshapeDecomposedDesc*>(uint64_t a1, ZinReshapeLayerUtils::ReshapeDecomposedDesc *a2, ZinReshapeLayerUtils::ReshapeDecomposedDesc *a3, int *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      std::construct_at[abi:ne200100]<ZinReshapeLayerUtils::ReshapeDecomposedDesc,ZinReshapeLayerUtils::ReshapeDecomposedDesc const&,ZinReshapeLayerUtils::ReshapeDecomposedDesc*>(a4, v8);
      v8 += 48;
      a4 += 48;
      v7 -= 192;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(v6);
      v6 = (v6 + 192);
    }
  }
}

void sub_1A699EAB4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 192);
    do
    {
      ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc(v4);
      v4 = (v5 - 192);
      v2 += 192;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ZinReshapeLayerUtils::ReshapeDecomposedDesc>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 192;
    ZinReshapeLayerUtils::ReshapeDecomposedDesc::~ReshapeDecomposedDesc((i - 192));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ZinReshapeLayerUtils::ReshapeDecomposedDesc::ReshapeDecomposedDesc(uint64_t a1, const ZinIrReshapeUnitInfo *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 16);
  DimensionOrderHint::DimensionOrderHint(a1 + 16, 2);
  *a1 = 22;
  *(a1 + 8) = a4;
  if (v8 != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v8, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  }

  *(a1 + 40) = *(a3 + 24);
  ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo((a1 + 48), a2);
  return a1;
}

void sub_1A699EBB4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FindAxisToSwapWidth(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = xmmword_1A75A3B20;
  v19 = 0;
  v20 = 0;
  __p = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&__p, &v21, &v22, 4uLL);
  *&v21 = 1;
  if (ZinTensorFormatGetSizeInBytes(a3, &v21))
  {
    ZinAssertImpl("Invalid format");
  }

  v8 = __p;
  v9 = v19;
  if (__p == v19)
  {
    v11 = 5;
    if (!__p)
    {
      return v11;
    }

    goto LABEL_14;
  }

  v10 = -1;
  v11 = 5;
  do
  {
    v12 = *v8;
    v13 = *a1;
    v14 = *(a1 + 8);
    if (*a1 != v14)
    {
      while (*v13 != v12)
      {
        if (++v13 == v14)
        {
          goto LABEL_9;
        }
      }
    }

    if (v13 == v14)
    {
LABEL_9:
      ValueAt = GetValueAtDimension<ZinTensorDimensions>(a2, *v8);
      v16 = ZinAlign(ValueAt, *(a4 + 560));
      if (ValueAt != 1 && v16 - ValueAt < v10)
      {
        v10 = v16 - ValueAt;
        v11 = v12;
      }

      else
      {
        v11 = v11;
      }
    }

    ++v8;
  }

  while (v8 != v9);
  v8 = __p;
  if (__p)
  {
LABEL_14:
    v19 = v8;
    operator delete(v8);
  }

  return v11;
}

uint64_t FindAxisToSwapWidthUsingTranspose(ZinReshapeLayerUtils *a1, const ZinTensorDimensions *a2, int a3, uint64_t a4, int a5, DimensionOrderHint *this, void *a7, uint64_t a8)
{
  v50[2] = *MEMORY[0x1E69E9840];
  a7[1] = *a7;
  if (a5)
  {
    v11 = a1;
  }

  else
  {
    v11 = a2;
  }

  v12 = *v11;
  v13 = *(v11 + 1);
  *(a8 + 32) = *(v11 + 4);
  *a8 = v12;
  *(a8 + 16) = v13;
  DimensionOrderHint::GetOrder(&__p, this);
  DimensionOrderHint::DimensionOrderHint(v48, &__p);
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  v49 = xmmword_1A75A3B20;
  v46 = 0;
  v47 = 0;
  __p = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&__p, &v49, v50, 4uLL);
  v49 = 0uLL;
  v50[0] = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v14 = __p;
  v15 = v46;
  while (v14 != v15)
  {
    LODWORD(v40[0]) = *v14;
    if (GetValueAtDimension<ZinTensorDimensions>(v11, v40[0]) == 1)
    {
      std::vector<unsigned int>::push_back[abi:ne200100](&v42, v40);
    }

    ++v14;
  }

  v16 = 0;
  do
  {
    DimensionOrderHint::GetOrder(v40, v48);
    v17 = v40[0];
    v18 = v40[1];
    if (v40[0])
    {
      v40[1] = v40[0];
      operator delete(v40[0]);
    }

    if ((v18 - v17) >> 2 <= v16)
    {
      v21 = 0;
LABEL_40:
      v24 = 5;
LABEL_41:
      v23 = v42;
      goto LABEL_42;
    }

    DimensionOrderHint::GetOrder(v40, v48);
    if (v16 >= (v40[1] - v40[0]) >> 2)
    {
      std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
    }

    ValueAt = GetValueAtDimension<ZinTensorDimensions>(v11, *(v40[0] + v16));
    if (v40[0])
    {
      v40[1] = v40[0];
      operator delete(v40[0]);
    }

    ++v16;
  }

  while (ValueAt < 2);
  DimensionOrderHint::GetOrder(v40, v48);
  v35 = a7;
  if (v16 - 1 >= (v40[1] - v40[0]) >> 2)
  {
    std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = *(v40[0] + v16 - 1);
  v40[1] = v40[0];
  operator delete(v40[0]);
  v21 = 0;
  v23 = v42;
  v22 = v43;
  v24 = 5;
  if (v43 != v42 && v20 != 5)
  {
    v21 = 0;
    __format = "Axis values are not as expected\n";
    while (1)
    {
      v25 = *v23;
      v26 = *v11;
      v27 = *(v11 + 1);
      *(a8 + 32) = *(v11 + 4);
      *a8 = v26;
      *(a8 + 16) = v27;
      v28 = GetValueAtDimension<ZinTensorDimensions>(v11, v25);
      v29 = GetValueAtDimension<ZinTensorDimensions>(v11, v20);
      v30 = v29;
      if (v28 != 1 && v29 == 1)
      {
        goto LABEL_54;
      }

      if (SetValueAtDimension<ZinTensorDimensions>(a8, v20, v28) || SetValueAtDimension<ZinTensorDimensions>(a8, v25, v30))
      {
        __format = "Setting dim failed\n";
LABEL_54:
        ZinAssertImpl(__format, __format);
      }

      if (a5)
      {
        ZinReshapeLayerUtils::GetReshapedDimensions(v40, a8, a2, v48, 0);
        if (v21)
        {
          *(&v49 + 1) = v21;
          operator delete(v21);
        }

        v49 = *v40;
        v50[0] = v41;
        v21 = v40[0];
        AxisToSwapWidth = FindAxisToSwapWidth(&v49, a8, a3, a4);
      }

      else
      {
        ZinReshapeLayerUtils::GetReshapedDimensions(v40, a1, a8, v48, 0);
        if (v21)
        {
          *(&v49 + 1) = v21;
          operator delete(v21);
        }

        v49 = *v40;
        v50[0] = v41;
        v21 = v40[0];
        AxisToSwapWidth = FindAxisToSwapWidth(&v49, a1, a3, a4);
      }

      v24 = AxisToSwapWidth;
      if (AxisToSwapWidth != 5)
      {
        break;
      }

      if (++v23 == v22)
      {
        goto LABEL_40;
      }
    }

    v40[0] = __PAIR64__(v25, v20);
    std::vector<DimensionMapping>::push_back[abi:ne200100](v35, v40);
    v40[0] = __PAIR64__(v20, v25);
    std::vector<DimensionMapping>::push_back[abi:ne200100](v35, v40);
    goto LABEL_41;
  }

LABEL_42:
  if (v23)
  {
    v43 = v23;
    operator delete(v23);
  }

  if (v21)
  {
    *(&v49 + 1) = v21;
    operator delete(v21);
  }

  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  return v24;
}

void sub_1A699F174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v26)
  {
    *(v27 - 120) = v26;
    operator delete(v26);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

BOOL DistributeADimToNDC(unint64_t a1, const ZinIrHalParameters *a2, int64x2_t *a3)
{
  MaxDivisor = ZinFindMaxDivisor(a1, *(a2 + 47));
  a3->i64[0] = MaxDivisor;
  v7 = a1 / MaxDivisor;
  v8 = ZinFindMaxDivisor(v7, *(a2 + 43));
  a3[2].i64[0] = v8;
  v9 = *(a2 + 45);
  v10 = v7 / v8;
  v11 = ZinFindMaxDivisor(v7 / v8, v9);
  a3->i64[1] = v11;
  if (v10 / v11 == 1)
  {
    a3[1] = vdupq_n_s64(1uLL);
  }

  return v10 / v11 == 1;
}

uint64_t *std::back_insert_iterator<std::vector<long>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(*a1, v13);
    }

    v14 = (8 * (v9 >> 3));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

__CFDictionary *ZinCreateNEMatMulUnit(void **a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Unit = ZinCreateUnit(a1);
  v11 = &unk_1F1A2EA30;
  if (*(a1 + 399) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a1[47], a1[48]);
  }

  else
  {
    __p = *(a1 + 47);
  }

  v13 = *(a1 + 100);
  memset(&v14, 0, sizeof(v14));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v14, a1[51], a1[52], 0xAAAAAAAAAAAAAAABLL * ((a1[52] - a1[51]) >> 3));
  v15 = *(a1 + 27);
  v11 = &unk_1F1A33FF8;
  v16 = *(a1 + 112);
  if (*(a1 + 31) >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = a1[2];
  }

  v4 = &v10;
  std::string::basic_string[abi:ne200100](&v10, v3 + 7);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = v10.__r_.__value_.__r.__words[0];
  }

  if (v3)
  {
    if (*(a1 + 31) >= 0)
    {
      v5 = a1 + 1;
    }

    else
    {
      v5 = a1[1];
    }

    memmove(v4, v5, v3);
  }

  strcpy(v4 + v3, ".matmul");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v10;
  v15 = *(a1 + 4);
  if (&v11 != a1)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v14, a1[5], a1[6], 0xAAAAAAAAAAAAAAABLL * ((a1[6] - a1[5]) >> 3));
  }

  MatrixMultUnit = ZinCreateMatrixMultUnit(&v11);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  CFDictionaryAddValue(Unit, v8, MatrixMultUnit);
  CFRelease(v8);
  CFRelease(MatrixMultUnit);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = __p;
  }

  memset(&v10, 0, sizeof(v10));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v10, &v18, &v19, 1uLL);
  ZinCreateNEUnit(a1, &v10, Unit);
  v17 = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v11);
  return Unit;
}

ZinIrOpLayer ***ZinMirSetZeroPad::Run(ZinIrOpLayer ***result, uint64_t a2)
{
  if (*(a2 + 1395) == 1)
  {
    memset(v33, 0, sizeof(v33));
    v34 = 1065353216;
    v2 = *result;
    v3 = result[1];
    if (*result != v3)
    {
      do
      {
        v5 = *v2;
        if (ZinIrOpLayer::IsANELayer(*v2))
        {
          v6 = (*(*v5 + 40))(v5, 0);
          v32 = *(ZinIrTensor::GetRootTensor(v6) + 19);
          if (*(v5 + 65))
          {
            v7 = (*(*v5 + 40))(v5, 0);
            if (ZinCropOffsetUtil::HasUnalignedOutputCropX(*(v7 + 104), *(*(v5 + 65) + 232), a2) && !std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(v33, &v32))
            {
              v8 = *(*(v32 + 11) + 8);
              if (v8 == 30)
              {
                v29 = 0;
                v30 = 0;
                v31 = 0;
                ZinMirUtils::GetANELayerWritersForState(v32, &v29);
                v11 = v29;
                v22 = v30;
                for (i = v29; i != v22; *(*(v24 + 520) + 1234) = 257)
                {
                  v24 = *i++;
                }
              }

              else
              {
                if (v8 != 7)
                {
                  v28 = v32 + 48;
                  if (*(v32 + 71) < 0)
                  {
                    v28 = *v28;
                  }

                  ZinAssertImpl("Unexpected unaligned output crop on layer: %s", v28);
                }

                v29 = 0;
                v30 = 0;
                v31 = 0;
                ZinMirUtils::GetANELayerWritersForConcat(v32, &v29);
                v9 = 126 - 2 * __clz(v30 - v29);
                if (v30 == v29)
                {
                  v10 = 0;
                }

                else
                {
                  v10 = v9;
                }

                std::__introsort<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,false>(v29, v30, v10, 1);
                v11 = v29;
                v12 = v30;
                v13 = v30 - v29;
                if (v13 < 2)
                {
                  LOBYTE(v20) = 0;
                  v21 = 0;
                }

                else
                {
                  v14 = v13 - 1;
                  v15 = v29 + 1;
                  v16 = 1;
                  v17 = 1;
                  do
                  {
                    v18 = *(*(v15 - 1) + 384);
                    v19 = *(*v15 + 384);
                    v16 &= v18 < v19;
                    v17 &= v18 > v19;
                    ++v15;
                    --v14;
                  }

                  while (v14);
                  v20 = v17 ^ 1u;
                  v21 = v16 ^ 1;
                }

                if (v29 != v30)
                {
                  v25 = v29;
                  do
                  {
                    v26 = *v25++;
                    v27 = *(v26 + 520);
                    *(v27 + 1234) = v20;
                    *(v27 + 1235) = v21;
                  }

                  while (v25 != v12);
                }
              }

              if (v11)
              {
                v30 = v11;
                operator delete(v11);
              }

              std::__hash_table<ZinIrTensor const*,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,std::allocator<ZinIrTensor const*>>::__emplace_unique_key_args<ZinIrTensor const*,ZinIrTensor const* const&>(v33, &v32, &v32);
            }
          }
        }

        ++v2;
      }

      while (v2 != v3);
    }

    return std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v33);
  }

  return result;
}

void sub_1A699F958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = a2;
  v8 = a2 - 1;
  v176 = a2 - 3;
  v9 = v6;
  while (1)
  {
    v6 = v9;
    v10 = v7 - v9;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(v6, v6 + 1, v8);
        case 4:

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(v6, v6 + 1, v6 + 2, v8);
        case 5:

          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(v6, v6 + 1, v6 + 2, v6 + 3, v8);
      }

      goto LABEL_10;
    }

    if (v10 < 2)
    {
      return result;
    }

    v7 = a2;
    if (v10 == 2)
    {
      break;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v86 = v6 + 1;
      v87 = v6 == v7 || v86 == v7;
      v88 = v87;
      if (a4)
      {
        if (v88)
        {
          return result;
        }

        v89 = 0;
        v90 = v6;
        while (1)
        {
          v92 = *v90;
          v91 = v90[1];
          v90 = v86;
          v93 = **(*((*(*v91 + 40))(v91, 0) + 160) + 40);
          if (*(v93 + 220) != 1)
          {
            break;
          }

          v94 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v93 + 216)) + 32);
          v95 = **(*((*(*v92 + 40))(v92, 0) + 160) + 40);
          if (*(v95 + 220) != 1)
          {
            break;
          }

          result = ZinIrSymbol::Descriptor::GetTensorDesc((v95 + 216));
          if (v94 < *(result + 32))
          {
            v96 = *v90;
            v97 = v89;
            while (1)
            {
              *(v6 + v97 + 8) = *(v6 + v97);
              if (!v97)
              {
                break;
              }

              v98 = *(v6 + v97 - 8);
              v99 = **(*((*(*v96 + 40))(v96, 0) + 160) + 40);
              if (*(v99 + 220) != 1)
              {
                goto LABEL_180;
              }

              v100 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v99 + 216)) + 32);
              v101 = **(*((*(*v98 + 40))(v98, 0) + 160) + 40);
              if (*(v101 + 220) != 1)
              {
                goto LABEL_180;
              }

              result = ZinIrSymbol::Descriptor::GetTensorDesc((v101 + 216));
              v97 -= 8;
              if (v100 >= *(result + 32))
              {
                v102 = (v6 + v97 + 8);
                goto LABEL_116;
              }
            }

            v102 = v6;
LABEL_116:
            *v102 = v96;
          }

          v86 = v90 + 1;
          v89 += 8;
          if (v90 + 1 == a2)
          {
            return result;
          }
        }
      }

      else
      {
        if (v88)
        {
          return result;
        }

        while (1)
        {
          v165 = *v6;
          v164 = v6[1];
          v6 = v86;
          v166 = **(*((*(*v164 + 40))(v164, 0) + 160) + 40);
          if (*(v166 + 220) != 1)
          {
            break;
          }

          v167 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v166 + 216)) + 32);
          v168 = **(*((*(*v165 + 40))(v165, 0) + 160) + 40);
          v169 = a2;
          if (*(v168 + 220) != 1)
          {
            break;
          }

          result = ZinIrSymbol::Descriptor::GetTensorDesc((v168 + 216));
          if (v167 < *(result + 32))
          {
            v170 = *v6;
            v171 = v6;
            do
            {
              v172 = *(v171 - 2);
              *v171 = *(v171 - 1);
              v173 = **(*((*(*v170 + 40))(v170, 0) + 160) + 40);
              if (*(v173 + 220) != 1)
              {
                goto LABEL_180;
              }

              v174 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v173 + 216)) + 32);
              v175 = **(*((*(*v172 + 40))(v172, 0) + 160) + 40);
              if (*(v175 + 220) != 1)
              {
                goto LABEL_180;
              }

              result = ZinIrSymbol::Descriptor::GetTensorDesc((v175 + 216));
              --v171;
            }

            while (v174 < *(result + 32));
            *v171 = v170;
            v169 = a2;
          }

          v86 = v6 + 1;
          if (v6 + 1 == v169)
          {
            return result;
          }
        }
      }

LABEL_180:
      ZinAssertImpl("Invalid symbol type", v176);
    }

    if (!a3)
    {
      if (v6 != v7)
      {
        v103 = v11 >> 1;
        v104 = v11 >> 1;
        v178 = v10;
        while (1)
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v177 = v104;
            v106 = (2 * v104) | 1;
            v107 = &v6[v106];
            v108 = 2 * v104 + 2;
            if (v108 < v10)
            {
              v109 = v107[1];
              v110 = **(*((*(**v107 + 40))(*v107, 0) + 160) + 40);
              if (*(v110 + 220) != 1)
              {
                goto LABEL_180;
              }

              v111 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v110 + 216)) + 32);
              v112 = **(*((*(*v109 + 40))(v109, 0) + 160) + 40);
              if (*(v112 + 220) != 1)
              {
                goto LABEL_180;
              }

              if (v111 < *(ZinIrSymbol::Descriptor::GetTensorDesc((v112 + 216)) + 32))
              {
                ++v107;
                v106 = v108;
              }
            }

            v105 = v177;
            v113 = &v6[v177];
            v114 = *v113;
            v115 = **(*((*(**v107 + 40))(*v107, 0) + 160) + 40);
            if (*(v115 + 220) != 1)
            {
              goto LABEL_180;
            }

            v116 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v115 + 216)) + 32);
            v117 = **(*((*(*v114 + 40))(v114, 0) + 160) + 40);
            if (*(v117 + 220) != 1)
            {
              goto LABEL_180;
            }

            result = ZinIrSymbol::Descriptor::GetTensorDesc((v117 + 216));
            if (v116 >= *(result + 32))
            {
              v118 = *v113;
              do
              {
                v119 = v107;
                *v113 = *v107;
                if (v103 < v106)
                {
                  break;
                }

                v120 = (2 * v106) | 1;
                v107 = &v6[v120];
                v121 = 2 * v106 + 2;
                if (v121 >= v10)
                {
                  v106 = (2 * v106) | 1;
                }

                else
                {
                  v122 = &v6[v120];
                  v123 = v118;
                  v124 = v6;
                  v125 = v103;
                  v126 = *v122;
                  v127 = v122;
                  v130 = v122[1];
                  v128 = v122 + 1;
                  v129 = v130;
                  v131 = **(*((*(*v126 + 40))(v126, 0) + 160) + 40);
                  if (*(v131 + 220) != 1)
                  {
                    goto LABEL_180;
                  }

                  v132 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v131 + 216)) + 32);
                  v133 = **(*((*(*v129 + 40))(v129, 0) + 160) + 40);
                  if (*(v133 + 220) != 1)
                  {
                    goto LABEL_180;
                  }

                  if (v132 >= *(ZinIrSymbol::Descriptor::GetTensorDesc((v133 + 216)) + 32))
                  {
                    v106 = v120;
                  }

                  else
                  {
                    v127 = v128;
                    v106 = v121;
                  }

                  v103 = v125;
                  v6 = v124;
                  v118 = v123;
                  v107 = v127;
                  v10 = v178;
                }

                v134 = **(*((*(**v107 + 40))(*v107, 0) + 160) + 40);
                if (*(v134 + 220) != 1)
                {
                  goto LABEL_180;
                }

                v135 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v134 + 216)) + 32);
                v136 = **(*((*(*v118 + 40))(v118, 0) + 160) + 40);
                if (*(v136 + 220) != 1)
                {
                  goto LABEL_180;
                }

                result = ZinIrSymbol::Descriptor::GetTensorDesc((v136 + 216));
                v113 = v119;
              }

              while (v135 >= *(result + 32));
              *v119 = v118;
              v105 = v177;
            }
          }

          v104 = v105 - 1;
          if (!v105)
          {
            while (1)
            {
              v137 = 0;
              v179 = *v6;
              v138 = v6;
              do
              {
                v139 = &v138[v137];
                v140 = v139 + 1;
                v141 = (2 * v137) | 1;
                v142 = 2 * v137 + 2;
                if (v142 >= v10)
                {
                  v137 = (2 * v137) | 1;
                }

                else
                {
                  v145 = v139[2];
                  v144 = v139 + 2;
                  v143 = v145;
                  v146 = **(*((*(**(v144 - 1) + 40))(*(v144 - 1), 0) + 160) + 40);
                  if (*(v146 + 220) != 1)
                  {
                    goto LABEL_180;
                  }

                  v147 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v146 + 216)) + 32);
                  v148 = **(*((*(*v143 + 40))(v143, 0) + 160) + 40);
                  if (*(v148 + 220) != 1)
                  {
                    goto LABEL_180;
                  }

                  result = ZinIrSymbol::Descriptor::GetTensorDesc((v148 + 216));
                  if (v147 >= *(result + 32))
                  {
                    v137 = v141;
                  }

                  else
                  {
                    v140 = v144;
                    v137 = v142;
                  }
                }

                *v138 = *v140;
                v138 = v140;
              }

              while (v137 <= ((v10 - 2) >> 1));
              v149 = a2 - 1;
              v87 = v140 == --a2;
              if (v87)
              {
                *v140 = v179;
              }

              else
              {
                *v140 = *v149;
                *v149 = v179;
                v150 = (v140 - v6 + 8) >> 3;
                v151 = v150 < 2;
                v152 = v150 - 2;
                if (!v151)
                {
                  v153 = v152 >> 1;
                  v154 = &v6[v152 >> 1];
                  v155 = *v140;
                  v156 = **(*((*(**v154 + 40))(*v154, 0) + 160) + 40);
                  if (*(v156 + 220) != 1)
                  {
                    goto LABEL_180;
                  }

                  v157 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v156 + 216)) + 32);
                  v158 = **(*((*(*v155 + 40))(v155, 0) + 160) + 40);
                  if (*(v158 + 220) != 1)
                  {
                    goto LABEL_180;
                  }

                  result = ZinIrSymbol::Descriptor::GetTensorDesc((v158 + 216));
                  if (v157 < *(result + 32))
                  {
                    v159 = *v140;
                    do
                    {
                      v160 = v154;
                      *v140 = *v154;
                      if (!v153)
                      {
                        break;
                      }

                      v153 = (v153 - 1) >> 1;
                      v154 = &v6[v153];
                      v161 = **(*((*(**v154 + 40))(*v154, 0) + 160) + 40);
                      if (*(v161 + 220) != 1)
                      {
                        goto LABEL_180;
                      }

                      v162 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v161 + 216)) + 32);
                      v163 = **(*((*(*v159 + 40))(v159, 0) + 160) + 40);
                      if (*(v163 + 220) != 1)
                      {
                        goto LABEL_180;
                      }

                      result = ZinIrSymbol::Descriptor::GetTensorDesc((v163 + 216));
                      v140 = v160;
                    }

                    while (v162 < *(result + 32));
                    *v160 = v159;
                  }
                }
              }

              v151 = v10-- <= 2;
              if (v151)
              {
                return result;
              }
            }
          }
        }
      }

      return result;
    }

    v12 = v10 >> 1;
    v13 = &v6[v10 >> 1];
    if (v10 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(&v6[v10 >> 1], v6, v8);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(v6, &v6[v10 >> 1], v8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(v6 + 1, v13 - 1, a2 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(v6 + 2, &v6[v12 + 1], v176);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(v13 - 1, &v6[v10 >> 1], &v6[v12 + 1]);
      v14 = *v6;
      *v6 = *v13;
      *v13 = v14;
    }

    --a3;
    if (a4)
    {
      goto LABEL_19;
    }

    v15 = *v6;
    v16 = **(*((*(**(v6 - 1) + 40))(*(v6 - 1), 0) + 160) + 40);
    if (*(v16 + 220) != 1)
    {
      goto LABEL_180;
    }

    v17 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v16 + 216)) + 32);
    v18 = **(*((*(*v15 + 40))(v15, 0) + 160) + 40);
    if (*(v18 + 220) != 1)
    {
      goto LABEL_180;
    }

    if (v17 < *(ZinIrSymbol::Descriptor::GetTensorDesc((v18 + 216)) + 32))
    {
LABEL_19:
      v19 = 0;
      v20 = *v6;
      do
      {
        v21 = **(*((*(*v6[v19 + 1] + 40))(v6[v19 + 1], 0) + 160) + 40);
        if (*(v21 + 220) != 1)
        {
          goto LABEL_180;
        }

        v22 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v21 + 216)) + 32);
        v23 = **(*((*(*v20 + 40))(v20, 0) + 160) + 40);
        if (*(v23 + 220) != 1)
        {
          goto LABEL_180;
        }

        ++v19;
      }

      while (v22 < *(ZinIrSymbol::Descriptor::GetTensorDesc((v23 + 216)) + 32));
      v24 = &v6[v19];
      v25 = a2;
      if (v19 != 1)
      {
        while (1)
        {
          v26 = *--v25;
          v27 = **(*((*(*v26 + 40))(v26, 0) + 160) + 40);
          if (*(v27 + 220) != 1)
          {
            goto LABEL_180;
          }

          v28 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v27 + 216)) + 32);
          v29 = **(*((*(*v20 + 40))(v20, 0) + 160) + 40);
          if (*(v29 + 220) != 1)
          {
            goto LABEL_180;
          }

          if (v28 < *(ZinIrSymbol::Descriptor::GetTensorDesc((v29 + 216)) + 32))
          {
            goto LABEL_33;
          }
        }
      }

      v25 = a2;
      while (v24 < v25)
      {
        v30 = *--v25;
        v31 = **(*((*(*v30 + 40))(v30, 0) + 160) + 40);
        if (*(v31 + 220) != 1)
        {
          goto LABEL_180;
        }

        v32 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v31 + 216)) + 32);
        v33 = **(*((*(*v20 + 40))(v20, 0) + 160) + 40);
        if (*(v33 + 220) != 1)
        {
          goto LABEL_180;
        }

        if (v32 < *(ZinIrSymbol::Descriptor::GetTensorDesc((v33 + 216)) + 32))
        {
          break;
        }
      }

LABEL_33:
      if (v24 >= v25)
      {
        v45 = v24 - 1;
      }

      else
      {
        v34 = v24;
        v35 = v25;
        do
        {
          v36 = *v34;
          *v34 = *v35;
          *v35 = v36;
          do
          {
            v37 = v34[1];
            ++v34;
            v38 = **(*((*(*v37 + 40))(v37, 0) + 160) + 40);
            if (*(v38 + 220) == 1)
            {
              v39 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v38 + 216)) + 32);
              v40 = **(*((*(*v20 + 40))(v20, 0) + 160) + 40);
              if (*(v40 + 220) == 1)
              {
                continue;
              }
            }

            goto LABEL_180;
          }

          while (v39 < *(ZinIrSymbol::Descriptor::GetTensorDesc((v40 + 216)) + 32));
          do
          {
            v41 = *--v35;
            v42 = **(*((*(*v41 + 40))(v41, 0) + 160) + 40);
            if (*(v42 + 220) == 1)
            {
              v43 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v42 + 216)) + 32);
              v44 = **(*((*(*v20 + 40))(v20, 0) + 160) + 40);
              if (*(v44 + 220) == 1)
              {
                continue;
              }
            }

            goto LABEL_180;
          }

          while (v43 >= *(ZinIrSymbol::Descriptor::GetTensorDesc((v44 + 216)) + 32));
        }

        while (v34 < v35);
        v45 = v34 - 1;
      }

      if (v45 != v6)
      {
        *v6 = *v45;
      }

      *v45 = v20;
      v46 = v24 >= v25;
      v7 = a2;
      if (!v46)
      {
        goto LABEL_51;
      }

      v47 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**>(v6, v45);
      v9 = v45 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**>(v45 + 1, a2);
      if (result)
      {
        a2 = v45;
        if (v47)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v47)
      {
LABEL_51:
        result = std::__introsort<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,false>(v6, v45, a3, a4 & 1);
        a4 = 0;
        v9 = v45 + 1;
      }
    }

    else
    {
      v48 = *v6;
      v49 = *v8;
      v50 = **(*((*(**v6 + 40))(*v6, 0) + 160) + 40);
      if (*(v50 + 220) != 1)
      {
        goto LABEL_180;
      }

      v51 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v50 + 216)) + 32);
      v52 = **(*((*(*v49 + 40))(v49, 0) + 160) + 40);
      if (*(v52 + 220) != 1)
      {
        goto LABEL_180;
      }

      result = ZinIrSymbol::Descriptor::GetTensorDesc((v52 + 216));
      if (v51 < *(result + 32))
      {
        v9 = v6;
        while (1)
        {
          v54 = v9[1];
          ++v9;
          v53 = v54;
          v55 = **(*((*(*v48 + 40))(v48, 0) + 160) + 40);
          if (*(v55 + 220) != 1)
          {
            goto LABEL_180;
          }

          v56 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v55 + 216)) + 32);
          v57 = **(*((*(*v53 + 40))(v53, 0) + 160) + 40);
          if (*(v57 + 220) != 1)
          {
            goto LABEL_180;
          }

          result = ZinIrSymbol::Descriptor::GetTensorDesc((v57 + 216));
          if (v56 < *(result + 32))
          {
            goto LABEL_65;
          }
        }
      }

      v58 = v6 + 1;
      do
      {
        v9 = v58;
        if (v58 >= v7)
        {
          break;
        }

        v59 = *v58;
        v60 = **(*((*(*v48 + 40))(v48, 0) + 160) + 40);
        if (*(v60 + 220) != 1)
        {
          goto LABEL_180;
        }

        v61 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v60 + 216)) + 32);
        v62 = **(*((*(*v59 + 40))(v59, 0) + 160) + 40);
        if (*(v62 + 220) != 1)
        {
          goto LABEL_180;
        }

        result = ZinIrSymbol::Descriptor::GetTensorDesc((v62 + 216));
        v58 = v9 + 1;
      }

      while (v61 >= *(result + 32));
LABEL_65:
      v63 = v7;
      if (v9 < v7)
      {
        v63 = a2;
        do
        {
          v65 = *--v63;
          v64 = v65;
          v66 = **(*((*(*v48 + 40))(v48, 0) + 160) + 40);
          if (*(v66 + 220) != 1)
          {
            goto LABEL_180;
          }

          v67 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v66 + 216)) + 32);
          v68 = **(*((*(*v64 + 40))(v64, 0) + 160) + 40);
          if (*(v68 + 220) != 1)
          {
            goto LABEL_180;
          }

          result = ZinIrSymbol::Descriptor::GetTensorDesc((v68 + 216));
        }

        while (v67 < *(result + 32));
      }

LABEL_78:
      if (v9 < v63)
      {
        v69 = *v9;
        *v9 = *v63;
        *v63 = v69;
        do
        {
          v71 = v9[1];
          ++v9;
          v70 = v71;
          v72 = **(*((*(*v48 + 40))(v48, 0) + 160) + 40);
          if (*(v72 + 220) == 1)
          {
            v73 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v72 + 216)) + 32);
            v74 = **(*((*(*v70 + 40))(v70, 0) + 160) + 40);
            if (*(v74 + 220) == 1)
            {
              continue;
            }
          }

          goto LABEL_180;
        }

        while (v73 >= *(ZinIrSymbol::Descriptor::GetTensorDesc((v74 + 216)) + 32));
        while (1)
        {
          v76 = *--v63;
          v75 = v76;
          v77 = **(*((*(*v48 + 40))(v48, 0) + 160) + 40);
          if (*(v77 + 220) != 1)
          {
            goto LABEL_180;
          }

          v78 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v77 + 216)) + 32);
          v79 = **(*((*(*v75 + 40))(v75, 0) + 160) + 40);
          if (*(v79 + 220) != 1)
          {
            goto LABEL_180;
          }

          result = ZinIrSymbol::Descriptor::GetTensorDesc((v79 + 216));
          if (v78 >= *(result + 32))
          {
            goto LABEL_78;
          }
        }
      }

      v80 = v9 - 1;
      if (v9 - 1 != v6)
      {
        *v6 = *v80;
      }

      a4 = 0;
      *v80 = v48;
      v7 = a2;
    }
  }

  v81 = *v6;
  v82 = **(*((*(**(a2 - 1) + 40))(*(a2 - 1), 0) + 160) + 40);
  if (*(v82 + 220) != 1)
  {
    goto LABEL_180;
  }

  v83 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v82 + 216)) + 32);
  v84 = **(*((*(*v81 + 40))(v81, 0) + 160) + 40);
  if (*(v84 + 220) != 1)
  {
    goto LABEL_180;
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v84 + 216));
  if (v83 < *(result + 32))
  {
    v85 = *v6;
    *v6 = *(a2 - 1);
    *(a2 - 1) = v85;
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = **(*((*(**a2 + 40))(*a2, 0) + 160) + 40);
  if (*(v7 + 220) != 1)
  {
    goto LABEL_20;
  }

  v8 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v7 + 216)) + 32);
  v9 = **(*((*(*v6 + 40))(v6, 0) + 160) + 40);
  if (*(v9 + 220) != 1)
  {
    goto LABEL_20;
  }

  v10 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v9 + 216)) + 32);
  v11 = *a2;
  v12 = **(*((*(**a3 + 40))(*a3, 0) + 160) + 40);
  v13 = *(v12 + 220);
  if (v8 < v10)
  {
    if (v13 == 1)
    {
      v14 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v12 + 216)) + 32);
      v15 = **(*((*(*v11 + 40))(v11, 0) + 160) + 40);
      if (*(v15 + 220) == 1)
      {
        result = ZinIrSymbol::Descriptor::GetTensorDesc((v15 + 216));
        v17 = *a1;
        if (v14 < *(result + 32))
        {
          *a1 = *a3;
          *a3 = v17;
          return result;
        }

        *a1 = *a2;
        *a2 = v17;
        v26 = **(*((*(**a3 + 40))(*a3, 0) + 160) + 40);
        if (*(v26 + 220) == 1)
        {
          v27 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v26 + 216)) + 32);
          v28 = **(*((*(*v17 + 40))(v17, 0) + 160) + 40);
          if (*(v28 + 220) == 1)
          {
            result = ZinIrSymbol::Descriptor::GetTensorDesc((v28 + 216));
            if (v27 < *(result + 32))
            {
              v29 = *a2;
              *a2 = *a3;
              *a3 = v29;
            }

            return result;
          }
        }
      }
    }

LABEL_20:
    ZinAssertImpl("Invalid symbol type");
  }

  if (v13 != 1)
  {
    goto LABEL_20;
  }

  v18 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v12 + 216)) + 32);
  v19 = **(*((*(*v11 + 40))(v11, 0) + 160) + 40);
  if (*(v19 + 220) != 1)
  {
    goto LABEL_20;
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v19 + 216));
  if (v18 >= *(result + 32))
  {
    return result;
  }

  v20 = *a2;
  *a2 = *a3;
  *a3 = v20;
  v21 = *a1;
  v22 = **(*((*(**a2 + 40))(*a2, 0) + 160) + 40);
  if (*(v22 + 220) != 1)
  {
    goto LABEL_20;
  }

  v23 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v22 + 216)) + 32);
  v24 = **(*((*(*v21 + 40))(v21, 0) + 160) + 40);
  if (*(v24 + 220) != 1)
  {
    goto LABEL_20;
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v24 + 216));
  if (v23 < *(result + 32))
  {
    v25 = *a1;
    *a1 = *a2;
    *a2 = v25;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(a1, a2, a3);
  v8 = *a3;
  v9 = **(*((*(**a4 + 40))(*a4, 0) + 160) + 40);
  if (*(v9 + 220) != 1)
  {
    goto LABEL_12;
  }

  v10 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v9 + 216)) + 32);
  v11 = **(*((*(*v8 + 40))(v8, 0) + 160) + 40);
  if (*(v11 + 220) != 1)
  {
    goto LABEL_12;
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v11 + 216));
  if (v10 >= *(result + 32))
  {
    return result;
  }

  v13 = *a3;
  *a3 = *a4;
  *a4 = v13;
  v14 = *a2;
  v15 = **(*((*(**a3 + 40))(*a3, 0) + 160) + 40);
  if (*(v15 + 220) != 1)
  {
    goto LABEL_12;
  }

  v16 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v15 + 216)) + 32);
  v17 = **(*((*(*v14 + 40))(v14, 0) + 160) + 40);
  if (*(v17 + 220) != 1)
  {
    goto LABEL_12;
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v17 + 216));
  if (v16 >= *(result + 32))
  {
    return result;
  }

  v18 = *a2;
  *a2 = *a3;
  *a3 = v18;
  v19 = *a1;
  v20 = **(*((*(**a2 + 40))(*a2, 0) + 160) + 40);
  if (*(v20 + 220) != 1 || (v21 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v20 + 216)) + 32), v22 = **(*((*(*v19 + 40))(v19, 0) + 160) + 40), *(v22 + 220) != 1))
  {
LABEL_12:
    ZinAssertImpl("Invalid symbol type");
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v22 + 216));
  if (v21 < *(result + 32))
  {
    v23 = *a1;
    *a1 = *a2;
    *a2 = v23;
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(a1, a2, a3, a4);
  v10 = *a4;
  v11 = **(*((*(**a5 + 40))(*a5, 0) + 160) + 40);
  if (*(v11 + 220) != 1)
  {
    goto LABEL_15;
  }

  v12 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v11 + 216)) + 32);
  v13 = **(*((*(*v10 + 40))(v10, 0) + 160) + 40);
  if (*(v13 + 220) != 1)
  {
    goto LABEL_15;
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v13 + 216));
  if (v12 >= *(result + 32))
  {
    return result;
  }

  v15 = *a4;
  *a4 = *a5;
  *a5 = v15;
  v16 = *a3;
  v17 = **(*((*(**a4 + 40))(*a4, 0) + 160) + 40);
  if (*(v17 + 220) != 1)
  {
    goto LABEL_15;
  }

  v18 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v17 + 216)) + 32);
  v19 = **(*((*(*v16 + 40))(v16, 0) + 160) + 40);
  if (*(v19 + 220) != 1)
  {
    goto LABEL_15;
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v19 + 216));
  if (v18 >= *(result + 32))
  {
    return result;
  }

  v20 = *a3;
  *a3 = *a4;
  *a4 = v20;
  v21 = *a2;
  v22 = **(*((*(**a3 + 40))(*a3, 0) + 160) + 40);
  if (*(v22 + 220) != 1)
  {
    goto LABEL_15;
  }

  v23 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v22 + 216)) + 32);
  v24 = **(*((*(*v21 + 40))(v21, 0) + 160) + 40);
  if (*(v24 + 220) != 1)
  {
    goto LABEL_15;
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v24 + 216));
  if (v23 >= *(result + 32))
  {
    return result;
  }

  v25 = *a2;
  *a2 = *a3;
  *a3 = v25;
  v26 = *a1;
  v27 = **(*((*(**a2 + 40))(*a2, 0) + 160) + 40);
  if (*(v27 + 220) != 1 || (v28 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v27 + 216)) + 32), v29 = **(*((*(*v26 + 40))(v26, 0) + 160) + 40), *(v29 + 220) != 1))
  {
LABEL_15:
    ZinAssertImpl("Invalid symbol type");
  }

  result = ZinIrSymbol::Descriptor::GetTensorDesc((v29 + 216));
  if (v28 < *(result + 32))
  {
    v30 = *a1;
    *a1 = *a2;
    *a2 = v30;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        v6 = **(*((*(**(a2 - 1) + 40))(*(a2 - 1), 0) + 160) + 40);
        if (*(v6 + 220) != 1 || (v7 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v6 + 216)) + 32), v8 = **(*((*(*v5 + 40))(v5, 0) + 160) + 40), *(v8 + 220) != 1))
        {
LABEL_31:
          ZinAssertImpl("Invalid symbol type");
        }

        if (v7 < *(ZinIrSymbol::Descriptor::GetTensorDesc((v8 + 216)) + 32))
        {
          v9 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_13:
  v10 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirSetZeroPad::Run(std::vector<ZinIrOpLayer *> const&,ZinIrHalParameters const&)::$_0 &,ZinANELayer const**,0>(a1, a1 + 1, a1 + 2);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = **(*((*(**v11 + 40))(*v11, 0) + 160) + 40);
    if (*(v15 + 220) != 1)
    {
      goto LABEL_31;
    }

    v16 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v15 + 216)) + 32);
    v17 = **(*((*(*v14 + 40))(v14, 0) + 160) + 40);
    if (*(v17 + 220) != 1)
    {
      goto LABEL_31;
    }

    if (v16 < *(ZinIrSymbol::Descriptor::GetTensorDesc((v17 + 216)) + 32))
    {
      v18 = *v11;
      v19 = v12;
      while (1)
      {
        *(a1 + v19 + 24) = *(a1 + v19 + 16);
        if (v19 == -16)
        {
          break;
        }

        v20 = *(a1 + v19 + 8);
        v21 = **(*((*(*v18 + 40))(v18, 0) + 160) + 40);
        if (*(v21 + 220) != 1)
        {
          goto LABEL_31;
        }

        v22 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v21 + 216)) + 32);
        v23 = **(*((*(*v20 + 40))(v20, 0) + 160) + 40);
        if (*(v23 + 220) != 1)
        {
          goto LABEL_31;
        }

        v19 -= 8;
        if (v22 >= *(ZinIrSymbol::Descriptor::GetTensorDesc((v23 + 216)) + 32))
        {
          v24 = (a1 + v19 + 24);
          goto LABEL_25;
        }
      }

      v24 = a1;
LABEL_25:
      *v24 = v18;
      if (++v13 == 8)
      {
        return v11 + 1 == a2;
      }
    }

    v10 = v11;
    v12 += 8;
    if (++v11 == a2)
    {
      return 1;
    }
  }
}

BOOL ZinCodegen::SetSecondarySourceDMA<17u>(ZinIrTensor *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v74 = a2;
  if (*(a11 + 24) == 1)
  {
    ZinAssertImpl("This target does not allow sharding or SPMD functions", a2, a3, a4, a5, a6, a7, a8);
  }

  v12 = a3 + 80 * a4;
  v13 = *(v12 + 640);
  if (!v13 || (v14 = a8, v15 = a7, ZinIrSymbol::GetMemType(*(v12 + 640))) && ZinIrSymbol::GetMemType(v13) != 1 || (ZinIrSymbol::GetBarId(v13) & 0x100) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ZinCodegen::SetPrimarySourceDMA<7u>(result, v21, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  if (*(v13 + 220) != 1)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ZinCodegen::SetResultDMA<7u>(result, v37, v38, v39, v40, v41, v42, v43);
      return 0;
    }

    return result;
  }

  BarId = ZinIrSymbol::GetBarId(v13);
  TensorDesc = ZinIrSymbol::Descriptor::GetTensorDesc((v13 + 216));
  v29 = *TensorDesc;
  ZinAneTd<17u>::SetL2Src2DmaFormat(a2, *TensorDesc);
  ZinAneTdHw_v17::AddRelocInfo((a2 + 8), (v13 + 224), 4938, BarId, 1, 1, 0, 0);
  ZinAneTd<17u>::SetTileDmaSrc2CacheHint(a2, *(a3 + 1270), *(a3 + 1271), *(a3 + 1272));
  result = 0;
  if (v29 <= 5)
  {
    if (v29 <= 2)
    {
      if (v29 == 1)
      {
        v46 = *(a2 + 712) & 0xFFFFCFFC | 0x1000;
      }

      else
      {
        if (v29 != 2)
        {
          return result;
        }

        v46 = *(a2 + 712) & 0xFFFFCFFC;
      }

      goto LABEL_39;
    }

    if (v29 == 3)
    {
      v44 = *(a2 + 712) & 0xFFFFCFCC;
      v45 = 8241;
    }

    else
    {
      if (v29 == 4)
      {
        v46 = *(a2 + 712) & 0xFFFFCECC | 1;
LABEL_39:
        *(a2 + 712) = v46;
        v47 = TensorDesc;
        goto LABEL_40;
      }

      v44 = *(a2 + 712) & 0xFFFFCECC;
      v45 = 257;
    }

LABEL_38:
    v46 = v44 | v45;
    goto LABEL_39;
  }

  if (v29 > 8)
  {
    if (v29 == 9)
    {
      if (a10 || a9)
      {
        v61 = 4401;
      }

      else
      {
        v61 = 8497;
      }

      v46 = *(a2 + 712) & 0xFFFFCECC | v61;
      goto LABEL_39;
    }

    if (v29 == 10)
    {
      v47 = TensorDesc;
      if (a10 || a9)
      {
        v48 = 305;
      }

      else
      {
        v48 = 8497;
      }

      *(a2 + 712) = *(a2 + 712) & 0xFFFFCECC | v48;
LABEL_40:
      EventTensor = ZinCollectiveCommunicationLayer::GetEventTensor(v47);
      *(a2 + 712) = *(a2 + 712) & 0xF0FFFFFF | ((EventTensor & 0xF) << 24);
      result = CheckRegValueRange(EventTensor, (*(a2 + 1416) + 632));
      if (!result)
      {
        return result;
      }

      v69 = *(a3 + 712);
      v71 = *(a3 + 704);
      v50 = *(a3 + 696);
      v51 = *(a3 + 688) / a5;
      *(a2 + 652) = *(a2 + 652) & 0x3F | (v51 << 6);
      result = CheckRegValueRange(v51, (*(a2 + 1416) + 480));
      if (!result)
      {
        return result;
      }

      *(a2 + 656) = *(a2 + 656) & 0x3F | ((v50 / a5) << 6);
      result = CheckRegValueRange(v50 / a5, (*(a2 + 1416) + 488));
      if (!result)
      {
        return result;
      }

      *(a2 + 660) = *(a2 + 660) & 0x3F | ((v71 / a5) << 6);
      result = CheckRegValueRange(v71 / a5, (*(a2 + 1416) + 496));
      if (!result)
      {
        return result;
      }

      *(a2 + 664) = *(a2 + 664) & 0x3F | ((v69 / a5) << 6);
      result = CheckRegValueRange(v69 / a5, (*(a2 + 1416) + 504));
      if (!result)
      {
        return result;
      }

      v52 = *(a3 + 720);
      ZinCodegen::SetDmaWrap<17u>(a2, v52);
      ZinIrSymbol::GetWrapInfo(&v72, v52);
      if (v73 == 1)
      {
        ZinAneTd<17u>::SetTileDmaSrc2WrapCfg(a2, v72);
      }

      if ((v15 & 1) == 0)
      {
        *(a2 + 608) |= 1u;
        if ((v14 & 1) == 0)
        {
          *(a2 + 944) = *(a2 + 944) & 0xFFFFF0FF | ((EventTensor & 0xF) << 8);
          result = CheckRegValueRange(EventTensor, (*(a2 + 1416) + 632));
          if (!result)
          {
            return result;
          }

          v53 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v13 + 216)) + 32);
          v54 = ZinIrSymbol::Descriptor::GetTensorDesc((v13 + 216));
          ZinAneTd<17u>::SetTileDmaSrc2CropOffset(a2, v53, *(v54 + 24));
        }
      }

      if (ZinMirDmaConfig::DramAccess::IsCompressed((a3 + 688)))
      {
        RootTensor = ZinIrTensor::GetRootTensor(a1);
        v56 = *(a3 + 760);
        v57 = *(a3 + 761);
        v58 = *(ZinIrSymbol::Descriptor::GetTensorDesc((v13 + 216)) + 24);
        v59 = *(a3 + 762);
        IsCompressed = ZinMirDmaConfig::DramAccess::IsCompressed((a3 + 688));
        if (!ZinCodegen::SetUniversalCompressionForSecondarySource<17u>(a3, RootTensor + 64, v56, v57, &v74, v59, IsCompressed, v58, a6))
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            ZinCodegen::SetSecondarySourceDMA<20u>(result, v62, v63, v64, v65, v66, v67, v68);
            return 0;
          }

          return result;
        }

        ZinAneTd<17u>::SetL2Src2CfgForCompression(v74, v57);
        ZinAneTd<17u>::SetL2Src2OffsetYlsbsFromCropOffsetY(v74);
      }

      return 1;
    }

    if (v29 != 11)
    {
      return result;
    }

    v44 = *(a2 + 712) & 0xFFFFFFCF;
    v45 = 12547;
    goto LABEL_38;
  }

  if (v29 == 6)
  {
    v44 = *(a2 + 712) & 0xFFFFCECC;
    v45 = 17;
    goto LABEL_38;
  }

  if (v29 == 7)
  {
    v44 = *(a2 + 712) & 0xFFFFCECC;
    v45 = 273;
    goto LABEL_38;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ZinAneTd<4u>::HandleTileDmaSrcConfig(result, v30, v31, v32, v33, v34, v35, v36);
    return 0;
  }

  return result;
}

__CFDictionary *ZinCreateInputViewUnit(const ZinIrInputViewUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 80);
  CFDictionaryAddValue(Mutable, @"Offset", v5);
  CFRelease(v5);
  v6 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 84);
  CFDictionaryAddValue(Mutable, @"Size", v6);
  CFRelease(v6);
  v7 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
  CFDictionaryAddValue(Mutable, @"Step", v7);
  CFRelease(v7);
  v8 = ZinIrCoordinateToCFString(a1 + 23);
  CFDictionaryAddValue(Mutable, @"Dimension", v8);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

ZinIrKernel **ZinMirDilatedConv::CreateDilatedConvKernel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, int32x2_t *a4@<X3>, uint64_t a5@<X4>, ZinIrKernel **a7@<X8>)
{
  v10 = *(a2 + 72);
  v11 = *(a2 + 76);
  v13 = a4->i32[0];
  v12 = a4->i32[1];
  v40 = vdupq_n_s64(1uLL);
  v41 = 1;
  *&v14 = 0x100000001;
  *(&v14 + 1) = 0x100000001;
  v42 = v14;
  v43 = 0x100000001;
  v44 = 0;
  v45 = 0;
  v47 = v14;
  v46 = 0;
  v48 = 1;
  v49 = 0;
  v50 = 0;
  ZinMirDilatedConv::ConvertDilatedConvInfoStruct(a2, a4, &v40);
  v15 = *(a5 + 160);
  if (*(a5 + 71) >= 0)
  {
    v16 = *(a5 + 71);
  }

  else
  {
    v16 = *(a5 + 56);
  }

  v17 = &v36;
  std::string::basic_string[abi:ne200100](&v36, v16 + 1);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v36.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    v20 = *(a5 + 48);
    v19 = (a5 + 48);
    v18 = v20;
    if (v19[23] >= 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    memmove(v17, v21, v16);
  }

  *(&v17->__r_.__value_.__l.__data_ + v16) = 95;
  std::string::basic_string[abi:ne200100]<0>(&v33, "dil_conv_kernel");
  v22 = std::string::append(&v33, "_xfm", 4uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v35 = v22->__r_.__value_.__r.__words[2];
  *v34 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (v35 >= 0)
  {
    v24 = v34;
  }

  else
  {
    v24 = v34[0];
  }

  if (v35 >= 0)
  {
    v25 = HIBYTE(v35);
  }

  else
  {
    v25 = v34[1];
  }

  v26 = std::string::append(&v36, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v38 = v26->__r_.__value_.__r.__words[2];
  *__p = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  ZinIrKernel::DilateKernel(v15, v10 / v13, v11 / v12, &v39);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v28 = v39;
  if (v39)
  {
    if (*(a1 + 1201) == 1)
    {
      ZinIrKernel::SetMustCompressWeight(v39, *a3, (*(a2 + 8) * *a2) / (v40.i64[1] * v40.i64[0]));
      v28 = v39;
    }

    v29 = a7;
    v39 = 0;
  }

  else
  {
    v29 = a7;
  }

  *v29 = v28;
  return std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v39);
}

int32x2_t ZinMirDilatedConv::ConvertDilatedConvInfoStruct(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  v5 = *(a1 + 72) / a2->i32[0];
  v6 = *(a1 + 76) / a2->i32[1];
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 48);
  *(a3 + 64) = *(a1 + 64);
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  *a3 = *a1;
  *(a3 + 16) = v10;
  *(a3 + 96) = v8;
  *(a3 + 80) = v7;
  *(a3 + 32) = v11;
  *(a3 + 48) = v9;
  *(a3 + 72) = 0x100000001;
  v12 = (*(a1 + 8) - 1) * v6 + 1;
  *a3 = (*a1 - 1) * v5 + 1;
  *(a3 + 8) = v12;
  v13 = *a2;
  LODWORD(v8) = *a2;
  v14 = (v8 - 1 + *(a1 + 48)) / v8;
  LODWORD(v12) = (v8 - 1 + *(a1 + 52)) / v8;
  LODWORD(v8) = HIDWORD(*a2);
  *(a3 + 48) = v14;
  *(a3 + 52) = v12;
  v15 = *(a1 + 60);
  *(a3 + 56) = (v8 - 1 + *(a1 + 56)) / v8;
  *(a3 + 60) = (v8 - 1 + v15) / v8;
  if (*(a1 + 97) == 1)
  {
    ZinAssertImpl("Error: dilated deconvolution is not supported!", v3, v4);
  }

  v16 = vceq_s32(v13, 0x100000001);
  if (a2[1].i32[0] == 1)
  {
    v17 = *(a1 + 32);
  }

  else
  {
    v17 = 1;
  }

  result = vsub_s32(vand_s8(*(a1 + 24), v16), vmvn_s8(v16));
  *(a3 + 24) = result;
  *(a3 + 32) = v17;
  return result;
}

ZinMirDilatedConv::DilatedConvDecomposedDesc *ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(ZinMirDilatedConv::DilatedConvDecomposedDesc *this, ZinIrPadUnitInfo *a2)
{
  *this = 44;
  ZinIrTextureUnitInfo::ZinIrTextureUnitInfo((this + 8), a2);
  *(this + 1) = &unk_1F1A33FD0;
  v4 = *(a2 + 156);
  v5 = *(a2 + 172);
  v6 = *(a2 + 188);
  *(this + 26) = 0;
  *(this + 196) = v6;
  *(this + 180) = v5;
  *(this + 164) = v4;
  *(this + 27) = 0;
  *(this + 28) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 26, *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 3);
  *(this + 116) = *(a2 + 112);
  return this;
}

ZinMirDilatedConv::DilatedConvDecomposedDesc *ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(ZinMirDilatedConv::DilatedConvDecomposedDesc *this, ZinIrInputViewUnitInfo *a2)
{
  *this = 17;
  *(this + 1) = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 4) = *(a2 + 3);
    *(this + 1) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 6) = 0;
  *(this + 10) = v5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 72) = *(a2 + 4);
  *(this + 1) = &unk_1F1A33F90;
  *(this + 88) = *(a2 + 5);
  std::__optional_copy_base<ZinIrDynamicInputViewData,false>::__optional_copy_base[abi:ne200100]((this + 104), a2 + 96);
  return this;
}

ZinMirDilatedConv::DilatedConvDecomposedDesc *ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(ZinMirDilatedConv::DilatedConvDecomposedDesc *this, ZinIrPoolUnitInfo *a2)
{
  *this = 2;
  *(this + 1) = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 4) = *(a2 + 3);
    *(this + 1) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 6) = 0;
  *(this + 10) = v5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 72) = *(a2 + 4);
  *(this + 1) = &unk_1F19CEE70;
  v6 = *(a2 + 5);
  *(this + 104) = *(a2 + 6);
  *(this + 88) = v6;
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  *(this + 42) = *(a2 + 40);
  *(this + 152) = v9;
  *(this + 136) = v8;
  *(this + 120) = v7;
  return this;
}

void sub_1A69A2904(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

ZinMirDilatedConv::DilatedConvDecomposedDesc *ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(ZinMirDilatedConv::DilatedConvDecomposedDesc *this, ZinIrSpaceToBatchUnitInfo *a2)
{
  *this = 34;
  *(this + 1) = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 4) = *(a2 + 3);
    *(this + 1) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 6) = 0;
  *(this + 10) = v5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 72) = *(a2 + 4);
  *(this + 1) = &unk_1F1A33F48;
  v6 = *(a2 + 10);
  *(this + 24) = *(a2 + 22);
  *(this + 11) = v6;
  return this;
}

void sub_1A69A2A04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

ZinMirDilatedConv::DilatedConvDecomposedDesc *ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(ZinMirDilatedConv::DilatedConvDecomposedDesc *this, ZinIrBatchToSpaceUnitInfo *a2)
{
  *this = 35;
  *(this + 1) = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 4) = *(a2 + 3);
    *(this + 1) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 6) = 0;
  *(this + 10) = v5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 72) = *(a2 + 4);
  *(this + 1) = &unk_1F1A33F28;
  v6 = *(a2 + 10);
  *(this + 24) = *(a2 + 22);
  *(this + 11) = v6;
  return this;
}

void sub_1A69A2B04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(ZinMirDilatedConv::DilatedConvDecomposedDesc *this)
{
  v2 = *this;
  if (*this <= 33)
  {
    if (v2 == 1)
    {
      v3 = (this + 8);
      *(this + 1) = &unk_1F1A2EAA0;
      v7 = *(this + 20);
      if (v7)
      {
        *(this + 21) = v7;
        operator delete(v7);
      }

      v4 = *(this + 17);
      if (!v4)
      {
        goto LABEL_22;
      }

      *(this + 18) = v4;
LABEL_21:
      operator delete(v4);
LABEL_22:
      v6 = v3;
      goto LABEL_23;
    }

    if (v2 != 2)
    {
      if (v2 != 17)
      {
        return;
      }

      v3 = (this + 8);
      *(this + 1) = &unk_1F1A33F90;
      if (*(this + 160) != 1)
      {
        goto LABEL_22;
      }

      if (*(this + 151) < 0)
      {
        operator delete(*(this + 16));
      }

      if ((*(this + 127) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      v4 = *(this + 13);
      goto LABEL_21;
    }

LABEL_16:
    v6 = (this + 8);
LABEL_23:
    ZinIrUnitInfo::~ZinIrUnitInfo(v6);
    return;
  }

  if (v2 == 34 || v2 == 35)
  {
    goto LABEL_16;
  }

  if (v2 == 44)
  {
    *(this + 1) = &unk_1F1A33FD0;
    v5 = *(this + 26);
    if (v5)
    {
      *(this + 27) = v5;
      operator delete(v5);
    }

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo((this + 8));
  }
}